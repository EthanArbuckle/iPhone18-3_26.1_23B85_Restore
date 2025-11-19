void sub_1E302C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v138 = Strong;
  v6 = kMTPodcastEntityName;
  v7 = *(a2 + 16);
  v125 = a2 + 32;
  v8 = *(Strong + 16);
  v9 = v6;
  v10 = 0;
  v11 = a2 + 56;
  v12 = _swiftEmptyArrayStorage;
  v126 = v7;
LABEL_3:
  v13 = (v11 + 32 * v10);
  while (v7 != v10)
  {
    if (v10 >= v7)
    {
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_126;
    }

    v16 = *v13;
    v13 += 4;
    v15 = v16;
    ++v10;
    if (v16)
    {
      v17 = *(v13 - 5);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_DFAE8(0, *(v12 + 2) + 1, 1, v12);
      }

      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        v12 = sub_DFAE8((v18 > 1), v19 + 1, 1, v12);
      }

      *(v12 + 2) = v19 + 1;
      v20 = &v12[16 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v15;
      v10 = v14;
      v7 = v126;
      goto LABEL_3;
    }
  }

  v21 = objc_opt_self();
  sub_37C6AC(v12);

  isa = sub_3ED7E4().super.isa;

  v23 = [v21 predicateForPodcastUuids:isa];

  v24 = &type metadata for Any;
  v25 = _swiftEmptyArrayStorage;
  v26 = sub_3ED574().super.isa;
  v27 = &selRef_setDefaultTabInterval_;
  v28 = [v8 objectsInEntity:v9 predicate:v23 sortDescriptors:v26 returnsObjectsAsFaults:1];

  if (v28)
  {
    sub_36174(0, &qword_4F86C0);
    v29 = sub_3ED584();

    v30 = sub_373D04(v29);

    if (v30)
    {
      v25 = v30;
    }
  }

  v139 = v25;
  v31 = kMTEpisodeEntityName;
  v32 = *(a3 + 16);
  v123 = a3 + 32;
  v33 = *(v138 + 16);
  v34 = v31;
  v35 = v32;
  v36 = v34;
  v37 = 0;
  v38 = a3 + 56;
  v39 = _swiftEmptyArrayStorage;
  v124 = v32;
LABEL_17:
  v40 = (v38 + 32 * v37);
  while (v35 != v37)
  {
    if (v37 >= v35)
    {
      goto LABEL_127;
    }

    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_128;
    }

    v43 = *v40;
    v40 += 4;
    v42 = v43;
    ++v37;
    if (v43)
    {
      v142 = v36;
      v44 = v27;
      v45 = v24;
      v46 = *(v40 - 5);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_DFAE8(0, *(v39 + 2) + 1, 1, v39);
      }

      v48 = *(v39 + 2);
      v47 = *(v39 + 3);
      v35 = v124;
      if (v48 >= v47 >> 1)
      {
        v50 = sub_DFAE8((v47 > 1), v48 + 1, 1, v39);
        v35 = v124;
        v39 = v50;
      }

      *(v39 + 2) = v48 + 1;
      v49 = &v39[16 * v48];
      *(v49 + 4) = v46;
      *(v49 + 5) = v42;
      v37 = v41;
      v24 = v45;
      v27 = v44;
      v36 = v142;
      goto LABEL_17;
    }
  }

  v51 = objc_opt_self();
  sub_37C6AC(v39);

  v52 = sub_3ED7E4().super.isa;

  v53 = [v51 predicateForEpisodeUuids:v52];

  v54 = _swiftEmptyArrayStorage;
  v55 = sub_3ED574().super.isa;
  v56 = [v33 v27[157]];

  v57 = v126;
  if (v56)
  {
    sub_36174(0, &qword_4F86C0);
    v58 = sub_3ED584();

    v59 = sub_373D10(v58);

    if (v59)
    {
      v54 = v59;
    }
  }

  v60 = v139;
  v141 = v54;
  if (!v126)
  {
    v62 = _swiftEmptyArrayStorage;
    goto LABEL_67;
  }

  v61 = 0;
  v62 = _swiftEmptyArrayStorage;
  while (1)
  {
    v132 = v62;
LABEL_33:
    if (v61 >= v57)
    {
      goto LABEL_130;
    }

    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v64 = (v125 + 32 * v61);
    v128 = v64[1];
    v65 = *(v64 + 2);
    v127 = *(v64 + 1);
    v66 = *(v64 + 3);
    v130 = *v64;
    v67 = v139 >> 62 ? sub_3EE5A4() : *(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8));
    v134 = v63;
    v136 = v63;

    if (v67)
    {
      break;
    }

LABEL_60:
    v62 = v132;
    v143 = v132;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_41D34(0, v132[2] + 1, 1);
      v62 = v143;
    }

    v57 = v126;
    v80 = v62[2];
    v79 = v62[3];
    if (v80 >= v79 >> 1)
    {
      sub_41D34((v79 > 1), v80 + 1, 1);
      v62 = v143;
    }

    v62[2] = v80 + 1;
    v81 = &v62[4 * v80];
    *(v81 + 32) = v130;
    *(v81 + 33) = v128;
    v81[5] = v127;
    v81[6] = v65;
    v81[7] = v66;
    v60 = v139;
    v61 = v136;
    if (v134 == v126)
    {
      goto LABEL_67;
    }
  }

  v68 = 0;
  while (1)
  {
    if ((v139 & 0xC000000000000001) != 0)
    {
      v69 = sub_3EE3F4();
    }

    else
    {
      if (v68 >= *(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_122;
      }

      v69 = *(v60 + 8 * v68 + 32);
    }

    v70 = v69;
    v71 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v72 = [v69 uuid];
    if (!v72)
    {
      break;
    }

    v73 = v72;
    v74 = sub_3ED244();
    v76 = v75;

    if (!v66)
    {

      v60 = v139;
      goto LABEL_57;
    }

    if (v74 == v65 && v66 == v76)
    {

      v60 = v139;
    }

    else
    {
      v78 = sub_3EE804();

      v60 = v139;
      if ((v78 & 1) == 0)
      {

        goto LABEL_57;
      }
    }

LABEL_40:
    ++v68;
    if (v71 == v67)
    {
      goto LABEL_60;
    }
  }

  if (!v66)
  {
    goto LABEL_40;
  }

  swift_bridgeObjectRelease_n();
LABEL_57:
  v57 = v126;
  v62 = v132;
  v61 = v136;
  if (v134 != v126)
  {
    goto LABEL_33;
  }

LABEL_67:

  v82 = v62[2];
  if (v82)
  {
    v83 = 0;
    v84 = v62 + 4;
    while (v83 < v62[2])
    {
      v85 = v62;
      v86 = *v84;
      v87 = *(v84 + 1);
      v88 = v84[1];
      v89 = v84[2];
      v90 = v84[3];

      if (sub_3E94A4())
      {
        LOBYTE(v143) = v86;
        BYTE1(v143) = v87;
        v144 = v88;
        v145 = v89;
        v146 = v90;
        sub_1E057C(&v143);
      }

      else
      {
        LOBYTE(v143) = v86;
        BYTE1(v143) = 1;
        v144 = v88;
        v145 = v89;
        v146 = v90;

        sub_1E01A8(&v143, 1);
      }

      ++v83;
      v84 += 4;
      v62 = v85;
      if (v82 == v83)
      {
        goto LABEL_74;
      }
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

LABEL_74:

  v91 = v124;
  if (!v124)
  {
    v93 = _swiftEmptyArrayStorage;
LABEL_112:

    v114 = v93[2];
    if (!v114)
    {
LABEL_119:

      return;
    }

    v115 = 0;
    v116 = v93 + 4;
    while (v115 < v93[2])
    {
      v117 = v93;
      v118 = *v116;
      v119 = *(v116 + 1);
      v120 = v116[1];
      v121 = v116[2];
      v122 = v116[3];

      if (sub_3E94A4())
      {
        LOBYTE(v143) = v118;
        BYTE1(v143) = v119;
        v144 = v120;
        v145 = v121;
        v146 = v122;
        sub_1E057C(&v143);
      }

      else
      {
        LOBYTE(v143) = v118;
        BYTE1(v143) = 1;
        v144 = v120;
        v145 = v121;
        v146 = v122;

        sub_1E01A8(&v143, 1);
      }

      ++v115;
      v116 += 4;
      v93 = v117;
      if (v114 == v115)
      {
        goto LABEL_119;
      }
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v92 = 0;
  v93 = _swiftEmptyArrayStorage;
  while (1)
  {
    v135 = v93;
LABEL_77:
    if (v92 >= v91)
    {
      break;
    }

    v94 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      goto LABEL_134;
    }

    v95 = (v123 + 32 * v92);
    v131 = v95[1];
    v133 = *v95;
    v96 = *(v95 + 2);
    v129 = *(v95 + 1);
    v97 = *(v95 + 3);
    if (v141 >> 62)
    {
      v98 = sub_3EE5A4();
    }

    else
    {
      v98 = *(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8));
    }

    v137 = v94;
    v140 = v94;

    if (v98)
    {
      v99 = 0;
      do
      {
        if ((v141 & 0xC000000000000001) != 0)
        {
          v100 = sub_3EE3F4();
        }

        else
        {
          if (v99 >= *(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_124;
          }

          v100 = *(v141 + 8 * v99 + 32);
        }

        v101 = v100;
        v102 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          goto LABEL_123;
        }

        v103 = [v100 uuid];
        if (v103)
        {
          v104 = v103;
          v105 = sub_3ED244();
          v107 = v106;

          if (!v97)
          {

LABEL_100:

LABEL_102:
            v91 = v124;
            v93 = v135;
            v92 = v140;
            if (v137 != v124)
            {
              goto LABEL_77;
            }

            goto LABEL_112;
          }

          if (v105 == v96 && v97 == v107)
          {
          }

          else
          {
            v109 = sub_3EE804();

            if ((v109 & 1) == 0)
            {
              goto LABEL_100;
            }
          }
        }

        else
        {

          if (v97)
          {
            swift_bridgeObjectRelease_n();
            goto LABEL_102;
          }
        }

        ++v99;
      }

      while (v102 != v98);
    }

    v93 = v135;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v143 = v135;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_41D34(0, v135[2] + 1, 1);
      v93 = v143;
    }

    v91 = v124;
    v112 = v93[2];
    v111 = v93[3];
    if (v112 >= v111 >> 1)
    {
      sub_41D34((v111 > 1), v112 + 1, 1);
      v91 = v124;
      v93 = v143;
    }

    v93[2] = v112 + 1;
    v113 = &v93[4 * v112];
    *(v113 + 32) = v133;
    *(v113 + 33) = v131;
    v113[5] = v129;
    v113[6] = v96;
    v113[7] = v97;
    v92 = v140;
    if (v137 == v91)
    {
      goto LABEL_112;
    }
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1E3B88(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = sub_3E9484();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = [v5 uuid]) != 0)
  {
    v7 = v6;
    v8 = sub_3ED244();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a2 = a1;
  a2[1] = v4;
  a2[2] = v8;
  a2[3] = v10;
}

uint64_t sub_1E3C64(uint64_t result)
{
  v1 = *result;
  v9 = *(*result + 16);
  if (v9)
  {
    v2 = 0;
    v3 = v1 + 32;
    while (v2 < *(v1 + 16))
    {
      v4 = *v3;
      v5 = *(v3 + 1);
      v7 = *(v3 + 8);
      v6 = *(v3 + 16);
      v8 = *(v3 + 24);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v10[0] = v4;
        v10[1] = v5;
        v11 = v7;
        v12 = v6;
        v13 = v8;

        sub_1E057C(v10);
      }

      ++v2;
      v3 += 32;
      if (v9 == v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t RecentlySearchedStorage.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return v0;
}

uint64_t RecentlySearchedStorage.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_1E3DFC()
{
  v2 = sub_3ED204();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_3EE204();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_837D0(v7);
    return _swiftEmptyArrayStorage;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_3E5884();
  swift_allocObject();
  sub_3E5874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
  sub_1E4FE0(&qword_4F8698, sub_1E5058);
  sub_3E5844();
  sub_68210(v5, *(&v5 + 1));

  if (!v1)
  {
    return *&v7[0];
  }

  return result;
}

uint64_t sub_1E3FA0(uint64_t a1)
{
  sub_3E58D4();
  swift_allocObject();
  sub_3E58C4();
  v7[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7F08);
  sub_1E4FE0(&qword_4F8688, sub_1E4F8C);
  v3 = sub_3E5894();
  v5 = v4;

  if (!v1)
  {
    v7[3] = &type metadata for Data;
    v7[0] = v3;
    v7[1] = v5;
    sub_E3D6C(v3, v5);
    sub_1E4E18(v7);
    return sub_68210(v3, v5);
  }

  return result;
}

uint64_t RecentlySearchedStorage.Item.hash(into:)()
{
  sub_1DE0B0();
  sub_3ED394();
}

Swift::Int RecentlySearchedStorage.Item.hashValue.getter()
{
  sub_3EE954();
  sub_1DE0B0();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_1E4240()
{
  sub_3EE954();
  sub_1DE0B0();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1E42CC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_1E434C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

void *sub_1E43C8(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v16 = sub_3EDBB4();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EDB54();
  __chkstk_darwin(v8);
  v9 = sub_3EBC14();
  __chkstk_darwin(v9 - 8);
  v19[3] = sub_36174(0, &qword_4F10B8);
  v19[4] = &off_4BEDF8;
  v19[0] = a1;
  v10 = sub_36174(0, &qword_4F10B0);
  v15[0] = "em to recently searched: ";
  v15[1] = v10;
  sub_3EBBF4();
  v18 = _swiftEmptyArrayStorage;
  sub_1E5CC0(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
  sub_886BC(&qword_4F1CB8, &qword_4F1CB0);
  sub_3EE244();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  a3[8] = sub_3EDBF4();
  a3[9] = _swiftEmptyArrayStorage;
  a3[10] = _swiftEmptyArrayStorage;
  type metadata accessor for NetworkObservingItems();
  v11 = swift_allocObject();
  sub_1DEE5C();
  a3[11] = v11;
  sub_1F958(v19, (a3 + 3));
  v12 = v17;
  a3[2] = v17;
  v13 = v12;
  sub_1DF9D8();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return a3;
}

unint64_t sub_1E46C8()
{
  result = qword_4F8498;
  if (!qword_4F8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F8498);
  }

  return result;
}

unint64_t sub_1E471C()
{
  result = qword_4F84A0;
  if (!qword_4F84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F84A0);
  }

  return result;
}

unint64_t sub_1E4770()
{
  result = qword_4F84A8;
  if (!qword_4F84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F84A8);
  }

  return result;
}

unint64_t sub_1E47C4()
{
  result = qword_4F84B8;
  if (!qword_4F84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F84B8);
  }

  return result;
}

unint64_t sub_1E4818()
{
  result = qword_4F84C0;
  if (!qword_4F84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F84C0);
  }

  return result;
}

uint64_t sub_1E4874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for NetworkObservingItems()
{
  result = qword_4F84F8;
  if (!qword_4F84F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4934()
{
  sub_1E49E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E49E0()
{
  if (!qword_4F8508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F7F08);
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F8508);
    }
  }
}

uint64_t sub_1E4AE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E4B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1E4BB8()
{
  result = qword_4F8668;
  if (!qword_4F8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F8668);
  }

  return result;
}

unint64_t sub_1E4C10()
{
  result = qword_4F8670;
  if (!qword_4F8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F8670);
  }

  return result;
}

unint64_t sub_1E4C68()
{
  result = qword_4F8678;
  if (!qword_4F8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F8678);
  }

  return result;
}

uint64_t sub_1E4CBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496D616461 && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_3EE804();

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

uint64_t sub_1E4E18(uint64_t a1)
{
  sub_7F06C(a1, v12);
  v3 = v13;
  if (v13)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_3EE7F4();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_3ED204();
  [v1 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  return sub_837D0(a1);
}

unint64_t sub_1E4F8C()
{
  result = qword_4F8690;
  if (!qword_4F8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F8690);
  }

  return result;
}

uint64_t sub_1E4FE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F7F08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5058()
{
  result = qword_4F86A0;
  if (!qword_4F86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F86A0);
  }

  return result;
}

uint64_t sub_1E50B4()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1E21AC(*(v0 + 16), v1 | *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t sub_1E50DC()
{

  sub_3E9D64();

  sub_3E9D74();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_3E9EB4();

  sub_3E9D74();
}

uint64_t sub_1E51D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = *(a1 + 16);
  if (v21)
  {
    v5 = a5;
    v6 = 0;
    for (i = (a1 + 56); ; i += 4)
    {
      v8 = *(i - 1);
      v9 = *i;

      if (sub_3E94A4())
      {
        if (v9)
        {

          v10 = v9;
        }

        else
        {
          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v12 = sub_3ECE84();
          __swift_project_value_buffer(v12, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v8 = 0x656E696665646E75;
          v10 = 0xE900000000000064;
        }
      }

      else
      {
        sub_17A28();
        v8 = sub_3EE1F4();
        v10 = v11;
      }

      if (sub_3E94A4())
      {
        if (v5)
        {

          v13 = v5;
          if (v8 != a4)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (qword_4E8A48 != -1)
          {
            swift_once();
          }

          v16 = sub_3ECE84();
          __swift_project_value_buffer(v16, qword_4F8478);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
          sub_3EBE94();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3EBE14();
          sub_3ECBA4();

          v13 = 0xE900000000000064;
          v5 = a5;
          if (v8 != 0x656E696665646E75)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_17A28();
        v14 = sub_3EE1F4();
        v13 = v15;
        if (v8 != v14)
        {
          goto LABEL_20;
        }
      }

      if (v10 == v13)
      {

        return v6;
      }

LABEL_20:
      v17 = sub_3EE804();

      if (v17)
      {
        return v6;
      }

      if (v21 == ++v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1E5600(uint64_t *a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  result = sub_1E51D8(*a1, a2 & 0x1FF, a3, a4, a5);
  v40 = result;
  if (v5)
  {
    return v40;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_47;
  }

  v11 = (v6 + 16);
  v10 = *(v6 + 16);
  if (v9 == v10)
  {
    return v40;
  }

  v12 = 32 * result + 88;
  while (v9 < v10)
  {
    v41 = v6;
    v13 = (v6 + v12);
    v14 = *(v6 + v12 - 8);
    v15 = *v13;

    if (sub_3E94A4())
    {
      if (v15)
      {

        v16 = v15;
      }

      else
      {
        if (qword_4E8A48 != -1)
        {
          swift_once();
        }

        v18 = sub_3ECE84();
        __swift_project_value_buffer(v18, qword_4F8478);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
        sub_3EBE94();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3EBE14();
        sub_3ECBA4();

        v14 = 0x656E696665646E75;
        v16 = 0xE900000000000064;
      }
    }

    else
    {
      sub_17A28();
      v14 = sub_3EE1F4();
      v16 = v17;
    }

    if (sub_3E94A4())
    {
      v19 = a5;
      if (a5)
      {

        if (v14 != a4)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (qword_4E8A48 != -1)
        {
          swift_once();
        }

        v35 = sub_3ECE84();
        __swift_project_value_buffer(v35, qword_4F8478);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
        sub_3EBE94();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3EBE14();
        sub_3ECBA4();

        v19 = 0xE900000000000064;
        if (v14 != 0x656E696665646E75)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_17A28();
      v20 = sub_3EE1F4();
      v19 = v21;
      if (v14 != v20)
      {
        goto LABEL_29;
      }
    }

    if (v16 == v19)
    {

LABEL_9:
      v6 = v41;
      goto LABEL_10;
    }

LABEL_29:
    v22 = sub_3EE804();

    if (v22)
    {
      goto LABEL_9;
    }

    v23 = v40;
    if (v9 == v40)
    {
      v6 = v41;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v40 >= *v11)
      {
        goto LABEL_43;
      }

      if (v9 >= *v11)
      {
        goto LABEL_44;
      }

      v24 = v41 + 32 + 32 * v40;
      v33 = *(v24 + 1);
      v34 = *v24;
      v36 = *(v24 + 8);
      v25 = *(v24 + 24);
      v26 = *(v13 - 24);
      v27 = *(v41 + v12 - 23);
      v28 = *(v13 - 2);
      v29 = *(v13 - 1);
      v30 = *(v41 + v12);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2A515C(v41);
        v41 = result;
      }

      v6 = v41;
      if (v40 >= *(v41 + 16))
      {
        goto LABEL_45;
      }

      v31 = v41 + 32 * v40;
      *(v31 + 32) = v26;
      *(v31 + 33) = v27;
      *(v31 + 40) = v28;
      *(v31 + 48) = v29;
      *(v31 + 56) = v30;

      if (v9 >= *(v41 + 16))
      {
        goto LABEL_46;
      }

      v32 = (v41 + v12);
      *(v32 - 24) = v34;
      *(v32 - 23) = v33;
      *(v32 - 1) = v36;
      *v32 = v25;

      *a1 = v41;
      v23 = v40;
    }

    v40 = v23 + 1;
LABEL_10:
    ++v9;
    v11 = (v6 + 16);
    v10 = *(v6 + 16);
    v12 += 32;
    if (v9 == v10)
    {
      return v40;
    }
  }

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
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1E5BF4()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1E08D4(*(v0 + 16), v1 | *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t sub_1E5C24()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1E5C78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1E5CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5D08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1E5D48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t static SearchTermValidating.isValid(searchString:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5934();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  if (a2 && (v16 = a1, v17 = a2, sub_138570(), (sub_3ED894() & 1) != 0))
  {
    v16 = a1;
    v17 = a2;
    sub_3E5904();
    sub_3E5914();
    v11 = *(v5 + 8);
    v11(v10, v4);
    sub_68DC4();
    sub_3EE164();
    v13 = v12;
    v11(v7, v4);
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit18LibraryRefreshTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1E5FDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8758);
  sub_3EC394();
  [v4[0] syncEverything];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v1 + 152))(v0, v1);
  swift_allocObject();
  swift_weakInit();
  v3[3] = sub_801B4();
  v3[4] = &protocol witness table for OS_dispatch_queue;
  v3[0] = sub_3EDBC4();
  sub_3ECD44();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1E6128()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8758);
  sub_3EC394();
  [v4[0] syncEverything];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v1 + 152))(v0, v1);
  swift_allocObject();
  swift_weakInit();
  v3[3] = sub_801B4();
  v3[4] = &protocol witness table for OS_dispatch_queue;
  v3[0] = sub_3EDBC4();
  sub_3ECD44();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1E6280()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v5 + 136))(v2, v3, 1, v4, v5);
  swift_allocObject();
  swift_weakInit();
  v7[3] = sub_801B4();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_3EDBC4();
  sub_3ECD44();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1E63AC()
{
  v1 = sub_20AD78();
  if (v3 == 255)
  {
    goto LABEL_6;
  }

  if (v3 == 2 && !(v1 | v2))
  {
    sub_1CE068(0, 0, 2u);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8758);
    sub_3EC394();
    [v6[0] syncEverything];
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  sub_1CE068(v1, v2, v3);
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  sub_1E6868(v0, v6);
  swift_allocObject();
  swift_weakInit();
  v5[3] = sub_801B4();
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = sub_3EDBC4();
  sub_3ECD44();

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1E6510()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_stationUuid);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  v2 = *v1;
  v3 = v1[1];
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v5 + 160))(v2, v3, v4, v5);
  swift_allocObject();
  swift_weakInit();
  v7[3] = sub_801B4();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_3EDBC4();
  sub_3ECD44();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1E6650()
{
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType);
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType + 8);
  v3 = *(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType + 16);
  if (v3 == 255 || (v3 == 2 ? (v4 = (v1 | v2) == 0) : (v4 = 0), v4))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8758);
    sub_3EC394();
    [v13[0] syncEverything];
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  if (v3 == 255)
  {
    goto LABEL_12;
  }

  if (!v3)
  {
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v11 + 136))(v2, v1, 1, v10, v11);
    goto LABEL_13;
  }

  if (v3 != 1)
  {
LABEL_12:
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v8 + 152))(v7, v8);
  }

  else
  {
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v6 + 160))(v2, v1, v5, v6);
  }

LABEL_13:
  swift_allocObject();
  swift_weakInit();
  v12[3] = sub_801B4();
  v12[4] = &protocol witness table for OS_dispatch_queue;
  v12[0] = sub_3EDBC4();
  sub_3ECD44();

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1E6868(uint64_t a1, void *a2)
{
  v4 = *(a1 + 168);
  v3 = *(a1 + 176);
  v5 = *(a1 + 232);
  if (v5 <= 4)
  {
    if (v5 < 3)
    {
      goto LABEL_8;
    }

LABEL_9:

    v13 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v13);
    v9 = (*(v14 + 136))(v4, v3, 1, v13, v14);
    goto LABEL_10;
  }

  if (*(a1 + 232) > 7u)
  {
    if (v5 != 8)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v5 - 6 < 2)
  {
LABEL_8:
    v10 = a2[3];
    v11 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v10);
    return (*(v11 + 152))(v10, v11);
  }

  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = *(v7 + 160);

  v9 = v8(v4, v3, v6, v7);
LABEL_10:
  v15 = v9;

  return v15;
}

uint64_t sub_1E69B0()
{
  v0 = sub_20AD78();
  if (v2 > 1u)
  {
    v3 = [objc_opt_self() mainBundle];
    v10._countAndFlagsBits = 0xED00007364656546;
    v4._object = 0x800000000042A7C0;
    v4._countAndFlagsBits = 0xD000000000000011;
LABEL_6:
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0;
    v6.super.isa = v3;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    goto LABEL_7;
  }

  if (v2)
  {
    sub_1CE068(v0, v1, 1u);
    v3 = [objc_opt_self() mainBundle];
    v10._countAndFlagsBits = 0xEF6E6F6974617453;
    v4._countAndFlagsBits = 0x5F48534552464552;
    v4._object = 0xEF4E4F4954415453;
    goto LABEL_6;
  }

  sub_1CE068(v0, v1, 0);
  v3 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0x800000000042A800;
  v4._object = 0x800000000042A7E0;
  v4._countAndFlagsBits = 0xD000000000000011;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v6.super.isa = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
LABEL_7:
  v8 = sub_3E5A74(v4, v5, v6, v7, v10);

  return v8;
}

uint64_t sub_1E6B68()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType + 16) > 1u)
  {
    v1 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0xED00007364656546;
    v2._object = 0x800000000042A7C0;
    v2._countAndFlagsBits = 0xD000000000000011;
LABEL_6:
    v3.value._countAndFlagsBits = 0;
    v3.value._object = 0;
    v4.super.isa = v1;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    goto LABEL_7;
  }

  if (*(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType + 16))
  {
    v1 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0xEF6E6F6974617453;
    v2._countAndFlagsBits = 0x5F48534552464552;
    v2._object = 0xEF4E4F4954415453;
    goto LABEL_6;
  }

  v1 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0x800000000042A800;
  v2._object = 0x800000000042A7E0;
  v2._countAndFlagsBits = 0xD000000000000011;
  v3.value._countAndFlagsBits = 0;
  v3.value._object = 0;
  v4.super.isa = v1;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
LABEL_7:
  v6 = sub_3E5A74(v2, v3, v4, v5, v8);

  return v6;
}

uint64_t sub_1E6D24()
{
  v0 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0xED00007364656546;
  v5._object = 0x800000000042A7C0;
  v5._countAndFlagsBits = 0xD000000000000011;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v1.super.isa = v0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v2 = sub_3E5A74(v5, v6, v1, v7, v4);

  return v2;
}

uint64_t sub_1E6DE0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0x800000000042A800;
  v5._object = 0x800000000042A7E0;
  v5._countAndFlagsBits = 0xD000000000000011;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v1.super.isa = v0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v2 = sub_3E5A74(v5, v6, v1, v7, v4);

  return v2;
}

uint64_t sub_1E6E9C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0xEF6E6F6974617453;
  v5._countAndFlagsBits = 0x5F48534552464552;
  v5._object = 0xEF4E4F4954415453;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v1.super.isa = v0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v2 = sub_3E5A74(v5, v6, v1, v7, v4);

  return v2;
}

uint64_t sub_1E6F68()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E6FA0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ModernEpisodesPresenter.refreshControls.getter();

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_1E703C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_1E70B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_1E712C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D44();
  }

  return result;
}

void *CategoryListPresenter.__allocating_init(asPartOf:with:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1EBD10(a1);

  return v2;
}

void *CategoryListPresenter.init(asPartOf:with:)(uint64_t a1)
{
  v1 = sub_1EBD10(a1);

  return v1;
}

Swift::Void __swiftcall CategoryListPresenter.viewDidLoad()()
{
  v63 = *v0;
  v64 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v62 = &v43 - v2;
  v50 = sub_3EDBA4();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E90E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8790);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v43 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8798);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v12 = &v43 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87A0);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v14 = &v43 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87A8);
  v57 = *(v54 - 8);
  __chkstk_darwin(v54);
  v46 = &v43 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87B0);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v47 = &v43 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87B8);
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  __chkstk_darwin(v17);
  v58 = &v43 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5310;
  *(inited + 32) = sub_3ED244();
  *(inited + 40) = v21;
  *(inited + 48) = sub_3E8D04();
  *(inited + 56) = v22;
  sub_3600C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = [objc_opt_self() defaultCenter];
  sub_3E90D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C8);
  v24 = swift_allocObject();
  v59 = xmmword_3F5630;
  *(v24 + 16) = xmmword_3F5630;
  *(v24 + 32) = _swiftEmptyArrayStorage;
  sub_1EBFDC(&unk_4F87D0, 255, &type metadata accessor for DatabasePropertyPublisher);
  sub_3EA104();

  (*(v6 + 8))(v8, v5);
  sub_3EDB94();
  sub_36174(0, &qword_4F10B0);
  v25 = sub_3EDB24();
  v65 = v25;
  sub_886BC(&unk_4F87E0, &qword_4F8790);
  sub_87870();
  v26 = v44;
  sub_3EA134();

  (*(v48 + 8))(v4, v50);
  (*(v45 + 8))(v10, v26);
  v27 = v64[3];
  *(swift_allocObject() + 16) = v27;
  swift_unknownObjectRetain();
  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87F0);
  sub_886BC(&qword_4F87F8, &qword_4F8798);
  sub_886BC(&qword_4F8800, &qword_4F87F0);
  v28 = v49;
  sub_3EA1C4();

  (*(v51 + 8))(v12, v28);
  v65 = _swiftEmptyArrayStorage;
  sub_886BC(&qword_4F8808, &qword_4F87A0);
  v29 = v46;
  v30 = v52;
  sub_3E9FC4();
  (*(v53 + 8))(v14, v30);
  v31 = sub_3EDBC4();
  v65 = v31;
  v32 = sub_3EDB64();
  v33 = v62;
  (*(*(v32 - 8) + 56))(v62, 1, 1, v32);
  sub_886BC(&qword_4F8810, &qword_4F87A8);
  v34 = v47;
  v35 = v54;
  sub_3EA114();
  sub_FCF8(v33, &qword_4F69E0);

  (*(v57 + 8))(v29, v35);
  sub_886BC(&qword_4F8818, &qword_4F87B0);
  v36 = v55;
  v37 = sub_3E9F34();
  (*(v56 + 8))(v34, v36);
  v65 = v37;
  *(swift_allocObject() + 16) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8820);
  type metadata accessor for PageContent();
  sub_886BC(&qword_4F8828, &qword_4F8820);
  v38 = v58;
  sub_3EA024();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  sub_886BC(&qword_4F8838, &qword_4F87B8);
  sub_886BC(&unk_4F8840, &qword_4F8830);
  v39 = v60;
  sub_3EA164();
  (*(v61 + 8))(v38, v39);
  swift_beginAccess();
  sub_3E9C84();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
  v40 = *(type metadata accessor for HeaderButtonItem() - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v59;
  sub_1E860C((v42 + v41));
  swift_storeEnumTagMultiPayload();
  v65 = v42;
  sub_3E9D44();
}

void sub_1E7F30(id a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = [a1 privateQueueContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A80);
  v4 = sub_3EDD54();

  *a2 = v4;
}

void sub_1E7FB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A88);
  __chkstk_darwin(v2 - 8);
  v4 = (&v33 - v3);
  v5 = type metadata accessor for CategoryListItem();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E8D04();
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_3ED204();

  v9 = [v7 initWithEntityName:v8];

  sub_3E75E4();
  v10 = sub_3E75A4();
  [v9 setPredicate:v10];

  sub_3E75B4();
  sub_36174(0, &qword_4F1C40);
  isa = sub_3ED574().super.isa;

  [v9 setSortDescriptors:isa];

  sub_3E8D04();
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = sub_3ED204();
  v14 = v9;

  v15 = [v12 initWithEntityName:v13];

  v16 = sub_3E7564();
  [v15 setPredicate:v16];

  sub_3E75B4();
  v17 = sub_3ED574().super.isa;

  [v15 setSortDescriptors:v17];

  v18 = v41;
  v19 = sub_3EDDA4();
  if (v18)
  {
    v36 = v18;
  }

  else
  {
    v20 = v19;
    v21 = sub_3EDDA4();
    v36 = 0;
    v35 = v14;
    v43 = v20;
    sub_41490(v21);
    v22 = v43;
    if (v43 >> 62)
    {
      goto LABEL_25;
    }

    v23 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
    v25 = v38;
    v24 = v39;
    v34 = v15;
    if (v23)
    {
      v26 = 0;
      v40 = v22 & 0xFFFFFFFFFFFFFF8;
      v41 = v22 & 0xC000000000000001;
      v27 = (v37 + 48);
      v28 = _swiftEmptyArrayStorage;
      v15 = v23;
      while (1)
      {
        if (v41)
        {
          v29 = sub_3EE3F4();
          v30 = (v26 + 1);
          if (__OFADD__(v26, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v26 >= *(v40 + 16))
          {
            goto LABEL_24;
          }

          v29 = *(v22 + 8 * v26 + 32);
          v30 = (v26 + 1);
          if (__OFADD__(v26, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            v23 = sub_3EE5A4();
            goto LABEL_5;
          }
        }

        CategoryListItem.init(from:)(v29, v4);
        if ((*v27)(v4, 1, v25) == 1)
        {
          sub_FCF8(v4, &qword_4F8A88);
        }

        else
        {
          sub_1EC184(v4, v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_E0810(0, v28[2] + 1, 1, v28);
          }

          v32 = v28[2];
          v31 = v28[3];
          if (v32 >= v31 >> 1)
          {
            v28 = sub_E0810(v31 > 1, v32 + 1, 1, v28);
          }

          v28[2] = v32 + 1;
          sub_1EC184(v42, v28 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32);
          v25 = v38;
          v24 = v39;
        }

        ++v26;
        if (v30 == v15)
        {
          goto LABEL_22;
        }
      }
    }

    v28 = _swiftEmptyArrayStorage;
LABEL_22:

    *v24 = v28;
  }
}

uint64_t sub_1E845C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModernPage();
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModernShelf();
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    sub_1E934C(*a1, (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0)));
    sub_1E9858(v9, v6);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    sub_1EC11C(v6, a2, type metadata accessor for ModernPage);
    v11 = sub_3E66E4();
    sub_1EC0BC(v6, type metadata accessor for ModernPage);
    sub_1EC0BC(v9, type metadata accessor for ModernShelf);
    *(a2 + v10) = v11;
    type metadata accessor for PageContent();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    static ContentUnavailablePage.emptyLibraryCategories.getter(a2);
    type metadata accessor for PageContent();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1E860C@<X0>(unint64_t *a1@<X8>)
{
  v87 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v1 - 8);
  v88 = &v70 - v2;
  v86 = sub_3E5FC4();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v90);
  v93 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EC544();
  __chkstk_darwin(v5 - 8);
  v80 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_3EC1F4();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v91 = &v70 - v11;
  v12 = sub_3E6044();
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3ED1F4();
  __chkstk_darwin(v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v70 - v16;
  v18 = sub_3EC044();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v78 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  sub_3E8194();
  sub_3E8594();
  v24 = sub_3E5DC4();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_3E67A4();
  sub_3EBFC4();
  v101 = v95;
  sub_FCF8(&v101, &unk_4F8A10);
  v100 = v96;
  sub_FCF8(&v100, &qword_4E94E0);
  v99 = v97;
  sub_FCF8(&v99, &unk_4F8A20);
  sub_16AC0(v98);

  sub_FCF8(v17, &unk_4E9EE0);
  v25 = sub_3E7424();
  v94[3] = v25;
  v94[4] = sub_1EBFDC(&qword_4F07A0, 255, &type metadata accessor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v94);
  (*(*(v25 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.libraryCategoriesPageImpressionMetrics(_:), v25);
  LOBYTE(v25) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  v89 = v19;
  if ((v25 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A30);
    sub_3EC9F4();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_3F5310;
    sub_3EC9C4();
    sub_3EC9E4();
    v28 = sub_35738(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v29 = sub_3EC004();
    if (v28[2] <= v29[2] >> 3)
    {
      v94[0] = v29;
      sub_1EA090(v28);
    }

    else
    {
      sub_1EA2AC(v28, v29);
    }

    v30 = v18;
    v19 = v89;
    v31 = v78;
    sub_3EBFE4();

    (*(v19 + 8))(v23, v30);
    (*(v19 + 32))(v23, v31, v30);
    v18 = v30;
  }

  sub_3ED184();
  sub_3E6034();
  v79 = sub_3ED2A4();
  v78 = v32;
  v76 = sub_3E7784();
  v33 = *(v76 - 8);
  v75 = *(v33 + 56);
  v77 = v33 + 56;
  v74 = v23;
  v75(v91, 1, 1, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  v34 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_3F5630;
  v36 = *(v19 + 16);
  v73 = v18;
  v36(v35 + v34, v23, v18);
  sub_3EC534();
  v37 = v92;
  sub_3EC1C4();
  v38 = [objc_opt_self() currentTraitCollection];
  v39 = [v38 userInterfaceIdiom];

  if (v39 >= 6)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0x80000000504uLL >> (8 * v39);
  }

  v41 = v93;
  *v93 = 0;
  swift_storeEnumTagMultiPayload();
  v42 = v82;
  v43 = *(v82 + 16);
  v44 = v81;
  v45 = v83;
  v43(v81, v37, v83);
  v90 = type metadata accessor for FlowAction(0);
  v46 = swift_allocObject();
  v80 = type metadata accessor for FlowDestination;
  sub_1EC11C(v41, v46 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v47 = (v46 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v47 = 0;
  v47[1] = 0;
  *(v46 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v40;
  *(v46 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v46 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v48 = v44;
  v43((v46 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v44, v45);
  v49 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v50 = sub_3EC634();
  v51 = *(v50 - 8);
  v71 = *(v51 + 56);
  v72 = v51 + 56;
  v71(v46 + v49, 1, 1, v50);
  v52 = v84;
  sub_3E5FB4();
  v53 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v55 = v54;
  (*(v85 + 8))(v52, v86);
  v56 = *(v42 + 8);
  v56(v48, v45);
  sub_1EC0BC(v93, v80);
  *(v46 + 16) = v53;
  *(v46 + 24) = v55;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0;
  *(v46 + 48) = 48;
  v56(v92, v45);
  v57 = type metadata accessor for ActionButton();
  v58 = v87;
  v59 = (v87 + v57[8]);
  v59[3] = v90;
  v59[4] = sub_1EBFDC(&qword_4F8A40, 255, type metadata accessor for FlowAction);
  *v59 = v46;
  v60 = v88;
  v61 = v71;
  v71(v88, 1, 1, v50);
  v62 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
  v64 = v63;
  (*(v89 + 8))(v74, v73);
  v65 = v57[6];
  v75(v58 + v65, 1, 1, v76);
  v66 = v57[7];
  *(v58 + v66) = 2;
  v67 = v57[9];
  v61(v58 + v67, 1, 1, v50);
  *v58 = v62;
  v58[1] = v64;
  v68 = v78;
  v58[2] = v79;
  v58[3] = v68;
  sub_51F9C(v91, v58 + v65, &qword_4F1D50);
  *(v58 + v66) = 2;
  return sub_51F9C(v60, v58 + v67, &unk_4E9170);
}

uint64_t sub_1E92E8()
{
  sub_3E62F4();
  v0 = sub_3E62E4();
  v2 = v1;

  qword_4F8760 = v0;
  *algn_4F8768 = v2;
  return result;
}

uint64_t sub_1E934C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_3EC634();
  v14 = *(*(v13 - 8) + 56);
  v33 = v12;
  v14(v12, 1, 1, v13);
  v15 = sub_3E7424();
  v34[3] = v15;
  v34[4] = sub_1EBFDC(&qword_4F07A0, 255, &type metadata accessor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v34);
  (*(*(v15 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.libraryCategoriesPageImpressionMetrics(_:), v15);
  LOBYTE(v15) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  if (v15)
  {
    v32 = a1;
    if (qword_4E8A50 != -1)
    {
      swift_once();
    }

    sub_3E85C4();
    sub_3EC584();

    v17 = v33;
    sub_FCF8(v33, &unk_4E9170);
    v14(v9, 0, 1, v13);
    sub_14A10(v9, v17);
    a1 = v32;
  }

  if (qword_4E8A50 != -1)
  {
    swift_once();
  }

  v18 = *algn_4F8768;
  v32 = qword_4F8760;
  v19 = type metadata accessor for ModernShelf();
  v20 = v19[5];
  v21 = type metadata accessor for Header(0);
  (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);

  v22 = sub_77720(a1);
  v23 = sub_3E5DC4();
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v25 = a2 + v19[12];
  *(v25 + 4) = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = v19[9];
  v27 = v6;
  v28 = (a2 + v19[8]);
  v24(a2 + v26, 1, 1, v23);
  *a2 = v32;
  a2[1] = v18;
  v29 = a2 + v19[6];
  *v29 = 53;
  *(v29 + 3) = 256;
  *(v29 + 2) = 0;
  *(v29 + 1) = 1;
  *(a2 + v19[7]) = v22;
  sub_51F9C(v27, a2 + v26, &unk_4E9EE0);
  *(a2 + v19[10]) = 1;
  *(a2 + v19[11]) = 0;
  result = sub_14A10(v33, a2 + v19[13]);
  *v28 = 0;
  v28[1] = 0;
  return result;
}

uint64_t sub_1E97A8()
{
  v0 = sub_3ECCF4();
  __swift_allocate_value_buffer(v0, qword_4F8770);
  __swift_project_value_buffer(v0, qword_4F8770);
  sub_3E8024();
  v1 = sub_3E7A24();
  v3 = v2;
  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  sub_3ED3D4(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v3;
  sub_3ED3D4(v6);

  return sub_3ECCE4();
}

uint64_t sub_1E9858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = sub_3EC544();
  __chkstk_darwin(v2 - 8);
  v42 = sub_3EC164();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_3EC0B4();
  v6 = *(v40 - 8);
  v7 = v6;
  __chkstk_darwin(v40);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  v10 = *(v6 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v41 = xmmword_3F5630;
  *(v12 + 16) = xmmword_3F5630;
  sub_3E67A4();
  sub_3EC084();
  v62 = v49;
  sub_FCF8(&v62, &unk_4F8A10);
  v61 = v50;
  sub_FCF8(&v61, &qword_4E94E0);
  v60 = v51;
  sub_FCF8(&v60, &unk_4F8A20);
  sub_16AC0(v52);
  v13 = sub_3E7424();
  v55 = v13;
  v56 = sub_1EBFDC(&qword_4F07A0, 255, &type metadata accessor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v53);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.libraryCategoriesPageImpressionMetrics(_:), v13);
  LOBYTE(v13) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  if (v13)
  {
    sub_3E67A4();
    sub_3EC074();
    v59 = v53;
    sub_FCF8(&v59, &unk_4F8A10);
    v58 = v54;
    sub_FCF8(&v58, &qword_4E94E0);
    v57 = v55;
    sub_FCF8(&v57, &unk_4F8A20);
    sub_16AC0(v56);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_E0838(v15 > 1, v16 + 1, 1, v12);
    }

    *(v12 + 16) = v16 + 1;
    (*(v7 + 32))(v12 + v11 + v16 * v10, v9, v40);
  }

  v17 = sub_3E7884();
  v19 = v18;
  v20 = sub_3E7A24();
  v48 = &type metadata for String;
  *&v47 = v20;
  *(&v47 + 1) = v21;
  sub_1FB90(&v47, v46);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = _swiftEmptyDictionarySingleton;
  sub_39B88(v46, v17, v19, isUniquelyReferenced_nonNull_native);

  v23 = v45;
  v24 = sub_3E7894();
  v26 = v25;
  v27 = sub_3E8024();
  v48 = &type metadata for String;
  *&v47 = v27;
  *(&v47 + 1) = v28;
  sub_1FB90(&v47, v46);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v23;
  sub_39B88(v46, v24, v26, v29);

  sub_3EC534();
  sub_130E20(_swiftEmptyArrayStorage);
  sub_3EC0C4();
  if (qword_4E8A58 != -1)
  {
    swift_once();
  }

  v30 = sub_3ECCF4();
  v31 = __swift_project_value_buffer(v30, qword_4F8770);
  v32 = v44;
  (*(*(v30 - 8) + 16))(v44, v31, v30);
  v33 = type metadata accessor for ModernPage();
  v34 = v42;
  (*(v3 + 16))(v32 + *(v33 + 20), v5, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
  v35 = *(type metadata accessor for ModernShelf() - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v41;
  sub_1EC11C(v43, v37 + v36, type metadata accessor for ModernShelf);
  result = (*(v3 + 8))(v5, v34);
  *(v32 + *(v33 + 24)) = v37;
  return result;
}

uint64_t CategoryListPresenter.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t CategoryListPresenter.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t CategoryListPresenter.interactionContextPage.getter()
{
  sub_3E63E4();

  return swift_storeEnumTagMultiPayload();
}

void sub_1EA090(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A48);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_3EC9F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1EAD18(v9, v5);
      sub_FCF8(v5, &qword_4F8A48);
      (*(v7 + 8))(v9, v6);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_1EA2AC(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A48);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v65 - v9);
  v11 = sub_3EC9F4();
  __chkstk_darwin(v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v65 - v14);
  __chkstk_darwin(v16);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_FCF8(v30, &qword_4F8A48);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1EBFDC(&unk_4F8A50, 255, &type metadata accessor for MetricsFieldInclusionRequest);
    v32 = sub_3ED114();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, a2[6] + v84 * v24, v11);
    v35 = sub_1EBFDC(&qword_4EA160, 255, &type metadata accessor for MetricsFieldInclusionRequest);
    v36 = sub_3ED174();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) >= 0xE)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_FCF8(v24, &qword_4F8A48);
        a2 = sub_1EAFC8(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_3ED114();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, v52[6] + v54 * v84, v11);
        v55 = sub_3ED174();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, v52[6] + v54 * v84, v11);
            v57 = sub_3ED174();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_1EB2F4(v63, v65, v80, v24, &v89);
  a2 = v64;

LABEL_52:
  sub_44824();
  return a2;
}

uint64_t sub_1EAD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3EC9F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1EBFDC(&unk_4F8A50, 255, &type metadata accessor for MetricsFieldInclusionRequest);
  v31 = a1;
  v10 = sub_3ED114();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1EBFDC(&qword_4EA160, 255, &type metadata accessor for MetricsFieldInclusionRequest);
      v19 = sub_3ED174();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1EB7D0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1EBA08(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1EAFC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_3EC9F4();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A60);
  result = sub_3EE394();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1EBFDC(&unk_4F8A50, 255, &type metadata accessor for MetricsFieldInclusionRequest);
    result = sub_3ED114();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1EB2F4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A48);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_3EC9F4();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_FCF8(v11, &qword_4F8A48);
          v45 = v61;

          sub_1EAFC8(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1EBFDC(&unk_4F8A50, 255, &type metadata accessor for MetricsFieldInclusionRequest);
        v35 = sub_3ED114();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1EBFDC(&qword_4EA160, 255, &type metadata accessor for MetricsFieldInclusionRequest);
        v43 = sub_3ED174();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void *sub_1EB7D0()
{
  v1 = v0;
  v2 = sub_3EC9F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A60);
  v6 = *v0;
  v7 = sub_3EE364();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void sub_1EBA08(int64_t a1)
{
  v3 = sub_3EC9F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_3EE264();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1EBFDC(&unk_4F8A50, 255, &type metadata accessor for MetricsFieldInclusionRequest);
        v23 = sub_3ED114();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 < v20 || a1 < v24)
          {
LABEL_4:
            v7 = v22;
            v16 = v17;
            goto LABEL_5;
          }
        }

        else if (v24 < v20 && a1 < v24)
        {
          goto LABEL_4;
        }

        v7 = v22;
        v27 = *(v22 + 48);
        v16 = v17;
        v28 = v17 * a1;
        if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_21;
        }

        a1 = v10;
        if (v28 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_21:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void *sub_1EBD10(uint64_t a1)
{
  v3 = type metadata accessor for PageContent();
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[4] = &_swiftEmptySetSingleton;
  v14 = 0;
  memset(v15, 0, 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  v1[5] = sub_3E9D94();
  *v5 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  v1[6] = sub_3E9D94();
  v14 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  v1[7] = sub_3E9D94();
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);

  sub_3EC394();
  v1[3] = v14;
  v6 = [objc_opt_self() mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x800000000042A850;
  v16._countAndFlagsBits = 0xD000000000000010;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v7.super.isa = v6;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v8 = sub_3E5A74(v16, v17, v7, v18, v12);
  v10 = v9;

  v14 = v8;
  v15[0] = v10;
  BYTE4(v15[1]) = -96;
  LODWORD(v15[1]) = 0;
  sub_3E9D74();
  return v1;
}

uint64_t sub_1EBF2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1EBF84(uint64_t a1, uint64_t a2)
{
  result = sub_1EBFDC(&qword_4F8930, a2, type metadata accessor for CategoryListPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1EBFDC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1EC0BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1EC11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1EC184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryListItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CategoryPagePresenter.interactionContextOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_interactionContextOrigin;
  v4 = sub_3E6424();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1EC2DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t CategoryPagePresenter.__allocating_init(asPartOf:with:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1EFBD8(a1, a2);

  return v4;
}

uint64_t CategoryPagePresenter.init(asPartOf:with:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v2 = sub_1EFBD8(a1, a2);

  return v2;
}

Swift::Void __swiftcall CategoryPagePresenter.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A98);
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  __chkstk_darwin(v2);
  v55 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v5 - 8);
  v54 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AA8);
  v61 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AB0);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v15 = &v38 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AB8);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AC0);
  v19 = *(v18 - 8);
  v49 = v18;
  v50 = v19;
  __chkstk_darwin(v18);
  v39 = &v38 - v20;
  sub_1ECF74();
  v52 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter__storePage;
  swift_beginAccess();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AD0);
  v42 = v10;
  sub_3E9E74();
  swift_endAccess();
  v51 = type metadata accessor for Page();
  v60 = sub_886BC(&qword_4F8AD8, &qword_4F8AA0);
  v21 = v13;
  v48 = v7;
  sub_3E9FA4();
  v58 = *(v8 + 8);
  v59 = v8 + 8;
  v58(v10, v7);
  v22 = *(v0 + 24);
  sub_1F958(v1 + 32, v62);
  v23 = swift_allocObject();
  sub_1D4F0(v62, v23 + 16);
  *(v23 + 56) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  v45 = v11;
  v41 = v21;
  sub_3E9B84();

  v24 = *(v61 + 8);
  v61 += 8;
  v47 = v24;
  v24(v21, v11);
  v43 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_886BC(&qword_4F8AE0, &qword_4F8AB0);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  v25 = v38;
  sub_3EA184();
  (*(v40 + 8))(v15, v25);
  sub_36174(0, &qword_4F10B0);
  v26 = sub_3EDBC4();
  *&v62[0] = v26;
  v27 = sub_3EDB64();
  v28 = v54;
  (*(*(v27 - 8) + 56))(v54, 1, 1, v27);
  sub_886BC(&qword_4F8AE8, &qword_4F8AB8);
  sub_87870();
  v29 = v39;
  v30 = v44;
  sub_3EA114();
  sub_FCF8(v28, &qword_4F69E0);

  (*(v46 + 8))(v17, v30);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F8AF0, &qword_4F8AC0);
  v31 = v49;
  sub_3EA1A4();

  (*(v50 + 8))(v29, v31);
  swift_beginAccess();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  swift_beginAccess();
  v32 = v42;
  sub_3E9E74();
  swift_endAccess();
  v33 = v41;
  v34 = v48;
  sub_3E9FA4();
  v58(v32, v34);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F8AF8, &qword_4F8AA8);
  v35 = v45;
  sub_3EA1A4();

  v47(v33, v35);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  swift_beginAccess();
  sub_3E9E74();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  v36 = v55;
  sub_3EA024();

  v58(v32, v34);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F8B00, &qword_4F8A98);
  v37 = v56;
  sub_3EA1A4();

  (*(v57 + 8))(v36, v37);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  sub_1ED628();
}

uint64_t sub_1ECF74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8DF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v10[2] = sub_1EEC80();
  sub_36174(0, &qword_4F10B0);
  v7 = sub_3EDBC4();
  v10[5] = v7;
  v8 = sub_3EDB64();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  sub_87870();
  sub_3EA114();
  sub_FCF8(v2, &qword_4F69E0);

  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F8E00, &qword_4F8DF8);
  sub_3EA1A4();

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_1ED2B8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = Page.modernShelves.getter();
  v8 = StoreDataProvider.progressivelyLoadShelfItemsPublisher(objectGraph:shelves:)(a2, v7, v5, v6);

  *a3 = v8;
  return result;
}

uint64_t sub_1ED340(unint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;
  sub_1F0BA0(*a1);
  swift_getAtKeyPath();
  sub_1F0CFC(v3);
}

uint64_t sub_1ED3B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D74();
  }

  return result;
}

uint64_t sub_1ED444@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ErrorModel();
  __chkstk_darwin(v4 - 8);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11[1] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8C68);
  if (sub_3E9524())
  {
    v7 = swift_allocObject();
    swift_weakInit();

    static ErrorModel.offline(_:)(sub_1F0CF0, v7, v6);

    static ModernShelf.errorShelf(id:_:)(0x685320726F727245, 0xEB00000000666C65, v6, a2);
    sub_1F05A0(v6, type metadata accessor for ErrorModel);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for ModernShelf();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t sub_1ED5D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1ED628();
  }

  return result;
}

uint64_t sub_1ED628()
{
  v1 = v0;
  v2 = sub_3E6304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-1] - v7;
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v24[0] = 0;

  sub_3E9EB4();
  v13 = v1 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_category;
  v14 = type metadata accessor for Category();
  sub_FBD0(&v13[*(v14 + 24)], v8, &unk_4E9EE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_FCF8(v8, &unk_4E9EE0);
  }

  v16 = v12;
  (*(v10 + 32))(v12, v8, v9);
  *v5 = 1;
  v17 = enum case for PageRenderActivity.primaryDataFetchStarted(_:);
  v18 = sub_3E6474();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  (*(v3 + 104))(v5, enum case for PageRenderEvent.activity(_:), v2);
  sub_3E9CF4();
  (*(v3 + 8))(v5, v2);
  v19 = v1[7];
  v20 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v19);
  (*(v20 + 136))(v16, v19, v20);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v21 = sub_36174(0, &qword_4F10B0);

  v22 = sub_3EDBC4();
  v24[3] = v21;
  v24[4] = &protocol witness table for OS_dispatch_queue;
  v24[0] = v22;
  sub_3ECD94();

  (*(v10 + 8))(v16, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_1EDA64(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_FBD0(a1, v7, &unk_503DA0);
    v10 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_storeErrorShelf;
    swift_beginAccess();
    sub_1F0BB0(v7, v9 + v10);
    swift_endAccess();
    sub_1EE0AC(v4);
    sub_3E9D74();
    sub_FCF8(v7, &unk_503DA0);
  }

  return result;
}

uint64_t sub_1EDBEC(uint64_t *a1)
{
  v2 = sub_3E6304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v7 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
    swift_beginAccess();
    v8 = sub_3EC164();
    (*(*(v8 - 8) + 16))(v5, v6 + v7, v8);
    v9 = enum case for PageRenderActivity.primaryDataFetchCompleted(_:);
    v10 = sub_3E6474();
    (*(*(v10 - 8) + 104))(v5, v9, v10);
    (*(v3 + 104))(v5, enum case for PageRenderEvent.activity(_:), v2);
    sub_3E9CF4();

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_3E66D4();
    v13 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_pageRenderContentTypes;
    swift_beginAccess();
    *(v12 + v13) = sub_3E66F4();
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v15[1] = v6;

    return sub_3E9EB4();
  }

  return result;
}

uint64_t sub_1EDEAC(uint64_t a1)
{
  v2 = sub_3E6304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    *v5 = a1;
    v6 = enum case for PageRenderActivity.primaryDataFetchFailed(_:);
    v7 = sub_3E6474();
    (*(*(v7 - 8) + 104))(v5, v6, v7);
    (*(v3 + 104))(v5, enum case for PageRenderEvent.activity(_:), v2);
    swift_errorRetain();
    sub_3E9CF4();

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9[1] = 1;
    return sub_3E9EB4();
  }

  return result;
}

uint64_t sub_1EE0AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v72 = sub_3EC544();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v65 - v5;
  v73 = type metadata accessor for ModernPage();
  __chkstk_darwin(v73);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v68);
  v66 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v65 - v9;
  __chkstk_darwin(v10);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v65 - v14;
  v16 = type metadata accessor for ModernShelf();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  v82 = 0;
  *&v83 = _swiftEmptyArrayStorage;
  *(&v83 + 1) = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_storeErrorShelf;
  swift_beginAccess();
  sub_FBD0(v2 + v23, v15, &unk_503DA0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_FCF8(v15, &unk_503DA0);
    v24 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_storeShelves;
    v76 = *(v2 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_storeShelves);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
    if (sub_3E9544())
    {
      sub_1F0C20(v2 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_localHeaderShelf, v12, type metadata accessor for ModernShelf);
      v25 = *(v17 + 56);
      v25(v12, 0, 2, v16);
      ModernShelfListBuilder.addImportantShelf(_:)();
      sub_FCF8(v12, &qword_4F5978);
      static ModernShelf.loadingShelf(id:)(0x53676E6964616F6CLL, 0xEE004449666C6568, v19);
      v26 = v66;
      sub_1F0C20(v19, v66, type metadata accessor for ModernShelf);
      v25(v26, 0, 2, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      sub_3E9504();
      v27 = v76;
      v28 = *(&v83 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_E02FC(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      if (v30 >= v29 >> 1)
      {
        v28 = sub_E02FC((v29 > 1), v30 + 1, 1, v28);
      }

      sub_FCF8(v26, &qword_4F5978);
      sub_1F05A0(v19, type metadata accessor for ModernShelf);
      v28[2] = v30 + 1;
      v28[v30 + 4] = v27;
      *(&v83 + 1) = v28;
    }

    else
    {
      v43 = *(v2 + v24);
      sub_192B2C(v43);
      v44 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = sub_E02FC((v45 > 1), v46 + 1, 1, v44);
      }

      v44[2] = v46 + 1;
      v44[v46 + 4] = v43;
      *(&v83 + 1) = v44;
    }
  }

  else
  {
    sub_1F0C88(v15, v22, type metadata accessor for ModernShelf);
    sub_1F0C20(v2 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_localHeaderShelf, v12, type metadata accessor for ModernShelf);
    v31 = *(v17 + 56);
    v31(v12, 0, 2, v16);
    ModernShelfListBuilder.addImportantShelf(_:)();
    sub_FCF8(v12, &qword_4F5978);
    v32 = *(v2 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_fromYourShowsShelf);
    v33 = v83;
    sub_192B2C(v32);
    sub_192B2C(v32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_E02FC(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = sub_E02FC((v34 > 1), v35 + 1, 1, v33);
    }

    v33[2] = v35 + 1;
    v33[v35 + 4] = v32;
    *&v83 = v33;
    v36 = *(&v83 + 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_E02FC(0, v36[2] + 1, 1, v36);
    }

    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      v36 = sub_E02FC((v37 > 1), v38 + 1, 1, v36);
    }

    v36[2] = v38 + 1;
    v36[v38 + 4] = v32;
    *(&v83 + 1) = v36;
    v39 = v67;
    sub_1F0C20(v22, v67, type metadata accessor for ModernShelf);
    v31(v39, 0, 2, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v40 = v76;
    v42 = v36[2];
    v41 = v36[3];
    if (v42 >= v41 >> 1)
    {
      v36 = sub_E02FC((v41 > 1), v42 + 1, 1, v36);
    }

    sub_FCF8(v39, &qword_4F5978);
    sub_1F05A0(v22, type metadata accessor for ModernShelf);
    v36[2] = v42 + 1;
    v36[v42 + 4] = v40;
    *(&v83 + 1) = v36;
  }

  v82 = 1;
  v47 = sub_3E80A4();
  v48 = *(v2 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_category);
  v76 = v47;
  *&v77 = v49;
  v91._countAndFlagsBits = 95;
  v91._object = 0xE100000000000000;
  sub_3ED3D4(v91);
  *&v84 = v48;
  sub_C2A70();
  v92._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v92);

  v50 = v74;
  sub_3ECCE4();
  v51 = sub_3E8044();
  v53 = v52;
  v76 = v48;
  sub_17A28();
  v76 = sub_3EE1F4();
  *&v77 = v54;
  *(&v77 + 1) = v51;
  v78 = v53;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v55 = v70;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  v56 = v71;
  v57 = v72;
  (*(v71 + 16))(v69, v55, v72);
  v58 = v73;
  sub_3EC0C4();
  v90 = v84;
  sub_FCF8(&v90, &unk_4F8A10);
  v89 = v85;
  sub_FCF8(&v89, &qword_4E94E0);
  v88 = v86;
  sub_FCF8(&v88, &unk_4F8A20);
  sub_16AC0(v87);
  (*(v56 + 8))(v55, v57);

  LOBYTE(v76) = v82;
  v77 = v83;
  ModernShelfListBuilder.buildList()();
  v60 = v59;

  *(v50 + *(v58 + 24)) = v60;
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
  v62 = v75;
  sub_1F0C88(v50, v75, type metadata accessor for ModernPage);
  v63 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_pageRenderContentTypes;
  swift_beginAccess();
  *(v62 + v61) = *(v2 + v63);
  type metadata accessor for PageContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1EEC80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8E08);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8E10);
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8E18);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_category);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8E20);
  v18 = sub_3ED6F4();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = *(v0 + 24);
  sub_1F958(v0 + 72, v35);
  v20 = swift_allocObject();
  sub_1D4F0(v35, v20 + 16);
  *(v20 + 56) = v17;
  *(v20 + 64) = v19;

  *&v35[0] = sub_3E9E14();
  sub_36174(0, &qword_4F10B0);
  v21 = sub_3EDBC4();
  v34 = v21;
  v22 = sub_3EDB64();
  (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
  sub_886BC(&qword_4F8E28, &qword_4F8E20);
  sub_87870();
  sub_3EA154();
  sub_FCF8(v3, &qword_4F69E0);

  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4F8E30, &qword_4F8E08);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  v23 = v28;
  sub_3EA0E4();
  (*(v29 + 8))(v10, v23);
  sub_886BC(&qword_4F8E38, &qword_4F8E10);
  v24 = v30;
  sub_3EA054();
  (*(v33 + 8))(v12, v24);
  sub_886BC(&qword_4F8E40, &qword_4F8E18);
  v25 = v31;
  v26 = sub_3E9F94();
  (*(v32 + 8))(v16, v25);
  return v26;
}

uint64_t sub_1EF25C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for PageContent();
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *a3;
    v11 = *(result + *a3);
    *(result + v10) = v8;

    sub_192858(v11);
    sub_1EE0AC(v7);
    sub_3E9D74();
  }

  return result;
}

uint64_t sub_1EF348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1EF36C, 0, 0);
}

uint64_t sub_1EF36C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v0[2] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_F7578();
  *v5 = v0;
  v5[1] = sub_1EF450;
  v7 = v0[6];
  v8 = v0[3];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v0 + 2, v7, &type metadata for CategoryPageFromYourShowsShelfIntent, v6, v3, v4);
}

uint64_t sub_1EF450()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1EF584, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1EF5A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A50);
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_3E9A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_36174(0, &qword_4F6BF0);
  sub_3EE054();
  swift_errorRetain();
  v12 = sub_3E99F4();
  v13 = sub_3ED9D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v4;
    v17 = v16;
    v27 = v11;
    v28 = v16;
    *v15 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v18 = sub_3ED2B4();
    v20 = sub_2EDD0(v18, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "Error completing a shelf: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v4 = v24;

    a2 = v25;
  }

  (*(v8 + 8))(v10, v7);
  v28 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9DF4();
  sub_886BC(&qword_4F1A88, &qword_4F1A50);
  v21 = sub_3E9F94();
  result = (*(v26 + 8))(v6, v4);
  *a2 = v21;
  return result;
}

uint64_t CategoryPagePresenter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  sub_1F05A0(v0 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_category, type metadata accessor for Category);

  sub_1F05A0(v0 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_interactionContextPage, &type metadata accessor for InteractionContext.Page);
  v1 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_interactionContextOrigin;
  v2 = sub_3E6424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1F05A0(v0 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_localHeaderShelf, type metadata accessor for ModernShelf);
  v3 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter__storePage;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AD0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_192858(*(v0 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_fromYourShowsShelf));
  sub_192858(*(v0 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_storeShelves));
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_storeErrorShelf, &unk_503DA0);
  return v0;
}

uint64_t CategoryPagePresenter.__deallocating_deinit()
{
  CategoryPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1EFADC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_1EFB5C(unint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1F0BA0(v1);
  return sub_3E9EB4();
}

uint64_t sub_1EFBD8(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v62 = &v55 - v5;
  v58 = type metadata accessor for ModernShelf();
  v6 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v61 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v59 = &v55 - v11;
  v12 = type metadata accessor for Category();
  __chkstk_darwin(v12 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AD0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - v16;
  v18 = type metadata accessor for PageContent();
  __chkstk_darwin(v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v21 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_headerButtonItems;
  *&v64[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  *(v2 + v21) = sub_3E9D94();
  v22 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_pageContent;
  *v20 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v2 + v22) = sub_3E9D94();
  v23 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_pageHeader;
  memset(v64, 0, 21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v2 + v23) = sub_3E9D94();
  v24 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_pageRender;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7200);
  swift_allocObject();
  *(v2 + v24) = sub_3E9D14();
  sub_3E63E4();
  swift_storeEnumTagMultiPayload();
  v25 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_interactionContextOrigin;
  v26 = enum case for InteractionContext.Origin.local(_:);
  v27 = sub_3E6424();
  (*(*(v27 - 8) + 104))(v3 + v25, v26, v27);
  v28 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_pageRenderContentTypes;
  *(v3 + v28) = sub_3E66E4();
  v29 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter__storePage;
  type metadata accessor for Page();
  sub_3E9554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8C68);
  sub_3E9E64();
  (*(v15 + 32))(v3 + v29, v17, v14);
  v30 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_fromYourShowsShelf;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9554();
  *(v3 + v30) = *&v64[0];
  v31 = OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_storeShelves;
  sub_3E9554();
  *(v3 + v31) = *&v64[0];
  v32 = v58;
  (*(v6 + 56))(v3 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_storeErrorShelf, 1, 1, v58);
  *(v3 + 24) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);

  sub_3EC394();
  sub_1D4F0(v64, v3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  sub_3EC394();
  sub_1D4F0(v64, v3 + 72);
  v33 = v63;
  sub_1F0C20(v63, v3 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_category, type metadata accessor for Category);
  v34 = v57;
  sub_1F0C20(v33, v57, type metadata accessor for Category);
  v35 = sub_3E7784();
  v36 = v59;
  (*(*(v35 - 8) + 56))(v59, 1, 1, v35);
  v37 = sub_3EC634();
  v60 = *(*(v37 - 8) + 56);
  v38 = v61;
  v60(v61, 1, 1, v37);
  v39 = type metadata accessor for CategoryHeader();
  swift_allocObject();
  v40 = sub_357578(v34, v36, v38);
  v61 = v40;
  v41 = v32[5];
  v42 = v32;
  v43 = type metadata accessor for Header(0);
  v44 = v56;
  (*(*(v43 - 8) + 56))(&v56[v41], 1, 1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_3F5630;
  *(v45 + 56) = v39;
  *(v45 + 64) = sub_1F0658(&qword_4F8E48, type metadata accessor for CategoryHeader);
  *(v45 + 32) = v40;
  v46 = sub_3E5DC4();
  v47 = *(*(v46 - 8) + 56);
  v48 = v62;
  v47(v62, 1, 1, v46);
  v49 = v44 + v42[12];
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v60((v44 + v42[13]), 1, 1, v37);
  v50 = v42[9];
  v51 = (v44 + v42[8]);
  v47((v44 + v50), 1, 1, v46);
  strcpy(v44, "CategoryUber");
  *(v44 + 13) = 0;
  *(v44 + 14) = -5120;
  v52 = v44 + v42[6];
  *v52 = 74;
  *(v52 + 6) = 256;
  *(v52 + 2) = 0;
  *(v52 + 8) = 1;
  *(v44 + v42[7]) = v45;

  sub_17F4C4(v48, v44 + v50);
  *(v44 + v42[10]) = 1;
  *(v44 + v42[11]) = 0;
  *v51 = 0;
  v51[1] = 0;
  sub_1F0C88(v44, v3 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_localHeaderShelf, type metadata accessor for ModernShelf);
  v53 = *(v3 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_category + 16);
  *&v64[0] = *(v3 + OBJC_IVAR____TtC8ShelfKit21CategoryPagePresenter_category + 8);
  *(&v64[0] + 1) = v53;
  BYTE4(v64[1]) = 96;
  LODWORD(v64[1]) = 7;

  sub_3E9D74();

  sub_1F05A0(v63, type metadata accessor for CategoryPagePresenter.Configuration);
  return v3;
}

uint64_t sub_1F04E0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1F052C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F05A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1F0600(uint64_t a1)
{
  result = sub_1F0658(&qword_4F8C10, type metadata accessor for CategoryPagePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1F0658(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1F0710()
{
  type metadata accessor for Category();
  if (v0 <= 0x3F)
  {
    sub_3E63E4();
    if (v1 <= 0x3F)
    {
      sub_3E6424();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ModernShelf();
        if (v3 <= 0x3F)
        {
          sub_1F093C();
          if (v4 <= 0x3F)
          {
            sub_1F09A0();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1F093C()
{
  if (!qword_4F8C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4F8C68);
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F8C60);
    }
  }
}

void sub_1F09A0()
{
  if (!qword_4F5FD0)
  {
    type metadata accessor for ModernShelf();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F5FD0);
    }
  }
}

uint64_t sub_1F0A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Category();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1F0A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Category();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1F0B1C()
{
  result = type metadata accessor for Category();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1F0BA0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1F0BB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F0C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F0C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1F0CFC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1F0D30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1F0D70(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2368C;

  return sub_1EF348(a1, v1 + 16, v4, v5);
}

uint64_t ChannelListPresenter.__allocating_init(asPartOf:with:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = swift_allocObject();
  ChannelListPresenter.init(asPartOf:with:)(a1, a2);
  return v4;
}

uint64_t ChannelListPresenter.init(asPartOf:with:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = *a2;
  v9._object = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v2 + 24) = sub_3E9D94();
  type metadata accessor for ChannelListProvider();
  swift_allocObject();

  v5 = sub_17F2DC();

  *(v3 + 16) = v5;
  if (v4 == 1)
  {
    v6 = [objc_opt_self() mainBundle];
    v9._countAndFlagsBits = 0xE000000000000000;
    v10._countAndFlagsBits = 0x48435F454C544954;
    v10._object = 0xEE00534C454E4E41;
    v11.value._countAndFlagsBits = 0;
    v11.value._object = 0;
    v7.super.isa = v6;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    sub_3E5A74(v10, v11, v7, v12, v9);

    sub_3E9D74();
  }

  return v3;
}

uint64_t ChannelListPresenter.deinit()
{

  return v0;
}

uint64_t ChannelListPresenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ChannelListPresenter.interactionContextPage.getter()
{
  sub_3E63E4();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1F10B0(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *a2;
  v3 = swift_allocObject();
  ChannelListPresenter.init(asPartOf:with:)(a1, &v5);
  return v3;
}

uint64_t sub_1F1148@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *(v3 + 40);
}

uint64_t sub_1F1194(uint64_t a1)
{
  result = sub_1F1230(&qword_4F8F30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1F1230(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelListPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1F1274()
{
  result = qword_4F59A8;
  if (!qword_4F59A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F59A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F59A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelListPresenter.Configuration(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1F13B4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8C68);
  result = sub_3E9514();
  *a1 = v3;
  return result;
}

uint64_t ChannelPresenter.pageContent.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t ChannelPresenter.headerButtonItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

uint64_t sub_1F15B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t ModernStationDetailPresenter.Configuration.station.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ChannelPresenter.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  swift_allocObject();
  v4 = sub_1F5BF8(a1, a2);

  return v4;
}

uint64_t ChannelPresenter.init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1F5BF8(a1, a2);

  return v2;
}

uint64_t sub_1F1720(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3E9A04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *a1;
  v36 = sub_36174(0, &qword_4F6BF0);
  sub_3EE0D4();

  v12 = sub_3E99F4();
  v13 = sub_3ED9F4();

  if (os_log_type_enabled(v12, v13))
  {
    v33 = a3;
    v34 = v6;
    v35 = v5;
    v14 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v14 = 136315394;
    v39 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74C8);
    sub_886BC(&qword_4F74D0, &qword_4F74C8);
    sub_68DC4();
    v15 = sub_3ED504();
    v17 = sub_2EDD0(v15, v16, v40);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 80);

      v20 = *(v19 + 16);

      v38 = v20;
      sub_17A28();
      Strong = sub_3EE1F4();
      v22 = v21;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v24 = sub_2EDD0(Strong, v22, v40);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_0, v12, v13, "ChannelPresenter got purchase list %s and we're displaying channel %s", v14, 0x16u);
    swift_arrayDestroy();

    v5 = v35;
    v23 = *(v34 + 8);
    v23(v10, v35);
    a3 = v33;
  }

  else
  {

    v23 = *(v6 + 8);
    v23(v10, v5);
  }

  v40[0] = *(a3 + 16);
  sub_17A28();
  v25 = sub_3EE1F4();
  v27 = sub_33C748(v25, v26, v11);

  if (v27)
  {
    v29 = v37;
    sub_3EE0D4();
    v30 = sub_3E99F4();
    v31 = sub_3ED9F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "StorePresenter product displayed was purchased, reloading", v32, 2u);
    }

    v23(v29, v5);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1F1B7C(1);
    }
  }

  return result;
}

uint64_t sub_1F1B7C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  v8[0] = 0;

  sub_3E9EB4();
  v4 = v2[8];
  v5 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v4);
  (*(v5 + 24))(*(v2[10] + 16), a1, v4, v5);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v6 = sub_36174(0, &qword_4F10B0);

  v8[3] = v6;
  v8[4] = &protocol witness table for OS_dispatch_queue;
  v8[0] = sub_3EDBC4();
  sub_3ECD94();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

Swift::Void __swiftcall ChannelPresenter.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v2 - 8);
  v77 = v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EC0);
  v5 = *(v4 - 8);
  v79 = v4;
  v80 = v5;
  __chkstk_darwin(v4);
  v78 = v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A98);
  v8 = *(v7 - 8);
  v75 = v7;
  v76 = v8;
  __chkstk_darwin(v7);
  v74 = v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9010);
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  __chkstk_darwin(v10);
  v71 = v54 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9018);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = v54 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AB0);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v55 = v54 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AB8);
  v67 = *(v65 - 1);
  __chkstk_darwin(v65);
  v56 = v54 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9020);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AA0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AA8);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v54 - v23;
  sub_1F2DD8();
  v25 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter__storePage;
  swift_beginAccess();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AD0);
  sub_3E9E74();
  swift_endAccess();
  v54[0] = type metadata accessor for Page();
  v26 = sub_886BC(&qword_4F8AD8, &qword_4F8AA0);
  v82 = v17;
  v83 = v26;
  sub_3E9FA4();
  v84 = *(v18 + 8);
  v84(v20, v17);
  v63 = v18 + 8;
  swift_allocObject();
  swift_weakInit();
  v54[2] = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_886BC(&qword_4F8AF8, &qword_4F8AA8);
  sub_3EA1A4();

  v27 = *(v22 + 8);
  v54[1] = v22 + 8;
  v57 = v27;
  v27(v24, v21);
  swift_beginAccess();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  v54[3] = sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  v60 = v25;
  swift_beginAccess();
  v59 = v20;
  sub_3E9E74();
  swift_endAccess();
  v28 = v82;
  sub_3E9FA4();
  v84(v20, v28);
  v29 = *(v0 + 16);
  sub_1F958(v1 + 40, &v87);
  v30 = swift_allocObject();
  sub_1D4F0(&v87, v30 + 16);
  *(v30 + 56) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  v31 = v55;
  sub_3E9B84();

  v57(v24, v21);
  sub_886BC(&qword_4F8AE0, &qword_4F8AB0);
  v57 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_886BC(&qword_4F6340, &qword_4F6330);
  v32 = v56;
  v33 = v61;
  sub_3EA184();
  (*(v62 + 8))(v31, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9030);
  sub_886BC(&qword_4F8AE8, &qword_4F8AB8);
  v34 = v58;
  v35 = v65;
  sub_3EA024();
  (*(v67 + 8))(v32, v35);
  v65 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_886BC(&qword_4F9038, &qword_4F9020);
  v36 = v64;
  v37 = v34;
  v38 = sub_3E9F94();
  (*(v66 + 8))(v37, v36);
  *&v87 = v38;
  v67 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9040);
  type metadata accessor for ModernShelf();
  sub_886BC(&qword_4F9048, &qword_4F9040);
  v39 = v68;
  sub_3E9FA4();
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F9050, &qword_4F9018);
  v40 = v69;
  sub_3EA1A4();

  (*(v70 + 8))(v39, v40);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  *&v87 = v38;
  swift_getKeyPath();
  v41 = v71;
  sub_3EA014();

  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F9058, &qword_4F9010);
  v42 = v72;
  sub_3EA1A4();

  (*(v73 + 8))(v41, v42);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  swift_beginAccess();
  v43 = v59;
  sub_3E9E74();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  v44 = v74;
  v45 = v82;
  sub_3EA024();

  v84(v43, v45);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F8B00, &qword_4F8A98);
  v46 = v75;
  sub_3EA1A4();

  (*(v76 + 8))(v44, v46);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  v47 = *(v1 + 96);
  ObjectType = swift_getObjectType();
  *&v87 = (*(v47 + 24))(*(*(v1 + 80) + 16), ObjectType, v47);
  sub_36174(0, &qword_4F10B0);
  v49 = sub_3EDBC4();
  v86 = v49;
  v50 = sub_3EDB64();
  v51 = v77;
  (*(*(v50 - 8) + 56))(v77, 1, 1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C40);
  sub_886BC(&qword_4F5EC8, &qword_503C40);
  sub_87870();
  v52 = v78;
  sub_3EA114();
  sub_FCF8(v51, &qword_4F69E0);

  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F5ED0, &qword_4F5EC0);
  v53 = v79;
  sub_3EA1A4();

  (*(v80 + 8))(v52, v53);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  sub_1F1B7C(0);
}

void sub_1F2DD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F92B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - v3;
  v5 = *(v0 + 80);
  v6 = *(v5 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
  if (v6 < 1)
  {
    if (*(v5 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) <= 1)
    {
      return;
    }
  }

  else if (v6 <= 1)
  {
    return;
  }

  v7 = *(v0 + 32);
  v8 = *(v5 + 16);
  ObjectType = swift_getObjectType();
  LOWORD(v12) = 1024;
  BYTE2(v12) = 4;
  *(&v12 + 7) = 3855;
  *(&v12 + 3) = 252645133;
  BYTE9(v12) = 4;
  *(&v12 + 10) = 252645135;
  BYTE14(v12) = 15;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = -1;
  v10 = (*(v7 + 192))(v8, 0, 4, &v12, 100, ObjectType, v7);
  v18[3] = v15;
  v18[4] = v16;
  v19 = v17;
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  sub_1AE46C(v18);
  *&v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1488);
  sub_886BC(&qword_4F92C0, &qword_4F71E8);
  sub_3EA024();

  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F92C8, &qword_4F92B8);
  sub_3EA1A4();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_1F3174()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    sub_3E9D74();
  }

  return result;
}

uint64_t sub_1F3214(unint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;
  sub_1F0BA0(*a1);
  swift_getAtKeyPath();
  sub_1F0CFC(v3);
}

uint64_t sub_1F3288@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModernShelf();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_1F7368(v8 + v10, v7, type metadata accessor for ModernShelf);
  v11 = v7[*(v4 + 24)];
  if (ModernShelf.ItemKind.rawValue.getter(v11) == 0x486C656E6E616863 && v12 == 0xED00007265646165)
  {
    goto LABEL_14;
  }

  v14 = sub_3EE804();

  if (v14)
  {
    goto LABEL_15;
  }

  if (ModernShelf.ItemKind.rawValue.getter(v11) == 0xD000000000000011 && 0x8000000000423340 == v15)
  {
LABEL_14:
  }

  else
  {
    v17 = sub_3EE804();

    if ((v17 & 1) == 0)
    {
      sub_1F7308(v7, type metadata accessor for ModernShelf);
LABEL_13:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9030) + 48);
      (*(v5 + 56))(a2, 1, 1, v4);
      *(a2 + v18) = v8;
    }
  }

LABEL_15:
  sub_1F7368(v7, a2, type metadata accessor for ModernShelf);
  (*(v5 + 56))(a2, 0, 1, v4);
  v20 = *(v8 + 16);
  if (v20 < v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v20 != v9 - 1)
  {
LABEL_21:
    sub_268C6C(v8, v8 + v10, 1, (2 * v9) | 1);
    v8 = v22;
    goto LABEL_18;
  }

LABEL_18:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9030) + 48);
  result = sub_1F7308(v7, type metadata accessor for ModernShelf);
  *(a2 + v21) = v8;
  return result;
}

uint64_t sub_1F3560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9030);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  sub_FBD0(a1, &v8 - v5, &qword_4F9030);

  return sub_FACC(v6, a2, &unk_503DA0);
}

uint64_t sub_1F362C(uint64_t *a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeShelves);
    *(result + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeShelves) = v5;

    sub_192858(v7);
    swift_beginAccess();

    sub_1F3DDC(v4);
    sub_3E9D74();
  }

  return result;
}

uint64_t sub_1F3734@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ErrorModel();
  __chkstk_darwin(v4 - 8);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11[1] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8C68);
  if (sub_3E9524())
  {
    v7 = swift_allocObject();
    swift_weakInit();

    static ErrorModel.offline(_:)(sub_1F72A0, v7, v6);

    static ModernShelf.errorShelf(id:_:)(0x685320726F727245, 0xEB00000000666C65, v6, a2);
    sub_1F7308(v6, type metadata accessor for ErrorModel);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for ModernShelf();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t sub_1F38C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F1B7C(0);
  }

  return result;
}

uint64_t sub_1F391C(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_FBD0(a1, v7, &unk_503DA0);
    v10 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeErrorShelf;
    swift_beginAccess();
    sub_B8464(v7, v9 + v10, &unk_503DA0);
    swift_endAccess();
    swift_beginAccess();

    sub_1F3DDC(v4);
    sub_3E9D74();

    return sub_FCF8(v7, &unk_503DA0);
  }

  return result;
}

uint64_t sub_1F3AC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for PageContent();
  __chkstk_darwin(v5 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1F7368(a1, v10, type metadata accessor for ModernShelf);
    v13 = type metadata accessor for ModernShelf();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = *a3;
    swift_beginAccess();
    sub_B8464(v10, v12 + v14, &unk_503DA0);
    swift_endAccess();
    swift_beginAccess();

    sub_1F3DDC(v7);
    sub_3E9D74();

    return sub_FCF8(v10, &unk_503DA0);
  }

  return result;
}

uint64_t sub_1F3CC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_3E9EB4();
  }

  return result;
}

uint64_t sub_1F3D58()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_3E9EB4();
  }

  return result;
}

uint64_t sub_1F3DDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v125 = a1;
  v121 = sub_3EC544();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v113 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v115 = &v101 - v5;
  v6 = sub_3EC164();
  v123 = *(v6 - 8);
  v124 = v6;
  __chkstk_darwin(v6);
  v122 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3ECCF4();
  v117 = *(v8 - 8);
  v118 = v8;
  __chkstk_darwin(v8);
  v114 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for ModernPage();
  __chkstk_darwin(v116);
  v120 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v11);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v103 = &v101 - v15;
  __chkstk_darwin(v16);
  v106 = &v101 - v17;
  __chkstk_darwin(v18);
  v20 = &v101 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v21 - 8);
  v109 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v101 - v24;
  __chkstk_darwin(v26);
  v28 = &v101 - v27;
  v29 = type metadata accessor for ModernShelf();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v110 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v104 = &v101 - v33;
  __chkstk_darwin(v34);
  v36 = &v101 - v35;
  *&v134 = _swiftEmptyArrayStorage;
  *(&v134 + 1) = _swiftEmptyArrayStorage;
  v133 = 1;
  v112 = v2;
  v37 = v2 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_headerShelf;
  swift_beginAccess();
  v105 = v37;
  sub_FBD0(v37, v28, &unk_503DA0);
  v126 = *(v30 + 48);
  v38 = v126(v28, 1, v29);
  v111 = v11;
  v107 = v30;
  v108 = v29;
  if (v38 == 1)
  {
    sub_FCF8(v28, &unk_503DA0);
    v39 = _swiftEmptyArrayStorage;
  }

  else
  {
    v102 = v13;
    sub_F7928(v28, v36);
    sub_1F7368(v36, v20, type metadata accessor for ModernShelf);
    (*(v30 + 56))(v20, 0, 2, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v40 = v127;
    v39 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_E02FC((v41 > 1), v42 + 1, 1, v39);
    }

    sub_FCF8(v20, &qword_4F5978);
    sub_1F7308(v36, type metadata accessor for ModernShelf);
    v39[2] = v42 + 1;
    v39[v42 + 4] = v40;
    *(&v134 + 1) = v39;
    v13 = v102;
  }

  v43 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_highlightShelf;
  v44 = v112;
  swift_beginAccess();
  sub_FBD0(v44 + v43, v25, &unk_503DA0);
  v45 = v108;
  v46 = v126;
  if (v126(v25, 1, v108) == 1)
  {
    sub_FCF8(v25, &unk_503DA0);
  }

  else
  {
    v47 = v104;
    sub_F7928(v25, v104);
    v48 = v47;
    v49 = v106;
    sub_1F7368(v48, v106, type metadata accessor for ModernShelf);
    (*(v107 + 56))(v49, 0, 2, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v50 = v127;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_E02FC(0, v39[2] + 1, 1, v39);
    }

    v52 = v39[2];
    v51 = v39[3];
    if (v52 >= v51 >> 1)
    {
      v39 = sub_E02FC((v51 > 1), v52 + 1, 1, v39);
    }

    sub_FCF8(v106, &qword_4F5978);
    sub_1F7308(v104, type metadata accessor for ModernShelf);
    v39[2] = v52 + 1;
    v39[v52 + 4] = v50;
    *(&v134 + 1) = v39;
    v46 = v126;
  }

  v53 = v105;
  if (!v46(v105, 1, v45))
  {
    if (ModernShelf.ItemKind.rawValue.getter(*(v53 + *(v45 + 24))) == 0x486C656E6E616863 && v54 == 0xED00007265646165)
    {
    }

    else
    {
      v55 = sub_3EE804();
      v46 = v126;

      if ((v55 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v56 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_myShowsShelf;
    swift_beginAccess();
    v57 = v103;
    sub_FBD0(v44 + v56, v103, &qword_4F5978);
    ModernShelfListBuilder.addImportantShelf(_:)();
    v46 = v126;
    sub_FCF8(v57, &qword_4F5978);
  }

LABEL_19:
  v58 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeErrorShelf;
  swift_beginAccess();
  v59 = v44 + v58;
  v60 = v109;
  sub_FBD0(v59, v109, &unk_503DA0);
  if (v46(v60, 1, v45) == 1)
  {
    sub_FCF8(v60, &unk_503DA0);
    v61 = *(v44 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeShelves);
    v62 = *(&v134 + 1);
    sub_192B2C(v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v114;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v62 = sub_E02FC(0, v62[2] + 1, 1, v62);
    }

    v66 = v62[2];
    v65 = v62[3];
    if (v66 >= v65 >> 1)
    {
      v62 = sub_E02FC((v65 > 1), v66 + 1, 1, v62);
    }

    v62[2] = v66 + 1;
    v62[v66 + 4] = v61;
    *(&v134 + 1) = v62;
  }

  else
  {
    v67 = v60;
    v68 = v110;
    sub_F7928(v67, v110);
    sub_1F7368(v68, v13, type metadata accessor for ModernShelf);
    (*(v107 + 56))(v13, 0, 2, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v69 = v127;
    v70 = *(&v134 + 1);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v114;
    if ((v71 & 1) == 0)
    {
      v70 = sub_E02FC(0, v70[2] + 1, 1, v70);
    }

    v73 = v70[2];
    v72 = v70[3];
    if (v73 >= v72 >> 1)
    {
      v70 = sub_E02FC((v72 > 1), v73 + 1, 1, v70);
    }

    sub_FCF8(v13, &qword_4F5978);
    sub_1F7308(v110, type metadata accessor for ModernShelf);
    v70[2] = v73 + 1;
    v70[v73 + 4] = v69;
    *(&v134 + 1) = v70;
  }

  v74 = sub_3E8064();
  v75 = *(v44 + 80);
  v76 = v75[2];
  v127 = v74;
  *&v128 = v77;
  v142._countAndFlagsBits = 95;
  v142._object = 0xE100000000000000;
  sub_3ED3D4(v142);
  *&v135 = v76;
  sub_C2A70();
  v143._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v143);

  sub_3ECCE4();
  v78 = v75[2];
  v79 = sub_3E8064();
  v81 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66A8);
  inited = swift_initStackObject();
  v83 = inited;
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = 0x656C746974;
  v84 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  if (v75[4])
  {
    v85 = v75[3];
    v86 = v75[4];
  }

  else
  {
    v85 = 0;
    v86 = 0xE000000000000000;
  }

  *(inited + 48) = v85;
  *(inited + 56) = v86;

  v87 = sub_615E0(v83);
  swift_setDeallocating();
  sub_FCF8(v84, &qword_4F66B0);
  swift_getObjectType();
  v88 = HighlightsProviderProtocol.isSharedContent(_:)(v75[2], 0);
  v127 = v78;
  sub_17A28();
  v127 = sub_3EE1F4();
  *&v128 = v89;
  *(&v128 + 1) = v79;
  v129 = v81;
  v130 = v87;
  v131 = v88 & 1;
  v132 = 0;
  v90 = v115;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  v91 = v119;
  v92 = v121;
  (*(v119 + 16))(v113, v90, v121);
  v93 = v122;
  sub_3EC0C4();
  v141 = v135;
  sub_FCF8(&v141, &unk_4F8A10);
  v140 = v136;
  sub_FCF8(&v140, &qword_4E94E0);
  v139 = v137;
  sub_FCF8(&v139, &unk_4F8A20);
  sub_16AC0(v138);
  (*(v91 + 8))(v90, v92);

  LOBYTE(v127) = v133;
  v128 = v134;
  ModernShelfListBuilder.buildList()();
  v95 = v94;

  v96 = v120;
  (*(v117 + 32))(v120, v64, v118);
  v97 = v116;
  (*(v123 + 32))(v96 + *(v116 + 20), v93, v124);
  *(v96 + *(v97 + 24)) = v95;
  v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
  v99 = v125;
  sub_1F7368(v96, v125, type metadata accessor for ModernPage);
  LOBYTE(v95) = sub_3E66E4();
  sub_1F7308(v96, type metadata accessor for ModernPage);
  *(v99 + v98) = v95;
  type metadata accessor for PageContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1F4D0C(void *a1)
{
  v65 = a1;
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1 - 8);
  v69 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v3 - 8);
  v68 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v67 = &v55 - v6;
  v58 = type metadata accessor for Header(0);
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v18 - 8);
  v72 = &v55 - v19;
  v20 = type metadata accessor for ModernShelf();
  v63 = *(v20 - 8);
  v64 = v20;
  __chkstk_darwin(v20);
  v66 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() mainBundle];
  v54._countAndFlagsBits = 0xE000000000000000;
  v73._countAndFlagsBits = 0x53574F48535F594DLL;
  v73._object = 0xE800000000000000;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v23.super.isa = v22;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v71 = sub_3E5A74(v73, v74, v23, v75, v54);
  v57 = v24;

  v25 = type metadata accessor for ActionMenu(0);
  v56 = *(*(v25 - 8) + 56);
  v59 = v17;
  v56(v17, 1, 1, v25);
  v26 = type metadata accessor for Header.PrimaryAction(0);
  v27 = *(*(v26 - 8) + 56);
  v61 = v14;
  v27(v14, 1, 1, v26);
  v28 = sub_3E7784();
  v29 = *(*(v28 - 8) + 56);
  v60 = v11;
  v29(v11, 1, 1, v28);
  v8[32] = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v30 = v58;
  v55 = *(v58 + 28);
  v31 = v25;
  v32 = v71;
  v56(&v8[v55], 1, 1, v31);
  v33 = *(v30 + 32);
  v27(&v8[v33], 1, 1, v26);
  v34 = v30;
  v35 = *(v30 + 36);
  v29(&v8[v35], 1, 1, v28);
  v36 = v57;
  if (sub_3EE0E4())
  {
    *v8 = v32;
    *(v8 + 1) = v36;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    v8[32] = 0;

    sub_51F9C(v59, &v8[v55], &qword_4F1AB8);
    v37 = v61;
    sub_B8464(v61, &v8[v33], &qword_4F1AB0);
    sub_51F9C(v60, &v8[v35], &qword_4F1D50);
    v38 = v72;
    sub_1F7368(v8, v72, type metadata accessor for Header);
    (*(v62 + 56))(v38, 0, 1, v34);
    sub_FCF8(v37, &qword_4F1AB0);
    sub_1F7308(v8, type metadata accessor for Header);
  }

  else
  {
    sub_FCF8(v60, &qword_4F1D50);
    sub_FCF8(v59, &qword_4F1AB8);
    sub_FCF8(v61, &qword_4F1AB0);
    sub_1F7308(v8, type metadata accessor for Header);
    (*(v62 + 56))(v72, 1, 1, v34);
  }

  v65 = sub_77500(v65);
  v39 = sub_3E5DC4();
  v40 = *(*(v39 - 8) + 56);
  v41 = v67;
  v40(v67, 1, 1, v39);
  v42 = v64;
  v43 = v66;
  v44 = &v66[v64[12]];
  *(v44 + 4) = 0;
  *v44 = 0u;
  *(v44 + 1) = 0u;
  v45 = v42[13];
  sub_3E85C4();
  sub_3EC584();

  v46 = sub_3EC634();
  (*(*(v46 - 8) + 56))(&v43[v45], 0, 1, v46);
  v47 = v42[9];
  v48 = &v43[v42[8]];
  v40(&v43[v47], 1, 1, v39);
  *v43 = 0xD000000000000021;
  *(v43 + 1) = 0x800000000042A9F0;
  sub_FACC(v72, &v43[v42[5]], &qword_4F1AC0);
  v49 = &v43[v42[6]];
  *v49 = 283;
  *(v49 + 3) = 256;
  *(v49 + 2) = 0;
  *(v49 + 1) = 1;
  *&v43[v42[7]] = v65;
  sub_51F9C(v41, &v43[v47], &unk_4E9EE0);
  v43[v42[10]] = 1;
  v43[v42[11]] = 0;
  *v48 = 0;
  *(v48 + 1) = 0;
  v50 = v68;
  sub_1F7368(v43, v68, type metadata accessor for ModernShelf);
  (*(v63 + 56))(v50, 0, 2, v42);
  v51 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_myShowsShelf;
  v52 = v70;
  swift_beginAccess();
  sub_B8464(v50, v52 + v51, &qword_4F5978);
  swift_endAccess();
  swift_beginAccess();

  sub_1F3DDC(v69);
  sub_3E9D74();

  sub_FCF8(v50, &qword_4F5978);
  return sub_1F7308(v43, type metadata accessor for ModernShelf);
}

uint64_t sub_1F5690@<X0>(unint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71F8);
  sub_3E95D4();
  if (v8 >> 62)
  {
LABEL_17:
    v2 = sub_3EE5A4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v7 = a1;
      a1 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v3 = sub_3EE3F4();
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            a1 = v7;
            break;
          }
        }

        else
        {
          if (a1 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_17;
          }

          v3 = *(v8 + 8 * a1 + 32);

          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_14;
          }
        }

        v5 = *(v3 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed);
        if (v5 == 2 || (v5 & 1) == 0)
        {
        }

        else
        {
          sub_3EE494();
          sub_3EE4D4();
          sub_3EE4E4();
          sub_3EE4A4();
        }

        ++a1;
        if (v4 == v2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  *a1 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1F5814(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1 >> 62)
    {
      type metadata accessor for LegacyLockup();

      v3 = sub_3EE594();

      v1 = v3;
    }

    else
    {

      sub_3EE814();
      type metadata accessor for LegacyLockup();
    }

    sub_1F4D0C(v1);
  }

  return result;
}

uint64_t ChannelPresenter.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);

  v1 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter__storePage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_headerShelf, &unk_503DA0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeErrorShelf, &unk_503DA0);
  sub_192858(*(v0 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeShelves));
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_highlightShelf, &unk_503DA0);
  sub_1F7308(v0 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_interactionContextPage, &type metadata accessor for InteractionContext.Page);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_myShowsShelf, &qword_4F5978);
  return v0;
}

uint64_t ChannelPresenter.__deallocating_deinit()
{
  ChannelPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1F5AFC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_1F5B7C(unint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1F0BA0(v1);
  return sub_3E9EB4();
}

uint64_t sub_1F5BF8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v6 - 8);
  v131 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72C0);
  v125 = *(v8 - 8);
  v126 = v8;
  __chkstk_darwin(v8);
  v124 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F92D0);
  v128 = *(v10 - 8);
  v129 = v10;
  __chkstk_darwin(v10);
  v127 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F92D8);
  v132 = *(v12 - 8);
  v133 = v12;
  __chkstk_darwin(v12);
  v130 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v14 - 8);
  v121 = &v99 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v16 - 8);
  v120 = &v99 - v17;
  v117 = sub_3E5FC4();
  v116 = *(v117 - 1);
  __chkstk_darwin(v117);
  v115 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v19 - 8);
  v118 = &v99 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v21 - 8);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v122 = &v99 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8AD0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v99 - v28;
  v30 = type metadata accessor for PageContent();
  __chkstk_darwin(v30);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a2;
  *(v3 + 144) = _swiftEmptyArrayStorage;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  v123 = v3 + 152;
  *v32 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  v119 = v32;
  *(v3 + 160) = sub_3E9D94();
  *v135 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  *(v3 + 168) = sub_3E9D94();
  memset(v135, 0, sizeof(v135));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v3 + 176) = sub_3E9D94();
  v34 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter__storePage;
  type metadata accessor for Page();
  sub_3E9554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8C68);
  sub_3E9E64();
  (*(v27 + 32))(v3 + v34, v29, v26);
  v35 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_headerShelf;
  v36 = type metadata accessor for ModernShelf();
  v37 = *(v36 - 1);
  v38 = *(v37 + 56);
  v39 = v37 + 56;
  v38(v3 + v35, 1, 1, v36);
  v38(v3 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeErrorShelf, 1, 1, v36);
  v40 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_storeShelves;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9554();
  *(v3 + v40) = *v135;
  v38(v3 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_highlightShelf, 1, 1, v36);
  sub_3E9554();
  *(v3 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);

  sub_3EC394();
  *(v3 + 24) = *v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3EC394();
  sub_1D4F0(v135, v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7298);
  sub_3EC394();
  sub_1D4F0(v135, v3 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB30);
  sub_3EC394();
  *(v3 + 88) = *v135;
  *(v3 + 80) = v33;
  v41 = v3 + OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_interactionContextPage;
  v42 = *(v33 + 16);
  *v41 = v42;
  *(v41 + 8) = 0;
  sub_3E63E4();
  swift_storeEnumTagMultiPayload();
  v43 = *(v33 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
  if (v43 < 1)
  {
    if (*(v33 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) > 1)
    {
      goto LABEL_3;
    }
  }

  else if (v43 > 1)
  {
LABEL_3:
    v44 = *(v33 + 32);
    v113 = v3 + 160;
    v112 = v38;
    v111 = v39;
    v107 = v42;
    v101 = v44;
    v45 = v23;
    if (v44)
    {
      v106 = *(v33 + 24);
      v105 = v44;
    }

    else
    {
      v106 = 0;
      v105 = 0xE000000000000000;
    }

    v48 = *(v33 + 48);
    v104 = *(v33 + 40);
    sub_FBD0(v33 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_uberArtwork, v122, &qword_4F1D50);
    v100 = *(v33 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor);
    v49 = v100;
    v50 = *(v33 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor + 8);
    sub_FBD0(v33 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_logoArtwork, v45, &qword_4F1D50);
    type metadata accessor for HeaderModel.PrimaryArtwork();
    v51 = swift_allocObject();
    *(v51 + 16) = 1;
    sub_FACC(v45, v51 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, &qword_4F1D50);
    v103 = *(v33 + 56);
    v109 = sub_3EC634();
    v52 = *(v109 - 8);
    v108 = *(v52 + 56);
    v110 = v52 + 56;
    v53 = v118;
    v108(v118, 1, 1, v109);
    v102 = type metadata accessor for ChannelHeader();
    v54 = objc_allocWithZone(v102);

    v114 = v33;

    sub_1F7418(v49, v50);
    v55 = v115;
    sub_3E5FB4();
    v56 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v58 = v57;
    (*(v116 + 8))(v55, v117);
    v59 = &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_shelfUniqueId];
    *v59 = v56;
    v59[1] = v58;
    v60 = &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_title];
    v61 = v105;
    *v60 = v106;
    v60[1] = v61;
    *&v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_adamID] = v107;
    v62 = &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_subtitle];
    *v62 = v104;
    v62[1] = v48;
    v63 = &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelDescription];
    *v63 = 0;
    v63[1] = 0;
    v64 = &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelTagline];
    *v64 = 0;
    v64[1] = 0;
    *&v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_primaryArtwork] = v51;
    v65 = v122;
    sub_FBD0(v122, &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundArtwork], &qword_4F1D50);
    v66 = &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundColor];
    *v66 = v100;
    v66[8] = v50;
    v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_interfaceStyle] = 0;
    v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerType] = v103;
    v67 = &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerDescription];
    *v67 = 0;
    v67[1] = 0;
    *&v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_banner] = 0;
    sub_FBD0(v53, &v54[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_impressionMetrics], &unk_4E9170);
    v68 = v102;
    v134.receiver = v54;
    v134.super_class = v102;
    v69 = objc_msgSendSuper2(&v134, "init");
    v117 = v69;
    sub_FCF8(v53, &unk_4E9170);
    sub_FCF8(v65, &qword_4F1D50);
    v70 = v36[5];
    v71 = type metadata accessor for Header(0);
    v72 = v120;
    (*(*(v71 - 8) + 56))(&v120[v70], 1, 1, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_3F5630;
    *(v73 + 56) = v68;
    *(v73 + 64) = sub_1F6F44(&qword_4F92F0, type metadata accessor for ChannelHeader);
    *(v73 + 32) = v69;
    v74 = sub_3E5DC4();
    v75 = *(*(v74 - 8) + 56);
    v76 = v121;
    v75(v121, 1, 1, v74);
    v77 = v72 + v36[12];
    *(v77 + 32) = 0;
    *v77 = 0u;
    *(v77 + 16) = 0u;
    v108((v72 + v36[13]), 1, 1, v109);
    v78 = v36[9];
    v79 = (v72 + v36[8]);
    v75((v72 + v78), 1, 1, v74);
    strcpy(v72, "channelHeader");
    *(v72 + 14) = -4864;
    v80 = v72 + v36[6];
    *v80 = 51;
    *(v80 + 6) = 256;
    *(v80 + 2) = 0;
    *(v80 + 8) = 1;
    *(v72 + v36[7]) = v73;
    v81 = v117;
    sub_51F9C(v76, v72 + v78, &unk_4E9EE0);
    *(v72 + v36[10]) = 1;
    *(v72 + v36[11]) = 0;
    *v79 = 0;
    v79[1] = 0;
    v112(v72, 0, 1, v36);
    v82 = OBJC_IVAR____TtC8ShelfKit16ChannelPresenter_headerShelf;
    swift_beginAccess();
    sub_51F9C(v72, v3 + v82, &unk_503DA0);
    swift_endAccess();
    v83 = *(v3 + 80);
    v84 = *(v83 + 32);
    if (v84)
    {
      v85 = *(v83 + 24);
      v86 = v84;
    }

    else
    {
      v85 = 0;
      v86 = 0xE000000000000000;
    }

    *v135 = v85;
    *&v135[8] = v86;
    *&v135[16] = 0;
    v135[20] = 96;

    sub_3E9D74();
    swift_beginAccess();

    sub_1F3DDC(v119);
    sub_3E9D74();

    v33 = v114;
    goto LABEL_15;
  }

  if (*(v33 + 32))
  {
    v46 = *(v33 + 24);
    v47 = *(v33 + 32);
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
  }

  *v135 = v46;
  *&v135[8] = v47;
  v135[20] = 96;
  *&v135[16] = 4;

  sub_3E9D74();
LABEL_15:
  __swift_project_boxed_opaque_existential_1((v3 + 104), *(v3 + 128));
  v87 = v124;
  sub_3E9244();
  sub_886BC(&qword_4F72E0, &qword_4F72C0);
  v88 = v126;
  v89 = v127;
  sub_3EA144();
  (*(v125 + 8))(v87, v88);
  sub_36174(0, &qword_4F10B0);
  v90 = sub_3EDBC4();
  *v135 = v90;
  v91 = sub_3EDB64();
  v92 = v131;
  (*(*(v91 - 8) + 56))(v131, 1, 1, v91);
  sub_886BC(&qword_4F92E0, &qword_4F92D0);
  sub_87870();
  v94 = v129;
  v93 = v130;
  sub_3EA114();
  sub_FCF8(v92, &qword_4F69E0);

  (*(v128 + 8))(v89, v94);
  v95 = swift_allocObject();
  swift_weakInit();
  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  *(v96 + 24) = v33;
  sub_886BC(&qword_4F92E8, &qword_4F92D8);
  v97 = v133;
  sub_3EA1A4();

  (*(v132 + 8))(v93, v97);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  return v3;
}

uint64_t sub_1F6E0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F6E4C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1F6EEC(uint64_t a1)
{
  result = sub_1F6F44(&qword_4F9168, type metadata accessor for ChannelPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1F6F44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ChannelPresenter()
{
  result = qword_4F91A0;
  if (!qword_4F91A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1F7028()
{
  sub_1F093C();
  if (v0 <= 0x3F)
  {
    sub_1F7218(319, &qword_4F5FD0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_3E63E4();
      if (v2 <= 0x3F)
      {
        sub_1F7218(319, &unk_4F91B0, &type metadata accessor for Loadable);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1F7218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ModernShelf();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1F72A8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8C68);
  result = sub_3E9514();
  *a1 = v3;
  return result;
}

uint64_t sub_1F7308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1F7368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F73D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1F7418(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1F742C(result, a2);
  }

  return result;
}

id sub_1F742C(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

uint64_t HighlightsPresenter.__allocating_init(asPartOf:with:)()
{
  swift_allocObject();
  v0 = sub_1F7B5C();

  return v0;
}

uint64_t HighlightsPresenter.init(asPartOf:with:)()
{
  v0 = sub_1F7B5C();

  return v0;
}

uint64_t HighlightsPresenter.interactionContextPage.getter()
{
  sub_3E63E4();

  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall HighlightsPresenter.viewDidLoad()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F92F8);
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v18 - v5;
  v7 = [objc_opt_self() mainBundle];
  v17._countAndFlagsBits = 0xE000000000000000;
  v25._object = 0x800000000042AA20;
  v25._countAndFlagsBits = 0xD000000000000015;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v8.super.isa = v7;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v9 = sub_3E5A74(v25, v26, v8, v27, v17);
  v11 = v10;

  v20 = v9;
  v21 = v11;
  v23 = 32;
  v22 = 0;
  sub_3E9D44();

  v12 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v20 = (*(v12 + 16))(ObjectType, v12);
  sub_801B4();
  v14 = sub_3EDBC4();
  v24 = v14;
  v15 = sub_3EDB64();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9300);
  sub_886BC(&qword_4F9308, &qword_4F9300);
  sub_1F7DC8(&qword_4F1D30, 255, sub_801B4);
  sub_3EA114();
  sub_1F7C94(v3);

  sub_886BC(&qword_4F9310, &qword_4F92F8);

  v16 = v19;
  sub_3EA1A4();

  (*(v4 + 8))(v6, v16);
  swift_beginAccess();
  sub_3E9C84();
  swift_endAccess();
}

uint64_t sub_1F78B0(uint64_t *a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModernPage();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_3E8024();
  v12 = v11;
  v13 = sub_3E7A64();
  v15 = v14;
  v21[1] = v10;
  v21[2] = v12;
  v22._countAndFlagsBits = 95;
  v22._object = 0xE100000000000000;
  sub_3ED3D4(v22);
  v23._countAndFlagsBits = v13;
  v23._object = v15;
  sub_3ED3D4(v23);

  sub_3ECCE4();
  v16 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v17 = *(v6 + 28);
  v18 = sub_3EC164();
  (*(*(v18 - 8) + 16))(&v8[v17], v9 + v16, v18);
  *&v8[*(v6 + 32)] = Page.modernShelves.getter();
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
  sub_1F7E3C(v8, v4);
  v4[v19] = sub_3E66E4();
  swift_storeEnumTagMultiPayload();
  sub_3E9D44();
  sub_1F7EA0(v4, type metadata accessor for PageContent);
  return sub_1F7EA0(v8, type metadata accessor for ModernPage);
}

uint64_t HighlightsPresenter.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t HighlightsPresenter.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1F7B5C()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1);
  *(v0 + 16) = &_swiftEmptySetSingleton;
  *(v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0)) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v0 + 40) = sub_3E9D94();
  memset(v4, 0, 21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v0 + 48) = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB30);
  sub_3EC394();
  *(v0 + 24) = v4[0];
  return v0;
}

uint64_t sub_1F7C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F7D04(uint64_t a1, uint64_t a2)
{
  result = sub_1F7DC8(&qword_4F93F8, a2, type metadata accessor for HighlightsPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1F7DC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1F7E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernPage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F7EA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ModernStationDetailPresenter.pageContent.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

void *HomePagePresenter.__allocating_init(asPartOf:with:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1F8E30(a1);

  return v2;
}

void *HomePagePresenter.init(asPartOf:with:)(uint64_t a1)
{
  v1 = sub_1F8E30(a1);

  return v1;
}

uint64_t sub_1F805C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = a4;
  v15 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F96D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v17 = *(*(a1 + 32) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  sub_886BC(&qword_4F7F60, &qword_4F8830);
  sub_3EA074();

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v12 = v15;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(v11 + 32) = v16;
  *(v11 + 40) = v10;
  sub_886BC(&qword_4F96D8, &qword_4F96D0);
  sub_3EA1A4();

  (*(v7 + 8))(v9, v6);
  v13 = *(a1 + 40);
  os_unfair_lock_lock(v13 + 6);
  sub_1F96C0();
  os_unfair_lock_unlock(v13 + 6);
}

Swift::Void __swiftcall HomePagePresenter.viewDidLoad()()
{
  HomePagePresenter.observeFreezableContentState()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
  sub_886BC(&qword_4F94C8, &qword_4F94C0);
  sub_3EA1A4();

  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1 + 6);
  sub_1A037C();
  os_unfair_lock_unlock(v1 + 6);
}

Swift::Void __swiftcall HomePagePresenter.observeFreezableContentState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  v6[1] = *(v0 + 24);
  type metadata accessor for FreezableContentSubject();
  sub_1F9480(&qword_4F94D8, type metadata accessor for FreezableContentSubject);
  sub_1F9300();
  sub_3EA174();
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F94E8, &qword_4F94D0);
  sub_3EA1A4();

  (*(v2 + 8))(v4, v1);
  v5 = *(v0 + 40);
  os_unfair_lock_lock(v5 + 6);
  sub_1F96C0();
  os_unfair_lock_unlock(v5 + 6);
}

Swift::Void __swiftcall HomePagePresenter.viewDidDisappear()()
{
  v1 = type metadata accessor for PageContent();
  __chkstk_darwin(v1 - 8);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(v0 + 32);
  if (*(v4 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_loadedStoreShelves))
  {
    v5 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_blockingStoreShelvesUpdatesForLaunch;
    if (*(v4 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_blockingStoreShelvesUpdatesForLaunch) == 1)
    {
      v7 = *(v4 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_loadedStoreShelves);
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F28);
      sub_3E8A04();
      swift_endAccess();
      sub_190668(v3);
      sub_3E9D74();
      *(v4 + v5) = 0;
    }
  }

  FreezableContentSubject.send(_:)(ShelfKit_FreezableContentSubject_State_unfrozen);
}

uint64_t sub_1F872C(_BYTE *a1)
{
  if (*a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = result;
    swift_beginAccess();
    *(v2 + 24) = 0;
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = result;
    swift_beginAccess();
    *(v2 + 24) = 1;
  }

  v3 = OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue;
  if (!*(v2 + OBJC_IVAR____TtC8ShelfKit16HomePageProvider_upNextEpisodesQueue))
  {
  }

  sub_185E9C(v4);

  *(v2 + v3) = 0;
}

uint64_t HomePagePresenter.deinit()
{

  sub_1F9660(v0 + OBJC_IVAR____TtC8ShelfKit17HomePagePresenter_interactionContextPage, &type metadata accessor for InteractionContext.Page);
  return v0;
}

uint64_t HomePagePresenter.__deallocating_deinit()
{
  HomePagePresenter.deinit();

  return swift_deallocClassInstance();
}

BOOL sub_1F8948()
{
  sub_1842EC(v3);
  ModernShelfListBuilder.areAnyImportantShelvesStillLoading.getter();
  v1 = v0;

  return (v1 & 1) == 0;
}

uint64_t sub_1F89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v31 = a1;
  v5 = sub_3E65B4();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageContent();
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E97B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EDC74();
  sub_3B590();
  v14 = sub_3EE074();
  sub_3E97A4();
  sub_3E9774();

  (*(v11 + 8))(v13, v10);
  sub_1F95F8(v31, v9, type metadata accessor for PageContent);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();

        v20 = v27;
        v19 = v28;
        v21 = v29;
        (*(v28 + 104))(v27, enum case for ExtendedLaunchStatus.contentMissingError(_:), v29);
        sub_3E9D44();

        (*(v19 + 8))(v20, v21);
      }

      v22 = type metadata accessor for PageContent;
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();

        v24 = v27;
        v23 = v28;
        v25 = v29;
        (*(v28 + 104))(v27, enum case for ExtendedLaunchStatus.finishedLoading(_:), v29);
        sub_3E9D44();

        (*(v23 + 8))(v24, v25);
      }

      v22 = type metadata accessor for ModernPage;
    }

    return sub_1F9660(v9, v22);
  }

  else if (result)
  {
    sub_1F9660(v9, type metadata accessor for PageContent);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();

      v17 = v27;
      v16 = v28;
      v18 = v29;
      (*(v28 + 104))(v27, enum case for ExtendedLaunchStatus.contentError(_:), v29);
      sub_3E9D44();

      return (*(v16 + 8))(v17, v18);
    }
  }

  return result;
}

void *sub_1F8E30(uint64_t a1)
{
  v2 = v1;
  v24 = sub_3E97B4();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E65B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_swiftEmptyArrayStorage >> 62 && sub_3EE5A4())
  {
    v11 = sub_35A58(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6430);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v2[5] = v12;
  v13 = [objc_opt_self() mainBundle];
  v23._countAndFlagsBits = 0xE400000000000000;
  v29._countAndFlagsBits = 0x4F485F454C544954;
  v29._object = 0xEA0000000000454DLL;
  v30.value._countAndFlagsBits = 0;
  v30.value._object = 0;
  v14.super.isa = v13;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v15 = sub_3E5A74(v29, v30, v14, v31, v23);
  v17 = v16;

  v25 = v15;
  v26 = v17;
  v28 = -96;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  v2[6] = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
  v18 = *(type metadata accessor for HeaderButtonItem() - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_3F5630;
  *(v20 + v19) = _UISolariumEnabled();
  swift_storeEnumTagMultiPayload();
  v25 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  v2[7] = sub_3E9D94();
  LOBYTE(v25) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
  swift_allocObject();
  v2[8] = sub_3E9D94();
  (*(v8 + 104))(v10, enum case for ExtendedLaunchStatus.loading(_:), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5598);
  swift_allocObject();
  v2[9] = sub_3E9D94();
  sub_3E63E4();
  swift_storeEnumTagMultiPayload();
  sub_3EDC84();
  sub_3B590();
  v21 = sub_3EE074();
  sub_3E97A4();
  sub_3E9774();

  (*(v4 + 8))(v6, v24);
  v2[2] = a1;
  type metadata accessor for FreezableContentSubject();

  sub_3EC394();
  v2[3] = v25;
  type metadata accessor for HomePageProvider();
  sub_3EC394();
  v2[4] = v25;
  sub_1F805C(v2, "HomePagePresenter.firstLoad", 27, 2);
  return v2;
}

void sub_1F92E8(_BYTE *a1)
{
  if (*a1 == 2)
  {
    FreezableContentSubject.send(_:)(ShelfKit_FreezableContentSubject_State_unfrozen);
  }
}

unint64_t sub_1F9300()
{
  result = qword_4F94E0;
  if (!qword_4F94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F94E0);
  }

  return result;
}

uint64_t sub_1F9354()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F9394(uint64_t a1)
{
  result = sub_1F9480(&qword_4F95D0, type metadata accessor for HomePagePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for HomePagePresenter()
{
  result = qword_4F9608;
  if (!qword_4F9608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F9480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1F94D0()
{
  result = sub_3E63E4();
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

uint64_t sub_1F95B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1F95F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F9660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ModernStationDetailPresenter.isEditing.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t DummyLibraryActionController.metricsController.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t LibraryPresenter.hasLoadedContent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_hasLoadedContent;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1F9978()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5740);
  __chkstk_darwin(v1 - 8);
  v48 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5388);
  __chkstk_darwin(v3 - 8);
  v50 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v40 - v8;
  v9 = type metadata accessor for HeaderButtonItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v40 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  v46 = xmmword_3F5630;
  *(v17 + 16) = xmmword_3F5630;
  *(v17 + v16) = 1;
  swift_storeEnumTagMultiPayload();
  v18 = *(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_isLibraryEmpty);
  if (v18 == 2 || (v18 & 1) != 0)
  {
    swift_beginAccess();
    v53 = v17;

    sub_3E9D44();
  }

  else
  {
    sub_3E9D64();
    if (v52 == 1)
    {

      v20 = swift_allocObject();
      swift_weakInit();
      *v15 = sub_20848C;
      v15[1] = v20;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v21 = swift_allocObject();
      *(v21 + 16) = v46;
      sub_208584(v15, v21 + v16, type metadata accessor for HeaderButtonItem);
      v53 = v21;

      sub_3E9D44();

      return sub_2085EC(v15, type metadata accessor for HeaderButtonItem);
    }

    else
    {
      v22 = v49;
      sub_3E7774();
      v44 = sub_3E7784();
      v23 = *(v44 - 8);
      v43 = *(v23 + 56);
      v45 = v23 + 56;
      v43(v22, 0, 1, v44);
      if (_UISolariumEnabled())
      {
        v24 = 0;
      }

      else
      {
        v24 = 2;
      }

      LODWORD(v46) = v24;
      v25 = sub_3E6AC4();
      (*(*(v25 - 8) + 56))(v50, 1, 1, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
      v26 = *(type metadata accessor for ActionMenu.Child(0) - 8);
      v27 = *(v26 + 72);
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_3F5300;
      sub_1FF974((v29 + v28));
      sub_1FFC60((v29 + v28 + v27));
      sub_1FFEF8((v29 + v28 + 2 * v27));
      v30 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v32 = v31;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
      v34 = v33[16];
      v40 = v33[12];
      v41 = v34;
      v42 = v33[20];
      v35 = v47;
      sub_FACC(v49, v47, &qword_4F1D50);
      v36 = type metadata accessor for ActionMenu(0);
      v37 = *(v36 + 28);
      v43(v12 + v37, 1, 1, v44);
      *v12 = v30;
      v12[1] = v32;
      v12[2] = 0;
      v12[3] = 0xE000000000000000;
      v12[4] = 0;
      v12[5] = 0;
      sub_51F9C(v35, v12 + v37, &qword_4F1D50);
      *(v12 + *(v36 + 32)) = v29;
      *(v12 + v40) = v46;
      sub_FACC(v50, v12 + v41, &qword_4F5388);
      *(v12 + v42) = 0;
      swift_storeEnumTagMultiPayload();
      v38 = v48;
      sub_208584(v12, v48, type metadata accessor for HeaderButtonItem);
      v53 = v17;
      v39 = *(v17 + 16);
      if (v39 >= *(v17 + 24) >> 1)
      {
        v17 = sub_E0860(1uLL, v39 + 1, 1, v17);
        v53 = v17;
      }

      sub_17C7B8(0, 0, 1, v38);
      swift_beginAccess();
      v51 = v17;

      sub_3E9D44();

      return sub_2085EC(v12, type metadata accessor for HeaderButtonItem);
    }
  }
}

uint64_t LibraryPresenter.reorderingExtension.getter@<X0>(uint64_t (**a1)(uint64_t a1, uint64_t *a2)@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension);
  v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension + 8);
  v7 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension + 16);
  v8 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension + 24);
  v9 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension + 32);
  v10 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension + 40);
  if (v4 == 1)
  {
    v6 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = *v3;
    v5 = sub_1FA430;
    *v3 = sub_1FA430;
    v3[1] = v6;
    v7 = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
    v3[2] = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
    v3[3] = 0;
    v9 = sub_1FA4AC;
    v3[4] = sub_1FA4AC;
    v3[5] = v10;

    sub_1FA4B4(v11);
    v8 = 0;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;

  return sub_1FA514(v4);
}

uint64_t sub_1FA218()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1FA250(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = (*a2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension);
  v9 = *v8;
  *v8 = *a1;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  sub_1FA524(v2);

  return sub_1FA4B4(v9);
}

uint64_t LibraryPresenter.reorderingExtension.setter(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension);
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension);
  v4 = a1[1];
  *v2 = *a1;
  v2[1] = v4;
  v2[2] = a1[2];
  return sub_1FA4B4(v3);
}

uint64_t sub_1FA314(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_3E9D64();
    if (v7 == 1)
    {
      v3 = *a2;
      v4 = a2[1];
      if (v3 == 0xD000000000000029 && 0x800000000042AD90 == v4 || (sub_3EE804() & 1) != 0 || v3 == 0xD000000000000026 && 0x800000000042ADC0 == v4)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_3EE804();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1FA438(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1FA574(a1, a2);
  }

  return result;
}

uint64_t sub_1FA4B4(uint64_t result)
{
  if (result != 1)
  {
    return sub_1FA4C4(result);
  }

  return result;
}

uint64_t sub_1FA4C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1FA514(uint64_t result)
{
  if (result != 1)
  {
    return sub_1FA524(result);
  }

  return result;
}

uint64_t sub_1FA524(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1FA574(uint64_t *a1, void *a2)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = v79 - v4;
  v83 = type metadata accessor for LazyJSFlowDestination(0);
  __chkstk_darwin(v83);
  v82 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for FlowAction.DestinationType(0);
  __chkstk_darwin(v89);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A50);
  __chkstk_darwin(v9 - 8);
  v88 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v87 = v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A48);
  __chkstk_darwin(v13 - 8);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v79 - v17;
  v19 = type metadata accessor for Link();
  v86 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v90 = v79 - v23;
  __chkstk_darwin(v24);
  v26 = v79 - v25;
  v28 = *a1;
  v27 = a1[1];
  if (*a1 == 0xD000000000000029 && 0x800000000042AD90 == v27 || (sub_3EE804() & 1) != 0)
  {
    v84 = v8;
    v81 = v5;
    v29 = v91[2];
    if (v29)
    {
      v30 = v91 + 4;
      v31 = v86;
      v32 = (v86 + 56);
      v33 = (v86 + 48);
      v91 = _swiftEmptyArrayStorage;
      do
      {
        sub_1F958(v30, &v94);
        sub_1D4F0(&v94, v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
        v34 = swift_dynamicCast();
        (*v32)(v18, v34 ^ 1u, 1, v19);
        if ((*v33)(v18, 1, v19) == 1)
        {
          sub_FCF8(v18, &qword_4F9A48);
        }

        else
        {
          sub_20864C(v18, v90, type metadata accessor for Link);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v35 = v91;
          }

          else
          {
            v35 = sub_E08B0(0, v91[2] + 1, 1, v91);
          }

          v37 = v35[2];
          v36 = v35[3];
          if (v37 >= v36 >> 1)
          {
            v35 = sub_E08B0(v36 > 1, v37 + 1, 1, v35);
          }

          v35[2] = v37 + 1;
          v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v91 = v35;
          sub_20864C(v90, v35 + v38 + *(v31 + 72) * v37, type metadata accessor for Link);
        }

        v30 += 5;
        --v29;
      }

      while (v29);
    }

    else
    {
      v91 = _swiftEmptyArrayStorage;
      v31 = v86;
    }

    *v93 = _swiftEmptyArrayStorage;
    v39 = v91[2];
    if (v39)
    {
      v40 = *(v19 + 36);
      v41 = v91 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v90 = _swiftEmptyArrayStorage;
      v42 = *(v31 + 72);
      v86 = v40;
      do
      {
        sub_208584(v41, v26, type metadata accessor for Link);
        sub_FBD0(&v26[v40], &v94, &qword_4EDE00);
        sub_2085EC(v26, type metadata accessor for Link);
        if (v95)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
          type metadata accessor for FlowAction(0);
          if ((swift_dynamicCast() & 1) != 0 && v92)
          {
            sub_3ED564();
            if (*(&dword_10 + (*v93 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v93 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_3ED5A4();
            }

            sub_3ED604();
            v90 = *v93;
            v40 = v86;
          }
        }

        else
        {
          sub_FCF8(&v94, &qword_4EDE00);
        }

        v41 += v42;
        --v39;
      }

      while (v39);
    }

    else
    {

      v90 = _swiftEmptyArrayStorage;
    }

    v43 = v84;
    if (v90 >> 62)
    {
LABEL_69:
      v86 = v90 & 0xFFFFFFFFFFFFFF8;
      v91 = sub_3EE5A4();
      if (v91)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v86 = v90 & 0xFFFFFFFFFFFFFF8;
      v91 = *(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8));
      if (v91)
      {
LABEL_30:
        v44 = 0;
        v85 = v90 & 0xC000000000000001;
        v80 = _swiftEmptyArrayStorage;
        while (1)
        {
          v45 = v44;
          while (1)
          {
            if (v85)
            {
              v46 = sub_3EE3F4();
              v47 = (v45 + 1);
              if (__OFADD__(v45, 1))
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (v45 >= *(v86 + 16))
              {
                goto LABEL_68;
              }

              v46 = *(v90 + 8 * v45 + 32);

              v47 = (v45 + 1);
              if (__OFADD__(v45, 1))
              {
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
                goto LABEL_69;
              }
            }

            sub_208584(v46 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, v43, type metadata accessor for FlowAction.DestinationType);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v48 = v43;
              v49 = v82;
              sub_20864C(v48, v82, type metadata accessor for LazyJSFlowDestination);
              v50 = v83;
              v51 = *v49;
              v52 = v81;
              sub_FBD0(&v49[*(v83 + 20)], v81, &unk_4E9EE0);
              sub_FBD0(&v49[*(v50 + 24)], &v94, &unk_501090);
              v93[0] = v49[*(v50 + 28)];
              v53 = v51;
              v54 = v88;
              sub_1B324(v53, v52, &v94, v93, v88);

              v55 = v49;
              v43 = v84;
              sub_2085EC(v55, type metadata accessor for LazyJSFlowDestination);
            }

            else
            {

              v54 = v88;
              sub_20864C(v43, v88, type metadata accessor for FlowDestination);
              v56 = type metadata accessor for FlowDestination();
              (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
            }

            v57 = v87;
            sub_FACC(v54, v87, &qword_4F9A50);
            v58 = type metadata accessor for FlowDestination();
            if ((*(*(v58 - 8) + 48))(v57, 1, v58) != 1)
            {
              break;
            }

            sub_FCF8(v57, &qword_4F9A50);
LABEL_33:
            ++v45;
            if (v47 == v91)
            {
              goto LABEL_71;
            }
          }

          if (swift_getEnumCaseMultiPayload() != 13)
          {
            break;
          }

          v59 = *v57;
          v61 = *(*v57 + 16);
          v60 = *(v59 + 24);

          v44 = v47;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_DFAE8(0, *(v80 + 2) + 1, 1, v80);
          }

          v63 = *(v80 + 2);
          v62 = *(v80 + 3);
          if (v63 >= v62 >> 1)
          {
            v80 = sub_DFAE8((v62 > 1), v63 + 1, 1, v80);
          }

          v64 = v80;
          *(v80 + 2) = v63 + 1;
          v65 = &v64[16 * v63];
          *(v65 + 4) = v61;
          *(v65 + 5) = v60;
          if (v47 == v91)
          {
LABEL_71:

            v75 = *(v79[1] + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryDataProvider + 8);
            ObjectType = swift_getObjectType();
            (*(v75 + 16))(&v94, ObjectType, v75);
            v77 = v95;
            v78 = v96;
            __swift_project_boxed_opaque_existential_1(&v94, v95);
            (*(v78 + 208))(v80, v77, v78);

            return __swift_destroy_boxed_opaque_existential_1Tm(&v94);
          }
        }

        sub_2085EC(v57, type metadata accessor for FlowDestination);
        goto LABEL_33;
      }
    }

    v80 = _swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  if (v28 == 0xD000000000000026 && 0x800000000042ADC0 == v27 || (result = sub_3EE804(), (result & 1) != 0))
  {
    v67 = v91[2];
    if (v67)
    {
      v68 = v91 + 4;
      v69 = (v86 + 56);
      v70 = (v86 + 48);
      v71 = _swiftEmptyArrayStorage;
      do
      {
        sub_1F958(v68, &v94);
        sub_1D4F0(&v94, v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
        v72 = swift_dynamicCast();
        (*v69)(v15, v72 ^ 1u, 1, v19);
        if ((*v70)(v15, 1, v19) == 1)
        {
          sub_FCF8(v15, &qword_4F9A48);
        }

        else
        {
          sub_20864C(v15, v21, type metadata accessor for Link);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_E08B0(0, v71[2] + 1, 1, v71);
          }

          v74 = v71[2];
          v73 = v71[3];
          if (v74 >= v73 >> 1)
          {
            v71 = sub_E08B0(v73 > 1, v74 + 1, 1, v71);
          }

          v71[2] = v74 + 1;
          sub_20864C(v21, v71 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v74, type metadata accessor for Link);
        }

        v68 += 5;
        --v67;
      }

      while (v67);
    }

    else
    {
      v71 = _swiftEmptyArrayStorage;
    }

    sub_206570(v71);
  }

  return result;
}

void (*LibraryPresenter.reorderingExtension.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  LibraryPresenter.reorderingExtension.getter(v3);
  return sub_1FB2E4;
}

void sub_1FB2E4(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = (*a1)[6];
  v6 = **a1;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = (v5 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension);
  v12 = *v11;
  *v11 = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;
  v11[5] = v4;
  if (a2)
  {
    sub_1FA524(v6);
    sub_1FA4B4(v12);
    sub_1FA4C4(*v3);
  }

  else
  {
    sub_1FA4B4(v12);
  }

  free(v3);
}

uint64_t LibraryPresenter.deletableExtension.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___deletableExtension);
  v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___deletableExtension);
  v5 = v4;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  if (v4 == 1)
  {
    v6 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = *v3;
    v5 = sub_1FB638;
    *v3 = sub_1FB638;
    v3[1] = v6;
    v7 = sub_1FB640;
    v3[2] = sub_1FB640;
    v3[3] = v8;

    sub_1FB670(v9);
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;

  return sub_1FB6C4(v4);
}

uint64_t sub_1FB508(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___deletableExtension);
  v7 = *v6;
  *v6 = *a1;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1FB6D4(v2);

  return sub_1FB670(v7);
}

uint64_t LibraryPresenter.deletableExtension.setter(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___deletableExtension);
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___deletableExtension);
  v4 = a1[1];
  *v2 = *a1;
  v2[1] = v4;
  return sub_1FB670(v3);
}

uint64_t sub_1FB5A4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    if (*a2 == 0xD000000000000029 && 0x800000000042AD90 == a2[1])
    {
      LOBYTE(Strong) = 1;
    }

    else
    {
      LOBYTE(Strong) = sub_3EE804();
    }
  }

  return Strong & 1;
}

uint64_t sub_1FB670(uint64_t result)
{
  if (result != 1)
  {
    return sub_1FB680(result);
  }

  return result;
}

uint64_t sub_1FB680(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1FB6C4(uint64_t result)
{
  if (result != 1)
  {
    return sub_1FB6D4(result);
  }

  return result;
}

uint64_t sub_1FB6D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1FB718(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AlertSheetAction();
  __chkstk_darwin(v4 - 8);
  v6 = (&v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A50);
  __chkstk_darwin(v7 - 8);
  v9 = (&v26[-1] - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A48);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-1] - v11;
  v13 = type metadata accessor for Link();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F958(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if ((v17 & 1) == 0)
  {
    v18(v12, 1, 1, v13);
    return sub_FCF8(v12, &qword_4F9A48);
  }

  v18(v12, 0, 1, v13);
  sub_20864C(v12, v16, type metadata accessor for Link);
  sub_FBD0(&v16[*(v13 + 36)], v26, &qword_4EDE00);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
    type metadata accessor for FlowAction(0);
    if (swift_dynamicCast())
    {
      sub_15174(v9);
      v19 = type metadata accessor for FlowDestination();
      if ((*(*(v19 - 8) + 48))(v9, 1, v19) == 1)
      {
        sub_2085EC(v16, type metadata accessor for Link);

        return sub_FCF8(v9, &qword_4F9A50);
      }

      if (swift_getEnumCaseMultiPayload() == 13)
      {
        static AlertSheetAction.deleteStation(_:)(*v9, v6);
        v27 = sub_36174(0, &qword_4F1838);
        v26[0] = a2;
        v23 = a2;
        v24 = sub_3ED954();
        sub_207614(v6, v26, v24);

        sub_2085EC(v16, type metadata accessor for Link);
        sub_FCF8(v26, &unk_501090);
        v21 = type metadata accessor for AlertSheetAction;
        v22 = v6;
      }

      else
      {
        sub_2085EC(v16, type metadata accessor for Link);

        v21 = type metadata accessor for FlowDestination;
        v22 = v9;
      }

      return sub_2085EC(v22, v21);
    }
  }

  else
  {
    sub_FCF8(v26, &qword_4EDE00);
  }

  v21 = type metadata accessor for Link;
  v22 = v16;
  return sub_2085EC(v22, v21);
}

void (*LibraryPresenter.deletableExtension.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  LibraryPresenter.deletableExtension.getter(v3);
  return sub_1FBC30;
}

void sub_1FBC30(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = **a1;
  v7 = v3[1];
  v8 = v3[2];
  v9 = (v5 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___deletableExtension);
  v10 = *v9;
  *v9 = v6;
  v9[1] = v7;
  v9[2] = v8;
  v9[3] = v4;
  if (a2)
  {
    sub_1FB6D4(v6);
    sub_1FB670(v10);
    sub_1FB680(*v3);
  }

  else
  {
    sub_1FB670(v10);
  }

  free(v3);
}

void *LibraryPresenter.multiSelectableExtension.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension;
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MultiSelectableExtension();
    v3 = swift_allocObject();
    v3[12] = 0;
    v3[13] = 0;
    v3[2] = sub_1FBF28;
    v3[3] = v4;
    v3[4] = sub_1FC00C;
    v3[5] = v5;
    v3[6] = sub_1FC0E8;
    v3[7] = v6;
    v3[8] = sub_1FC164;
    v3[9] = v7;
    v3[10] = sub_1FC4A4;
    v3[11] = v8;
    v9 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1FC4D4(v9);
  }

  sub_1FC4E4(v2);
  return v3;
}

uint64_t LibraryPresenter.multiSelectableExtension.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension);
  *(v1 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension) = a1;
  return sub_1FC4D4(v2);
}

uint64_t sub_1FBE94(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    if (*a2 == 0xD000000000000026 && 0x800000000042ADC0 == a2[1])
    {
      LOBYTE(Strong) = 1;
    }

    else
    {
      LOBYTE(Strong) = sub_3EE804();
    }
  }

  return Strong & 1;
}

uint64_t sub_1FBF30(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    v4 = *a2;
    v5 = a2[1];
    v6 = v4 == 0xD000000000000026 && 0x800000000042ADC0 == v5;
    if (v6 || (sub_3EE804() & 1) != 0 || v4 == 0xD000000000000029 && 0x800000000042AD90 == v5)
    {
      LOBYTE(Strong) = 1;
    }

    else
    {
      LOBYTE(Strong) = sub_3EE804();
    }
  }

  return Strong & 1;
}

uint64_t sub_1FC014(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_3E9D64();
    if (v5 != 1 || *a2 == 0xD000000000000026 && 0x800000000042ADC0 == a2[1])
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_3EE804();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1FC0F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1FC16C(a1, a2);
  }

  return result;
}

uint64_t sub_1FC16C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A48);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7 - 8];
  v9 = type metadata accessor for Link();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_3E9D64();
  if (v21[0] == 1)
  {
    if (*a2 == 0xD000000000000026 && 0x800000000042ADC0 == a2[1] || (result = sub_3EE804(), (result & 1) != 0))
    {
      sub_1F958(a1, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
      v14 = swift_dynamicCast();
      v15 = *(v10 + 56);
      if (v14)
      {
        v15(v8, 0, 1, v9);
        v16 = sub_20864C(v8, v12, type metadata accessor for Link);
        v17 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryItems;
        v18 = *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryItems);
        __chkstk_darwin(v16);
        *(&v20 - 2) = v12;
        *(&v20 - 8) = 0;

        v19 = sub_2632C0(sub_2086B4, (&v20 - 4), v18);

        *(v3 + v17) = v19;

        return sub_2085EC(v12, type metadata accessor for Link);
      }

      else
      {
        v15(v8, 1, 1, v9);
        return sub_FCF8(v8, &qword_4F9A48);
      }
    }
  }

  return result;
}

uint64_t sub_1FC428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a5(a1, a3);
  }

  return result;
}

uint64_t sub_1FC4D4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1FC4E4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1FC4F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A48);
  __chkstk_darwin(v9 - 8);
  v11 = (&v30 - v10);
  v12 = type metadata accessor for Link();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F958(a1, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (!v16)
  {
    v17(v11, 1, 1, v12);
    v22 = &qword_4F9A48;
    v23 = v11;
    return sub_FCF8(v23, v22);
  }

  v17(v11, 0, 1, v12);
  sub_20864C(v11, v15, type metadata accessor for Link);
  v18 = sub_3E9D64();
  if ((v32 & 1) == 0)
  {
    sub_FBD0(&v15[*(v12 + 36)], &v32, &qword_4EDE00);
    if (v33)
    {
      sub_1D4F0(&v32, v35);
      sub_1F958(v35, &v32);
      v34 = a2;
      sub_E69A0(&v32, v31);
      v25 = swift_allocObject();
      v26 = v31[1];
      v25[1] = v31[0];
      v25[2] = v26;
      v25[3] = v31[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);

      v27 = sub_3ECE04();
      v28 = sub_3ED6F4();
      (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = &unk_4072F0;
      v29[5] = v25;
      v29[6] = v27;

      sub_E8ECC(0, 0, v8, &unk_407300, v29);

      sub_E91B8(&v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      return sub_2085EC(v15, type metadata accessor for Link);
    }

    sub_2085EC(v15, type metadata accessor for Link);
    v22 = &qword_4EDE00;
    v23 = &v32;
    return sub_FCF8(v23, v22);
  }

  v19 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryItems;
  v20 = *(v3 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryItems);
  __chkstk_darwin(v18);
  *(&v30 - 2) = v15;
  *(&v30 - 8) = 1;

  v21 = sub_2632C0(sub_208560, (&v30 - 4), v20);

  *(v3 + v19) = v21;

  return sub_2085EC(v15, type metadata accessor for Link);
}

uint64_t (*LibraryPresenter.multiSelectableExtension.modify(void *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = LibraryPresenter.multiSelectableExtension.getter();
  return sub_1FC9B8;
}

uint64_t sub_1FC9B8(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension);
  *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension) = *a1;
  if (a2)
  {

    sub_1FC4D4(v3);
  }

  else
  {

    return sub_1FC4D4(v3);
  }
}

uint64_t LibraryPresenter.__allocating_init(asPartOf:with:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_20793C(a1);

  return v2;
}

uint64_t LibraryPresenter.init(asPartOf:with:)(uint64_t a1)
{
  v1 = sub_20793C(a1);

  return v1;
}

Swift::Void __swiftcall LibraryPresenter.viewDidLoad()()
{
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71E8);
  sub_886BC(&qword_4F92C0, &qword_4F71E8);
  sub_3EA1A4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  sub_1FD740();
  sub_1FE050();
  sub_1FE288();
  sub_1FE758();
}

uint64_t sub_1FCC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4 - 8);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v6 - 8);
  v70 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v8 - 8);
  v84 = &v68 - v9;
  v10 = type metadata accessor for Header(0);
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v12 - 8);
  v87 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v17 - 8);
  v86 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v19 - 8);
  v21 = &v68 - v20;
  v22 = type metadata accessor for ModernShelf();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v26 - 8);
  v28 = &v68 - v27;
  swift_beginAccess();
  v85 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71F8);
    if (sub_3E95E4())
    {
      static ModernShelf.loadingShelf(id:)(0xD00000000000001BLL, 0x800000000042AC80, v28);
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    (*(v23 + 56))(v28, v31, 1, v22);
    v32 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_recentlyUpdatedHasMoreShelf;
    swift_beginAccess();
    sub_51F9C(v28, v30 + v32, &unk_503DA0);
    swift_endAccess();
  }

  v80 = v21;
  v69 = v23;
  v81 = v22;
  v82 = a1;
  v83 = v25;
  v33 = [objc_opt_self() mainBundle];
  v76 = 0x800000000042ADF0;
  v67._countAndFlagsBits = 0x800000000042ADF0;
  v89._object = 0x800000000042AE10;
  v89._countAndFlagsBits = 0xD000000000000010;
  v90.value._countAndFlagsBits = 0;
  v90.value._object = 0;
  v34.super.isa = v33;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v74 = sub_3E5A74(v89, v90, v34, v91, v67);
  v73 = v35;

  v36 = type metadata accessor for ActionMenu(0);
  v72 = *(*(v36 - 8) + 56);
  v72(v86, 1, 1, v36);
  v37 = type metadata accessor for Header.PrimaryAction(0);
  v38 = *(*(v37 - 8) + 56);
  v38(v16, 1, 1, v37);
  v39 = sub_3E7784();
  v40 = *(*(v39 - 8) + 56);
  v75 = v16;
  v40(v87, 1, 1, v39);
  v41 = v77;
  v77[32] = 0;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  v42 = v79;
  v68 = *(v79 + 28);
  v72(v41 + v68, 1, 1, v36);
  v43 = *(v42 + 32);
  v44 = v37;
  v45 = v73;
  v38((v41 + v43), 1, 1, v44);
  v46 = v74;
  v47 = *(v42 + 36);
  v40(v41 + v47, 1, 1, v39);
  if (sub_3EE0E4())
  {
    *v41 = v46;
    *(v41 + 8) = v45;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    sub_51F9C(v86, v41 + v68, &qword_4F1AB8);
    v48 = v75;
    sub_B8464(v75, v41 + v43, &qword_4F1AB0);
    sub_51F9C(v87, v41 + v47, &qword_4F1D50);
    v49 = v80;
    sub_208584(v41, v80, type metadata accessor for Header);
    (*(v78 + 56))(v49, 0, 1, v42);
    sub_FCF8(v48, &qword_4F1AB0);
    sub_2085EC(v41, type metadata accessor for Header);
  }

  else
  {

    sub_FCF8(v87, &qword_4F1D50);
    sub_FCF8(v86, &qword_4F1AB8);
    sub_FCF8(v75, &qword_4F1AB0);
    sub_2085EC(v41, type metadata accessor for Header);
    v49 = v80;
    (*(v78 + 56))(v80, 1, 1, v42);
  }

  v50 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71F8);
  sub_3E95D4();
  v51 = sub_772E0(v88);

  v52 = sub_3E5DC4();
  v53 = *(*(v52 - 8) + 56);
  v54 = v84;
  v53(v84, 1, 1, v52);
  v55 = v83;
  v56 = &v83[v50[12]];
  *(v56 + 4) = 0;
  *v56 = 0u;
  *(v56 + 1) = 0u;
  v57 = v50[13];
  v58 = sub_3EC634();
  (*(*(v58 - 8) + 56))(&v55[v57], 1, 1, v58);
  v59 = v50[9];
  v60 = &v55[v50[8]];
  v53(&v55[v59], 1, 1, v52);
  *v55 = 0xD000000000000010;
  *(v55 + 1) = v76;
  sub_FACC(v49, &v55[v50[5]], &qword_4F1AC0);
  v61 = &v55[v50[6]];
  *v61 = 27;
  *(v61 + 3) = 256;
  *(v61 + 2) = 0;
  *(v61 + 1) = 1;
  *&v55[v50[7]] = v51;
  sub_51F9C(v54, &v55[v59], &unk_4E9EE0);
  v55[v50[10]] = 1;
  v55[v50[11]] = 0;
  *v60 = 0;
  *(v60 + 1) = 0;
  swift_beginAccess();
  v62 = swift_weakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = v70;
    sub_208584(v55, v70, type metadata accessor for ModernShelf);
    (*(v69 + 56))(v64, 0, 2, v50);
    v65 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_recentlyUpdatedShelf;
    swift_beginAccess();
    sub_B8464(v64, v63 + v65, &qword_4F5978);
    swift_endAccess();
    swift_beginAccess();

    sub_1FE970(v71);
    sub_3E9D74();

    sub_FCF8(v64, &qword_4F5978);
  }

  return sub_2085EC(v55, type metadata accessor for ModernShelf);
}

uint64_t sub_1FD740()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v58 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A08);
  __chkstk_darwin(v3 - 8);
  v46 = &v40 - v4;
  v56 = sub_3EDBA4();
  v43 = *(v56 - 8);
  v5 = v43;
  __chkstk_darwin(v56);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7E30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A10);
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A18);
  v13 = *(v12 - 8);
  v51 = v12;
  v52 = v13;
  __chkstk_darwin(v12);
  v57 = &v40 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A20);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = v0;
  v49 = &v40 - v15;
  v16 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_objectGraph);
  v18 = objc_opt_self();

  v54 = sub_30EC98(v17, [v18 standardUserDefaults], 0);

  v59 = sub_30B588();
  v60 = *(v16 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_isEditing);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  sub_886BC(&qword_4F7F38, &qword_4F5578);
  sub_3EA174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_500EE0);
  sub_886BC(&qword_4F9A28, &unk_500EE0);
  sub_886BC(&qword_4F7F80, &qword_4F7E30);
  sub_3E9FE4();
  (*(v8 + 8))(v10, v7);

  v19 = v45;
  sub_3EDB84();
  v20 = v46;
  v21 = v56;
  (*(v5 + 56))(v46, 1, 1, v56);
  sub_36174(0, &qword_4F10B0);
  v22 = sub_3EDBC4();
  v59 = v22;
  v23 = sub_3EDB64();
  v24 = *(v23 - 8);
  v41 = *(v24 + 56);
  v42 = v24 + 56;
  v25 = v58;
  v41(v58, 1, 1, v23);
  sub_886BC(&qword_4F9A30, &qword_4F9A10);
  v40 = sub_87870();
  v26 = v20;
  v27 = v47;
  v28 = v44;
  sub_3EA064();
  sub_FCF8(v25, &qword_4F69E0);

  sub_FCF8(v26, &qword_4F9A08);
  v29 = *(v43 + 8);
  v29(v19, v21);
  (*(v50 + 8))(v28, v27);
  v30 = v19;
  sub_3EDB84();
  v31 = sub_3EDBC4();
  v59 = v31;
  v32 = v58;
  v41(v58, 1, 1, v23);
  sub_886BC(&qword_4F9A38, &qword_4F9A18);
  v33 = v49;
  v34 = v51;
  v35 = v57;
  sub_3EA124();
  sub_FCF8(v32, &qword_4F69E0);

  v29(v30, v56);
  (*(v52 + 8))(v35, v34);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_208524;
  *(v37 + 24) = v36;
  sub_886BC(&qword_4F9A40, &qword_4F9A20);
  v38 = v53;
  sub_3EA1A4();

  (*(v55 + 8))(v33, v38);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_1FE050()
{
  v1 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v1);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryDataProvider + 8);
  ObjectType = swift_getObjectType();
  v9[0] = 7;
  (*(v4 + 208))(v9, ObjectType, v4);
  swift_storeEnumTagMultiPayload();
  v6 = sub_1892F8(v3);

  sub_2085EC(v3, type metadata accessor for ObserverQueue);
  v9[0] = v6;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6160);
  sub_886BC(&qword_4F6170, &qword_4F6160);
  sub_3EA1A4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_1FE288()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F99E8);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F99F0);
  v8 = *(v7 - 8);
  v19 = v7;
  v20 = v8;
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  if ([objc_opt_self() isRunningOnDesktop])
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipProvider), *(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipProvider + 24));
  v21 = sub_3E6DB4();
  *(swift_allocObject() + 16) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6258);
  sub_886BC(&qword_4F8060, &qword_4F8058);
  sub_3EA024();

  sub_36174(0, &qword_4F10B0);
  v12 = sub_3EDBC4();
  v21 = v12;
  v13 = sub_3EDB64();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_886BC(&qword_4F99F8, &qword_4F99E8);
  sub_87870();
  v14 = v18;
  sub_3EA114();
  sub_FCF8(v3, &qword_4F69E0);

  (*(v4 + 8))(v6, v14);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F9A00, &qword_4F99F0);
  v15 = v19;
  sub_3EA1A4();

  (*(v20 + 8))(v10, v15);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_1FE758()
{
  v1 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryDataProvider + 8);
  ObjectType = swift_getObjectType();
  LibraryDataProviderProtocol.fetchShowCountObserver()(ObjectType, v4);
  swift_storeEnumTagMultiPayload();
  v6 = sub_188E58(v3);

  sub_2085EC(v3, type metadata accessor for ObserverQueue);
  v8[1] = v6;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0);
  sub_886BC(&qword_4F61F0, &qword_4F61E0);
  sub_3EA1A4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_1FE970@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EC544();
  v106 = *(v4 - 8);
  v107 = v4;
  __chkstk_darwin(v4);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = &v92 - v7;
  v108 = type metadata accessor for ModernPage();
  __chkstk_darwin(v108);
  v109 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v111);
  v100 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v92 - v11;
  __chkstk_darwin(v12);
  v14 = &v92 - v13;
  __chkstk_darwin(v15);
  v17 = &v92 - v16;
  __chkstk_darwin(v18);
  v20 = &v92 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v21 - 8);
  v102 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v92 - v24;
  v26 = type metadata accessor for ModernShelf();
  v110 = *(v26 - 8);
  __chkstk_darwin(v26);
  v103 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v92 - v29;
  v31 = sub_3E65B4();
  __chkstk_darwin(v31);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_isLibraryEmpty);
  if (v36 == 2)
  {
    *a1 = 0;
    type metadata accessor for PageContent();

    return swift_storeEnumTagMultiPayload();
  }

  v98 = v33;
  v99 = v32;
  if (v36)
  {
    swift_beginAccess();
    v38 = v98;
    v37 = v99;
    (*(v98 + 104))(v35, enum case for ExtendedLaunchStatus.finishedLoading(_:), v99);

    sub_3E9D44();

    (*(v38 + 8))(v35, v37);
    static ContentUnavailablePage.emptyLibrary.getter(a1);
    type metadata accessor for PageContent();
    return swift_storeEnumTagMultiPayload();
  }

  v97 = a1;
  v118 = 0;
  *&v119 = _swiftEmptyArrayStorage;
  *(&v119 + 1) = _swiftEmptyArrayStorage;
  v39 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipShelf;
  swift_beginAccess();
  sub_FBD0(v2 + v39, v25, &unk_503DA0);
  v95 = *(v110 + 48);
  v96 = v110 + 48;
  if (v95(v25, 1, v26) != 1)
  {
    sub_20864C(v25, v30, type metadata accessor for ModernShelf);
    v40 = [objc_opt_self() currentTraitCollection];
    v41 = [v40 horizontalSizeClass];

    if (v41 == &dword_0 + 2)
    {
      v42 = sub_3EE804();

      if ((v42 & 1) == 0)
      {
        sub_2085EC(v30, type metadata accessor for ModernShelf);
        goto LABEL_16;
      }
    }

    else
    {
    }

    sub_208584(v30, v20, type metadata accessor for ModernShelf);
    (*(v110 + 56))(v20, 0, 2, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v94 = v112;
    v43 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
    v45 = v43[2];
    v44 = v43[3];
    v93 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v43 = sub_E02FC((v44 > 1), v45 + 1, 1, v43);
    }

    sub_FCF8(v20, &qword_4F5978);
    sub_2085EC(v30, type metadata accessor for ModernShelf);
    v46 = v94;
    v43[2] = v93;
    v43[v45 + 4] = v46;
    *(&v119 + 1) = v43;
    goto LABEL_16;
  }

  sub_FCF8(v25, &unk_503DA0);
LABEL_16:
  v47 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_linksShelf;
  swift_beginAccess();
  sub_FBD0(v2 + v47, v17, &qword_4F5978);
  ModernShelfListBuilder.addImportantShelf(_:)();
  sub_FCF8(v17, &qword_4F5978);
  v48 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_stationsShelf;
  swift_beginAccess();
  sub_FBD0(v2 + v48, v14, &qword_4F5978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_3E9504();
  v49 = v112;
  v50 = *(&v119 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v50 = sub_E02FC(0, v50[2] + 1, 1, v50);
  }

  v52 = v50[2];
  v51 = v50[3];
  if (v52 >= v51 >> 1)
  {
    v50 = sub_E02FC((v51 > 1), v52 + 1, 1, v50);
  }

  sub_FCF8(v14, &qword_4F5978);
  v50[2] = v52 + 1;
  v50[v52 + 4] = v49;
  *(&v119 + 1) = v50;
  sub_3E9D64();
  if (v112)
  {
    v53 = v97;
  }

  else
  {
    v54 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_recentlyUpdatedShelf;
    swift_beginAccess();
    v55 = v101;
    sub_FBD0(v2 + v54, v101, &qword_4F5978);
    sub_3E9504();
    v56 = v112;
    v58 = v50[2];
    v57 = v50[3];
    if (v58 >= v57 >> 1)
    {
      v50 = sub_E02FC((v57 > 1), v58 + 1, 1, v50);
    }

    sub_FCF8(v55, &qword_4F5978);
    v50[2] = v58 + 1;
    v50[v58 + 4] = v56;
    *(&v119 + 1) = v50;
    v59 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_recentlyUpdatedHasMoreShelf;
    swift_beginAccess();
    v60 = v2 + v59;
    v61 = v102;
    sub_FBD0(v60, v102, &unk_503DA0);
    if (v95(v61, 1, v26) == 1)
    {
      sub_FCF8(v61, &unk_503DA0);
      v53 = v97;
    }

    else
    {
      v62 = v61;
      v63 = v103;
      sub_20864C(v62, v103, type metadata accessor for ModernShelf);
      v64 = v100;
      sub_208584(v63, v100, type metadata accessor for ModernShelf);
      (*(v110 + 56))(v64, 0, 2, v26);
      sub_3E9504();
      v65 = v112;
      v67 = v50[2];
      v66 = v50[3];
      v53 = v97;
      if (v67 >= v66 >> 1)
      {
        v50 = sub_E02FC((v66 > 1), v67 + 1, 1, v50);
      }

      sub_FCF8(v64, &qword_4F5978);
      sub_2085EC(v103, type metadata accessor for ModernShelf);
      v50[2] = v67 + 1;
      v50[v67 + 4] = v65;
      *(&v119 + 1) = v50;
    }
  }

  LOBYTE(v112) = v118;
  *&v113 = v119;
  *(&v113 + 1) = v50;
  ModernShelfListBuilder.areAnyImportantShelvesStillLoading.getter();
  if (v68)
  {

    *v53 = 0;
  }

  else
  {
    swift_beginAccess();
    v70 = v98;
    v69 = v99;
    (*(v98 + 104))(v35, enum case for ExtendedLaunchStatus.finishedLoading(_:), v99);

    sub_3E9D44();

    (*(v70 + 8))(v35, v69);
    v71 = sub_3E8084();
    v73 = v72;
    v74 = sub_3E7B04();
    v76 = v75;
    v112 = v71;
    *&v113 = v73;
    v128._countAndFlagsBits = 95;
    v128._object = 0xE100000000000000;
    sub_3ED3D4(v128);
    v129._countAndFlagsBits = v74;
    v129._object = v76;
    sub_3ED3D4(v129);

    v77 = v109;
    sub_3ECCE4();
    v78 = sub_3E7B04();
    v80 = v79;
    v81 = sub_3E8084();
    v112 = v78;
    *&v113 = v80;
    *(&v113 + 1) = v81;
    v114 = v82;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v83 = v105;
    sub_3EC534();
    sub_3E67A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
    sub_3EC0B4();
    *(swift_allocObject() + 16) = xmmword_3F5310;
    sub_3EC084();
    sub_3EC074();
    MetricsPageFields.metricsFields.getter();
    v85 = v106;
    v84 = v107;
    (*(v106 + 16))(v104, v83, v107);
    v86 = v108;
    sub_3EC0C4();
    v126 = v120;
    sub_FCF8(&v126, &unk_4F8A10);
    v125 = v121;
    sub_FCF8(&v125, &qword_4E94E0);
    v124 = v122;
    sub_FCF8(&v124, &unk_4F8A20);
    sub_16AC0(v123);
    (*(v85 + 8))(v83, v84);

    LOBYTE(v112) = v118;
    v113 = v119;
    ModernShelfListBuilder.buildList()();
    v88 = v87;

    *(v77 + *(v86 + 24)) = v88;
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    v90 = v97;
    sub_208584(v77, v97, type metadata accessor for ModernPage);
    LOBYTE(v88) = sub_3E66E4();
    sub_2085EC(v77, type metadata accessor for ModernPage);
    *(v90 + v89) = v88;
  }

  type metadata accessor for PageContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1FF810()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_3E9D44();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1F9978(Strong);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_objectGraph);
    v3 = objc_opt_self();

    sub_30EC98(v2, [v3 standardUserDefaults], 0);

    sub_30D970(v4);
  }

  return result;
}

uint64_t sub_1FF974@<X0>(unint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v24 = &v23 - v3;
  v5 = [objc_opt_self() mainBundle];
  v22._countAndFlagsBits = 0xE000000000000000;
  v29._object = 0x800000000042AD70;
  v29._countAndFlagsBits = 0xD000000000000011;
  v30.value._countAndFlagsBits = 0;
  v30.value._object = 0;
  v6.super.isa = v5;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v7 = sub_3E5A74(v29, v30, v6, v31, v22);
  v25 = v8;
  v26 = v7;

  v9 = sub_3E7784();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v28[3] = type metadata accessor for TextFieldAlertAction();
  v28[4] = sub_208000(&qword_501120, type metadata accessor for TextFieldAlertAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v28);

  static TextFieldAlertAction.followShowByURL(initialText:then:)(0, 0, sub_20849C, v11, boxed_opaque_existential_0Tm);

  v13 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v15 = v14;
  sub_FBD0(v28, v27, &qword_4EDE00);
  v16 = type metadata accessor for ActionMenu.Item(0);
  v17 = v16[7];
  v10(a1 + v17, 1, 1, v9);
  v18 = v16[8];
  v19 = a1 + v16[10];
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *a1 = v13;
  a1[1] = v15;
  v20 = v25;
  a1[2] = v26;
  a1[3] = v20;
  a1[4] = 0;
  a1[5] = 0;
  sub_51F9C(v24, a1 + v17, &qword_4F1D50);
  *(a1 + v18) = 2;
  *(a1 + v16[9]) = 1;
  sub_51F9C(v27, v19, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(v28, &qword_4EDE00);
}