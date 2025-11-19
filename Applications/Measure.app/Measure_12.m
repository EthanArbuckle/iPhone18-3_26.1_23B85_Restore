uint64_t sub_1000FC0F8(uint64_t a1)
{
  v29 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (!v5)
  {
LABEL_5:
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  while (1)
  {
    v9 = v7;
LABEL_8:
    v10 = (*(v29 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = *v10;
    v11 = v10[1];
    v1 = *(v28 + 72);
    v13 = swift_beginAccess();
    v30 = &v27;
    v14 = *(v1 + 88);
    v31[0] = v12;
    v31[1] = v11;
    __chkstk_darwin(v13);
    v26[2] = v31;

    v15 = sub_1000F4C70(sub_1000A4E88, v26, v14);

    if (v15)
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v9;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  sub_100104964(v12, v11);

  v16 = *(v28 + 312);
  if (!v16)
  {
  }

  v5 = &swift_isaMask;
  v17 = *((swift_isaMask & *v16) + 0x238);
  v8 = v16;
  v18 = v17();
  v1 = v18;
  if (v18 >> 62)
  {
LABEL_25:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v19 = *(v1 + 32);
  }

  v20 = v19;

  v22 = (*((*v5 & *v20) + 0x250))(v21);

  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_29:
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_19:
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 32);
LABEL_22:
    v25 = v24;

    sub_100104098(v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FC430()
{

  v1 = *(v0 + 432);
  v6[6] = *(v0 + 416);
  v6[7] = v1;
  v6[8] = *(v0 + 448);
  v2 = *(v0 + 368);
  v6[2] = *(v0 + 352);
  v6[3] = v2;
  v3 = *(v0 + 400);
  v6[4] = *(v0 + 384);
  v6[5] = v3;
  v4 = *(v0 + 336);
  v6[0] = *(v0 + 320);
  v6[1] = v4;
  sub_1001036D0(v6);
  sub_10001B360(*(v0 + 536));
}

uint64_t sub_1000FC53C()
{
  v0 = StateObserver.deinit();

  v1 = *(v0 + 432);
  v6[6] = *(v0 + 416);
  v6[7] = v1;
  v6[8] = *(v0 + 448);
  v2 = *(v0 + 368);
  v6[2] = *(v0 + 352);
  v6[3] = v2;
  v3 = *(v0 + 400);
  v6[4] = *(v0 + 384);
  v6[5] = v3;
  v4 = *(v0 + 336);
  v6[0] = *(v0 + 320);
  v6[1] = v4;
  sub_1001036D0(v6);
  sub_10001B360(*(v0 + 536));

  return v0;
}

uint64_t sub_1000FC65C()
{
  sub_1000FC53C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LinesInstrument()
{
  result = qword_1004A9588;
  if (!qword_1004A9588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FC7AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A02E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_10001D4C4(v2, qword_1004D4EA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000FC85C()
{
  sub_10000F974(&qword_1004A3DC0);
  sub_10001D47C(&qword_1004A3DC8, &qword_1004A3DC0);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_1000FC8E8(char a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  sub_10000F974(&unk_1004A3D70);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_1000FC9A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FC9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000FCA10()
{
  v1 = *(**(v0 + 128) + 200);

  v3 = v1(v2);

  (*(*v3 + 280))(sub_1000FCC90, 0);

  v4 = *(**(v0 + 88) + 144);

  v4(__dst, v5);

  if ((__dst[0] & 0x8000000000000000) != 0)
  {
    if (__dst[0] == 0x8000000000000018)
    {
      v6 = *(**(v0 + 144) + 144);

      v6(v15, v7);

      memcpy(__dst, v15, sizeof(__dst));
      sub_1000FCCD8(0, __dst);
      sub_100013C4C(__dst);
      return;
    }
  }

  else
  {
    sub_10001B360(__dst[0]);
  }

  v8 = *(**(v0 + 88) + 144);

  v8(__dst, v9);

  if ((__dst[0] & 0x8000000000000000) != 0)
  {
    if (__dst[0] == 0x8000000000000010)
    {
      v10 = *(v0 + 312);
      if (!v10)
      {
        return;
      }

      v11 = *((swift_isaMask & *v10) + 0xD8);
      v12 = v10;
      v13 = 3;
      goto LABEL_12;
    }
  }

  else
  {
    sub_10001B360(__dst[0]);
  }

  v14 = *(v0 + 312);
  if (!v14)
  {
    return;
  }

  v11 = *((swift_isaMask & *v14) + 0xD8);
  v12 = v14;
  v13 = 1;
LABEL_12:
  v11(v13);
}

void sub_1000FCC90(id *a1)
{
  a1[2] = 0;
  a1[3] = 0;

  *a1 = 0;
  a1[1] = 0;
}

void sub_1000FCCD8(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(**(v2 + 88) + 144);

  v6(&v137, v7);

  if ((v137._countAndFlagsBits >> 62) <= 1)
  {
    sub_10001B360(v137._countAndFlagsBits);
    return;
  }

  v8 = 0x8000000000000010;
  if (v137._countAndFlagsBits == 0x8000000000000018)
  {
    if (a1)
    {
      v9 = SnapType.all.unsafeMutableAddressor();
      sub_1000F7A14(*v9, a2);
    }

    sub_1000FAAC8();
    v10 = *(v2 + 304);
    if (v10)
    {
      v11 = *(v2 + 312);
      if (v11)
      {
        v12 = &swift_isaMask;
        v13 = *((swift_isaMask & *v10) + 0x2C0);
        v14 = v11;
        v15 = v10;
        v16 = *v13();
        (*(v16 + 376))();
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          v20 = (v13)(v19);
          v21 = (*(*v20 + 216))(v20);

          if (v21)
          {

            type metadata accessor for WorldAnchor();
            v13();
            v22 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
            (*((swift_isaMask & *v14) + 0x2E0))(v22);
          }
        }

        v23 = *((swift_isaMask & *v15) + 0x2F0);
        v129 = v15;
        v24 = v14;
        v25 = v23();
        v26 = v25 > 8 || ((1 << v25) & 0x1E9) == 0;
        v125 = v24;
        v126 = v24;
        v130 = v2;
        if (!v26)
        {
LABEL_16:
          (*((*v12 & *v24) + 0xD8))(0);
          v27 = v3[28];
          if (!v27)
          {
            goto LABEL_68;
          }

          v28 = *((*v12 & *v24) + 0x238);
          v10 = v27;
          v29 = v28();
          v30 = v29;
          if (v29 >> 62)
          {
LABEL_64:
            v31 = _CocoaArrayWrapper.endIndex.getter();
            if (v31)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v31)
            {
LABEL_19:
              v32 = 0;
              v33 = 0;
              v132 = *((*v12 & *v10) + 0xB8);
              v133 = v30 & 0xC000000000000001;
              v127 = v30 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                v123 = v32;
                v8 = v33;
                while (1)
                {
                  if (v133)
                  {
                    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v8 >= *(v127 + 16))
                    {
                      goto LABEL_62;
                    }

                    v34 = *(v30 + 8 * v8 + 32);
                  }

                  v3 = v34;
                  if (__OFADD__(v8, 1))
                  {
                    __break(1u);
LABEL_62:
                    __break(1u);
LABEL_63:
                    __break(1u);
                    goto LABEL_64;
                  }

                  v134 = v8 + 1;
                  v12 = v30;
                  v35 = v10;
                  v36 = v132();
                  v38 = v37;

                  v39 = *((swift_isaMask & *v3) + 0xB8);
                  v40 = v3;
                  v41 = v39();
                  v3 = v42;

                  if (v36 == v41 && v38 == v3)
                  {
                    break;
                  }

                  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v30 = v12;
                  v33 = v8 + 1;
                  if (v44)
                  {
                    goto LABEL_34;
                  }

                  ++v8;
                  if (v134 == v31)
                  {

                    v3 = v130;
                    v12 = &swift_isaMask;
                    v8 = 0x8000000000000010;
                    v45 = v126;
                    if (v123)
                    {
LABEL_67:

LABEL_68:
                      if (qword_1004A0288 != -1)
                      {
                        swift_once();
                      }

                      v12 = qword_1004D4DB0;
                      v137._countAndFlagsBits = 0;
                      v137._object = 0xE000000000000000;
                      _StringGuts.grow(_:)(35);

                      v137._countAndFlagsBits = 0xD000000000000014;
                      v137._object = 0x8000000100407350;
                      v73 = v3[39];
                      if (!v73)
                      {
                        goto LABEL_111;
                      }

                      v74 = *((swift_isaMask & *v73) + 0xB8);
                      v75 = v73;
                      v76 = v74();
                      v78 = v77;

                      v79._countAndFlagsBits = v76;
                      v79._object = v78;
                      String.append(_:)(v79);

                      v80._countAndFlagsBits = 0x6D61726620746120;
                      v80._object = 0xEB00000000203A65;
                      String.append(_:)(v80);
                      v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v81);

                      Log.default(_:isPrivate:)(v137, 0);

                      v24 = v125;
                      sub_100104508(v125);
                      sub_1001057DC(v125);
                      v82 = v3[39];
                      v3[39] = 0;

                      v83 = v3[11];
                      v137._countAndFlagsBits = v3[67];
                      countAndFlagsBits = v137._countAndFlagsBits;
                      v84 = *(*v83 + 392);
                      sub_100071684(v137._countAndFlagsBits);
                      sub_100071684(countAndFlagsBits);

                      v84(&v137);
                      sub_10001B360(countAndFlagsBits);

                      v10 = v126;
                      if (v3[67] == v8)
                      {
                        v85 = sub_1001059B0();
                        if (v85)
                        {
                          v86 = v85;
                          v87 = (*((swift_isaMask & *v85) + 0x250))();
                          if ((v87 & 0xC000000000000001) == 0)
                          {
                            if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
                            {
                              v88 = *(v87 + 40);
                              goto LABEL_76;
                            }

                            __break(1u);
LABEL_82:
                            v49 = _CocoaArrayWrapper.endIndex.getter();
                            v46 = v129;
                            goto LABEL_40;
                          }

                          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_76:
                          v89 = v88;

                          v90 = v3[39];
                          v3[39] = v89;

                          v91 = v3[39];
                          if (v91)
                          {
                            v92 = *((swift_isaMask & *v91) + 0xD8);
                            v93 = v91;
                            v92(3);
                          }
                        }
                      }

                      v94 = v3[13];
                      LOBYTE(v137._countAndFlagsBits) = 5;
                      v95 = *(*v94 + 392);

                      v95(&v137);

                      return;
                    }

LABEL_66:
                    (*((*v12 & *v10) + 0x330))(v45);
                    goto LABEL_67;
                  }
                }

                v30 = v12;
                v33 = v8 + 1;
LABEL_34:
                v32 = 1;
                if (v33 == v31)
                {

                  v3 = v130;
                  v8 = 0x8000000000000010;
                  goto LABEL_67;
                }
              }
            }
          }

          v45 = v126;
          goto LABEL_66;
        }

        v46 = v129;
        countAndFlagsBits = *((swift_isaMask & *v129) + 0x238);
        v48 = countAndFlagsBits();
        if (v48 >> 62)
        {
          goto LABEL_82;
        }

        v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:

        v125 = v24;
        if (!v49)
        {
          v51 = (*((*v12 & *v24) + 0x238))(v50);
          v52 = v51;
          v124 = countAndFlagsBits;
          if (v51 >> 62)
          {
            v96 = v51;
            v97 = _CocoaArrayWrapper.endIndex.getter();
            v52 = v96;
            v53 = v97;
            if (v97)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v53)
            {
LABEL_43:
              if (v53 < 1)
              {
                goto LABEL_110;
              }

              v12 = 0;
              v135 = *((swift_isaMask & *v24) + 0xB8);
              v131 = v52 & 0xC000000000000001;
              v128 = v52;
              do
              {
                if (v131)
                {
                  v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v58 = *(v52 + 8 * v12 + 32);
                }

                v8 = v58;
                v59 = v24;
                v60 = v135();
                v62 = v61;

                v30 = v8;
                v63 = (*((swift_isaMask & *v8) + 0x250))();
                v3 = v63;
                if ((v63 & 0xC000000000000001) != 0)
                {
                  v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_63;
                  }

                  v64 = *(v63 + 32);
                }

                v65 = v64;

                v67 = (*((swift_isaMask & *v65) + 0xB8))(v66);
                v69 = v68;

                if (v60 == v67 && v62 == v69)
                {
                }

                else
                {
                  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v71 & 1) == 0)
                  {
                    v72 = v46;
                    v55 = v8;
                    v56 = 0;
                    v57 = v10;
                    goto LABEL_47;
                  }
                }

                v54 = v46;
                v55 = v8;
                v56 = v10;
                v57 = 0;
LABEL_47:
                sub_100104F90(v55, v56, v57, 1);
                v24 = v126;
                ++v12;

                v52 = v128;
              }

              while (v53 != v12);
            }
          }

          v50 = v46;
          v125 = v50;
          v12 = &swift_isaMask;
          countAndFlagsBits = v124;
        }

        v98 = (countAndFlagsBits)(v50);
        v99 = v98;
        if (v98 >> 62)
        {
          goto LABEL_107;
        }

        v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v100)
        {
LABEL_108:

          v3 = v130;
          v8 = 0x8000000000000010;
          v24 = v126;
          goto LABEL_16;
        }

LABEL_87:
        if (v100 < 1)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          return;
        }

        v101 = 0;
        v136 = *((*v12 & *v129) + 0xB8);
        while (1)
        {
          v107 = (v99 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v99 + 8 * v101 + 32);
          v108 = v107;
          v109 = v129;
          v110 = v136();
          v112 = v111;

          v113 = (*((*v12 & *v108) + 0x250))();
          if ((v113 & 0xC000000000000001) != 0)
          {
            v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_107:
              v100 = _CocoaArrayWrapper.endIndex.getter();
              if (!v100)
              {
                goto LABEL_108;
              }

              goto LABEL_87;
            }

            v114 = *(v113 + 32);
          }

          v115 = v114;

          v117 = (*((*v12 & *v115) + 0xB8))(v116);
          v119 = v118;

          if (v110 == v117 && v112 == v119)
          {
            break;
          }

          v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v121)
          {
            goto LABEL_104;
          }

          v102 = v130[39];
          v103 = v102;
          v104 = v108;
          v105 = 0;
          v106 = v102;
LABEL_90:
          sub_100104F90(v104, v105, v106, 1);
          v12 = &swift_isaMask;
          ++v101;

          if (v100 == v101)
          {
            goto LABEL_108;
          }
        }

LABEL_104:
        v122 = v130[39];
        v103 = v122;
        v104 = v108;
        v105 = v122;
        v106 = 0;
        goto LABEL_90;
      }
    }
  }
}

id sub_1000FDB20(uint64_t a1, void **a2, void *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *(a1 + 224);
  *(a1 + 224) = *a2;
  v13 = v11;

  if (a3)
  {
    v14 = *(a1 + 304);
    *(a1 + 304) = a3;
    v15 = a3;

    v16 = a4[22];
    *(a1 + 240) = a4[21];
    *(a1 + 256) = v16;
    v17 = a4[24];
    *(a1 + 272) = a4[23];
    *(a1 + 288) = v17;
  }

  if (a5)
  {
    v18 = *(**(a1 + 128) + 144);

    v18(&v94, v19);

    v20 = v94;
    v21 = v95;

    v22 = *(**(a1 + 128) + 400);

    v23 = v22(&v94);
    v25 = *v24;
    v26 = *(v24 + 8);
    *v24 = v21;

    v23(&v94, 0);
  }

  else
  {
    sub_1000FF0D4(a4, &v94, *(a1 + 464));
    v27 = *&v94;
    v28 = BYTE8(v94);
    v29 = v95;
    v30 = v96;
    v31 = *(**(a1 + 128) + 144);

    v31(&v94, v32);

    v33 = v94;

    v34 = *(**(a1 + 128) + 144);

    v34(&v94, v35);

    v36 = *(&v94 + 1);
    if (v28 & 1) != 0 || !v29 || (v30)
    {

      v37 = 0;
      v33 = 0;
    }

    else
    {
      if (v33)
      {
        v61 = *((swift_isaMask & *v33) + 0x208);

        v62 = v33;
        v61(v27);
      }

      else
      {
        v63 = objc_allocWithZone(type metadata accessor for ScreenPoint());

        v33 = ScreenPoint.init(_:)();
        v64 = v33;
        v62 = 0;
      }

      type metadata accessor for WorldAnchor();

      v65 = v62;
      WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
      v66 = objc_allocWithZone(type metadata accessor for WorldPoint());
      v37 = WorldPoint.init(anchor:type:state:)();

      v67 = v37;
    }

    v38 = *(**(a1 + 128) + 400);

    v39 = v38(&v94);
    v41 = *v40;
    v42 = *(v40 + 8);
    *v40 = v33;
    *(v40 + 8) = v37;

    v39(&v94, 0);
  }

  result = [objc_opt_self() jasperAvailable];
  if (result)
  {
    v44 = *(a6 + 112);
    v45 = *(a6 + 80);
    v90 = *(a6 + 96);
    v91 = v44;
    v46 = *(a6 + 112);
    v92 = *(a6 + 128);
    v47 = *(a6 + 48);
    v48 = *(a6 + 16);
    v86 = *(a6 + 32);
    v87 = v47;
    v49 = *(a6 + 48);
    v50 = *(a6 + 80);
    v88 = *(a6 + 64);
    v89 = v50;
    v51 = *(a6 + 16);
    v85[0] = *a6;
    v85[1] = v51;
    v100 = v90;
    v101 = v46;
    v102 = *(a6 + 128);
    v96 = v86;
    v97 = v49;
    v98 = v88;
    v99 = v45;
    v93 = *(a6 + 144);
    v103 = *(a6 + 144);
    v94 = v85[0];
    v95 = v48;
    result = sub_1001034A4(&v94);
    if (result != 1)
    {
      v52 = *(**(a1 + 200) + 144);
      sub_10006C92C(v85, &v75, &qword_1004A97B0);
      sub_10006C92C(&v94, &v75, &qword_1004A1208);

      v52(&v75, v53);

      v71[6] = v81;
      v71[7] = v82;
      v71[8] = v83;
      v72 = v84;
      v71[2] = v77;
      v71[3] = v78;
      v71[4] = v79;
      v71[5] = v80;
      v71[0] = v75;
      v71[1] = v76;
      v54 = *(&v83 + 1);
      v55 = *(&v83 + 1);
      sub_100013BF8(v71);
      v56 = *(**(a1 + 200) + 144);

      v56(&v75, v57);

      v73[6] = v81;
      v73[7] = v82;
      v73[8] = v83;
      v74 = v84;
      v73[2] = v77;
      v73[3] = v78;
      v73[4] = v79;
      v73[5] = v80;
      v73[0] = v75;
      v73[1] = v76;
      v58 = v84;

      sub_100013BF8(v73);
      v81 = v100;
      v82 = v101;
      LOBYTE(v83) = v102;
      v77 = v96;
      v78 = v97;
      v79 = v98;
      v80 = v99;
      v75 = v94;
      v76 = v95;
      *(&v83 + 1) = v54;
      v84 = v58;
      v59 = *(a1 + 200);
      v69[0] = v94;
      v69[1] = v95;
      v69[4] = v98;
      v69[5] = v99;
      v69[2] = v96;
      v69[3] = v97;
      v70 = v58;
      v69[7] = v101;
      v69[8] = v83;
      v69[6] = v100;
      v60 = *(*v59 + 392);

      sub_100103798(&v75, &v68);
      v60(v69);
      sub_100013BF8(&v75);

      return sub_100018F04(v85, &qword_1004A97B0);
    }
  }

  return result;
}

void sub_1000FE180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(**(a1 + 88) + 144);

  v4(&v22, v5);

  if ((v22 >> 62) <= 1)
  {
    sub_10001B360(v22);
    v6 = 0uLL;
LABEL_3:
    v7 = 1;
    v8 = 0uLL;
LABEL_4:
    *a2 = v6;
    *(a2 + 16) = v8;
    *(a2 + 32) = v7;
    return;
  }

  v6 = 0uLL;
  if (v22 != 0x8000000000000010)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 312);
  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = *((swift_isaMask & *v9) + 0x238);
  v11 = v9;
  v12 = v10();

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v16 = (*((swift_isaMask & *v14) + 0x250))(v15);

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_13:
    v18 = v17;

    (*((swift_isaMask & *v18) + 0x2B0))(v19);

    simd_float4x4.position.getter();
    v21 = v20;
    simd_float4x4.position.getter();
    v6 = v21;
    v7 = 0;
    goto LABEL_4;
  }

LABEL_17:
  __break(1u);
}

void sub_1000FE3C4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(**(v4 + 128) + 144);

  v8(&v45, v9);

  v10 = v46;
  v12 = v47;
  v11 = v48;

  v13 = *(**(v5 + 128) + 144);

  v13(&v45, v14);

  v15 = v45;
  v16 = v46;
  v18 = v47;
  v17 = v48;
  v19 = v48;

  v20 = *(**(v5 + 128) + 144);

  v20(&v45, v21);

  v22 = v46;
  v23 = v47;
  v24 = v48;

  if (!v23)
  {
    v34 = objc_allocWithZone(type metadata accessor for ScreenPoint());
    v35 = ScreenPoint.init(_:)();

    v12 = v35;
    v36 = v35;
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    v25 = *((swift_isaMask & *v12) + 0x208);
    v26 = v12;
    v25(a1);

    v27 = v26;
    if (v17)
    {
LABEL_4:
      v28 = *((swift_isaMask & *v19) + 0x2C8);

      v28(v29);

      v30 = *((swift_isaMask & *v19) + 0x2F8);
      v31 = v19;
      v30(a3);

      v32 = *((swift_isaMask & *v31) + 0xD8);
      v33 = v31;
      v32(a4);

LABEL_7:
      v38 = *(**(v5 + 128) + 400);
      v39 = v19;

      v40 = v38(&v45);
      v42 = *(v41 + 16);
      v43 = *(v41 + 24);
      *(v41 + 16) = v12;
      *(v41 + 24) = v17;

      v40(&v45, 0);

      return;
    }

LABEL_6:
    v37 = objc_allocWithZone(type metadata accessor for WorldPoint());

    v17 = WorldPoint.init(anchor:type:state:)();
    v33 = v17;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000FE730(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008D4F0();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 camera];

    [v6 transform];
    simd_float4x4.forward.getter();
    v53 = 0.0 - *v7.i32;
    v52 = vsub_f32(0, vext_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL), 4uLL));
    v8 = simd_float4x4.position.getter();
    v12 = vmuls_lane_f32(v11 + vmuls_lane_f32(0.1, v52, 1), v52, 1) + ((v53 * (v9 + (v53 * 0.1))) + ((v10 + (0.1 * v52.f32[0])) * v52.f32[0]));
    *&v13 = (*((swift_isaMask & *a1) + 0x2A0))(v8);
    v60 = v14;
    v61 = v13;
    v59 = v15;
    v55 = v16;
    *&v17 = (*((swift_isaMask & *a1) + 0x2A8))();
    v57 = v18;
    v58 = v17;
    v56 = v19;
    v54 = v20;
    type metadata accessor for MeasureCamera();
    simd_float4x4.position.getter();
    v50 = v21;
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v51 = v22;
    simd_float4x4.position.getter();
    v49 = v23;
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v25 = v24;
    v26 = vsub_f32(*v49.i8, *v50.i8);
    v27 = *&v49.i32[2] - *&v50.i32[2];
    __asm { FMOV            V5.2S, #1.0 }

    v33 = vcgt_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v51, v51, 8uLL)), _D5);
    if (v33.i8[4])
    {
      if (v33.i8[0])
      {
        sub_100103650(&v72);
LABEL_10:
        v45 = v79;
        *(a2 + 96) = v78;
        *(a2 + 112) = v45;
        *(a2 + 128) = v80;
        *(a2 + 144) = v81;
        v46 = v75;
        *(a2 + 32) = v74;
        *(a2 + 48) = v46;
        v47 = v77;
        *(a2 + 64) = v76;
        *(a2 + 80) = v47;
        v48 = v73;
        *a2 = v72;
        *(a2 + 16) = v48;
        return;
      }

      v39 = vmul_f32(v52, *&vextq_s8(v49, v49, 4uLL));
      v40 = vdup_lane_s32(v52, 0);
      v40.f32[0] = v53;
      v41 = (v12 - (v39.f32[1] + ((v53 * *v49.i32) + v39.f32[0]))) / ((v52.f32[1] * (0.0 - v27)) + vaddv_f32(vmul_f32(v40, vsub_f32(0, v26))));
      v42 = v27 * v41;
      *&v43 = vsub_f32(*v49.i8, vmul_n_f32(v26, v41));
      *(&v43 + 1) = __PAIR64__(1.0, *&v49.i32[2] - v42);
      v55 = v43;
      simd_float4x4.position.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    }

    else if (v33.i8[0])
    {
      v34 = vmul_f32(v52, *&vextq_s8(v50, v50, 4uLL));
      v35 = v12 - (v34.f32[1] + ((v53 * *v50.i32) + v34.f32[0]));
      v36 = vdup_lane_s32(v52, 0);
      v36.f32[0] = v53;
      v37 = v35 / ((v52.f32[1] * v27) + vaddv_f32(vmul_f32(v36, v26)));
      *&v38 = vadd_f32(*v50.i8, vmul_n_f32(v26, v37));
      *(&v38 + 1) = __PAIR64__(1.0, *&v50.i32[2] + (v27 * v37));
      v54 = v38;
      simd_float4x4.position.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    }

    closestPointOnLine(lineP1:lineP2:point:)();
    v62 = v44;
    v63 = v61;
    v64 = v60;
    v65 = v59;
    v66 = v55;
    v67 = v58;
    v68 = v57;
    v69 = v56;
    v70 = v54;
    sub_100103648(&v62);
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v74 = v64;
    v75 = v65;
    v76 = v66;
    v77 = v67;
    v72 = v62;
    v73 = v63;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1000FEB6C(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() jasperAvailable];
  v4 = 0uLL;
  if (!v3)
  {
    v10 = 0;
    v17 = 0.0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
LABEL_41:
    *a1 = v10;
    *(a1 + 8) = 0;
    *(a1 + 16) = v4;
    *(a1 + 32) = v18;
    *(a1 + 48) = v19;
    *(a1 + 64) = v20;
    *(a1 + 80) = v17;
    return;
  }

  v5 = *(**(v1 + 176) + 144);

  v5(&v54, v6);

  v7 = *(&v54 + 1);

  v35 = a1;
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = matrix_identity_float4x4.columns[0];
  if (v8)
  {
    if (v8 < 1)
    {
      __break(1u);
LABEL_37:
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (v27)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }

    v38 = 1;
    swift_beginAccess();
    v9 = 0;
    v37 = 0.0;
    v10 = 0;
    v11 = 900.0;
    v36 = v39;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v7 + 8 * v9 + 32);
      }

      v14 = v13;
      sub_1000FE730(v13, v40);
      v60 = v40[6];
      v61 = v40[7];
      v62 = v40[8];
      v63 = v41;
      v56 = v40[2];
      v57 = v40[3];
      v58 = v40[4];
      v59 = v40[5];
      v54 = v40[0];
      v55 = v40[1];
      if (sub_100103514(&v54) == 1 || (v15 = vsub_f32(*(v1 + 464), *&v54), v12 = vaddv_f32(vmul_f32(v15, v15)), v12 >= v11))
      {
        v12 = v11;
      }

      else
      {
        v37 = *&v54;
        v38 = 0;
        v16 = v14;
        v14 = v10;
        v10 = v16;
        v36 = v55;
      }

      ++v9;

      v11 = v12;
    }

    while (v8 != v9);

    if (v10)
    {
LABEL_33:
      if (v38)
      {
LABEL_34:

        v10 = 0;
        v17 = 0.0;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        a1 = v35;
        v4 = 0uLL;
        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  else
  {

    v37 = 0.0;
    v38 = 1;
    v36 = v39;
  }

  v21 = *(**(v1 + 176) + 144);

  v21(&v44, v22);

  v23 = v44;

  v24 = *(**(v1 + 176) + 144);

  v24(&v44, v25);

  v26 = v45;

  *&v44 = v23;
  sub_100103A50(v26);
  v7 = v44;
  if (v44 >> 62)
  {
    goto LABEL_37;
  }

  v27 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
LABEL_21:
    if (v27 < 1)
    {
      __break(1u);
      goto LABEL_43;
    }

    swift_beginAccess();
    v28 = 0;
    v10 = 0;
    v29 = 900.0;
    do
    {
      while (1)
      {
        v30 = (v7 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v7 + 32 + 8 * v28);
        v31 = v30;
        sub_1000FE730(v30, v42);
        v50 = v42[6];
        v51 = v42[7];
        v52 = v42[8];
        v53 = v43;
        v46 = v42[2];
        v47 = v42[3];
        v48 = v42[4];
        v49 = v42[5];
        v44 = v42[0];
        v45 = v42[1];
        if (sub_100103514(&v44) == 1)
        {
          break;
        }

        v32 = vsub_f32(*(v1 + 464), *&v44);
        v33 = vaddv_f32(vmul_f32(v32, v32));
        if (v33 >= v29)
        {
          break;
        }

        v36 = v45;
        v37 = *&v44;

        v38 = 0;
        v29 = v33;
        v10 = v31;
        if (v27 - 1 == v28++)
        {

          v10 = v31;
          goto LABEL_39;
        }
      }

      ++v28;
    }

    while (v27 != v28);

    goto LABEL_33;
  }

LABEL_38:

  v10 = 0;
  if (v38)
  {
    goto LABEL_34;
  }

LABEL_39:
  v4 = sub_100103530(v37, v36);
  a1 = v35;
  if (v10)
  {
    v17 = v37;
    goto LABEL_41;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1000FF0D4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10008D4F0();
  *&v74 = result;
  if (!result)
  {
    v38 = 0.0;
    v39 = 0;
    goto LABEL_32;
  }

  *&v72 = v13;
  v73 = a1;
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = [v17 kPEShowStats];

  if (v18)
  {
    MeasureCore.shared.unsafeMutableAddressor();

    MeasureCore.planeSelectionStats.getter();

    if ((v123 & 1) == 0)
    {
      sub_10004D9B4();
      *&v71 = static OS_dispatch_queue.main.getter();
      v19 = swift_allocObject();
      v20 = v120;
      v19[1] = v119;
      v19[2] = v20;
      v21 = v122;
      v19[3] = v121;
      v19[4] = v21;
      *&v131 = sub_100103790;
      *(&v131 + 1) = v19;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v130 = sub_100041180;
      *(&v130 + 1) = &unk_10046E2C8;
      *&v70 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      v69[1] = sub_1001030D4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v70;
      v23 = v71;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);

      (*(v9 + 8))(v11, v8);
      (*(v72 + 8))(v15, v12);
    }
  }

  v24 = *(v4 + 312);
  if (!v24)
  {
    v37 = 0;
    v28 = v74;
    goto LABEL_24;
  }

  v25 = *((swift_isaMask & *v24) + 0x238);
  v26 = v24;
  v27 = v25();

  if (v27 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v74;
    if (!v40)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v28 = v74;
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v29 = *(v27 + 32);
  }

  v30 = v29;

  v32 = (*((swift_isaMask & *v30) + 0x250))(v31);

  if (!(v32 >> 62))
  {
    result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_23:

    v37 = 0;
    goto LABEL_24;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v32 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v32 + 32);
LABEL_16:
    v34 = v33;

    v36 = (*((swift_isaMask & *v34) + 0x2C0))(v35);

    v37 = (*(*v36 + 216))();

LABEL_24:
    *(v4 + 321) = *(v4 + 312) == 0;
    v41 = *(**(v4 + 88) + 144);

    v41(&aBlock, v42);

    if ((aBlock >> 62) > 1)
    {
      v43 = aBlock == 0x8000000000000018;
    }

    else
    {
      sub_10001B360(aBlock);
      v43 = 0;
    }

    *(v4 + 322) = v43;
    *(v4 + 456) = v37;

    MeasureCore.shared.unsafeMutableAddressor();
    v44 = *(v4 + 320);
    v45 = *(v4 + 336);
    v46 = *(v4 + 368);
    v96[2] = *(v4 + 352);
    v96[3] = v46;
    v47 = *(v4 + 336);
    v48 = *(v4 + 352);
    v49 = *(v4 + 320);
    v96[0] = v44;
    v96[1] = v47;
    v50 = *(v4 + 432);
    v101 = *(v4 + 448);
    v51 = *(v4 + 400);
    v52 = *(v4 + 432);
    v99 = *(v4 + 416);
    v100 = v52;
    v53 = *(v4 + 368);
    v54 = *(v4 + 400);
    v97 = *(v4 + 384);
    v98 = v54;
    v108 = v99;
    v109 = v50;
    v110 = *(v4 + 448);
    v104 = v48;
    v105 = v53;
    v106 = v97;
    v107 = v51;
    v102 = v49;
    v103 = v45;
    nullsub_1(&v102);
    v135 = v108;
    v136 = v109;
    v137 = v110;
    v131 = v104;
    v132 = v105;
    v133 = v106;
    v134 = v107;
    aBlock = v102;
    v130 = v103;

    sub_100103674(v96, &v88);
    MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();
    v115 = v92;
    v116 = v93;
    v117 = v94;
    v118 = v95;
    v111 = v88;
    v112 = v89;
    v113 = v90;
    v114 = v91;
    sub_1001036D0(v96);

    v39 = *(&v94 + 1);
    if (*(&v94 + 1))
    {
      v74 = v89;
      v71 = v91;
      v72 = v90;
      v70 = v92;
      v55 = v95;
      if (*(*(&v94 + 1) + 48) != 4)
      {
        v56 = *(v4 + 416);
        v78[4] = *(v4 + 400);
        v78[5] = v56;
        v78[6] = *(v4 + 432);
        v79 = *(v4 + 448);
        v57 = *(v4 + 352);
        v78[0] = *(v4 + 336);
        v78[1] = v57;
        v58 = *(v4 + 384);
        v78[2] = *(v4 + 368);
        v78[3] = v58;
        v59 = v74;
        *(v4 + 336) = v88;
        *(v4 + 352) = v59;
        v60 = v71;
        *(v4 + 368) = v72;
        *(v4 + 384) = v60;
        v61 = v93;
        v62 = v94;
        *(v4 + 400) = v70;
        *(v4 + 416) = v61;
        *(v4 + 432) = v62;
        *(v4 + 440) = v39;
        *(v4 + 448) = v55;
        v82 = v113;
        v83 = v114;
        v80 = v111;
        v81 = v112;
        v87 = v118;
        v85 = v116;
        v86 = v117;
        v84 = v115;
        sub_100103724(&v80, v77);
        sub_100018F04(v78, &qword_1004A3E20);
      }

      v63 = v73[21];
      v64 = v73[22];
      v65 = v73[23];
      v66 = v73[24];
      v75 = 0;
      v124 = v63;
      v125 = v64;
      v126 = v65;
      v127 = v66;
      v128 = 0;
      v76 = 1;
      memset(v77, 0, 64);
      v77[64] = 1;
      type metadata accessor for WorldAnchor();
      swift_allocObject();
      v84 = v115;
      v85 = v116;
      v86 = v117;
      v87 = v118;
      v80 = v111;
      v81 = v112;
      v82 = v113;
      v83 = v114;
      sub_100103724(&v80, v78);
      v39 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
      v38 = a3;
      v67 = static MeasureObjectState.default;
      sub_100018F04(&v88, &qword_1004A3E20);

      v68 = 0;
      goto LABEL_33;
    }

    v38 = 0.0;
LABEL_32:
    v67 = 0;
    v68 = 1;
LABEL_33:
    *a2 = v38;
    *(a2 + 8) = v68;
    *(a2 + 16) = v39;
    *(a2 + 24) = v67;
    *(a2 + 32) = v68;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FF9D0(_OWORD *a1)
{
  sub_1000FF0D4(a1, &v8, *(v1 + 464));
  if (v9 & 1) != 0 || !v10 || (v12)
  {
    v3 = *(**(v1 + 128) + 400);

    v4 = v3(&v8);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;

    v4(&v8, 0);
  }

  else
  {
    sub_1000FE3C4(v8, v10, 0, v11);
  }
}

void sub_1000FFAE0(uint64_t *a1)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (qword_1004D4AC8)
  {
    v2 = *(qword_1004D4AC8 + 104);
    if (v2)
    {
      v3 = v2;
      sub_1001C441C(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FFB8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v7 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000F974(&qword_1004A9798);
  v108 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v10;
  __chkstk_darwin(v12);
  v113 = &v96 - v13;
  v14 = SnapType.all.unsafeMutableAddressor();
  sub_1000F7A14(*v14, a1);
  sub_1000FAAC8();
  v15 = *(v1 + 304);
  if (!v15)
  {
    return;
  }

  v16 = *(v1 + 312);
  if (!v16)
  {
    return;
  }

  v99 = v4;
  v100 = v11;
  v98 = v5;
  v17 = *((swift_isaMask & *v16) + 0x238);
  v18 = ((swift_isaMask & *v16) + 568);
  v19 = v15;
  v110 = v16;
  v20 = v17();
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_66;
    }

    v21 = *(v20 + 32);
  }

  v18 = v21;

  v17 = &swift_isaMask;
  v23 = *((swift_isaMask & *v18) + 0x250);
  v111 = (swift_isaMask & *v18) + 592;
  v112 = v23;
  v24 = (v23)(v22);
  v107 = v19;
  v97 = v7;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v25 = *(v24 + 32);
  }

  v19 = v25;

  (*((swift_isaMask & *v19) + 0xD8))(0);

  v26 = v112();
  if ((v26 & 0xC000000000000001) == 0)
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v27 = *(v26 + 40);
      goto LABEL_12;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_66:
  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
  v28 = v27;

  v29 = v28;
  (*((*v17 & *v28) + 0xD8))(0);

  v19 = v107;
  if ((*(v2 + 576) & 1) == 0)
  {
    v31 = *(v2 + 560);
    v32 = *a1 >= v31;
    v33 = *a1 - v31;
    if (!v32)
    {
      __break(1u);
      goto LABEL_78;
    }

    v30 = (*((*v17 & *v18) + 0x2E8))(v33 / (*(a1 + 8) - *(v2 + 568)));
  }

  v34 = *((*v17 & *v19) + 0x2F0);
  v102 = (*v17 & *v19) + 752;
  v103 = v34;
  v35 = (v34)(v30);
  if (v35 > 8 || ((1 << v35) & 0x1E9) == 0)
  {
    v50 = v19;
    sub_100104F90(v18, 0, v15, 1);

    goto LABEL_43;
  }

  type metadata accessor for WorldAnchor();
  v36 = (*v17 & *v19);
  v101 = v18;
  v37 = v17;
  v36 += 88;
  v38 = *v36;
  (*v36)();
  v39 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  v7 = v110;
  v40 = (*((*v37 & *v110) + 0x2C8))(v39);
  (v38)(v40);
  v41 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  v42 = *v37;
  v18 = v101;
  (*((v42 & *v7) + 0x2E0))(v41);
  if ([objc_opt_self() jasperAvailable])
  {
    v43 = v103;
    v44 = v103() == 6;
    v45 = (*((swift_isaMask & *v18) + 0x2A0))(v44);
    v46 = (v43)(v45);
    if (v46 <= 8 && ((1 << v46) & 0x160) != 0)
    {
      v47 = *(**(v2 + 200) + 144);

      v47(v114, v48);

      v122 = v114[6];
      v123 = v114[7];
      v124 = v114[8];
      v125 = v115;
      v118 = v114[2];
      v119 = v114[3];
      v120 = v114[4];
      v121 = v114[5];
      v116 = v114[0];
      v117 = v114[1];
      sub_10006C92C(&v116, v114, &qword_1004A1208);
      sub_100013BF8(&v116);
      v126[6] = v122;
      v126[7] = v123;
      v127 = v124;
      v126[2] = v118;
      v126[3] = v119;
      v126[4] = v120;
      v126[5] = v121;
      v126[0] = v116;
      v126[1] = v117;
      if (sub_10001376C(v126) != 1)
      {
        v29 = *&v126[0];
        v49 = (*((swift_isaMask & **&v126[0]) + 0x258))();
        if (v49 > 1)
        {
          if (v49 != 2)
          {
            if (qword_1004A0350 != -1)
            {
              swift_once();
            }

            sub_1001250F4(v29, v110);
          }

          goto LABEL_34;
        }

        if (v49)
        {
          if (qword_1004A0350 != -1)
          {
            swift_once();
          }

          sub_1001258C8(v29, v110);
          goto LABEL_34;
        }

        if (qword_1004A0350 == -1)
        {
LABEL_25:
          sub_100125524(v29, v110);
LABEL_34:
          sub_100018F04(&v116, &qword_1004A1208);
          goto LABEL_35;
        }

LABEL_78:
        swift_once();
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  v51 = *(v2 + 224);
  if (v51)
  {
    v52 = *((swift_isaMask & *v51) + 0xB8);
    v53 = v51;
    v54 = v52();
    v56 = v55;
    v57 = *((swift_isaMask & *v18) + 0xB8);
    v58 = v18;
    v7 = v57();
    v60 = v59;

    if (v54 == v7 && v56 == v60)
    {
    }

    else
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v61 & 1) == 0)
      {
        (*((swift_isaMask & *v53) + 0x330))(v110);
      }
    }

    v19 = v107;
  }

LABEL_43:
  sub_10000F974(&unk_1004A3F10);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1003D56B0;
  *(v62 + 32) = v18;
  v16 = type metadata accessor for WorldLine();
  a1 = sub_1001030D4(&qword_1004A97A0, &type metadata accessor for WorldLine);
  v18 = v18;
  MeasurementEvent.init(name:results:)();
  if (qword_1004A0180 != -1)
  {
LABEL_69:
    swift_once();
  }

  if (!qword_1004D4AD0)
  {
    __break(1u);
    return;
  }

  v63 = *(qword_1004D4AD0 + qword_1004D4F68);
  if (!v63)
  {
    goto LABEL_50;
  }

  v64 = v100;
  sub_10006C92C(v113, v100, &qword_1004A9798);
  v65 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v66 = swift_allocObject();
  sub_1001032A4(v64, v66 + v65);
  v16 = (v63 + OBJC_IVAR____TtC7Measure15ResultsReporter_report);
  swift_beginAccess();
  v7 = *(type metadata accessor for Report(0) + 20);
  a1 = *(v16 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + v7) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v69 = *(a1 + 16);
    v68 = *(a1 + 24);
    if (v69 >= v68 >> 1)
    {
      a1 = sub_100068090((v68 > 1), v69 + 1, 1, a1);
    }

    *(a1 + 16) = v69 + 1;
    v70 = a1 + 16 * v69;
    *(v70 + 32) = sub_100103314;
    *(v70 + 40) = v66;
    *(v16 + v7) = a1;
    swift_endAccess();
    sub_1000CC5E0();

    v19 = v107;
LABEL_50:
    v66 = *(v2 + 72);
    v71 = v112();
    if ((v71 & 0xC000000000000001) != 0)
    {
      v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_73:
        swift_once();
        goto LABEL_57;
      }

      v72 = *(v71 + 40);
    }

    v16 = v72;

    sub_100104508(v16);

    v73 = v112();
    if ((v73 & 0xC000000000000001) != 0)
    {
      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_76;
      }

      v74 = *(v73 + 40);
    }

    v75 = v74;

    sub_1001057DC(v75);

    v76 = *(v2 + 312);
    *(v2 + 312) = 0;

    v77 = *(v2 + 88);
    *&v116 = 0x8000000000000008;
    v78 = *(*v77 + 392);

    v78(&v116);

    v79 = *(v2 + 168);
    v80 = *(*v79 + 200);
    v16 = (*v79 + 200);

    v82 = v80(v81);

    (*(*v82 + 280))(sub_1000337C8, 0);

    if (qword_1004A0350 != -1)
    {
      goto LABEL_73;
    }

LABEL_57:
    v66 = qword_1004D4F08;
    v83 = sub_100125C6C(v18, v110);
    v84 = (v112)(v83);
    if ((v84 & 0xC000000000000001) != 0)
    {
      break;
    }

    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v85 >= 2)
    {
      goto LABEL_59;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    a1 = sub_100068090(0, *(a1 + 16) + 1, 1, a1);
    *(v16 + v7) = a1;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();

  swift_unknownObjectRelease();
LABEL_59:
  v103();
  v86 = v66 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  *(v86 + 64) = *(v86 + 64) + 1.0;
  v87 = [objc_opt_self() standardUserDefaults];
  v88 = [v87 kPEShowAccuracy];

  if (v88)
  {
    sub_10004D9B4();
    v89 = static OS_dispatch_queue.main.getter();
    v90 = swift_allocObject();
    *(v90 + 16) = v18;
    *&v118 = sub_100103154;
    *(&v118 + 1) = v90;
    *&v116 = _NSConcreteStackBlock;
    *(&v116 + 1) = 1107296256;
    *&v117 = sub_100041180;
    *(&v117 + 1) = &unk_10046E250;
    v91 = _Block_copy(&v116);
    v112 = v18;

    v92 = v104;
    static DispatchQoS.unspecified.getter();
    *&v116 = _swiftEmptyArrayStorage;
    sub_1001030D4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    v93 = v19;
    v94 = v105;
    v95 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v91);
    (*(v98 + 8))(v94, v95);
    (*(v97 + 8))(v92, v106);
    sub_100018F04(v113, &qword_1004A9798);
  }

  else
  {
    sub_100018F04(v113, &qword_1004A9798);
  }
}

void sub_100100CBC(float32x4_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 304);
  v5 = v4;
  v6 = SnapType.all.unsafeMutableAddressor();
  sub_1000F7A14(*v6, a1);
  sub_1000FAAC8();
  v7 = *(**(v1 + 128) + 144);

  v7(&v109, v8);

  object = v109._object;
  v10 = v110;

  if (!*(&v10 + 1))
  {

    return;
  }

  v105 = a1;
  v106 = v5;
  type metadata accessor for WorldAnchor();
  v104 = v4;
  v11 = *((swift_isaMask & **(&v10 + 1)) + 0x2C0);
  v11();
  WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  v12 = type metadata accessor for WorldPoint();
  v13 = objc_allocWithZone(v12);
  v14 = WorldPoint.init(anchor:type:state:)();
  v11();
  WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  v15 = objc_allocWithZone(v12);
  v16 = WorldPoint.init(anchor:type:state:)();
  v17 = objc_allocWithZone(type metadata accessor for WorldLine());
  v18 = v14;
  v102 = v16;
  v103 = v18;
  v19 = WorldLine.init(end1:end2:initialState:)();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = *((swift_isaMask & *v19) + 0x150);
  v23 = v19;

  v22(sub_100103018, v21);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  v26 = *((swift_isaMask & *v23) + 0x168);
  v27 = v23;

  v28 = v25;
  v29 = &swift_isaMask;
  v26(sub_100103064, v28);

  (*((swift_isaMask & *v27) + 0xD8))(3);
  (*((swift_isaMask & *v27) + 0x138))(nullsub_1, 0);
  (*((swift_isaMask & *v27) + 0x108))(variable initialization expression of SCNPatchDebugger.SKDebugRenderer.renderEmboss, 0);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v27;
  v32 = *((swift_isaMask & *v27) + 0x120);
  v33 = v27;

  v32(sub_100103070, v31);

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  v36 = *((swift_isaMask & *v33) + 0x180);
  v37 = v33;

  v36(sub_100103078, v35);
  v38 = *(&v10 + 1);

  if (v104)
  {
    v40 = *((swift_isaMask & *v106) + 0x2F0);
    v41 = v106;
    if (v40() == 1 || v40() == 2)
    {
      v42 = (*((swift_isaMask & **(&v10 + 1)) + 0x2F0))();
      if (v42 <= 8 && ((1 << v42) & 0x1E9) != 0)
      {
        if (qword_1004A0288 != -1)
        {
          goto LABEL_57;
        }

        while (1)
        {
          v43._countAndFlagsBits = 0xD000000000000020;
          v43._object = 0x8000000100407300;
          Log.default(_:isPrivate:)(v43, 0);
          (*((swift_isaMask & *v38) + 0xD8))(0);
          (*((swift_isaMask & *v37) + 0x2D0))(1);
          (*((swift_isaMask & *v37) + 0x318))(v41);
          v44 = sub_100104B30(v37, 1);
          v45 = *(**(v2 + 128) + 400);

          v46 = v45(&v109);
          v48 = *(v47 + 16);
          v49 = *(v47 + 24);
          *(v47 + 16) = 0;
          *(v47 + 24) = 0;

          v38 = *(&v10 + 1);
          v46(&v109, 0);

LABEL_9:

          v50 = v105;
          if ((v44 & 1) == 0)
          {
            goto LABEL_10;
          }

LABEL_30:
          v41 = &swift_isaMask;
          if ([objc_opt_self() jasperAvailable])
          {
            v67 = (*((swift_isaMask & *v38) + 0x2F0))();
            if (v67 <= 8 && ((1 << v67) & 0x160) != 0)
            {
              v68 = *(**(v2 + 200) + 144);

              v68(v107, v69);

              v115 = v107[6];
              v116 = v107[7];
              v117 = v107[8];
              v118 = v108;
              v111 = v107[2];
              v112 = v107[3];
              v113 = v107[4];
              v114 = v107[5];
              v109 = v107[0];
              v110 = v107[1];
              sub_10006C92C(&v109, v107, &qword_1004A1208);
              sub_100013BF8(&v109);
              v119[6] = v115;
              v119[7] = v116;
              v120 = v117;
              v119[2] = v111;
              v119[3] = v112;
              v119[4] = v113;
              v119[5] = v114;
              v119[0] = v109;
              v119[1] = v110;
              if (sub_10001376C(v119) != 1)
              {
                v70 = *&v119[0];
                if (!(*((swift_isaMask & **&v119[0]) + 0x258))())
                {
                  v71 = *(&v10 + 1);
                  if (qword_1004A0350 != -1)
                  {
                    swift_once();
                    v71 = *(&v10 + 1);
                  }

                  sub_100124CA0(v70, v71);
                }

                sub_100018F04(&v109, &qword_1004A1208);
              }
            }
          }

          v72 = *(v2 + 168);
          v73 = *(*v72 + 200);
          v38 = (*v72 + 200);

          v75 = v73(v74);

          (*(*v75 + 280))(sub_1000337C8, 0);

          v77 = (*((swift_isaMask & *v37) + 0x250))(v76);
          if ((v77 & 0xC000000000000001) != 0)
          {
            goto LABEL_55;
          }

          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v78 = *(v77 + 40);
            goto LABEL_42;
          }

          __break(1u);
LABEL_57:
          swift_once();
        }
      }
    }

    v29 = &swift_isaMask;
  }

  v51 = (*((swift_isaMask & **(&v10 + 1)) + 0x2F0))(v39);
  if (v51 > 8 || ((1 << v51) & 0x1E9) == 0)
  {
    if (qword_1004A0288 != -1)
    {
      swift_once();
    }

    v95._countAndFlagsBits = 0xD00000000000001FLL;
    v95._object = 0x80000001004072A0;
    Log.default(_:isPrivate:)(v95, 0);
    (*((swift_isaMask & **(&v10 + 1)) + 0xD8))(0);
    (*((swift_isaMask & *v37) + 0x2D0))(1);
    (*((swift_isaMask & *v37) + 0x318))(*(&v10 + 1));
    v44 = sub_100104B30(v37, 1);
    v96 = *(**(v2 + 128) + 400);

    v97 = v96(&v109);
    v99 = *(v98 + 16);
    v100 = *(v98 + 24);
    *(v98 + 16) = 0;
    *(v98 + 24) = 0;

    v38 = *(&v10 + 1);
    v97(&v109, 0);
    goto LABEL_9;
  }

  v50 = v105;
  if (*(*(v2 + 72) + 152))
  {
    goto LABEL_18;
  }

  if (qword_1004A0288 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v52._countAndFlagsBits = 0xD00000000000001ALL;
    v52._object = 0x80000001004072E0;
    Log.default(_:isPrivate:)(v52, 0);
LABEL_18:
    (*((*v29 & *v37) + 0x2D0))(1);
    v53 = sub_100104B30(v37, 1);
    v54 = *(v2 + 224);
    if (!v54)
    {
      break;
    }

    v55 = *((*v29 & *v37) + 0x250);
    v38 = ((*v29 & *v37) + 592);
    v29 = v54;
    v56 = v55();
    v101 = v53;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v57 = v105;
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_22;
    }

    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v57 = v105;
      v58 = *(v56 + 32);
LABEL_22:
      v59 = v58;
      v38 = *(&v10 + 1);

      (*((swift_isaMask & *v29) + 0x330))(v59);

      v29 = &swift_isaMask;
      v50 = v57;
      v53 = v101;
      break;
    }

    __break(1u);
LABEL_60:
    swift_once();
  }

  v60 = *((*v29 & *v37) + 0x250);
  v61 = v60();
  if ((v61 & 0xC000000000000001) != 0)
  {
    v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v62 = *(v61 + 32);
LABEL_26:
    v63 = v62;

    (*((swift_isaMask & *v63) + 0xD8))(6);

    v64 = v60();
    if ((v64 & 0xC000000000000001) != 0)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_29:
      v66 = v65;

      (*((swift_isaMask & *v66) + 0xD8))(3);

      if (v53)
      {
        goto LABEL_30;
      }

LABEL_10:

      return;
    }

    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v65 = *(v64 + 40);
      goto LABEL_29;
    }

    goto LABEL_54;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_42:
  v79 = v78;

  v80 = *(v2 + 312);
  *(v2 + 312) = v79;
  v81 = v79;

  sub_100104098(v81);
  if (qword_1004A0288 != -1)
  {
    swift_once();
  }

  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v109._countAndFlagsBits = 0xD000000000000010;
  v109._object = 0x80000001004072C0;
  v83 = (*((swift_isaMask & *v37) + 0xB8))(v82);
  v85 = v84;

  v86._countAndFlagsBits = v83;
  v86._object = v85;
  String.append(_:)(v86);

  v87._countAndFlagsBits = 0x6D61726620746120;
  v87._object = 0xEB00000000203A65;
  String.append(_:)(v87);
  v88 = *v50;
  *&v107[0] = *v50;
  v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v89);

  Log.default(_:isPrivate:)(v109, 0);

  v90 = *(v2 + 88);
  v109._countAndFlagsBits = 0x8000000000000010;
  v91 = *(*v90 + 392);

  v91(&v109);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  if (*(v2 + 312))
  {
    v92 = qword_1004D4F08;
    (*((swift_isaMask & **(&v10 + 1)) + 0x2F0))();

    v93 = v92 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    swift_beginAccess();
    *(v93 + 64) = *(v93 + 64) + 1.0;
    v94 = v50[1];
    *(v2 + 560) = v88;
    *(v2 + 568) = v94;
    *(v2 + 576) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100101FF8(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0xD0);
  if (!v1() || (result = v1(), result == 2))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {

      sub_1001046D4();
    }
  }

  return result;
}

uint64_t sub_1001020BC(void *a1)
{
  result = (*((swift_isaMask & *a1) + 0xD0))();
  if (result == 9)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {

      sub_1001046DC();
    }
  }

  return result;
}

BOOL sub_100102168(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_1001021F0(a2);
  }

  else
  {
    return 0;
  }

  return v3;
}

BOOL sub_1001021F0(void *a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *a1) + 0xD0);
  if (v4() != 5 && v4())
  {
    return 0;
  }

  v6 = *(v2 + 472);
  v7 = CGPoint.floats.getter();
  v9 = v8;
  v16[65] = (*((swift_isaMask & *a1) + 0x250))(v7);
  sub_10000F974(&qword_1004A9788);
  sub_10001D47C(&qword_1004A9790, &qword_1004A9788);
  v10 = RangeReplaceableCollection<>.idToObjectMap.getter();

  v11 = *(**(v2 + 144) + 144);

  v11(v16, v12);

  memcpy(__dst, v16, sizeof(__dst));
  sub_10008FA10(v10, v9, v6);
  v14 = v13;
  sub_100013C4C(__dst);

  v5 = v14 != 0;

  return v5;
}

uint64_t sub_1001023DC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v5 = (*((swift_isaMask & *a2) + 0xB8))(v4);
    sub_100104964(v5, v6);
  }

  return result;
}

void sub_100102498(void *a1)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (qword_1004D4AC8)
  {
    v2 = *(qword_1004D4AC8 + 112);
    if (v2)
    {
      v3 = v2;
      sub_10004F794(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100102544()
{
  v1 = v0;
  v2 = sub_1001059B0();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = *((swift_isaMask & *v2) + 0x250);
  v5 = v4();
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  sub_100102734(v3, v7);

  v8 = v4();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = *(v8 + 40);
LABEL_8:
  v10 = v9;

  sub_100102734(v3, v10);

  v11 = *((swift_isaMask & *v3) + 0xB8);
  v16 = v3;
  v12 = v11();
  v14 = v13;

  sub_100104964(v12, v14);

  v15 = *(v1 + 312);
  *(v1 + 312) = 0;

  sub_100105B08();
}

void sub_100102734(void *a1, void *a2)
{
  v3 = v2;
  v5 = &swift_isaMask;
  v6 = *((swift_isaMask & *a2) + 0x238);
  v7 = (v6)();
  if (v7 >> 62)
  {
LABEL_59:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 <= 1)
  {
    v9 = (*((*v5 & *a2) + 0x250))();
    if (!v9)
    {
LABEL_63:
      v56 = *(v3 + 312);
      *(v3 + 312) = a2;

      v57 = a2;
      return;
    }
  }

  type metadata accessor for WorldAnchor();
  (*((*v5 & *a2) + 0x2C0))();
  WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  (*((*v5 & *a2) + 0x2F0))();
  (*((*v5 & *a2) + 0xD0))();
  v10 = objc_allocWithZone(type metadata accessor for WorldPoint());
  v65 = WorldPoint.init(anchor:type:state:)();
  if (sub_100105CC0(v65, 1))
  {
    v11 = (*((*v5 & *a2) + 0x250))();
    if (!v11)
    {
LABEL_20:
      v22 = (v6)();
      v6 = v22;
      v58 = v3;
      if (v22 >> 62)
      {
        goto LABEL_61;
      }

      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v65; v23; i = v65)
      {
        if (v23 < 1)
        {
          __break(1u);
          return;
        }

        v3 = 0;
        v25 = *((*v5 & *a1) + 0xB8);
        v63 = v6 & 0xC000000000000001;
        v61 = v6;
        v62 = a1;
        v59 = v25;
        v60 = v23;
        while (1)
        {
          if (v63)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v26 = *(v6 + 8 * v3 + 32);
          }

          v27 = v26;
          v28 = (*((*v5 & *v26) + 0xB8))();
          v30 = v29;
          if (v28 == v25() && v30 == v31)
          {

            goto LABEL_25;
          }

          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {

            goto LABEL_25;
          }

          v6 = *((*v5 & *v27) + 0x250);
          v35 = (v6)(v34);
          if ((v35 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_59;
            }

            v36 = *(v35 + 32);
          }

          v37 = v36;

          v39 = (*((*v5 & *v37) + 0xB8))(v38);
          v41 = v40;

          v5 = *((*v5 & *a2) + 0xB8);
          if (v39 == v5() && v41 == v42)
          {

            a1 = v62;
LABEL_53:
            v5 = &swift_isaMask;
            (*((swift_isaMask & *v27) + 0x318))(v65);

            v23 = v60;
            v6 = v61;
            v25 = v59;
            goto LABEL_25;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a1 = v62;
          if (v44)
          {
            goto LABEL_53;
          }

          v46 = (v6)(v45);
          if ((v46 & 0xC000000000000001) != 0)
          {
            v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_46;
          }

          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            break;
          }

          v47 = *(v46 + 40);
LABEL_46:
          v48 = v47;

          v50 = (*((swift_isaMask & *v48) + 0xB8))(v49);
          v52 = v51;

          if (v50 == v5() && v52 == v53)
          {

            v6 = v61;
            a1 = v62;
            v25 = v59;
            v23 = v60;
LABEL_55:
            v5 = &swift_isaMask;
            (*((swift_isaMask & *v27) + 0x320))(v65);

            goto LABEL_25;
          }

          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v6 = v61;
          a1 = v62;
          v25 = v59;
          v23 = v60;
          if (v55)
          {
            goto LABEL_55;
          }

          v5 = &swift_isaMask;
LABEL_25:
          ++v3;
          i = v65;
          if (v23 == v3)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_61:
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_62:

      v3 = v58;
      goto LABEL_63;
    }

    v12 = v11;
    v13 = v3;
    v14 = (*((*v5 & *v11) + 0x268))();
    v15 = (*((*v5 & *v14) + 0xB8))();
    v16 = v5;
    v18 = v17;

    if (v15 == (*((*v16 & *a2) + 0xB8))() && v18 == v19)
    {

      v5 = &swift_isaMask;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = &swift_isaMask;
      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    (*((swift_isaMask & *v12) + 0x328))(v65);
LABEL_19:

    v3 = v13;
    goto LABEL_20;
  }
}

double sub_100102FCC(uint64_t a1)
{
  result = *(v1 + 464);
  v3 = *(v1 + 472);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100102FE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100103024()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001030D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010311C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010315C()
{
  v1 = (sub_10000F974(&qword_1004A9798) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[11];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001032A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A9798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001033BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100103424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100103484(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001034A4(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100103514(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_100103530(double a1, __n128 a2)
{
  type metadata accessor for MeasureCamera();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  simd_float4x4.position.getter();
  simd_float4x4.position.getter();
  lineIntersection(line1P1:line1P2:line2P1:line2P2:)();
  return a2;
}

double sub_100103650(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 1;
  return result;
}

uint64_t sub_100103844()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10010388C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10010391C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = (*((swift_isaMask & *v4) + 0x250))();
      sub_100103E9C(v7, sub_10010BD34);

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100103A68(uint64_t result)
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

  result = sub_10006731C(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_100103B54(void *result)
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

  result = sub_100067764(result, v10, 1, v3);
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

  sub_10000F974(&qword_1004A3EA8);
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

uint64_t sub_100103CA0(uint64_t result)
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

  result = sub_10006875C(result, v10, 1, v3);
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

uint64_t sub_100103D98(uint64_t result)
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

  result = sub_1000689B8(result, v11, 1, v3);
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

uint64_t sub_100103E9C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
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
  sub_10010B5E4(result);
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

uint64_t sub_100103F94(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = sub_1000A527C(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_10010C08C(v8, v2, v3, v4);
  sub_10000FF00(a1);
  return v10;
}

unint64_t sub_100104098(void *a1)
{
  result = sub_100107744(0, a1);
  v2 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v7 = (*((swift_isaMask & *v5) + 0x280))();
    if (v8)
    {
    }

    else if ((*((swift_isaMask & *v6) + 0x2F0))(v7) != 1 || (v9 = *((swift_isaMask & *v6) + 0xD0), v9() == 1) || v9() == 6)
    {
    }

    else
    {
      (*((swift_isaMask & *v6) + 0xD8))(9);
    }
  }

LABEL_17:
}

uint64_t sub_100104278()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 96);

    v5 = (v2 + 40);
    while (*(v4 + 16))
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = sub_100198230(v6, v7);
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      v10 = *(*(v4 + 56) + 8 * v8);
      v11 = *((swift_isaMask & *v10) + 0x308);
      v12 = v10;
      v11();

      v5 += 2;
      if (!--v3)
      {

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
    if (!result)
    {
      return sub_10010959C();
    }

    goto LABEL_9;
  }

LABEL_7:
  swift_beginAccess();
  sub_10000F974(&qword_1004A9968);
  OrderedDictionary.removeAll()();
  swift_endAccess();
  swift_beginAccess();
  *(v1 + 80) = _swiftEmptyDictionarySingleton;

  result = swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    return sub_10010959C();
  }

LABEL_9:
  if (v14 >= 1)
  {

    for (i = 0; i != v14; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v18 + 24);
        ObjectType = swift_getObjectType();
        (*(v16 + 112))(ObjectType, v16);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return sub_10010959C();
  }

  __break(1u);
  return result;
}

unint64_t sub_100104508(void *a1)
{
  result = sub_100107744(1, a1);
  v2 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v7 = (*((swift_isaMask & *v5) + 0x280))();
    if (v8)
    {
    }

    else if ((*((swift_isaMask & *v6) + 0x2F0))(v7) == 1 && (*((swift_isaMask & *v6) + 0xD0))() != 6)
    {
      (*((swift_isaMask & *v6) + 0xD8))(0);
    }

    else
    {
    }
  }

LABEL_16:
}

uint64_t sub_1001046E4(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for WorldLine();

  v2 = OrderedDictionary.values.getter();

  sub_10010391C(v2);

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v4 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *&_swiftEmptyArrayStorage[i + 4];
      }

      v7 = v6;
      v8 = (*((swift_isaMask & *v6) + 0x280))();
      if (v9)
      {
      }

      else if ((*((swift_isaMask & *v7) + 0x2F0))(v8) != 1 || (v10 = *((swift_isaMask & *v7) + 0xD0), v10() == 1) || v10() == 6)
      {
      }

      else
      {
        (*((swift_isaMask & *v7) + 0xD8))(a1);
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100104964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 96);
  if (*(v6 + 16) && (v7 = sub_100198230(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9;
    sub_100106920(v10, 0, 1);
    if (![objc_opt_self() jasperAvailable])
    {
      goto LABEL_10;
    }

    if (qword_1004A03F8 != -1)
    {
      swift_once();
    }

    if (byte_1004D4FC8 == 1 && ((*((swift_isaMask & *v10) + 0x2C8))() & 1) != 0)
    {
      v11 = *(**(v3 + 136) + 400);

      v12 = v11(v13);
      sub_1000C67A8(a1, a2);
      v12(v13, 0);
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100104B30(void *a1, char a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *a1) + 0xB8);
  v7 = v6();
  v9 = v8;
  swift_beginAccess();
  if (*(*(v2 + 96) + 16))
  {
    sub_100198230(v7, v9);
    v11 = v10;

    if (v11)
    {
      swift_endAccess();
      return 0;
    }
  }

  else
  {
  }

  swift_endAccess();
  v13 = [objc_opt_self() jasperAvailable];
  if (!v13)
  {
    goto LABEL_10;
  }

  if (qword_1004A03F8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    if (byte_1004D4FC8 == 1)
    {
      v13 = (*((swift_isaMask & *a1) + 0x2C8))(v13, v14, v15);
      if (v13)
      {
        v13 = sub_1001090C4(a1);
      }
    }

LABEL_10:
    (v6)(v13);
    swift_beginAccess();
    v16 = a1;
    sub_10000F974(&qword_1004A9968);
    OrderedDictionary.subscript.setter();
    swift_endAccess();
    v17 = sub_1001093D8(v16);
    v6 = ((swift_isaMask & *v16) + 592);
    v18 = *((swift_isaMask & *v16) + 0x250);
    v19 = v18(v17);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v20 = *(v19 + 32);
    }

    v21 = v20;

    sub_100105CC0(v21, a2 & 1);

    v25 = (v18)(v22, v23, v24);
    if ((v25 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v26 = *(v25 + 40);
      goto LABEL_16;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    v13 = swift_once();
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v27 = v26;

  sub_100105CC0(v27, a2 & 1);

  v31 = (*((swift_isaMask & *v16) + 0x268))(v28, v29, v30);
  sub_100105CC0(v31, a2 & 1);

  if ((a2 & 1) == 0)
  {
    goto LABEL_29;
  }

  result = swift_beginAccess();
  v32 = *(v3 + 64);
  if (v32 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v33 = result;
    if (!result)
    {
      goto LABEL_29;
    }

LABEL_19:
    if (v33 >= 1)
    {

      for (i = 0; i != v33; ++i)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v32 + 8 * i + 32);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v37 + 24);
          ObjectType = swift_getObjectType();
          (*(v35 + 32))(v16, ObjectType, v35);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_19;
    }

LABEL_29:
    sub_10010959C();
    return 1;
  }

  return result;
}

void sub_100104F90(void *a1, void *a2, void *a3, char a4)
{
  v7 = v4;
  if (!a2)
  {
    v17 = 0;
    if (a3)
    {
      goto LABEL_10;
    }

LABEL_6:
    v19 = 0;
    goto LABEL_16;
  }

  v11 = (*((swift_isaMask & *a2) + 0xB8))();
  v13 = v12;
  swift_beginAccess();
  v14 = *(v4 + 80);
  if (*(v14 + 16))
  {
    v15 = sub_100198230(v11, v13);
    v5 = v16;

    if (v5)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      v18 = v17;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_9:
  swift_endAccess();
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_10:
  v20 = (*((swift_isaMask & *a3) + 0xB8))();
  v22 = v21;
  swift_beginAccess();
  v23 = *(v7 + 80);
  if (!*(v23 + 16))
  {

    goto LABEL_14;
  }

  v24 = sub_100198230(v20, v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v19 = *(*(v23 + 56) + 8 * v24);
  v27 = v19;
LABEL_15:
  swift_endAccess();
LABEL_16:
  v28 = *((swift_isaMask & *a1) + 0x250);
  v29 = v28();
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_66;
    }

    v30 = *(v29 + 32);
  }

  v90 = v30;

  v32 = (v28)(v31);
  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_70;
    }

    v33 = *(v32 + 40);
  }

  v6 = v33;

  v88 = v7;
  v89 = v19;
  if (v17)
  {
    v35 = a4;
    v36 = *((swift_isaMask & *v17) + 0xB8);
    v37 = v17;
    v38 = v36();
    v40 = v39;

    v41 = *((swift_isaMask & *v6) + 0xB8);
    v42 = v6;
    v43 = v41();
    v45 = v44;

    if (v38 == v43 && v40 == v45)
    {
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v47 & 1) == 0)
      {
        v48 = *((swift_isaMask & *a1) + 0x318);
        v49 = v37;
        v48();

        v7 = v88;
        v19 = v89;
        a4 = v35;
        goto LABEL_31;
      }
    }

    a4 = v35;
    v7 = v88;
    v34 = sub_100106920(a1, v17, v35 & 1);
    v19 = v89;
  }

LABEL_31:
  v87 = v17;
  v50 = v90;
  if (!v19)
  {
    v17 = &swift_isaMask;
    goto LABEL_42;
  }

  v86 = a4;
  v51 = *((swift_isaMask & *v19) + 0xB8);
  v52 = v19;
  v53 = v51();
  v55 = v54;

  v56 = *((swift_isaMask & *v90) + 0xB8);
  v57 = v90;
  v58 = v56();
  v60 = v59;

  if (v53 == v58 && v55 == v60)
  {

    goto LABEL_40;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {
LABEL_40:
    a4 = v86;
    v7 = v88;
    v19 = v89;
    v34 = sub_100106920(a1, v89, v86 & 1);
    v17 = &swift_isaMask;
    goto LABEL_41;
  }

  v63 = *((swift_isaMask & *a1) + 0x320);
  v64 = v52;
  v63();
  v17 = &swift_isaMask;

  v7 = v88;
  v19 = v89;
  a4 = v86;
LABEL_41:
  v50 = v90;
LABEL_42:
  v65 = (*((swift_isaMask & *v50) + 0x238))(v34);
  if (!(v65 >> 62))
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v66)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_66:
  v85 = _CocoaArrayWrapper.endIndex.getter();

  if (!v85)
  {
LABEL_44:
    v68 = *((*v17 & *v90) + 0xB8);
    v69 = v90;
    v17 = &swift_isaMask;
    v70 = v68();
    v72 = v71;

    sub_100106548(v70, v72, a4 & 1);
  }

LABEL_45:
  v73 = (*((*v17 & *v6) + 0x238))(v67);
  if (v73 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v87;

  if (v74)
  {
    if (a4)
    {
      goto LABEL_49;
    }

LABEL_61:

LABEL_73:
    return;
  }

  v80 = *((*v17 & *v6) + 0xB8);
  v81 = v6;
  v82 = v80();
  v84 = v83;

  sub_100106548(v82, v84, a4 & 1);

  if ((a4 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_49:
  swift_beginAccess();
  v17 = *(v7 + 64);
  if (!(v17 >> 62))
  {
    v75 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
      goto LABEL_51;
    }

LABEL_71:

LABEL_72:
    v19 = v89;
    goto LABEL_73;
  }

LABEL_70:
  v75 = _CocoaArrayWrapper.endIndex.getter();
  if (!v75)
  {
    goto LABEL_71;
  }

LABEL_51:
  if (v75 >= 1)
  {

    for (i = 0; i != v75; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v79 = *(v17 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v77 = *(v79 + 24);
        ObjectType = swift_getObjectType();
        (*(v77 + 48))(a1, ObjectType, v77);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_72;
  }

  __break(1u);
}

unint64_t sub_1001057DC(void *a1)
{
  result = sub_100107744(0, a1);
  v2 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v7 = (*((swift_isaMask & *v5) + 0x280))();
    if (v8)
    {
    }

    else if ((*((swift_isaMask & *v6) + 0x2F0))(v7) == 1)
    {
      v9 = *((swift_isaMask & *v6) + 0xB8);
      v10 = v6;
      v11 = v9();
      v13 = v12;

      sub_100106548(v11, v13, 1);
    }

    else
    {
    }
  }

LABEL_15:
}

unint64_t sub_1001059B0()
{
  v1 = *(**(v0 + 72) + 144);

  v1(&v9, v2);

  sub_10000F974(&qword_1004A1648);
  sub_10000F974(&qword_1004A1650);
  swift_dynamicCast();
  v3 = v9;
  if (!(v9 >> 62))
  {
    v4 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v3 + 8 * result + 32);
LABEL_8:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100105B08()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 80) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v19 = *(v0 + 80);

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = *(*(v19 + 56) + 8 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v13 = *((swift_isaMask & *v12) + 0x2F0);
    v14 = v12;

    v16 = v13(v15);

    if (v16 == 1)
    {
      v17 = *((swift_isaMask & *v14) + 0xD8);
      v18 = v14;
      v17(0);
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100105CC0(void *a1, char a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *a1) + 0xB8);
  v7 = v6();
  v9 = v8;
  swift_beginAccess();
  if (*(*(v2 + 80) + 16))
  {
    sub_100198230(v7, v9);
    v11 = v10;

    if (v11)
    {
      swift_endAccess();
      return 0;
    }
  }

  else
  {
  }

  v13 = swift_endAccess();
  v14 = (v6)(v13);
  v16 = v15;
  swift_beginAccess();
  v17 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 80);
  *(v3 + 80) = 0x8000000000000000;
  sub_1000BBD90(v17, v14, v16, isUniquelyReferenced_nonNull_native);

  *(v3 + 80) = v27;
  swift_endAccess();
  v19 = *((swift_isaMask & *v17) + 0x2A0);
  v20 = swift_unknownObjectRetain();
  v19(v20, &off_10046E368);
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  result = swift_beginAccess();
  v21 = *(v3 + 64);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_8;
    }

    return 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = result;
  if (!result)
  {
    return 1;
  }

LABEL_8:
  if (v22 >= 1)
  {

    for (i = 0; i != v22; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v21 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v26 + 24);
        ObjectType = swift_getObjectType();
        (*(v24 + 8))(v17, ObjectType, v24);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100105F7C(void *a1)
{
  v2 = (*((swift_isaMask & *a1) + 0xB8))();
  v4 = v3;
  v5 = a1;

  Synchronized.wrappedValue.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000BC104(v5, v2, v4, isUniquelyReferenced_nonNull_native);

  Synchronized.wrappedValue.setter();

  result = (*((swift_isaMask & *v5) + 0x238))(v7);
  v9 = result;
  if (result >> 62)
  {
    v19 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = v19;
    v10 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
  }

LABEL_3:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *((swift_isaMask & *v5) + 0xD0);
    v20 = v9 & 0xC000000000000001;
    v21 = v9;
    while (1)
    {
      v14 = v20 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v9 + 8 * v11 + 32);
      v15 = v14;
      v13 = v12();
      v16 = *((swift_isaMask & *v15) + 0xD0);
      v17 = v15;
      if ((v16() - 3) > 1 || v12() != 2)
      {
        break;
      }

      v18 = v16();
      if (v18 == 3)
      {
        if ((v13 - 3) < 2)
        {
          break;
        }
      }

      else if (v13 == 3)
      {
        if (v18 == 4)
        {
          break;
        }
      }

      else if ((v13 != 4) != (v18 == 4))
      {
        break;
      }

LABEL_5:
      v13 = v16();
LABEL_6:
      ++v11;

      sub_100106288(v17, v13);
      v9 = v21;
      if (v10 == v11)
      {
      }
    }

    if (v12() != 6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100106288(void *a1, uint64_t a2)
{
  v4 = (*((swift_isaMask & *a1) + 0xD8))(a2);
  v5 = (*((swift_isaMask & *a1) + 0x268))(v4);
  (*((swift_isaMask & *v5) + 0xD8))(a2);

  v6 = (*((swift_isaMask & *a1) + 0x310))();
  result = (*((swift_isaMask & *a1) + 0x280))(v6);
  v8 = result;
  if (!(result >> 62))
  {
    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:

    v14 = (*((swift_isaMask & *a1) + 0xB8))(v13);
    v16 = v15;
    v17 = a1;

    Synchronized.wrappedValue.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BC104(v17, v14, v16, isUniquelyReferenced_nonNull_native);

    Synchronized.wrappedValue.setter();

    return sub_10010959C();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v9 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      sub_100105F7C();
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_100106548(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 80);
  if (!*(v8 + 16) || (v9 = sub_100198230(a1, a2), (v10 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = (swift_isaMask & *v11) + 568;
  v13 = *((swift_isaMask & *v11) + 0x238);
  v14 = v11;
  v15 = v13();
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < 1)
  {
    (*((swift_isaMask & *v14) + 0x2A0))(0, 0);
    swift_beginAccess();
    v24 = sub_1000C6790(a1, a2);
    swift_endAccess();

    if (a3)
    {
      swift_beginAccess();
      v12 = *(v4 + 64);
      if (v12 >> 62)
      {
        goto LABEL_32;
      }

      v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_18;
      }
    }

LABEL_33:

    return;
  }

  v18 = (v13)(v17);
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_8;
    }

LABEL_30:

    return;
  }

  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_30;
  }

LABEL_8:
  if (v20 >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      sub_100106920(v22, 0, a3 & 1);
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_32:
  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (!v25)
  {
    goto LABEL_33;
  }

LABEL_18:
  if (v25 >= 1)
  {
    v36 = v12 & 0xC000000000000001;

    v26 = 0;
    v35 = v12;
    do
    {
      if (v36)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v12 + 8 * v26 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v34 + 24);
        ObjectType = swift_getObjectType();
        v29 = *((swift_isaMask & *v14) + 0xB8);
        v30 = v14;
        v31 = v29();
        v33 = v32;

        (*(v27 + 16))(v31, v33, ObjectType, v27);
        v12 = v35;

        swift_unknownObjectRelease();
      }

      else
      {
      }

      ++v26;
    }

    while (v25 != v26);
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_100106920(void *a1, unint64_t a2, char a3)
{
  v7 = (*((swift_isaMask & *a1) + 0x308))();
  v104 = *((swift_isaMask & *a1) + 0xB8);
  v104(v7);
  swift_beginAccess();
  sub_10000F974(&qword_1004A9968);
  OrderedDictionary.removeValue(forKey:)();
  swift_endAccess();

  v105 = v3;
  v106 = a1;
  v8 = sub_100109870(a1);
  v102 = a3;
  if (a3)
  {
    v8 = swift_beginAccess();
    v4 = *(v3 + 64);
    if (v4 >> 62)
    {
      goto LABEL_93;
    }

    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  while (1)
  {
    do
    {
      v104 = *((swift_isaMask & *v106) + 0x268);
      v14 = (v104)(v8);
      v15 = (*((swift_isaMask & *v14) + 0x238))();

      if (v15 >> 62)
      {
        goto LABEL_60;
      }

      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v16)
      {
        goto LABEL_16;
      }

LABEL_61:
      v73 = (v104)(v17);
      (*((swift_isaMask & *v73) + 0x2A0))(0, 0);

      v74 = (v104)();
      v75 = (*((swift_isaMask & *v74) + 0xB8))();
      v77 = v76;

      swift_beginAccess();
      v78 = sub_1000C6790(v75, v77);
      swift_endAccess();

      if (v102)
      {
        v71 = swift_beginAccess();
        v4 = *(v105 + 64);
        if (v4 >> 62)
        {
          goto LABEL_99;
        }

        v79 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v79)
        {
          goto LABEL_64;
        }
      }

LABEL_77:
      v88 = (*((swift_isaMask & *v106) + 0x250))(v71);
      v89 = v88;
      if (v88 >> 62)
      {
        v90 = _CocoaArrayWrapper.endIndex.getter();
        if (!v90)
        {
LABEL_91:

          return sub_10010959C();
        }
      }

      else
      {
        v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v90)
        {
          goto LABEL_91;
        }
      }

      if (v90 >= 1)
      {
        v91 = 0;
        while (1)
        {
          v92 = (v89 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v89 + 8 * v91 + 32);
          v93 = v92;
          v94 = (*((swift_isaMask & *v92) + 0x238))();
          if (v94 >> 62)
          {
            break;
          }

          v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v95)
          {
            goto LABEL_87;
          }

LABEL_81:
          ++v91;

          if (v90 == v91)
          {
            goto LABEL_91;
          }
        }

        v101 = _CocoaArrayWrapper.endIndex.getter();

        if (v101)
        {
          goto LABEL_81;
        }

LABEL_87:
        (*((swift_isaMask & *v93) + 0x2A0))(0, 0);
        v96 = *((swift_isaMask & *v93) + 0xB8);
        v97 = v93;
        v98 = v96();
        v100 = v99;

        sub_100106548(v98, v100, v102 & 1);

        goto LABEL_81;
      }

      __break(1u);
LABEL_93:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v8;
    }

    while (!v8);
LABEL_4:
    if (v9 < 1)
    {
      break;
    }

    for (i = 0; i != v9; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v13 + 24);
        swift_getObjectType();
        v12 = (v104)();
        (*(v11 + 40))(v12);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  while (2)
  {
    __break(1u);
LABEL_97:
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:
    v4 = v45;

    v47 = (*((swift_isaMask & *v4) + 0xB8))(v46);
    v49 = v48;

    swift_beginAccess();
    if (*(*(v105 + 80) + 16))
    {
      sub_100198230(v47, v49);
      v51 = v50;

      if (v51)
      {
        v52 = swift_endAccess();
        v53 = (v9)(v52);
        if ((v53 & 0xC000000000000001) != 0)
        {
          goto LABEL_104;
        }

        v18 = a2;
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v4 = *(v53 + 32);
          goto LABEL_46;
        }

        __break(1u);
LABEL_106:
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_56:
        v4 = v66;

LABEL_18:
        v20 = (v104)(v19);
        v21 = (*((swift_isaMask & *v20) + 0x238))();

        if (v21 >> 62)
        {
          v9 = _CocoaArrayWrapper.endIndex.getter();
          if (!v9)
          {
LABEL_75:

LABEL_76:

            goto LABEL_77;
          }
        }

        else
        {
          v9 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v9)
          {
            goto LABEL_75;
          }
        }

        if (v9 < 1)
        {
          __break(1u);
          continue;
        }

        v22 = 0;
        a2 = v21 & 0xC000000000000001;
        v23 = v21;
        while (1)
        {
          if (a2)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v28 = *(v21 + 8 * v22 + 32);
          }

          v29 = v28;
          v30 = (v104)();
          v31 = (*((swift_isaMask & *v30) + 0xB8))();
          v33 = v32;

          v34 = (*((swift_isaMask & *v29) + 0x250))();
          if ((v34 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_60:
              v72 = _CocoaArrayWrapper.endIndex.getter();

              if (!v72)
              {
                goto LABEL_61;
              }

LABEL_16:
              v18 = a2;
              v4 = a2;
              if (a2)
              {
LABEL_17:
                v19 = v18;
                goto LABEL_18;
              }

              v9 = *((swift_isaMask & *v106) + 0x250);
              v44 = (v9)(v17);
              if ((v44 & 0xC000000000000001) == 0)
              {
                if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v45 = *(v44 + 32);
                  goto LABEL_41;
                }

                __break(1u);
LABEL_99:
                v71 = _CocoaArrayWrapper.endIndex.getter();
                v79 = v71;
                if (!v71)
                {
                  goto LABEL_77;
                }

LABEL_64:
                if (v79 >= 1)
                {
                  a2 = v4 & 0xC000000000000001;

                  for (j = 0; j != v79; ++j)
                  {
                    if (a2)
                    {
                      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v87 = *(v4 + 8 * j + 32);
                    }

                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v81 = *(v87 + 24);
                      ObjectType = swift_getObjectType();
                      v83 = (v104)();
                      v84 = (*((swift_isaMask & *v83) + 0xB8))();
                      v86 = v85;

                      (*(v81 + 16))(v84, v86, ObjectType, v81);

                      swift_unknownObjectRelease();
                    }

                    else
                    {
                    }
                  }

                  goto LABEL_76;
                }

LABEL_103:
                __break(1u);
LABEL_104:
                v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v18 = a2;
LABEL_46:

                goto LABEL_17;
              }

              goto LABEL_97;
            }

            v35 = *(v34 + 32);
          }

          v36 = v35;

          v38 = (*((swift_isaMask & *v36) + 0xB8))(v37);
          v40 = v39;

          if (v31 == v38 && v33 == v40)
          {

            v21 = v23;
          }

          else
          {
            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v21 = v23;
            if ((v42 & 1) == 0)
            {
              v43 = v4;
              v25 = v29;
              v26 = 0;
              v27 = v4;
              goto LABEL_24;
            }
          }

          v24 = v4;
          v25 = v29;
          v26 = v4;
          v27 = 0;
LABEL_24:
          sub_100104F90(v25, v26, v27, 1);
          ++v22;

          if (v9 == v22)
          {
            goto LABEL_75;
          }
        }
      }
    }

    else
    {
    }

    break;
  }

  v54 = swift_endAccess();
  v55 = (v9)(v54);
  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_103;
    }

    v56 = *(v55 + 40);
  }

  v57 = v56;

  v59 = (*((swift_isaMask & *v57) + 0xB8))(v58);
  v61 = v60;

  swift_beginAccess();
  if (!*(*(v105 + 80) + 16))
  {

LABEL_58:
    v67 = swift_endAccess();
    v68 = (v104)(v67);
    (*((swift_isaMask & *v68) + 0x2F8))(1);

    v69 = (v104)();
    (*((swift_isaMask & *v69) + 0xD8))(0);

    v70 = (v104)();
    (*((swift_isaMask & *v70) + 0x330))();

    goto LABEL_77;
  }

  sub_100198230(v59, v61);
  v63 = v62;

  if ((v63 & 1) == 0)
  {
    goto LABEL_58;
  }

  v64 = swift_endAccess();
  result = (v9)(v64);
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_106;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v66 = *(result + 40);
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

void *sub_100107744(char a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 80);
  v7 = *((swift_isaMask & *a2) + 0xB8);

  v9 = (v7)(v8);
  if (!*(v6 + 16))
  {

    return _swiftEmptyArrayStorage;
  }

  sub_100198230(v9, v10);
  v12 = v11;

  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v165 = a1;
    v164 = v3;
    v182 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyDictionarySingleton;
    v15 = a2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_136;
    }

    while (1)
    {
      v16 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v163 = v7;
      v17 = (v7)(v16);
      v19 = v18;
      v20 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000BBD90(v20, v17, v19, isUniquelyReferenced_nonNull_native);

      v22 = v182;
      v23 = v14;
      v181 = v14;
      if (!(v182 >> 62))
      {
        if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          goto LABEL_6;
        }

LABEL_138:

        if (v165)
        {
          v132 = v163(v131);
          v134 = sub_1000C6790(v132, v133);

          v135 = 1 << *(v181 + 32);
          v136 = -1;
          if (v135 < 64)
          {
            v136 = ~(-1 << v135);
          }

          v137 = v136 & v181[8];
          v138 = (v135 + 63) >> 6;

          v139 = 0;
          if (v137)
          {
            goto LABEL_146;
          }

          while (1)
          {
            v140 = v139 + 1;
            if (__OFADD__(v139, 1))
            {
              break;
            }

            if (v140 >= v138)
            {

              return _swiftEmptyArrayStorage;
            }

            v137 = v181[v140 + 8];
            ++v139;
            if (v137)
            {
              v139 = v140;
              do
              {
LABEL_146:
                v141 = *(v181[7] + 8 * (__clz(__rbit64(v137)) | (v139 << 6)));

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                v137 &= v137 - 1;
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              while (v137);
            }
          }

          __break(1u);
        }

        else
        {
          v142 = *(v164 + 80);
          v145 = *(v142 + 64);
          v144 = v142 + 64;
          v143 = v145;
          v146 = 1 << *(*(v164 + 80) + 32);
          v147 = -1;
          if (v146 < 64)
          {
            v147 = ~(-1 << v146);
          }

          v148 = v147 & v143;
          v149 = (v146 + 63) >> 6;
          v180 = *(v164 + 80);

          v150 = 0;
LABEL_153:
          v151 = v150;
          if (!v148)
          {
            goto LABEL_155;
          }

          do
          {
            v150 = v151;
LABEL_158:
            v152 = __clz(__rbit64(v148));
            v148 &= v148 - 1;
            v153 = *(*(v180 + 56) + 8 * (v152 | (v150 << 6)));
            v154 = *((swift_isaMask & *v153) + 0xB8);
            v155 = v153;

            v157 = v154(v156);
            v159 = v158;

            if (!v23[2])
            {

LABEL_163:
              v162 = v155;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              goto LABEL_153;
            }

            sub_100198230(v157, v159);
            v161 = v160;

            if ((v161 & 1) == 0)
            {
              goto LABEL_163;
            }

            v151 = v150;
          }

          while (v148);
LABEL_155:
          while (1)
          {
            v150 = v151 + 1;
            if (__OFADD__(v151, 1))
            {
              break;
            }

            if (v150 >= v149)
            {

              return _swiftEmptyArrayStorage;
            }

            v148 = *(v144 + 8 * v150);
            ++v151;
            if (v148)
            {
              goto LABEL_158;
            }
          }
        }

        __break(1u);
LABEL_172:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v130 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v182;
      if (v130 < 1)
      {
        goto LABEL_138;
      }

      while (1)
      {
LABEL_6:
        v15 = (v22 >> 62);
        if (v22 >> 62)
        {
          v127 = v22;
          v128 = _CocoaArrayWrapper.endIndex.getter();
          v22 = v127;
          if (!v128)
          {
            goto LABEL_134;
          }
        }

        else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_134;
        }

        v24 = v22;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v15 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v26 = sub_10006CB88(v24);
        }

        else
        {
          v26 = v24;
        }

        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          break;
        }

        v28 = v27 - 1;
        v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20);
        *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) = v28;
        v178 = v26;
        v182 = v26;
        v15 = &swift_isaMask;
        v30 = (*((swift_isaMask & *v29) + 0x238))();
        v172 = v29;
        v31 = (*((swift_isaMask & *v29) + 0x250))();
        if (v31)
        {
          v15 = v31;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v32 = (*((swift_isaMask & *v29) + 0x268))();
        if (v32)
        {
          v15 = v32;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        if (v30 >> 62)
        {
          v33 = _CocoaArrayWrapper.endIndex.getter();
          if (!v33)
          {
LABEL_115:
            v126 = v29;
            goto LABEL_116;
          }
        }

        else
        {
          v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v33)
          {
            goto LABEL_115;
          }
        }

        v34 = 0;
        v170 = *((swift_isaMask & *v29) + 0xB8);
        v171 = v30 & 0xC000000000000001;
        v166 = v30 + 32;
        v167 = v30 & 0xFFFFFFFFFFFFFF8;
        v169 = v33;
        do
        {
          if (v171)
          {
            v35 = v34;
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v34 >= *(v167 + 16))
            {
              goto LABEL_131;
            }

            v35 = v34;
            v36 = *(v166 + 8 * v34);
          }

          v7 = v36;
          v37 = __OFADD__(v35, 1);
          v15 = (v35 + 1);
          if (v37)
          {
            goto LABEL_126;
          }

          v173 = v15;
          v38 = *((swift_isaMask & *v36) + 0x250);
          v39 = v38();
          v15 = v39;
          if ((v39 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_127;
            }

            v40 = *(v39 + 32);
          }

          v41 = v40;

          v43 = (*((swift_isaMask & *v41) + 0xB8))(v42);
          v45 = v44;

          v46 = v172;
          v14 = v170();
          v48 = v47;
          v168 = v46;

          if (v43 == v14 && v45 == v48)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              v51 = (v38)(v50);
              v15 = v51;
              if ((v51 & 0xC000000000000001) == 0)
              {
                if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_133;
                }

                v52 = *(v51 + 32);
                goto LABEL_45;
              }

              goto LABEL_110;
            }
          }

          v53 = (v38)(v50);
          v15 = v53;
          if ((v53 & 0xC000000000000001) == 0)
          {
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              goto LABEL_128;
            }

            v52 = *(v53 + 40);
LABEL_45:
            v54 = v52;
            goto LABEL_46;
          }

LABEL_110:
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_46:
          v55 = v54;

          v14 = *((swift_isaMask & *v55) + 0xB8);
          v56 = v55;
          v57 = (v14)();
          v59 = v58;
          v174 = v56;

          v175 = v7;
          if (!v23[2])
          {

LABEL_50:
            v15 = v56;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v63 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v178 = v182;
            v64 = (v14)(v63);
            v7 = v65;

            v66 = swift_isUniquelyReferenced_nonNull_native();
            v62 = sub_100198230(v64, v7);
            v68 = v181[2];
            v69 = (v67 & 1) == 0;
            v37 = __OFADD__(v68, v69);
            v70 = v68 + v69;
            if (v37)
            {
              goto LABEL_129;
            }

            v14 = v67;
            if (v181[3] >= v70)
            {
              if (v66)
              {
                goto LABEL_57;
              }

              v74 = v62;
              sub_1000BE7B8();
              v62 = v74;
              v23 = v181;
              if ((v14 & 1) == 0)
              {
                goto LABEL_62;
              }

LABEL_58:
              v72 = v23[7];
              v73 = *(v72 + 8 * v62);
              *(v72 + 8 * v62) = v15;
            }

            else
            {
              sub_1000B7DCC(v70, v66);
              v62 = sub_100198230(v64, v7);
              if ((v14 & 1) != (v71 & 1))
              {
                goto LABEL_172;
              }

LABEL_57:
              v23 = v181;
              if (v14)
              {
                goto LABEL_58;
              }

LABEL_62:
              v23[(v62 >> 6) + 8] |= 1 << v62;
              v75 = (v23[6] + 16 * v62);
              *v75 = v64;
              v75[1] = v7;
              *(v23[7] + 8 * v62) = v15;
              v76 = v23[2];
              v37 = __OFADD__(v76, 1);
              v77 = v76 + 1;
              if (v37)
              {
                goto LABEL_132;
              }

              v23[2] = v77;
            }

            v181 = v23;
            v7 = v175;
            goto LABEL_65;
          }

          sub_100198230(v57, v59);
          v61 = v60;

          if ((v61 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_65:
          v78 = *((swift_isaMask & *v7) + 0x268);
          v14 = (v78)(v62);
          v79 = (*((swift_isaMask & *v14) + 0xB8))();
          v15 = v80;

          if (!v23[2])
          {

LABEL_69:
            (v78)(v83);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v84 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v178 = v182;
            v85 = (v78)(v84);
            v7 = (*((swift_isaMask & *v85) + 0xB8))();
            v15 = v86;

            v14 = v78();
            v87 = swift_isUniquelyReferenced_nonNull_native();
            v88 = sub_100198230(v7, v15);
            v90 = v181[2];
            v91 = (v89 & 1) == 0;
            v37 = __OFADD__(v90, v91);
            v92 = v90 + v91;
            if (v37)
            {
              goto LABEL_130;
            }

            v93 = v89;
            if (v181[3] >= v92)
            {
              if (v87)
              {
                goto LABEL_76;
              }

              v97 = v88;
              sub_1000BE7B8();
              v88 = v97;
              v23 = v181;
              if ((v93 & 1) == 0)
              {
                goto LABEL_79;
              }

LABEL_77:
              v95 = v23[7];
              v96 = *(v95 + 8 * v88);
              *(v95 + 8 * v88) = v14;
            }

            else
            {
              sub_1000B7DCC(v92, v87);
              v88 = sub_100198230(v7, v15);
              if ((v93 & 1) != (v94 & 1))
              {
                goto LABEL_172;
              }

LABEL_76:
              v23 = v181;
              if (v93)
              {
                goto LABEL_77;
              }

LABEL_79:
              v83 = sub_1000BD5D8(v88, v7, v15, v14, v23);
            }

            v181 = v23;
            v7 = v175;
            goto LABEL_81;
          }

          sub_100198230(v79, v15);
          v82 = v81;

          if ((v82 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_81:
          v98 = (*((swift_isaMask & *v7) + 0x280))(v83);
          v99 = v98;
          if (v98 >> 62)
          {
            v100 = _CocoaArrayWrapper.endIndex.getter();
            if (!v100)
            {
              goto LABEL_24;
            }

LABEL_83:
            v7 = 0;
            v179 = v99 & 0xC000000000000001;
            v176 = v99 & 0xFFFFFFFFFFFFFF8;
            v177 = v99;
            while (2)
            {
              if (v179)
              {
                v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v104 = v7 + 1;
                if (__OFADD__(v7, 1))
                {
                  goto LABEL_122;
                }
              }

              else
              {
                if (v7 >= *(v176 + 16))
                {
                  goto LABEL_124;
                }

                v103 = *(v99 + 8 * v7 + 32);
                v104 = v7 + 1;
                if (__OFADD__(v7, 1))
                {
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
                  goto LABEL_135;
                }
              }

              v105 = *((swift_isaMask & *v103) + 0xB8);
              v15 = v103;
              v106 = v105();
              if (v23[2])
              {
                v14 = v107;
                sub_100198230(v106, v107);
                v109 = v108;

                if (v109)
                {

LABEL_86:
                  ++v7;
                  if (v104 == v100)
                  {
                    goto LABEL_24;
                  }

                  continue;
                }
              }

              else
              {
              }

              break;
            }

            v110 = v100;
            v15 = v15;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v111 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v178 = v182;
            v112 = (v105)(v111);
            v14 = v113;
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v116 = sub_100198230(v112, v14);
            v117 = v181[2];
            v118 = (v115 & 1) == 0;
            v119 = v117 + v118;
            if (__OFADD__(v117, v118))
            {
              goto LABEL_123;
            }

            v120 = v115;
            if (v181[3] >= v119)
            {
              if ((v114 & 1) == 0)
              {
                sub_1000BE7B8();
              }
            }

            else
            {
              sub_1000B7DCC(v119, v114);
              v121 = sub_100198230(v112, v14);
              if ((v120 & 1) != (v122 & 1))
              {
                goto LABEL_172;
              }

              v116 = v121;
            }

            v100 = v110;
            v99 = v177;
            if (v120)
            {

              v23 = v181;
              v101 = v181[7];
              v102 = *(v101 + 8 * v116);
              *(v101 + 8 * v116) = v15;
            }

            else
            {
              v23 = v181;
              v181[(v116 >> 6) + 8] |= 1 << v116;
              v123 = (v181[6] + 16 * v116);
              *v123 = v112;
              v123[1] = v14;
              *(v181[7] + 8 * v116) = v15;

              v124 = v181[2];
              v37 = __OFADD__(v124, 1);
              v125 = v124 + 1;
              if (v37)
              {
                goto LABEL_125;
              }

              v181[2] = v125;
            }

            v181 = v23;
            goto LABEL_86;
          }

          v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v100)
          {
            goto LABEL_83;
          }

LABEL_24:

          v34 = v173;
        }

        while (v173 != v169);
        v126 = v168;
LABEL_116:

        v22 = v178;
        if (v178 >> 62)
        {
          v129 = _CocoaArrayWrapper.endIndex.getter();
          v22 = v178;
          if (v129 <= 0)
          {
            goto LABEL_138;
          }
        }

        else if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
        {
          goto LABEL_138;
        }
      }

LABEL_135:
      __break(1u);
LABEL_136:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  return result;
}

id sub_1001088EC()
{
  v1 = v0;
  result = [objc_opt_self() jasperAvailable];
  if (result)
  {
    v3 = *(**(v0 + 120) + 144);

    v3(v70, v4);

    v5 = v70[1];

    v6 = *(**(v0 + 120) + 144);

    v6(v70, v7);

    v8 = v70[0];

    v70[0] = v5;
    sub_100103E9C(v8, sub_10010B684);
    v9 = v70[0];
    v10 = *(**(v0 + 120) + 144);

    v10(v70, v11);

    v12 = v70[2];

    v70[0] = v9;
    sub_100103E9C(v12, sub_10010B684);
    v13 = v70[0];
    swift_beginAccess();
    v14 = *(v0 + 128);
    if (v14 >> 62)
    {
      goto LABEL_74;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v13;
    v62 = v1;
    while (v15)
    {
      v63 = v14 & 0xC000000000000001;

      swift_beginAccess();
      v16 = 0;
      v65 = 0;
      v60 = v14 & 0xFFFFFFFFFFFFFF8;
      v59 = v14 + 32;
      v58 = v14;
      v57 = v15;
      while (1)
      {
        if (v63)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v60 + 16))
          {
            goto LABEL_69;
          }

          v17 = *(v59 + 8 * v16);
        }

        v18 = v17;
        v19 = __OFADD__(v16, 1);
        v20 = v16 + 1;
        if (v19)
        {
          break;
        }

        v64 = v20;
        v69 = v17;
        __chkstk_darwin(v17);
        v56 = &v69;
        v21 = v65;
        v22 = sub_1001038E8(sub_10010C40C, v55, v13);
        v65 = v21;
        if (v22)
        {
        }

        else
        {
          v66 = v18;
          v23 = *(v1 + 64);
          if (v23 >> 62)
          {
            v24 = _CocoaArrayWrapper.endIndex.getter();
            if (v24)
            {
LABEL_15:
              if (v24 < 1)
              {
                goto LABEL_71;
              }

              v67 = v23 & 0xC000000000000001;

              for (i = 0; i != v24; ++i)
              {
                if (v67)
                {
                  v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v34 = *(v23 + 8 * i + 32);
                }

                if (swift_unknownObjectWeakLoadStrong())
                {
                  v26 = *(v34 + 24);
                  ObjectType = swift_getObjectType();
                  v28 = v23;
                  v29 = *((swift_isaMask & *v66) + 0xB8);
                  v30 = v66;
                  v31 = v29();
                  v33 = v32;

                  (*(v26 + 96))(v31, v33, ObjectType, v26);
                  v23 = v28;

                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }

              v13 = v61;
              v1 = v62;
              v14 = v58;
              v15 = v57;
              goto LABEL_6;
            }
          }

          else
          {
            v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v24)
            {
              goto LABEL_15;
            }
          }
        }

LABEL_6:
        v16 = v64;
        if (v64 == v15)
        {

          if (!(v13 >> 62))
          {
            goto LABEL_28;
          }

LABEL_76:
          v35 = _CocoaArrayWrapper.endIndex.getter();
          if (!v35)
          {
            goto LABEL_77;
          }

LABEL_29:
          v67 = v13 & 0xC000000000000001;
          swift_beginAccess();
          v36 = 0;
          v66 = (v13 & 0xFFFFFFFFFFFFFF8);
          v64 = v13 + 32;
          while (1)
          {
            if (v67)
            {
              v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v36 >= v66[2])
              {
                goto LABEL_70;
              }

              v37 = *(v64 + 8 * v36);
            }

            v38 = v37;
            v19 = __OFADD__(v36++, 1);
            if (v19)
            {
              goto LABEL_68;
            }

            v39 = *(v1 + 128);
            v68 = v37;
            __chkstk_darwin(v37);
            v56 = &v68;

            v40 = v65;
            v14 = sub_1001038E8(sub_10010C448, v55, v39);
            v65 = v40;

            v41 = *(v1 + 64);
            v42 = v41 >> 62;
            if (v14)
            {
              if (v42)
              {
                v43 = _CocoaArrayWrapper.endIndex.getter();
                if (!v43)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v43)
                {
                  goto LABEL_30;
                }
              }

              if (v43 < 1)
              {
                goto LABEL_73;
              }

              for (j = 0; j != v43; ++j)
              {
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v45 = *(v41 + 8 * j + 32);
                }

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v14 = Strong;
                  v47 = *(v45 + 24);
                  v48 = swift_getObjectType();
                  (*(v47 + 104))(v38, v48, v47);

                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }
            }

            else
            {
              if (v42)
              {
                v49 = _CocoaArrayWrapper.endIndex.getter();
                if (!v49)
                {
LABEL_30:

                  if (v36 == v35)
                  {
                    goto LABEL_77;
                  }

                  continue;
                }
              }

              else
              {
                v49 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v49)
                {
                  goto LABEL_30;
                }
              }

              if (v49 < 1)
              {
                goto LABEL_72;
              }

              for (k = 0; k != v49; ++k)
              {
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v51 = *(v41 + 8 * k + 32);
                }

                v52 = swift_unknownObjectWeakLoadStrong();
                if (v52)
                {
                  v14 = v52;
                  v53 = *(v51 + 24);
                  v54 = swift_getObjectType();
                  (*(v53 + 88))(v38, v54, v53);

                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }
            }

            v13 = v61;
            v1 = v62;
            if (v36 == v35)
            {
              goto LABEL_77;
            }
          }
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
      v15 = _CocoaArrayWrapper.endIndex.getter();
      v61 = v13;
      v62 = v1;
    }

    v65 = 0;
    if (v13 >> 62)
    {
      goto LABEL_76;
    }

LABEL_28:
    v35 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_29;
    }

LABEL_77:
    swift_beginAccess();
    *(v1 + 128) = _swiftEmptyArrayStorage;

    sub_100103E9C(v13, sub_10010B684);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1001090C4(void *a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *a1) + 0x250);
  result = v4();
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v6 = *(result + 32);
  }

  v7 = v6;

  (*((swift_isaMask & *v7) + 0x2B0))(v8);

  result = v4();
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v9 = *(result + 40);
LABEL_7:
  v10 = v9;

  (*((swift_isaMask & *v10) + 0x2B0))(v11);

  v12 = *(**(v2 + 144) + 144);

  v12(__src, v13);

  memcpy(__dst, __src, sizeof(__dst));
  v14 = sub_10008F8B8();
  v15 = sub_100013C4C(__dst);
  v16 = (*((swift_isaMask & *a1) + 0xB8))(v15);
  v18 = v17;
  if (v14 > 1.0)
  {
    v14 = 1.0;
  }

  v19 = *(**(v2 + 136) + 400);

  v20 = v19(__src);
  v22 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v22 + 32);
  *(v22 + 32) = 0x8000000000000000;
  sub_1000BBFA8(v16, v18, isUniquelyReferenced_nonNull_native, v14);

  *(v22 + 32) = v24;

  v20(__src, 0);
}

uint64_t sub_1001093D8(void *a1)
{
  result = (*((swift_isaMask & *a1) + 0x2C8))();
  if (result)
  {
    v4 = *(**(v1 + 72) + 400);

    v5 = v4(v8);

    sub_10000F974(&qword_1004A1648);
    sub_10000F974(&qword_1004A1650);
    swift_dynamicCast();
    v6 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    swift_dynamicCast();
    v5(v8, 0);
  }

  return result;
}

uint64_t sub_10010959C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  result = __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  v8 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v9 = Contexts.PrivateQueue.init(_:)();
    aBlock[4] = sub_10010C314;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046E378;
    v10 = _Block_copy(aBlock);
    v11 = v8;

    static DispatchQoS.unspecified.getter();
    v15 = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    (*(v14 + 8))(v3, v1);
    (*(v4 + 8))(v7, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100109870(void *a1)
{
  result = (*((swift_isaMask & *a1) + 0x2C8))();
  if (result)
  {
    v4 = *(**(v1 + 72) + 400);

    v5 = v4(v9);

    sub_10000F974(&qword_1004A1648);
    sub_10000F974(&qword_1004A1650);
    swift_dynamicCast();
    v6 = sub_1000550E0(a1, v8);
    if ((v7 & 1) == 0)
    {
    }

    swift_dynamicCast();
    v5(v9, 0);
  }

  return result;
}

uint64_t sub_100109A00(uint64_t a1)
{
  v2 = *(**(a1 + 72) + 144);

  v2(&v14, v3);

  v4 = sub_1001C98F0();

  v6 = *(a1 + 152);
  *(a1 + 152) = v4;
  if (v4 != v6)
  {
    result = swift_beginAccess();
    v7 = *(a1 + 64);
    if (v7 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v12 = *(v10 + 24);

        if (Strong)
        {
          ObjectType = swift_getObjectType();
          (*(v12 + 128))(*(a1 + 152), ObjectType, v12);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100109BB8()
{
  sub_10010959C();

  Synchronized.wrappedValue.getter();

  v1 = v29;

  Synchronized.wrappedValue.getter();

  Synchronized.wrappedValue.setter();

  v2 = 1 << *(v29 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v29 + 64);
  result = swift_beginAccess();
  v6 = 0;
  v26 = (v2 + 63) >> 6;
  v27 = v0;
  while (v4)
  {
LABEL_10:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(v1 + 56) + 8 * (v8 | (v6 << 6)));
    type metadata accessor for WorldPoint();
    result = swift_dynamicCastClass();
    if (result)
    {
      v10 = result;
      v11 = *(v0 + 64);
      if (v11 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v12 = result;
        if (result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_13:
          if (v12 < 1)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            return result;
          }

          v28 = v9;
          v13 = v9;

          for (i = 0; i != v12; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v11 + 8 * i + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v15 = *(v17 + 24);
              ObjectType = swift_getObjectType();
              (*(v15 + 24))(v10, ObjectType, v15);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

LABEL_4:
          v1 = v29;
          v0 = v27;
        }
      }
    }

    else
    {
      type metadata accessor for WorldLine();
      result = swift_dynamicCastClass();
      if (result)
      {
        v18 = result;
        v19 = *(v0 + 64);
        if (v19 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v20 = result;
          if (result)
          {
LABEL_25:
            if (v20 < 1)
            {
              goto LABEL_43;
            }

            v28 = v9;
            v21 = v9;

            for (j = 0; j != v20; ++j)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v25 = *(v19 + 8 * j + 32);
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v23 = *(v25 + 24);
                v24 = swift_getObjectType();
                (*(v23 + 48))(v18, v24, v23);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            goto LABEL_4;
          }
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v7 >= v26)
    {
      break;
    }

    v4 = *(v29 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  result = [objc_opt_self() jasperAvailable];
  if (result)
  {
    return sub_1001088EC();
  }

  return result;
}

void sub_100109F6C(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
    goto LABEL_74;
  }

  SIMD2<>.init(_:)();
  if (*(v10 + 80))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v12 = v11;
  *&v13 = CGRectGetWidth(*(v10 + 48));
  v178 = v13;
  if (*(v10 + 80))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  Height = CGRectGetHeight(*(v10 + 48));
  if ((*(v10 + 80) & 1) == 0)
  {
    *&v15.f64[0] = v178;
    v15.f64[1] = Height;
    v16 = vcvt_f32_f64(v15);
    *&v2 = sqrtf(vaddv_f32(vmul_f32(v16, v16))) * 0.5;
    SIMD2<>.init(_:)();
    v18 = v17;
    swift_beginAccess();
    v19 = *(v4 + 88);
    v20 = *(v4 + 96);

    sub_10008FD20(v19, v20, v236, v12, *&v2);
    v21 = v236[0];

    if (!v21)
    {
      v55 = *(**(v4 + 136) + 400);

      v56 = v55(v234);
      *(v57 + 8) = 0;
      *(v57 + 16) = 0;

      v56(v234, 0);

      v58 = *(**(v4 + 136) + 400);

      v59 = v58(v234);
      *(v60 + 24) = 0;
      *(v60 + 28) = 1;
      v59(v234, 0);

      v61 = *(**(v4 + 136) + 400);

      v62 = v61(v234);
      *(v63 + 1) = 0;
      v62(v234, 0);
LABEL_67:

      return;
    }

    *&v174 = a1;
    v23 = &swift_isaMask;
    v24 = v21;
    v25 = *((swift_isaMask & *v21) + 0x250);
    v176 = v24;
    v26 = (v25)(v22);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_71;
      }

      v27 = *(v26 + 32);
    }

    v28 = v27;

    *&v30 = (*((swift_isaMask & *v28) + 0x2B0))(v29);
    v177 = v31;
    v178 = v30;
    v175 = v32;
    v173 = v33;

    v34 = v25();
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = v174;
LABEL_14:

      *&v37 = (*((swift_isaMask & *v35) + 0x2B0))(v36);
      v172[2] = v38;
      v172[3] = v37;
      v172[0] = v40;
      v172[1] = v39;

      Date.init()();
      Date.timeIntervalSince1970.getter();
      v2 = v41;
      (*(v7 + 8))(v9, v6);
      v12.i32[0] = sub_10008F8B8();
      v42 = *(**(v4 + 136) + 144);

      v42(&v222, v43);

      v232[6] = v228;
      v232[7] = v229;
      v232[8] = v230;
      v233 = v231;
      v232[2] = v224;
      v232[3] = v225;
      v232[4] = v226;
      v232[5] = v227;
      v232[0] = v222;
      v232[1] = v223;
      sub_1000D1340(v232);
      LODWORD(v173) = BYTE1(v232[0]);
      v44 = *(**(v4 + 136) + 144);

      v44(&v222, v45);

      v234[6] = v228;
      v234[7] = v229;
      v234[8] = v230;
      v235 = v231;
      v234[2] = v224;
      v234[3] = v225;
      v234[4] = v226;
      v234[5] = v227;
      v234[0] = v222;
      v234[1] = v223;
      v46 = *(&v222 + 1);
      v47 = v223;

      sub_1000D1340(v234);
      v48 = *((swift_isaMask & *v176) + 0xB8);
      v49 = (swift_isaMask & *v176) + 184;
      v50 = v176;
      *&v178 = v49;
      v51 = v48();
      *&v175 = v48;
      *&v177 = v50;
      if (v47)
      {
        if (v46 == v51 && v47 == v52)
        {

          v54 = 0;
          goto LABEL_24;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v54 = 0;
        if (v64)
        {
LABEL_24:
          v73 = (v48)(v53);
          v75 = v74;
          v76 = *(**(v4 + 136) + 144);

          v76(&v212, v77);

          v229 = v219;
          v230 = v220;
          v231 = v221;
          v224 = v214;
          v225 = v215;
          v226 = v216;
          v227 = v217;
          v228 = v218;
          v222 = v212;
          v223 = v213;
          v78 = *(&v212 + 1);
          v79 = v213;

          sub_1000D1340(&v222);
          if (v79)
          {
            if (v73 == v78 && v79 == v75)
            {

              v23 = v175;
              v81 = v173;
              if ((v173 & 1) == 0)
              {
LABEL_41:
                if ((v54 | v81))
                {
                  goto LABEL_44;
                }

                v104 = *(**(v4 + 136) + 144);

                v104(&v202, v105);

                v218 = v208;
                v219 = v209;
                v220 = v210;
                v221 = v211;
                v214 = v204;
                v215 = v205;
                v216 = v206;
                v217 = v207;
                v212 = v202;
                v213 = v203;
                v80 = sub_1000D1340(&v212);
                v3 = *(&v214 + 1);
                if (qword_1004A04C8 == -1)
                {
LABEL_43:
                  LOBYTE(v54) = v2 < v3 + *&dword_1004D5048;
LABEL_44:
                  v106 = v23(v80);
                  v108 = v107;
                  v109 = *(**(v4 + 136) + 144);

                  v109(&v202, v110);

                  v218 = v208;
                  v219 = v209;
                  v220 = v210;
                  v221 = v211;
                  v214 = v204;
                  v215 = v205;
                  v216 = v206;
                  v217 = v207;
                  v212 = v202;
                  v213 = v203;
                  v111 = v204;
                  if (!*(v204 + 16))
                  {
                    sub_10010C334(v236);
                    sub_10010C334(v236);
                    sub_1000D1340(&v212);

                    return;
                  }

                  v112 = sub_100198230(v106, v108);
                  v114 = v113;

                  if ((v114 & 1) == 0)
                  {
                    sub_10010C334(v236);
                    sub_10010C334(v236);
                    sub_1000D1340(&v212);
                    return;
                  }

                  v115 = *(*(v111 + 56) + 4 * v112);
                  sub_1000D1340(&v212);
                  v116 = *(**(v4 + 136) + 144);

                  v116(&v192, v117);

                  v208 = v198;
                  v209 = v199;
                  v210 = v200;
                  v211 = v201;
                  v204 = v194;
                  v205 = v195;
                  v206 = v196;
                  v207 = v197;
                  v202 = v192;
                  v203 = v193;
                  v118 = sub_1000D1340(&v202);
                  if (BYTE1(v202) == 1)
                  {
                    v119 = 0.0;
                    if (v115 >= 0.0)
                    {
                      goto LABEL_56;
                    }

LABEL_55:
                    v120 = v115 * 0.5;
LABEL_57:
                    v121 = v23(v118);
                    v123 = v122;
                    v124 = *(**(v4 + 136) + 400);

                    v125 = v124(&v192);
                    *(v126 + 8) = v121;
                    *(v126 + 16) = v123;

                    v125(&v192, 0);

                    v127 = *(**(v4 + 136) + 400);

                    v128 = v127(&v192);
                    *(v129 + 24) = v12.i32[0];
                    *(v129 + 28) = 0;
                    v128(&v192, 0);

                    LOBYTE(v121) = (v12.f32[0] <= v120) & ~v54;
                    v130 = *(**(v4 + 136) + 400);

                    v131 = v130(&v182);
                    *(v132 + 1) = v121;
                    v131(&v182, 0);

                    v133 = *(**(v4 + 136) + 144);

                    v133(&v182, v134);

                    v198 = v188;
                    v199 = v189;
                    v200 = v190;
                    v201 = v191;
                    v194 = v184;
                    v195 = v185;
                    v196 = v186;
                    v197 = v187;
                    v192 = v182;
                    v193 = v183;
                    sub_1000D1340(&v192);
                    if (BYTE1(v192) == 1)
                    {
                      v135 = *(**(v4 + 136) + 400);

                      v136 = v135(&v182);
                      *(v137 + 40) = v2;
                      v136(&v182, 0);
                    }

                    sub_10009055C(v177, v25, &v182, v18, 30.0);
                    if (BYTE8(v187))
                    {
                      v138 = *(**(v4 + 136) + 400);

                      v139 = v138(v179);
                      v141 = *(v140 + 48);
                      *(v140 + 48) = 0;

                      v139(v179, 0);

                      v181 = 1;
                      v142 = *(**(v4 + 136) + 400);

                      v143 = v142(v179);
                      *(v144 + 64) = 0u;
                      *(v144 + 80) = 0u;
                      *(v144 + 96) = 0u;
                      *(v144 + 112) = 0u;
                      *(v144 + 128) = v181;
                      v143(v179, 0);

                      v145 = *(**(v4 + 136) + 400);

                      v146 = v145(v179);
                      *(v147 + 136) = 0;
                      *(v147 + 144) = 1;
                      v146(v179, 0);

                      v149 = (v175)(v148);
                      v151 = v150;
                      sub_10010C334(v236);
                      v152 = 2.0;
                      if (v12.f32[0] <= 2.0)
                      {
                        v152 = v12.f32[0];
                      }

                      if (v152 > v115)
                      {
                        v153 = v152;
                      }

                      else
                      {
                        v153 = v115;
                      }

                      v154 = *(**(v4 + 136) + 400);

                      v155 = v154(v179);
                      v157 = v156;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v180 = *(v157 + 32);
                      *(v157 + 32) = 0x8000000000000000;
                      sub_1000BBFA8(v149, v151, isUniquelyReferenced_nonNull_native, v153);

                      *(v157 + 32) = v180;

                      v155(v179, 0);
                      sub_10010C334(v236);
                    }

                    else
                    {
                      v159 = v187;
                      v177 = v185;
                      v178 = v186;
                      v174 = v183;
                      v175 = v184;
                      sub_10010C334(v236);
                      v160 = *(**(v4 + 136) + 400);
                      sub_10010C39C(v236, v179);

                      v161 = v160(v179);
                      v163 = *(v162 + 48);
                      *(v162 + 48) = v176;

                      v161(v179, 0);

                      LOBYTE(v180) = 0;
                      v164 = *(**(v4 + 136) + 400);

                      v165 = v164(v179);
                      v166 = v175;
                      *(v167 + 64) = v174;
                      *(v167 + 80) = v166;
                      v168 = v178;
                      *(v167 + 96) = v177;
                      *(v167 + 112) = v168;
                      *(v167 + 128) = v180;
                      v165(v179, 0);

                      v169 = *(**(v4 + 136) + 400);

                      v170 = v169(v179);
                      *(v171 + 136) = v159;
                      *(v171 + 144) = 0;
                      v170(v179, 0);
                      sub_10010C334(v236);
                    }

                    goto LABEL_67;
                  }

                  if (v12.f32[0] >= 1.0)
                  {
                    v119 = ((v12.f32[0] + -1.0) * 0.5) + 0.15;
                    if (v115 < (v119 + v119))
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    if (v115 < 0.3)
                    {
                      goto LABEL_55;
                    }

                    v119 = 0.15;
                  }

LABEL_56:
                  v120 = v115 - v119;
                  goto LABEL_57;
                }

LABEL_72:
                v80 = swift_once();
                goto LABEL_43;
              }
            }

            else
            {
              v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v81 = v173;
              v23 = v175;
              if ((v82 & v173 & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v83 = v23(v80);
            v85 = v84;
            v86 = *(**(v4 + 136) + 144);

            v86(&v202, v87);

            v218 = v208;
            v219 = v209;
            v220 = v210;
            v221 = v211;
            v214 = v204;
            v215 = v205;
            v216 = v206;
            v217 = v207;
            v212 = v202;
            v213 = v203;
            v88 = v204;
            if (*(v204 + 16))
            {
              v89 = sub_100198230(v83, v85);
              v91 = v90;

              if (v91)
              {
                v92 = *(*(v88 + 56) + 4 * v89);
                v93 = sub_1000D1340(&v212);
                v94 = v23(v93);
                v96 = v95;
                v97 = ((v12.f32[0] + -1.0) * 0.5) + 0.15;
                if (v12.f32[0] < 1.0)
                {
                  v97 = 0.15;
                }

                v98 = v12.f32[0] + v97;
                if (v92 >= v98)
                {
                  v92 = v98;
                }

                v99 = *(**(v4 + 136) + 400);

                v100 = v99(&v202);
                v102 = v101;
                v103 = swift_isUniquelyReferenced_nonNull_native();
                *&v192 = *(v102 + 32);
                *(v102 + 32) = 0x8000000000000000;
                sub_1000BBFA8(v94, v96, v103, v92);

                *(v102 + 32) = v192;
                v25 = v174;

                v100(&v202, 0);
                v23 = v175;
              }

              else
              {
                v80 = sub_1000D1340(&v212);
              }
            }

            else
            {
              sub_1000D1340(&v212);
            }
          }

          else
          {

            v23 = v175;
          }

          v81 = v173;
          goto LABEL_41;
        }
      }

      else
      {
      }

      v54 = 1;
      if (v12.f32[0] > 1.0 && v12.f32[0] < 2.0)
      {
        v65 = (v48)(v53);
        v67 = v66;
        v68 = *(**(v4 + 136) + 400);

        v69 = v68(&v222);
        v71 = v70;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        *&v212 = *(v71 + 32);
        *(v71 + 32) = 0x8000000000000000;
        sub_1000BBFA8(v65, v67, v72, v12.f32[0]);
        v48 = v175;

        *(v71 + 32) = v212;

        v69(&v222, 0);
        v25 = v174;

        v54 = 1;
      }

      goto LABEL_24;
    }

    v25 = v174;
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v35 = *(v34 + 40);
      goto LABEL_14;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_76:
  __break(1u);
}

uint64_t sub_10010B3C4()
{
}

uint64_t sub_10010B450()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_10010B4DC()
{
  sub_10010B450();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LinesRenderer()
{
  result = qword_1004A9820;
  if (!qword_1004A9820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010B5E4(uint64_t a1)
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

uint64_t sub_10010B684(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10001D47C(&qword_1004A9980, &qword_1004A9978);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A9978);
            v9 = sub_10013BA68(v13, i, a3);
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
        type metadata accessor for WorldLineGuide();
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

uint64_t sub_10010B828(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10001D47C(&qword_1004A9998, &qword_1004A9990);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A9990);
            v9 = sub_10013BA68(v13, i, a3);
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
        sub_100018630(0, &qword_1004A1838);
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

uint64_t sub_10010B9DC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10001D47C(&qword_1004A9988, &qword_1004A1648);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A1648);
            v9 = sub_10013BAE8(v13, i, a3);
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
        type metadata accessor for MeasureObject();
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

uint64_t sub_10010BB80(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10001D47C(&qword_1004A99C0, &qword_1004A99B8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A99B8);
            v9 = sub_10013BA68(v13, i, a3);
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
        sub_100018630(0, &qword_1004A8960);
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

uint64_t sub_10010BD34(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10001D47C(&qword_1004A9970, &qword_1004A9788);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A9788);
            v9 = sub_10013BA68(v13, i, a3);
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
        type metadata accessor for WorldPoint();
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

uint64_t sub_10010BED8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10001D47C(&qword_1004A99A8, &qword_1004A99A0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A99A0);
            v9 = sub_10013BA68(v13, i, a3);
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
        sub_100018630(0, &qword_1004A1318);
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

uint64_t sub_10010C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a3;
  v19[4] = a4;
  v7 = sub_1000315D4(v19);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  *(a2 + 64) = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004A93D0);
  swift_getKeyPath();
  *(a2 + 72) = MutableStateValue.__allocating_init(_:_:)();
  *(a2 + 80) = _swiftEmptyDictionarySingleton;
  type metadata accessor for WorldLine();
  *(a2 + 88) = OrderedDictionary.init()();
  *(a2 + 96) = v8;
  *(a2 + 104) = v9;
  v18 = _swiftEmptyDictionarySingleton;
  sub_10000F974(&qword_1004A93D8);
  swift_allocObject();
  *(a2 + 112) = Synchronized.init(wrappedValue:)();
  KeyPath = swift_getKeyPath();
  v11 = sub_10000F974(&qword_1004A8950);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D5058;
  v13 = *(v11 + 272);
  swift_retain_n();
  *(a2 + 120) = v13(KeyPath, v12);
  *(a2 + 128) = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004A93E0);
  swift_getKeyPath();
  *(a2 + 136) = MutableStateValue.__allocating_init(_:_:)();
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&qword_1004A1200);
  *(a2 + 144) = (*(v15 + 272))(v14, v12);
  *(a2 + 152) = 1;
  sub_1000336B4(v19, &v18);
  v16 = StateObserver.init(configuration:)();
  sub_10000FF00(v19);
  return v16;
}

uint64_t sub_10010C31C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010C334(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A99B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010C39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A99B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10010C488()
{
  v1 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  [*&v0[OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v1] setClipsToBounds:1];
  [*&v0[v1] _setContinuousCornerRadius:10.0];
  v2 = *&v0[v1];
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  v4 = [v0 contentView];
  [v4 addSubview:*&v0[v1]];
}

void sub_10010C580()
{
  v1 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  [*&v0[OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor];
  if (v2)
  {
    [v2 setActive:0];
    v3 = [*&v0[v1] bottomAnchor];
    v4 = [v0 contentView];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5 constant:-16.0];
    LODWORD(v7) = 1148813312;
    [v6 setPriority:v7];
    sub_10000F974(&unk_1004A3F10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1003D6240;
    v9 = [*&v0[v1] leadingAnchor];
    v10 = [v0 contentView];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:88.0];
    *(v8 + 32) = v12;
    v13 = [*&v0[v1] trailingAnchor];
    v14 = [v0 contentView];
    v15 = [v14 trailingAnchor];

    v16 = [v13 constraintEqualToAnchor:v15 constant:-88.0];
    *(v8 + 40) = v16;
    v17 = [*&v0[v1] heightAnchor];
    v18 = [*&v0[v1] widthAnchor];
    v19 = [v17 constraintLessThanOrEqualToAnchor:v18 multiplier:0.75];

    *(v8 + 48) = v19;
    *(v8 + 56) = v6;
    v29 = v8;
    v20 = objc_opt_self();
    v28 = v6;
    v21 = [v20 currentTraitCollection];
    v22 = [v21 preferredContentSizeCategory];

    LOBYTE(v17) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v23 = [*&v0[v1] topAnchor];
    if (v17)
    {
      v24 = [*&v0[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel] bottomAnchor];
    }

    else
    {
      v24 = [*&v0[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels] bottomAnchor];
    }

    v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = objc_opt_self();
    sub_100022180();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

id sub_10010C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_10010C488();
  sub_10010C580();

  return v10;
}

id sub_10010CB08(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10010C488();
    sub_10010C580();
  }

  return v6;
}

uint64_t sub_10010CC74(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MeasurementHistoryItem();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023338(a1, v7);
  memcpy(v163, &v7[*(v5 + 36)], 0x346uLL);
  if (sub_1000218D8(v163) == 1)
  {
    v160 = a1;
    v8 = sub_1000218E4(v163);
    v9 = v8;
    v10 = *v8;
    v161 = *(v8 + 8);
    v11 = *(v8 + 36);
    v12 = *(v8 + 32);
    v13 = *(v8 + 128);
    v158 = *(v8 + 120);
    if (v11)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v12;
    }

    if (*(v8 + 156))
    {
      v15 = 0.0;
    }

    else
    {
      v15 = *(v8 + 152);
    }

    v16 = *(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView);
    sub_100048AE8(v14, v15);

    v17 = [objc_opt_self() currentTraitCollection];
    v18 = [v17 preferredContentSizeCategory];

    v19 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v159 = v7;
    v162 = v2;
    if (v19)
    {
      v20 = *(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle);
      v21 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
      v22 = *&v20[OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label];
      v23 = v20;
      v24 = String._bridgeToObjectiveC()();
      [v22 setText:v24];

      v25 = *&v20[v21];
      v26 = String._bridgeToObjectiveC()();
      [v25 setAccessibilityLabel:v26];

      v27 = *(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel);
      v28 = objc_opt_self();
      v29 = v27;
      v30 = [v28 mainBundle];
      v164._object = 0xE000000000000000;
      v31._object = 0x80000001003FFC10;
      v31._countAndFlagsBits = 0xD000000000000010;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v164._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v164);

      v161 = v28;
      v33 = [v28 mainBundle];
      v165._object = 0xE000000000000000;
      v34._object = 0x80000001003FFC10;
      v34._countAndFlagsBits = 0xD000000000000010;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v165._countAndFlagsBits = 0;
      object = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v165)._object;

      v37 = v9[5];
      v153 = v9[6];
      v154 = v37;
      v38 = v9[7];
      v39 = v9[8];
      v40 = v9[10];
      v155 = v9[11];
      v156 = v40;
      v42 = v9[12];
      v41 = v9[13];
      v151 = v38;
      v152 = v42;
      v157 = v41;
      v43 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v44 = *&v29[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v45 = String._bridgeToObjectiveC()();

      [v44 setText:v45];

      v46 = *&v29[v43];
      v158 = object;
      v47 = String._bridgeToObjectiveC()();
      [v46 setAccessibilityLabel:v47];

      v48 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v49 = *&v29[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v50 = String._bridgeToObjectiveC()();
      [v49 setText:v50];

      v51 = *&v29[v48];
      if (v39)
      {
        v39 = String._bridgeToObjectiveC()();
      }

      [v51 setAccessibilityLabel:v39];

      v52 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v53 = *&v29[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v54 = String._bridgeToObjectiveC()();
      [v53 setText:v54];

      v55 = *&v29[v52];
      if (v157)
      {
        v56 = String._bridgeToObjectiveC()();
      }

      else
      {
        v56 = 0;
      }

      v83 = v162;
      [v55 setAccessibilityLabel:v56];

      v84 = *(v83 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel);
      v85 = v161;
      v86 = [v161 mainBundle];
      v167._object = 0xE000000000000000;
      v87._countAndFlagsBits = 0x4C474E4154434552;
      v87._object = 0xEF48544449575F45;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      v167._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v167);

      v89 = [v85 mainBundle];
      v168._object = 0xE000000000000000;
      v90._countAndFlagsBits = 0x4C474E4154434552;
      v90._object = 0xEF48544449575F45;
      v91._countAndFlagsBits = 0;
      v91._object = 0xE000000000000000;
      v168._countAndFlagsBits = 0;
      v92 = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, 0, v89, v91, v168)._object;

      v93 = v9[22];
      v94 = v9[23];
      v96 = v9[25];
      v95 = v9[26];
      v155 = v9[20];
      v156 = v95;
      v98 = v9[27];
      v97 = v9[28];
      v153 = v93;
      v154 = v98;
      v157 = v96;
      v158 = v97;
      v99 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v100 = *&v84[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v101 = String._bridgeToObjectiveC()();

      [v100 setText:v101];

      v102 = *&v84[v99];
      v161 = v92;
      v103 = String._bridgeToObjectiveC()();
      [v102 setAccessibilityLabel:v103];

      v104 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v105 = *&v84[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v106 = String._bridgeToObjectiveC()();
      [v105 setText:v106];

      v107 = *&v84[v104];
      if (v94)
      {
        v108 = String._bridgeToObjectiveC()();
      }

      else
      {
        v108 = 0;
      }

      v109 = v160;
      [v107 setAccessibilityLabel:v108];

      v110 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v111 = *&v84[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v112 = String._bridgeToObjectiveC()();
      [v111 setText:v112];

      v113 = *&v84[v110];
      if (v158)
      {
        v114 = String._bridgeToObjectiveC()();
      }

      else
      {
        v114 = 0;
      }

      v115 = v162;
      [v113 setAccessibilityLabel:v114];
    }

    else
    {
      v157 = v13;
      v57 = *(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle);
      v58 = String._bridgeToObjectiveC()();
      [v57 setText:v58];

      v59 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
      v60 = *(*(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v61 = objc_opt_self();
      v62 = v60;
      v156 = v61;
      v63 = [v61 mainBundle];
      v166._object = 0xE000000000000000;
      v64._object = 0x80000001003FFC10;
      v64._countAndFlagsBits = 0xD000000000000010;
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      v166._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, v63, v65, v166);

      v66 = String._bridgeToObjectiveC()();

      [v62 setText:v66];

      v67 = *(*(v2 + v59) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v68 = String._bridgeToObjectiveC()();
      [v67 setText:v68];

      v69 = *(*(v2 + v59) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v70 = v9[5];
      v71 = v9[6];
      v72 = v9[8];
      v152 = v9[7];
      v153 = v72;
      if (v10 == v70 && v161 == v71)
      {
        v73 = 1;
      }

      else
      {
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v74 = v9[11];
      v161 = v9[10];
      v75 = v9[13];
      v154 = v9[12];
      v155 = v74;
      v76 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v77 = *&v69[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v78 = v69;
      [v77 setHidden:v73 & 1];
      if ((v73 & 1) == 0)
      {
        v79 = *(*&v69[v76] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v80 = String._bridgeToObjectiveC()();
        [v79 setText:v80];

        v81 = *&v69[v76];
        if (v153)
        {
          v82 = String._bridgeToObjectiveC()();
        }

        else
        {
          v82 = 0;
        }

        [v81 setAccessibilityLabel:v82];
      }

      v116 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v117 = *(*&v78[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v118 = String._bridgeToObjectiveC()();
      [v117 setText:v118];

      v119 = *&v78[v116];
      v120 = v162;
      if (v75)
      {
        v75 = String._bridgeToObjectiveC()();
      }

      [v119 setAccessibilityLabel:v75];

      v121 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
      v122 = *(*(v120 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v123 = [v156 mainBundle];
      v169._object = 0xE000000000000000;
      v124._countAndFlagsBits = 0x4C474E4154434552;
      v124._object = 0xEF48544449575F45;
      v125._countAndFlagsBits = 0;
      v125._object = 0xE000000000000000;
      v169._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v124, 0, v123, v125, v169);

      v126 = String._bridgeToObjectiveC()();

      [v122 setText:v126];

      v127 = *(*(v120 + v121) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v129 = v157;
      v128 = v158;
      v130 = String._bridgeToObjectiveC()();
      [v127 setText:v130];

      v131 = v129;
      v132 = *(*(v120 + v121) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v133 = v9[20];
      v134 = v9[21];
      v135 = v9[23];
      v155 = v9[22];
      v156 = v135;
      if (v128 == v133 && v131 == v134)
      {
        v136 = 1;
      }

      else
      {
        v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v161 = v9[25];
      v137 = v9[27];
      v138 = v9[28];
      v158 = v137;
      v139 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v140 = *&v132[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v141 = v132;
      [v140 setHidden:v136 & 1];
      if ((v136 & 1) == 0)
      {
        v142 = *(*&v132[v139] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v143 = String._bridgeToObjectiveC()();
        [v142 setText:v143];

        v144 = *&v132[v139];
        if (v156)
        {
          v145 = String._bridgeToObjectiveC()();
        }

        else
        {
          v145 = 0;
        }

        [v144 setAccessibilityLabel:v145];
      }

      v146 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v147 = *(*&v141[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v148 = String._bridgeToObjectiveC()();
      [v147 setText:v148];

      v149 = *&v141[v146];
      if (v138)
      {
        v114 = String._bridgeToObjectiveC()();
      }

      else
      {
        v114 = 0;
      }

      v109 = v160;
      v115 = v162;
      [v149 setAccessibilityLabel:v114];
    }

    [*(v115 + OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot) setImage:*(v109 + *(type metadata accessor for SpatialPlattersHistoryItem() + 20))];
    return sub_10002339C(v159);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10010D9F0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 14) = *(a1 + 30);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 14) = *(a2 + 30);
  return sub_10010DD4C(&v5, &v7) & 1;
}

void sub_10010DA3C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:0];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  qword_1004D4EB8 = v4;
}

void sub_10010DB78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSNumberFormatter) init];
  [v9 setNumberStyle:1];
  [v9 setMaximumFractionDigits:a2];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v9 setLocale:isa];

  *a3 = v9;
}

uint64_t sub_10010DCB0()
{
  CFRunLoopRemoveObserver(*(v0 + 24), *(v0 + 16), kCFRunLoopCommonModes);

  return swift_deallocClassInstance();
}

uint64_t sub_10010DD4C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 37);
  v10 = *(a2 + 37);
  if (v9 == 4)
  {
    if (v10 == 4)
    {
      return 1;
    }
  }

  else if (v9 == v10)
  {
    return 1;
  }

  return 0;
}

void sub_10010DE20(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  LODWORD(v323) = a3;
  LODWORD(v322) = a2;
  v324 = a4;
  *&v325 = a1;
  v6 = sub_10000F974(&qword_1004A9BF0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v318 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v318 - v11;
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  Defaults.showPreciseMeasurement.unsafeMutableAddressor();

  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 BOOLForKey:v15];

  v17 = fminf(fabsf(a5), 5000.0);
  v18 = 0.0;
  if (a5 < 0.0)
  {
    v18 = v17;
  }

  if (a5 <= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = [v13 standardUserDefaults];
  v21 = *(Defaults.measurementBias.unsafeMutableAddressor() + 8);

  v22 = String._bridgeToObjectiveC()();

  [v20 floatForKey:v22];
  v24 = v23;

  v25 = v19 * (v24 + 1.0);
  if (v325 == 1)
  {
    v26 = objc_opt_self();
    v27 = [v26 meters];
    sub_100018630(0, &qword_1004A9BF8);
    Measurement.init(value:unit:)();
    v28 = [v26 centimeters];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v30 = v29;
    v32 = *(v7 + 8);
    v31 = v7 + 8;
    v32(v10, v6);
    v32(v12, v6);
    v19 = v30;
    v33 = roundf(v19);
    if (v33 >= 100.0)
    {
      sub_10000F974(&unk_1004AF710);
      v101 = swift_allocObject();
      v325 = xmmword_1003D5360;
      *(v101 + 16) = xmmword_1003D5360;
      *(v101 + 56) = &type metadata for Float;
      *(v101 + 64) = &protocol witness table for Float;
      *(v101 + 32) = v25;
      *&v323 = String.init(format:_:)();
      if (qword_1004A02F8 != -1)
      {
        swift_once();
      }

      v102 = qword_1004D4EC0;
      v103 = objc_allocWithZone(NSNumber);
      *&v104 = v25;
      v105 = [v103 initWithFloat:v104];
      v106 = [v102 stringFromNumber:v105];

      if (v106)
      {
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        v110 = objc_opt_self();
        v111 = [v110 mainBundle];
        v112.value._countAndFlagsBits = 0xD000000000000014;
        v331._object = 0x8000000100405270;
        v112.value._object = 0x8000000100407540;
        v113._countAndFlagsBits = 1830830117;
        v113._object = 0xE400000000000000;
        v114._countAndFlagsBits = 0;
        v114._object = 0xE000000000000000;
        v331._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v113, v112, v111, v114, v331);

        v115 = swift_allocObject();
        *(v115 + 16) = v325;
        *(v115 + 56) = &type metadata for String;
        *(v115 + 64) = sub_1000192D0();
        *(v115 + 32) = v107;
        *(v115 + 40) = v109;
        v116 = String.init(format:_:)();
        object = v117;
        countAndFlagsBits = v116;

        v118 = [v110 mainBundle];
        v119._countAndFlagsBits = 0xD000000000000013;
        v332._object = 0xE000000000000000;
        v119._object = 0x8000000100407600;
        v120._countAndFlagsBits = 0;
        v120._object = 0xE000000000000000;
        v332._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v119, 0, v118, v120, v332);

        v121 = swift_allocObject();
        *(v121 + 16) = v325;
        *(v121 + 56) = &type metadata for Float;
        *(v121 + 64) = &protocol witness table for Float;
        *(v121 + 32) = v25;
        v56 = static String.localizedStringWithFormat(_:_:)();
        v58 = v122;

        v123 = String._bridgeToObjectiveC()();

        [v123 floatValue];
        v125 = v124;

        v126 = 0;
LABEL_88:
        v314 = v324;
        *v324 = countAndFlagsBits;
        v314[1] = object;
        v314[2] = v56;
        v314[3] = v58;
        *(v314 + 8) = v125;
        *(v314 + 36) = 0;
        *(v314 + 37) = v126;
        return;
      }

      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v16)
    {
      sub_10000F974(&unk_1004AF710);
      v34 = swift_allocObject();
      v325 = xmmword_1003D5360;
      *(v34 + 16) = xmmword_1003D5360;
      *(v34 + 56) = &type metadata for Float;
      *(v34 + 64) = &protocol witness table for Float;
      *(v34 + 32) = v19;
      *&v323 = String.init(format:_:)();
      if (qword_1004A02F8 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_93;
    }

    if ((LODWORD(v33) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v33 > -9.2234e18)
      {
        if (v33 < 9.2234e18)
        {
          v148 = v33;
          if (v33)
          {
            v326._countAndFlagsBits = v33;
            *&v325 = dispatch thunk of CustomStringConvertible.description.getter();
            if (qword_1004A02F0 != -1)
            {
              swift_once();
            }

            v149 = qword_1004D4EB8;
            v150 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v148];
            v151 = [v149 stringFromNumber:v150];

            if (v151)
            {
              v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v154 = v153;

              v155 = objc_opt_self();
              v156 = [v155 mainBundle];
              v335._object = 0x8000000100405270;
              v157._countAndFlagsBits = 0x6D63204025;
              v157._object = 0xE500000000000000;
              v158._countAndFlagsBits = 0;
              v158._object = 0xE000000000000000;
              v335._countAndFlagsBits = 0xD00000000000009DLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v157, 0, v156, v158, v335);

              sub_10000F974(&unk_1004AF710);
              v159 = swift_allocObject();
              v323 = xmmword_1003D5360;
              *(v159 + 16) = xmmword_1003D5360;
              *(v159 + 56) = &type metadata for String;
              *(v159 + 64) = sub_1000192D0();
              *(v159 + 32) = v152;
              *(v159 + 40) = v154;
              v160 = String.init(format:_:)();
              object = v161;

              v162 = [v155 mainBundle];
              v336._object = 0xE000000000000000;
              v163._countAndFlagsBits = 0x69746E6563204025;
              v163._object = 0xEE0073726574656DLL;
              v164._countAndFlagsBits = 0;
              v164._object = 0xE000000000000000;
              v336._countAndFlagsBits = 0;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v163, 0, v162, v164, v336);

              countAndFlagsBits = v160;
              v165 = swift_allocObject();
              *(v165 + 16) = v323;
              *(v165 + 56) = &type metadata for Int;
              *(v165 + 64) = &protocol witness table for Int;
              *(v165 + 32) = v148;
              v56 = static String.localizedStringWithFormat(_:_:)();
              v58 = v166;

              goto LABEL_43;
            }

            goto LABEL_111;
          }

          v241 = objc_opt_self();
          v242 = [v241 mainBundle];
          v315 = 0x8000000100405270;
          if (v322)
          {
            v243._countAndFlagsBits = 1835212848;
            v243._object = 0xE400000000000000;
            v244._countAndFlagsBits = 0;
            v244._object = 0xE000000000000000;
            v245 = 0xD00000000000009DLL;
            v246 = NSLocalizedString(_:tableName:bundle:value:comment:)(v243, 0, v242, v244, *(&v315 - 1));
            countAndFlagsBits = v246._countAndFlagsBits;
            object = v246._object;

            v247 = "Less than one centimeter";
            v248 = [v241 mainBundle];
            v249 = 0xD000000000000010;
          }

          else
          {
            v279._countAndFlagsBits = 0x6D632031203CLL;
            v279._object = 0xE600000000000000;
            v280._countAndFlagsBits = 0;
            v280._object = 0xE000000000000000;
            v281 = 0xD00000000000009DLL;
            v282 = NSLocalizedString(_:tableName:bundle:value:comment:)(v279, 0, v242, v280, *(&v315 - 1));
            countAndFlagsBits = v282._countAndFlagsBits;
            object = v282._object;

            v247 = "%@ and a half inches";
            v248 = [v241 mainBundle];
            v249 = 0xD000000000000018;
          }

          v345._object = 0xE000000000000000;
          v283 = v247 | 0x8000000000000000;
          v284._countAndFlagsBits = 0;
          v284._object = 0xE000000000000000;
          v345._countAndFlagsBits = 0;
          v285 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v249, 0, v248, v284, v345);
          v56 = v285._countAndFlagsBits;
          v58 = v285._object;

          v126 = 1;
LABEL_87:
          v125 = 0.0;
          goto LABEL_88;
        }

        goto LABEL_99;
      }

      goto LABEL_97;
    }

    __break(1u);
    goto LABEL_95;
  }

  if (!v325)
  {
    v59 = objc_opt_self();
    v27 = [v59 meters];
    sub_100018630(0, &qword_1004A9BF8);
    Measurement.init(value:unit:)();
    v60 = [v59 inches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v62 = v61;
    v63 = *(v7 + 8);
    v31 = v7 + 8;
    v63(v10, v6);
    v63(v12, v6);
    v25 = v62;
    if (v323)
    {
      if (v25 >= 12.0)
      {
        goto LABEL_15;
      }
    }

    else if (v25 >= 36.0)
    {
LABEL_15:
      v64 = v25 / 12.0;
      if (COERCE_INT(fabs(v25 / 12.0)) > 2139095039)
      {
        __break(1u);
      }

      else if (v64 > -9.2234e18)
      {
        if (v64 < 9.2234e18)
        {
          v6 = v64;
          v65 = 12 * v64;
          if ((v64 * 12) >> 64 == v65 >> 63)
          {
            v25 = v25 - v65;
            if (v16)
            {
              sub_10000F974(&unk_1004AF710);
              v66 = swift_allocObject();
              v325 = xmmword_1003D5360;
              *(v66 + 16) = xmmword_1003D5360;
              *(v66 + 56) = &type metadata for Float;
              *(v66 + 64) = &protocol witness table for Float;
              *(v66 + 32) = v25;
              v31 = String.init(format:_:)();
              v27 = v67;
              v68 = swift_allocObject();
              *(v68 + 16) = v325;
              *(v68 + 56) = &type metadata for Int;
              *(v68 + 64) = &protocol witness table for Int;
              *(v68 + 32) = v6;
              v14 = String.init(format:_:)();
              v21 = v69;
              if (qword_1004A02F8 == -1)
              {
LABEL_21:
                v70 = qword_1004D4EC0;
                v71 = objc_allocWithZone(NSNumber);
                *&v72 = v25;
                v73 = [v71 initWithFloat:v72];
                v74 = [v70 stringFromNumber:v73];

                if (!v74)
                {
LABEL_108:
                  __break(1u);
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
LABEL_111:
                  __break(1u);
                  goto LABEL_112;
                }

                v321 = v14;
                v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v319 = v76;
                v320 = v75;

                if (qword_1004A02F0 != -1)
                {
                  swift_once();
                }

                v322 = v21;
                *&v323 = v31;
                *&v325 = v27;
                v77 = qword_1004D4EB8;
                v78 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v6];
                v79 = [v77 stringFromNumber:v78];

                if (!v79)
                {
                  goto LABEL_110;
                }

                v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v82 = v81;

                v83 = objc_opt_self();
                v84 = [v83 mainBundle];
                v329._object = 0x8000000100405270;
                v85._countAndFlagsBits = 0x80E2402520274025;
                v85._object = 0xA90000000000009DLL;
                v86._countAndFlagsBits = 0;
                v86._object = 0xE000000000000000;
                v329._countAndFlagsBits = 0xD00000000000009DLL;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v329);

                v87 = swift_allocObject();
                v318 = xmmword_1003D5730;
                *(v87 + 16) = xmmword_1003D5730;
                *(v87 + 56) = &type metadata for String;
                v88 = sub_1000192D0();
                *(v87 + 32) = v80;
                *(v87 + 40) = v82;
                *(v87 + 96) = &type metadata for String;
                *(v87 + 104) = v88;
                v89 = v319;
                v90 = v320;
                *(v87 + 64) = v88;
                *(v87 + 72) = v90;
                *(v87 + 80) = v89;
                countAndFlagsBits = String.init(format:_:)();
                object = v91;

                v92 = [v83 mainBundle];
                v93._countAndFlagsBits = 0xD00000000000001BLL;
                v330._object = 0xE000000000000000;
                v93._object = 0x8000000100407640;
                v94._countAndFlagsBits = 0;
                v94._object = 0xE000000000000000;
                v330._countAndFlagsBits = 0;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v330);

                v95 = swift_allocObject();
                *(v95 + 16) = v318;
                *(v95 + 56) = &type metadata for Int;
                *(v95 + 64) = &protocol witness table for Int;
                *(v95 + 32) = v6;
                *(v95 + 96) = &type metadata for Float;
                *(v95 + 104) = &protocol witness table for Float;
                *(v95 + 72) = v25;
                v56 = static String.localizedStringWithFormat(_:_:)();
                v58 = v96;

                v97 = String._bridgeToObjectiveC()();

                [v97 floatValue];
                v99 = v98;

                v100 = v99 * 12.0;
LABEL_79:
                v276 = String._bridgeToObjectiveC()();

                [v276 floatValue];
                v278 = v277;

                v125 = v100 + v278;
                v126 = 2;
                goto LABEL_88;
              }

LABEL_101:
              swift_once();
              goto LABEL_21;
            }

            v193 = roundf(v25);
            if (v193 == 12.0)
            {
              v194 = 0.0;
            }

            else
            {
              v194 = v193;
            }

            if (v193 == 12.0)
            {
              ++v6;
            }

            sub_10000F974(&unk_1004AF710);
            v195 = swift_allocObject();
            v325 = xmmword_1003D5360;
            *(v195 + 16) = xmmword_1003D5360;
            *(v195 + 56) = &type metadata for Int;
            *(v195 + 64) = &protocol witness table for Int;
            *(v195 + 32) = v6;
            *&v323 = String.init(format:_:)();
            v197 = v196;
            if (qword_1004A02F0 != -1)
            {
              swift_once();
            }

            v198 = qword_1004D4EB8;
            v199 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v6];
            v200 = [v198 stringFromNumber:v199];

            if (!v200)
            {
              goto LABEL_109;
            }

            v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v203 = v202;

            if (v194 == 0.0)
            {
              v204 = objc_opt_self();
              v205 = [v204 mainBundle];
              v206.value._countAndFlagsBits = 0xD000000000000014;
              v339._object = 0x8000000100405270;
              v207._countAndFlagsBits = 0xB280E240243125;
              v206.value._object = 0x8000000100407540;
              v207._object = 0xA700000000000000;
              v208._countAndFlagsBits = 0;
              v208._object = 0xE000000000000000;
              v339._countAndFlagsBits = 0xD00000000000009DLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v207, v206, v205, v208, v339);

              v209 = swift_allocObject();
              *(v209 + 16) = v325;
              *(v209 + 56) = &type metadata for String;
              *(v209 + 64) = sub_1000192D0();
              *(v209 + 32) = v201;
              *(v209 + 40) = v203;
              v210 = String.init(format:_:)();
              object = v211;
              countAndFlagsBits = v210;

              v212 = [v204 mainBundle];
              v340._object = 0xE000000000000000;
              v213._countAndFlagsBits = 0x74656566204025;
              v213._object = 0xE700000000000000;
              v214._countAndFlagsBits = 0;
              v214._object = 0xE000000000000000;
              v340._countAndFlagsBits = 0;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v213, 0, v212, v214, v340);

              v215 = swift_allocObject();
              *(v215 + 16) = v325;
              *(v215 + 56) = &type metadata for Int;
              *(v215 + 64) = &protocol witness table for Int;
              *(v215 + 32) = v6;
              v56 = static String.localizedStringWithFormat(_:_:)();
              v58 = v216;

              v217 = String._bridgeToObjectiveC()();

              [v217 floatValue];
              v219 = v218;

              v125 = v219 * 12.0;
              v126 = 2;
              goto LABEL_88;
            }

            v250 = swift_allocObject();
            *(v250 + 16) = v325;
            if ((LODWORD(v193) & 0x7FFFFFFFu) < 0x7F800000 || v193 == 12.0)
            {
              if (v194 > -9.2234e18)
              {
                if (v194 < 9.2234e18)
                {
                  *&v325 = v197;
                  *(v250 + 56) = &type metadata for Int;
                  *(v250 + 64) = &protocol witness table for Int;
                  v320 = v194;
                  *(v250 + 32) = v194;
                  v321 = String.init(format:_:)();
                  v322 = v252;
                  v253 = objc_allocWithZone(NSDecimalNumber);
                  *&v254 = v194;
                  v255 = [v253 initWithFloat:v254];
                  v256 = [v198 stringFromNumber:v255];

                  if (!v256)
                  {
LABEL_112:
                    __break(1u);
LABEL_113:
                    __break(1u);
LABEL_114:
                    __break(1u);
                    goto LABEL_115;
                  }

                  v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v319 = v258;

                  v259 = objc_opt_self();
                  v260 = [v259 mainBundle];
                  v261.value._countAndFlagsBits = 0xD000000000000014;
                  v343._object = 0x8000000100405270;
                  v262._countAndFlagsBits = 0x20B280E240243125;
                  v262._object = 0xAFB380E240243225;
                  v261.value._object = 0x8000000100407540;
                  v263._countAndFlagsBits = 0;
                  v263._object = 0xE000000000000000;
                  v343._countAndFlagsBits = 0xD00000000000009DLL;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v262, v261, v260, v263, v343);

                  v264 = swift_allocObject();
                  v318 = xmmword_1003D5730;
                  *(v264 + 16) = xmmword_1003D5730;
                  *(v264 + 56) = &type metadata for String;
                  v265 = sub_1000192D0();
                  *(v264 + 32) = v201;
                  *(v264 + 40) = v203;
                  *(v264 + 96) = &type metadata for String;
                  *(v264 + 104) = v265;
                  *(v264 + 64) = v265;
                  *(v264 + 72) = v257;
                  *(v264 + 80) = v319;
                  countAndFlagsBits = String.init(format:_:)();
                  object = v266;

                  v267 = [v259 mainBundle];
                  v268._countAndFlagsBits = 0xD000000000000011;
                  v344._object = 0xE000000000000000;
                  v268._object = 0x8000000100407560;
                  v269._countAndFlagsBits = 0;
                  v269._object = 0xE000000000000000;
                  v344._countAndFlagsBits = 0;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v268, 0, v267, v269, v344);

                  v270 = swift_allocObject();
                  *(v270 + 16) = v318;
                  *(v270 + 56) = &type metadata for Int;
                  *(v270 + 32) = v6;
                  *(v270 + 96) = &type metadata for Int;
                  *(v270 + 104) = &protocol witness table for Int;
                  v271 = v320;
                  *(v270 + 64) = &protocol witness table for Int;
                  *(v270 + 72) = v271;
                  v56 = static String.localizedStringWithFormat(_:_:)();
                  v58 = v272;

                  v273 = String._bridgeToObjectiveC()();

                  [v273 floatValue];
                  v275 = v274;

                  v100 = v275 * 12.0;
                  goto LABEL_79;
                }

                goto LABEL_103;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

LABEL_92:
          __break(1u);
LABEL_93:
          swift_once();
LABEL_10:
          v35 = qword_1004D4EC0;
          v36 = objc_allocWithZone(NSNumber);
          *&v37 = v19;
          v38 = [v36 initWithFloat:v37];
          v39 = [v35 stringFromNumber:v38];

          if (v39)
          {
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v43 = objc_opt_self();
            v44 = [v43 mainBundle];
            v327._object = 0x8000000100405270;
            v45._countAndFlagsBits = 0x6D63204025;
            v45._object = 0xE500000000000000;
            v46._countAndFlagsBits = 0;
            v46._object = 0xE000000000000000;
            v327._countAndFlagsBits = 0xD00000000000009DLL;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v327);

            v47 = swift_allocObject();
            *(v47 + 16) = v325;
            *(v47 + 56) = &type metadata for String;
            *(v47 + 64) = sub_1000192D0();
            *(v47 + 32) = v40;
            *(v47 + 40) = v42;
            v48 = String.init(format:_:)();
            object = v49;
            countAndFlagsBits = v48;

            v52 = [v43 mainBundle];
            v53._countAndFlagsBits = 0xD000000000000018;
            v328._object = 0xE000000000000000;
            v53._object = 0x8000000100407620;
            v54._countAndFlagsBits = 0;
            v54._object = 0xE000000000000000;
            v328._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v328);

            v55 = swift_allocObject();
            *(v55 + 16) = v325;
            *(v55 + 56) = &type metadata for Float;
            *(v55 + 64) = &protocol witness table for Float;
            *(v55 + 32) = v19;
            v56 = static String.localizedStringWithFormat(_:_:)();
            v58 = v57;

LABEL_43:
            v167 = String._bridgeToObjectiveC()();

            [v167 floatValue];
            v125 = v168;

            v126 = 1;
            goto LABEL_88;
          }

          goto LABEL_106;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      __break(1u);
      goto LABEL_91;
    }

    if (v16)
    {
      sub_10000F974(&unk_1004AF710);
      v127 = swift_allocObject();
      v325 = xmmword_1003D5360;
      *(v127 + 16) = xmmword_1003D5360;
      *(v127 + 56) = &type metadata for Float;
      *(v127 + 64) = &protocol witness table for Float;
      *(v127 + 32) = v25;
      *&v323 = String.init(format:_:)();
      if (qword_1004A02F8 == -1)
      {
LABEL_33:
        v128 = qword_1004D4EC0;
        v129 = objc_allocWithZone(NSNumber);
        *&v130 = v25;
        v131 = [v129 initWithFloat:v130];
        v132 = [v128 stringFromNumber:v131];

        if (!v132)
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v135 = v134;

        v136 = objc_opt_self();
        v137 = [v136 mainBundle];
        v333._object = 0x8000000100405270;
        v138._countAndFlagsBits = 0x9D80E24025;
        v138._object = 0xA500000000000000;
        v139._countAndFlagsBits = 0;
        v139._object = 0xE000000000000000;
        v333._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v138, 0, v137, v139, v333);

        v140 = swift_allocObject();
        *(v140 + 16) = v325;
        *(v140 + 56) = &type metadata for String;
        *(v140 + 64) = sub_1000192D0();
        *(v140 + 32) = v133;
        *(v140 + 40) = v135;
        v141 = String.init(format:_:)();
        object = v142;
        countAndFlagsBits = v141;

        v143 = [v136 mainBundle];
        v144._countAndFlagsBits = 0xD000000000000013;
        v334._object = 0xE000000000000000;
        v144._object = 0x8000000100407660;
        v145._countAndFlagsBits = 0;
        v145._object = 0xE000000000000000;
        v334._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v144, 0, v143, v145, v334);

        v146 = swift_allocObject();
        *(v146 + 16) = v325;
        *(v146 + 56) = &type metadata for Float;
        *(v146 + 64) = &protocol witness table for Float;
        *(v146 + 32) = v25;
        v56 = static String.localizedStringWithFormat(_:_:)();
        v58 = v147;
        goto LABEL_67;
      }

LABEL_95:
      swift_once();
      goto LABEL_33;
    }

    v169 = roundf(v25 + v25) * 0.5;
    if ((LODWORD(v169) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v169 <= -9.2234e18)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v169 >= 9.2234e18)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v6 = v169;
    if ((v169 - v169) <= 0.00000011921)
    {
      if (!v6)
      {
        v296 = objc_opt_self();
        v297 = [v296 mainBundle];
        v316 = 0x8000000100405270;
        if (v322)
        {
          v298._countAndFlagsBits = 2642469424;
          v298._object = 0xA400000000000000;
          v299._countAndFlagsBits = 0;
          v299._object = 0xE000000000000000;
          v300 = 0xD00000000000009DLL;
          v301 = NSLocalizedString(_:tableName:bundle:value:comment:)(v298, 0, v297, v299, *(&v316 - 1));

          v326 = v301;
          countAndFlagsBits = String.init<A>(_:)();
          object = v302;
          v303 = [v296 mainBundle];
          v317 = 0xE000000000000000;
          v304 = 0x636E69206F72655ALL;
          v305 = 0xEB00000000736568;
        }

        else
        {
          v306._countAndFlagsBits = 0x9D80E2BDC2203CLL;
          v306._object = 0xA700000000000000;
          v307._countAndFlagsBits = 0;
          v307._object = 0xE000000000000000;
          v308 = 0xD00000000000009DLL;
          v309 = NSLocalizedString(_:tableName:bundle:value:comment:)(v306, 0, v297, v307, *(&v316 - 1));

          v326 = v309;
          countAndFlagsBits = String.init<A>(_:)();
          object = v310;
          v303 = [v296 mainBundle];
          v304 = 0xD000000000000016;
          v317 = 0xE000000000000000;
          v305 = 0x8000000100407580;
        }

        v311._countAndFlagsBits = 0;
        v311._object = 0xE000000000000000;
        v312 = 0;
        v313 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v304, 0, v303, v311, *(&v317 - 1));
        v56 = v313._countAndFlagsBits;
        v58 = v313._object;

        v126 = 2;
        goto LABEL_87;
      }

      sub_10000F974(&unk_1004AF710);
      v220 = swift_allocObject();
      v325 = xmmword_1003D5360;
      *(v220 + 16) = xmmword_1003D5360;
      *(v220 + 56) = &type metadata for Int;
      *(v220 + 64) = &protocol witness table for Int;
      *(v220 + 32) = v6;
      *&v323 = String.init(format:_:)();
      if (qword_1004A02F0 != -1)
      {
        swift_once();
      }

      v221 = qword_1004D4EB8;
      v222 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v6];
      v223 = [v221 stringFromNumber:v222];

      if (!v223)
      {
        goto LABEL_114;
      }

      v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v226 = v225;

      v227 = objc_opt_self();
      v228 = [v227 mainBundle];
      v341._object = 0x8000000100405270;
      v229._countAndFlagsBits = 0x9D80E24025;
      v229._object = 0xA500000000000000;
      v230._countAndFlagsBits = 0;
      v230._object = 0xE000000000000000;
      v341._countAndFlagsBits = 0xD00000000000009DLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v229, 0, v228, v230, v341);

      v231 = swift_allocObject();
      *(v231 + 16) = v325;
      *(v231 + 56) = &type metadata for String;
      *(v231 + 64) = sub_1000192D0();
      *(v231 + 32) = v224;
      *(v231 + 40) = v226;
      v232 = String.init(format:_:)();
      object = v233;

      v234 = [v227 mainBundle];
      v342._object = 0xE000000000000000;
      v235._countAndFlagsBits = 0x6568636E69204025;
      v235._object = 0xE900000000000073;
      v236._countAndFlagsBits = 0;
      v236._object = 0xE000000000000000;
      v342._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v235, 0, v234, v236, v342);

      v237 = swift_allocObject();
      *(v237 + 16) = v325;
      *(v237 + 56) = &type metadata for Int;
      *(v237 + 64) = &protocol witness table for Int;
      *(v237 + 32) = v6;
      v56 = static String.localizedStringWithFormat(_:_:)();
      v58 = v238;
      countAndFlagsBits = v232;
LABEL_67:

      v239 = String._bridgeToObjectiveC()();

      [v239 floatValue];
      v125 = v240;

      v126 = 2;
      goto LABEL_88;
    }

    if (!v6)
    {
      v286 = objc_opt_self();
      v287 = [v286 mainBundle];
      v346._object = 0x8000000100405270;
      v288._countAndFlagsBits = 0x9D80E2BDC24025;
      v288._object = 0xA700000000000000;
      v289._countAndFlagsBits = 0;
      v289._object = 0xE000000000000000;
      v346._countAndFlagsBits = 0xD00000000000009DLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v288, 0, v287, v289, v346);

      sub_10000F974(&unk_1004AF710);
      v290 = swift_allocObject();
      *(v290 + 16) = xmmword_1003D5360;
      *(v290 + 56) = &type metadata for String;
      *(v290 + 64) = sub_1000192D0();
      *(v290 + 32) = 0;
      *(v290 + 40) = 0xE000000000000000;
      countAndFlagsBits = String.init(format:_:)();
      object = v291;

      v292 = [v286 mainBundle];
      v347._object = 0xE000000000000000;
      v293._countAndFlagsBits = 0x206E6120666C6148;
      v293._object = 0xEC00000068636E69;
      v294._countAndFlagsBits = 0;
      v294._object = 0xE000000000000000;
      v347._countAndFlagsBits = 0;
      v295 = NSLocalizedString(_:tableName:bundle:value:comment:)(v293, 0, v292, v294, v347);
      v56 = v295._countAndFlagsBits;
      v58 = v295._object;

      v126 = 2;
      v125 = 0.5;
      goto LABEL_88;
    }

    sub_10000F974(&unk_1004AF710);
    v170 = swift_allocObject();
    v325 = xmmword_1003D5360;
    *(v170 + 16) = xmmword_1003D5360;
    *(v170 + 56) = &type metadata for Int;
    *(v170 + 64) = &protocol witness table for Int;
    *(v170 + 32) = v6;
    v322 = String.init(format:_:)();
    *&v323 = v171;
    if (qword_1004A02F0 == -1)
    {
LABEL_50:
      v172 = qword_1004D4EB8;
      v173 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v6];
      v174 = [v172 stringFromNumber:v173];

      if (v174)
      {
        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v176;

        v178 = objc_opt_self();
        v179 = [v178 mainBundle];
        v337._object = 0x8000000100405270;
        v180._countAndFlagsBits = 0x9D80E2BDC24025;
        v180._object = 0xA700000000000000;
        v181._countAndFlagsBits = 0;
        v181._object = 0xE000000000000000;
        v337._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v180, 0, v179, v181, v337);

        v182 = swift_allocObject();
        *(v182 + 16) = v325;
        *(v182 + 56) = &type metadata for String;
        *(v182 + 64) = sub_1000192D0();
        *(v182 + 32) = v175;
        *(v182 + 40) = v177;
        v183 = String.init(format:_:)();
        object = v184;

        v185 = [v178 mainBundle];
        v186._countAndFlagsBits = 0xD000000000000014;
        v338._object = 0xE000000000000000;
        v186._object = 0x80000001004075A0;
        v187._countAndFlagsBits = 0;
        v187._object = 0xE000000000000000;
        v338._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v186, 0, v185, v187, v338);

        v188 = swift_allocObject();
        *(v188 + 16) = v325;
        *(v188 + 56) = &type metadata for Int;
        *(v188 + 64) = &protocol witness table for Int;
        *(v188 + 32) = v6;
        v56 = static String.localizedStringWithFormat(_:_:)();
        v58 = v189;
        countAndFlagsBits = v183;

        v190 = String._bridgeToObjectiveC()();

        [v190 floatValue];
        v192 = v191;

        v125 = v192 + 0.5;
        v126 = 2;
        goto LABEL_88;
      }

      goto LABEL_113;
    }

LABEL_104:
    swift_once();
    goto LABEL_50;
  }

LABEL_115:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}