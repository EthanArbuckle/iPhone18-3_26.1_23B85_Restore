uint64_t sub_10036C038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (a1 == 0x736B6F6F62 && a2 == 0xE500000000000000 || (sub_1007A3AB4() & 1) != 0)
    {
      v6 = &enum case for Book.MediaType.ebook(_:);
LABEL_6:
      v7 = *v6;
      v8 = sub_10079A734();
      return (*(*(v8 - 8) + 104))(a3, v7, v8);
    }

    if (a1 == 0x6F622D6F69647561 && a2 == 0xEB00000000736B6FLL || (sub_1007A3AB4() & 1) != 0)
    {
      v6 = &enum case for Book.MediaType.audiobook(_:);
      goto LABEL_6;
    }
  }

  sub_10036D348();
  swift_allocError();
  *v10 = 1;
  return swift_willThrow();
}

uint64_t sub_10036C174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10079A734();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10036B4AC(a1);
  if (v10)
  {
    v11 = v10;
    (*(v7 + 16))(v9, a2, v6);
    v12 = (*(v7 + 88))(v9, v6);
    if (v12 == enum case for Book.MediaType.ebook(_:))
    {
      *a3 = v11;
      v13 = &enum case for Book.Content.ebook(_:);
LABEL_9:
      v17 = *v13;
      v18 = sub_10079A5B4();
      v19 = *(v18 - 8);
      (*(v19 + 104))(a3, v17, v18);
      return (*(v19 + 56))(a3, 0, 1, v18);
    }

    if (v12 == enum case for Book.MediaType.audiobook(_:))
    {
      *a3 = v11;
      v13 = &enum case for Book.Content.audiobook(_:);
      goto LABEL_9;
    }

    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1007A3744(21);
    v22._object = 0x80000001008CD4F0;
    v22._countAndFlagsBits = 0xD000000000000013;
    sub_1007A23D4(v22);
    sub_1007A3894();
    result = sub_1007A38A4();
    __break(1u);
  }

  else
  {
    v14 = sub_10079A5B4();
    v15 = *(*(v14 - 8) + 56);

    return v15(a3, 1, 1, v14);
  }

  return result;
}

uint64_t sub_10036C440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_10036C460, 0, 0);
}

uint64_t sub_10036C460()
{
  v3 = (*(*(v0 + 32) + 16) + **(*(v0 + 32) + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10036C554;

  return v3(v0 + 16);
}

uint64_t sub_10036C554()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10036C688;
  }

  else
  {
    v2 = sub_10036C668;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10036C6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_10036C6C0, 0, 0);
}

uint64_t sub_10036C6C0()
{
  v3 = (*(*(v0 + 32) + 16) + **(*(v0 + 32) + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10036C7B4;

  return v3(v0 + 16);
}

uint64_t sub_10036C7B4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10036D9BC;
  }

  else
  {
    v2 = sub_10036D9C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10036C8C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v79 = a5;
  v11 = sub_1001F1160(&qword_100ADDEB0);
  __chkstk_darwin(v11 - 8);
  v77 = &v62 - v12;
  v13 = sub_10079A7A4();
  v75 = *(v13 - 8);
  __chkstk_darwin(v13);
  v78 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v76 = &v62 - v16;
  __chkstk_darwin(v17);
  v80 = &v62 - v18;
  __chkstk_darwin(v19);
  v74 = &v62 - v20;
  v21 = sub_10079A734();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v25 = sub_10000E53C(a2, a3);
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1000077D8(*(a1 + 56) + 32 * v25, &v81, &unk_100AD5B40);
  v83 = v81;
  v84 = v82;
  if (!*(&v82 + 1))
  {
    goto LABEL_18;
  }

  sub_1001F1160(&qword_100ADDEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v27 = v85;
  (*(v22 + 16))(v24, a4, v21);
  v28 = (*(v22 + 88))(v24, v21);
  if (v28 == enum case for Book.MediaType.ebook(_:))
  {
    v29 = 0xE500000000000000;
    v30 = 0x736B6F6F62;
    v31 = v80;
    if (*(v27 + 16))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v31 = v80;
  if (v28 == enum case for Book.MediaType.audiobook(_:))
  {
    v29 = 0xEA0000000000736BLL;
    v30 = 0x6F6F626F69647561;
    if (*(v27 + 16))
    {
LABEL_7:
      v73 = v30;
      v32 = sub_10000E53C(v30, v29);
      v34 = v33;

      if (v34)
      {
        sub_1000077D8(*(v27 + 56) + 32 * v32, &v81, &unk_100AD5B40);

        v83 = v81;
        v84 = v82;
        if (*(&v82 + 1))
        {
          sub_1001F1160(&qword_100ADDEC8);
          v35 = v29;
          if (swift_dynamicCast())
          {
            v36 = v85;
            if (qword_100AD1448 != -1)
            {
              goto LABEL_45;
            }

            while (1)
            {
              v37 = sub_10079ACE4();
              v38 = sub_100008B98(v37, qword_100B23090);

              v67 = v38;
              v39 = sub_10079ACC4();
              v40 = sub_1007A29D4();

              v41 = os_log_type_enabled(v39, v40);
              v71 = v36;
              if (v41)
              {
                v36 = v35;
                v42 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                *&v83 = v72;
                *v42 = 136315650;
                *(v42 + 4) = sub_1000070F4(a2, a3, &v83);
                *(v42 + 12) = 2080;
                v43 = sub_1000070F4(v73, v36, &v83);

                *(v42 + 14) = v43;
                *(v42 + 22) = 2048;
                v44 = v71;
                *(v42 + 24) = *(v71 + 16);
                v45 = v44;

                _os_log_impl(&_mh_execute_header, v39, v40, "extractBooks: collection: %s mediaType: %s items: %ld", v42, 0x20u);
                swift_arrayDestroy();

                v35 = v76;
                a2 = v77;
                v47 = v45;
              }

              else
              {

                v35 = v76;
                a2 = v77;
                v47 = v36;
              }

              v70 = *(v47 + 16);
              if (!v70)
              {
                break;
              }

              v49 = 0;
              v73 = (v75 + 32);
              v69 = (v75 + 56);
              v66 = (v75 + 16);
              v68 = (v75 + 48);
              a3 = _swiftEmptyArrayStorage;
              *&v46 = 134217984;
              v62 = v46;
              v65 = (v75 + 8);
              v64 = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              while (v49 < *(v47 + 16))
              {
                v36 = *(v47 + 8 * v49 + 32);
                swift_bridgeObjectRetain_n();
                sub_100368A54(v36, v31);
                if (v6)
                {

                  return a3;
                }

                v50 = sub_10079A5F4();
                if (sub_1003684F8(v50, v79))
                {
                  (*v66)(v35, v31, v13);
                  v51 = sub_10079ACC4();
                  v52 = v35;
                  v53 = sub_1007A2994();
                  v72 = v51;
                  if (os_log_type_enabled(v51, v53))
                  {
                    v54 = swift_slowAlloc();
                    *v54 = v62;
                    v63 = sub_10079A5F4();
                    v55 = *v65;
                    (*v65)(v52, v13);
                    *(v54 + 4) = v63;
                    _os_log_impl(&_mh_execute_header, v72, v53, "excluded storeID: %llu", v54, 0xCu);
                    a2 = v77;
                  }

                  else
                  {
                    v55 = *v65;
                    (*v65)(v52, v13);
                  }

                  v35 = v52;

                  v57 = v80;
                  v55(v80, v13);
                  v31 = v57;
                  v56 = 1;
                }

                else
                {
                  (*v73)(a2, v31, v13);
                  v56 = 0;
                }

                (*v69)(a2, v56, 1, v13);

                if ((*v68)(a2, 1, v13) == 1)
                {
                  sub_100007840(a2, &qword_100ADDEB0);
                }

                else
                {
                  v36 = v73;
                  v58 = v74;
                  v59 = *v73;
                  (*v73)(v74, a2, v13);
                  v59(v78, v58, v13);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    a3 = sub_10066B4A8(0, a3[2] + 1, 1, a3);
                  }

                  v61 = a3[2];
                  v60 = a3[3];
                  if (v61 >= v60 >> 1)
                  {
                    a3 = sub_10066B4A8(v60 > 1, v61 + 1, 1, a3);
                  }

                  a3[2] = v61 + 1;
                  v59(a3 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v61, v78, v13);
                  v35 = v76;
                  a2 = v77;
                }

                v47 = v71;
                if (v70 == ++v49)
                {
                  goto LABEL_42;
                }
              }

              __break(1u);
LABEL_45:
              swift_once();
            }

            a3 = _swiftEmptyArrayStorage;
LABEL_42:

            return a3;
          }

LABEL_19:
          sub_10036D2F4();
          swift_allocError();
          swift_willThrow();
          return a3;
        }

LABEL_18:
        sub_100007840(&v83, &unk_100AD5B40);
        goto LABEL_19;
      }

LABEL_16:

      goto LABEL_19;
    }

LABEL_15:

    goto LABEL_16;
  }

  *&v83 = 0;
  *(&v83 + 1) = 0xE000000000000000;
  sub_1007A3744(21);
  v86._object = 0x80000001008CD4F0;
  v86._countAndFlagsBits = 0xD000000000000013;
  sub_1007A23D4(v86);
  sub_1007A3894();
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

unint64_t sub_10036D2F4()
{
  result = qword_100ADDEB8;
  if (!qword_100ADDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDEB8);
  }

  return result;
}

unint64_t sub_10036D348()
{
  result = qword_100ADDED0;
  if (!qword_100ADDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDED0);
  }

  return result;
}

unint64_t sub_10036D39C()
{
  result = qword_100ADDEE8;
  if (!qword_100ADDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDEE8);
  }

  return result;
}

uint64_t sub_10036D3F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100368064(*(v1 + 16), *(v1 + 24), &unk_100A17900, &unk_10081D4A0, sub_10050CE78);
  *a1 = result;
  return result;
}

uint64_t sub_10036D44C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_10036C440(a1, v4, v5, v6);
}

uint64_t sub_10036D514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100368064(*(v1 + 16), *(v1 + 24), &unk_100A17928, &unk_10081D4E0, sub_10050D130);
  *a1 = result;
  return result;
}

unint64_t sub_10036D570()
{
  result = qword_100AD9BD0;
  if (!qword_100AD9BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD9BD0);
  }

  return result;
}

uint64_t sub_10036D5BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_10036C6A0(a1, v4, v5, v6);
}

uint64_t sub_10036D684@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100368064(*(v1 + 16), *(v1 + 24), &unk_100A17950, &unk_10081D510, sub_10050D408);
  *a1 = result;
  return result;
}

uint64_t sub_10036D6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_10036C6A0(a1, v4, v5, v6);
}

uint64_t sub_10036D7A8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10036D7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1003681F8(a1, v4, v5, v6);
}

uint64_t sub_10036D89C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10036D908()
{
  result = qword_100ADDF20;
  if (!qword_100ADDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF20);
  }

  return result;
}

unint64_t sub_10036D960()
{
  result = qword_100ADDF28;
  if (!qword_100ADDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF28);
  }

  return result;
}

uint64_t sub_10036D9C8(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD000000000000010;
    v5 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 != 4)
    {
      v5 = 0x507972617262696CLL;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x7972617262696CLL;
    v2 = 0x467972617262696CLL;
    if (a1 != 2)
    {
      v2 = 0x427972617262696CLL;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10036DB00()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADDF30);
  sub_100008B98(v0, qword_100ADDF30);
  return sub_10079ACD4();
}

uint64_t sub_10036DB8C()
{
  v0 = sub_1001F1160(&qword_100AD5D10);
  __chkstk_darwin(v0 - 8);
  v104 = &v79 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v2 - 8);
  v109 = &v79 - v3;
  v108 = sub_1007967F4();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_100796CF4();
  v6 = *(v100 - 8);
  __chkstk_darwin(v100);
  v89 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v79 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v79 - v16;
  v96 = sub_100796814();
  v112 = *(v96 - 8);
  __chkstk_darwin(v96);
  v88 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100ADE0E8);
  v19 = sub_1001F1160(&qword_100AD3B40);
  v91 = v19;
  v20 = *(v19 - 8);
  v98 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v84 = 8 * v98;
  v22 = swift_allocObject();
  v85 = v22;
  *(v22 + 16) = xmmword_100811450;
  v110 = v22 + v21;
  v83 = *(v19 + 48);
  *(v22 + v21) = 0;
  v86 = v17;
  sub_1007A2154();
  sub_100796C94();
  v23 = v12;
  v106 = *(v12 + 16);
  v107 = v12 + 16;
  v87 = v14;
  v106(v14, v17, v11);
  v101 = *(v6 + 16);
  v105 = v6 + 16;
  v24 = v89;
  v25 = v10;
  v26 = v10;
  v27 = v100;
  v101(v89, v25, v100);
  v90 = type metadata accessor for BundleFinder();
  *v5 = v90;
  v93 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v28 = *(v111 + 104);
  v111 += 104;
  v102 = v28;
  v99 = v5;
  v28(v5);
  v29 = v24;
  sub_100796834();
  v30 = *(v6 + 8);
  v92 = v6 + 8;
  v95 = v30;
  v30(v26, v27);
  v31 = *(v23 + 8);
  v103 = v23 + 8;
  v97 = v31;
  v32 = v86;
  v31(v86, v11);
  v33 = *(v112 + 56);
  v112 += 56;
  v94 = v33;
  v34 = v96;
  v33(v109, 1, 1, v96);
  sub_1007960E4();
  v35 = v110;
  sub_100796124();
  v82 = v35 + v98;
  v83 = *(v91 + 48);
  *v82 = 1;
  v36 = v32;
  sub_1007A2154();
  sub_100796C94();
  v106(v87, v32, v11);
  v37 = v29;
  v38 = v26;
  v39 = v100;
  v101(v37, v26, v100);
  v40 = v90;
  v41 = v99;
  *v99 = v90;
  v102(v41, v93, v108);
  sub_100796834();
  v42 = v95;
  v95(v26, v39);
  v97(v36, v11);
  v94(v109, 1, 1, v34);
  sub_1007960E4();
  sub_100796124();
  v43 = v98;
  v83 = 2 * v98;
  v81 = (v110 + 2 * v98);
  v82 = *(v91 + 48);
  *v81 = 2;
  sub_1007A2154();
  sub_100796C94();
  v106(v87, v36, v11);
  v44 = v100;
  v101(v89, v26, v100);
  v45 = v99;
  *v99 = v40;
  v102(v45, v93, v108);
  sub_100796834();
  v42(v26, v44);
  v46 = v86;
  v79 = v11;
  v47 = v97;
  v97(v86, v11);
  v94(v109, 1, 1, v96);
  sub_1007960E4();
  sub_100796124();
  v82 = v110 + v83 + v43;
  v48 = v91;
  v83 = *(v91 + 48);
  *v82 = 3;
  sub_1007A2154();
  sub_100796C94();
  v106(v87, v46, v11);
  v49 = v89;
  v50 = v44;
  v101(v89, v38, v44);
  v51 = v99;
  *v99 = v90;
  v102(v51, v93, v108);
  sub_100796834();
  v95(v38, v50);
  v52 = v79;
  v47(v46, v79);
  v94(v109, 1, 1, v96);
  sub_1007960E4();
  sub_100796124();
  v83 = 4 * v98;
  v81 = (v110 + 4 * v98);
  v82 = *(v48 + 48);
  *v81 = 4;
  sub_1007A2154();
  sub_100796C94();
  v53 = v52;
  v106(v87, v46, v52);
  v54 = v38;
  v80 = v38;
  v55 = v100;
  v101(v49, v38, v100);
  v56 = v90;
  v57 = v99;
  *v99 = v90;
  v58 = v93;
  v102(v57, v93, v108);
  sub_100796834();
  v95(v54, v55);
  v97(v46, v53);
  v59 = v96;
  v94(v109, 1, 1, v96);
  sub_1007960E4();
  sub_100796124();
  v82 = v110 + v83 + v98;
  v83 = *(v91 + 48);
  *v82 = 5;
  v60 = v46;
  sub_1007A2154();
  v61 = v80;
  sub_100796C94();
  v62 = v87;
  v63 = v53;
  v106(v87, v60, v53);
  v64 = v100;
  v101(v89, v61, v100);
  v65 = v99;
  *v99 = v56;
  v102(v65, v58, v108);
  sub_100796834();
  v95(v61, v64);
  v66 = v86;
  v97(v86, v63);
  v67 = v59;
  v68 = v94;
  v94(v109, 1, 1, v67);
  v69 = [objc_opt_self() configurationPreferringMonochrome];
  sub_1007960E4();
  sub_100796124();
  v82 = v110 + 6 * v98;
  v70 = v91;
  v83 = *(v91 + 48);
  *v82 = 6;
  sub_1007A2154();
  sub_100796C94();
  v106(v62, v66, v63);
  v71 = v89;
  v72 = v100;
  v101(v89, v61, v100);
  v73 = v99;
  *v99 = v90;
  v102(v73, v93, v108);
  sub_100796834();
  v95(v61, v72);
  v97(v66, v63);
  v68(v109, 1, 1, v96);
  sub_1007960E4();
  sub_100796124();
  v74 = (v110 + v84 - v98);
  v98 = *(v70 + 48);
  *v74 = 7;
  sub_1007A2154();
  sub_100796C94();
  v106(v62, v66, v63);
  v75 = v100;
  v101(v71, v61, v100);
  v76 = v99;
  *v99 = v90;
  v102(v76, v93, v108);
  sub_100796834();
  v95(v61, v75);
  v97(v66, v63);
  v94(v109, 1, 1, v96);
  sub_1007960E4();
  sub_100796124();
  v77 = sub_1001EDBAC(v85);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B230C0 = v77;
  return result;
}

unint64_t sub_10036EE3C()
{
  result = qword_100ADDF48;
  if (!qword_100ADDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF48);
  }

  return result;
}

uint64_t sub_10036EEAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100371FB8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10036EEDC@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006461;
  v3 = *v1;
  v4 = 0x417972617262696CLL;
  v5 = 0xE900000000000073;
  v6 = 0x656C706D6153796DLL;
  if (v3 != 6)
  {
    v6 = 0x64616F6C6E776F64;
    v5 = 0xEA00000000006465;
  }

  v7 = 0xEA0000000000736BLL;
  v8 = 0x6F6F626F69647561;
  if (v3 != 4)
  {
    v8 = 1936090224;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x64656873696E6966;
  result = 0x736B6F6F62;
  if (v3 != 2)
  {
    v10 = 0x736B6F6F62;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x65526F54746E6177;
  }

  else
  {
    v2 = 0xEA00000000006C6CLL;
  }

  if (*v1 <= 1u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v10;
  }

  if (*v1 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v9;
  }

  if (*v1 <= 3u)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  if (*v1 <= 3u)
  {
    v15 = v13;
  }

  else
  {
    v15 = v5;
  }

  *a1 = v14;
  a1[1] = v15;
  return result;
}

unint64_t sub_10036EFD8()
{
  result = qword_100ADDF50;
  if (!qword_100ADDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF50);
  }

  return result;
}

unint64_t sub_10036F030()
{
  result = qword_100ADDF58;
  if (!qword_100ADDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF58);
  }

  return result;
}

unint64_t sub_10036F088()
{
  result = qword_100ADDF60;
  if (!qword_100ADDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF60);
  }

  return result;
}

uint64_t sub_10036F130()
{
  v1 = *v0;
  v2 = 0x417972617262696CLL;
  v3 = 0x656C706D6153796DLL;
  if (v1 != 6)
  {
    v3 = 0x64616F6C6E776F64;
  }

  v4 = 0x6F6F626F69647561;
  if (v1 != 4)
  {
    v4 = 1936090224;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64656873696E6966;
  if (v1 != 2)
  {
    v5 = 0x736B6F6F62;
  }

  if (*v0)
  {
    v2 = 0x65526F54746E6177;
  }

  if (*v0 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (*v0 <= 3u)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10036F228@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100371FB8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10036F274()
{
  result = qword_100ADDF78;
  if (!qword_100ADDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF78);
  }

  return result;
}

unint64_t sub_10036F2C8()
{
  result = qword_100ADDF80;
  if (!qword_100ADDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF80);
  }

  return result;
}

unint64_t sub_10036F31C()
{
  result = qword_100ADDF88;
  if (!qword_100ADDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF88);
  }

  return result;
}

unint64_t sub_10036F374()
{
  result = qword_100ADDF90;
  if (!qword_100ADDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF90);
  }

  return result;
}

unint64_t sub_10036F450()
{
  result = qword_100ADDF98;
  if (!qword_100ADDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDF98);
  }

  return result;
}

uint64_t sub_10036F4A4(uint64_t a1)
{
  v2 = sub_10036F450();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10036F4F4()
{
  result = qword_100ADDFA0;
  if (!qword_100ADDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFA0);
  }

  return result;
}

unint64_t sub_10036F54C()
{
  result = qword_100ADDFA8;
  if (!qword_100ADDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFA8);
  }

  return result;
}

unint64_t sub_10036F5A0()
{
  result = qword_100ADDFB0;
  if (!qword_100ADDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFB0);
  }

  return result;
}

uint64_t sub_10036F5F4()
{
  if (qword_100AD1460 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10036F650(uint64_t a1)
{
  v2 = sub_10036F374();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10036F6A0()
{
  result = qword_100ADDFB8;
  if (!qword_100ADDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFB8);
  }

  return result;
}

unint64_t sub_10036F6F8()
{
  result = qword_100ADDFC0;
  if (!qword_100ADDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFC0);
  }

  return result;
}

unint64_t sub_10036F750()
{
  result = qword_100ADDFC8;
  if (!qword_100ADDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFC8);
  }

  return result;
}

uint64_t sub_10036F7B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v3 - 8);
  v31 = v24 - v4;
  v5 = sub_1007967F4();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_100796CF4();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  v13 = sub_1007A21D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v24 - v18;
  v20 = sub_100796814();
  v26 = *(v20 - 8);
  v27 = v20;
  __chkstk_darwin(v20);
  v21 = sub_100796314();
  sub_100009A38(v21, a2);
  v24[1] = sub_100008B98(v21, a2);
  sub_1007A2154();
  sub_100796C94();
  (*(v14 + 16))(v16, v19, v13);
  v22 = v28;
  (*(v8 + 16))(v25, v12, v28);
  *v7 = type metadata accessor for BundleFinder();
  (*(v29 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v30);
  sub_100796834();
  (*(v8 + 8))(v12, v22);
  (*(v14 + 8))(v19, v13);
  (*(v26 + 56))(v31, 1, 1, v27);
  return sub_100796304();
}

uint64_t sub_10036FBC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_100372020(a1);
}

uint64_t sub_10036FC68(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100372D80;

  return sub_100372004();
}

unint64_t sub_10036FD0C()
{
  result = qword_100ADDFD0;
  if (!qword_100ADDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFD0);
  }

  return result;
}

uint64_t sub_10036FD60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100246DA4;

  return sub_100372140();
}

unint64_t sub_10036FE0C()
{
  result = qword_100ADDFD8;
  if (!qword_100ADDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFD8);
  }

  return result;
}

unint64_t sub_10036FE60()
{
  result = qword_100ADDFE0;
  if (!qword_100ADDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFE0);
  }

  return result;
}

uint64_t sub_10036FEF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10036FD0C();
  *v5 = v2;
  v5[1] = sub_10002812C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10036FFEC()
{
  result = qword_100ADDFF8;
  if (!qword_100ADDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFF8);
  }

  return result;
}

unint64_t sub_100370044()
{
  result = qword_100ADE000;
  if (!qword_100ADE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE000);
  }

  return result;
}

unint64_t sub_10037009C()
{
  result = qword_100ADE008;
  if (!qword_100ADE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE008);
  }

  return result;
}

unint64_t sub_1003700F4()
{
  result = qword_100ADE010;
  if (!qword_100ADE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE010);
  }

  return result;
}

uint64_t sub_100370148@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1001F1160(&qword_100AD5D10);
  __chkstk_darwin(v3 - 8);
  v34 = &v26 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v5 - 8);
  v33 = &v26 - v6;
  v26 = sub_1007967F4();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_100796CF4();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = sub_1007A21D4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  v22 = sub_100796814();
  v29 = *(v22 - 8);
  v30 = v22;
  __chkstk_darwin(v22);
  v28 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v10;
  v35 = a1;
  sub_1007A2154();
  sub_100796C94();
  (*(v16 + 16))(v18, v21, v15);
  v24 = v32;
  (*(v10 + 16))(v27, v14, v32);
  *v9 = type metadata accessor for BundleFinder();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  sub_100796834();
  (*(v31 + 8))(v14, v24);
  (*(v16 + 8))(v21, v15);
  (*(v29 + 56))(v33, 1, 1, v30);
  sub_100370AEC(v35, v34);
  return sub_100796124();
}

uint64_t sub_100370AEC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_100372448();
  if (a1 > 3u)
  {
    v12 = 0x80000001008BF640;
    v13 = 0xD000000000000010;
    v14 = 0xD000000000000011;
    if (a1 != 6)
    {
      v13 = 0xD000000000000011;
      v12 = 0x80000001008BF660;
    }

    v15 = 0x80000001008BF620;
    if (a1 != 4)
    {
      v14 = 0x507972617262696CLL;
      v15 = 0xEA00000000004644;
    }

    if (a1 <= 5u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (a1 <= 5u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v7 = 0x7972617262696CLL;
    v8 = 0xEF64656873696E69;
    v9 = 0x467972617262696CLL;
    if (a1 != 2)
    {
      v9 = 0x427972617262696CLL;
      v8 = 0xEC000000736B6F6FLL;
    }

    if (a1)
    {
      v7 = 0xD000000000000011;
      v6 = 0x80000001008BF5F0;
    }

    if (a1 <= 1u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (a1 <= 1u)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }
  }

  sub_100484098(v19, v10, v11, v5, v4);

  if (v19[1])
  {

    sub_1007960E4();
    return sub_100247AE4(v19);
  }

  else
  {
    v17 = sub_100796104();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

unint64_t sub_100370D00()
{
  result = qword_100ADE018;
  if (!qword_100ADE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE018);
  }

  return result;
}

unint64_t sub_100370D54()
{
  result = qword_100ADE020;
  if (!qword_100ADE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE020);
  }

  return result;
}

unint64_t sub_100370DAC()
{
  result = qword_100ADE028;
  if (!qword_100ADE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE028);
  }

  return result;
}

uint64_t sub_100370E7C(uint64_t a1)
{
  v2 = sub_10036F750();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100370ECC()
{
  result = qword_100ADE040;
  if (!qword_100ADE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE040);
  }

  return result;
}

uint64_t sub_100370F28(uint64_t a1)
{
  v2 = sub_100370DAC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100370F78()
{
  result = qword_100ADE048;
  if (!qword_100ADE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE048);
  }

  return result;
}

uint64_t sub_100370FCC()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B230E0);
  v21 = sub_100008B98(v3, qword_100B230E0);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_100371370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1007A26F4();
  v3[6] = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_10037140C, v5, v4);
}

id sub_10037140C()
{
  sub_100795A94();
  v1 = *(v0 + 16);
  v2 = [v1 primarySceneController];

  if (![v2 rootBarCoordinator])
  {
    goto LABEL_9;
  }

  type metadata accessor for RootBarCoordinator();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_9:

    if (qword_100AD1450 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100ADDF30);
    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed getting root bar coordinator.", v16, 2u);
    }

    sub_1001FE9A0();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    v18 = *(v0 + 8);
    goto LABEL_21;
  }

  v4 = v3;
  sub_100795A94();
  v5 = *(v0 + 16);
  v6 = [v5 currentSceneController];

  *(v0 + 16) = v6;
  sub_1001F1160(&qword_100ADE0B8);
  v7 = sub_1007A3444();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v7 == v2)
  {
  }

  else
  {
    result = [*(v4 + OBJC_IVAR___BKRootBarCoordinator_rootViewController) view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;

    v10 = [v9 window];

    if (v10)
    {
      v11 = [objc_opt_self() delegate];
      v12 = [v11 menuController];

      sub_1005C97D0(v10);
    }

    else
    {
      if (qword_100AD1450 != -1)
      {
        swift_once();
      }

      v19 = sub_10079ACE4();
      sub_100008B98(v19, qword_100ADDF30);
      v20 = sub_10079ACC4();
      v21 = sub_1007A29B4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Primary scene missing window, cannot bring to front", v22, 2u);
      }
    }
  }

  sub_100795DF4();
  sub_10023EC48(*(v0 + 16));
  sub_100795D24();
  swift_unknownObjectRelease();

  v18 = *(v0 + 8);
LABEL_21:

  return v18();
}

void (*sub_100371804(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_1001FD958;
}

unint64_t sub_10037187C()
{
  result = qword_100ADE050;
  if (!qword_100ADE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE050);
  }

  return result;
}

unint64_t sub_1003718D4()
{
  result = qword_100ADE058;
  if (!qword_100ADE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE058);
  }

  return result;
}

unint64_t sub_10037192C()
{
  result = qword_100ADE060;
  if (!qword_100ADE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE060);
  }

  return result;
}

uint64_t sub_1003719F0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100008B98(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100371A98()
{
  v0 = sub_1001F1160(&qword_100ADE0C0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100ADE0C8);
  __chkstk_darwin(v1);
  sub_1007961D4();
  v3._countAndFlagsBits = 0x206E65704FLL;
  v3._object = 0xE500000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&unk_100ADE0D0);
  sub_1007961B4();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1007961C4(v4);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_100371C38(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_100371370(a1, v5, v4);
}

uint64_t sub_100371CE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003725A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100371D0C(uint64_t a1)
{
  v2 = sub_10037187C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100371D4C()
{
  result = qword_100ADE068;
  if (!qword_100ADE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE068);
  }

  return result;
}

uint64_t sub_100371DE4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100371E60(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1007A26F4();
  *(v1 + 24) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_100371EF8, v3, v2);
}

uint64_t sub_100371EF8()
{
  v1 = *(v0 + 16);

  *v1 = &off_100A0C0D0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100371FB8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0CD00;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100372040()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1003BD4A8(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v11 = v3;
      v8 = v3[3];
      if (v5 >= v8 >> 1)
      {
        sub_1003BD4A8((v8 > 1), v5 + 1, 1);
        v3 = v11;
      }

      v3[2] = v5 + 1;
      *(v3 + v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_10037215C()
{
  sub_1003BD4A8(0, 8, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1003BD4A8((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1003BD4A8((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 <= v5)
  {
    sub_1003BD4A8((v1 > 1), v2 + 3, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = v2 + 4;
  if (v3 <= v6)
  {
    sub_1003BD4A8((v1 > 1), v2 + 4, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v7;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  v8 = v2 + 5;
  if (v3 <= v7)
  {
    sub_1003BD4A8((v1 > 1), v2 + 5, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v7) = 4;
  v9 = v2 + 6;
  if (v3 <= v8)
  {
    sub_1003BD4A8((v1 > 1), v2 + 6, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v8) = 5;
  v10 = v2 + 7;
  if (v3 <= v9)
  {
    sub_1003BD4A8((v1 > 1), v2 + 7, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v10;
  *(&_swiftEmptyArrayStorage[4] + v9) = 6;
  if (v3 <= v10)
  {
    sub_1003BD4A8((v1 > 1), v2 + 8, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 8;
  *(&_swiftEmptyArrayStorage[4] + v10) = 7;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100372448()
{
  v0 = [objc_opt_self() defaultBag];
  v1 = [v0 countryCode];
  if (([v0 isExpired] & 1) != 0 || (objc_msgSend(v1, "isLoaded") & 1) == 0)
  {
  }

  else
  {
    v9 = 0;
    v2 = [v1 valueWithError:&v9];
    v3 = v9;
    if (v2)
    {
      v4 = v2;
      v5 = sub_1007A2254();
      v6 = v3;

      return v5;
    }

    v8 = v9;
    sub_1007967D4();

    swift_willThrow();
  }

  return 29557;
}

uint64_t sub_1003725A4()
{
  v0 = sub_100796274();
  v60 = *(v0 - 8);
  v61 = v0;
  __chkstk_darwin(v0);
  v59 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v2 - 8);
  v58 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v42 - v5;
  v6 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v6 - 8);
  v56 = &v42 - v7;
  v8 = sub_1007967F4();
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  __chkstk_darwin(v8);
  v62 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_100796CF4();
  v11 = *(v52 - 8);
  __chkstk_darwin(v52);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_1007A21D4();
  v43 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v42 - v22;
  v24 = sub_100796814();
  v53 = *(v24 - 8);
  v54 = v24;
  __chkstk_darwin(v24);
  v63 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1001F1160(&qword_100ADE098);
  sub_1007A2154();
  sub_100796C94();
  v51 = *(v18 + 16);
  v51(v20, v23, v17);
  v50 = *(v11 + 16);
  v26 = v52;
  v50(v13, v16, v52);
  v49 = type metadata accessor for BundleFinder();
  v27 = v62;
  *v62 = v49;
  v47 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v28 = *(v65 + 104);
  v65 += 104;
  v48 = v28;
  v28(v27);
  sub_100796834();
  v29 = *(v11 + 8);
  v45 = v11 + 8;
  v46 = v29;
  v30 = v26;
  v29(v16, v26);
  v31 = v18 + 8;
  v32 = *(v18 + 8);
  v44 = v31;
  v33 = v43;
  v32(v23, v43);
  sub_1007A2154();
  sub_100796C94();
  v34 = v20;
  v35 = v33;
  v51(v34, v23, v33);
  v50(v13, v16, v30);
  v36 = v62;
  *v62 = v49;
  v48(v36, v47, v64);
  v37 = v56;
  sub_100796834();
  v46(v16, v30);
  v32(v23, v35);
  (*(v53 + 56))(v37, 0, 1, v54);
  LOBYTE(v66) = 8;
  v38 = sub_100795CE4();
  v39 = *(*(v38 - 8) + 56);
  v39(v57, 1, 1, v38);
  v39(v58, 1, 1, v38);
  (*(v60 + 104))(v59, enum case for InputConnectionBehavior.default(_:), v61);
  sub_100372D28();
  sub_10036F450();
  v40 = sub_100795E44();
  sub_1001F1160(&qword_100AD4A58);
  sub_100795B74();
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v40;
}

unint64_t sub_100372D28()
{
  result = qword_100ADE0A0;
  if (!qword_100ADE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE0A0);
  }

  return result;
}

uint64_t sub_100372DAC(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  return _swift_task_switch(sub_100372DD0, 0, 0);
}

uint64_t sub_100372DD0()
{
  v1 = v0[26];
  v2 = [objc_allocWithZone(AMSEngagement) initWithBag:*(v0[27] + 16)];
  v0[28] = v2;
  v3 = [v2 enqueueEvent:v1];
  v0[29] = v3;
  sub_1001F1160(&qword_100ADE190);
  inited = swift_initStackObject();
  v0[30] = inited;
  *(inited + 16) = v3;
  v5 = v3;

  return _swift_task_switch(sub_100372EA4, 0, 0);
}

uint64_t sub_100372EA4()
{
  v1 = v0[30];
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100372F44;
  v2 = swift_continuation_init();
  sub_1003732AC(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100372F44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_100373238;
  }

  else
  {
    *(v1 + 256) = *(v1 + 192);
    v3 = sub_100373068;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100373068()
{
  v1 = [*(v0 + 256) data];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1007A2044();

    *(v0 + 176) = 0x65736E6F70736572;
    *(v0 + 184) = 0xE800000000000000;
    sub_1007A36B4();
    if (*(v3 + 16))
    {
      v4 = sub_10000E2A4(v0 + 80);
      if (v5)
      {
        v6 = *(v0 + 256);
        v8 = *(v0 + 224);
        v7 = *(v0 + 232);
        v9 = *(v0 + 200);
        sub_100007484(*(v3 + 56) + 32 * v4, v0 + 120);

        sub_10002899C(v0 + 80);

        sub_1000076D4((v0 + 120), v9);
        v10 = *(v0 + 8);
        goto LABEL_8;
      }
    }

    v11 = *(v0 + 256);
    v12 = *(v0 + 232);
    v13 = *(v0 + 224);

    sub_10002899C(v0 + 80);
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v11 = *(v0 + 256);
    v12 = *(v0 + 232);
    v13 = *(v0 + 224);
  }

  sub_100373420();
  swift_allocError();
  *v15 = v14;
  swift_willThrow();

  v10 = *(v0 + 8);
LABEL_8:

  return v10();
}

uint64_t sub_100373238()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1003732AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v12 = sub_1003735CC;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100373474;
  v11 = &unk_100A17CE8;
  v5 = _Block_copy(&v8);

  [v3 addSuccessBlock:v5];
  _Block_release(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v12 = sub_100373628;
  v13 = v6;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100373564;
  v11 = &unk_100A17D38;
  v7 = _Block_copy(&v8);

  [v3 addErrorBlock:v7];
  _Block_release(v7);
}

unint64_t sub_100373420()
{
  result = qword_100ADE198;
  if (!qword_100ADE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE198);
  }

  return result;
}

void sub_100373474(uint64_t a1, void *a2)
{
  sub_100009818();
  v4 = *(a1 + 32);

  v5 = a2;
  v4();
}

uint64_t sub_1003734E8(uint64_t a1, uint64_t a2)
{
  sub_1001F1160(&unk_100AD67F0);
  v4 = swift_allocError();
  *v5 = a1;
  swift_errorRetain();

  return _swift_continuation_throwingResumeWithError(a2, v4);
}

void sub_100373564(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1003735CC(void *a1)
{
  **(*(*(v1 + 16) + 64) + 40) = a1;
  v2 = a1;

  return swift_continuation_throwingResume();
}

unint64_t sub_100373644()
{
  result = qword_100ADE1A0;
  if (!qword_100ADE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE1A0);
  }

  return result;
}

uint64_t sub_1003736A0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003736F4()
{
  type metadata accessor for PropertyValueActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100ADE1B0 = v0;
  return result;
}

char *sub_10037379C()
{
  v1 = &v0[OBJC_IVAR___BKSessionDonor_sessionIdentifier];
  *v1 = sub_1007A2324();
  v1[1] = v2;
  sub_100796BA4();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___BKSessionDonor_sampleButtonUsedConfig;
  v4 = sub_100799884();
  v5 = objc_allocWithZone(v4);
  *&v0[v3] = sub_100799874();
  v6 = OBJC_IVAR___BKSessionDonor_previewButtonUsedConfig;
  v7 = objc_allocWithZone(v4);
  *&v0[v6] = sub_100799874();
  v8 = OBJC_IVAR___BKSessionDonor_addToWTRButtonUsedConfig;
  v9 = objc_allocWithZone(v4);
  *&v0[v8] = sub_100799874();
  v10 = OBJC_IVAR___BKSessionDonor_notificationSettingsVisitedConfig;
  v11 = objc_allocWithZone(v4);
  *&v0[v10] = sub_100799874();
  v12 = OBJC_IVAR___BKSessionDonor_notificationAuthorizationStatusConfig;
  v13 = objc_allocWithZone(v4);
  *&v0[v12] = sub_100799874();
  v14 = OBJC_IVAR___BKSessionDonor_isPairedToWatchConfig;
  v15 = objc_allocWithZone(v4);
  *&v0[v14] = sub_100799874();
  v16 = OBJC_IVAR___BKSessionDonor_everUsedAppleWatchAppConfig;
  v17 = objc_allocWithZone(v4);
  *&v0[v16] = sub_100799874();
  v18 = OBJC_IVAR___BKSessionDonor_everUsedCarplayAppConfig;
  v19 = objc_allocWithZone(v4);
  *&v0[v18] = sub_100799874();
  v20 = OBJC_IVAR___BKSessionDonor_everUsedReadingScrubberAppConfig;
  v21 = objc_allocWithZone(v4);
  *&v0[v20] = sub_100799874();
  v22 = OBJC_IVAR___BKSessionDonor_everUsedDoubleTapToBookmarkAppConfig;
  v23 = objc_allocWithZone(v4);
  *&v0[v22] = sub_100799874();
  v24 = OBJC_IVAR___BKSessionDonor_everUsedOrientationLockMenuButtonAppConfig;
  v25 = objc_allocWithZone(v4);
  *&v0[v24] = sub_100799874();
  v26 = OBJC_IVAR___BKSessionDonor_readingSessionInProgressConfig;
  v27 = objc_allocWithZone(v4);
  *&v0[v26] = sub_100799874();
  v28 = OBJC_IVAR___BKSessionDonor_listeningSessionInProgressConfig;
  v29 = objc_allocWithZone(v4);
  *&v0[v28] = sub_100799874();
  v30 = OBJC_IVAR___BKSessionDonor_connectedToCarplayConfig;
  v31 = objc_allocWithZone(v4);
  *&v0[v30] = sub_100799874();
  v32 = OBJC_IVAR___BKSessionDonor_everUsedCarplayConfig;
  v33 = objc_allocWithZone(v4);
  *&v0[v32] = sub_100799874();
  v34 = OBJC_IVAR___BKSessionDonor_currentTabConfig;
  v35 = sub_100799844();
  v36 = objc_allocWithZone(v35);
  *&v0[v34] = sub_100799834();
  v37 = OBJC_IVAR___BKSessionDonor_recentBooksConfig;
  v38 = objc_allocWithZone(v35);
  *&v0[v37] = sub_100799834();
  v39 = OBJC_IVAR___BKSessionDonor_sampleBooksConfig;
  v40 = objc_allocWithZone(v35);
  *&v0[v39] = sub_100799834();
  v41 = OBJC_IVAR___BKSessionDonor_storeBooksConfig;
  v42 = objc_allocWithZone(v35);
  *&v0[v41] = sub_100799834();
  *&v0[OBJC_IVAR___BKSessionDonor_productPageViewed] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___BKSessionDonor_purchases] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___BKSessionDonor_readingSessions] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___BKSessionDonor_listeningSessions] = _swiftEmptyArrayStorage;
  v43 = &v0[OBJC_IVAR___BKSessionDonor_notificationAuthorizationStatus];
  *v43 = 0;
  v43[8] = 1;
  v0[OBJC_IVAR___BKSessionDonor_sampleButtonUsed] = 0;
  v0[OBJC_IVAR___BKSessionDonor_previewButtonUsed] = 0;
  v0[OBJC_IVAR___BKSessionDonor_addToWTRButtonUsed] = 0;
  v0[OBJC_IVAR___BKSessionDonor_everUsedAppleWatchApp] = 0;
  v0[OBJC_IVAR___BKSessionDonor_everUsedCarplayApp] = 0;
  v0[OBJC_IVAR___BKSessionDonor_notificationSettingsVisited] = 0;
  v0[OBJC_IVAR___BKSessionDonor_everUsedCarplay] = 0;
  v0[OBJC_IVAR___BKSessionDonor_everUsedReadingScrubber] = 0;
  v0[OBJC_IVAR___BKSessionDonor_everUsedDoubleTapToBookmark] = 0;
  v0[OBJC_IVAR___BKSessionDonor_everUsedOrientationLockMenuButton] = 0;
  *&v0[OBJC_IVAR___BKSessionDonor_recentBooksProvider] = 0;
  *&v0[OBJC_IVAR___BKSessionDonor_sampleBooksProvider] = 0;
  *&v0[OBJC_IVAR___BKSessionDonor_storeBooksProvider] = 0;
  *&v0[OBJC_IVAR___BKSessionDonor_recentBooks] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___BKSessionDonor_sampleBooks] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___BKSessionDonor_storeBooks] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___BKSessionDonor_readingSessionInProgress] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR___BKSessionDonor_listeningSessionInProgress] = &_swiftEmptySetSingleton;
  v44 = &v0[OBJC_IVAR___BKSessionDonor_rootBarCoordinator];
  *v44 = 0;
  v44[1] = 0;
  *&v0[OBJC_IVAR___BKSessionDonor_currentTabPublisherCancellable] = 0;
  *&v0[OBJC_IVAR___BKSessionDonor_carSessionStatus] = 0;
  v45 = &v0[OBJC_IVAR___BKSessionDonor_currentTab];
  *v45 = 0x6E776F6E6B6E75;
  v45[1] = 0xE700000000000000;
  v46 = objc_allocWithZone(sub_1007998A4());

  *&v0[OBJC_IVAR___BKSessionDonor_sessionConfiguration] = sub_100799894();
  v47 = sub_1007A2214();

  v93.receiver = v0;
  v93.super_class = type metadata accessor for SessionDonor();
  v48 = objc_msgSendSuper2(&v93, "initWithType:", v47);

  sub_1001F1160(&unk_100AD8160);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10081E170;
  v50 = *&v48[OBJC_IVAR___BKSessionDonor_sessionConfiguration];
  *(v49 + 32) = v50;
  v51 = *&v48[OBJC_IVAR___BKSessionDonor_sampleButtonUsedConfig];
  *(v49 + 40) = v51;
  v52 = *&v48[OBJC_IVAR___BKSessionDonor_previewButtonUsedConfig];
  *(v49 + 48) = v52;
  v53 = *&v48[OBJC_IVAR___BKSessionDonor_addToWTRButtonUsedConfig];
  *(v49 + 56) = v53;
  v54 = *&v48[OBJC_IVAR___BKSessionDonor_isPairedToWatchConfig];
  *(v49 + 64) = v54;
  v55 = *&v48[OBJC_IVAR___BKSessionDonor_everUsedAppleWatchAppConfig];
  *(v49 + 72) = v55;
  v56 = *&v48[OBJC_IVAR___BKSessionDonor_everUsedCarplayAppConfig];
  *(v49 + 80) = v56;
  v57 = *&v48[OBJC_IVAR___BKSessionDonor_everUsedReadingScrubberAppConfig];
  *(v49 + 88) = v57;
  v81 = *&v48[OBJC_IVAR___BKSessionDonor_everUsedDoubleTapToBookmarkAppConfig];
  *(v49 + 96) = v81;
  v82 = *&v48[OBJC_IVAR___BKSessionDonor_everUsedOrientationLockMenuButtonAppConfig];
  *(v49 + 104) = v82;
  v83 = *&v48[OBJC_IVAR___BKSessionDonor_readingSessionInProgressConfig];
  *(v49 + 112) = v83;
  v84 = *&v48[OBJC_IVAR___BKSessionDonor_listeningSessionInProgressConfig];
  *(v49 + 120) = v84;
  v85 = *&v48[OBJC_IVAR___BKSessionDonor_connectedToCarplayConfig];
  *(v49 + 128) = v85;
  v86 = *&v48[OBJC_IVAR___BKSessionDonor_currentTabConfig];
  *(v49 + 136) = v86;
  v87 = *&v48[OBJC_IVAR___BKSessionDonor_sampleBooksConfig];
  *(v49 + 144) = v87;
  v88 = *&v48[OBJC_IVAR___BKSessionDonor_recentBooksConfig];
  *(v49 + 152) = v88;
  v89 = *&v48[OBJC_IVAR___BKSessionDonor_storeBooksConfig];
  *(v49 + 160) = v89;
  v90 = *&v48[OBJC_IVAR___BKSessionDonor_notificationSettingsVisitedConfig];
  *(v49 + 168) = v90;
  v91 = *&v48[OBJC_IVAR___BKSessionDonor_everUsedCarplayConfig];
  *(v49 + 176) = v91;
  v92 = *&v48[OBJC_IVAR___BKSessionDonor_notificationAuthorizationStatusConfig];
  *(v49 + 184) = v92;
  sub_100799824();
  v58 = v48;
  v59 = v50;
  v60 = v51;
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v70 = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v78 = v92;
  isa = sub_1007A25D4().super.isa;

  [v58 setEventConfigurations:isa];

  return v58;
}

void sub_1003741B4(void *a1)
{
  v3 = objc_opt_self();
  v4 = [v3 recentlyEngagedAssetsProvider:10];
  v5 = *&v1[OBJC_IVAR___BKSessionDonor_recentBooksProvider];
  *&v1[OBJC_IVAR___BKSessionDonor_recentBooksProvider] = v4;
  v6 = v4;

  if (v6)
  {
    [v6 setDelegate:v1];
  }

  v7 = [v3 mySamplesLibraryProvider:-1];
  v8 = *&v1[OBJC_IVAR___BKSessionDonor_sampleBooksProvider];
  *&v1[OBJC_IVAR___BKSessionDonor_sampleBooksProvider] = v7;
  v9 = v7;

  if (v9)
  {
    [v9 setDelegate:v1];
  }

  v10 = [v3 storeAssetProvider:-1];
  v11 = *&v1[OBJC_IVAR___BKSessionDonor_storeBooksProvider];
  *&v1[OBJC_IVAR___BKSessionDonor_storeBooksProvider] = v10;
  v12 = v10;

  if (v12)
  {
    [v12 setDelegate:v1];
  }

  swift_unknownObjectWeakAssign();
  sub_1003749BC(a1);
  v13 = [objc_opt_self() sharedInstance];
  [v13 addSessionObserver:v1];

  sub_10037447C();
  sub_100374774();
  v14 = [objc_allocWithZone(CARSessionStatus) init];
  v15 = *&v1[OBJC_IVAR___BKSessionDonor_carSessionStatus];
  *&v1[OBJC_IVAR___BKSessionDonor_carSessionStatus] = v14;

  if (v14)
  {
    v16 = v14;
    [v16 addSessionObserver:v1];
    [v1 propertyDidChange:v1 propertyConfiguration:*&v1[OBJC_IVAR___BKSessionDonor_connectedToCarplayConfig]];
  }

  v17 = [objc_allocWithZone(CRPairedVehicleManager) init];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20[4] = sub_10037AC08;
  v20[5] = v18;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10037745C;
  v20[3] = &unk_100A18098;
  v19 = _Block_copy(v20);

  [v17 fetchPairedVehiclesWithCompletion:v19];
  _Block_release(v19);
}

uint64_t sub_10037447C()
{
  v0 = sub_1007A1C54();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CA4();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v6 = sub_1007A2D74();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10037AB84;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A180E8;
  v8 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10037AB8C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

void sub_100374774()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_10037AC04;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1003787A0;
  v5[3] = &unk_100A180C0;
  v3 = _Block_copy(v5);

  [v1 getAuthorizationStatusWithCompletion:v3];
  _Block_release(v3);

  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v0 selector:"userNotificationSettingsDidChange" name:@"UNUserNotificationCenterDidChangeSettings" object:0];
}

void sub_1003748C4()
{
  v0 = [objc_allocWithZone(CRPairedVehicleManager) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_100378AC8;
  v3[5] = v1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10037745C;
  v3[3] = &unk_100A17EB8;
  v2 = _Block_copy(v3);

  [v0 fetchPairedVehiclesWithCompletion:v2];
  _Block_release(v2);
}

uint64_t sub_1003749BC(void *a1)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100799914();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100799914();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100799914();

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  v4 = a1;
  sub_100799914();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100799914();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100799914();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100799914();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100799914();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100799914();
}

void sub_100374DA4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(a1 + 16))
    {
      v4 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8[0] = v4;
      *(v8 + 9) = *(a1 + 57);
      sub_100359B60(&v7, v6);
      sub_100799794();
      sub_100359BBC(&v7);
      if (swift_dynamicCast())
      {
        v5 = v6[0] > 0;
        v3[OBJC_IVAR___BKSessionDonor_everUsedAppleWatchApp] = v5;
        if (v5 != sub_100378AD0())
        {
          sub_1007999F4();
        }
      }
    }
  }
}

void sub_100374EAC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(a1 + 16))
    {
      v7 = *(a1 + 48);
      v9 = *(a1 + 32);
      v10[0] = v7;
      *(v10 + 9) = *(a1 + 57);
      sub_100359B60(&v9, v8);
      sub_100799794();
      sub_100359BBC(&v9);
      if (swift_dynamicCast())
      {
        v6[*a3] = v8[0] > 0;
      }
    }
  }
}

uint64_t sub_100374F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[55] = a5;
  v6[56] = a6;
  v6[54] = a4;
  v7 = sub_100796AD4();
  v6[57] = v7;
  v6[58] = *(v7 - 8);
  v6[59] = swift_task_alloc();
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v8 = qword_100ADE1B0;

  return _swift_task_switch(sub_100375078, v8, 0);
}

uint64_t sub_100375078()
{
  v20 = *(v0 + 464);
  v1 = *(v0 + 448);
  v18 = *(v0 + 472);
  v19 = *(v0 + 456);
  v23 = *(v0 + 432);
  v2 = sub_1007997F4();
  v21 = v3;
  v22 = v2;
  sub_1001F1160(&unk_100ADE588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10081E180;
  *(inited + 32) = 0x53676E6964616572;
  *(inited + 40) = 0xEF736E6F69737365;
  v5 = OBJC_IVAR___BKSessionDonor_readingSessions;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = sub_1001F1160(&unk_100AD61F0);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001008CDB20;
  v8 = OBJC_IVAR___BKSessionDonor_listeningSessions;
  swift_beginAccess();
  *(inited + 96) = *(v1 + v8);
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001008CDAF0;
  v9 = OBJC_IVAR___BKSessionDonor_productPageViewed;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_1001F1160(&qword_100ADE598);
  *(inited + 144) = v10;
  *(inited + 168) = v11;
  *(inited + 176) = 0x6573616863727570;
  *(inited + 184) = 0xE900000000000073;
  v12 = OBJC_IVAR___BKSessionDonor_purchases;
  swift_beginAccess();
  *(inited + 192) = *(v1 + v12);
  *(inited + 216) = v11;
  *(inited + 224) = 0x7461447472617473;
  *(inited + 232) = 0xE900000000000065;

  sub_1007963F4();
  *(inited + 264) = &type metadata for String;
  sub_10037AB8C(&qword_100ADD570, &type metadata accessor for Date.ISO8601FormatStyle);
  sub_100796B94();
  (*(v20 + 8))(v18, v19);
  v13 = sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_1001F1160(&qword_100AD35D0);
  swift_arrayDestroy();
  *(v0 + 288) = v22;
  *(v0 + 296) = v21;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 304) = v13;
  *(v0 + 328) = 1;
  v14 = objc_allocWithZone(sub_1007997D4());
  v15 = sub_1007997C4();
  v23();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1003753DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v7 = qword_100ADE1B0;

  return _swift_task_switch(sub_100375478, v7, 0);
}

uint64_t sub_100375478()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  sub_1001F1160(&unk_100ADE588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v5 = *(v1 + OBJC_IVAR___BKSessionDonor_currentTab);
  v4 = *(v1 + OBJC_IVAR___BKSessionDonor_currentTab + 8);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v6 = sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AD35D0);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v6;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  v7 = objc_allocWithZone(sub_1007997D4());
  v8 = sub_1007997C4();
  v2();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003755D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v7 = qword_100ADE1B0;

  return _swift_task_switch(sub_10037566C, v7, 0);
}

uint64_t sub_10037566C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  sub_1001F1160(&unk_100ADE588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = 0x736B6F6F62;
  *(inited + 40) = 0xE500000000000000;
  v4 = *(v1 + OBJC_IVAR___BKSessionDonor_recentBooks);
  *(inited + 72) = sub_1001F1160(&qword_100ADE598);
  *(inited + 48) = v4;

  v5 = sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AD35D0);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v5;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  v6 = objc_allocWithZone(sub_1007997D4());
  v7 = sub_1007997C4();
  v2();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003757C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v7 = qword_100ADE1B0;

  return _swift_task_switch(sub_100375864, v7, 0);
}

uint64_t sub_100375864()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  sub_1001F1160(&unk_100ADE588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = 0x736B6F6F62;
  *(inited + 40) = 0xE500000000000000;
  v4 = *(v1 + OBJC_IVAR___BKSessionDonor_sampleBooks);
  *(inited + 72) = sub_1001F1160(&qword_100ADE598);
  *(inited + 48) = v4;

  v5 = sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AD35D0);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v5;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  v6 = objc_allocWithZone(sub_1007997D4());
  v7 = sub_1007997C4();
  v2();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003759C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v7 = qword_100ADE1B0;

  return _swift_task_switch(sub_100375A5C, v7, 0);
}

uint64_t sub_100375A5C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  sub_1001F1160(&unk_100ADE588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = 0x736B6F6F62;
  *(inited + 40) = 0xE500000000000000;
  v4 = *(v1 + OBJC_IVAR___BKSessionDonor_storeBooks);
  *(inited + 72) = sub_1001F1160(&qword_100ADE598);
  *(inited + 48) = v4;

  v5 = sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AD35D0);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v5;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  v6 = objc_allocWithZone(sub_1007997D4());
  v7 = sub_1007997C4();
  v2();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100375C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v6 = qword_100ADE1B0;

  return _swift_task_switch(sub_100375D0C, v6, 0);
}

uint64_t sub_100375D0C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___BKSessionDonor_purchases;
  swift_beginAccess();
  v3 = *(v1 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10066B4D0(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_10066B4D0((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[6];
  v3[2] = v6 + 1;
  v3[v6 + 4] = v7;
  *(v1 + v2) = v3;
  swift_endAccess();
  v8 = v0[1];

  return v8();
}

_BYTE *sub_100376078(_BYTE *result, uint64_t a2, void *a3, void *a4)
{
  if ((result[*a3] & 1) == 0)
  {
    result[*a3] = 1;
    return [result propertyDidChange:result propertyConfiguration:*&result[*a4]];
  }

  return result;
}

id sub_1003760A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = qword_100AD1478;
  v16 = v5;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_100ADE1B0;
  v18 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  *(v19 + 32) = v16;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3;
  *(v19 + 64) = a4;
  *(v19 + 72) = a5 & 1;

  sub_1003457A0(0, 0, v13, &unk_10081E2F8, v19);

  return [v16 propertyDidChange:v16 propertyConfiguration:*&v16[OBJC_IVAR___BKSessionDonor_sessionConfiguration]];
}

uint64_t sub_100376294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v12;
  *(v8 + 240) = a7;
  *(v8 + 248) = a8;
  *(v8 + 224) = a5;
  *(v8 + 232) = a6;
  *(v8 + 216) = a4;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v9 = qword_100ADE1B0;

  return _swift_task_switch(sub_100376340, v9, 0);
}

uint64_t sub_100376340()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 216);
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 0x49746375646F7270;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x54746375646F7270;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 96) = v3;
  *(inited + 104) = v2;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1196651369;
  *(inited + 136) = 0xE400000000000000;
  v8 = objc_allocWithZone(NSNumber);

  v9 = [v8 initWithBool:v1];
  *(inited + 168) = sub_10000A7C4(0, &qword_100AD6750);
  *(inited + 144) = v9;
  v10 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  v11 = OBJC_IVAR___BKSessionDonor_productPageViewed;
  swift_beginAccess();
  v12 = *(v6 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_10066B4D0(0, v12[2] + 1, 1, v12);
    *(v6 + v11) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_10066B4D0((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v12[v15 + 4] = v10;
  *(v6 + v11) = v12;
  swift_endAccess();
  v16 = *(v0 + 8);

  return v16();
}

id sub_100376620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionDonor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SessionDonor()
{
  result = qword_100ADE400;
  if (!qword_100ADE400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100376980()
{
  result = sub_100796BB4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100376AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v7 = qword_100ADE1B0;

  return _swift_task_switch(sub_100376B5C, v7, 0);
}

uint64_t sub_100376B5C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___BKSessionDonor_readingSessions;
  swift_beginAccess();
  v3 = *(v1 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10000B3D8(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_10000B3D8((v5 > 1), v6 + 1, 1, v3);
  }

  v8 = v0[6];
  v7 = v0[7];
  *(v3 + 2) = v6 + 1;
  v9 = &v3[16 * v6];
  *(v9 + 4) = v8;
  *(v9 + 5) = v7;
  *(v1 + v2) = v3;
  swift_endAccess();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100376C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v7 = qword_100ADE1B0;

  return _swift_task_switch(sub_100376D10, v7, 0);
}

uint64_t sub_100376D10()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___BKSessionDonor_listeningSessions;
  swift_beginAccess();
  v3 = *(v1 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10000B3D8(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_10000B3D8((v5 > 1), v6 + 1, 1, v3);
  }

  v8 = v0[6];
  v7 = v0[7];
  *(v3 + 2) = v6 + 1;
  v9 = &v3[16 * v6];
  *(v9 + 4) = v8;
  *(v9 + 5) = v7;
  *(v1 + v2) = v3;
  swift_endAccess();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100377054()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() sceneManager];
    v3 = [v2 primarySceneController];

    v4 = [v3 rootBarCoordinator];
    if (v4)
    {
      swift_getObjectType();
      v5 = sub_100467E5C();
      v7 = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = &v1[OBJC_IVAR___BKSessionDonor_rootBarCoordinator];
    *v8 = v5;
    v8[1] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(ObjectType, v7);
      swift_unknownObjectRelease();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1001F1160(&unk_100AECA30);
      sub_100005920(&unk_100ADE5A0, &unk_100AECA30);
      v10 = sub_10079BB04();
    }

    else
    {
      v10 = 0;
    }

    *&v1[OBJC_IVAR___BKSessionDonor_currentTabPublisherCancellable] = v10;
  }

  return result;
}

uint64_t sub_10037726C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (v1)
    {
      v4 = *(v1 + OBJC_IVAR___BKRootBarItem_identifier + 8);
      v5 = &v3[OBJC_IVAR___BKSessionDonor_currentTab];
      *v5 = *(v1 + OBJC_IVAR___BKRootBarItem_identifier);
      *(v5 + 1) = v4;
    }

    else
    {
      v6 = (result + OBJC_IVAR___BKSessionDonor_currentTab);
      *v6 = 0x6E776F6E6B6E75;
      v6[1] = 0xE700000000000000;
    }
  }

  return result;
}

void sub_10037736C(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1001F1160(&qword_100ADE568);
      sub_100005920(&qword_100ADE570, &qword_100ADE568);
      v3[OBJC_IVAR___BKSessionDonor_everUsedCarplay] = sub_1007A28A4() & 1;
      [v3 propertyDidChange:v3 propertyConfiguration:{*&v3[OBJC_IVAR___BKSessionDonor_connectedToCarplayConfig], a1}];
    }
  }
}

uint64_t sub_10037745C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000A7C4(0, &qword_100ADE560);
    v4 = sub_1007A25E4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100377584(unint64_t a1, unint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v49 = a2;
  if (a2 >> 62)
  {
    goto LABEL_18;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v47 = &v46 - v5;
  for (i = a1; v7; i = a1)
  {
    v8 = 0;
    v6 = v49;
    v9 = v49 & 0xC000000000000001;
    v10 = v49 & 0xFFFFFFFFFFFFFF8;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v9)
      {
        v12 = sub_1007A3784();
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_17;
        }

        v12 = *&v6[8 * v8 + 32];
      }

      v13 = v12;
      a1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v52 = v12;
      sub_100377D3C(&v52, &v51);

      v14 = v51;
      if (v51)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10066B4D0(0, v11[2] + 1, 1, v11);
        }

        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v11 = sub_10066B4D0((v15 > 1), v16 + 1, 1, v11);
        }

        v11[2] = v16 + 1;
        v11[v16 + 4] = v14;
        v6 = v49;
      }

      ++v8;
      if (a1 == v7)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v7 = sub_1007A38D4();
    v47 = v6;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_20:
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v18 = v47;
  if (v17)
  {
    v19 = *&v50[OBJC_IVAR___BKSessionDonor_sampleBooksProvider];
    if (v19)
    {
      sub_10000A7C4(0, &unk_100ADE540);
      swift_unknownObjectRetain_n();
      v20 = v19;
      v21 = sub_1007A3184();

      if (v21)
      {
        swift_unknownObjectRelease();
        v22 = sub_1007A2744();
        (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
        v23 = qword_100AD1478;
        v24 = v50;
        if (v23 != -1)
        {
          swift_once();
        }

        v25 = qword_100ADE1B0;
        v26 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
        v27 = swift_allocObject();
        v27[2] = v25;
        v27[3] = v26;
        v27[4] = v24;
        v27[5] = v11;

        sub_1003457A0(0, 0, v18, &unk_10081E2B0, v27);

        v28 = OBJC_IVAR___BKSessionDonor_sampleBooksConfig;
LABEL_40:
        [v24 propertyDidChange:v24 propertyConfiguration:*&v24[v28]];
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRetain_n();
    }

    v30 = *&v50[OBJC_IVAR___BKSessionDonor_recentBooksProvider];
    if (v30)
    {
      sub_10000A7C4(0, &unk_100ADE540);
      swift_unknownObjectRetain();
      v31 = v30;
      v32 = sub_1007A3184();

      swift_unknownObjectRelease();
      if (v32)
      {
        swift_unknownObjectRelease();
        v33 = sub_1007A2744();
        (*(*(v33 - 8) + 56))(v18, 1, 1, v33);
        v34 = qword_100AD1478;
        v24 = v50;
        if (v34 != -1)
        {
          swift_once();
        }

        v35 = qword_100ADE1B0;
        v36 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
        v37 = swift_allocObject();
        v37[2] = v35;
        v37[3] = v36;
        v37[4] = v24;
        v37[5] = v11;

        sub_1003457A0(0, 0, v18, &unk_10081E2A0, v37);

        v28 = OBJC_IVAR___BKSessionDonor_recentBooksConfig;
        goto LABEL_40;
      }
    }

    v38 = *&v50[OBJC_IVAR___BKSessionDonor_storeBooksProvider];
    if (v38)
    {
      sub_10000A7C4(0, &unk_100ADE540);
      v39 = v38;
      v40 = sub_1007A3184();

      swift_unknownObjectRelease();
      if (v40)
      {
        v41 = sub_1007A2744();
        (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
        v42 = qword_100AD1478;
        v24 = v50;
        if (v42 != -1)
        {
          swift_once();
        }

        v43 = qword_100ADE1B0;
        v44 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
        v45 = swift_allocObject();
        v45[2] = v43;
        v45[3] = v44;
        v45[4] = v24;
        v45[5] = v11;

        sub_1003457A0(0, 0, v18, &unk_10081E290, v45);

        v28 = OBJC_IVAR___BKSessionDonor_storeBooksConfig;
        goto LABEL_40;
      }

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
  }
}

uint64_t sub_100377CA8(void *a1, uint64_t a2, unint64_t a3)
{
  sub_10000A7C4(0, &unk_100ADE530);
  v5 = sub_1007A25E4();
  swift_unknownObjectRetain();
  v6 = a1;
  sub_100377584(a3, v5);
  swift_unknownObjectRelease();
}

uint64_t sub_100377D3C@<X0>(id *a1@<X0>, unint64_t *a2@<X8>)
{
  v58 = a2;
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [*a1 assetID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1007A2254();
    v56 = v13;

    v14 = [v9 title];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1007A2254();
      v54 = v17;
      v55 = v16;
    }

    else
    {
      v54 = 0xE000000000000000;
      v55 = 0;
    }

    isa = [v9 readingProgress];
    if (!isa)
    {
      sub_10000A7C4(0, &qword_100AD6750);
      isa = sub_1007A3154(0).super.super.isa;
    }

    v53 = [v9 isFinished];
    if ([v9 isSample])
    {
      v52 = 1;
    }

    else
    {
      v52 = [v9 isNonLocalSample];
    }

    v57 = v2;
    v51 = [v9 isLocal];
    v50 = [v9 isNew];
    v28 = [v9 seriesID];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1007A2254();
      v48 = v31;
      v49 = v30;
    }

    else
    {
      v48 = 0xE000000000000000;
      v49 = 0;
    }

    v32 = 0x6E776F6E6B6E75;
    v33 = [v9 contentType];
    if (v33)
    {
      v34 = v33;
      v35 = [objc_opt_self() stringForBCContentType:{objc_msgSend(v34, "integerValue")}];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 lowercaseString];
        v32 = sub_1007A2254();
        v39 = v38;

LABEL_21:
        sub_1001F1160(&unk_100ADE550);
        inited = swift_initStackObject();
        *(inited + 32) = 0x44497465737361;
        *(inited + 16) = xmmword_10080B6A0;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = v12;
        *(inited + 56) = v56;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0x656C746974;
        v41 = v54;
        v42 = v55;
        *(inited + 88) = 0xE500000000000000;
        *(inited + 96) = v42;
        *(inited + 104) = v41;
        *(inited + 120) = &type metadata for String;
        *(inited + 128) = 0x50676E6964616572;
        *(inited + 136) = 0xEF73736572676F72;
        v43 = sub_10000A7C4(0, &qword_100AD6750);
        *(inited + 144) = isa;
        *(inited + 168) = v43;
        *(inited + 176) = 0x6873696E69467369;
        *(inited + 184) = 0xEA00000000006465;
        v44 = v52;
        *(inited + 192) = v53;
        *(inited + 216) = &type metadata for Bool;
        *(inited + 224) = 0x656C706D61537369;
        *(inited + 232) = 0xE800000000000000;
        *(inited + 240) = v44;
        *(inited + 264) = &type metadata for Bool;
        *(inited + 272) = 0x6C61636F4C7369;
        *(inited + 280) = 0xE700000000000000;
        *(inited + 288) = v51;
        *(inited + 312) = &type metadata for Bool;
        *(inited + 320) = 0x77654E7369;
        *(inited + 328) = 0xE500000000000000;
        *(inited + 336) = v50;
        *(inited + 360) = &type metadata for Bool;
        *(inited + 368) = 0x4449736569726573;
        v45 = v48;
        v46 = v49;
        *(inited + 376) = 0xE800000000000000;
        *(inited + 384) = v46;
        *(inited + 392) = v45;
        *(inited + 408) = &type metadata for String;
        *(inited + 416) = 0x54746E65746E6F63;
        *(inited + 456) = &type metadata for String;
        *(inited + 424) = 0xEB00000000657079;
        *(inited + 432) = v32;
        *(inited + 440) = v39;
        v26 = sub_100019158(inited);
        swift_setDeallocating();
        sub_1001F1160(&unk_100ADD560);
        result = swift_arrayDestroy();
        goto LABEL_22;
      }
    }

    v39 = 0xE700000000000000;
    goto LABEL_21;
  }

  sub_10079AC84();
  v18 = v9;
  v19 = sub_10079ACC4();
  v20 = sub_1007A29B4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v57 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "We found a corrupted asset %@", v22, 0xCu);
    sub_100007840(v23, &unk_100AD9480);
  }

  result = (*(v5 + 8))(v8, v4);
  v26 = 0;
LABEL_22:
  *v58 = v26;
  return result;
}

uint64_t sub_1003782EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v6 = qword_100ADE1B0;

  return _swift_task_switch(sub_100378384, v6, 0);
}

uint64_t sub_100378384()
{
  *(v0[2] + OBJC_IVAR___BKSessionDonor_sampleBooks) = v0[3];

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003783FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v6 = qword_100ADE1B0;

  return _swift_task_switch(sub_100378494, v6, 0);
}

uint64_t sub_100378494()
{
  *(v0[2] + OBJC_IVAR___BKSessionDonor_recentBooks) = v0[3];

  v1 = v0[1];

  return v1();
}

uint64_t sub_10037850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_100AD1478 != -1)
  {
    swift_once();
  }

  v6 = qword_100ADE1B0;

  return _swift_task_switch(sub_1003785A4, v6, 0);
}

uint64_t sub_1003785A4()
{
  *(v0[2] + OBJC_IVAR___BKSessionDonor_storeBooks) = v0[3];

  v1 = v0[1];

  return v1();
}

void sub_10037861C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_100378878;
  v3[5] = v1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1003787A0;
  v3[3] = &unk_100A17E18;
  v2 = _Block_copy(v3);

  [v0 getAuthorizationStatusWithCompletion:v2];
  _Block_release(v2);
}

void sub_10037871C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = &Strong[OBJC_IVAR___BKSessionDonor_notificationAuthorizationStatus];
    *v3 = a1;
    v3[8] = 0;
    v4 = Strong;
    [Strong propertyDidChange:Strong propertyConfiguration:*&Strong[OBJC_IVAR___BKSessionDonor_notificationAuthorizationStatusConfig]];
  }
}

uint64_t sub_1003787A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100378888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_10037850C(a1, v4, v5, v7, v6);
}

uint64_t sub_100378948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1003783FC(a1, v4, v5, v7, v6);
}

uint64_t sub_100378A08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1003782EC(a1, v4, v5, v7, v6);
}

BOOL sub_100378AD0()
{
  v0 = sub_100796BB4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = [objc_opt_self() sharedDefaults];
  v8 = sub_1007A2214();
  v9 = [v7 lastLocalPlaybackDateForBundleID:v8];

  if (v9)
  {
    sub_100796B64();

    (*(v1 + 32))(v6, v3, v0);
    (*(v1 + 56))(v6, 0, 1, v0);
  }

  else
  {
    (*(v1 + 56))(v6, 1, 1, v0);
  }

  sub_100007840(v6, &unk_100ADB5C0);
  return v9 != 0;
}

void sub_100378CC0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void (**a5)(void, void))
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = v101 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  _Block_copy(a5);
  v13 = sub_1007998D4();
  if (!a3)
  {

    goto LABEL_13;
  }

  if (v13 == a2 && v14 == a3)
  {

    goto LABEL_7;
  }

  v15 = sub_1007A3AB4();

  if ((v15 & 1) == 0)
  {
LABEL_13:
    memset(&v101[4], 0, 40);
    v102 = -1;
    v22 = sub_1007997D4();
LABEL_18:
    v25 = objc_allocWithZone(v22);
    v101[0] = sub_1007997C4();
    a5[2](a5, v101[0]);

    v26 = v101[0];

    return;
  }

LABEL_7:
  v16 = sub_100799814();
  v18 = v17;
  if (sub_100799814() == v16 && v19 == v18)
  {

LABEL_15:

    v23 = OBJC_IVAR___BKSessionDonor_sampleButtonUsed;
LABEL_16:
    v24 = a4[v23];
LABEL_17:
    v101[4] = v24;
    v22 = sub_1007997D4();
    memset(&v101[5], 0, 32);
    v102 = 0;
    goto LABEL_18;
  }

  v21 = sub_1007A3AB4();

  if (v21)
  {
    goto LABEL_15;
  }

  if (sub_100799814() == v16 && v27 == v18)
  {

LABEL_25:

    v23 = OBJC_IVAR___BKSessionDonor_previewButtonUsed;
    goto LABEL_16;
  }

  v28 = sub_1007A3AB4();

  if (v28)
  {
    goto LABEL_25;
  }

  if (sub_100799814() == v16 && v29 == v18)
  {

LABEL_30:

    v23 = OBJC_IVAR___BKSessionDonor_addToWTRButtonUsed;
    goto LABEL_16;
  }

  v30 = sub_1007A3AB4();

  if (v30)
  {
    goto LABEL_30;
  }

  if (sub_100799814() == v16 && v31 == v18)
  {

LABEL_35:

    v33 = OBJC_IVAR___BKSessionDonor_everUsedAppleWatchApp;
    v34 = (a4[OBJC_IVAR___BKSessionDonor_everUsedAppleWatchApp] & 1) != 0 || sub_100378AD0();
    a4[v33] = v34;
    v24 = v34;
    goto LABEL_17;
  }

  v32 = sub_1007A3AB4();

  if (v32)
  {
    goto LABEL_35;
  }

  if (sub_100799814() == v16 && v35 == v18)
  {

LABEL_43:

    v37 = [objc_opt_self() sharedInstance];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 isPaired];

      v24 = v39;
      goto LABEL_17;
    }

    _Block_release(a5);
    __break(1u);
    goto LABEL_95;
  }

  v36 = sub_1007A3AB4();

  if (v36)
  {
    goto LABEL_43;
  }

  if (sub_100799814() == v16 && v40 == v18)
  {

LABEL_49:

    v23 = OBJC_IVAR___BKSessionDonor_everUsedCarplayApp;
    goto LABEL_16;
  }

  v41 = sub_1007A3AB4();

  if (v41)
  {
    goto LABEL_49;
  }

  if (sub_100799814() == v16 && v42 == v18)
  {

LABEL_54:

    v23 = OBJC_IVAR___BKSessionDonor_everUsedReadingScrubber;
    goto LABEL_16;
  }

  v43 = sub_1007A3AB4();

  if (v43)
  {
    goto LABEL_54;
  }

  if (sub_100799814() == v16 && v44 == v18)
  {

LABEL_59:

    v23 = OBJC_IVAR___BKSessionDonor_everUsedDoubleTapToBookmark;
    goto LABEL_16;
  }

  v45 = sub_1007A3AB4();

  if (v45)
  {
    goto LABEL_59;
  }

  if (sub_100799814() == v16 && v46 == v18)
  {

LABEL_64:

    v23 = OBJC_IVAR___BKSessionDonor_everUsedOrientationLockMenuButton;
    goto LABEL_16;
  }

  v47 = sub_1007A3AB4();

  if (v47)
  {
    goto LABEL_64;
  }

  if (sub_100799814() == v16 && v48 == v18)
  {

LABEL_69:

    v23 = OBJC_IVAR___BKSessionDonor_notificationSettingsVisited;
    goto LABEL_16;
  }

  v49 = sub_1007A3AB4();

  if (v49)
  {
    goto LABEL_69;
  }

  if (sub_100799814() == v16 && v50 == v18)
  {

LABEL_74:

    v52 = OBJC_IVAR___BKSessionDonor_readingSessionInProgress;
LABEL_75:
    swift_beginAccess();
    v101[4] = *(*&a4[v52] + 16);
    v53 = sub_1007997D4();
    memset(&v101[5], 0, 32);
    v102 = 0;
    v54 = objc_allocWithZone(v53);
    v55 = sub_1007997C4();
    (a5)[2](a5, v55);

    return;
  }

  v51 = sub_1007A3AB4();

  if (v51)
  {
    goto LABEL_74;
  }

  if (sub_100799814() == v16 && v56 == v18)
  {

LABEL_80:

    v52 = OBJC_IVAR___BKSessionDonor_listeningSessionInProgress;
    goto LABEL_75;
  }

  v57 = sub_1007A3AB4();

  if (v57)
  {
    goto LABEL_80;
  }

  if (sub_100799814() == v16 && v58 == v18)
  {

LABEL_85:

    v24 = [a4 isCarPlayConnected];
    goto LABEL_17;
  }

  v59 = sub_1007A3AB4();

  if (v59)
  {
    goto LABEL_85;
  }

  if (sub_100799814() == v16 && v60 == v18)
  {

LABEL_90:

    v23 = OBJC_IVAR___BKSessionDonor_everUsedCarplay;
    goto LABEL_16;
  }

  v61 = sub_1007A3AB4();

  if (v61)
  {
    goto LABEL_90;
  }

  if (sub_100799814() == v16 && v62 == v18)
  {

    goto LABEL_96;
  }

LABEL_95:
  v63 = sub_1007A3AB4();

  if (v63)
  {
LABEL_96:

    if (a4[OBJC_IVAR___BKSessionDonor_notificationAuthorizationStatus + 8])
    {
      v24 = -1;
    }

    else
    {
      v24 = *&a4[OBJC_IVAR___BKSessionDonor_notificationAuthorizationStatus];
    }

    goto LABEL_17;
  }

  if (sub_100799814() == v16 && v64 == v18)
  {

LABEL_103:

    v66 = sub_1007A2744();
    (*(*(v66 - 8) + 56))(v11, 1, 1, v66);
    v67 = qword_100AD1478;

    v68 = a4;
    if (v67 != -1)
    {
      swift_once();
    }

    v69 = qword_100ADE1B0;
    v70 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
    v71 = swift_allocObject();
    v71[2] = v69;
    v71[3] = v70;
    v71[4] = sub_10037A74C;
    v71[5] = v12;
    v71[6] = v68;

    v72 = &unk_10081E360;
LABEL_106:
    sub_1003457A0(0, 0, v11, v72, v71);

    return;
  }

  v65 = sub_1007A3AB4();

  if (v65)
  {
    goto LABEL_103;
  }

  if (sub_100799814() == v16 && v73 == v18)
  {

LABEL_111:

    v75 = sub_1007A2744();
    (*(*(v75 - 8) + 56))(v11, 1, 1, v75);
    v76 = qword_100AD1478;

    v77 = a4;
    if (v76 != -1)
    {
      swift_once();
    }

    v78 = qword_100ADE1B0;
    v79 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
    v71 = swift_allocObject();
    v71[2] = v78;
    v71[3] = v79;
    v71[4] = sub_10037A74C;
    v71[5] = v12;
    v71[6] = v77;

    v72 = &unk_10081E350;
    goto LABEL_106;
  }

  v74 = sub_1007A3AB4();

  if (v74)
  {
    goto LABEL_111;
  }

  if (sub_100799814() == v16 && v80 == v18)
  {

LABEL_118:

    v82 = sub_1007A2744();
    (*(*(v82 - 8) + 56))(v11, 1, 1, v82);
    v83 = qword_100AD1478;

    v84 = a4;
    if (v83 != -1)
    {
      swift_once();
    }

    v85 = qword_100ADE1B0;
    v86 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
    v71 = swift_allocObject();
    v71[2] = v85;
    v71[3] = v86;
    v71[4] = sub_10037A74C;
    v71[5] = v12;
    v71[6] = v84;

    v72 = &unk_10081E340;
    goto LABEL_106;
  }

  v81 = sub_1007A3AB4();

  if (v81)
  {
    goto LABEL_118;
  }

  if (sub_100799814() == v16 && v87 == v18)
  {

LABEL_125:

    v89 = sub_1007A2744();
    (*(*(v89 - 8) + 56))(v11, 1, 1, v89);
    v90 = qword_100AD1478;

    v91 = a4;
    if (v90 != -1)
    {
      swift_once();
    }

    v92 = qword_100ADE1B0;
    v93 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
    v71 = swift_allocObject();
    v71[2] = v92;
    v71[3] = v93;
    v71[4] = sub_10037A74C;
    v71[5] = v12;
    v71[6] = v91;

    v72 = &unk_10081E330;
    goto LABEL_106;
  }

  v88 = sub_1007A3AB4();

  if (v88)
  {
    goto LABEL_125;
  }

  if (sub_100799814() == v16 && v94 == v18)
  {

LABEL_132:
    v96 = sub_1007A2744();
    (*(*(v96 - 8) + 56))(v11, 1, 1, v96);
    v97 = qword_100AD1478;

    v98 = a4;
    if (v97 != -1)
    {
      swift_once();
    }

    v99 = qword_100ADE1B0;
    v100 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
    v71 = swift_allocObject();
    v71[2] = v99;
    v71[3] = v100;
    v71[4] = sub_10037A74C;
    v71[5] = v12;
    v71[6] = v98;

    v72 = &unk_10081E320;
    goto LABEL_106;
  }

  v95 = sub_1007A3AB4();

  if (v95)
  {
    goto LABEL_132;
  }
}

id sub_100379D54(uint64_t a1, void *a2)
{
  v33 = a1;
  v34 = sub_100796C04();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_1001F1160(&qword_100AD67D0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v14 = [a2 contentType];
  v15 = [a2 assetID];
  v16 = sub_1007A2254();
  v18 = v17;

  v19 = sub_1007A2744();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = qword_100AD1478;
  v21 = v2;
  if (v14 > 5)
  {
    if (v20 != -1)
    {
      swift_once();
    }

    v27 = qword_100ADE1B0;
    v28 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
    v29 = swift_allocObject();
    v29[2] = v27;
    v29[3] = v28;
    v29[4] = v21;
    v29[5] = v16;
    v29[6] = v18;

    sub_1003457A0(0, 0, v13, &unk_10081E2D8, v29);

    v30 = v34;
    (*(v4 + 16))(v6, v33, v34);
    swift_beginAccess();
    sub_1006E67E0(v9, v6);
    (*(v4 + 8))(v9, v30);
    swift_endAccess();
    v26 = &OBJC_IVAR___BKSessionDonor_listeningSessionInProgressConfig;
  }

  else
  {
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = qword_100ADE1B0;
    v23 = sub_10037AB8C(&qword_100ADD578, type metadata accessor for PropertyValueActor.ActorType);
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = v23;
    v24[4] = v21;
    v24[5] = v16;
    v24[6] = v18;

    sub_1003457A0(0, 0, v13, &unk_10081E2E8, v24);

    v25 = v34;
    (*(v4 + 16))(v6, v33, v34);
    swift_beginAccess();
    sub_1006E67E0(v9, v6);
    (*(v4 + 8))(v9, v25);
    swift_endAccess();
    v26 = &OBJC_IVAR___BKSessionDonor_readingSessionInProgressConfig;
  }

  [v21 propertyDidChange:v21 propertyConfiguration:*&v21[*v26]];
  return [v21 propertyDidChange:v21 propertyConfiguration:*&v21[OBJC_IVAR___BKSessionDonor_sessionConfiguration]];
}

id sub_10037A1C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&unk_100ADE578);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  swift_beginAccess();
  sub_1006245A4(a1, v6);
  sub_100007840(v6, &unk_100ADE578);
  swift_endAccess();
  swift_beginAccess();
  sub_1006245A4(a1, v6);
  sub_100007840(v6, &unk_100ADE578);
  swift_endAccess();
  [v2 propertyDidChange:v2 propertyConfiguration:*&v2[OBJC_IVAR___BKSessionDonor_listeningSessionInProgressConfig]];
  return [v2 propertyDidChange:v2 propertyConfiguration:*&v2[OBJC_IVAR___BKSessionDonor_readingSessionInProgressConfig]];
}

uint64_t sub_10037A314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_100376C74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10037A3DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10037A424(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_100376AC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10037A4EC(uint64_t a1)
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
  v11[1] = sub_100009A34;

  return sub_100376294(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10037A704()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10037A754(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1003759C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10037A81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1003757C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10037A8E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1003755D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10037A9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1003753DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10037AA74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10037AABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_100374F80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10037AB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10037AC0C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10037BB0C(a1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 34) = 0;
  }

  return result;
}

uint64_t sub_10037ACA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v5 = sub_1007A1C54();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A1CC4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v18 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v18 == *(result + 32))
    {
      if (v18)
      {
        sub_100017E74();
        v26 = sub_1007A2D74();
        sub_1007A1CB4();
        sub_1007A1D24();
        v27 = *(v12 + 8);
        v28 = v12 + 8;
        v27(v14, v11);
        v20 = swift_allocObject();
        swift_weakInit();
        v21 = swift_allocObject();
        v22 = v29;
        v23 = v30;
        v21[2] = v20;
        v21[3] = v23;
        v21[4] = v22;
        aBlock[4] = sub_10037D0F4;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003323D0;
        aBlock[3] = &unk_100A18188;
        v24 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        sub_1007A1C74();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10037D0AC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001F1160(&unk_100AD7CA0);
        sub_100234698();
        sub_1007A3594();
        v25 = v26;
        sub_1007A2D04();
        _Block_release(v24);

        (*(v32 + 8))(v7, v5);
        (*(v31 + 8))(v10, v8);
        return (v27)(v17, v11);
      }

      *(result + 32) = 1;
      sub_10037CA8C(8);
    }
  }

  return result;
}

uint64_t sub_10037B0D8()
{
  v0 = sub_1007A1B34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 32) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1007A0584();
    sub_10037BB0C(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_10037B21C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(result + 32) & 1) != 0 || (*(result + 33) & 1) != 0 || v1 != 1)
    {
      *(result + 33) = 0;
    }

    else
    {
      sub_10037CA8C(8);
      *(v3 + 33) = 1;
    }
  }

  return result;
}

uint64_t sub_10037B2AC()
{
  v0 = sub_1007A1C54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CC4();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 34))
    {
    }

    else
    {
      v28 = v5;
      v29 = v3;
      v30 = v4;
      v31 = v1;

      v15 = sub_10079ACC4();
      v16 = sub_1007A29D4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v0;
        v19 = v18;
        aBlock[0] = v18;
        *v17 = 136315138;
        v20 = sub_1007A3D34();
        v22 = sub_1000070F4(v20, v21, aBlock);

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v15, v16, "%s milestone BookEnd", v17, 0xCu);
        sub_1000074E0(v19);
        v0 = v27;
      }

      sub_10037CA8C(2);
      sub_100017E74();
      v23 = sub_1007A2D74();
      sub_1007A1CB4();
      sub_1007A1D24();
      v32 = *(v32 + 8);
      (v32)(v10, v33);
      v24 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_10037D09C;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A18138;
      v25 = _Block_copy(aBlock);

      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10037D0AC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0);
      sub_100234698();
      v26 = v29;
      sub_1007A3594();
      sub_1007A2D04();
      _Block_release(v25);

      (*(v31 + 8))(v26, v0);
      (*(v28 + 8))(v7, v30);
      return (v32)(v13, v33);
    }
  }

  return result;
}

uint64_t sub_10037B7B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 34) = 0;
  }

  return result;
}

uint64_t sub_10037B800()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((*(result + 34) & 1) == 0)
    {

      v2 = sub_10079ACC4();
      v3 = sub_1007A29D4();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v9 = v5;
        *v4 = 136315138;
        v6 = sub_1007A3D34();
        v8 = sub_1000070F4(v6, v7, &v9);

        *(v4 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v2, v3, "%s milestone BookAfterEnd", v4, 0xCu);
        sub_1000074E0(v5);
      }

      sub_10037CA8C(3);
      *(v1 + 34) = 1;
    }
  }

  return result;
}

uint64_t sub_10037B990()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = sub_10079ACC4();
    v2 = sub_1007A29D4();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136315138;
      v5 = sub_1007A3D34();
      v7 = sub_1000070F4(v5, v6, &v8);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s milestone MoveToNextPage", v3, 0xCu);
      sub_1000074E0(v4);
    }

    sub_10037CA8C(9);
  }

  return result;
}

void sub_10037BB0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007A1B34();
  v5 = *(v4 - 8);
  v121 = v4;
  v122 = v5;
  __chkstk_darwin(v4);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v111 - v9;
  __chkstk_darwin(v11);
  v13 = &v111 - v12;
  v14 = sub_1001F1160(&unk_100ADE780);
  __chkstk_darwin(v14);
  v16 = &v111 - v15;
  v17 = sub_1001F1160(&qword_100AF4280);
  __chkstk_darwin(v17 - 8);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v111 - v21;
  __chkstk_darwin(v23);
  v25 = &v111 - v24;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v122 = sub_10079ACC4();
    v50 = sub_1007A29B4();

    if (os_log_type_enabled(v122, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v125[0] = v52;
      *v51 = 136315138;
      v53 = sub_1007A3D34();
      v55 = sub_1000070F4(v53, v54, v125);

      *(v51 + 4) = v55;
      sub_1000074E0(v52);
    }

    else
    {
      v56 = v122;
    }

    return;
  }

  v116 = v19;
  v117 = v10;
  v119 = Strong;
  v120 = v2;
  v27 = a1;
  v125[0] = sub_1007A1B24();
  v125[1] = v28;
  sub_1002060B4();
  v29 = sub_1007A28A4();

  v118 = v27;
  if (v29)
  {
    v124[0] = sub_1007A1B04();
    v124[1] = v30;
    v31 = sub_1007A28A4();

    if (v31)
    {
      v32 = v120;
      if (*(v120 + 32) == 1 || *(v120 + 33) == 1)
      {
        goto LABEL_13;
      }

      v33 = v121;
      v34 = v122;
      isa = v122[2].isa;
      v115 = v122 + 2;
      isa(v25, v118, v121);
      v112 = v34[7].isa;
      v113 = v34 + 7;
      v112(v25, 0, 1, v33);
      v35 = OBJC_IVAR____TtC5Books29EndOfBookExperienceController_lastEmittedCFIRange;
      swift_beginAccess();
      v36 = *(v14 + 48);
      sub_10037D02C(v25, v16);
      sub_10037D02C(v32 + v35, &v16[v36]);
      v37 = v34[6].isa;
      if (v37(v16, 1, v33) == 1)
      {
        sub_100007840(v25, &qword_100AF4280);
        if (v37(&v16[v36], 1, v33) == 1)
        {
          sub_100007840(v16, &qword_100AF4280);
LABEL_33:

          v40 = sub_10079ACC4();
          v93 = sub_1007A29D4();

          if (!os_log_type_enabled(v40, v93))
          {
            goto LABEL_12;
          }

          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v124[0] = v95;
          *v94 = 136315138;
          v96 = sub_1007A3D34();
          v98 = sub_1000070F4(v96, v97, v124);

          *(v94 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v40, v93, "%s skipping emitSectionChanged() because visible CFI range has not changed", v94, 0xCu);
          sub_1000074E0(v95);

LABEL_11:

LABEL_12:

LABEL_13:
          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        sub_10037D02C(v16, v22);
        if (v37(&v16[v36], 1, v33) != 1)
        {
          v90 = v122;
          (v122[4].isa)(v13, &v16[v36], v33);
          sub_10037D0AC(&qword_100ADE7A0, &type metadata accessor for CFIRange);
          v91 = sub_1007A2124();
          v92 = v90[1].isa;
          v92(v13, v33);
          sub_100007840(v25, &qword_100AF4280);
          v92(v22, v33);
          sub_100007840(v16, &qword_100AF4280);
          if (v91)
          {
            goto LABEL_33;
          }

LABEL_24:
          v57 = OBJC_IVAR____TtC5Books29EndOfBookExperienceController_log;
          v58 = v117;
          v59 = v121;
          isa(v117, v118, v121);

          v111 = v57;
          v60 = sub_10079ACC4();
          v61 = sub_1007A29D4();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v124[0] = swift_slowAlloc();
            *v62 = 136315394;
            v63 = sub_1007A3D34();
            v65 = sub_1000070F4(v63, v64, v124);

            *(v62 + 4) = v65;
            *(v62 + 12) = 2080;
            sub_10037D0AC(&unk_100ADE790, &type metadata accessor for CFIRange);
            v66 = sub_1007A3A74();
            v68 = v67;
            (v122[1].isa)(v58, v59);
            v69 = sub_1000070F4(v66, v68, v124);

            *(v62 + 14) = v69;
            _os_log_impl(&_mh_execute_header, v60, v61, "%s section changed %s", v62, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            (v122[1].isa)(v58, v59);
          }

          v70 = v118;
          sub_1007A1B24();
          v71 = objc_allocWithZone(BCCFI);
          v72 = sub_1007A2214();

          v124[0] = 0;
          v73 = [v71 initWithCFI:v72 error:v124];

          if (v73)
          {
            v74 = v124[0];
            sub_1007A1B04();
            v75 = objc_allocWithZone(BCCFI);
            v76 = sub_1007A2214();

            v124[0] = 0;
            v77 = [v75 initWithCFI:v76 error:v124];

            v78 = v124[0];
            if (v77)
            {
              v79 = objc_opt_self();
              v80 = v78;
              v81 = [v79 positionWithCFI:v73];
              v82 = [v79 positionWithCFI:v77];
              v83 = [objc_opt_self() bookSectionWithStartPosition:v81 endPosition:v82];
              v84 = v116;
              v85 = v121;
              isa(v116, v70, v121);
              v112(v84, 0, 1, v85);
              v86 = v120;
              swift_beginAccess();
              sub_10037CFBC(v84, v86 + v35);
              swift_endAccess();
              v87 = swift_unknownObjectWeakLoadStrong();
              if (!v87 || (v88 = [v87 bookPositionProcessor], swift_unknownObjectRelease(), !v88))
              {

                goto LABEL_13;
              }

              v89 = v83;
              [v88 emitter:v119 bookSectionChanged:v89];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              return;
            }

            v101 = v124[0];
            v100 = sub_1007967D4();

            swift_willThrow();
          }

          else
          {
            v99 = v124[0];
            v100 = sub_1007967D4();

            swift_willThrow();
          }

          swift_errorRetain();
          v102 = sub_10079ACC4();
          v103 = sub_1007A29B4();

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v124[0] = swift_slowAlloc();
            *v104 = 136315394;
            v105 = sub_1007A3D34();
            v107 = sub_1000070F4(v105, v106, v124);

            *(v104 + 4) = v107;
            *(v104 + 12) = 2080;
            v123 = v100;
            swift_errorRetain();
            sub_1001F1160(&unk_100AD67F0);
            v108 = sub_1007A22E4();
            v110 = sub_1000070F4(v108, v109, v124);

            *(v104 + 14) = v110;
            _os_log_impl(&_mh_execute_header, v102, v103, "%s error emitting section change: %s", v104, 0x16u);
            swift_arrayDestroy();

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          return;
        }

        sub_100007840(v25, &qword_100AF4280);
        (v122[1].isa)(v22, v33);
      }

      sub_100007840(v16, &unk_100ADE780);
      goto LABEL_24;
    }
  }

  v39 = v121;
  v38 = v122;
  (v122[2].isa)(v7, v118, v121);

  v40 = sub_10079ACC4();
  v41 = sub_1007A29B4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v125[0] = swift_slowAlloc();
    *v42 = 136315394;
    v43 = sub_1007A3D34();
    v45 = sub_1000070F4(v43, v44, v125);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    sub_10037D0AC(&unk_100ADE790, &type metadata accessor for CFIRange);
    v46 = sub_1007A3A74();
    v48 = v47;
    (v38[1].isa)(v7, v39);
    v49 = sub_1000070F4(v46, v48, v125);

    *(v42 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s emitSectionChanged failed because cfi range was empty %s", v42, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  (v38[1].isa)(v7, v39);
}

void sub_10037CA8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AF4280);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-1] - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1007A1B34();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = OBJC_IVAR____TtC5Books29EndOfBookExperienceController_lastEmittedCFIRange;
    swift_beginAccess();
    sub_10037CFBC(v6, v2 + v10);
    swift_endAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11 && (v12 = [v11 bookPositionProcessor], swift_unknownObjectRelease(), v12))
    {
      [v12 emitter:v8 bookMilestoneReached:a1];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {

    v20 = sub_10079ACC4();
    v13 = sub_1007A29B4();

    if (os_log_type_enabled(v20, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      v16 = sub_1007A3D34();
      v18 = sub_1000070F4(v16, v17, v21);

      *(v14 + 4) = v18;
      sub_1000074E0(v15);
    }

    else
    {
      v19 = v20;
    }
  }
}

uint64_t sub_10037CD38()
{
  sub_10002B130(v0 + 24);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books29EndOfBookExperienceController_lastEmittedCFIRange, &qword_100AF4280);

  v1 = OBJC_IVAR____TtC5Books29EndOfBookExperienceController_log;
  v2 = sub_10079ACE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EndOfBookExperienceController()
{
  result = qword_100ADE5F0;
  if (!qword_100ADE5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10037CE68()
{
  sub_10037CF64();
  if (v0 <= 0x3F)
  {
    sub_10079ACE4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10037CF64()
{
  if (!qword_100ADE600)
  {
    sub_1007A1B34();
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADE600);
    }
  }
}

uint64_t sub_10037CFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF4280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037D02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF4280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037D0AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SidebarAccountView()
{
  result = qword_100ADE800;
  if (!qword_100ADE800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10037D180()
{
  sub_10037D21C();
  if (v0 <= 0x3F)
  {
    sub_1002B3658();
    if (v1 <= 0x3F)
    {
      sub_10037D290();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10037D21C()
{
  if (!qword_100ADE810)
  {
    sub_1001F1234(&qword_100ADE818);
    v0 = sub_10079B8E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADE810);
    }
  }
}

void sub_10037D290()
{
  if (!qword_100ADE820)
  {
    type metadata accessor for SidebarViewModel(255);
    sub_10037F7C4(&unk_100ADE828, type metadata accessor for SidebarViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADE820);
    }
  }
}

id sub_10037D324()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(CNAvatarViewController) init];
  [v2 setThreeDTouchEnabled:0];
  sub_1001F1160(&unk_100AD8160);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100811390;
  *(v3 + 32) = v1;
  sub_10037F864();
  v4 = v1;
  isa = sub_1007A25D4().super.isa;

  [v2 setContacts:isa];

  return v2;
}

void sub_10037D3F0(void *a1)
{
  v3 = *v1;
  sub_1001F1160(&unk_100AD8160);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100811390;
  *(v4 + 32) = v3;
  sub_10037F864();
  v5 = v3;
  isa = sub_1007A25D4().super.isa;

  [a1 setContacts:isa];
}

uint64_t sub_10037D4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10037F810();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10037D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10037F810();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10037D584()
{
  sub_10037F810();
  sub_10079D194();
  __break(1u);
}

uint64_t sub_10037D5AC()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100B23108 = v16;
  unk_100B23110 = v18;
  byte_100B23118 = 0;
  qword_100B23120 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10037D838@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB730);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SidebarAccountView();
  sub_1000077D8(v1 + *(v10 + 20), v9, &unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10037DA40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_10079C394();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SidebarAccountView();
  v7 = v6 - 8;
  v47 = *(v6 - 8);
  v8 = *(v47 + 64);
  __chkstk_darwin(v6);
  v41 = sub_1001F1160(&qword_100ADE880);
  __chkstk_darwin(v41);
  v10 = &v40 - v9;
  v42 = sub_1001F1160(&qword_100ADE888);
  __chkstk_darwin(v42);
  v12 = &v40 - v11;
  v50 = sub_1001F1160(&qword_100ADE890);
  __chkstk_darwin(v50);
  v46 = &v40 - v13;
  v40 = *(v2 + *(v7 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v14 = v57;
  v15 = v58;

  v57 = v14;
  v58 = v15;
  sub_100206ECC();
  v16 = sub_10079D5D4();
  v18 = v17;
  LOBYTE(v14) = v19;
  v21 = v20;
  sub_10037F190(v2, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v23 = swift_allocObject();
  sub_10037F1F4(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v52 = v2;
  v53 = v16;
  v45 = v16;
  v44 = v18;
  v54 = v18;
  v24 = v14 & 1;
  v55 = v14 & 1;
  v47 = v21;
  v56 = v21;
  sub_1001F1160(&qword_100ADE898);
  sub_100005920(&qword_100ADE8A0, &qword_100ADE898);
  sub_10079E054();
  LOBYTE(v14) = sub_10079D294();
  sub_10079BBA4();
  v25 = v10 + *(v41 + 36);
  *v25 = v14;
  *(v25 + 8) = v26;
  *(v25 + 16) = v27;
  *(v25 + 24) = v28;
  *(v25 + 32) = v29;
  *(v25 + 40) = 0;
  v30 = v43;
  sub_10079C384();
  sub_10037F2F8();
  sub_10037F7C4(&qword_100AD6CF0, &type metadata accessor for PlainButtonStyle);
  v31 = v48;
  sub_10079D6A4();
  v32 = v42;
  (*(v49 + 8))(v30, v31);
  sub_100007840(v10, &qword_100ADE880);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  LOBYTE(v10) = v60;
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = (v10 & 1) == 0;
  v35 = &v12[*(v32 + 36)];
  *v35 = KeyPath;
  v35[1] = sub_100258B0C;
  v35[2] = v34;
  if (qword_100AD1480 != -1)
  {
    swift_once();
  }

  sub_10037F3B0();
  v36 = v46;
  sub_10079D774();
  sub_100007840(v12, &qword_100ADE888);
  v37 = v45;
  v38 = v44;
  sub_10079C154();
  sub_10020B430(v37, v38, v24);

  return sub_100007840(v36, &qword_100ADE890);
}

uint64_t sub_10037E070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v99 = a4;
  v96 = a3;
  v98 = a2;
  v97 = a1;
  v106 = a5;
  v5 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v5 - 8);
  v95 = &v84 - v6;
  v101 = sub_1001F1160(&qword_100ADE8C8);
  __chkstk_darwin(v101);
  v91 = &v84 - v7;
  v102 = sub_1001F1160(&qword_100ADE8D0);
  __chkstk_darwin(v102);
  v105 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v103 = &v84 - v10;
  __chkstk_darwin(v11);
  v104 = &v84 - v12;
  v93 = sub_1001F1160(&qword_100ADE8D8);
  __chkstk_darwin(v93);
  v92 = (&v84 - v13);
  v94 = sub_1001F1160(&qword_100ADE8E0);
  __chkstk_darwin(v94);
  v88 = (&v84 - v14);
  v15 = sub_10079BC44();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v87 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v84 - v19;
  __chkstk_darwin(v21);
  v23 = &v84 - v22;
  v24 = sub_10079E534();
  v90 = *(v24 - 8);
  __chkstk_darwin(v24);
  v89 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001F1160(&qword_100ADE8E8);
  __chkstk_darwin(v26 - 8);
  v100 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v107 = &v84 - v29;
  type metadata accessor for SidebarAccountView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v30 = v115;

  if (v30 == 1)
  {
    sub_10037D838(v23);
    v31 = enum case for ColorScheme.light(_:);
    v86 = v24;
    v84 = *(v16 + 104);
    v84(v20, enum case for ColorScheme.light(_:), v15);
    v32 = sub_10079BC34();
    v33 = *(v16 + 8);
    v33(v20, v15);
    v33(v23, v15);
    v34 = &enum case for BlendMode.plusDarker(_:);
    if ((v32 & 1) == 0)
    {
      v34 = &enum case for BlendMode.plusLighter(_:);
    }

    (*(v90 + 104))(v89, *v34, v24);
    sub_10037D838(v23);
    v35 = v84;
    v84(v20, v31, v15);
    v36 = sub_10079BC34();
    v85 = v33;
    v33(v20, v15);
    v33(v23, v15);
    if (v36)
    {
      v37 = enum case for ColorScheme.dark(_:);
    }

    else
    {
      v37 = v31;
    }

    v38 = v87;
    v35(v87, v37, v15);
    v39 = sub_10079E474();
    v40 = v88;
    *v88 = v39;
    *(v40 + 8) = v41;
    v42 = sub_1001F1160(&qword_100ADE920);
    v43 = v89;
    sub_10037ECB4(v89, v38, v40 + *(v42 + 44));
    sub_1000077D8(v40, v92, &qword_100ADE8E0);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100ADE8F0);
    sub_100005920(&qword_100ADE8F8, &qword_100ADE8E0);
    sub_10037F4F4();
    sub_10079CCA4();
    sub_100007840(v40, &qword_100ADE8E0);
    v85(v38, v15);
    (*(v90 + 8))(v43, v86);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v44 = *(&v115 + 1);
    sub_10079E484();
    sub_10079BE54();
    v45 = v109;
    v46 = v110;
    v47 = v111;
    v48 = v112;
    v49 = v92;
    *v92 = v44;
    v49[1] = v45;
    *(v49 + 16) = v46;
    v49[3] = v47;
    *(v49 + 32) = v48;
    *(v49 + 5) = v113;
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100ADE8F0);
    sub_100005920(&qword_100ADE8F8, &qword_100ADE8E0);
    sub_10037F4F4();
    sub_10079CCA4();
  }

  v50 = sub_10079D3A4();
  v51 = v95;
  (*(*(v50 - 8) + 56))(v95, 1, 1, v50);
  sub_10079D424();
  sub_100007840(v51, &unk_100AD1FC0);
  sub_10079D3F4();
  sub_10079D464();

  v52 = sub_10079D5A4();
  v54 = v53;
  v56 = v55;

  sub_10079DE34();
  v57 = sub_10079D564();
  v59 = v58;
  v61 = v60;
  v63 = v62;

  sub_10020B430(v52, v54, v56 & 1);

  KeyPath = swift_getKeyPath();
  v65 = swift_getKeyPath();
  v66 = v61 & 1;
  LOBYTE(v114) = v61 & 1;
  v108 = 0;
  v67 = v91;
  v68 = &v91[*(v101 + 36)];
  v69 = *(sub_1001F1160(&qword_100ADE910) + 28);
  v70 = enum case for Text.TruncationMode.tail(_:);
  v71 = sub_10079D554();
  (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
  *v68 = swift_getKeyPath();
  *v67 = v57;
  *(v67 + 8) = v59;
  *(v67 + 16) = v66;
  *(v67 + 24) = v63;
  *(v67 + 32) = KeyPath;
  *(v67 + 40) = 2;
  *(v67 + 48) = 0;
  *(v67 + 56) = v65;
  *(v67 + 64) = 0;
  sub_10079E484();
  sub_10079C414();
  v72 = v103;
  sub_10020B3C8(v67, v103, &qword_100ADE8C8);
  v73 = (v72 + *(v102 + 36));
  v74 = v119;
  v73[4] = v118;
  v73[5] = v74;
  v73[6] = v120;
  v75 = v115;
  *v73 = v114;
  v73[1] = v75;
  v76 = v117;
  v73[2] = v116;
  v73[3] = v76;
  v77 = v104;
  sub_10020B3C8(v72, v104, &qword_100ADE8D0);
  v78 = v107;
  v79 = v100;
  sub_1000077D8(v107, v100, &qword_100ADE8E8);
  v80 = v105;
  sub_1000077D8(v77, v105, &qword_100ADE8D0);
  v81 = v106;
  sub_1000077D8(v79, v106, &qword_100ADE8E8);
  v82 = sub_1001F1160(&qword_100ADE918);
  sub_1000077D8(v80, v81 + *(v82 + 48), &qword_100ADE8D0);
  sub_100007840(v77, &qword_100ADE8D0);
  sub_100007840(v78, &qword_100ADE8E8);
  sub_100007840(v80, &qword_100ADE8D0);
  return sub_100007840(v79, &qword_100ADE8E8);
}

uint64_t sub_10037ECB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v4 = sub_1001F1160(&qword_100ADE928);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_1001F1160(&qword_100ADE930);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v33 - v16);
  v18 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  KeyPath = swift_getKeyPath();
  v20 = *(sub_1001F1160(&qword_100ADE938) + 36);
  v21 = sub_10079E534();
  (*(*(v21 - 8) + 16))(v17 + v20, a1, v21);
  *v17 = KeyPath;
  v17[1] = v18;
  sub_10079E474();
  sub_10079BE54();
  v22 = (v17 + *(v12 + 44));
  v23 = v36;
  *v22 = v35;
  v22[1] = v23;
  v22[2] = v37;
  sub_10079BDC4();
  v24 = swift_getKeyPath();
  v25 = &v10[*(sub_1001F1160(&qword_100ADE940) + 36)];
  v26 = *(sub_1001F1160(&qword_100ADB368) + 28);
  v27 = sub_10079BC44();
  (*(*(v27 - 8) + 16))(v25 + v26, v33, v27);
  *v25 = v24;
  sub_10079E474();
  sub_10079BE54();
  v28 = &v10[*(v5 + 44)];
  v29 = v39;
  *v28 = v38;
  *(v28 + 1) = v29;
  *(v28 + 2) = v40;
  sub_1000077D8(v17, v14, &qword_100ADE930);
  sub_1000077D8(v10, v7, &qword_100ADE928);
  v30 = v34;
  sub_1000077D8(v14, v34, &qword_100ADE930);
  v31 = sub_1001F1160(&qword_100ADE948);
  sub_1000077D8(v7, v30 + *(v31 + 48), &qword_100ADE928);
  sub_100007840(v10, &qword_100ADE928);
  sub_100007840(v17, &qword_100ADE930);
  sub_100007840(v7, &qword_100ADE928);
  return sub_100007840(v14, &qword_100ADE930);
}

uint64_t sub_10037F050@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_10037F0E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10037F190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarAccountView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037F1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarAccountView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10037F2F8()
{
  result = qword_100ADE8A8;
  if (!qword_100ADE8A8)
  {
    sub_1001F1234(&qword_100ADE880);
    sub_100005920(&qword_100ADE8B0, &qword_100ADE8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE8A8);
  }

  return result;
}

unint64_t sub_10037F3B0()
{
  result = qword_100ADE8C0;
  if (!qword_100ADE8C0)
  {
    sub_1001F1234(&qword_100ADE888);
    sub_1001F1234(&qword_100ADE880);
    sub_10079C394();
    sub_10037F2F8();
    sub_10037F7C4(&qword_100AD6CF0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AF6560, &qword_100ADB8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE8C0);
  }

  return result;
}

unint64_t sub_10037F4F4()
{
  result = qword_100ADE900;
  if (!qword_100ADE900)
  {
    sub_1001F1234(&qword_100ADE8F0);
    sub_10037F580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE900);
  }

  return result;
}

unint64_t sub_10037F580()
{
  result = qword_100ADE908;
  if (!qword_100ADE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE908);
  }

  return result;
}

uint64_t sub_10037F5D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C674();
  *a1 = result;
  return result;
}

uint64_t sub_10037F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_10037F708()
{
  result = qword_100ADE950;
  if (!qword_100ADE950)
  {
    sub_1001F1234(&qword_100ADE890);
    sub_10037F3B0();
    sub_10037F7C4(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE950);
  }

  return result;
}

uint64_t sub_10037F7C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10037F810()
{
  result = qword_100ADE958;
  if (!qword_100ADE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE958);
  }

  return result;
}

unint64_t sub_10037F864()
{
  result = qword_100ADE960;
  if (!qword_100ADE960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADE960);
  }

  return result;
}

uint64_t OrientationLockHintViewModel.orientationLockHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_orientationLockHandler;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*OrientationLockHintViewModel.orientationLockHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_orientationLockHandler;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10037FAC0;
}

void sub_10037FAC0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10037FB8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

double sub_10037FC88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

id OrientationLockHintViewModel.init()()
{
  v20 = sub_1001F1160(&unk_100AD5120);
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v20 - v2;
  v4 = sub_1001F1160(&qword_100AD50E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_1001F1160(&qword_100ADEA18);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  *&v0[OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_orientationLockHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC5Books28OrientationLockHintViewModel__currentInterfaceOrientation;
  v22 = 0;
  type metadata accessor for UIInterfaceOrientation(0);
  sub_10079B964();
  (*(v9 + 32))(&v0[v12], v11, v8);
  v13 = OBJC_IVAR____TtC5Books28OrientationLockHintViewModel__isOrientationLocked;
  LOBYTE(v22) = 0;
  sub_10079B964();
  v14 = *(v5 + 32);
  v14(&v0[v13], v7, v4);
  v15 = OBJC_IVAR____TtC5Books28OrientationLockHintViewModel__isHintShown;
  LOBYTE(v22) = 0;
  sub_10079B964();
  v14(&v0[v15], v7, v4);
  v16 = OBJC_IVAR____TtC5Books28OrientationLockHintViewModel__hintRotationDegrees;
  v22 = 0;
  sub_10079B964();
  (*(v1 + 32))(&v0[v16], v3, v20);
  *&v0[OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_tapActionViewListener + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = type metadata accessor for OrientationLockHintViewModel();
  v21.receiver = v0;
  v21.super_class = v17;
  v18 = objc_msgSendSuper2(&v21, "init");
  if (sub_1007A2B24())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22) = 1;
    sub_10079B9B4();
  }

  else
  {
  }

  return v18;
}

uint64_t type metadata accessor for OrientationLockHintViewModel()
{
  result = qword_100ADEA68;
  if (!qword_100ADEA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id OrientationLockHintViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrientationLockHintViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100380258@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OrientationLockHintViewModel();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t sub_100380298@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100380318(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

void sub_100380390()
{
  sub_1003804C0();
  if (v0 <= 0x3F)
  {
    sub_100205C6C(319, &qword_100AEB4D0);
    if (v1 <= 0x3F)
    {
      sub_100205C6C(319, &qword_100AD4F10);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1003804C0()
{
  if (!qword_100ADEA78)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADEA78);
    }
  }
}

uint64_t sub_100380518@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100380598(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

double sub_100380608@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100380688(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_100380704()
{
  v0 = type metadata accessor for WidgetDataCacheManager();
  result = swift_allocObject();
  qword_100B23148 = v0;
  unk_100B23150 = &off_100A228B8;
  qword_100B23130 = result;
  return result;
}

void sub_100380750()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_100B23158 = v2;
}

uint64_t sub_1003807B4(uint64_t a1, void *a2)
{
  **(*(*sub_10000E3E8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_10038083C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADEA80);
  sub_100008B98(v0, qword_100ADEA80);
  return sub_10079ACD4();
}

uint64_t sub_1003808BC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 192) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  return _swift_task_switch(sub_1003808E0, 0, 0);
}

uint64_t sub_1003808E0()
{
  v58 = v0;
  v1 = *(v0 + 160);
  v2 = *(v1 + 32);
  *(v0 + 168) = v2;
  v3 = *(v1 + 40);
  *(v0 + 176) = v3;
  if (qword_100AD1488 != -1)
  {
    swift_once();
  }

  sub_10000E3E8(qword_100B23130, qword_100B23148);
  if (sub_1005490C0(v2, v3, 0))
  {
    if (qword_100AD1498 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100ADEA80);

    v5 = sub_10079ACC4();
    v6 = sub_1007A29D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v57[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000070F4(v2, v3, v57);
      _os_log_impl(&_mh_execute_header, v5, v6, "Found cached untreated thumbnail image for asset: %s.", v7, 0xCu);
      sub_1000074E0(v8);
    }

LABEL_9:
    v9 = *(v0 + 8);

    return v9();
  }

  if (qword_100AD1498 != -1)
  {
    swift_once();
  }

  v55 = (v0 + 144);
  v11 = sub_10079ACE4();
  *(v0 + 184) = sub_100008B98(v11, qword_100ADEA80);

  v12 = sub_10079ACC4();
  v13 = sub_1007A29D4();

  v56 = (v0 + 80);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000070F4(v2, v3, v57);
    _os_log_impl(&_mh_execute_header, v12, v13, "Generating untreated thumbnail image for asset: %s.", v14, 0xCu);
    sub_1000074E0(v15);
  }

  [*(v0 + 152) size];
  if (v16 <= 160.0)
  {
    [*(v0 + 152) size];
    if (v17 <= 160.0)
    {
      v29 = *(v0 + 152);

      v30 = v29;
      v31 = sub_10079ACC4();
      v32 = sub_1007A29D4();

      if (os_log_type_enabled(v31, v32))
      {
        v54 = *(v0 + 192);
        v33 = *(v0 + 152);
        v34 = swift_slowAlloc();
        v57[0] = swift_slowAlloc();
        *v34 = 136315906;
        [v33 size];
        v35 = sub_1007A3044();
        v37 = sub_1000070F4(v35, v36, v57);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2048;
        [v33 scale];
        *(v34 + 14) = v38;
        *(v34 + 22) = 2080;
        *(v34 + 24) = sub_1000070F4(v2, v3, v57);
        *(v34 + 32) = 1024;
        *(v34 + 34) = v54;
        _os_log_impl(&_mh_execute_header, v31, v32, "Using the raw untreated cover. Its current size is %s and scale is %f for asset: %s isAppIconCover: %{BOOL}d.", v34, 0x26u);
        swift_arrayDestroy();
      }

      v39 = *(v0 + 152);

      v40 = sub_10079ACC4();
      v41 = sub_1007A29D4();

      if (os_log_type_enabled(v40, v41))
      {
        v43 = *(v0 + 168);
        v42 = *(v0 + 176);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v57[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_1000070F4(v43, v42, v57);
        _os_log_impl(&_mh_execute_header, v40, v41, "Caching untreated thumbnail for asset: %s.", v44, 0xCu);
        sub_1000074E0(v45);
      }

      v46 = *(v0 + 192);
      sub_100009864(qword_100B23130, v56);
      v47 = sub_10000E3E8(v56, *(v0 + 104));
      if (v46 == 1)
      {
        if (_UISolariumEnabled())
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }
      }

      else
      {
        v48 = 0;
      }

      v50 = *(v0 + 168);
      v49 = *(v0 + 176);
      v51 = *v47;
      v52 = objc_autoreleasePoolPush();
      sub_100549538(v50, v49, v48, v39, v51, v55);
      objc_autoreleasePoolPop(v52);

      sub_1000074E0(v56);
      goto LABEL_9;
    }
  }

  v18 = *(v0 + 152);

  v19 = v18;
  v20 = sub_10079ACC4();
  v21 = sub_1007A29D4();

  if (os_log_type_enabled(v20, v21))
  {
    v53 = *(v0 + 192);
    v22 = *(v0 + 152);
    v23 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v23 = 136315650;
    [v22 size];
    v24 = sub_1007A3044();
    v26 = sub_1000070F4(v24, v25, v57);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1000070F4(v2, v3, v57);
    *(v23 + 22) = 1024;
    *(v23 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v20, v21, "About to resize the untreated cover because its current size: %s is larger than the specified size for asset: %s isAppIconCover: %{BOOL}d.", v23, 0x1Cu);
    swift_arrayDestroy();
  }

  v27 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v55;
  *(v0 + 24) = sub_100381144;
  v28 = swift_continuation_init();
  *(v0 + 136) = sub_1001F1160(&qword_100ADEB38);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1003807B4;
  *(v0 + 104) = &unk_100A18228;
  *(v0 + 112) = v28;
  [v27 prepareThumbnailOfSize:v56 completionHandler:{160.0, 160.0}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100381144()
{

  return _swift_task_switch(sub_100381224, 0, 0);
}

uint64_t sub_100381224()
{
  v33 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = (v0 + 80);
    v3 = v1;

    v4 = v3;
    v5 = sub_10079ACC4();
    v6 = sub_1007A29D4();

    if (os_log_type_enabled(v5, v6))
    {
      v30 = *(v0 + 176);
      v7 = *(v0 + 168);
      v31 = *(v0 + 192);
      v8 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v8 = 136315906;
      [v4 size];
      v9 = sub_1007A3044();
      v11 = sub_1000070F4(v9, v10, v32);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2048;
      [v4 scale];
      *(v8 + 14) = v12;
      *(v8 + 22) = 2080;
      v13 = v7;
      v2 = (v0 + 80);
      *(v8 + 24) = sub_1000070F4(v13, v30, v32);
      *(v8 + 32) = 1024;
      *(v8 + 34) = v31;
      _os_log_impl(&_mh_execute_header, v5, v6, "Done resizing the untreated cover. Its current size is %s and scale is %f for asset: %s isAppIconCover: %{BOOL}d.", v8, 0x26u);
      swift_arrayDestroy();
    }

    v14 = sub_10079ACC4();
    v15 = sub_1007A29D4();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000070F4(v17, v16, v32);
      _os_log_impl(&_mh_execute_header, v14, v15, "Caching untreated thumbnail for asset: %s.", v18, 0xCu);
      sub_1000074E0(v19);
    }

    v20 = *(v0 + 192);
    sub_100009864(&qword_100B23130, v2);
    v21 = sub_10000E3E8(v2, *(v0 + 104));
    if (v20 == 1)
    {
      if (_UISolariumEnabled())
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }
    }

    else
    {
      v22 = 0;
    }

    v25 = *(v0 + 168);
    v24 = *(v0 + 176);
    v26 = *v21;
    v27 = objc_autoreleasePoolPush();
    sub_100549538(v25, v24, v22, v4, v26, (v0 + 144));
    objc_autoreleasePoolPop(v27);

    sub_1000074E0(v2);
    v28 = *(v0 + 8);
  }

  else
  {
    sub_100382064();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1003815D4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1007979F4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100381694, 0, 0);
}

uint64_t sub_100381694()
{
  v22 = v0;
  v1 = v0[4];
  v2 = *(v1 + 32);
  v0[8] = v2;
  v3 = *(v1 + 40);
  v0[9] = v3;
  if (qword_100AD1488 != -1)
  {
    swift_once();
  }

  sub_10000E3E8(qword_100B23130, qword_100B23148);
  if (sub_1005490C0(v2, v3, 1))
  {
    if (qword_100AD1498 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100ADEA80);

    v5 = sub_10079ACC4();
    v6 = sub_1007A29D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000070F4(v2, v3, &v21);
      _os_log_impl(&_mh_execute_header, v5, v6, "Found cached backdrop image for asset: %s.", v7, 0xCu);
      sub_1000074E0(v8);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    if (qword_100AD1498 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    v0[10] = sub_100008B98(v11, qword_100ADEA80);

    v12 = sub_10079ACC4();
    v13 = sub_1007A29D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000070F4(v2, v3, &v21);
      _os_log_impl(&_mh_execute_header, v12, v13, "Generating backdrop image for asset: %s.", v14, 0xCu);
      sub_1000074E0(v15);
    }

    v16 = v0[3];
    if (qword_100AD1490 != -1)
    {
      swift_once();
      v16 = v0[3];
    }

    v0[11] = qword_100B23158;
    sub_1007A3054();
    v17 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
    v18 = v16;
    sub_1007979E4();
    sub_1007979D4();
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_100381AD0;
    v20 = v0[7];

    return static Backdrop.CompositeRenderer.snapshot(configuration:)(v20);
  }
}

uint64_t sub_100381AD0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_100381FE8;
  }

  else
  {
    v4 = sub_100381BE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100381BE4()
{
  v38 = v0;
  v1 = *(v0 + 104);
  v2 = [objc_allocWithZone(CIContext) init];
  v3 = [v1 CIImage];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  [v3 extent];
  v5 = [v2 createCGImage:v4 fromRect:?];
  if (!v5)
  {

LABEL_8:

    v22 = sub_10079ACC4();
    v23 = sub_1007A29B4();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = *(v0 + 64);
      v24 = *(v0 + 72);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000070F4(v25, v24, v37);
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to convert backdrop CIImage to CGImage for asset: %s", v26, 0xCu);
      sub_1000074E0(v27);
    }

    v28 = *(v0 + 104);
    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = *(v0 + 40);
    sub_100382064();
    swift_allocError();
    *v32 = 5;
    swift_willThrow();

    (*(v30 + 8))(v29, v31);
    goto LABEL_11;
  }

  v35 = v5;
  v6 = [objc_allocWithZone(UIImage) initWithCGImage:v5 scale:0 orientation:*(v0 + 88)];

  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();

  v36 = v2;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1000070F4(v10, v9, v37);
    _os_log_impl(&_mh_execute_header, v7, v8, "Caching backdrop for asset: %s.", v11, 0xCu);
    sub_1000074E0(v12);
  }

  v13 = *(v0 + 112);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *sub_10000E3E8(qword_100B23130, qword_100B23148);
  v17 = objc_autoreleasePoolPush();
  sub_100549538(v15, v14, 1, v6, v16, (v0 + 16));
  v18 = *(v0 + 104);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  if (v13)
  {
    objc_autoreleasePoolPop(v17);

    (*(v20 + 8))(v19, v21);
LABEL_11:

    v33 = *(v0 + 8);
    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v17);

  (*(v20 + 8))(v19, v21);

  v33 = *(v0 + 8);
LABEL_12:

  return v33();
}

uint64_t sub_100381FE8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100382064()
{
  result = qword_100ADEB30;
  if (!qword_100ADEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEB30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetImageManager.FetchError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetImageManager.FetchError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100382228()
{
  result = qword_100ADEB40;
  if (!qword_100ADEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEB40);
  }

  return result;
}

uint64_t type metadata accessor for RemoveFromContinueActionItem()
{
  result = qword_100ADEBA0;
  if (!qword_100ADEBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1003822F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for RemoveFromContinueActionItem() + 36);
    v21 = enum case for ContextActionType.removeFromContinue(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5);
    sub_1000077C0(v27, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038252C()
{
  v1[19] = v0;
  v1[20] = sub_1007A26F4();
  v1[21] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[22] = v3;
  v1[23] = v2;

  return _swift_task_switch(sub_1003825C8, v3, v2);
}

uint64_t sub_1003825C8()
{
  sub_10025FCD8((v0 + 64));
  if (*(v0 + 88))
  {
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    v1 = [objc_opt_self() defaultManager];
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    sub_100797674();
    v2 = sub_1007A2214();

    v3 = [v1 libraryAssetOnMainQueueWithAssetID:v2];
    *(v0 + 192) = v3;

    if (v3)
    {
      sub_1001F1160(&unk_100AD8160);
      inited = swift_initStackObject();
      *(v0 + 200) = inited;
      *(inited + 16) = xmmword_100811390;
      *(inited + 32) = v3;
      v5 = v3;
      *(v0 + 208) = sub_1007A26E4();
      v6 = swift_task_alloc();
      *(v0 + 216) = v6;
      *v6 = v0;
      v6[1] = sub_1003827A4;

      return sub_1005EF754(inited);
    }

    sub_1000074E0(v0 + 16);
  }

  else
  {

    sub_1001FF760(v0 + 64);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003827A4()
{

  swift_setDeallocating();
  swift_arrayDestroy();
  v1 = sub_1007A2694();

  return _swift_task_switch(sub_10038291C, v1, v0);
}

uint64_t sub_10038291C()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_100382980, v1, v2);
}

uint64_t sub_100382980()
{
  v1 = *(v0 + 192);

  sub_1000074E0(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003829F0()
{
  v1 = sub_1007971A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10000E3E8(v0, v0[3]);
  sub_100797784();
  (*(v2 + 104))(v4, enum case for ContextActionSource.continueEntry(_:), v1);
  v8 = sub_100797184();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v8 & 1;
}

uint64_t sub_100382B4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_10038252C();
}

uint64_t sub_100382BDC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADEBF0);
  sub_100008B98(v0, qword_100ADEBF0);
  return sub_10079ACD4();
}

uint64_t LibraryBookUpdateCountOperation.result.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKLibraryBookUpdateCountOperation_result;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id LibraryBookUpdateCountOperation.__allocating_init(libraryAssetProvider:updatesURL:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___BKLibraryBookUpdateCountOperation_result] = 0;
  *&v5[OBJC_IVAR___BKLibraryBookUpdateCountOperation_libraryAssetProvider] = a1;
  v6 = OBJC_IVAR___BKLibraryBookUpdateCountOperation_updatesURL;
  v7 = sub_1007969B4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a2, v7);
  return v9;
}

id LibraryBookUpdateCountOperation.init(libraryAssetProvider:updatesURL:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___BKLibraryBookUpdateCountOperation_result] = 0;
  *&v2[OBJC_IVAR___BKLibraryBookUpdateCountOperation_libraryAssetProvider] = a1;
  v4 = OBJC_IVAR___BKLibraryBookUpdateCountOperation_updatesURL;
  v5 = sub_1007969B4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a2, v5);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for LibraryBookUpdateCountOperation();
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a2, v5);
  return v7;
}

uint64_t type metadata accessor for LibraryBookUpdateCountOperation()
{
  result = qword_100ADEC48;
  if (!qword_100ADEC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall LibraryBookUpdateCountOperation.main()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR___BKLibraryBookUpdateCountOperation_libraryAssetProvider) localNonSampleLibraryAssetStoreSummariesExcludeAudiobooks:1];
  v3 = sub_1001F1160(&unk_100AEF1B0);
  v4 = sub_1007A25E4();

  if (*(v4 + 16))
  {
    v5 = sub_100383964(v4);

    *(&v41 + 1) = v3;
    *&v40 = v5;
    sub_1000076D4(&v40, &v42);
    v6 = sub_100796914();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = [objc_opt_self() defaultBag];
      v11 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v10];

      [v11 setDialogOptions:1];
      [v11 setRequestEncoding:2];
      [v11 setCompressRequestBody:1];
      sub_100796944(v12);
      v14 = v13;
      sub_10000E3E8(&v42, v43);
      v15 = [v11 requestWithMethod:4 URL:v14 parameters:sub_1007A3AA4()];

      swift_unknownObjectRelease();
      *&v40 = 0;
      v16 = [v15 resultWithError:&v40];

      v17 = v40;
      if (v16)
      {
        v18 = objc_opt_self();
        v19 = v17;
        v20 = [v18 defaultSession];
        v21 = [v20 dataTaskPromiseWithRequest:v16];

        *&v40 = 0;
        v22 = [v21 resultWithError:&v40];

        if (v22)
        {
          v23 = v40;
          if ([v22 object])
          {
            sub_1007A3504();
            swift_unknownObjectRelease();
          }

          else
          {

            v38 = 0u;
            v39 = 0u;
          }

          v40 = v38;
          v41 = v39;
          if (*(&v39 + 1))
          {
            if (swift_dynamicCast())
            {
              v36 = OBJC_IVAR___BKLibraryBookUpdateCountOperation_result;
              swift_beginAccess();
              *(v1 + v36) = v37;
            }
          }

          else
          {
            sub_100007840(&v40, &unk_100AD5B40);
          }

LABEL_28:
          sub_1000074E0(&v42);
          return;
        }

        v29 = v40;
        sub_1007967D4();

        swift_willThrow();
      }

      else
      {
        v28 = v40;
        sub_1007967D4();

        swift_willThrow();
      }

      if (qword_100AD14A0 != -1)
      {
        swift_once();
      }

      v30 = sub_10079ACE4();
      sub_100008B98(v30, qword_100ADEBF0);
      swift_errorRetain();
      v31 = sub_10079ACC4();
      v32 = sub_1007A29B4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v35;
        *v34 = v35;
        _os_log_impl(&_mh_execute_header, v31, v32, "Encountered error: %@", v33, 0xCu);
        sub_100007840(v34, &unk_100AD9480);
      }

      else
      {
      }

      goto LABEL_28;
    }

    sub_1000074E0(&v42);
  }

  else
  {
    v40 = 0u;
    v41 = 0u;

    sub_100007840(&v40, &unk_100AD5B40);
  }

  if (qword_100AD14A0 != -1)
  {
    swift_once();
  }

  v24 = sub_10079ACE4();
  sub_100008B98(v24, qword_100ADEBF0);
  v25 = sub_10079ACC4();
  v26 = sub_1007A29D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Empty request body", v27, 2u);
  }
}

id LibraryBookUpdateCountOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryBookUpdateCountOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100383964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
LABEL_97:
    if (qword_100AD14A0 != -1)
    {
LABEL_103:
      swift_once();
    }

    v57 = sub_10079ACE4();
    sub_100008B98(v57, qword_100ADEBF0);

    v58 = sub_10079ACC4();
    v59 = sub_1007A29D4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = *(isUniquelyReferenced_nonNull_native + 16);

      _os_log_impl(&_mh_execute_header, v58, v59, "# of local books: %ld", v60, 0xCu);
    }

    else
    {
    }

    sub_1001F1160(&unk_100AE0AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    *&v66 = 0x6F622D6C61636F6CLL;
    *(&v66 + 1) = 0xEB00000000736B6FLL;
    sub_1007A36B4();
    *(inited + 96) = sub_1001F1160(&qword_100ADEC60);
    *(inited + 72) = isUniquelyReferenced_nonNull_native;
    v62 = sub_100013740(inited);
    swift_setDeallocating();
    sub_100007840(inited + 32, &unk_100AD1E50);
    return v62;
  }

  v2 = 0;
  v3 = a1 + 32;
  isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = *(v3 + 8 * v2);
    *&v65[0] = 0x644965726F7473;
    *(&v65[0] + 1) = 0xE700000000000000;

    sub_1007A36B4();
    if (*(v5 + 16))
    {
      v6 = sub_10000E2A4(&v66);
      if (v7)
      {
        break;
      }
    }

    sub_10002899C(&v66);
LABEL_4:
    if (++v2 == v1)
    {
      goto LABEL_97;
    }
  }

  sub_100007484(*(v5 + 56) + 32 * v6, &v68);
  sub_10002899C(&v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_72;
  }

  v8 = HIBYTE(*(&v65[0] + 1)) & 0xFLL;
  v9 = *&v65[0] & 0xFFFFFFFFFFFFLL;
  if ((*(&v65[0] + 1) & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(*(&v65[0] + 1)) & 0xFLL;
  }

  else
  {
    v10 = *&v65[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

LABEL_72:

    goto LABEL_4;
  }

  v64 = isUniquelyReferenced_nonNull_native;
  if ((*(&v65[0] + 1) & 0x1000000000000000) == 0)
  {
    if ((*(&v65[0] + 1) & 0x2000000000000000) != 0)
    {
      *&v66 = *&v65[0];
      *(&v66 + 1) = *(&v65[0] + 1) & 0xFFFFFFFFFFFFFFLL;
      if (LOBYTE(v65[0]) == 43)
      {
        if (!v8)
        {
          goto LABEL_107;
        }

        v11 = (v8 - 1);
        if (v8 != 1)
        {
          v14 = 0;
          v25 = &v66 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v11)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (LOBYTE(v65[0]) == 45)
      {
        if (!v8)
        {
          goto LABEL_106;
        }

        v11 = (v8 - 1);
        if (v8 != 1)
        {
          v14 = 0;
          v18 = &v66 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v11)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v8)
      {
        v14 = 0;
        v30 = &v66;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v8)
          {
LABEL_67:
            LOBYTE(v11) = 0;
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      if ((*&v65[0] & 0x1000000000000000) != 0)
      {
        v11 = ((*(&v65[0] + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v11 = sub_1007A37B4();
      }

      v12 = *v11;
      if (v12 == 43)
      {
        if (v9 < 1)
        {
          goto LABEL_108;
        }

        v21 = v9 - 1;
        if (v9 != 1)
        {
          v14 = 0;
          if (!v11)
          {
            goto LABEL_69;
          }

          v22 = v11 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v21)
            {
              goto LABEL_67;
            }
          }
        }
      }

      else if (v12 == 45)
      {
        if (v9 < 1)
        {
          goto LABEL_105;
        }

        v13 = v9 - 1;
        if (v9 != 1)
        {
          v14 = 0;
          if (!v11)
          {
            goto LABEL_69;
          }

          v15 = v11 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v13)
            {
              goto LABEL_67;
            }
          }
        }
      }

      else if (v9)
      {
        v14 = 0;
        if (!v11)
        {
          goto LABEL_69;
        }

        while (1)
        {
          v28 = *v11 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v11;
          if (!--v9)
          {
            goto LABEL_67;
          }
        }
      }
    }

    v14 = 0;
    LOBYTE(v11) = 1;
LABEL_69:
    LOBYTE(v68) = v11;
    v33 = v11;

    if ((v33 & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  v14 = sub_10063DF1C(*&v65[0], *(&v65[0] + 1), 10);
  v35 = v34;

  if (v35)
  {
LABEL_70:

    isUniquelyReferenced_nonNull_native = v64;
    goto LABEL_4;
  }

LABEL_74:
  *&v68 = 0x64692D6D616461;
  *(&v68 + 1) = 0xE700000000000000;
  sub_1007A36B4();
  v69 = &type metadata for Int;
  *&v68 = v14;
  sub_1000076D4(&v68, v65);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = sub_10000E2A4(&v66);
  v38 = _swiftEmptyDictionarySingleton[2];
  v39 = (v37 & 1) == 0;
  v40 = __OFADD__(v38, v39);
  v41 = v38 + v39;
  if (v40)
  {
    __break(1u);
    goto LABEL_103;
  }

  v42 = v37;
  if (_swiftEmptyDictionarySingleton[3] >= v41)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_79;
    }

    v45 = v36;
    sub_1002F1744();
    v36 = v45;
    if ((v42 & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_80:
    v44 = (_swiftEmptyDictionarySingleton[7] + 32 * v36);
    sub_1000074E0(v44);
    sub_1000076D4(v65, v44);
LABEL_85:
    sub_10002899C(&v66);
    *&v65[0] = 0xD000000000000012;
    *(&v65[0] + 1) = 0x80000001008CE290;
    sub_1007A36B4();
    if (*(v5 + 16) && (v49 = sub_10000E2A4(&v66), (v50 & 1) != 0))
    {
      sub_100007484(*(v5 + 56) + 32 * v49, &v68);
      sub_10002899C(&v66);

      if (swift_dynamicCast())
      {
        v51 = sub_10063F35C(*&v65[0]);
        if ((v52 & 1) == 0)
        {
          v53 = v51;
          *&v68 = 0xD00000000000001CLL;
          *(&v68 + 1) = 0x80000001008CE270;
          sub_1007A36B4();
          v69 = &type metadata for Int;
          *&v68 = v53;
          sub_1000076D4(&v68, v65);
          v54 = swift_isUniquelyReferenced_nonNull_native();
          sub_1002F5754(v65, &v66, v54);
          sub_10002899C(&v66);
        }
      }
    }

    else
    {

      sub_10002899C(&v66);
    }

    v67 = sub_1001F1160(&unk_100AEF1B0);
    *&v66 = _swiftEmptyDictionarySingleton;
    isUniquelyReferenced_nonNull_native = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10066A640(0, *(v64 + 16) + 1, 1, v64);
    }

    v56 = *(isUniquelyReferenced_nonNull_native + 16);
    v55 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v56 >= v55 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10066A640((v55 > 1), v56 + 1, 1, isUniquelyReferenced_nonNull_native);
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v56 + 1;
    sub_1000076D4(&v66, (isUniquelyReferenced_nonNull_native + 32 * v56 + 32));
    goto LABEL_4;
  }

  sub_1003D5034(v41, isUniquelyReferenced_nonNull_native);
  v36 = sub_10000E2A4(&v66);
  if ((v42 & 1) != (v43 & 1))
  {
    goto LABEL_109;
  }

LABEL_79:
  if (v42)
  {
    goto LABEL_80;
  }

LABEL_83:
  _swiftEmptyDictionarySingleton[(v36 >> 6) + 8] |= 1 << v36;
  v46 = v36;
  sub_100028940(&v66, _swiftEmptyDictionarySingleton[6] + 40 * v36);
  sub_1000076D4(v65, (_swiftEmptyDictionarySingleton[7] + 32 * v46));
  v47 = _swiftEmptyDictionarySingleton[2];
  v40 = __OFADD__(v47, 1);
  v48 = v47 + 1;
  if (!v40)
  {
    _swiftEmptyDictionarySingleton[2] = v48;
    goto LABEL_85;
  }

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
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_100384274()
{
  result = sub_1007969B4();
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

uint64_t sub_100384318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100384360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003843C0(uint64_t a1)
{
  result = sub_100258A64();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100384404@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v34 = a4;
  v9 = sub_1001F1160(&qword_100ADEC80);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_1001F1160(&qword_100ADEC88);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v33 = sub_1001F1160(&qword_100ADEC90);
  __chkstk_darwin(v33);
  v16 = &v32 - v15;
  v17 = a2 & 1;
  v36 = a2;
  v37 = a3;
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  if (v35 == 1)
  {
    v18 = (a5 + 8.0) / a5;
  }

  else
  {
    v18 = 1.0;
  }

  sub_10079E634();
  v20 = v19;
  v22 = v21;
  v23 = sub_1001F1160(&qword_100ADEC98);
  (*(*(v23 - 8) + 16))(v11, a1, v23);
  v24 = &v11[*(v9 + 36)];
  *v24 = v18;
  *(v24 + 1) = v18;
  *(v24 + 2) = v20;
  *(v24 + 3) = v22;
  v25 = sub_10079E4C4();
  v36 = a2 & 1;
  v37 = a3;
  sub_10079DFF4();
  v26 = v35;
  sub_10020B3C8(v11, v14, &qword_100ADEC80);
  v27 = &v14[*(v12 + 36)];
  *v27 = v25;
  v27[8] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  *(v28 + 24) = v17;
  *(v28 + 32) = a3;
  sub_10020B3C8(v14, v16, &qword_100ADEC88);
  v29 = v34;
  v30 = &v16[*(v33 + 36)];
  *v30 = sub_100385AAC;
  v30[1] = v28;
  sub_10020B3C8(v16, v29, &qword_100ADEC90);
}

uint64_t sub_10038470C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = sub_1001F1160(&qword_100ADEC68);
  __chkstk_darwin(v90);
  v5 = &v70 - v4;
  v89 = sub_100796CF4();
  v96 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v70 - v8;
  v87 = sub_1007A21D4();
  v95 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = &v70 - v11;
  v84 = sub_10079CF24();
  v80 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1001F1160(&qword_100ADB860);
  v74 = *(v76 - 1);
  __chkstk_darwin(v76);
  v14 = &v70 - v13;
  v75 = sub_1001F1160(&qword_100AD7F50);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v70 - v15;
  v77 = sub_1001F1160(&qword_100AD7F58);
  __chkstk_darwin(v77);
  v17 = &v70 - v16;
  v93 = sub_1001F1160(&qword_100AD7F60);
  __chkstk_darwin(v93);
  v78 = &v70 - v18;
  v94 = sub_1001F1160(&qword_100ADEC70);
  v82 = *(v94 - 8);
  __chkstk_darwin(v94);
  v97 = &v70 - v19;
  v20 = v1[2];
  swift_getKeyPath();
  *&v100 = v20;
  sub_1002747B0(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v21 = 0xE800000000000000;
  if (v20[264])
  {
    v21 = 0xED00006C6C69662ELL;
  }

  v70 = v21;
  sub_1003857EC(v1, &v100);
  v22 = swift_allocObject();
  sub_100385824(&v100, v22 + 16);
  *&v99[0] = 0;
  *(&v99[0] + 1) = 0xE000000000000000;
  v23 = sub_100206ECC();
  v72 = v14;
  v81 = v23;
  sub_10079E084();
  v24 = *v1;
  if (*v2)
  {
    v25 = *(v2 + 40);
    v26 = *(v2 + 48);
    swift_getKeyPath();
    *&v100 = v20;
    v27 = v24;
    sub_100797A14();

    v28 = v20[264];
    v92 = v5;
    v91 = a1;
    if (v28)
    {
      v29 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v29 = sub_10079DE34();
    }

    v30 = v29;
    swift_getKeyPath();
    *&v100 = v20;
    sub_100797A14();

    if (v20[264] == 1)
    {
      v31 = sub_10079DD64();
    }

    else
    {
      v31 = 0;
    }

    *&v100 = v27;
    *(&v100 + 1) = v25;
    *&v101 = v26;
    *(&v101 + 1) = 0x6B72616D6B6F6F62;
    *&v102 = v70;
    BYTE8(v102) = 1;
    *&v103 = v30;
    *(&v103 + 1) = v31;
    sub_100005920(&qword_100AEE360, &qword_100ADB860);
    sub_1002744B0();
    v32 = v71;
    v33 = v76;
    v34 = v72;
    sub_10079D6B4();
    v99[0] = v100;
    v99[1] = v101;
    v99[2] = v102;
    v99[3] = v103;
    sub_100274504(v99);
    (*(v74 + 8))(v34, v33);
    v98 = 0;
    sub_10079DFE4();
    LOBYTE(v33) = v100;
    v35 = *(&v100 + 1);
    (*(v73 + 32))(v17, v32, v75);
    v36 = &v17[*(v77 + 36)];
    *v36 = v25;
    v36[8] = v33;
    *(v36 + 2) = v35;
    sub_1003857EC(v2, &v100);
    v37 = swift_allocObject();
    sub_100385824(&v100, v37 + 16);
    v38 = v79;
    sub_10079CF14();
    sub_1002745BC();
    v39 = v78;
    sub_10079D934();

    (*(v80 + 8))(v38, v84);
    sub_100007840(v17, &qword_100AD7F58);
    v40 = *(v2 + 32);
    LOBYTE(v100) = *(v2 + 24);
    LOBYTE(v38) = v100;
    *(&v100 + 1) = v40;
    sub_1001F1160(&qword_100ADB850);
    sub_10079DFF4();
    sub_1003857EC(v2, &v100);
    v41 = swift_allocObject();
    sub_100385824(&v100, v41 + 16);
    v80 = sub_1002746F4();
    sub_10079DC24();

    sub_100007840(v39, &qword_100AD7F60);
    LOBYTE(v100) = v38;
    *(&v100 + 1) = v40;
    sub_10079DFF4();
    v42 = (v95 + 16);
    v43 = v96 + 16;
    v44 = v85;
    sub_1007A2154();
    v45 = v88;
    sub_100796C94();
    v46 = v83;
    v47 = v44;
    v48 = v87;
    v79 = *v42;
    (v79)(v83, v44);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v50 = objc_opt_self();
    v84 = ObjCClassFromMetadata;
    [v50 bundleForClass:ObjCClassFromMetadata];
    v51 = *v43;
    v75 = v43 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v52 = v86;
    v53 = v89;
    v76 = v51;
    (v51)(v86, v45, v89);
    v78 = sub_1007A22D4();
    v77 = v54;
    v96 = *(v96 + 8);
    (v96)(v45, v53);
    v55 = *(v95 + 8);
    v55(v47, v48);
    sub_1007A2154();
    sub_100796C94();
    (v79)(v46, v47, v48);
    type metadata accessor for BundleFinder();
    v56 = [objc_opt_self() bundleForClass:v84];
    (v76)(v52, v45, v53);
    v57 = sub_1007A22D4();
    v59 = v58;
    (v96)(v45, v53);
    v55(v47, v48);
    *&v100 = v57;
    *(&v100 + 1) = v59;
    v60 = sub_10079D5D4();
    v62 = v61;
    LOBYTE(v46) = v63;
    *&v100 = v93;
    *(&v100 + 1) = &type metadata for Bool;
    *&v101 = v80;
    *(&v101 + 1) = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    v64 = v92;
    sub_10079D774();
    sub_10020B430(v60, v62, v46 & 1);

    *&v100 = v78;
    *(&v100 + 1) = v77;
    v65 = sub_10079D5D4();
    v67 = v66;
    LOBYTE(v43) = v68;
    sub_10079C154();
    sub_10020B430(v65, v67, v43 & 1);

    sub_100007840(v64, &qword_100ADEC68);
    return (*(v82 + 8))(v97, v94);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1002747B0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10038564C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 64);
    ObjectType = swift_getObjectType();
    (*(v3 + 80))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003856BC(uint64_t a1)
{
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  sub_10079E004();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 64);
    ObjectType = swift_getObjectType();
    (*(v3 + 80))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10038586C()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003858C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_100385920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100385984()
{
  result = qword_100ADEC78;
  if (!qword_100ADEC78)
  {
    sub_1001F1234(&qword_100ADEC68);
    sub_1001F1234(&qword_100AD7F60);
    sub_1002746F4();
    swift_getOpaqueTypeConformance2();
    sub_1002747B0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEC78);
  }

  return result;
}

unint64_t sub_100385B08()
{
  result = qword_100ADECA0;
  if (!qword_100ADECA0)
  {
    sub_1001F1234(&qword_100ADEC90);
    sub_100385B94();
    sub_100385D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADECA0);
  }

  return result;
}

unint64_t sub_100385B94()
{
  result = qword_100ADECA8;
  if (!qword_100ADECA8)
  {
    sub_1001F1234(&qword_100ADEC88);
    sub_100385C4C();
    sub_100005920(&qword_100AD74E0, &qword_100AD74E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADECA8);
  }

  return result;
}

unint64_t sub_100385C4C()
{
  result = qword_100ADECB0;
  if (!qword_100ADECB0)
  {
    sub_1001F1234(&qword_100ADEC80);
    sub_100005920(&qword_100ADECB8, &qword_100ADEC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADECB0);
  }

  return result;
}

unint64_t sub_100385D04()
{
  result = qword_100ADECC0;
  if (!qword_100ADECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADECC0);
  }

  return result;
}

void *BookReaderLayoutController.defaultStatusBarHeight.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result defaultStatusBarHeight];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BookReaderLayoutController.contentRect.setter(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;

  sub_10079B8F4();
}

void (*BookReaderLayoutController.contentRect.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_100385EE4;
}

void sub_100385EE4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(v4 + 32);
    *v3 = *(v4 + 16);
    *(v3 + 1) = v5;

    sub_10079B8F4();
  }

  free(v3);
}

id BookReaderLayoutController.traitCollection.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

void BookReaderLayoutController.traitCollection.setter(void *a1)
{
  sub_100388554(a1);
}

void (*BookReaderLayoutController.traitCollection.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = sub_10079F7E4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[8] = v7;
  swift_beginAccess();
  return sub_1003860B4;
}

void sub_1003860B4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[8];
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];
    v7 = v3[5];
    v6 = v3[6];
    sub_1007A1024();
    sub_1007A1014();
    v8 = *(v7 + 88);
    sub_1007A0FD4();

    v9 = *(v7 + 88);
    v3[3] = v9;
    v3[4] = &protocol witness table for UITraitCollection;
    v10 = v9;
    sub_10079B8C4();

    v11 = *(v7 + 88);
    sub_10079F7C4();
    sub_10079B8F4();
    (*(v5 + 8))(v4, v6);
  }

  free(v4);

  free(v3);
}

uint64_t BookReaderLayoutController.menuOuterMargin.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = a3;
  v4[15] = a4;
  return result;
}

uint64_t BookReaderLayoutController.actionButtonLayout.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_1000074E0(v1 + 128);
  sub_1000077C0(a1, v1 + 128);
  return swift_endAccess();
}

uint64_t BookReaderLayoutController.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = a3;
  v4[24] = a4;
  return result;
}

uint64_t BookReaderLayoutController.safeAreaInsetsPublisher.getter()
{
  sub_1001F1160(&qword_100ADECC8);
  sub_100005920(&qword_100ADECD0, &qword_100ADECC8);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = a3;
  v4[29] = a4;
  return sub_10079B8C4();
}

void (*BookReaderLayoutController.contentInsets.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_100386614;
}

void sub_100386614(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(v4 + 224);
    *v3 = *(v4 + 208);
    *(v3 + 1) = v5;
    sub_10079B8C4();
  }

  free(v3);
}

uint64_t BookReaderLayoutController.closeBookInteracting.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 240) = a1;
  return result;
}

uint64_t BookReaderLayoutController.contentRectPublisher.getter()
{
  sub_1001F1160(&qword_100ADECD8);
  sub_100005920(&unk_100AF27F0, &qword_100ADECD8);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.contentInsetsPublisher.getter()
{
  sub_1001F1160(&qword_100ADECE0);
  sub_100005920(&qword_100ADECE8, &qword_100ADECE0);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.layoutSizePublisher.getter()
{
  sub_1001F1160(&qword_100ADECF0);
  sub_100005920(&qword_100ADECF8, &qword_100ADECF0);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.layoutEnvironmentPublisher.getter()
{
  sub_1001F1160(&qword_100ADED00);
  sub_100005920(&qword_100ADED08, &qword_100ADED00);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.userInterfaceStylePublisher.getter()
{
  sub_1001F1160(&qword_100ADED10);
  sub_100005920(&qword_100ADED18, &qword_100ADED10);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.isLowLightPublisher.getter()
{
  swift_getObjectType();
  sub_1007A0CC4();
  sub_1001F1160(&unk_100AF27D0);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  v0 = sub_10079BA14();

  return v0;
}

uint64_t BookReaderLayoutController.applicationForegroundStatePublisher.getter()
{
  sub_1001F1160(&qword_100ADED20);
  sub_100005920(&qword_100ADED28, &qword_100ADED20);
  return sub_10079BA14();
}

Swift::Void __swiftcall BookReaderLayoutController.willEnterForeground()()
{
  v0 = sub_10079F844();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  BookReaderLayoutController.validateUserInterfaceStyle()();
  (*(v1 + 104))(v3, enum case for BookContentApplicationForegroundState.foreground(_:), v0);
  sub_10079B914();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willEnterForeground];
    swift_unknownObjectRelease();
  }
}

void *BookReaderLayoutController.validateUserInterfaceStyle()()
{
  v0 = sub_10079ACE4();
  v62 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v54 - v4;
  v5 = sub_10079F7E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = result;
    v60 = v0;
    v22 = [result traitCollection];
    sub_10079B904();
    v23 = v22;
    sub_10079F7C4();
    sub_100388AFC();
    v24 = (v6 + 16);
    if (sub_1007A2124())
    {
      sub_1007A0934();
      (*v24)(v8, v20, v5);
      v25 = sub_10079ACC4();
      v26 = sub_1007A29D4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v57 = v23;
        v28 = v27;
        v29 = swift_slowAlloc();
        v61 = v17;
        v30 = v29;
        v63 = v29;
        *v28 = 136446210;
        v56 = v25;
        v31 = sub_10079F7B4();
        v33 = v32;
        v58 = v20;
        v34 = *(v6 + 8);
        v34(v8, v5);
        v35 = sub_1000070F4(v31, v33, &v63);

        *(v28 + 4) = v35;
        v36 = v56;
        _os_log_impl(&_mh_execute_header, v56, v26, "on foreground, #userInterfaceStyle is %{public}s", v28, 0xCu);
        sub_1000074E0(v30);

        swift_unknownObjectRelease();
        (*(v62 + 8))(v2, v60);
        v34(v61, v5);
        return (v34)(v58, v5);
      }

      else
      {

        swift_unknownObjectRelease();
        v53 = *(v6 + 8);
        v53(v8, v5);
        (*(v62 + 8))(v2, v60);
        v53(v17, v5);
        return (v53)(v20, v5);
      }
    }

    else
    {
      sub_1007A0934();
      v37 = v20;
      v38 = *v24;
      (*v24)(v14, v17, v5);
      v58 = v37;
      v38(v11, v37, v5);
      v39 = sub_10079ACC4();
      v40 = sub_1007A29B4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v63 = v56;
        *v41 = 136446466;
        v54 = v39;
        v42 = sub_10079F7B4();
        v57 = v23;
        v43 = v17;
        v45 = v44;
        v55 = v40;
        v46 = *(v6 + 8);
        v46(v14, v5);
        v47 = sub_1000070F4(v42, v45, &v63);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2082;
        v48 = sub_10079F7B4();
        v50 = v49;
        v46(v11, v5);
        v51 = sub_1000070F4(v48, v50, &v63);
        v17 = v43;
        v23 = v57;

        *(v41 + 14) = v51;
        v52 = v54;
        _os_log_impl(&_mh_execute_header, v54, v55, "found different #userInterfaceStyle %{public}s than expected %{public}s.  Force updating", v41, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v46 = *(v6 + 8);
        v46(v11, v5);
        v46(v14, v5);
      }

      (*(v62 + 8))(v61, v60);
      [v59 setTraitCollection:v23];

      swift_unknownObjectRelease();
      v46(v17, v5);
      return (v46)(v58, v5);
    }
  }

  return result;
}

Swift::Void __swiftcall BookReaderLayoutController.didEnterBackground()()
{
  v0 = sub_10079F844();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for BookContentApplicationForegroundState.background(_:), v1);
  sub_10079B914();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didEnterBackground];
    swift_unknownObjectRelease();
  }
}

void *BookReaderLayoutController.layoutEnvironment.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

double BookReaderLayoutController.infoBarHeight.getter()
{
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  return *&qword_100B23168;
}

uint64_t sub_100387578(__int128 *a1, uint64_t a2)
{
  swift_unownedRetainStrong();

  v5 = a1[1];
  v6 = *a1;
  sub_10079B8C4();

  swift_unownedRetainStrong();
  *(a2 + 72) = v5;
  *(a2 + 56) = v6;
}

uint64_t sub_100387600(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  swift_unownedRetainStrong();
  v18 = a1;
  sub_100388554(v18);

  swift_unownedRetainStrong();
  *v20 = a2;
  *&v20[1] = a3;
  *&v20[2] = a4;
  *&v20[3] = a5;
  v21 = 0;
  *v22 = a6;
  *&v22[1] = a7;
  *&v22[2] = a8;
  *&v22[3] = a9;
  v23 = 0;
  sub_10038873C(v20, v22);
}

uint64_t sub_1003876CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8)
  {
    swift_unownedRetainStrong();
    v9 = *(a2 + 288);

    if (v8 != v9)
    {
      swift_unownedRetainStrong();
      *(a2 + 288) = v8;

      swift_unownedRetainStrong();
      memset(v18, 0, sizeof(v18));
      v19 = 1;
      memset(v20, 0, sizeof(v20));
      v21 = 1;
      sub_10038873C(v18, v20);
    }
  }

  else
  {
    sub_1007A0934();
    swift_unownedRetain();
    v11 = sub_10079ACC4();
    v12 = sub_1007A29B4();
    swift_unownedRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v20[0] = v14;
      *v13 = 136446210;
      swift_unownedRetainStrong();

      v15 = sub_1007A2BA4();
      v17 = sub_1000070F4(v15, v16, v20);

      *(v13 + 4) = v17;
      sub_1000074E0(v14);
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double BookReaderLayoutController.computedEdgeInsets.getter()
{
  if (*(v0 + 288) == 2)
  {
    return UIEdgeInsetsZero.top;
  }

  else
  {
    return BookReaderLayoutController.hostInsets.getter();
  }
}

uint64_t BookReaderLayoutController.updateMenuMargin(safeAreaInsets:)(double a1, double a2, double a3, double a4)
{
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = sub_10079CEE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v48 - v21;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  swift_beginAccess();
  [*(v4 + 88) horizontalSizeClass];
  sub_10079CEF4();
  v25 = *(v18 + 48);
  if (v25(v16, 1, v17) != 1)
  {
    v48 = v9;
    v49 = v8;
    v26 = *(v18 + 32);
    v26(v24, v16, v17);
    v50 = v4;
    [*(v4 + 88) verticalSizeClass];
    sub_10079CEF4();
    if (v25(v13, 1, v17) == 1)
    {
      (*(v18 + 8))(v24, v17);
      v9 = v48;
      v8 = v49;
      goto LABEL_5;
    }

    v26(v52, v13, v17);
    if (qword_100AD17D0 != -1)
    {
      swift_once();
    }

    v32 = *&static REConstants.floatingButtonHeight;
    v33 = enum case for UserInterfaceSizeClass.compact(_:);
    v34 = *(v18 + 104);
    v35 = v51;
    v34(v51, enum case for UserInterfaceSizeClass.compact(_:), v17);
    v36 = v24;
    v37 = v35;
    v38 = sub_10079CED4();
    v39 = *(v18 + 8);
    v39(v35, v17);
    v40 = v50;
    if (v38)
    {
      v41 = 24.0;
      if (a3 == 0.0)
      {
        goto LABEL_18;
      }

      if (a3 > 24.0)
      {
        v42 = 0.0;
        if (a3 >= 0.0)
        {
          v42 = a3;
        }

        v41 = v42 + 8.0;
LABEL_18:
        v34(v37, v33, v17);
        v43 = sub_10079CED4();
        v39(v37, v17);
        if (v43)
        {
          v39(v52, v17);
          v39(v36, v17);
        }

        else
        {
          v34(v37, v33, v17);
          v44 = v52;
          v45 = sub_10079CED4();
          v39(v37, v17);
          v39(v44, v17);
          v39(v36, v17);
          if ((v45 & 1) == 0)
          {
            v46 = 32.0;
            v47 = 32.0;
LABEL_25:
            result = swift_beginAccess();
            *(v40 + 96) = 0;
            *(v40 + 104) = v47;
            *(v40 + 112) = v32 + v41;
            *(v40 + 120) = v46;
            return result;
          }
        }

        if (a2 != 0.0 || (v46 = 16.0, v47 = 16.0, a4 != 0.0))
        {
          v47 = a2 + 16.0;
          v46 = a4 + 16.0;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v34(v37, v33, v17);
      sub_10079CED4();
      v39(v37, v17);
    }

    v41 = 32.0;
    goto LABEL_18;
  }

  v13 = v16;
LABEL_5:
  sub_1003886D4(v13);
  v27 = v53;
  sub_1007A0934();
  v28 = sub_10079ACC4();
  v29 = sub_1007A2994();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Cannot calculate margin without size classes", v30, 2u);
  }

  return (*(v9 + 8))(v27, v8);
}

uint64_t BookReaderLayoutController.userInterfaceStyle.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  return sub_10079F7C4();
}

uint64_t BookReaderLayoutController.deinit()
{

  sub_1000074E0(v0 + 128);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10002B130(v0 + 328);

  return v0;
}

uint64_t BookReaderLayoutController.__deallocating_deinit()
{
  BookReaderLayoutController.deinit();

  return swift_deallocClassInstance();
}

double sub_100388054()
{
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  return *&qword_100B23168;
}

double BookReaderLayoutController.infoBarTopInset.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  v3 = sub_1007A2E24();

  result = 10.0;
  if ((v3 & 1) == 0)
  {
    v5 = *(v1 + 88);
    v6 = sub_1007A2E14();

    result = 0.0;
    if ((v6 & 1) == 0)
    {
      v7 = sub_1007A2BB4();
      result = 8.0;
      if (v7)
      {
        return 0.0;
      }
    }
  }

  return result;
}

double BookReaderLayoutController.infoBarBottomInset.getter()
{
  v0 = sub_1007A2BB4();
  result = 12.0;
  if (v0)
  {
    return 0.0;
  }

  return result;
}

double BookReaderLayoutController.hostInsets.getter()
{
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  v1 = *&qword_100B23168;
  v2 = v1 + sub_100388368();
  swift_beginAccess();
  if ([*(v0 + 88) verticalSizeClass] != 1)
  {
    if ([*(v0 + 88) horizontalSizeClass] == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong defaultStatusBarHeight];
        v5 = v4;
        swift_unknownObjectRelease();
      }

      else
      {
        v5 = 0.0;
      }

      v2 = v2 + v5;
      swift_beginAccess();
    }

    else if (*(v0 + 72) < *(v0 + 80))
    {
      return v2 + 44.0;
    }

    else
    {
      return v2 + 24.0;
    }
  }

  return v2;
}

uint64_t sub_100388334()
{
  result = sub_10079E404();
  v1 = 48.0;
  if ((result & 1) == 0)
  {
    v1 = 28.0;
  }

  qword_100B23168 = *&v1;
  return result;
}

double sub_100388368()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 88);
  v7 = sub_1007A2E24();

  v8 = 10.0;
  if ((v7 & 1) == 0)
  {
    v9 = *(v1 + 88);
    v10 = sub_1007A2E14();

    v8 = 0.0;
    if ((v10 & 1) == 0)
    {
      if (sub_1007A2BB4())
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 8.0;
      }
    }
  }

  if (sub_1007A2BB4())
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 12.0;
  }

  sub_1007A0934();
  v12 = sub_10079ACC4();
  v13 = sub_1007A29A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v8;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "InfoBar top inset %f bottom inset %f", v14, 0x16u);
  }

  (*(v3 + 8))(v5, v2);
  return v8 + v11;
}

uint64_t sub_100388554(void *a1)
{
  v2 = v1;
  v4 = sub_10079F7E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v2 + 88);
  *(v2 + 88) = a1;
  v9 = a1;

  sub_1007A1024();
  sub_1007A1014();
  v10 = *(v2 + 88);
  sub_1007A0FD4();

  v15 = *(v2 + 88);
  v16 = &protocol witness table for UITraitCollection;
  v11 = v15;
  sub_10079B8C4();

  v12 = *(v2 + 88);
  sub_10079F7C4();
  sub_10079B8F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003886D4(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10038873C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v41 = *(a1 + 16);
  v40 = v6;
  v7 = sub_10079FFF4();
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if (*(a1 + 32))
    {
      swift_beginAccess();
      v12 = *(v2 + 16);
      v13 = *(v2 + 32);
    }

    else
    {
      v12 = v40;
      v13 = v41;
    }

    *(v2 + 56) = v12;
    *(v2 + 72) = v13;
    v14 = sub_1007A3024() & 1;
    swift_beginAccess();
    if (v14 != (sub_1007A3024() & 1) && *(v2 + 312))
    {
      swift_getObjectType();
      swift_storeEnumTagMultiPayload();
      sub_1007A1A94();
      sub_100343710(v9);
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      v15 = *a2;
      v16 = *(a2 + 8);
      v17 = *(a2 + 16);
      v18 = *(a2 + 24);
      if (*a2 == 0.0)
      {
        swift_beginAccess();
        v19 = *(v2 + 88);
        v20 = sub_1007A2E24();

        if ((v20 & 1) == 0)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong defaultStatusBarHeight];
            v15 = v22;
            swift_unknownObjectRelease();
          }

          else
          {
            v15 = 0.0;
          }
        }
      }

      swift_beginAccess();
      *(v3 + 168) = v15;
      *(v3 + 176) = v16;
      *(v3 + 184) = v17;
      *(v3 + 192) = v18;
    }

    if (*(v3 + 288) == 2)
    {
      v23 = *&UIEdgeInsetsZero.top;
      v24 = *&UIEdgeInsetsZero.bottom;
    }

    else
    {
      v23.f64[0] = BookReaderLayoutController.hostInsets.getter();
      v24 = v25;
      v23 = *&v23.f64[0];
    }

    v26 = v41;
    v27 = v40;
    v28 = *(a1 + 32);
    v41 = v24;
    v40 = v23;
    if (v28)
    {
      [v11 frame];
      v23 = v40;
      v24.f64[1] = v41.f64[1];
    }

    else
    {
      v29 = v27.f64[1];
      v30 = v26.f64[1];
    }

    v31 = v23.f64[1];
    v32 = v24.f64[1];
    v46.origin.x = sub_1002840F0(v27.f64[0], v29, v26.f64[0], v30, v23.f64[0], v23.f64[1]);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    if (!CGRectEqualToRect(v46, *(v3 + 16)) || (swift_beginAccess(), (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v3 + 208), v40), vceqq_f64(*(v3 + 224), v41)))) & 1) == 0))
    {
      swift_beginAccess();
      v37 = v40.f64[0];
      *(v3 + 208) = v40.f64[0];
      *(v3 + 216) = v31;
      v38 = v41.f64[0];
      *(v3 + 224) = v41.f64[0];
      *(v3 + 232) = v32;
      v42 = v37;
      v43 = v31;
      v44 = v38;
      v45 = v32;
      sub_10079B8C4();
      *(v3 + 16) = x;
      *(v3 + 24) = y;
      *(v3 + 32) = width;
      *(v3 + 40) = height;
      v42 = x;
      v43 = y;
      v44 = width;
      v45 = height;

      sub_10079B8F4();
    }

    swift_beginAccess();
    BookReaderLayoutController.updateMenuMargin(safeAreaInsets:)(v39, *(v3 + 176), *(v3 + 184), *(v3 + 192));
    return swift_unknownObjectRelease();
  }

  return result;
}