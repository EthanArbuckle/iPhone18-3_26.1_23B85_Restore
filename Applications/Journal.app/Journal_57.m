uint64_t sub_100621CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a3;
  v8[22] = a4;
  v8[19] = a1;
  v8[20] = a2;
  v10 = type metadata accessor for Date();
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v8[30] = v11;
  v8[31] = v13;

  return _swift_task_switch(sub_100621DD4, v11, v13);
}

uint64_t sub_100621DD4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v0[32] = v4;
  v5 = *(v2 + 8);
  v0[33] = v5;
  v0[34] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (qword_100ACFD50 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_100621EE8;
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[20];

  return sub_1003ED764(v9, v7, v8);
}

uint64_t sub_100621EE8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 288) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(sub_100622010, v4, v3);
}

void sub_100622010()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    _StringGuts.grow(_:)(50);

    v2 = 0xD000000000000011;
    if (v1 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = *(v0 + 264);
      v5 = *(v0 + 256);
      v6 = *(v0 + 232);
      v7 = *(v0 + 216);
      v69 = *(v0 + 208);
      v8 = *(v0 + 200);
      v75 = *(v0 + 192);
      v73 = *(v0 + 184);
      v71 = *(v0 + 176);
      *(v0 + 104) = i;
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = v2 + 4;
      v10._object = 0x80000001008FEB50;
      String.append(_:)(v10);
      sub_1000F24EC(&unk_100AD5B10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100940080;
      static Date.now.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v13 = v12;
      v4(v6, v7);
      *(v11 + 56) = &type metadata for Double;
      *(v11 + 64) = &protocol witness table for Double;
      *(v11 + 32) = v13 - v5;
      v14._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v14);

      v15._object = 0x80000001008F4440;
      v15._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v15);
      v2 = v69;
      (v8)(0x2064656863746546, 0xE800000000000000);

      static Date.now.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v17 = v16;
      v4(v6, v7);
      sub_100617AC4(v1, v71, v73, v75, v8, v69, (v0 + 16));
      v72 = *(v0 + 16);
      v74 = *(v0 + 32);
      v76 = *(v0 + 48);
      v70 = *(v0 + 64);
      v68 = *(v0 + 80);

      *(v0 + 96) = v76;
      v18 = v76 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v18)
      {
        break;
      }

      v1 = 0;
      while (1)
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v1 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v19 = *(v76 + 8 * v1 + 32);
        }

        v2 = v19;
        v20 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        type metadata accessor for MultiPinMapAsset();
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v28 = v21;
          sub_100004F84(v0 + 96, &qword_100ADC660);
          v22 = v28;
          goto LABEL_19;
        }

        ++v1;
        if (v20 == v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_16:
    sub_100004F84(v0 + 96, &qword_100ADC660);
    v22 = 0;
LABEL_19:
    v29 = v74 != 1;
    if (v76 >> 62)
    {
      v31 = v22;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v31;
    }

    else
    {
      v30 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v22 != 0;
    v33 = v30 - v32;
    if (__OFSUB__(v30, v32))
    {
      __break(1u);
    }

    else
    {
      if (!v22 || (v34 = v22, v35 = v22, v36 = sub_100076E78(), v38 = v37, v35, v22 = v34, (v38 & 1) != 0))
      {
        v36 = 0;
      }

      v39 = v29 + v33;
      if (!__OFADD__(v29, v33))
      {
        v40 = v39 + v36;
        if (!__OFADD__(v39, v36))
        {
          v65 = *(v0 + 264);
          v41 = *(v0 + 232);
          v64 = *(v0 + 216);
          v67 = *(v0 + 200);
          v66 = v22;
          _StringGuts.grow(_:)(35);
          *(v0 + 112) = v29;
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v44 = v43;

          v45._countAndFlagsBits = 0x7463656C66657220;
          v45._object = 0xED0000202C6E6F69;
          String.append(_:)(v45);
          *(v0 + 120) = v33;
          v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v46);

          v47._countAndFlagsBits = 0x202C746573736120;
          v47._object = 0xE800000000000000;
          String.append(_:)(v47);
          *(v0 + 128) = v36;
          v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v48);

          v49._countAndFlagsBits = 0x6E69702070616D20;
          v49._object = 0xE800000000000000;
          String.append(_:)(v49);
          _StringGuts.grow(_:)(104);
          v50._countAndFlagsBits = 0xD00000000000001DLL;
          v50._object = 0x80000001008FEB70;
          String.append(_:)(v50);
          *(v0 + 136) = v40;
          v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v51);

          v52._countAndFlagsBits = 0xD000000000000013;
          v52._object = 0x80000001008FEB90;
          String.append(_:)(v52);
          v53._countAndFlagsBits = v42;
          v53._object = v44;
          String.append(_:)(v53);

          v54._countAndFlagsBits = 0x20646E61205DLL;
          v54._object = 0xE600000000000000;
          String.append(_:)(v54);
          *(v0 + 144) = *(*(v0 + 56) + 16);
          v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v55);

          v56._countAndFlagsBits = 0xD000000000000019;
          v56._object = 0x80000001008FEBB0;
          String.append(_:)(v56);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_100940080;
          static Date.now.getter();
          Date.timeIntervalSinceReferenceDate.getter();
          v59 = v58;
          v65(v41, v64);
          *(v57 + 56) = &type metadata for Double;
          *(v57 + 64) = &protocol witness table for Double;
          *(v57 + 32) = v59 - v17;
          v60._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v60);

          v61._object = 0x80000001008F4440;
          v61._countAndFlagsBits = 0xD000000000000011;
          String.append(_:)(v61);
          v67(0, 0xE000000000000000);

          v23 = v72;
          v24 = v74;
          v25 = v76;
          v26 = v70;
          v27 = v68;
          goto LABEL_29;
        }

LABEL_38:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  (*(v0 + 184))(0xD000000000000021, 0x80000001008FEB20);
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
LABEL_29:
  v62 = *(v0 + 152);
  *v62 = v23;
  v62[1] = v24;
  v62[2] = v25;
  v62[3] = v26;
  v62[4] = v27;

  v63 = *(v0 + 8);

  v63();
}

uint64_t sub_100622758()
{
  type metadata accessor for Date();

  return static Date.== infix(_:_:)();
}

uint64_t sub_1006227C8()
{
  sub_1000F24EC(&qword_100AE0D70);

  return sub_100606440();
}

uint64_t sub_100622844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1006124A4(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

void *sub_100622878@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1006228B0(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

void *sub_1006228B0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void *))
{
  sub_1000F24EC(&qword_100AE4BE0);
  sub_1000F24EC(&qword_100AE4BC0);
  sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0);
  dispatch thunk of Collection.startIndex.getter();
  v5 = dispatch thunk of Collection.distance(from:to:)();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (__OFADD__(v5, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (result + v5 < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = 0;
  if (a1)
  {
    v8 = a1 + *(*(type metadata accessor for UUID() - 8) + 72) * v5;
  }

  result = a3(&v10, v8, v7);
  if (!v9)
  {
    return v10;
  }

  return result;
}

unint64_t sub_100622A40()
{
  result = type metadata accessor for VisitAssetMetadata();
  if (v1 <= 0x3F)
  {
    result = sub_100087C9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100622AEC()
{
  result = sub_1000065A8(319, &unk_100AEB788);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_100622BA8()
{
  type metadata accessor for AssetType();
  if (v0 <= 0x3F)
  {
    sub_100622C1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100622C1C()
{
  if (!qword_100AEB840)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100AEB840);
    }
  }
}

uint64_t sub_100622C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v6 = type metadata accessor for URL.DirectoryHint();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v4[13] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
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

  return _swift_task_switch(sub_100622EC0, v9, v11);
}

uint64_t sub_100622EC0()
{
  if (*(v0[5] + OBJC_IVAR____TtC7Journal13ExportOptions_format) > 1u || *(v0[5] + OBJC_IVAR____TtC7Journal13ExportOptions_format))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      v64 = v0[5];
      v65 = sub_1006248EC(v64);
      v67 = v66;
      _StringGuts.grow(_:)(76);
      v68._countAndFlagsBits = 0xD00000000000003FLL;
      v68._object = 0x80000001008FEF40;
      String.append(_:)(v68);
      v69._countAndFlagsBits = sub_100623A90(v64);
      String.append(_:)(v69);

      v70._countAndFlagsBits = 0x642F3C202020200ALL;
      v70._object = 0xEB000000003E7669;
      String.append(_:)(v70);
      _StringGuts.grow(_:)(97);
      v71._countAndFlagsBits = 0x7669643C20202020;
      v71._object = 0xED0000223D646920;
      String.append(_:)(v71);
      v72._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v72);

      v73._object = 0x80000001008F7BE0;
      v73._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v73);
      v74._countAndFlagsBits = AssetType.rawValue.getter();
      String.append(_:)(v74);

      v75._countAndFlagsBits = 32;
      v75._object = 0xE100000000000000;
      String.append(_:)(v75);
      v76._countAndFlagsBits = 8226;
      v76._object = 0xE200000000000000;
      String.append(_:)(v76);
      v77._countAndFlagsBits = 0x2020202020200A3ELL;
      v77._object = 0xEA00000000002020;
      String.append(_:)(v77);
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      String.append(_:)(v78);

      v79._countAndFlagsBits = 0x202020202020200ALL;
      v79._object = 0xE900000000000020;
      String.append(_:)(v79);
      v80._countAndFlagsBits = v65;
      v80._object = v67;
      String.append(_:)(v80);

      v81._countAndFlagsBits = 0x202020202020200ALL;
      v81._object = 0xE900000000000020;
      String.append(_:)(v81);
      v82._countAndFlagsBits = 0x642F3C202020200ALL;
      v82._object = 0xEB000000003E7669;
      String.append(_:)(v82);
      goto LABEL_16;
    }
  }

  else
  {
  }

  v2 = *(v0[6] + OBJC_IVAR____TtC7Journal5Asset_attachments);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_24:
    (*(v0[15] + 56))(v0[13], 1, 1, v0[14]);
LABEL_25:
    sub_100004F84(v0[13], &unk_100AD6DD0);
    goto LABEL_26;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_24;
  }

LABEL_7:
  if ((v2 & 0xC000000000000001) != 0)
  {

    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }
  }

  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  sub_1000A7D30(v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    goto LABEL_25;
  }

  (*(v0[15] + 32))(v0[19], v0[13], v0[14]);
  v6 = URL.pathExtension.getter();
  v8 = sub_100691188(v6, v7);

  if ((v8 & 1) == 0)
  {
    (*(v0[15] + 8))(v0[19], v0[14]);
LABEL_26:
    sub_1004D12DC();
    swift_allocError();
    *v86 = 0;
    swift_willThrow();
    goto LABEL_27;
  }

  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  URL.path.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 fileExistsAtPath:v11];

  if (!v12)
  {
    (*(v0[15] + 8))(v0[19], v0[14]);
    goto LABEL_26;
  }

  v13 = v0[15];
  v14 = v0[16];
  v91 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[9];
  v18 = v0[10];
  v19 = v0[8];
  v88 = v0[7];
  v89 = v0[17];
  sub_10069763C(v14);
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v90 = v9;
  v22 = v21;
  (*(v15 + 8))(v16, v18);
  v0[2] = v20;
  v0[3] = v22;
  (*(v19 + 104))(v17, enum case for URL.DirectoryHint.inferFromPath(_:), v88);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  (*(v19 + 8))(v17, v88);

  v23 = *(v13 + 8);
  v23(v14, v91);
  URL.pathExtension.getter();
  URL.appendingPathExtension(_:)();

  v23(v89, v91);
  v24 = URL.lastPathComponent.getter();
  v26 = v25;
  v27 = [v90 defaultManager];
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v0[4] = 0;
  LODWORD(v16) = [v27 copyItemAtURL:v30 toURL:v32 error:v0 + 4];

  v34 = v0[4];
  v36 = v0[18];
  v35 = v0[19];
  v37 = v0[14];
  if (v16)
  {
    v38 = v0[5];
    v39 = v34;
    _StringGuts.grow(_:)(156);
    v40._countAndFlagsBits = 0xD00000000000003FLL;
    v40._object = 0x80000001008FEF40;
    String.append(_:)(v40);
    v41._countAndFlagsBits = sub_100623A90(v38);
    String.append(_:)(v41);

    v42._countAndFlagsBits = 0xD000000000000010;
    v42._object = 0x80000001008FEF80;
    String.append(_:)(v42);
    v43._countAndFlagsBits = sub_1006248EC(v38);
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0xD00000000000002CLL;
    v44._object = 0x80000001008FEFA0;
    String.append(_:)(v44);
    String.append(_:)(*(v38 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
    v45._countAndFlagsBits = 47;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v46._countAndFlagsBits = v24;
    v46._object = v26;
    String.append(_:)(v46);

    v47._countAndFlagsBits = 0x20202020200A3E22;
    v47._object = 0xE900000000000020;
    String.append(_:)(v47);
    v48 = [objc_opt_self() mainBundle];
    v93._object = 0x80000001008FF010;
    v49._countAndFlagsBits = 0xD000000000000038;
    v49._object = 0x80000001008FEFD0;
    v93._countAndFlagsBits = 0xD00000000000004ELL;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v93);

    String.append(_:)(v51);

    v52._countAndFlagsBits = 0x612F3C202020200ALL;
    v52._object = 0xED00003E6F696475;
    String.append(_:)(v52);
    _StringGuts.grow(_:)(97);
    v53._countAndFlagsBits = 0x7669643C20202020;
    v53._object = 0xED0000223D646920;
    String.append(_:)(v53);
    v54._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v54);

    v55._object = 0x80000001008F7BE0;
    v55._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v55);
    v56._countAndFlagsBits = AssetType.rawValue.getter();
    String.append(_:)(v56);

    v57._countAndFlagsBits = 32;
    v57._object = 0xE100000000000000;
    String.append(_:)(v57);
    v58._countAndFlagsBits = 8226;
    v58._object = 0xE200000000000000;
    String.append(_:)(v58);
    v59._countAndFlagsBits = 0x2020202020200A3ELL;
    v59._object = 0xEA00000000002020;
    String.append(_:)(v59);
    v60._countAndFlagsBits = 0x202020202020200ALL;
    v60._object = 0xE900000000000020;
    String.append(_:)(v60);
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    String.append(_:)(v61);

    v62._countAndFlagsBits = 0x202020202020200ALL;
    v62._object = 0xE900000000000020;
    String.append(_:)(v62);
    v63._countAndFlagsBits = 0x642F3C202020200ALL;
    v63._object = 0xEB000000003E7669;
    String.append(_:)(v63);
    v23(v36, v37);
    v23(v35, v37);
LABEL_16:

    v83 = v0[1];

    return v83(0, 0xE000000000000000);
  }

  v85 = v34;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v23(v36, v37);
  v23(v35, v37);
LABEL_27:

  v87 = v0[1];

  return v87();
}

uint64_t sub_100623A90(uint64_t a1)
{
  v2 = sub_100624CF8(a1);
  v3 = sub_100623B98();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7 = sub_1000A98A0();
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v10 = v8;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = sub_100624FDC(a1);
    v14 = v13;
  }

  else
  {
LABEL_6:
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  return v2;
}

unint64_t sub_100623B98()
{
  v1 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for AudioAssetMetadata();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal10AudioAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
    goto LABEL_9;
  }

  sub_1000A8960(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_9:
    sub_100004F84(v3, &qword_100AD8F98);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  *&v9 = COERCE_DOUBLE(AudioAssetMetadata.duration.getter());
  if ((v10 & 1) == 0)
  {
    v11 = *&v9;
    if (qword_100AD02D8 != -1)
    {
      v22 = *&v9;
      swift_once();
      v11 = v22;
    }

    v12 = [qword_100AF0048 stringFromTimeInterval:v11 + 0.5];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v23 = 0;
      v24 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v23 = 0xD00000000000001FLL;
      v24 = 0x80000001008FF0C0;
      v17._countAndFlagsBits = v14;
      v17._object = v16;
      String.append(_:)(v17);

      v18._countAndFlagsBits = 0x3E7669642F3CLL;
      v18._object = 0xE600000000000000;
      String.append(_:)(v18);
      v19 = v23;
      (*(v5 + 8))(v8, v4);
      return v19;
    }
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_100623E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_100622C88(a1, a2, a3);
}

double sub_100623F1C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for AudioAssetMetadata();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v22 - v12;
  if (*(v1 + OBJC_IVAR____TtC7Journal10AudioAsset_metadata))
  {

    sub_1000A8960(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v13, v5, v6);
      (*(v7 + 16))(v9, v13, v6);
      v14 = sub_1000A98A0();
      v16 = v15;
      v17 = _s6ResultVMa_4();
      *(a1 + 24) = v17;
      *(a1 + 32) = sub_10062544C(&qword_100AEB880, _s6ResultVMa_4);
      *(a1 + 40) = sub_10062544C(&qword_100AEB888, _s6ResultVMa_4);
      v18 = sub_10001A770(a1);
      AudioAssetMetadata.recordingDate.getter();
      v19 = *(v7 + 8);
      v19(v9, v6);
      v20 = (v18 + *(v17 + 20));
      *v20 = v14;
      v20[1] = v16;
      v19(v13, v6);
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v11);
  }

  sub_100004F84(v5, &qword_100AD8F98);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_1006241FC(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AEB930);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_100625338();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_10062544C(&qword_100AE49A8, &type metadata accessor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    _s6ResultVMa_4();
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006243B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1000F24EC(&qword_100AEB920);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = _s6ResultVMa_4();
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_100625338();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v13 = v21;
  type metadata accessor for Date();
  v24 = 0;
  sub_10062544C(&qword_100AE4998, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001679C0(v6, v12);
  v23 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  (*(v13 + 8))(v9, v22);
  v17 = &v12[*(v10 + 20)];
  *v17 = v14;
  v17[1] = v16;
  sub_10062538C(v12, v20);
  sub_10000BA7C(a1);
  return sub_1006253F0(v12);
}

uint64_t sub_1006246B4(uint64_t a1)
{
  result = sub_10062544C(&qword_100AEB878, type metadata accessor for AudioAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10062470C()
{
  if (*v0)
  {
    return 0x697263736E617274;
  }

  else
  {
    return 0x6E6964726F636572;
  }
}

uint64_t sub_100624758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6964726F636572 && a2 == 0xED00006574614467;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100624844(uint64_t a1)
{
  v2 = sub_100625338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100624880(uint64_t a1)
{
  v2 = sub_100625338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006248EC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0930 != -1)
  {
    swift_once();
  }

  v10 = qword_100B30E08;
  if (!qword_100B30E08)
  {
    return 0;
  }

  v30 = a1;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithPointSize:250.0];
  v13 = [v10 imageWithConfiguration:v12];

  sub_1000F24EC(&unk_100AD4780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100941D50;
  sub_10018D564();
  if (qword_100AD0BE0 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v6, qword_100B312B0);
  (*(v7 + 16))(v9, v15, v6);
  v16 = UIColor.init(resource:)();
  v17 = [v16 colorWithAlphaComponent:0.5];

  *(v14 + 32) = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v11 configurationWithPaletteColors:isa];

  v20 = [v13 imageByApplyingSymbolConfiguration:v19];
  if (!v20)
  {
    return 0;
  }

  v21 = v30;
  v22 = sub_1006966EC(v5, v20, 0x7661576F69647561, 0xEE00636965682E65);
  v24 = v23;
  (*(v3 + 8))(v5, v2);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  strcpy(v31, "<img src=../");
  HIWORD(v31[1]) = -4864;
  String.append(_:)(*(v21 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
  v25._countAndFlagsBits = 47;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = v22;
  v26._object = v24;
  String.append(_:)(v26);

  v27._object = 0x80000001008FF120;
  v27._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v27);

  return v31[0];
}

uint64_t sub_100624CF8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0990 != -1)
  {
    swift_once();
  }

  v6 = qword_100B30E68;
  if (!qword_100B30E68)
  {
    return 0;
  }

  sub_1000F24EC(&unk_100AD4780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941D60;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 whiteColor];
  *(v7 + 40) = [v8 systemIndigoColor];
  sub_10018D564();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [objc_opt_self() configurationWithPaletteColors:isa];

  v11 = [v6 imageWithConfiguration:v10];
  if (!v11)
  {
    return 0;
  }

  v12 = sub_1006966EC(v5, v11, 0xD000000000000014, 0x80000001008FF0E0);
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  strcpy(v19, "<img src=../");
  HIWORD(v19[1]) = -4864;
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
  v15._countAndFlagsBits = 47;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD00000000000001CLL;
  v17._object = 0x80000001008FF100;
  String.append(_:)(v17);

  return v19[0];
}

uint64_t sub_100624FDC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = [v7 imageWithTintColor:v8 renderingMode:2];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1006966EC(v5, v9, 0xD000000000000010, 0x80000001008FF060);
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v13._object = 0x80000001008FF080;
  v13._countAndFlagsBits = 0x1000000000000011;
  String.append(_:)(v13);
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
  v14._countAndFlagsBits = 47;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v10;
  v15._object = v12;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x80000001008FF0A0;
  String.append(_:)(v16);

  return v18[0];
}

uint64_t _s6ResultVMa_4()
{
  result = qword_100AEB8E8;
  if (!qword_100AEB8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006252B4()
{
  sub_100008F84();
  if (v0 <= 0x3F)
  {
    sub_10034652C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100625338()
{
  result = qword_100AEB928;
  if (!qword_100AEB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB928);
  }

  return result;
}

uint64_t sub_10062538C(uint64_t a1, uint64_t a2)
{
  v4 = _s6ResultVMa_4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006253F0(uint64_t a1)
{
  v2 = _s6ResultVMa_4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10062544C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006254A8()
{
  result = qword_100AEB938;
  if (!qword_100AEB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB938);
  }

  return result;
}

unint64_t sub_100625500()
{
  result = qword_100AEB940;
  if (!qword_100AEB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB940);
  }

  return result;
}

unint64_t sub_100625558()
{
  result = qword_100AEB948;
  if (!qword_100AEB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB948);
  }

  return result;
}

uint64_t sub_1006255AC(void *a1)
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
  aBlock[4] = sub_1006273F4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A76300;
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

void sub_100625888(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.DateStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v162 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v161);
  v160 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v11 - 8);
  v163 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v167 = &v153 - v14;
  v15 = type metadata accessor for Date();
  v169 = *(v15 - 8);
  v170 = v15;
  __chkstk_darwin(v15);
  v17 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v153 - v19;
  v21 = sub_1000F24EC(&qword_100AD5B28);
  __chkstk_darwin(v21 - 8);
  v23 = &v153 - v22;
  v24 = type metadata accessor for WorkoutRouteAssetMetadata();
  v171 = *(v24 - 1);
  v172 = v24;
  __chkstk_darwin(v24);
  v168 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = Strong;
  v157 = v7;
  v158 = v4;
  v159 = v3;
  v176 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeView;
  v28 = *(Strong + OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeView);
  v29 = v28[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v28[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v30 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  v31 = v28[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] == 1;
  v156 = v6;
  v155 = v8;
  if (!v31)
  {
    v32 = v28;
LABEL_7:
    sub_100213060();
    v28[v30] = 1;

    goto LABEL_8;
  }

  if (v29 <= 6)
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v34 = v28;

    if (v33)
    {

      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:
  v35 = v176;
  v36 = *(v27 + v176);
  v37 = *&v36[OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset];
  *&v36[OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset] = a2;
  v38 = v36;
  a2;

  sub_10020FF5C();
  v39 = *(v27 + v35);
  sub_1000746FC();

  v175 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_backgroundView;
  v40 = *(v27 + OBJC_IVAR____TtC7Journal19FullScreenRouteView_backgroundView);
  sub_1000746FC();

  v173 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_dropShadowView;
  v41 = *(v27 + OBJC_IVAR____TtC7Journal19FullScreenRouteView_dropShadowView);
  sub_1000746FC();

  v42 = [objc_allocWithZone(UIStackView) init];
  v166 = v42;
  [v42 setUserInteractionEnabled:1];
  [v42 setAxis:1];
  [v42 setAlignment:3];
  [v42 setSpacing:16.0];
  v43 = [objc_allocWithZone(UIStackView) init];
  v44 = &_s7SwiftUI9AnimationV9easeInOutACvgZ_ptr_0;
  v164 = [objc_allocWithZone(UILabel) init];
  sub_1006AACD4(v23);
  v46 = v171;
  v45 = v172;
  v47 = (*(v171 + 48))(v23, 1, v172);
  v174 = v43;
  v165 = v27;
  if (v47 == 1)
  {
    sub_100004F84(v23, &qword_100AD5B28);
  }

  else
  {
    v154 = v20;
    v48 = v168;
    (*(v46 + 32))(v168, v23, v45);
    v49 = v167;
    WorkoutRouteAssetMetadata.startTime.getter();
    v50 = v169;
    v51 = v170;
    v52 = *(v169 + 48);
    if (v52(v49, 1, v170) == 1)
    {
      (*(v46 + 8))(v48, v45);
      v53 = v49;
    }

    else
    {
      v153 = v17;
      v54 = v154;
      v55 = v49;
      v56 = *(v50 + 32);
      v56(v154, v55, v51);
      v57 = v163;
      WorkoutRouteAssetMetadata.endTime.getter();
      if (v52(v57, 1, v51) != 1)
      {
        v139 = v153;
        v56(v153, v57, v51);
        if (qword_100AD04E0 != -1)
        {
          swift_once();
        }

        v163 = *(&xmmword_100B305A0 + 1);
        v167 = xmmword_100B305A0;
        sub_1000F24EC(&unk_100AD5B10);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_100940050;
        v141 = v160;
        static Date.FormatStyle.TimeStyle.shortened.getter();
        static FormatStyleCapitalizationContext.standalone.getter();
        static Locale.autoupdatingCurrent.getter();
        static Calendar.autoupdatingCurrent.getter();
        static TimeZone.autoupdatingCurrent.getter();
        static Date.now.getter();
        sub_1000068D4(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
        v142 = v154;
        Date.formatted<A>(_:)();
        sub_1000FBBCC(v141);
        v143 = v177;
        *(v140 + 56) = &type metadata for String;
        v144 = sub_100031B20();
        *(v140 + 64) = v144;
        *(v140 + 32) = v143;
        v145 = v162;
        static Date.FormatStyle.DateStyle.omitted.getter();
        v146 = v156;
        static Date.FormatStyle.TimeStyle.shortened.getter();
        v147 = Date.formatted(date:time:)();
        v149 = v148;
        (*(v158 + 8))(v146, v159);
        (*(v155 + 8))(v145, v157);
        *(v140 + 96) = &type metadata for String;
        *(v140 + 104) = v144;
        *(v140 + 72) = v147;
        *(v140 + 80) = v149;
        static String.localizedStringWithFormat(_:_:)();

        v150 = String._bridgeToObjectiveC()();

        v58 = v164;
        [v164 setText:v150];

        v151 = v170;
        v152 = *(v169 + 8);
        v152(v139, v170);
        v152(v142, v151);
        (*(v171 + 8))(v168, v172);
        v43 = v174;
        v44 = &_s7SwiftUI9AnimationV9easeInOutACvgZ_ptr_0;
        goto LABEL_16;
      }

      (*(v50 + 8))(v54, v51);
      (*(v171 + 8))(v48, v172);
      v53 = v57;
    }

    sub_100004F84(v53, &unk_100AD4790);
    v44 = &_s7SwiftUI9AnimationV9easeInOutACvgZ_ptr_0;
  }

  v58 = v164;
LABEL_16:
  v172 = v58;
  [v43 setAxis:1];
  [v43 setAlignment:3];
  [v43 setUserInteractionEnabled:1];
  [v43 setSpacing:2.0];
  v59 = [objc_allocWithZone(v44[185]) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  v171 = qword_100B303D8;
  [v59 setFont:?];
  v60 = objc_opt_self();
  v61 = [v60 secondaryLabelColor];
  [v59 setTextColor:v61];

  [v59 setAdjustsFontSizeToFitWidth:1];
  [v59 setMinimumScaleFactor:0.5];
  [v59 setAdjustsFontForContentSizeCategory:1];
  [v59 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v62 = [objc_allocWithZone(v44[185]) init];
  if (qword_100AD0378 != -1)
  {
    swift_once();
  }

  [v62 setFont:qword_100B30370];
  v63 = [v60 labelColor];
  [v62 setTextColor:v63];

  [v62 setAdjustsFontSizeToFitWidth:1];
  [v62 setMinimumScaleFactor:0.5];
  [v62 setAdjustsFontForContentSizeCategory:1];
  [v62 setNumberOfLines:0];
  [v62 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v64 = v172;
  [v64 setFont:v171];
  v65 = [v60 secondaryLabelColor];
  [v64 setTextColor:v65];

  [v64 setAdjustsFontForContentSizeCategory:1];
  [v64 setAdjustsFontSizeToFitWidth:1];
  [v64 setMinimumScaleFactor:0.5];
  [v64 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v64 setLineBreakMode:0];
  [v64 setNumberOfLines:0];
  [v64 setTextAlignment:1];
  v66 = v174;
  [v174 addArrangedSubview:v59];
  [v66 addArrangedSubview:v62];
  [v66 addArrangedSubview:v64];
  [v66 setCustomSpacing:v59 afterView:6.0];
  v172 = v64;
  [v66 setCustomSpacing:v64 afterView:12.0];
  v67 = [v59 superview];
  if (v67)
  {
    v68 = v67;
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v69 = [v68 centerXAnchor];
    v70 = [v59 centerXAnchor];
    v71 = [v70 constraintEqualToAnchor:v69];

    [v71 setConstant:0.0];
    [v71 setActive:1];
  }

  v72 = [v62 superview];
  v73 = v166;
  v74 = v165;
  if (v72)
  {
    v75 = v72;
    [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
    v76 = [v75 centerXAnchor];
    v77 = [v62 centerXAnchor];
    v78 = [v77 constraintEqualToAnchor:v76];

    [v78 setConstant:0.0];
    [v78 setActive:1];
  }

  v79 = v172;
  v80 = [v172 superview];
  if (v80)
  {
    v81 = v80;
    [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
    v82 = [v81 centerXAnchor];
    v83 = [v79 centerXAnchor];
    v84 = [v83 constraintEqualToAnchor:v82];

    [v84 setConstant:0.0];
    [v84 setActive:1];

    v62 = v82;
  }

  else
  {
    v81 = v79;
  }

  v85 = v175;
  [v73 addArrangedSubview:*&v74[v175]];
  v86 = v173;
  v87 = *&v74[v173];
  sub_100760CA8(v87, 1);

  v88 = [*&v74[v86] layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v177 = xmmword_100B30F28;
  v178 = *&qword_100B30F38;
  v179 = xmmword_100B30F48;
  v180 = *&qword_100B30F58;
  [v88 setCornerRadii:&v177];

  v89 = v176;
  v90 = [*&v74[v176] layer];
  v177 = xmmword_100B30F28;
  v178 = *&qword_100B30F38;
  v179 = xmmword_100B30F48;
  v180 = *&qword_100B30F58;
  [v90 setCornerRadii:&v177];

  [*&v74[v89] setClipsToBounds:1];
  [*&v74[v85] addSubview:*&v74[v86]];
  [*&v74[v85] addSubview:*&v74[v89]];
  v91 = *&v74[v85];
  v92 = [v91 superview];
  v93 = &selRef_setSuggestedName_;
  if (v92)
  {
    v94 = v92;
    [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
    v95 = [v91 leadingAnchor];
    v96 = [v94 leadingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96];

    [v97 setConstant:20.0];
    if (v97)
    {
      [v97 setActive:1];
    }

    v85 = v175;
    v93 = &selRef_setSuggestedName_;
  }

  else
  {
    v97 = 0;
    v94 = v91;
  }

  v98 = *&v74[v85];
  v99 = [v98 superview];
  if (v99)
  {
    v100 = v99;
    [v98 v93[278]];
    v101 = [v98 trailingAnchor];
    v102 = [v100 trailingAnchor];
    v103 = [v101 constraintEqualToAnchor:v102];

    [v103 setConstant:-20.0];
    if (v103)
    {
      [v103 setActive:1];
    }

    v85 = v175;
    v93 = &selRef_setSuggestedName_;
  }

  else
  {
    v103 = 0;
    v100 = v98;
  }

  v104 = *&v74[v85];
  [v104 v93[278]];
  v105 = [v104 heightAnchor];
  v106 = [v104 widthAnchor];
  v107 = [v105 constraintEqualToAnchor:v106 multiplier:1.0];

  [v107 setActive:1];
  v108 = v176;
  v109 = *&v74[v176];
  sub_100013178(0.0);

  v110 = [*&v74[v108] layer];
  v177 = xmmword_100B30F28;
  v178 = *&qword_100B30F38;
  v179 = xmmword_100B30F48;
  v180 = *&qword_100B30F58;
  [v110 setCornerRadii:&v177];

  v111 = *&v74[v173];
  sub_100013178(0.0);

  v112 = v93;
  v113 = v174;
  [v73 addArrangedSubview:v174];
  v114 = [v113 superview];
  if (v114)
  {
    v115 = v114;
    [v113 v112[278]];
    v116 = [v113 leadingAnchor];
    v117 = [v115 leadingAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];

    [v118 setConstant:32.0];
    [v118 setActive:1];
  }

  v119 = [v113 superview];
  if (v119)
  {
    v120 = v119;
    [v113 setTranslatesAutoresizingMaskIntoConstraints:0];
    v121 = [v113 trailingAnchor];
    v122 = [v120 trailingAnchor];
    v123 = [v121 constraintEqualToAnchor:v122];

    [v123 setConstant:-32.0];
    [v123 setActive:1];
  }

  [v74 addSubview:v73];
  v124 = [v73 superview];
  if (v124)
  {
    v125 = v124;
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    v126 = [v73 centerYAnchor];
    v127 = [v125 centerYAnchor];
    v128 = [v126 constraintEqualToAnchor:v127];

    [v128 setConstant:0.0];
    [v128 setActive:1];
  }

  v129 = [v73 superview];
  if (v129)
  {
    v130 = v129;
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    v131 = [v73 leadingAnchor];
    v132 = [v130 leadingAnchor];
    v133 = [v131 constraintEqualToAnchor:v132];

    [v133 setConstant:0.0];
    [v133 setActive:1];
  }

  v134 = [v73 superview];
  if (v134)
  {
    v135 = v134;
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    v136 = [v73 trailingAnchor];
    v137 = [v135 trailingAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];

    [v138 setConstant:0.0];
    [v138 setActive:1];
  }

  [v74 layoutIfNeeded];
  [v73 layoutIfNeeded];
  [*&v74[v176] layoutIfNeeded];
}

id sub_100627120(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeView;
  type metadata accessor for RouteAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_dropShadowView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FullScreenRouteView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100627228(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeAsset] = 0;
  v3 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_routeView;
  type metadata accessor for RouteAssetView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_backgroundView;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC7Journal19FullScreenRouteView_dropShadowView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FullScreenRouteView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100627330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenRouteView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006273FC(uint64_t a1, int a2, void *a3)
{
  v5 = sub_10000CA14((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_1000F24EC(&qword_100AD5BC0);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

uint64_t sub_1006274B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1006275AC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for JournalMO(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1006276B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AssetType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10000A5AC(&qword_100ADFEE0, &type metadata accessor for AssetType), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_10000A5AC(&qword_100ADC690, &type metadata accessor for AssetType);
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

uint64_t sub_1006278CC(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = sub_1000F24EC(&unk_100ADC680);
  __chkstk_darwin(v38);
  v4 = &v30 - v3;
  v5 = type metadata accessor for AssetType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE4290);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v40 = a2;
  if (*(a2 + 16))
  {
    v41 = v14;
    Hasher.init(_seed:)();
    sub_1000082B4(v39, v16, &qword_100AE4290);
    v17 = *(v6 + 48);
    if (v17(v16, 1, v5) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v18 = v31;
      (*(v6 + 32))(v31, v16, v5);
      Hasher._combine(_:)(1u);
      sub_10000A5AC(&qword_100ADFEE0, &type metadata accessor for AssetType);
      dispatch thunk of Hashable.hash(into:)();
      (*(v6 + 8))(v18, v5);
    }

    v19 = Hasher._finalize()();
    v20 = -1 << *(v40 + 32);
    v21 = v19 & ~v20;
    v37 = v40 + 56;
    if ((*(v40 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v34 = ~v20;
      v30 = (v6 + 32);
      v35 = *(v9 + 72);
      v36 = v6 + 48;
      v33 = (v6 + 8);
      while (1)
      {
        v22 = v41;
        sub_1000082B4(*(v40 + 48) + v35 * v21, v41, &qword_100AE4290);
        v23 = *(v38 + 48);
        sub_1000082B4(v22, v4, &qword_100AE4290);
        sub_1000082B4(v39, &v4[v23], &qword_100AE4290);
        if (v17(v4, 1, v5) == 1)
        {
          break;
        }

        sub_1000082B4(v4, v12, &qword_100AE4290);
        if (v17(&v4[v23], 1, v5) == 1)
        {
          sub_100004F84(v41, &qword_100AE4290);
          (*v33)(v12, v5);
LABEL_8:
          sub_100004F84(v4, &unk_100ADC680);
          goto LABEL_9;
        }

        v24 = &v4[v23];
        v25 = v5;
        v26 = v31;
        (*v30)(v31, v24, v25);
        sub_10000A5AC(&qword_100ADC690, &type metadata accessor for AssetType);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *v33;
        v28 = v26;
        v5 = v25;
        (*v33)(v28, v25);
        sub_100004F84(v41, &qword_100AE4290);
        v27(v12, v25);
        sub_100004F84(v4, &qword_100AE4290);
        if (v32)
        {
          return 1;
        }

LABEL_9:
        v21 = (v21 + 1) & v34;
        if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          return 0;
        }
      }

      sub_100004F84(v22, &qword_100AE4290);
      if (v17(&v4[v23], 1, v5) == 1)
      {
        sub_100004F84(v4, &qword_100AE4290);
        return 1;
      }

      goto LABEL_8;
    }
  }

  return 0;
}

uint64_t sub_100627E58(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_10001F45C(*(a2 + 48) + 40 * v5, v9);
      v7 = static AnyHashable.== infix(_:_:)();
      sub_100177B94(v9);
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

uint64_t sub_100627F30()
{
  v1 = type metadata accessor for PhotoLibraryAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  type metadata accessor for LivePhotoAsset();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    if (*(v14 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
    {
      v15 = v0;

      sub_100046ADC(v13);

      if ((*(v2 + 48))(v13, 1, v1))
      {

        v16 = v13;
LABEL_14:
        sub_100004F84(v16, &qword_100AD5B20);
        return 0;
      }

      (*(v2 + 16))(v4, v13, v1);
      v18 = v13;
LABEL_17:
      sub_100004F84(v18, &qword_100AD5B20);
      v21 = PhotoLibraryAssetMetadata.assetIdentifier.getter();

      (*(v2 + 8))(v4, v1);
      return v21;
    }

    return 0;
  }

  type metadata accessor for VideoAsset();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    if (*(v17 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
    {
      v15 = v0;

      sub_100046ADC(v10);

      if ((*(v2 + 48))(v10, 1, v1))
      {

        v16 = v10;
        goto LABEL_14;
      }

      (*(v2 + 16))(v4, v10, v1);
      v18 = v10;
      goto LABEL_17;
    }

    return 0;
  }

  type metadata accessor for PhotoAsset();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
    {
      v20 = v0;

      sub_100046ADC(v7);

      if ((*(v2 + 48))(v7, 1, v1))
      {

        v16 = v7;
        goto LABEL_14;
      }

      (*(v2 + 16))(v4, v7, v1);
      sub_100004F84(v7, &qword_100AD5B20);
      v21 = PhotoLibraryAssetMetadata.assetIdentifier.getter();

      (*(v2 + 8))(v4, v1);
      return v21;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10062833C(uint64_t a1)
{
  v2[2] = v1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
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

  v2[7] = v5;
  v2[8] = v7;

  return _swift_task_switch(sub_100628444, v5, v7);
}

uint64_t sub_100628444()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v0 + 72) = *(*(v0 + 16) + 24);
  *(v0 + 144) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = *(v2 + 104);
  *(v0 + 80) = v3;
  *(v0 + 88) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_100628550;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v4, v5, sub_10065283C, v6, &type metadata for () + 8);
}

uint64_t sub_100628550()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[6];
    v5 = v2[3];
    v6 = v2[4];
    v7 = *(v6 + 8);
    v2[13] = v7;
    v2[14] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[7];
    v9 = v2[8];

    return _swift_task_switch(sub_1006286A0, v8, v9);
  }
}

uint64_t sub_1006286A0()
{
  v1 = [*(v0 + 72) parentContext];
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 80);
    v4 = *(v0 + 144);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_allocObject();
    *(v0 + 128) = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v3(v5, v4, v6);

    v2;
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_100628834;
    v10 = *(v0 + 40);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_100652858, v8, &type metadata for () + 8);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100628834()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 104))(*(v2 + 40), *(v2 + 24));

    v4 = *(v2 + 56);
    v5 = *(v2 + 64);

    return _swift_task_switch(sub_100628980, v4, v5);
  }
}

uint64_t sub_100628980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006289F0(uint64_t a1)
{
  v2[2] = v1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
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

  v2[7] = v5;
  v2[8] = v7;

  return _swift_task_switch(sub_100628AF8, v5, v7);
}

uint64_t sub_100628AF8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v0 + 72) = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  *(v0 + 144) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = *(v2 + 104);
  *(v0 + 80) = v3;
  *(v0 + 88) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_100628C10;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v4, v5, sub_10065676C, v6, &type metadata for () + 8);
}

uint64_t sub_100628C10()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[6];
    v5 = v2[3];
    v6 = v2[4];
    v7 = *(v6 + 8);
    v2[13] = v7;
    v2[14] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[7];
    v9 = v2[8];

    return _swift_task_switch(sub_100628D60, v8, v9);
  }
}

uint64_t sub_100628D60()
{
  v1 = [*(v0 + 72) parentContext];
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 80);
    v4 = *(v0 + 144);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_allocObject();
    *(v0 + 128) = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v3(v5, v4, v6);

    v2;
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_100628EF4;
    v10 = *(v0 + 40);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_10065707C, v8, &type metadata for () + 8);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100628EF4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 104))(*(v2 + 40), *(v2 + 24));

    v4 = *(v2 + 56);
    v5 = *(v2 + 64);

    return _swift_task_switch(sub_100657098, v4, v5);
  }
}

uint64_t sub_100629040(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1000F24EC(&qword_100AD1420);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for SettingsKey();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for Suggestion(0);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for SuggestionImportSession(0);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for MainActor();
  v2[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v6;
  v2[21] = v5;

  return _swift_task_switch(sub_10062922C, v6, v5);
}

uint64_t sub_10062922C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v31 = v3;
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v34 = v0[14];
  v35 = v0[8];
  v32 = v0[9];
  v33 = v0[7];
  v7 = v0[5];
  v8 = *(v0[6] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v0[22] = v8;
  sub_100656E6C(v7, v3, type metadata accessor for Suggestion);
  sub_1000065A8(0, &qword_100AE1A30);

  v9 = static NSUserDefaults.shared.getter();
  (*(v4 + 104))(v5, enum case for SettingsKey.alwaysUseMomentDate(_:), v6);
  SettingsKey.rawValue.getter();
  (*(v4 + 8))(v5, v6);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 BOOLForKey:v10];

  LOBYTE(v10) = sub_100554A40();
  *v1 = v8;
  sub_100656E6C(v31, v1 + v2[5], type metadata accessor for Suggestion);
  *(v1 + v2[6]) = v11;
  *(v1 + v2[7]) = v10;
  _StringGuts.grow(_:)(19);

  sub_1000082B4(v31 + *(v34 + 28), v33, &qword_100AD1420);
  v12 = *(v32 + 48);
  if (v12(v33, 1, v35) == 1)
  {
    v13 = v0[7];
    v14 = v0[8];
    (*(v0[9] + 16))(v0[10], v0[15] + *(v0[14] + 44), v14);
    if (v12(v13, 1, v14) != 1)
    {
      sub_100004F84(v0[7], &qword_100AD1420);
    }
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  }

  v36 = v0[19];
  v15 = v0[15];
  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[8];
  v19 = v0[6];
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v16 + 8))(v17, v18);
  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 93;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  Logger.init(subsystem:category:)();
  sub_100656ED4(v15, type metadata accessor for Suggestion);
  v25 = swift_task_alloc();
  v0[23] = v25;
  *(v25 + 16) = v19;
  v26 = swift_task_alloc();
  v0[24] = v26;
  *(v26 + 16) = &unk_100960C50;
  *(v26 + 24) = v25;
  v27 = swift_task_alloc();
  v0[25] = v27;
  *(v27 + 16) = v19;
  v28 = swift_task_alloc();
  v0[26] = v28;
  *(v28 + 16) = &unk_100960C70;
  *(v28 + 24) = v27;

  v29 = swift_task_alloc();
  v0[27] = v29;
  *v29 = v0;
  v29[1] = sub_100629684;

  return sub_1003A1DD4(v36, &protocol witness table for MainActor, &unk_100960C60, v26, &unk_100960C80, v28);
}

uint64_t sub_100629684(char a1)
{
  v2 = *v1;
  *(*v1 + 297) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_100629850, v4, v3);
}

uint64_t sub_100629850()
{
  if (!*(v0 + 297))
  {
    v7 = *(v0 + 176);
    v8 = *(v0 + 40);
    v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
    swift_beginAccess();
    v10 = *(v7 + v9);
    v11 = swift_task_alloc();
    *(v11 + 16) = v8;

    *(v0 + 224) = sub_100778138(sub_100656DE4, v11, v10);

    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    *v12 = v0;
    v13 = sub_100629B38;
LABEL_12:
    v12[1] = v13;
    v14 = *(v0 + 176);

    return sub_10065261C(v14);
  }

  if (*(v0 + 297) != 1)
  {
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v13 = sub_100629F50;
    goto LABEL_12;
  }

  v1 = [*(v0 + 48) viewIfLoaded];
  v2 = [v1 window];

  if (!v2)
  {
    v3 = [*(v0 + 48) presentedViewController];
    if (!v3)
    {
LABEL_7:

      sub_100656ED4(*(v0 + 136), type metadata accessor for SuggestionImportSession);

      v5 = *(v0 + 8);

      return v5();
    }

    v2 = v3;
  }

  v4 = *(v0 + 48);

  if ([v4 isBeingDismissed])
  {
    goto LABEL_7;
  }

  *(v0 + 240) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 248) = v16;
  *(v0 + 256) = v15;

  return _swift_task_switch(sub_100629C7C, v16, v15);
}

uint64_t sub_100629B38()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_100657038, v3, v2);
}

uint64_t sub_100629C7C()
{
  v1 = v0[6];
  v2 = static MainActor.shared.getter();
  v0[33] = v2;
  v3 = swift_task_alloc();
  v0[34] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_100629D8C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 37, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001008FF170, sub_10065709C, v3, &type metadata for Bool);
}

uint64_t sub_100629D8C()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_100629EEC, v3, v2);
}

uint64_t sub_100629EEC()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_100657038, v1, v2);
}

uint64_t sub_100629F50()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_10062A070, v3, v2);
}

uint64_t sub_10062A070()
{

  sub_100656ED4(*(v0 + 136), type metadata accessor for SuggestionImportSession);

  v1 = *(v0 + 8);

  return v1();
}

void sub_10062A138(uint64_t a1, void *a2)
{
  v162 = a2;
  v161 = a1;
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v158 = &v149 - v4;
  v156 = type metadata accessor for PHPickerConfiguration.Selection();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v153 = &v149 - v7;
  v152 = type metadata accessor for PHPickerConfiguration();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for PHPickerResult();
  v169 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v167 = &v149 - v11;
  __chkstk_darwin(v12);
  v172 = &v149 - v13;
  v14 = type metadata accessor for PhotoLibraryAssetMetadata();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v166 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v17 - 8);
  v159 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v163 = (&v149 - v20);
  __chkstk_darwin(v21);
  v168 = &v149 - v22;
  v23 = OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerActiveFetchRequests;
  swift_beginAccess();
  v24 = *&v2[v23];
  v25 = v24 + 64;
  v26 = 1 << v24[32];
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 8);
  v29 = (v26 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v160 = v2;
  if (!v28)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = v32 | (v30 << 6);
      if (*(*(v24 + 7) + 16 * v33 + 8) == 1)
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_6;
      }
    }

    v35 = *(v24 + 6) + 16 * v33;
    v37 = *v35;
    v36 = *(v35 + 8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v174 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_10009BCC8(0, *(v31 + 2) + 1, 1, v31);
    }

    v40 = *(v31 + 2);
    v39 = *(v31 + 3);
    v41 = v31;
    if (v40 >= v39 >> 1)
    {
      v41 = sub_10009BCC8((v39 > 1), v40 + 1, 1, v31);
    }

    *(v41 + 2) = v40 + 1;
    v31 = v41;
    v42 = &v41[16 * v40];
    *(v42 + 4) = v174;
    *(v42 + 5) = v36;
    v2 = v160;
  }

  while (v28);
LABEL_6:
  while (1)
  {
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v34 >= v29)
    {
      v157 = v31;

      v43 = OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerLatestAssetAdditions;
      swift_beginAccess();
      v28 = *&v2[v43];
      if (v28 >> 62)
      {
        goto LABEL_115;
      }

      v174 = (v28 & 0xFFFFFFFFFFFFFF8);
      for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {

        if (i)
        {
          break;
        }

        v47 = _swiftEmptyArrayStorage;
LABEL_49:

        aBlock[0] = v157;
        sub_1006AD7E8(v47);
        v174 = sub_100891094(aBlock[0]);

        v68 = *(v161 + 16);
        v168 = v68;
        if (v68)
        {
          v171 = *(v169 + 16);
          v69 = v161 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
          v70 = *(v169 + 72);
          v71 = (v169 + 8);
          v72 = _swiftEmptyArrayStorage;
          do
          {
            v75 = v172;
            v74 = v173;
            (v171)(v172, v69, v173);
            v76 = PHPickerResult.assetIdentifier.getter();
            v78 = v77;
            (*v71)(v75, v74);
            if (v78)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_10009BCC8(0, *(v72 + 2) + 1, 1, v72);
              }

              v80 = *(v72 + 2);
              v79 = *(v72 + 3);
              if (v80 >= v79 >> 1)
              {
                v72 = sub_10009BCC8((v79 > 1), v80 + 1, 1, v72);
              }

              *(v72 + 2) = v80 + 1;
              v73 = &v72[16 * v80];
              *(v73 + 4) = v76;
              *(v73 + 5) = v78;
            }

            v69 += v70;
            --v68;
          }

          while (v68);
        }

        else
        {
          v72 = _swiftEmptyArrayStorage;
        }

        v81 = sub_100891094(v72);

        if ((sub_100651868(v174, v81) & 1) == 0)
        {
          v95 = v150;
          PHPickerViewController.configuration.getter();
          v96 = v153;
          PHPickerConfiguration.selection.getter();
          (*(v151 + 8))(v95, v152);
          v97 = v155;
          v98 = v154;
          v99 = v156;
          (*(v155 + 104))(v154, enum case for PHPickerConfiguration.Selection.continuous(_:), v156);
          sub_10000A5AC(&qword_100AEB9C8, &type metadata accessor for PHPickerConfiguration.Selection);
          v100 = dispatch thunk of static Equatable.== infix(_:_:)();
          v101 = *(v97 + 8);
          v101(v98, v99);
          v101(v96, v99);
          v102 = v160;
          if ((v100 & 1) == 0)
          {
            sub_1001737C8(1, *&v160[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator]);
          }

          v103 = v174;

          v105 = sub_100652ABC(v104, v81);

          v106 = type metadata accessor for TaskPriority();
          v107 = *(v106 - 8);
          v108 = *(v107 + 56);
          v109 = v158;
          v164 = v106;
          v163 = v108;
          v159 = (v107 + 56);
          (v108)(v158, 1, 1);
          v110 = type metadata accessor for MainActor();
          v111 = v102;
          v160 = v110;
          v112 = static MainActor.shared.getter();
          v113 = swift_allocObject();
          v113[2] = v112;
          v113[3] = &protocol witness table for MainActor;
          v157 = v111;
          v113[4] = v111;
          v113[5] = v105;
          sub_1003E9628(0, 0, v109, &unk_100960B28, v113);

          v114 = v167;
          if (v168)
          {
            v115 = 0;
            v172 = *(v169 + 16);
            v166 = ((*(v169 + 80) + 32) & ~*(v169 + 80));
            v171 = &v166[v161];
            v116 = *(v169 + 72);
            v117 = v103 + 7;
            v165 = (v169 + 8);
            v169 += 16;
            v118 = (v169 + 16);
            v119 = _swiftEmptyArrayStorage;
            (v172)(v167, &v166[v161], v173);
            while (1)
            {
              v120 = PHPickerResult.assetIdentifier.getter();
              v122 = v121 ? v120 : 0;
              v123 = v121 ? v121 : 0xE000000000000000;
              if (v174[2] && (Hasher.init(_seed:)(), String.hash(into:)(), v124 = Hasher._finalize()(), v125 = v174, v126 = -1 << *(v174 + 32), v127 = v124 & ~v126, ((*(v117 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) != 0))
              {
                v128 = ~v126;
                while (1)
                {
                  v129 = (v125[6] + 16 * v127);
                  v130 = *v129 == v122 && v129[1] == v123;
                  if (v130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v127 = (v127 + 1) & v128;
                  v125 = v174;
                  if (((*(v117 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
                  {
                    goto LABEL_95;
                  }
                }

                (*v165)(v114, v173);
              }

              else
              {
LABEL_95:

                v131 = *v118;
                (*v118)(v170, v114, v173);
                v132 = swift_isUniquelyReferenced_nonNull_native();
                v176 = v119;
                if ((v132 & 1) == 0)
                {
                  sub_10019A114(0, *(v119 + 2) + 1, 1);
                  v119 = v176;
                }

                v134 = *(v119 + 2);
                v133 = *(v119 + 3);
                if (v134 >= v133 >> 1)
                {
                  sub_10019A114(v133 > 1, v134 + 1, 1);
                  v119 = v176;
                }

                *(v119 + 2) = v134 + 1;
                v131(&v166[v119 + v134 * v116], v170, v173);
                v114 = v167;
              }

              if (++v115 == v168)
              {
                break;
              }

              (v172)(v114, &v171[v116 * v115], v173);
            }
          }

          else
          {
            v119 = _swiftEmptyArrayStorage;
          }

          v135 = v158;
          v163(v158, 1, 1, v164);
          v136 = v157;
          v137 = v162;
          v138 = static MainActor.shared.getter();
          v139 = swift_allocObject();
          v139[2] = v138;
          v139[3] = &protocol witness table for MainActor;
          v139[4] = v119;
          v139[5] = v136;
          v139[6] = v137;
          sub_1003E9628(0, 0, v135, &unk_100960B38, v139);

          return;
        }

        v82 = v162;
        v83 = [v162 traitCollection];
        v84 = [v83 userInterfaceIdiom];

        v85 = v160;
        if (v84 == 5)
        {
          goto LABEL_119;
        }

        v86 = [v82 sheetPresentationController];
        if (!v86)
        {
          goto LABEL_119;
        }

        v87 = v86;
        v88 = [v86 detents];
        sub_1000065A8(0, &qword_100AD85C0);
        v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v174 = v87;
        if (v89 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
          if (!v14)
          {
LABEL_117:

            goto LABEL_118;
          }
        }

        else
        {
          v14 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v14)
          {
            goto LABEL_117;
          }
        }

        v15 = 0;
        v28 = v89 & 0xC000000000000001;
        while (1)
        {
          if (v28)
          {
            v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v15 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_114;
            }

            v90 = *(v89 + 8 * v15 + 32);
          }

          v91 = v90;
          v92 = (v15 + 1);
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v93 = [objc_opt_self() largeDetent];
          v94 = static NSObject.== infix(_:_:)();

          if ((v94 & 1) == 0)
          {

            v2 = [v91 identifier];

            v24 = v174;
            v140 = [v174 selectedDetentIdentifier];
            if (!v140)
            {
              goto LABEL_109;
            }

            v25 = v140;
            v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v143 = v142;
            if (v141 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v143 == v144)
            {

              goto LABEL_108;
            }

            goto LABEL_107;
          }

          ++v15;
          if (v92 == v14)
          {
            goto LABEL_117;
          }
        }

LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        v174 = (v28 & 0xFFFFFFFFFFFFFF8);
      }

      v45 = 0;
      v171 = (v28 & 0xC000000000000001);
      v46 = (v15 + 48);
      v165 = (v15 + 16);
      v164 = (v15 + 8);
      v47 = _swiftEmptyArrayStorage;
      v15 = v14;
      while (2)
      {
        v149 = v47;
        v48 = v45;
LABEL_24:
        if (v171)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v48 >= v174[2])
          {
            goto LABEL_112;
          }

          v49 = *(v28 + 8 * v48 + 32);
        }

        v14 = v49;
        v45 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_111;
        }

        type metadata accessor for LivePhotoAsset();
        v50 = swift_dynamicCastClass();
        if (v50)
        {
          if (*(v50 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
          {
            v51 = v14;

            v52 = &v179;
            goto LABEL_37;
          }

LABEL_22:
        }

        else
        {
          type metadata accessor for VideoAsset();
          v53 = swift_dynamicCastClass();
          if (v53)
          {
            if (!*(v53 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
            {
              goto LABEL_22;
            }

            v54 = v14;

            v52 = &v178;
          }

          else
          {
            type metadata accessor for PhotoAsset();
            v55 = swift_dynamicCastClass();
            if (!v55 || !*(v55 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
            {
              goto LABEL_22;
            }

            v56 = v14;

            v52 = &v177;
          }

LABEL_37:
          v57 = *(v52 - 32);
          sub_100046ADC(v57);

          v58 = v57;
          if ((*v46)(v57, 1, v15))
          {

            sub_100004F84(v57, &qword_100AD5B20);
            goto LABEL_22;
          }

          v59 = v166;
          (*v165)(v166, v58, v15);
          sub_100004F84(v58, &qword_100AD5B20);
          v60 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
          v62 = v61;

          (*v164)(v59, v15);
          if (v62)
          {
            v63 = v149;
            v64 = swift_isUniquelyReferenced_nonNull_native();
            if ((v64 & 1) == 0)
            {
              v63 = sub_10009BCC8(0, *(v63 + 2) + 1, 1, v63);
            }

            v14 = *(v63 + 2);
            v65 = *(v63 + 3);
            v66 = v63;
            if (v14 >= v65 >> 1)
            {
              v66 = sub_10009BCC8((v65 > 1), v14 + 1, 1, v63);
            }

            *(v66 + 2) = v14 + 1;
            v47 = v66;
            v67 = &v66[16 * v14];
            *(v67 + 4) = v60;
            *(v67 + 5) = v62;
            if (v45 != i)
            {
              continue;
            }

            goto LABEL_49;
          }
        }

        break;
      }

      ++v48;
      if (v45 == i)
      {
        v47 = v149;
        goto LABEL_49;
      }

      goto LABEL_24;
    }

    v28 = *(v25 + v34);
    ++v30;
    if (v28)
    {
      v30 = v34;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_107:
  v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v145)
  {
LABEL_108:

LABEL_118:
    v85 = v160;
LABEL_119:
    sub_1001737C8(1, *&v85[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator]);
  }

  else
  {
LABEL_109:
    [v160 becomeFirstResponder];
    v146 = swift_allocObject();
    *(v146 + 16) = v24;
    *(v146 + 24) = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10065313C;
    *(v14 + 24) = v146;
    aBlock[4] = sub_100028ECC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001A7D4;
    aBlock[3] = &unk_100A76738;
    v15 = _Block_copy(aBlock);
    v147 = v2;
    v148 = v24;

    [v148 animateChanges:v15];

    _Block_release(v15);
    LOBYTE(v148) = swift_isEscapingClosureAtFileLocation();

    if (v148)
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }
  }
}

uint64_t sub_10062B43C(uint64_t a1, void *a2)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v17 - v7;
  v9 = [a2 cameraDevice];
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  [v10 setInteger:v9 forKey:v11];

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v2;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = a1;
  sub_1003E9628(0, 0, v8, &unk_100960C10, v15);
}

uint64_t sub_10062B5F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v5;
  v2[10] = v4;

  return _swift_task_switch(sub_10062B6E8, v5, v4);
}

uint64_t sub_10062B6E8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10062B790;
  v3 = v0[2];

  return sub_1006420A8(v1, v3);
}

uint64_t sub_10062B790(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_10062B8B8, v4, v3);
}

uint64_t sub_10062B8B8()
{
  v1 = v0[12];
  if (v1)
  {

    v2 = v0[8];

    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v0[14] = v3;
    v0[15] = v5;
    v6 = sub_10062BB78;
    v7 = v3;
  }

  else
  {
    v6 = sub_10062B978;
    v7 = 0;
    v5 = 0;
  }

  return _swift_task_switch(v6, v7, v5);
}

uint64_t sub_10062B978()
{
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10062BA04, v2, v1);
}

uint64_t sub_10062BA04()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFD0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_100B2FBC0 object:v0[3] userInfo:0];

  v2 = v0[9];
  v3 = v0[10];

  return _swift_task_switch(sub_10062BAE0, v2, v3);
}

uint64_t sub_10062BAE0()
{
  v1 = v0[8];

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

  v0[14] = v2;
  v0[15] = v4;

  return _swift_task_switch(sub_10062BB78, v2, v4);
}

uint64_t sub_10062BB78()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_context);
  v0[16] = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO), (v0[17] = v3) != 0))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = swift_allocObject();
    v0[18] = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = 1;
    (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
    v8 = v3;
    v2;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_10062BD24;
    v10 = v0[6];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_100657064, v7, &type metadata for () + 8);
  }

  else
  {

    v11 = v0[9];
    v12 = v0[10];

    return _swift_task_switch(sub_10062BEE8, v11, v12);
  }
}

uint64_t sub_10062BD24()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v4 = v2[14];
    v5 = v2[15];

    return _swift_task_switch(sub_10062BE78, v4, v5);
  }
}

uint64_t sub_10062BE78()
{
  v1 = v0[16];
  v2 = v0[17];

  v3 = v0[9];
  v4 = v0[10];

  return _swift_task_switch(sub_10062BEE8, v3, v4);
}

uint64_t sub_10062BEE8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10062BF54(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = [a1 insertedObjects];
  sub_1000065A8(0, &unk_100AE4860);
  sub_10049C830();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [a1 deletedObjects];
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [a1 updatedObjects];
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100ACFE88 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000617C(v14, qword_100AE6A68);

  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a5;
    v19 = swift_slowAlloc();
    v29 = v13;
    v20 = swift_slowAlloc();
    v32 = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_100008458(a2, a3, &v32);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v15;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "(%s) context:%@", v18, 0x16u);
    sub_100004F84(v19, &unk_100AD4BB0);
    a5 = v28;

    sub_10000BA7C(v20);
    v13 = v29;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v24 = 136316162;
    *(v24 + 4) = sub_100008458(a2, a3, &v32);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100008458(a4, a5, &v32);
    *(v24 + 22) = 2048;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *(v9 + 16);
    }

    *(v24 + 24) = v25;

    *(v24 + 32) = 2048;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *(v11 + 16);
    }

    *(v24 + 34) = v26;

    *(v24 + 42) = 2048;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *(v13 + 16);
    }

    *(v24 + 44) = v27;

    _os_log_impl(&_mh_execute_header, v22, v23, "(%s) for %s insertedObjects.count:%ld deletedObjects.count:%ld updatedObjects.count:%ld", v24, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

void sub_10062C3D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_10062BF54(v1, 0x292865766173, 0xE600000000000000, 0x6E6F6320706D6574, 0xEC00000074786574);
  v11 = 0;
  if ([v1 save:&v11])
  {
    v2 = v11;
  }

  else
  {
    v3 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFE88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AE6A68);

    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v1;
      *v8 = v1;
      *(v7 + 12) = 2112;
      swift_errorRetain();
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v10;
      v8[1] = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error saving editing context %@: %@", v7, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }
  }
}

void sub_10062C630(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  sub_10062BF54(v1, 0x292865766173, 0xE600000000000000, 0x6E6F6320706D6574, 0xEC00000074786574);
  v11 = 0;
  if ([v1 save:&v11])
  {
    v2 = v11;
  }

  else
  {
    v3 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFE88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AE6A68);

    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v1;
      *v8 = v1;
      *(v7 + 12) = 2112;
      swift_errorRetain();
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v10;
      v8[1] = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error saving editing context %@: %@", v7, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }
  }
}

void sub_10062C898(uint64_t a1, void *a2)
{
  sub_10062BF54(a2, 0x292865766173, 0xE600000000000000, 0xD000000000000013, 0x80000001008FF260);
  v13 = 0;
  if ([a2 save:&v13])
  {
    v3 = v13;
  }

  else
  {
    v4 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFE88 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AE6A68);
    v6 = a2;
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412546;
      *(v9 + 4) = v6;
      *v10 = v6;
      *(v9 + 12) = 2112;
      v11 = v6;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      v10[1] = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error saving parent context %@: %@", v9, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_10062CAFC()
{
  v0 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v0);
  v2 = &v10 - v1;
  sub_100006118(v3, qword_100AEB998);
  v4 = sub_10000617C(v0, qword_100AEB998);
  v5 = PFCurrentPlatformLivePhotoBundleType();
  if (v5)
  {
    v6 = v5;
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for UTType();
    (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for UTType();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  }

  return sub_100021CEC(v2, v4, &unk_100AD7C40);
}

uint64_t sub_10062CC44()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEB9B0);
  sub_10000617C(v0, qword_100AEB9B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10062CCC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10062CD5C, v3, v2);
}

uint64_t sub_10062CD5C()
{
  v1 = *(v0 + 16);

  v2 = [v1 viewIfLoaded];
  v3 = [v2 window];

  if (!v3)
  {
    v4 = [*(v0 + 16) presentedViewController];
    if (!v4)
    {
      goto LABEL_6;
    }

    v3 = v4;
  }

  v5 = *(v0 + 16);

  if (([v5 isBeingDismissed] & 1) == 0)
  {
    sub_100657CA4();
  }

LABEL_6:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10062CE3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AssetType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for SuggestionImportSession.MergeConflict(0);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_10062CF64, v5, v4);
}

uint64_t sub_10062CF64()
{
  v1 = [*(v0 + 24) viewIfLoaded];
  v2 = [v1 window];

  if (v2)
  {
LABEL_4:
    v4 = *(v0 + 24);

    if ([v4 isBeingDismissed])
    {
      goto LABEL_5;
    }

    sub_100656E6C(*(v0 + 16), *(v0 + 64), type metadata accessor for SuggestionImportSession.MergeConflict);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v5 = 0;
        goto LABEL_6;
      }

      *(v0 + 104) = static MainActor.shared.getter();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v14;
      *(v0 + 112) = v11;
      *(v0 + 120) = v14;
      v13 = sub_10062D1C0;
    }

    else if (EnumCaseMultiPayload)
    {
      v15 = *(v0 + 64);
      v16 = *v15;
      *(v0 + 200) = *v15;
      v17 = v15[1];
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
        __break(1u);
        return _swift_task_switch(EnumCaseMultiPayload, v9, v10);
      }

      *(v0 + 208) = v19;
      *(v0 + 216) = static MainActor.shared.getter();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v20;
      *(v0 + 224) = v11;
      *(v0 + 232) = v20;
      v13 = sub_10062D8A8;
    }

    else
    {
      (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 64), *(v0 + 32));
      *(v0 + 152) = static MainActor.shared.getter();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v12;
      *(v0 + 160) = v11;
      *(v0 + 168) = v12;
      v13 = sub_10062D514;
    }

    EnumCaseMultiPayload = v13;
    v9 = v11;

    return _swift_task_switch(EnumCaseMultiPayload, v9, v10);
  }

  v3 = [*(v0 + 24) presentedViewController];
  if (v3)
  {
    v2 = v3;
    goto LABEL_4;
  }

LABEL_5:
  v5 = 7;
LABEL_6:

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10062D1C0()
{
  v1 = v0[3];
  v2 = static MainActor.shared.getter();
  v0[16] = v2;
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_10062D2CC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 266, v2, &protocol witness table for MainActor, 0xD000000000000026, 0x80000001008FF400, sub_1006570C4, v3, &type metadata for Bool);
}

uint64_t sub_10062D2CC()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10062D42C, v3, v2);
}

uint64_t sub_10062D42C()
{

  *(v0 + 267) = *(v0 + 266);
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_10062D498, v1, v2);
}

uint64_t sub_10062D498()
{
  v1 = *(v0 + 267);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10062D514()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = static MainActor.shared.getter();
  v0[22] = v3;
  v4 = swift_task_alloc();
  v0[23] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_10062D62C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 265, v3, &protocol witness table for MainActor, 0xD000000000000033, 0x80000001008FF380, sub_1006570C0, v4, &type metadata for Bool);
}

uint64_t sub_10062D62C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_10062D78C, v3, v2);
}

uint64_t sub_10062D78C()
{

  *(v0 + 268) = *(v0 + 265);
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_10062D7F8, v1, v2);
}

uint64_t sub_10062D7F8()
{
  v1 = *(v0 + 268);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  if (v1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10062D8A8()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[3];
  v4 = static MainActor.shared.getter();
  v0[30] = v4;
  v5 = swift_task_alloc();
  v0[31] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_10062D9C4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 33, v4, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001008FF170, sub_10065709C, v5, &type metadata for Bool);
}

uint64_t sub_10062D9C4()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_10062DB24, v3, v2);
}

uint64_t sub_10062DB24()
{

  *(v0 + 269) = *(v0 + 264);
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_10062DB90, v1, v2);
}

uint64_t sub_10062DB90()
{
  v1 = *(v0 + 269);

  if (v1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10062DC18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1005AD9F8;

  return v8(a3);
}

uint64_t sub_10062DD0C(uint64_t *a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for UUID();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v38);
  v6 = &v33 - v5;
  v7 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = *a1;
  v19 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  swift_beginAccess();
  v20 = v18 + v19;
  v21 = v39;
  v37 = v17;
  sub_1000082B4(v20, v17, &qword_100AD1420);
  v22 = type metadata accessor for Suggestion(0);
  v23 = v36;
  sub_1000082B4(v36 + *(v22 + 28), v11, &qword_100AD1420);
  v24 = *(v21 + 48);
  if (v24(v11, 1, v3) == 1)
  {
    (*(v21 + 16))(v14, v23 + *(v22 + 44), v3);
    if (v24(v11, 1, v3) != 1)
    {
      sub_100004F84(v11, &qword_100AD1420);
    }
  }

  else
  {
    (*(v21 + 32))(v14, v11, v3);
  }

  (*(v21 + 56))(v14, 0, 1, v3);
  v25 = v37;
  v26 = *(v38 + 48);
  sub_1000082B4(v37, v6, &qword_100AD1420);
  sub_1000082B4(v14, &v6[v26], &qword_100AD1420);
  if (v24(v6, 1, v3) != 1)
  {
    v28 = v35;
    sub_1000082B4(v6, v35, &qword_100AD1420);
    if (v24(&v6[v26], 1, v3) != 1)
    {
      v29 = v39;
      v30 = v34;
      (*(v39 + 32))(v34, &v6[v26], v3);
      sub_10000A5AC(&qword_100AD9220, &type metadata accessor for UUID);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v29 + 8);
      v31(v30, v3);
      sub_100004F84(v14, &qword_100AD1420);
      sub_100004F84(v25, &qword_100AD1420);
      v31(v35, v3);
      sub_100004F84(v6, &qword_100AD1420);
      return v27 & 1;
    }

    sub_100004F84(v14, &qword_100AD1420);
    sub_100004F84(v25, &qword_100AD1420);
    (*(v39 + 8))(v28, v3);
    goto LABEL_10;
  }

  sub_100004F84(v14, &qword_100AD1420);
  sub_100004F84(v25, &qword_100AD1420);
  if (v24(&v6[v26], 1, v3) != 1)
  {
LABEL_10:
    sub_100004F84(v6, &unk_100AEEE20);
    v27 = 0;
    return v27 & 1;
  }

  sub_100004F84(v6, &qword_100AD1420);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_10062E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_10062E30C, v7, v6);
}

uint64_t sub_10062E30C()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v0[11] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = &unk_100960AD8;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10062E42C;
  v5 = v0[6];

  return sub_10062ED90(v1, v5, &unk_100952210, v3);
}

uint64_t sub_10062E42C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v4[14] = a2;

  v5 = v3[10];
  v6 = v3[9];

  return _swift_task_switch(sub_10062E578, v6, v5);
}

uint64_t sub_10062E578()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  if (*(v0 + 24) != 1)
  {
LABEL_11:
    *(v0 + 168) = v1;
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_10062EA20;
    v10 = *(v0 + 88);

    return sub_10065261C(v10);
  }

  v2 = *(v0 + 40);

  v3 = [v2 viewIfLoaded];
  v4 = [v3 window];

  if (!v4)
  {
    v5 = [*(v0 + 40) presentedViewController];
    if (!v5)
    {
LABEL_7:

      v7 = *(v0 + 8);

      return v7();
    }

    v4 = v5;
  }

  v6 = *(v0 + 40);

  if ([v6 isBeingDismissed])
  {
    goto LABEL_7;
  }

  *(v0 + 120) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 128) = v12;
  *(v0 + 136) = v11;

  return _swift_task_switch(sub_10062E74C, v12, v11);
}

uint64_t sub_10062E74C()
{
  v1 = v0[5];
  v2 = static MainActor.shared.getter();
  v0[18] = v2;
  v3 = swift_task_alloc();
  v0[19] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_10062E85C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 23, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001008FF170, sub_100652830, v3, &type metadata for Bool);
}

uint64_t sub_10062E85C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10062E9BC, v3, v2);
}

uint64_t sub_10062E9BC()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1004C88A0, v1, v2);
}

uint64_t sub_10062EA20()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1006570C8, v3, v2);
}

uint64_t sub_10062EB64(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10062EBFC, v3, v2);
}

uint64_t sub_10062EBFC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong viewIfLoaded];
    v4 = [v3 window];

    if (!v4)
    {
      v5 = [v2 presentedViewController];
      if (!v5)
      {
LABEL_7:

        goto LABEL_8;
      }

      v4 = v5;
    }

    if (([v2 isBeingDismissed] & 1) == 0)
    {
      sub_100657CA4();
    }

    goto LABEL_7;
  }

LABEL_8:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10062ED00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100032EC8;

  return sub_10062EB64(v0);
}

uint64_t sub_10062ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = swift_getObjectType();
  v5[14] = sub_1000F24EC(&unk_100AEEE20);
  v5[15] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[23] = v8;
  v5[24] = v7;

  return _swift_task_switch(sub_10062EF24, v8, v7);
}

uint64_t sub_10062EF24()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[13];
  v6 = v0[9];
  _StringGuts.grow(_:)(23);

  v7 = [v6 suggestionIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v3 + 8);
  v0[25] = v11;
  v0[26] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v2, v4);
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 93;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v0[27] = 0xD000000000000014;
  v0[28] = 0x80000001008FF280;
  v14 = swift_allocObject();
  v0[29] = v14;
  v14[2] = 0xD000000000000014;
  v14[3] = 0x80000001008FF280;
  v14[4] = v5;
  v15 = swift_allocObject();
  v0[30] = v15;
  v15[2] = 0xD000000000000014;
  v15[3] = 0x80000001008FF280;
  v15[4] = v5;
  swift_bridgeObjectRetain_n();
  sub_100653A04(0xD00000000000001BLL, 0x80000001008FF2A0, 0xD000000000000014, 0x80000001008FF280, &static os_log_type_t.debug.getter);
  v16 = swift_allocObject();
  v0[31] = v16;
  *(v16 + 16) = 0;
  type metadata accessor for AssetProcessingUtil();
  v17 = swift_allocObject();
  v0[32] = v17;
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = sub_100652874;
  v18[4] = v14;
  v18[5] = sub_1006528A4;
  v18[6] = v15;
  v18[7] = v16;
  v19 = swift_allocObject();
  v0[33] = v19;
  *(v19 + 16) = &unk_100960B08;
  *(v19 + 24) = v18;

  v20 = swift_task_alloc();
  v0[34] = v20;
  *v20 = v0;
  v20[1] = sub_10062F244;
  v21 = v0[10];
  v22 = v0[11];
  v24 = v0[8];
  v23 = v0[9];

  return sub_1004456D0(v1, &protocol witness table for MainActor, v23, v24, v21, v22, &unk_100960B18, v19);
}

uint64_t sub_10062F244(char a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return _swift_task_switch(sub_10062F3D0, v4, v3);
}

uint64_t sub_10062F3D0()
{
  v1 = *(v0 + 280);

  _StringGuts.grow(_:)(20);

  v2 = 0x80000001008FF300;
  v3 = 0xD000000000000014;
  if (v1 != 1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = 0x80000001008FF2E0;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x73736563637573;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = *(v0 + 280);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = v5;
  String.append(_:)(*&v4);

  sub_100653A04(0xD000000000000012, 0x80000001008FF2C0, v8, v7, &static os_log_type_t.debug.getter);

  if (v6)
  {
    goto LABEL_10;
  }

  v10 = *(v0 + 64);
  v11 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  result = swift_beginAccess();
  v13 = *(v10 + v11);
  if (v13 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
    if (result)
    {
      goto LABEL_13;
    }

LABEL_10:

    goto LABEL_31;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (v14 < 1)
  {
    __break(1u);
    return result;
  }

  v15 = *(v0 + 160);
  v50 = v13 & 0xC000000000000001;
  v51 = *(v0 + 112);
  v48 = (v15 + 48);
  v49 = (v15 + 56);
  v44 = (v15 + 32);

  v16 = 0;
  v52 = v14;
  v53 = v13;
  do
  {
    v55 = v16;
    if (v50)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v13 + 8 * v16 + 32);
    }

    v22 = v21;
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    v25 = *(v0 + 136);
    v26 = *(v0 + 120);
    v27 = *(v0 + 72);
    v28 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
    swift_beginAccess();
    v54 = v22;
    sub_1000082B4(v22 + v28, v23, &qword_100AD1420);
    v29 = [v27 suggestionIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*v49)(v25, 0, 1, v24);
    v30 = *(v51 + 48);
    sub_1000082B4(v23, v26, &qword_100AD1420);
    sub_1000082B4(v25, v26 + v30, &qword_100AD1420);
    v31 = *v48;
    v32 = (*v48)(v26, 1, v24);
    v33 = *(v0 + 152);
    if (v32 == 1)
    {
      v34 = *(v0 + 144);
      sub_100004F84(*(v0 + 136), &qword_100AD1420);
      sub_100004F84(v34, &qword_100AD1420);
      if (v31(v26 + v30, 1, v33) != 1)
      {
        goto LABEL_16;
      }

      sub_100004F84(*(v0 + 120), &qword_100AD1420);
      v13 = v53;
      v20 = v54;
    }

    else
    {
      sub_1000082B4(*(v0 + 120), *(v0 + 128), &qword_100AD1420);
      v35 = v31(v26 + v30, 1, v33);
      v36 = *(v0 + 200);
      if (v35 == 1)
      {
        v17 = *(v0 + 144);
        v18 = *(v0 + 152);
        v19 = *(v0 + 128);
        sub_100004F84(*(v0 + 136), &qword_100AD1420);
        sub_100004F84(v17, &qword_100AD1420);
        v36(v19, v18);
LABEL_16:
        sub_100004F84(*(v0 + 120), &unk_100AEEE20);
        v13 = v53;
        v20 = v54;
LABEL_17:

        goto LABEL_18;
      }

      v37 = *(v0 + 168);
      v38 = *(v0 + 152);
      v39 = *(v0 + 128);
      v45 = *(v0 + 136);
      v46 = *(v0 + 144);
      v47 = *(v0 + 120);
      (*v44)(v37, v26 + v30, v38);
      sub_10000A5AC(&qword_100AD9220, &type metadata accessor for UUID);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36(v37, v38);
      sub_100004F84(v45, &qword_100AD1420);
      sub_100004F84(v46, &qword_100AD1420);
      v36(v39, v38);
      sub_100004F84(v47, &qword_100AD1420);
      v13 = v53;
      v20 = v54;
      if ((v40 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v41 = v20;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_18:
    v16 = v55 + 1;
  }

  while (v52 != v55 + 1);

LABEL_31:
  v42 = *(v0 + 280);

  v43 = *(v0 + 8);

  return v43(v42, _swiftEmptyArrayStorage);
}

uint64_t sub_10062F9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10062FA68, v7, v6);
}

uint64_t sub_10062FA68()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10062FB10;
  v3 = v0[3];

  return sub_10062FC30(v1, v3);
}

uint64_t sub_10062FB10()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1000EC728, v3, v2);
}

uint64_t sub_10062FC30(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_10062FCCC, v5, v4);
}

uint64_t sub_10062FCCC()
{
  v25 = v0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 32);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 40);

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = *(v0 + 40);
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v4)))));
      v11 = v10[1];
      v4 &= v4 - 1;
      v24[0] = *v10;
      v24[1] = v11;

      sub_10065024C(v24, v9, sub_100652440, 0, (v0 + 16), sub_100652458, 0);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      v16 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 80) = v16;
      if (v16)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v12 = *(v0 + 40);

  v15 = *(v0 + 16);
  *(v0 + 72) = v15;
  if (v15 >> 62)
  {
    goto LABEL_24;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 80) = v16;
  if (v16)
  {
LABEL_13:
    if (v16 < 1)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 88) = 0;
      v17 = *(v0 + 72);
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v17 + 32);
      }

      *(v0 + 96) = v18;
      v19 = *(v0 + 48);

      if (v19)
      {
        swift_getObjectType();
        v20 = dispatch thunk of Actor.unownedExecutor.getter();
        v14 = v21;
      }

      else
      {
        v20 = 0;
        v14 = 0;
      }

      *(v0 + 104) = v20;
      *(v0 + 112) = v14;
      v16 = sub_10062FF60;
      v13 = v20;
    }

    return _swift_task_switch(v16, v13, v14);
  }

LABEL_25:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10062FF60()
{
  v1 = v0[12];
  v2 = v0[6];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  v7 = OBJC_IVAR____TtC7Journal5Asset_id;
  v0[15] = OBJC_IVAR____TtC7Journal5Asset_id;
  (*(v4 + 16))(v6 + v5, v1 + v7, v3);
  v8 = sub_1004960D4(v6);
  v0[16] = v8;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_100630124;

  return sub_10056824C(v2, &protocol witness table for MainActor, v8);
}

uint64_t sub_100630124()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_100630268, v3, v2);
}

uint64_t sub_100630268()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_1006302CC, v1, v2);
}

uint64_t sub_1006302CC()
{
  v20 = v0;
  v1 = UUID.uuidString.getter();
  v3 = v2;
  if (qword_100AD00B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AEB9B0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100008458(v1, v3, &v19);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100008458(0x206465766F6D6552, 0xEE002E7465737361, &v19);
    _os_log_impl(&_mh_execute_header, v5, v6, "photoSubtraction [%s] %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[11] + 1;
  if (v10 == v0[10])
  {

    v11 = v0[1];

    return v11();
  }

  else
  {
    v0[11] = v10;
    v13 = v0[9];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v13 + 8 * v10 + 32);
    }

    v0[12] = v14;
    v15 = v0[6];

    if (v15)
    {
      swift_getObjectType();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v0[13] = v16;
    v0[14] = v18;

    return _swift_task_switch(sub_10062FF60, v16, v18);
  }
}

uint64_t sub_10063057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for PHPickerResult();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v9;
  v6[17] = v8;

  return _swift_task_switch(sub_100630674, v9, v8);
}

uint64_t sub_100630674()
{
  v1 = *(v0 + 72);
  *(v0 + 64) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  if (v2)
  {
    *(v0 + 152) = *(*(v0 + 80) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 232) = v6;
    *(v0 + 160) = *(v4 + 56);
    *(v0 + 168) = v5;
    *(v0 + 184) = _swiftEmptyArrayStorage;
    *(v0 + 192) = _swiftEmptyArrayStorage;
    *(v0 + 176) = 0;
    v5(*(v0 + 112), v1 + ((v6 + 32) & ~v6), v3);
    v7 = swift_task_alloc();
    *(v0 + 200) = v7;
    *v7 = v0;
    v7[1] = sub_100630918;
    v8 = *(v0 + 152);
    v9 = *(v0 + 112);

    return sub_100630FCC(v8, v9);
  }

  *(v0 + 216) = _swiftEmptyArrayStorage;
  v11 = [*(v0 + 80) viewIfLoaded];
  v12 = [v11 window];

  if (!v12)
  {
    v13 = [*(v0 + 80) presentedViewController];
    if (!v13)
    {
LABEL_11:

      goto LABEL_12;
    }

    v12 = v13;
  }

  v14 = *(v0 + 80);

  if ([v14 isBeingDismissed])
  {
    goto LABEL_11;
  }

  swift_beginAccess();

  sub_1006AD688(v15);
  swift_endAccess();
  if (!*&_swiftEmptyArrayStorage[2])
  {
    goto LABEL_11;
  }

  v16 = *(v0 + 88);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 deselectAssetsWithIdentifiers:isa];

LABEL_12:
  v18 = *(*(v0 + 80) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v19 = swift_task_alloc();
  *(v0 + 224) = v19;
  *v19 = v0;
  v19[1] = sub_100630E20;

  return sub_10065261C(v18);
}

uint64_t sub_100630918(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 56) = a2;
  *(v4 + 40) = v2;
  *(v4 + 48) = a1;
  *(v4 + 208) = a1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);

  return _swift_task_switch(sub_100630A48, v6, v5);
}

uint64_t sub_100630A48()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = (v0 + 64);
    v3 = v1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v5 + 8))(v4, v6);
    goto LABEL_14;
  }

  v7 = *(v0 + 112);
  if ((*(v0 + 56) & 1) == 0)
  {
LABEL_13:
    (*(*(v0 + 104) + 8))(v7, *(v0 + 96));
    v2 = (v0 + 192);
LABEL_14:
    v13 = *(v0 + 184);
    goto LABEL_15;
  }

  v8 = PHPickerResult.assetIdentifier.getter();
  if (!v9)
  {
    v7 = *(v0 + 112);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_10009BCC8(0, *(v13 + 2) + 1, 1, *(v0 + 184));
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_10009BCC8((v14 > 1), v15 + 1, 1, v13);
  }

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  *(v13 + 2) = v15 + 1;
  v16 = &v13[16 * v15];
  *(v16 + 4) = v10;
  *(v16 + 5) = v11;
  v2 = (v0 + 192);
LABEL_15:
  v17 = *v2;
  v18 = *(v0 + 176) + 1;
  if (v18 == *(v0 + 144))
  {
    *(v0 + 216) = v17;
    v19 = [*(v0 + 80) viewIfLoaded];
    v20 = [v19 window];

    if (!v20)
    {
      v21 = [*(v0 + 80) presentedViewController];
      if (!v21)
      {
        goto LABEL_25;
      }

      v20 = v21;
    }

    v22 = *(v0 + 80);

    if (![v22 isBeingDismissed])
    {
      swift_beginAccess();

      sub_1006AD688(v23);
      swift_endAccess();
      if (*(v13 + 2))
      {
        v24 = *(v0 + 88);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v24 deselectAssetsWithIdentifiers:isa];

LABEL_26:
        v30 = *(*(v0 + 80) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
        v31 = swift_task_alloc();
        *(v0 + 224) = v31;
        *v31 = v0;
        v31[1] = sub_100630E20;

        return sub_10065261C(v30);
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  *(v0 + 184) = v13;
  *(v0 + 192) = v17;
  *(v0 + 176) = v18;
  (*(v0 + 168))(*(v0 + 112), *(v0 + 72) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + *(v0 + 160) * v18, *(v0 + 96));
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_100630918;
  v27 = *(v0 + 152);
  v28 = *(v0 + 112);

  return sub_100630FCC(v27, v28);
}

uint64_t sub_100630E20()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100630F64, v3, v2);
}

uint64_t sub_100630F64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100630FCC(uint64_t a1, uint64_t a2)
{
  v3[79] = v2;
  v3[78] = a2;
  v3[77] = a1;
  v3[80] = swift_getObjectType();
  sub_1000F24EC(&qword_100AD5170);
  v3[81] = swift_task_alloc();
  v3[82] = type metadata accessor for AssetAttachment.AssetType(0);
  v3[83] = swift_task_alloc();
  v3[84] = sub_1000F24EC(&unk_100AEE0A0);
  v3[85] = swift_task_alloc();
  v4 = type metadata accessor for PhotoLibraryAssetMetadata();
  v3[86] = v4;
  v3[87] = *(v4 - 8);
  v3[88] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = _s13PhotoMetadataVMa();
  v3[105] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[106] = v5;
  v3[107] = *(v5 - 8);
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[115] = v6;
  v3[116] = *(v6 - 8);
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v7 = type metadata accessor for AssetSource();
  v3[119] = v7;
  v3[120] = *(v7 - 8);
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = sub_1000F24EC(&qword_100AEB9D0);
  v3[127] = swift_task_alloc();
  v3[128] = sub_1000F24EC(&unk_100AD7C40);
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v8 = type metadata accessor for UTType();
  v3[133] = v8;
  v3[134] = *(v8 - 8);
  v3[135] = swift_task_alloc();
  v3[136] = swift_task_alloc();
  v3[137] = swift_task_alloc();
  v3[138] = swift_task_alloc();
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();
  v3[142] = swift_task_alloc();
  v3[143] = swift_task_alloc();
  v3[144] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v3[145] = v9;
  v3[146] = *(v9 - 8);
  v3[147] = swift_task_alloc();
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v3[150] = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[151] = v10;
  v3[152] = *(v10 - 8);
  v3[153] = swift_task_alloc();
  v11 = type metadata accessor for JournalFeatureFlags();
  v3[154] = v11;
  v3[155] = *(v11 - 8);
  v3[156] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD5B30);
  v3[157] = swift_task_alloc();
  v12 = type metadata accessor for MultiPinMapAssetMetadata();
  v3[158] = v12;
  v3[159] = *(v12 - 8);
  v3[160] = swift_task_alloc();
  v13 = type metadata accessor for AssetPlacement();
  v3[161] = v13;
  v3[162] = *(v13 - 8);
  v3[163] = swift_task_alloc();
  v3[164] = swift_task_alloc();
  v3[165] = type metadata accessor for MainActor();
  v3[166] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[167] = v15;
  v3[168] = v14;

  return _swift_task_switch(sub_100631818, v15, v14);
}

uint64_t sub_100631818()
{
  v1 = PHPickerResult.assetIdentifier.getter();
  *(v0 + 1352) = v1;
  *(v0 + 1360) = v2;
  if (!v2)
  {

    goto LABEL_7;
  }

  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 632);
  v6 = OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerActiveFetchRequests;
  *(v0 + 1368) = OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerActiveFetchRequests;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_100094E98(v3, v4);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 16 * v8 + 8);

      if (v10)
      {

LABEL_7:

        v11 = *(v0 + 8);

        return v11(0, 0);
      }
    }

    else
    {
    }
  }

  *(v0 + 1376) = PHPickerResult.itemProvider.getter();
  _StringGuts.grow(_:)(18);

  v13._countAndFlagsBits = v3;
  v13._object = v4;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  *(v0 + 1384) = 0x6464416F746F6870;
  *(v0 + 1392) = 0xEF5B206E6F697469;
  v15 = *(v5 + v6);
  v16 = *(v15 + 16);
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = sub_100094E98(v3, v4);
    if (v18)
    {
      v19 = *(v15 + 56) + 16 * v17;
      v20 = *v19;
      *(v0 + 1400) = *v19;
      v21 = *(v19 + 8);
      v22 = v20;

      if ((v21 & 1) == 0)
      {
        v82 = *(v0 + 1328);
        v83 = *(v0 + 1312);
        v84 = *(v0 + 1296);
        v85 = *(v0 + 1288);

        *v83 = static AssetPlacement.maxGridCount.getter();
        v86 = enum case for AssetPlacement.grid(_:);
        v87 = *(v84 + 104);
        *(v0 + 1408) = v87;
        *(v0 + 1416) = (v84 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v87(v83, v86, v85);
        if (v82)
        {
          swift_getObjectType();
          v88 = dispatch thunk of Actor.unownedExecutor.getter();
          v27 = v89;
        }

        else
        {
          v88 = 0;
          v27 = 0;
        }

        *(v0 + 1432) = v27;
        *(v0 + 1424) = v88;
        v25 = sub_100632B24;
        v26 = v88;

        return _swift_task_switch(v25, v26, v27);
      }
    }

    else
    {
    }
  }

  v23 = [*(v0 + 1376) registeredContentTypes];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v168 = v24;
  v160 = *(v24 + 16);
  if (v160)
  {
    v28 = 0;
    v29 = *(v0 + 1072);
    v156 = v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v150 = *(v0 + 1008);
    v130 = (v29 + 32);
    v143 = (v29 + 48);
    v146 = v29;
    v30 = (v29 + 8);
    v139 = (v29 + 8);
    while (1)
    {
      if (v28 >= *(v168 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v32 = *(v0 + 1128);
      v33 = *(v0 + 1064);
      v34 = *(v0 + 1056);
      v35 = *(v146 + 16);
      v35(v32, v156 + *(v146 + 72) * v28, v33);
      v142 = v35;
      v35(v34, v32, v33);
      (*(v146 + 56))(v34, 0, 1, v33);
      if (qword_100AD00B0 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 1064);
      v37 = *(v0 + 1056);
      v38 = *(v0 + 1016);
      v39 = sub_10000617C(*(v0 + 1024), qword_100AEB998);
      v40 = *(v150 + 48);
      sub_1000082B4(v37, v38, &unk_100AD7C40);
      sub_1000082B4(v39, v38 + v40, &unk_100AD7C40);
      v41 = *v143;
      v42 = (*v143)(v38, 1, v36);
      v43 = *(v0 + 1064);
      if (v42 == 1)
      {
        break;
      }

      sub_1000082B4(*(v0 + 1016), *(v0 + 1048), &unk_100AD7C40);
      if (v41(v38 + v40, 1, v43) == 1)
      {
        v44 = *(v0 + 1064);
        v45 = *(v0 + 1048);
        sub_100004F84(*(v0 + 1056), &unk_100AD7C40);
        (*v30)(v45, v44);
LABEL_19:
        sub_100004F84(*(v0 + 1016), &qword_100AEB9D0);
        v31 = *v30;
        goto LABEL_20;
      }

      v46 = *(v0 + 1120);
      v47 = *(v0 + 1064);
      v48 = *(v0 + 1048);
      v133 = *(v0 + 1056);
      v136 = *(v0 + 1016);
      v49 = *v130;
      (*v130)(v46, v38 + v40, v47);
      sub_10000A5AC(&qword_100AD5410, &type metadata accessor for UTType);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *v139;
      (*v139)(v46, v47);
      sub_100004F84(v133, &unk_100AD7C40);
      v51 = v48;
      v30 = v139;
      v31(v51, v47);
      sub_100004F84(v136, &unk_100AD7C40);
      if (v50)
      {

LABEL_39:
        v91 = *(v0 + 1168);
        v92 = *(v0 + 1152);
        v93 = *(v0 + 1144);
        v155 = *(v0 + 1160);
        v94 = *(v0 + 1136);
        v95 = *(v0 + 1064);
        v145 = *(v0 + 1176);
        v149 = v95;
        v96 = *(v0 + 1000);
        v128 = *(v0 + 1184);
        v97 = *(v0 + 960);
        v126 = *(v0 + 952);
        v132 = *(v0 + 936);
        v159 = *(v0 + 944);
        v163 = *(v0 + 928);
        v135 = *(v0 + 920);
        v138 = *(v0 + 992);
        v49(v94, *(v0 + 1128), v95);
        v49(v93, v94, v95);
        v142(v92, v93, v95);
        (*(v91 + 104))(v128, enum case for AssetType.livePhoto(_:), v155);
        (*(v97 + 104))(v96, enum case for AssetSource.imagePicker(_:), v126);
        UUID.init()();
        objc_allocWithZone(type metadata accessor for PlaceholderAsset());
        (*(v163 + 16))(v132, v159, v135);
        v166 = (v91 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v169 = *(v91 + 16);
        v169(v145, v128, v155);
        (*(v97 + 16))(v138, v96, v126);
        v69 = sub_100285908(v132, v145, v138);
        (*(v163 + 8))(v159, v135);
        (*(v97 + 8))(v96, v126);
        v98 = *(v91 + 8);
        v70 = v91 + 8;
        v71 = v98;
        v98(v128, v155);
        (*v139)(v93, v149);
        v72 = 1;
        goto LABEL_40;
      }

LABEL_20:
      ++v28;
      v25 = (v31)(*(v0 + 1128), *(v0 + 1064));
      if (v160 == v28)
      {
        goto LABEL_29;
      }
    }

    sub_100004F84(*(v0 + 1056), &unk_100AD7C40);
    if (v41(v38 + v40, 1, v43) == 1)
    {
      v90 = *(v0 + 1016);

      sub_100004F84(v90, &unk_100AD7C40);
      v49 = *v130;
      goto LABEL_39;
    }

    goto LABEL_19;
  }

LABEL_29:
  v52 = *(v0 + 1376);

  v53 = [v52 registeredContentTypes];
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v165 = *(v54 + 16);
  if (v165)
  {
    v55 = 0;
    v56 = *(v0 + 1072);
    while (v55 < *(v54 + 16))
    {
      v57 = *(v0 + 1120);
      v58 = *(v0 + 1064);
      v59 = *(v56 + 16);
      v59(*(v0 + 1096), v54 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v55, v58);
      static UTType.movie.getter();
      v60 = UTType.conforms(to:)();
      v61 = *(v56 + 8);
      v61(v57, v58);
      if (v60)
      {
        v73 = *(v0 + 1168);
        v167 = *(v0 + 1152);
        v74 = *(v0 + 1112);
        v75 = *(v0 + 1104);
        v76 = *(v0 + 1096);
        v77 = *(v0 + 1072);
        v78 = *(v0 + 1064);
        v127 = *(v0 + 1000);
        v129 = *(v0 + 1184);
        v134 = *(v0 + 992);
        v137 = *(v0 + 1176);
        v148 = *(v0 + 960);
        v152 = *(v0 + 1160);
        v125 = *(v0 + 952);
        v131 = *(v0 + 936);
        v154 = *(v0 + 944);
        v158 = *(v0 + 928);
        v162 = *(v0 + 920);

        v79 = *(v77 + 32);
        v141 = v78;
        v79(v75, v76, v78);
        v79(v74, v75, v78);
        v59(v167, v74, v78);
        (*(v73 + 104))(v129, enum case for AssetType.video(_:), v152);
        (*(v148 + 104))(v127, enum case for AssetSource.imagePicker(_:), v125);
        UUID.init()();
        objc_allocWithZone(type metadata accessor for PlaceholderAsset());
        (*(v158 + 16))(v131, v154, v162);
        v166 = (v73 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v169 = *(v73 + 16);
        v169(v137, v129, v152);
        (*(v148 + 16))(v134, v127, v125);
        v69 = sub_100285908(v131, v137, v134);
        (*(v158 + 8))(v154, v162);
        (*(v148 + 8))(v127, v125);
        v80 = *(v73 + 8);
        v70 = v73 + 8;
        v71 = v80;
        v80(v129, v152);
        v61(v74, v141);
        v72 = 0;
        v81 = 0;
        goto LABEL_41;
      }

      ++v55;
      v25 = (v61)(*(v0 + 1096), *(v0 + 1064));
      if (v165 == v55)
      {
        goto LABEL_34;
      }
    }

LABEL_49:
    __break(1u);
    return _swift_task_switch(v25, v26, v27);
  }

LABEL_34:
  v62 = *(v0 + 1184);
  v63 = *(v0 + 1168);
  v64 = *(v0 + 1160);
  v65 = *(v0 + 1000);
  v153 = *(v0 + 1176);
  v157 = *(v0 + 992);
  v66 = *(v0 + 960);
  v67 = *(v0 + 952);
  v161 = *(v0 + 944);
  v144 = v62;
  v147 = *(v0 + 936);
  v68 = *(v0 + 928);
  v151 = *(v0 + 920);

  static UTType.image.getter();
  v140 = v64;
  (*(v63 + 104))(v62, enum case for AssetType.photo(_:), v64);
  (*(v66 + 104))(v65, enum case for AssetSource.imagePicker(_:), v67);
  UUID.init()();
  objc_allocWithZone(type metadata accessor for PlaceholderAsset());
  (*(v68 + 16))(v147, v161, v151);
  v166 = (v63 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v169 = *(v63 + 16);
  v169(v153, v62, v64);
  (*(v66 + 16))(v157, v65, v67);
  v69 = sub_100285908(v147, v153, v157);
  (*(v68 + 8))(v161, v151);
  (*(v66 + 8))(v65, v67);
  v70 = v63 + 8;
  v71 = *(v63 + 8);
  v71(v144, v140);
  v72 = 0;
LABEL_40:
  v81 = 1;
LABEL_41:
  *(v0 + 1881) = v81;
  *(v0 + 1880) = v72;
  *(v0 + 1528) = v169;
  *(v0 + 1520) = v71;
  *(v0 + 1512) = v70;
  *(v0 + 1504) = v69;
  v99 = *(v0 + 1392);
  v100 = *(v0 + 1384);
  v101 = *(v0 + 1368);
  v102 = *(v0 + 1360);
  v103 = *(v0 + 1352);
  v164 = *(v0 + 1184);
  v104 = *(v0 + 1160);
  v105 = *(v0 + 632);
  v106 = v69;
  swift_unknownObjectWeakInit();
  PHPickerResult._preferredContentsRect(targetSize:)();
  *(v0 + 1536) = v107;
  *(v0 + 1544) = v108;
  *(v0 + 1552) = v109;
  *(v0 + 1560) = v110;
  PHPickerResult._preferredContentsRect(targetSize:)();
  *(v0 + 1568) = v111;
  *(v0 + 1576) = v112;
  *(v0 + 1584) = v113;
  *(v0 + 1592) = v114;
  PHPickerResult._preferredContentsRect(targetSize:)();
  *(v0 + 1600) = v115;
  *(v0 + 1608) = v116;
  *(v0 + 1616) = v117;
  *(v0 + 1624) = v118;
  sub_100653A04(0xD00000000000001BLL, 0x80000001008FF2A0, v100, v99, &static os_log_type_t.debug.getter);
  swift_beginAccess();

  v119 = v106;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v170 = *(v105 + v101);
  *(v105 + v101) = 0x8000000000000000;
  sub_100202DE8(v119, 1, v103, v102, isUniquelyReferenced_nonNull_native);

  *(v105 + v101) = v170;
  swift_endAccess();
  v121 = OBJC_IVAR____TtC7Journal5Asset_type;
  *(v0 + 1632) = v166;
  v169(v164, &v119[v121], v104);
  v122 = swift_task_alloc();
  *(v0 + 1640) = v122;
  *v122 = v0;
  v122[1] = sub_100635200;
  v123 = *(v0 + 1184);
  v124 = *(v0 + 616);

  return sub_1006490C0(v124, v123);
}

uint64_t sub_100632B24()
{
  v1 = *(*(v0 + 616) + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  if (v1)
  {
    v2 = *(v0 + 1272);
    v3 = *(v0 + 1264);
    v4 = *(v0 + 1256);
    if (*&v1[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
    {
      v5 = v1;

      sub_1000768B4(v4);

      if ((*(v2 + 48))(v4, 1, v3) != 1)
      {
        v6 = *(v0 + 1280);
        v7 = *(v0 + 1272);
        v8 = *(v0 + 1264);
        (*(v7 + 32))(v6, *(v0 + 1256), v8);
        MultiPinMapAssetMetadata.visitsData.getter();

        (*(v7 + 8))(v6, v8);
        goto LABEL_8;
      }
    }

    else
    {
      (*(v2 + 56))(*(v0 + 1256), 1, 1, *(v0 + 1264));
    }

    sub_100004F84(*(v0 + 1256), &unk_100AD5B30);
LABEL_8:
  }

  v9 = sub_1004448B0();
  if (sub_100119B20(v9))
  {
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1296);
    v12 = *(v0 + 1288);

    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 1344);
    v14 = *(v0 + 1336);
    v15 = sub_100632FE8;
    goto LABEL_23;
  }

  v16 = *(v0 + 1408);
  v17 = *(v0 + 1304);
  v18 = *(v0 + 1296);
  v19 = *(v0 + 1288);
  v20 = *(v0 + 616);
  *(v0 + 1872) = enum case for AssetPlacement.hidden(_:);
  v16(v17);
  *(v0 + 1440) = sub_10000A5AC(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v18 + 8);
  *(v0 + 1448) = v21;
  *(v0 + 1456) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v17, v19);
  v22 = *(v20 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = sub_10005AAB0(128);
  if (qword_100AD0A20 != -1)
  {
    v40 = v24;
    swift_once();
    v24 = v40;
  }

  v25 = qword_100B30F68;
  if (v24)
  {
    v25 = qword_100B30F68 - 1;
    if (__OFSUB__(qword_100B30F68, 1))
    {
      __break(1u);
      return _swift_task_switch(v24, v14, v13);
    }
  }

  if (v23 >= v25)
  {
    v35 = *(v0 + 1312);
    v36 = *(v0 + 1288);

    v21(v35, v36);
    v13 = *(v0 + 1344);
    v14 = *(v0 + 1336);
    v15 = sub_100634DEC;
LABEL_23:
    v24 = v15;

    return _swift_task_switch(v24, v14, v13);
  }

  v26 = *(v0 + 1248);
  v27 = *(v0 + 1240);
  v28 = *(v0 + 1232);
  (*(v27 + 104))(v26, enum case for JournalFeatureFlags.enhancedSync(_:), v28);
  v29 = JournalFeatureFlags.isEnabled.getter();
  (*(v27 + 8))(v26, v28);
  v30 = *(v0 + 1328);
  if (v29)
  {
    *(v0 + 1464) = CFAbsoluteTimeGetCurrent();
    v31 = swift_task_alloc();
    *(v0 + 1472) = v31;
    *v31 = v0;
    v31[1] = sub_100633D40;
    v32 = *(v0 + 1400);
    v33 = *(v0 + 1312);

    return sub_10056B238(v30, &protocol witness table for MainActor, v32, v33, 1);
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 1488) = v37;
    *v37 = v0;
    v37[1] = sub_1006340C4;
    v38 = *(v0 + 1400);
    v39 = *(v0 + 1312);

    return sub_1001F8424(v30, &protocol witness table for MainActor, v38, v39);
  }
}

void sub_100632FE8()
{
  v1 = [*(v0 + 1376) registeredContentTypes];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v135 = v2;
  v127 = *(v2 + 16);
  if (v127)
  {
    v3 = 0;
    v4 = *(v0 + 1072);
    v123 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v117 = *(v0 + 1008);
    v97 = (v4 + 32);
    v110 = (v4 + 48);
    v113 = v4;
    v5 = (v4 + 8);
    v106 = (v4 + 8);
    while (1)
    {
      if (v3 >= *(v135 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v7 = *(v0 + 1128);
      v8 = *(v0 + 1064);
      v9 = *(v0 + 1056);
      v10 = *(v113 + 16);
      v10(v7, v123 + *(v113 + 72) * v3, v8);
      v109 = v10;
      v10(v9, v7, v8);
      (*(v113 + 56))(v9, 0, 1, v8);
      if (qword_100AD00B0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 1064);
      v12 = *(v0 + 1056);
      v13 = *(v0 + 1016);
      v14 = sub_10000617C(*(v0 + 1024), qword_100AEB998);
      v15 = *(v117 + 48);
      sub_1000082B4(v12, v13, &unk_100AD7C40);
      sub_1000082B4(v14, v13 + v15, &unk_100AD7C40);
      v16 = *v110;
      v17 = (*v110)(v13, 1, v11);
      v18 = *(v0 + 1064);
      if (v17 == 1)
      {
        break;
      }

      sub_1000082B4(*(v0 + 1016), *(v0 + 1048), &unk_100AD7C40);
      if (v16(v13 + v15, 1, v18) == 1)
      {
        v19 = *(v0 + 1064);
        v20 = *(v0 + 1048);
        sub_100004F84(*(v0 + 1056), &unk_100AD7C40);
        (*v5)(v20, v19);
LABEL_4:
        sub_100004F84(*(v0 + 1016), &qword_100AEB9D0);
        v6 = *v5;
        goto LABEL_5;
      }

      v21 = *(v0 + 1120);
      v22 = *(v0 + 1064);
      v23 = *(v0 + 1048);
      v100 = *(v0 + 1056);
      v103 = *(v0 + 1016);
      v24 = *v97;
      (*v97)(v21, v13 + v15, v22);
      sub_10000A5AC(&qword_100AD5410, &type metadata accessor for UTType);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v6 = *v106;
      (*v106)(v21, v22);
      sub_100004F84(v100, &unk_100AD7C40);
      v26 = v23;
      v5 = v106;
      v6(v26, v22);
      sub_100004F84(v103, &unk_100AD7C40);
      if (v25)
      {

LABEL_22:
        v58 = *(v0 + 1168);
        v59 = *(v0 + 1152);
        v60 = *(v0 + 1144);
        v122 = *(v0 + 1160);
        v61 = *(v0 + 1136);
        v62 = *(v0 + 1064);
        v112 = *(v0 + 1176);
        v116 = v62;
        v63 = *(v0 + 1000);
        v95 = *(v0 + 1184);
        v64 = *(v0 + 960);
        v93 = *(v0 + 952);
        v99 = *(v0 + 936);
        v126 = *(v0 + 944);
        v130 = *(v0 + 928);
        v102 = *(v0 + 920);
        v105 = *(v0 + 992);
        v24(v61, *(v0 + 1128), v62);
        v24(v60, v61, v62);
        v109(v59, v60, v62);
        (*(v58 + 104))(v95, enum case for AssetType.livePhoto(_:), v122);
        (*(v64 + 104))(v63, enum case for AssetSource.imagePicker(_:), v93);
        UUID.init()();
        objc_allocWithZone(type metadata accessor for PlaceholderAsset());
        (*(v130 + 16))(v99, v126, v102);
        v133 = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v136 = *(v58 + 16);
        v136(v112, v95, v122);
        (*(v64 + 16))(v105, v63, v93);
        v44 = sub_100285908(v99, v112, v105);
        (*(v130 + 8))(v126, v102);
        (*(v64 + 8))(v63, v93);
        v65 = *(v58 + 8);
        v45 = v58 + 8;
        v46 = v65;
        v65(v95, v122);
        (*v106)(v60, v116);
        v47 = 1;
        goto LABEL_23;
      }

LABEL_5:
      ++v3;
      v6(*(v0 + 1128), *(v0 + 1064));
      if (v127 == v3)
      {
        goto LABEL_14;
      }
    }

    sub_100004F84(*(v0 + 1056), &unk_100AD7C40);
    if (v16(v13 + v15, 1, v18) == 1)
    {
      v57 = *(v0 + 1016);

      sub_100004F84(v57, &unk_100AD7C40);
      v24 = *v97;
      goto LABEL_22;
    }

    goto LABEL_4;
  }

LABEL_14:
  v27 = *(v0 + 1376);

  v28 = [v27 registeredContentTypes];
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v132 = *(v29 + 16);
  if (v132)
  {
    v30 = 0;
    v31 = *(v0 + 1072);
    while (v30 < *(v29 + 16))
    {
      v32 = *(v0 + 1120);
      v33 = *(v0 + 1064);
      v34 = *(v31 + 16);
      v34(*(v0 + 1096), v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v33);
      static UTType.movie.getter();
      v35 = UTType.conforms(to:)();
      v36 = *(v31 + 8);
      v36(v32, v33);
      if (v35)
      {
        v96 = *(v0 + 1184);
        v104 = *(v0 + 1176);
        v48 = *(v0 + 1168);
        v119 = *(v0 + 1160);
        v134 = *(v0 + 1152);
        v49 = *(v0 + 1112);
        v50 = *(v0 + 1104);
        v51 = *(v0 + 1096);
        v52 = *(v0 + 1072);
        v53 = *(v0 + 1064);
        v115 = *(v0 + 960);
        v92 = *(v0 + 952);
        v94 = *(v0 + 1000);
        v98 = *(v0 + 936);
        v101 = *(v0 + 992);
        v121 = *(v0 + 944);
        v125 = *(v0 + 928);
        v129 = *(v0 + 920);

        v54 = *(v52 + 32);
        v108 = v53;
        v54(v50, v51, v53);
        v54(v49, v50, v53);
        v34(v134, v49, v53);
        (*(v48 + 104))(v96, enum case for AssetType.video(_:), v119);
        (*(v115 + 104))(v94, enum case for AssetSource.imagePicker(_:), v92);
        UUID.init()();
        objc_allocWithZone(type metadata accessor for PlaceholderAsset());
        (*(v125 + 16))(v98, v121, v129);
        v133 = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v136 = *(v48 + 16);
        v136(v104, v96, v119);
        (*(v115 + 16))(v101, v94, v92);
        v44 = sub_100285908(v98, v104, v101);
        (*(v125 + 8))(v121, v129);
        (*(v115 + 8))(v94, v92);
        v55 = *(v48 + 8);
        v45 = v48 + 8;
        v46 = v55;
        v55(v96, v119);
        v36(v49, v108);
        v47 = 0;
        v56 = 0;
        goto LABEL_24;
      }

      ++v30;
      v36(*(v0 + 1096), *(v0 + 1064));
      if (v132 == v30)
      {
        goto LABEL_19;
      }
    }

LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_19:
    v37 = *(v0 + 1184);
    v38 = *(v0 + 1168);
    v39 = *(v0 + 1160);
    v40 = *(v0 + 1000);
    v120 = *(v0 + 1176);
    v124 = *(v0 + 992);
    v41 = *(v0 + 960);
    v42 = *(v0 + 952);
    v128 = *(v0 + 944);
    v111 = v37;
    v114 = *(v0 + 936);
    v43 = *(v0 + 928);
    v118 = *(v0 + 920);

    static UTType.image.getter();
    v107 = v39;
    (*(v38 + 104))(v37, enum case for AssetType.photo(_:), v39);
    (*(v41 + 104))(v40, enum case for AssetSource.imagePicker(_:), v42);
    UUID.init()();
    objc_allocWithZone(type metadata accessor for PlaceholderAsset());
    (*(v43 + 16))(v114, v128, v118);
    v133 = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v136 = *(v38 + 16);
    v136(v120, v37, v39);
    (*(v41 + 16))(v124, v40, v42);
    v44 = sub_100285908(v114, v120, v124);
    (*(v43 + 8))(v128, v118);
    (*(v41 + 8))(v40, v42);
    v45 = v38 + 8;
    v46 = *(v38 + 8);
    v46(v111, v107);
    v47 = 0;
LABEL_23:
    v56 = 1;
LABEL_24:
    *(v0 + 1881) = v56;
    *(v0 + 1880) = v47;
    *(v0 + 1528) = v136;
    *(v0 + 1520) = v46;
    *(v0 + 1512) = v45;
    *(v0 + 1504) = v44;
    v66 = *(v0 + 1392);
    v67 = *(v0 + 1384);
    v68 = *(v0 + 1368);
    v69 = *(v0 + 1360);
    v70 = *(v0 + 1352);
    v131 = *(v0 + 1184);
    v71 = *(v0 + 1160);
    v72 = *(v0 + 632);
    v73 = v44;
    swift_unknownObjectWeakInit();
    PHPickerResult._preferredContentsRect(targetSize:)();
    *(v0 + 1536) = v74;
    *(v0 + 1544) = v75;
    *(v0 + 1552) = v76;
    *(v0 + 1560) = v77;
    PHPickerResult._preferredContentsRect(targetSize:)();
    *(v0 + 1568) = v78;
    *(v0 + 1576) = v79;
    *(v0 + 1584) = v80;
    *(v0 + 1592) = v81;
    PHPickerResult._preferredContentsRect(targetSize:)();
    *(v0 + 1600) = v82;
    *(v0 + 1608) = v83;
    *(v0 + 1616) = v84;
    *(v0 + 1624) = v85;
    sub_100653A04(0xD00000000000001BLL, 0x80000001008FF2A0, v67, v66, &static os_log_type_t.debug.getter);
    swift_beginAccess();

    v86 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = *(v72 + v68);
    *(v72 + v68) = 0x8000000000000000;
    sub_100202DE8(v86, 1, v70, v69, isUniquelyReferenced_nonNull_native);

    *(v72 + v68) = v137;
    swift_endAccess();
    v88 = OBJC_IVAR____TtC7Journal5Asset_type;
    *(v0 + 1632) = v133;
    v136(v131, &v86[v88], v71);
    v89 = swift_task_alloc();
    *(v0 + 1640) = v89;
    *v89 = v0;
    v89[1] = sub_100635200;
    v90 = *(v0 + 1184);
    v91 = *(v0 + 616);

    sub_1006490C0(v91, v90);
  }
}

uint64_t sub_100633D40()
{
  v1 = *v0;

  v2 = *(v1 + 1432);
  v3 = *(v1 + 1424);

  return _swift_task_switch(sub_100633E60, v3, v2);
}

uint64_t sub_100633E60()
{
  (*(v0[152] + 104))(v0[153], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[151]);

  v1 = swift_task_alloc();
  v0[185] = v1;
  *v1 = v0;
  v1[1] = sub_100633F5C;
  v2 = v0[153];
  v3 = v0[77];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_1002D2D78, v3, &type metadata for () + 8);
}

uint64_t sub_100633F5C()
{
  v2 = *v1;

  if (v0)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v2[152] + 8))(v2[153], v2[151]);

    v4 = v2[179];
    v5 = v2[178];

    return _swift_task_switch(sub_100634484, v5, v4);
  }
}

uint64_t sub_1006340C4()
{
  v1 = *v0;

  v2 = *(v1 + 1432);
  v3 = *(v1 + 1424);

  return _swift_task_switch(sub_1006341E4, v3, v2);
}

uint64_t sub_1006341E4()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1288);
  (*(v0 + 1408))(v2, *(v0 + 1872), v3);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  v1(v2, v3);
  if (v4)
  {
LABEL_2:

    (*(v0 + 1448))(*(v0 + 1312), *(v0 + 1288));
    v5 = *(v0 + 1344);
    v6 = *(v0 + 1336);

    return _swift_task_switch(sub_10063495C, v6, v5);
  }

  (*(*(v0 + 1168) + 104))(*(v0 + 1192), enum case for AssetType.multiPinMap(_:), *(v0 + 1160));
  sub_10000A5AC(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1168);
  v9 = *(v0 + 1160);
  if (*(v0 + 552) == *(v0 + 568) && *(v0 + 560) == *(v0 + 576))
  {
    (*(v8 + 8))(*(v0 + 1192), *(v0 + 1160));
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v8 + 8))(v7, v9);

    if ((v10 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v11 = *(v0 + 1328);
  v12 = swift_task_alloc();
  *(v0 + 1496) = v12;
  *v12 = v0;
  v12[1] = sub_1006347C0;

  return sub_10056923C(v11, &protocol witness table for MainActor);
}

uint64_t sub_100634484()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 928);
  v5 = *(v0 + 920);
  (*(v4 + 16))(v3, v2 + OBJC_IVAR____TtC7Journal5Asset_id, v5);
  (*(v4 + 56))(v3, 0, 1, v5);
  sub_1001F81C4(v3);
  sub_100004F84(v3, &qword_100AD1420);
  sub_10056B00C(v2, v1);
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1304);
  v8 = *(v0 + 1288);
  (*(v0 + 1408))(v7, *(v0 + 1872), v8);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6(v7, v8);
  if (v9)
  {
LABEL_2:

    (*(v0 + 1448))(*(v0 + 1312), *(v0 + 1288));
    v10 = *(v0 + 1344);
    v11 = *(v0 + 1336);

    return _swift_task_switch(sub_10063495C, v11, v10);
  }

  (*(*(v0 + 1168) + 104))(*(v0 + 1192), enum case for AssetType.multiPinMap(_:), *(v0 + 1160));
  sub_10000A5AC(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v0 + 1192);
  v13 = *(v0 + 1168);
  v14 = *(v0 + 1160);
  if (*(v0 + 552) == *(v0 + 568) && *(v0 + 560) == *(v0 + 576))
  {
    (*(v13 + 8))(*(v0 + 1192), *(v0 + 1160));
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v13 + 8))(v12, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v16 = *(v0 + 1328);
  v17 = swift_task_alloc();
  *(v0 + 1496) = v17;
  *v17 = v0;
  v17[1] = sub_1006347C0;

  return sub_10056923C(v16, &protocol witness table for MainActor);
}

uint64_t sub_1006347C0()
{
  v1 = *v0;

  v2 = *(v1 + 1432);
  v3 = *(v1 + 1424);

  return _swift_task_switch(sub_1006348E0, v3, v2);
}

uint64_t sub_1006348E0()
{

  (*(v0 + 1448))(*(v0 + 1312), *(v0 + 1288));
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1336);

  return _swift_task_switch(sub_10063495C, v2, v1);
}

uint64_t sub_10063495C()
{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[171];
  v6 = v0[170];
  v7 = v0[169];
  v8 = v0[79];

  sub_100653A04(0xD000000000000049, 0x80000001008FF730, v3, v2, &static os_log_type_t.debug.getter);

  swift_beginAccess();
  v9 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v8 + v5);
  *(v8 + v5) = 0x8000000000000000;
  sub_100202DE8(v9, 1, v7, v6, isUniquelyReferenced_nonNull_native);

  *(v8 + v5) = v13;
  swift_endAccess();

  swift_bridgeObjectRelease_n();

  v11 = v0[1];

  return v11(0, 0);
}

uint64_t sub_100634DEC()
{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];

  sub_100653A04(0xD00000000000003FLL, 0x80000001008FF780, v3, v2, &static os_log_type_t.error.getter);

  swift_bridgeObjectRelease_n();

  v5 = v0[1];

  return v5(0, 1);
}

uint64_t sub_100635200(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1520);
  v5 = *(*v1 + 1512);
  v6 = *(*v1 + 1184);
  v7 = *(*v1 + 1160);
  *(v3 + 1648) = a1;

  *(v3 + 1656) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v6, v7);
  v8 = *(v2 + 1344);
  v9 = *(v2 + 1336);

  return _swift_task_switch(sub_1006353B0, v9, v8);
}

uint64_t sub_1006353B0()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);

  *v2 = static AssetPlacement.maxGridCount.getter();
  *(v0 + 1876) = enum case for AssetPlacement.grid(_:);
  v4 = *(v3 + 104);
  *(v0 + 1664) = v4;
  *(v0 + 1672) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v2);
  v5 = swift_task_alloc();
  *(v0 + 1680) = v5;
  *v5 = v0;
  v5[1] = sub_1006354D4;
  v6 = *(v0 + 1648);
  v7 = *(v0 + 1504);
  v8 = *(v0 + 1304);
  v9 = *(v0 + 616);

  return sub_10044C1DC(v1, &protocol witness table for MainActor, v7, v9, v6, v8, 0);
}

uint64_t sub_1006354D4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1504);
  v5 = *(*v1 + 1304);
  v6 = *(*v1 + 1296);
  v7 = *(*v1 + 1288);
  *(v3 + 1882) = a1;

  v8 = *(v6 + 8);
  *(v3 + 1688) = v8;
  *(v3 + 1696) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v9 = *(v2 + 1344);
  v10 = *(v2 + 1336);

  return _swift_task_switch(sub_1006356AC, v10, v9);
}

uint64_t sub_1006356AC()
{
  v1 = *(v0 + 1882);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1328);
  if (*(v0 + 1882))
  {
    v5 = *(v0 + 856);
    v6 = *(v0 + 848);
    v7 = *(v0 + 752);
    _StringGuts.grow(_:)(65);
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    v8._object = 0x80000001008FF4D0;
    String.append(_:)(v8);
    if (v1 == 2)
    {
      v9 = 0xD00000000000001BLL;
    }

    else
    {
      v9 = 0xD00000000000001CLL;
    }

    if (v1 == 2)
    {
      v10 = "Failed to append placeholder (";
    }

    else
    {
      v10 = "processing failed";
    }

    v11 = v10 | 0x8000000000000000;
    String.append(_:)(*&v9);

    v12._countAndFlagsBits = 0xD000000000000021;
    v12._object = 0x80000001008FF510;
    String.append(_:)(v12);
    sub_100653A04(0, 0xE000000000000000, v3, v2, &static os_log_type_t.error.getter);

    (*(v5 + 56))(v7, 1, 1, v6);

    *(v0 + 1832) = static MainActor.shared.getter();
    v13 = swift_task_alloc();
    *(v0 + 1840) = v13;
    *v13 = v0;
    v13[1] = sub_10063B800;
    v14 = *(v0 + 752);
    v15 = *(v0 + 616);

    return sub_100653198(v15, v14, 0);
  }

  else
  {
    sub_100653A04(0xD000000000000025, 0x80000001008FF560, *(v0 + 1384), *(v0 + 1392), &static os_log_type_t.debug.getter);

    if (v4)
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

    *(v0 + 1712) = v19;
    *(v0 + 1704) = v17;

    return _swift_task_switch(sub_100635948, v17, v19);
  }
}

uint64_t sub_100635948()
{
  v1 = v0[172];
  v2 = v0[166];
  v3 = v0[144];
  v4 = swift_task_alloc();
  v0[215] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[216] = v5;
  *v5 = v0;
  v5[1] = sub_100635A50;
  v6 = v0[113];
  v7 = v0[106];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v2, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001008E1D00, sub_10017004C, v4, v7);
}

uint64_t sub_100635A50()
{
  v2 = *v1;
  *(*v1 + 1736) = v0;

  if (v0)
  {
    v3 = *(v2 + 1712);
    v4 = *(v2 + 1704);
    v5 = sub_100637EF0;
  }

  else
  {

    v3 = *(v2 + 1712);
    v4 = *(v2 + 1704);
    v5 = sub_100635B74;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100635B74()
{

  v1 = *(v0 + 1344);
  v2 = *(v0 + 1336);

  return _swift_task_switch(sub_100635BDC, v2, v1);
}

uint64_t sub_100635BDC()
{
  v318 = v0;
  v1 = *(v0 + 1881);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v4 = *(v0 + 856);
  v5 = *(v0 + 848);
  v6 = *(v4 + 32);
  *(v0 + 1744) = v6;
  *(v0 + 1752) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v6(v2, v3, v5);
  if (v1 != 1)
  {

    v39 = swift_task_alloc();
    *(v0 + 1776) = v39;
    *v39 = v0;
    v39[1] = sub_10063881C;
    v40 = *(v0 + 1392);
    v41 = *(v0 + 1384);
    v42 = *(v0 + 912);
    v43 = *(v0 + 840);
    v44 = *(v0 + 632);

    return sub_10064B144(v43, v42, v44, v41, v40);
  }

  v7 = *(v0 + 1880);
  v8 = *(v0 + 1392);
  v9 = *(v0 + 1384);
  v10 = *(v0 + 912);
  v11 = *(v0 + 840);

  sub_100649E14(v10, v9, v8, v11);
  if (v7)
  {
    v12 = *(v0 + 1168);
    v277 = *(v0 + 1184);
    v284 = *(v0 + 1160);
    v13 = *(v0 + 960);
    v269 = *(v0 + 952);
    v273 = *(v0 + 984);
    v291 = *(v0 + 1000);
    v296 = *(v0 + 944);
    v14 = *(v0 + 912);
    v15 = *(v0 + 856);
    v16 = *(v0 + 848);
    v17 = *(v0 + 840);
    v18 = *(v0 + 816);
    v303 = *(v0 + 808);
    v19 = *(v0 + 736);
    (*(v13 + 104))();
    v311 = *(v15 + 16);
    v311(v18, v14, v16);
    v265 = *(v15 + 56);
    v265(v18, 0, 1, v16);
    sub_1000082B4(v17, v19, &unk_100AD4790);
    (*(v12 + 104))(v277, enum case for AssetType.livePhoto(_:), v284);
    (*(v13 + 16))(v291, v273, v269);
    UUID.init()();
    v20 = objc_allocWithZone(type metadata accessor for LivePhotoAsset());
    v21 = sub_100116748(v296, v277, v291);
    sub_1000082B4(v18, v303, &unk_100AD6DD0);
    v274 = v21;
    if ((*(v15 + 48))(v303, 1, v16) == 1)
    {
      sub_100004F84(*(v0 + 808), &unk_100AD6DD0);
LABEL_5:
      v22 = *(v0 + 1624);
      v252 = *(v0 + 1600);
      v255 = *(v0 + 1616);
      v23 = *(v0 + 1592);
      rect = *(v0 + 1584);
      v24 = *(v0 + 1568);
      v25 = *(v0 + 1560);
      v26 = *(v0 + 1552);
      v27 = *(v0 + 1536);
      v301 = *(v0 + 984);
      v28 = *(v0 + 960);
      v292 = *(v0 + 952);
      v312 = *(v0 + 840);
      v278 = *(v0 + 816);
      v266 = *(v0 + 736);
      v268 = *(v0 + 704);
      v29 = *(v0 + 696);
      v247 = 1.0 - (v22 + *(v0 + 1608));
      v304 = *(v0 + 688);
      v30 = 1.0 - (v23 + *(v0 + 1576));
      v285 = *(v0 + 680);
      v31 = 1.0 - (v25 + *(v0 + 1544));
      sub_1000082B4(v266, *(v0 + 728), &unk_100AD4790);
      v320.origin.x = v27;
      v320.origin.y = v31;
      v320.size.width = v26;
      v320.size.height = v25;
      v32 = NSStringFromCGRect(v320);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v321.origin.x = v24;
      v321.origin.y = v30;
      v321.size.width = rect;
      v321.size.height = v23;
      v33 = NSStringFromCGRect(v321);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v322.origin.x = v252;
      v322.size.width = v255;
      v322.origin.y = v247;
      v322.size.height = v22;
      v34 = NSStringFromCGRect(v322);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
      sub_100004F84(v266, &unk_100AD4790);
      sub_100004F84(v278, &unk_100AD6DD0);
      (*(v28 + 8))(v301, v292);
      sub_100656ED4(v312, _s13PhotoMetadataVMa);
      (*(v29 + 32))(v285, v268, v304);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&unk_100AEE0B0);
      v35 = swift_allocObject();
      v36 = *(*v35 + 104);
      v37 = sub_1000F24EC(&qword_100AD5B20);
      (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
      *(v35 + *(*v35 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v285, v35 + *(*v35 + 120), &unk_100AEE0A0);
      v38 = v274;
      *&v274[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata] = v35;
      goto LABEL_43;
    }

    (*(v0 + 1744))(*(v0 + 896), *(v0 + 808), *(v0 + 848));
    v55 = sub_10011446C();
    v56 = *(v55 + 2);
    if (v56)
    {
      v57 = *(v0 + 1072);
      v58 = *(v0 + 856);
      v59 = v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v298 = *(v58 + 72);
      v306 = (v57 + 48);
      v280 = (v57 + 8);
      v287 = (v57 + 32);
      v271 = (*(v0 + 928) + 8);
      v295 = (v58 + 8);
      do
      {
        v61 = *(v0 + 1064);
        v62 = *(v0 + 1040);
        v311(*(v0 + 888), v59, *(v0 + 848));
        URL.pathExtension.getter();
        static UTType.data.getter();
        UTType.init(filenameExtension:conformingTo:)();
        v63 = *v306;
        if ((*v306)(v62, 1, v61) == 1)
        {
          sub_100004F84(*(v0 + 1040), &unk_100AD7C40);
        }

        else
        {
          v64 = *(v0 + 1120);
          v65 = *(v0 + 1088);
          v66 = *(v0 + 1064);
          (*v287)(v65, *(v0 + 1040), v66);
          static UTType.image.getter();
          v67 = UTType.conforms(to:)();
          v68 = *v280;
          (*v280)(v64, v66);
          v68(v65, v66);
          if (v67)
          {
            v69 = *(v0 + 944);
            v70 = *(v0 + 920);
            v71 = *(v0 + 664);
            v311(v71, *(v0 + 888), *(v0 + 848));
            type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            UUID.init()();
            v72 = UUID.uuidString.getter();
            v74 = v73;
            (*v271)(v69, v70);
            type metadata accessor for AssetAttachment(0);
            v75 = swift_allocObject();
            *(v75 + 16) = 0;
            sub_100656E04(v71, v75 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v76 = (v75 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v76 = v72;
            v76[1] = v74;
            v77 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v274[v77] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v274[v77] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

LABEL_27:
            v97 = *(v0 + 888);
            v98 = *(v0 + 848);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            (*v295)(v97, v98);
            goto LABEL_14;
          }
        }

        v78 = *(v0 + 1064);
        v79 = *(v0 + 1032);
        URL.pathExtension.getter();
        static UTType.data.getter();
        UTType.init(filenameExtension:conformingTo:)();
        if (v63(v79, 1, v78) != 1)
        {
          v80 = *(v0 + 1120);
          v81 = *(v0 + 1064);
          (*v287)(*(v0 + 1080), *(v0 + 1032), v81);
          static UTType.video.getter();
          v82 = UTType.conforms(to:)();
          v83 = *v280;
          (*v280)(v80, v81);
          if (v82)
          {
            v83(*(v0 + 1080), *(v0 + 1064));
          }

          else
          {
            v84 = *(v0 + 1120);
            v85 = *(v0 + 1080);
            v86 = *(v0 + 1064);
            static UTType.movie.getter();
            v87 = UTType.conforms(to:)();
            v83(v84, v86);
            v83(v85, v86);
            if ((v87 & 1) == 0)
            {
              (*v295)(*(v0 + 888), *(v0 + 848));
              goto LABEL_14;
            }
          }

          v88 = *(v0 + 944);
          v89 = *(v0 + 920);
          v90 = *(v0 + 664);
          v311(v90, *(v0 + 888), *(v0 + 848));
          type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          UUID.init()();
          v91 = UUID.uuidString.getter();
          v93 = v92;
          (*v271)(v88, v89);
          type metadata accessor for AssetAttachment(0);
          v94 = swift_allocObject();
          *(v94 + 16) = 0;
          sub_100656E04(v90, v94 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v95 = (v94 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v95 = v91;
          v95[1] = v93;
          v96 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v274[v96] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v274[v96] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          goto LABEL_27;
        }

        v60 = *(v0 + 1032);
        (*v295)(*(v0 + 888), *(v0 + 848));
        sub_100004F84(v60, &unk_100AD7C40);
LABEL_14:
        v59 += v298;
        --v56;
      }

      while (v56);
    }

    v117 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    v118 = *&v274[v117];
    if (v118 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
    {
LABEL_33:
      v307 = *(v0 + 984);
      v119 = *(v0 + 960);
      v299 = *(v0 + 952);
      v120 = *(v0 + 896);
      v121 = *(v0 + 856);
      v122 = *(v0 + 848);
      v123 = *(v0 + 840);
      v124 = *(v0 + 816);
      v125 = *(v0 + 736);
      sub_100170130();
      v126 = swift_allocError();
      *v127 = 0;
      swift_willThrow();

      (*(v121 + 8))(v120, v122);
      sub_100004F84(v125, &unk_100AD4790);
      sub_100004F84(v124, &unk_100AD6DD0);
      (*(v119 + 8))(v307, v299);
LABEL_64:
      sub_100656ED4(v123, _s13PhotoMetadataVMa);
      *(v0 + 1848) = v126;
      v309 = *(v0 + 1504);
      v211 = *(v0 + 1392);
      v212 = *(v0 + 1384);
      v213 = *(v0 + 912);
      v214 = *(v0 + 848);
      v215 = *(v0 + 744);
      v316 = 0;
      v317 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v216 = v317;
      *(v0 + 536) = v316;
      *(v0 + 544) = v216;
      v217._countAndFlagsBits = 0xD000000000000048;
      v217._object = 0x80000001008FF6E0;
      String.append(_:)(v217);
      *(v0 + 608) = v126;
      sub_1000F24EC(&qword_100AD5BC0);
      _print_unlocked<A, B>(_:_:)();
      v218._countAndFlagsBits = 46;
      v218._object = 0xE100000000000000;
      String.append(_:)(v218);
      sub_100653A04(*(v0 + 536), *(v0 + 544), v212, v211, &static os_log_type_t.error.getter);

      v311(v215, v213, v214);
      v265(v215, 0, 1, v214);

      *(v0 + 1856) = static MainActor.shared.getter();
      v219 = swift_task_alloc();
      *(v0 + 1864) = v219;
      *v219 = v0;
      v219[1] = sub_10063BEE0;
      v194 = *(v0 + 744);
      v195 = *(v0 + 616);
      v196 = v309;
      goto LABEL_65;
    }

    if (qword_100ACF938 != -1)
    {
      swift_once();
    }

    v220 = type metadata accessor for Logger();
    sub_10000617C(v220, qword_100AD3270);
    v221 = v274;
    v222 = Logger.logObject.getter();
    v223 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v222, v223))
    {
      v300 = v223;
      v224 = *(v0 + 944);
      v225 = *(v0 + 928);
      v226 = *(v0 + 920);
      v302 = *(v0 + 856);
      v310 = *(v0 + 848);
      v315 = *(v0 + 896);
      v227 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      *v227 = 138412802;
      *(v227 + 4) = v221;
      *v290 = v221;
      *(v227 + 12) = 2080;
      (*(v225 + 16))(v224, &v221[OBJC_IVAR____TtC7Journal5Asset_id], v226);
      sub_10000A5AC(&qword_100AE19B0, &type metadata accessor for UUID);
      v228 = v221;
      v229 = dispatch thunk of CustomStringConvertible.description.getter();
      v231 = v230;
      (*(v225 + 8))(v224, v226);
      v232 = sub_100008458(v229, v231, &v316);

      *(v227 + 14) = v232;
      *(v227 + 22) = 2080;
      type metadata accessor for AssetAttachment(0);

      v233 = Array.description.getter();
      v235 = v234;

      v236 = sub_100008458(v233, v235, &v316);

      *(v227 + 24) = v236;
      _os_log_impl(&_mh_execute_header, v222, v300, "%@[%s] init self.sourceAttachments=%s", v227, 0x20u);
      sub_100004F84(v290, &unk_100AD4BB0);

      swift_arrayDestroy();

      (*(v302 + 8))(v315, v310);
    }

    else
    {
      v237 = *(v0 + 896);
      v238 = *(v0 + 856);
      v239 = *(v0 + 848);

      (*(v238 + 8))(v237, v239);
    }

    goto LABEL_5;
  }

  v258 = *(v0 + 1528);
  v270 = *(v0 + 1520);
  v286 = *(v0 + 1184);
  v251 = *(v0 + 1176);
  v244 = *(v0 + 1168);
  v279 = *(v0 + 1160);
  v246 = *(v0 + 1000);
  v256 = *(v0 + 992);
  v242 = *(v0 + 976);
  v46 = *(v0 + 952);
  v293 = *(v0 + 944);
  v248 = *(v0 + 936);
  v305 = *(v0 + 928);
  recta = *(v0 + 920);
  v47 = *(v0 + 912);
  v48 = *(v0 + 856);
  v49 = *(v0 + 848);
  v50 = *(v0 + 840);
  v51 = *(v0 + 800);
  v262 = *(v0 + 792);
  v240 = *(v0 + 720);
  v297 = *(v0 + 960);
  v241 = v46;
  (*(v297 + 104))();
  v253 = v51;
  v311 = *(v48 + 16);
  v311(v51, v47, v49);
  v265 = *(v48 + 56);
  v265(v51, 0, 1, v49);
  sub_1000082B4(v50, v240, &unk_100AD4790);
  (*(v244 + 104))(v286, enum case for AssetType.photo(_:), v279);
  v245 = *(v297 + 16);
  v245(v246, v242, v46);
  UUID.init()();
  v52 = objc_allocWithZone(type metadata accessor for PhotoAsset());
  *&v52[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = 0;
  v243 = *(v305 + 16);
  v243(v248, v293, recta);
  v258(v251, v286, v279);
  v245(v256, v246, v46);
  v53 = sub_100285908(v248, v251, v256);
  v54 = *(v305 + 8);
  v54(v293, recta);
  v294 = *(v297 + 8);
  v294(v246, v241);
  v270(v286, v279);
  sub_1000082B4(v253, v262, &unk_100AD6DD0);
  if ((*(v48 + 48))(v262, 1, v49) == 1)
  {
    sub_100004F84(*(v0 + 792), &unk_100AD6DD0);
  }

  else
  {
    v99 = v54;
    v288 = v53;
    v6(*(v0 + 880), *(v0 + 792), *(v0 + 848));
    v100 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v101 = String._bridgeToObjectiveC()();

    v102 = [v100 fileExistsAtPath:v101];

    if (v102)
    {
      v103 = *(v0 + 944);
      v104 = *(v0 + 920);
      v105 = *(v0 + 880);
      v106 = *(v0 + 856);
      v107 = *(v0 + 848);
      v281 = v107;
      v108 = *(v0 + 664);
      sub_1000F24EC(&unk_100AD4780);
      v109 = v99;
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_100941D50;
      v311(v108, v105, v107);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      UUID.init()();
      v111 = UUID.uuidString.getter();
      v113 = v112;
      v109(v103, v104);
      type metadata accessor for AssetAttachment(0);
      v114 = swift_allocObject();
      *(v114 + 16) = 0;
      sub_100656E04(v108, v114 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v115 = (v114 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v115 = v111;
      v115[1] = v113;
      *(v110 + 32) = v114;
      (*(v106 + 8))(v105, v281);
      v116 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      v53 = v288;
      swift_beginAccess();
      *&v288[v116] = v110;
    }

    else
    {
      v282 = v99;
      if (qword_100ACFE08 != -1)
      {
        swift_once();
      }

      v128 = *(v0 + 880);
      v129 = *(v0 + 872);
      v130 = *(v0 + 848);
      v131 = type metadata accessor for Logger();
      sub_10000617C(v131, qword_100AE55E0);
      v311(v129, v128, v130);
      v132 = v53;
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = *(v0 + 944);
        v136 = *(v0 + 920);
        v275 = *(v0 + 880);
        v137 = *(v0 + 872);
        v138 = *(v0 + 856);
        v261 = *(v0 + 848);
        v139 = swift_slowAlloc();
        v263 = swift_slowAlloc();
        v316 = swift_slowAlloc();
        *v139 = 138412802;
        *(v139 + 4) = v132;
        *v263 = v132;
        *(v139 + 12) = 2080;
        v243(v135, &v132[OBJC_IVAR____TtC7Journal5Asset_id], v136);
        sub_10000A5AC(&qword_100AE19B0, &type metadata accessor for UUID);
        v140 = v132;
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        v143 = v142;
        v282(v135, v136);
        v144 = sub_100008458(v141, v143, &v316);

        *(v139 + 14) = v144;
        *(v139 + 22) = 2080;
        sub_10000A5AC(&qword_100ADEFD0, &type metadata accessor for URL);
        v145 = v137;
        v146 = dispatch thunk of CustomStringConvertible.description.getter();
        v148 = v147;
        v149 = *(v138 + 8);
        v149(v145, v261);
        v150 = sub_100008458(v146, v148, &v316);

        *(v139 + 24) = v150;
        _os_log_impl(&_mh_execute_header, v133, v134, "%@[%s] failed init imageFile does not exist: %s", v139, 0x20u);
        sub_100004F84(v263, &unk_100AD4BB0);

        swift_arrayDestroy();

        v149(v275, v261);
      }

      else
      {
        v151 = *(v0 + 880);
        v152 = *(v0 + 872);
        v153 = *(v0 + 856);
        v154 = *(v0 + 848);

        v155 = *(v153 + 8);
        v155(v152, v154);
        v155(v151, v154);
      }

      v53 = v288;
    }
  }

  v156 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v157 = *&v53[v156];
  if (v157 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_42;
    }

LABEL_63:
    v206 = *(v0 + 976);
    v207 = *(v0 + 952);
    v123 = *(v0 + 840);
    v208 = *(v0 + 800);
    v209 = *(v0 + 720);
    sub_100170130();
    v126 = swift_allocError();
    *v210 = 0;
    swift_willThrow();

    sub_100004F84(v209, &unk_100AD4790);
    sub_100004F84(v208, &unk_100AD6DD0);
    v294(v206, v207);
    goto LABEL_64;
  }

  if (!*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_63;
  }

LABEL_42:
  v158 = *(v0 + 1624);
  v259 = *(v0 + 1600);
  v260 = *(v0 + 1616);
  v159 = *(v0 + 1592);
  v257 = *(v0 + 1584);
  v160 = *(v0 + 1568);
  v161 = *(v0 + 1560);
  v162 = *(v0 + 1552);
  v163 = *(v0 + 1536);
  v283 = *(v0 + 952);
  v289 = *(v0 + 976);
  v313 = *(v0 + 840);
  v272 = *(v0 + 800);
  v264 = *(v0 + 720);
  v267 = *(v0 + 704);
  v164 = *(v0 + 696);
  v254 = 1.0 - (v158 + *(v0 + 1608));
  v165 = 1.0 - (v159 + *(v0 + 1576));
  v276 = *(v0 + 680);
  v166 = 1.0 - (v161 + *(v0 + 1544));
  v308 = *(v0 + 688);
  sub_1000082B4(v264, *(v0 + 728), &unk_100AD4790);
  v38 = v53;
  v323.origin.x = v163;
  v323.origin.y = v166;
  v323.size.width = v162;
  v323.size.height = v161;
  v167 = NSStringFromCGRect(v323);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v324.origin.x = v160;
  v324.origin.y = v165;
  v324.size.width = v257;
  v324.size.height = v159;
  v168 = NSStringFromCGRect(v324);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v325.origin.x = v259;
  v325.size.width = v260;
  v325.origin.y = v254;
  v325.size.height = v158;
  v169 = NSStringFromCGRect(v325);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
  sub_100004F84(v264, &unk_100AD4790);
  sub_100004F84(v272, &unk_100AD6DD0);
  v294(v289, v283);
  sub_100656ED4(v313, _s13PhotoMetadataVMa);
  (*(v164 + 32))(v276, v267, v308);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&unk_100AEE0B0);
  v170 = swift_allocObject();
  v171 = *(*v170 + 104);
  v172 = sub_1000F24EC(&qword_100AD5B20);
  (*(*(v172 - 8) + 56))(v170 + v171, 1, 1, v172);
  *(v170 + *(*v170 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v276, v170 + *(*v170 + 120), &unk_100AEE0A0);
  *&v38[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v170;

LABEL_43:
  *(v0 + 1784) = v38;
  v173 = *(v0 + 1392);
  v174 = *(v0 + 1384);
  v175 = *(v0 + 616);

  v316 = 0;
  v317 = 0xE000000000000000;
  v176 = v38;
  _StringGuts.grow(_:)(23);

  v316 = 0xD000000000000014;
  v317 = 0x80000001008FF5E0;
  ObjectType = swift_getObjectType();

  *(v0 + 600) = ObjectType;
  sub_1000F24EC(&qword_100AEB9D8);
  v178._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v178);

  v179._countAndFlagsBits = 46;
  v179._object = 0xE100000000000000;
  String.append(_:)(v179);
  sub_100653A04(v316, v317, v174, v173, &static os_log_type_t.debug.getter);

  v180 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v181 = *(v175 + v180);
  v314 = v176;
  if (v181 >> 62)
  {
LABEL_61:
    v182 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v182 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v182)
  {
LABEL_55:
    v187 = *(v0 + 1392);
    v188 = *(v0 + 1384);
    v189 = *(v0 + 912);
    v190 = *(v0 + 856);
    v191 = *(v0 + 848);
    v192 = *(v0 + 760);

    sub_100653A04(0xD000000000000049, 0x80000001008FF690, v188, v187, &static os_log_type_t.error.getter);

    (*(v190 + 16))(v192, v189, v191);
    (*(v190 + 56))(v192, 0, 1, v191);

    *(v0 + 1816) = static MainActor.shared.getter();
    v193 = swift_task_alloc();
    *(v0 + 1824) = v193;
    *v193 = v0;
    v193[1] = sub_10063B51C;
    v194 = *(v0 + 760);
    v195 = *(v0 + 616);
    v196 = 0;
LABEL_65:

    return sub_100653198(v195, v194, v196);
  }

  v183 = 0;
  while (1)
  {
    if ((v181 & 0xC000000000000001) != 0)
    {
      v184 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v183 >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v184 = *(v181 + 8 * v183 + 32);
    }

    v185 = v184;
    v186 = v183 + 1;
    if (__OFADD__(v183, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    type metadata accessor for VideoAsset();
    swift_dynamicCastClass();

    ++v183;
    if (v186 == v182)
    {
      goto LABEL_55;
    }
  }

  v197 = *(v0 + 1664);
  v198 = *(v0 + 1876);
  v199 = *(v0 + 1504);
  v200 = *(v0 + 1328);
  v201 = *(v0 + 1304);
  v202 = *(v0 + 1288);

  *v201 = static AssetPlacement.maxGridCount.getter();
  v197(v201, v198, v202);
  v203 = swift_task_alloc();
  *(v0 + 1792) = v203;
  *v203 = v0;
  v203[1] = sub_10063A54C;
  v204 = *(v0 + 1304);
  v205 = *(v0 + 616);

  return sub_10044C1DC(v200, &protocol witness table for MainActor, v314, v205, v199, v204, 1);
}

uint64_t sub_100637EF0()
{

  v1 = *(v0 + 1344);
  v2 = *(v0 + 1336);

  return _swift_task_switch(sub_100637F64, v2, v1);
}

uint64_t sub_100637F64()
{
  v1 = v0[217];
  v12 = v0[188];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[103];
  _StringGuts.grow(_:)(76);
  v0[65] = 0;
  v0[66] = 0xE000000000000000;
  v7._object = 0x80000001008FF590;
  v7._countAndFlagsBits = 0xD00000000000004ALL;
  String.append(_:)(v7);
  v0[74] = v1;
  sub_1000F24EC(&qword_100AD5BC0);
  _print_unlocked<A, B>(_:_:)();
  sub_100653A04(v0[65], v0[66], v3, v2, &static os_log_type_t.fault.getter);

  (*(v4 + 56))(v6, 1, 1, v5);

  v0[220] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v0[221] = v8;
  *v8 = v0;
  v8[1] = sub_100638130;
  v9 = v0[103];
  v10 = v0[77];

  return sub_100653198(v10, v9, v12);
}

uint64_t sub_100638130()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10063826C, v1, v0);
}

uint64_t sub_10063826C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[170];
    v3 = v0[169];
    v4 = Strong;
    swift_beginAccess();
    v5 = sub_100651EB8(v3, v2);
    swift_endAccess();
  }

  v6 = v0[166];
  swift_unknownObjectWeakDestroy();

  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_100638390, v7, v9);
}

uint64_t sub_100638390()
{
  v1 = v0[103];

  sub_100004F84(v1, &unk_100AD6DD0);
  v2 = v0[168];
  v3 = v0[167];

  return _swift_task_switch(sub_100638414, v3, v2);
}

uint64_t sub_100638414()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);

  (*(v4 + 8))(v3, v5);
  swift_bridgeObjectRelease_n();

  v6 = *(v0 + 8);

  return v6(0, 1);
}

uint64_t sub_10063881C()
{
  v1 = *v0;

  v2 = *(v1 + 1344);
  v3 = *(v1 + 1336);

  return _swift_task_switch(sub_10063893C, v3, v2);
}

uint64_t sub_10063893C()
{
  v253 = v0;
  if (*(v0 + 1880) == 1)
  {
    v1 = *(v0 + 1168);
    v215 = *(v0 + 1184);
    v219 = *(v0 + 1160);
    v225 = *(v0 + 1000);
    v2 = *(v0 + 960);
    v211 = *(v0 + 952);
    v212 = *(v0 + 984);
    v232 = *(v0 + 944);
    v3 = *(v0 + 912);
    v4 = *(v0 + 856);
    v5 = *(v0 + 848);
    v6 = *(v0 + 840);
    v7 = *(v0 + 816);
    v243 = *(v0 + 808);
    v8 = *(v0 + 736);
    (*(v2 + 104))();
    v234 = *(v4 + 16);
    v234(v7, v3, v5);
    v203 = *(v4 + 56);
    v203(v7, 0, 1, v5);
    sub_1000082B4(v6, v8, &unk_100AD4790);
    (*(v1 + 104))(v215, enum case for AssetType.livePhoto(_:), v219);
    (*(v2 + 16))(v225, v212, v211);
    UUID.init()();
    v9 = objc_allocWithZone(type metadata accessor for LivePhotoAsset());
    v10 = sub_100116748(v232, v215, v225);
    sub_1000082B4(v7, v243, &unk_100AD6DD0);
    v233 = v10;
    if ((*(v4 + 48))(v243, 1, v5) == 1)
    {
      sub_100004F84(*(v0 + 808), &unk_100AD6DD0);
LABEL_4:
      v11 = *(v0 + 1624);
      v194 = *(v0 + 1600);
      v197 = *(v0 + 1616);
      v12 = *(v0 + 1592);
      rect = *(v0 + 1584);
      v13 = *(v0 + 1568);
      v14 = *(v0 + 1560);
      v15 = *(v0 + 1552);
      v16 = *(v0 + 1536);
      v235 = *(v0 + 984);
      v17 = *(v0 + 960);
      v220 = *(v0 + 952);
      v244 = *(v0 + 840);
      v213 = *(v0 + 816);
      v204 = *(v0 + 736);
      v205 = *(v0 + 704);
      v18 = *(v0 + 696);
      v188 = 1.0 - (v11 + *(v0 + 1608));
      v226 = *(v0 + 688);
      v19 = 1.0 - (v12 + *(v0 + 1576));
      v239 = *(v0 + 680);
      v20 = 1.0 - (v14 + *(v0 + 1544));
      sub_1000082B4(v204, *(v0 + 728), &unk_100AD4790);
      v255.origin.x = v16;
      v255.origin.y = v20;
      v255.size.width = v15;
      v255.size.height = v14;
      v21 = NSStringFromCGRect(v255);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v256.origin.x = v13;
      v256.origin.y = v19;
      v256.size.width = rect;
      v256.size.height = v12;
      v22 = NSStringFromCGRect(v256);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v257.origin.x = v194;
      v257.size.width = v197;
      v257.origin.y = v188;
      v257.size.height = v11;
      v23 = NSStringFromCGRect(v257);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v239;
      PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
      sub_100004F84(v204, &unk_100AD4790);
      sub_100004F84(v213, &unk_100AD6DD0);
      (*(v17 + 8))(v235, v220);
      sub_100656ED4(v244, _s13PhotoMetadataVMa);
      (*(v18 + 32))(v239, v205, v226);
      swift_storeEnumTagMultiPayload();
      v25 = &OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata;
      goto LABEL_29;
    }

    (*(v0 + 1744))(*(v0 + 896), *(v0 + 808), *(v0 + 848));
    v36 = sub_10011446C();
    v37 = *(v36 + 2);
    if (v37)
    {
      v38 = *(v0 + 1072);
      v39 = *(v0 + 856);
      v40 = v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v228 = *(v39 + 72);
      v246 = (v38 + 48);
      v217 = (v38 + 32);
      v41 = (v38 + 8);
      v214 = (*(v0 + 928) + 8);
      v222 = (v39 + 8);
      do
      {
        v43 = *(v0 + 1064);
        v44 = *(v0 + 1040);
        v234(*(v0 + 888), v40, *(v0 + 848));
        URL.pathExtension.getter();
        static UTType.data.getter();
        UTType.init(filenameExtension:conformingTo:)();
        v45 = *v246;
        if ((*v246)(v44, 1, v43) == 1)
        {
          sub_100004F84(*(v0 + 1040), &unk_100AD7C40);
        }

        else
        {
          v46 = *(v0 + 1120);
          v47 = *(v0 + 1088);
          v48 = *(v0 + 1064);
          (*v217)(v47, *(v0 + 1040), v48);
          static UTType.image.getter();
          v49 = UTType.conforms(to:)();
          v50 = *v41;
          (*v41)(v46, v48);
          v50(v47, v48);
          if (v49)
          {
            v51 = *(v0 + 944);
            v52 = *(v0 + 920);
            v53 = *(v0 + 664);
            v234(v53, *(v0 + 888), *(v0 + 848));
            type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            UUID.init()();
            v54 = UUID.uuidString.getter();
            v56 = v55;
            (*v214)(v51, v52);
            type metadata accessor for AssetAttachment(0);
            v57 = swift_allocObject();
            *(v57 + 16) = 0;
            sub_100656E04(v53, v57 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v58 = (v57 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v58 = v54;
            v58[1] = v56;
            v59 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v233 + v59) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v233 + v59) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

LABEL_23:
            v79 = *(v0 + 888);
            v80 = *(v0 + 848);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            (*v222)(v79, v80);
            goto LABEL_10;
          }
        }

        v60 = *(v0 + 1064);
        v61 = *(v0 + 1032);
        URL.pathExtension.getter();
        static UTType.data.getter();
        UTType.init(filenameExtension:conformingTo:)();
        if (v45(v61, 1, v60) != 1)
        {
          v62 = *(v0 + 1120);
          v63 = *(v0 + 1064);
          (*v217)(*(v0 + 1080), *(v0 + 1032), v63);
          static UTType.video.getter();
          v64 = UTType.conforms(to:)();
          v65 = *v41;
          (*v41)(v62, v63);
          if (v64)
          {
            v65(*(v0 + 1080), *(v0 + 1064));
          }

          else
          {
            v66 = *(v0 + 1120);
            v67 = *(v0 + 1080);
            v68 = *(v0 + 1064);
            static UTType.movie.getter();
            v69 = UTType.conforms(to:)();
            v65(v66, v68);
            v65(v67, v68);
            if ((v69 & 1) == 0)
            {
              (*v222)(*(v0 + 888), *(v0 + 848));
              goto LABEL_10;
            }
          }

          v70 = *(v0 + 944);
          v71 = *(v0 + 920);
          v72 = *(v0 + 664);
          v234(v72, *(v0 + 888), *(v0 + 848));
          type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          UUID.init()();
          v73 = UUID.uuidString.getter();
          v75 = v74;
          (*v214)(v70, v71);
          type metadata accessor for AssetAttachment(0);
          v76 = swift_allocObject();
          *(v76 + 16) = 0;
          sub_100656E04(v72, v76 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v77 = (v76 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v77 = v73;
          v77[1] = v75;
          v78 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v233 + v78) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v233 + v78) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          goto LABEL_23;
        }

        v42 = *(v0 + 1032);
        (*v222)(*(v0 + 888), *(v0 + 848));
        sub_100004F84(v42, &unk_100AD7C40);
LABEL_10:
        v40 += v228;
        --v37;
      }

      while (v37);
    }

    v145 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    v146 = *(v233 + v145);
    if (v146 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() <= 1)
      {
        goto LABEL_50;
      }
    }

    else if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
    {
LABEL_50:
      v147 = *(v0 + 960);
      v224 = *(v0 + 952);
      v230 = *(v0 + 984);
      v148 = *(v0 + 896);
      v149 = *(v0 + 856);
      v150 = *(v0 + 848);
      v248 = *(v0 + 840);
      v151 = *(v0 + 816);
      v152 = *(v0 + 736);
      sub_100170130();
      v153 = swift_allocError();
      *v154 = 0;
      swift_willThrow();

      (*(v149 + 8))(v148, v150);
      sub_100004F84(v152, &unk_100AD4790);
      sub_100004F84(v151, &unk_100AD6DD0);
      (*(v147 + 8))(v230, v224);
      sub_100656ED4(v248, _s13PhotoMetadataVMa);
      *(v0 + 1848) = v153;
      v249 = *(v0 + 1504);
      v251 = 0;
      v155 = *(v0 + 1392);
      v156 = *(v0 + 1384);
      v157 = *(v0 + 912);
      v158 = *(v0 + 848);
      v159 = *(v0 + 744);
      v252 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      *(v0 + 536) = 0;
      *(v0 + 544) = 0xE000000000000000;
      v160._countAndFlagsBits = 0xD000000000000048;
      v160._object = 0x80000001008FF6E0;
      String.append(_:)(v160);
      *(v0 + 608) = v153;
      sub_1000F24EC(&qword_100AD5BC0);
      _print_unlocked<A, B>(_:_:)();
      v161._countAndFlagsBits = 46;
      v161._object = 0xE100000000000000;
      String.append(_:)(v161);
      sub_100653A04(*(v0 + 536), *(v0 + 544), v156, v155, &static os_log_type_t.error.getter);

      v234(v159, v157, v158);
      v203(v159, 0, 1, v158);

      *(v0 + 1856) = static MainActor.shared.getter();
      v162 = swift_task_alloc();
      *(v0 + 1864) = v162;
      *v162 = v0;
      v162[1] = sub_10063BEE0;
      v132 = *(v0 + 744);
      v133 = *(v0 + 616);
      v134 = v249;
      goto LABEL_42;
    }

    if (qword_100ACF938 != -1)
    {
      swift_once();
    }

    v163 = type metadata accessor for Logger();
    sub_10000617C(v163, qword_100AD3270);
    v164 = v233;
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v165, v166))
    {
      v231 = v166;
      v167 = *(v0 + 944);
      v168 = *(v0 + 928);
      v169 = *(v0 + 920);
      v238 = *(v0 + 856);
      v242 = *(v0 + 848);
      v250 = *(v0 + 896);
      v170 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      *v170 = 138412802;
      *(v170 + 4) = v164;
      *v218 = v164;
      *(v170 + 12) = 2080;
      (*(v168 + 16))(v167, v164 + OBJC_IVAR____TtC7Journal5Asset_id, v169);
      sub_10000A5AC(&qword_100AE19B0, &type metadata accessor for UUID);
      v171 = v164;
      v172 = dispatch thunk of CustomStringConvertible.description.getter();
      v174 = v173;
      (*(v168 + 8))(v167, v169);
      v175 = sub_100008458(v172, v174, &v251);

      *(v170 + 14) = v175;
      *(v170 + 22) = 2080;
      type metadata accessor for AssetAttachment(0);

      v176 = Array.description.getter();
      v178 = v177;

      v179 = sub_100008458(v176, v178, &v251);

      *(v170 + 24) = v179;
      _os_log_impl(&_mh_execute_header, v165, v231, "%@[%s] init self.sourceAttachments=%s", v170, 0x20u);
      sub_100004F84(v218, &unk_100AD4BB0);

      swift_arrayDestroy();

      (*(v238 + 8))(v250, v242);
    }

    else
    {
      v180 = *(v0 + 896);
      v181 = *(v0 + 856);
      v182 = *(v0 + 848);

      (*(v181 + 8))(v180, v182);
    }

    goto LABEL_4;
  }

  v201 = *(v0 + 1528);
  v208 = *(v0 + 1520);
  v227 = *(v0 + 1184);
  v195 = *(v0 + 1176);
  v26 = *(v0 + 1168);
  v221 = *(v0 + 1160);
  v198 = *(v0 + 992);
  v185 = *(v0 + 968);
  v186 = *(v0 + 1000);
  v27 = *(v0 + 952);
  v236 = *(v0 + 944);
  v189 = *(v0 + 936);
  v240 = *(v0 + 928);
  recta = *(v0 + 920);
  v28 = *(v0 + 912);
  v29 = *(v0 + 856);
  v30 = *(v0 + 848);
  v31 = *(v0 + 840);
  v32 = *(v0 + 784);
  v199 = v32;
  v207 = *(v0 + 776);
  v216 = *(v0 + 712);
  v245 = *(v0 + 960);
  (*(v245 + 104))();
  v183 = *(v29 + 16);
  v183(v32, v28, v30);
  (*(v29 + 56))(v32, 0, 1, v30);
  sub_1000082B4(v31, v216, &unk_100AD4790);
  (*(v26 + 104))(v227, enum case for AssetType.video(_:), v221);
  v184 = *(v245 + 16);
  v184(v186, v185, v27);
  UUID.init()();
  v33 = objc_allocWithZone(type metadata accessor for VideoAsset());
  *&v33[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
  (*(v240 + 16))(v189, v236, recta);
  v201(v195, v227, v221);
  v184(v198, v186, v27);
  v233 = sub_100285908(v189, v195, v198);
  v34 = *(v240 + 8);
  v34(v236, recta);
  v35 = *(v245 + 8);
  v35(v186, v27);
  v208(v227, v221);
  sub_1000082B4(v199, v207, &unk_100AD6DD0);
  v237 = v35;
  if ((*(v29 + 48))(v207, 1, v30) == 1)
  {
    sub_100004F84(*(v0 + 776), &unk_100AD6DD0);
  }

  else
  {
    v81 = *(v0 + 944);
    v82 = *(v0 + 920);
    v83 = *(v0 + 864);
    v84 = *(v0 + 848);
    v85 = v34;
    v86 = *(v0 + 664);
    (*(v0 + 1744))(v83, *(v0 + 776), v84);
    v183(v86, v83, v84);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v87 = UUID.uuidString.getter();
    v89 = v88;
    v85(v81, v82);
    type metadata accessor for AssetAttachment(0);
    v90 = swift_allocObject();
    *(v90 + 16) = 0;
    sub_100656E04(v86, v90 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v91 = (v90 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v91 = v87;
    v91[1] = v89;
    v92 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v233 + v92) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v233 + v92) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v93 = *(v0 + 864);
    v94 = *(v0 + 856);
    v95 = *(v0 + 848);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    (*(v94 + 8))(v93, v95);
  }

  v96 = *(v0 + 1624);
  rectb = *(v0 + 1600);
  v196 = *(v0 + 1616);
  v97 = *(v0 + 1592);
  v190 = *(v0 + 1584);
  v98 = *(v0 + 1568);
  v99 = *(v0 + 1560);
  v100 = *(v0 + 1552);
  v101 = *(v0 + 1536);
  v209 = *(v0 + 952);
  v210 = *(v0 + 968);
  v229 = *(v0 + 840);
  v206 = *(v0 + 784);
  v200 = *(v0 + 712);
  v202 = *(v0 + 704);
  v102 = *(v0 + 696);
  v187 = 1.0 - (v96 + *(v0 + 1608));
  v223 = *(v0 + 688);
  v103 = 1.0 - (v97 + *(v0 + 1576));
  v241 = *(v0 + 680);
  v104 = 1.0 - (v99 + *(v0 + 1544));
  sub_1000082B4(v200, *(v0 + 728), &unk_100AD4790);
  v258.origin.x = v101;
  v258.origin.y = v104;
  v258.size.width = v100;
  v258.size.height = v99;
  v105 = NSStringFromCGRect(v258);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v259.origin.x = v98;
  v259.origin.y = v103;
  v259.size.width = v190;
  v259.size.height = v97;
  v106 = NSStringFromCGRect(v259);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v260.origin.x = rectb;
  v260.size.width = v196;
  v260.origin.y = v187;
  v260.size.height = v96;
  v107 = NSStringFromCGRect(v260);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v241;
  PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
  sub_100004F84(v200, &unk_100AD4790);
  sub_100004F84(v206, &unk_100AD6DD0);
  v237(v210, v209);
  sub_100656ED4(v229, _s13PhotoMetadataVMa);
  (*(v102 + 32))(v241, v202, v223);
  swift_storeEnumTagMultiPayload();
  v25 = &OBJC_IVAR____TtC7Journal10VideoAsset_metadata;
LABEL_29:
  sub_1000F24EC(&unk_100AEE0B0);
  v108 = swift_allocObject();
  v109 = *(*v108 + 104);
  v110 = sub_1000F24EC(&qword_100AD5B20);
  (*(*(v110 - 8) + 56))(v108 + v109, 1, 1, v110);
  *(v108 + *(*v108 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v24, v108 + *(*v108 + 120), &unk_100AEE0A0);
  *(v233 + *v25) = v108;
  *(v0 + 1784) = v233;
  v111 = *(v0 + 1392);
  v112 = *(v0 + 1384);
  v113 = *(v0 + 616);

  v251 = 0;
  v252 = 0xE000000000000000;
  v114 = v233;
  _StringGuts.grow(_:)(23);

  v251 = 0xD000000000000014;
  v252 = 0x80000001008FF5E0;
  ObjectType = swift_getObjectType();

  *(v0 + 600) = ObjectType;
  sub_1000F24EC(&qword_100AEB9D8);
  v116._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v116);

  v117._countAndFlagsBits = 46;
  v117._object = 0xE100000000000000;
  String.append(_:)(v117);
  sub_100653A04(v251, v252, v112, v111, &static os_log_type_t.debug.getter);

  v118 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v119 = *(v113 + v118);
  v247 = v114;
  if (v119 >> 62)
  {
LABEL_53:
    v120 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v120)
  {
LABEL_41:
    v125 = *(v0 + 1392);
    v126 = *(v0 + 1384);
    v127 = *(v0 + 912);
    v128 = *(v0 + 856);
    v129 = *(v0 + 848);
    v130 = *(v0 + 760);

    sub_100653A04(0xD000000000000049, 0x80000001008FF690, v126, v125, &static os_log_type_t.error.getter);

    (*(v128 + 16))(v130, v127, v129);
    (*(v128 + 56))(v130, 0, 1, v129);

    *(v0 + 1816) = static MainActor.shared.getter();
    v131 = swift_task_alloc();
    *(v0 + 1824) = v131;
    *v131 = v0;
    v131[1] = sub_10063B51C;
    v132 = *(v0 + 760);
    v133 = *(v0 + 616);
    v134 = 0;
LABEL_42:

    return sub_100653198(v133, v132, v134);
  }

  v121 = 0;
  while (1)
  {
    if ((v119 & 0xC000000000000001) != 0)
    {
      v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v121 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v122 = *(v119 + 8 * v121 + 32);
    }

    v123 = v122;
    v124 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    type metadata accessor for VideoAsset();
    swift_dynamicCastClass();

    ++v121;
    if (v124 == v120)
    {
      goto LABEL_41;
    }
  }

  v136 = *(v0 + 1664);
  v137 = *(v0 + 1876);
  v138 = *(v0 + 1504);
  v139 = *(v0 + 1328);
  v140 = *(v0 + 1304);
  v141 = *(v0 + 1288);

  *v140 = static AssetPlacement.maxGridCount.getter();
  v136(v140, v137, v141);
  v142 = swift_task_alloc();
  *(v0 + 1792) = v142;
  *v142 = v0;
  v142[1] = sub_10063A54C;
  v143 = *(v0 + 1304);
  v144 = *(v0 + 616);

  return sub_10044C1DC(v139, &protocol witness table for MainActor, v247, v144, v138, v143, 1);
}

uint64_t sub_10063A54C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1688);
  v4 = *(*v1 + 1304);
  v5 = *(*v1 + 1288);
  *(*v1 + 1883) = a1;

  v3(v4, v5);
  v6 = *(v2 + 1344);
  v7 = *(v2 + 1336);

  return _swift_task_switch(sub_10063A704, v7, v6);
}

uint64_t sub_10063A704()
{
  if (*(v0 + 1883) >= 2u)
  {
    v14 = *(v0 + 1784);
    v15 = *(v0 + 912);
    v16 = *(v0 + 856);
    v17 = *(v0 + 848);
    v18 = *(v0 + 768);
    sub_100653A04(0xD000000000000039, 0x80000001008FF600, *(v0 + 1384), *(v0 + 1392), &static os_log_type_t.error.getter);

    (*(v16 + 16))(v18, v15, v17);
    (*(v16 + 56))(v18, 0, 1, v17);

    *(v0 + 1800) = static MainActor.shared.getter();
    v19 = swift_task_alloc();
    *(v0 + 1808) = v19;
    *v19 = v0;
    v19[1] = sub_10063AE0C;
    v20 = *(v0 + 768);
    v21 = *(v0 + 616);

    return sub_100653198(v21, v20, v14);
  }

  else
  {
    v1 = *(v0 + 1784);
    v2 = *(v0 + 1392);
    v3 = *(v0 + 1384);
    v24 = *(v0 + 1376);
    v25 = *(v0 + 1504);
    v23 = *(v0 + 1360);
    v22 = *(v0 + 1352);
    v29 = *(v0 + 1072);
    v30 = *(v0 + 1648);
    v31 = *(v0 + 1064);
    v32 = *(v0 + 1152);
    v26 = *(v0 + 856);
    v27 = *(v0 + 848);
    v28 = *(v0 + 912);
    v4 = *(v0 + 648);
    v5 = *(v0 + 632);

    swift_unknownObjectWeakDestroy();
    v6 = v3;
    sub_100653A04(0xD000000000000026, 0x80000001008FF640, v3, v2, &static os_log_type_t.debug.getter);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = v5;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    v10[5] = v1;
    v33 = v1;
    sub_1003EA148(0, 0, v4, &unk_100960B78, v10);

    sub_100653A04(0xD000000000000019, 0x80000001008FF670, v6, v2, &static os_log_type_t.debug.getter);

    swift_beginAccess();
    v11 = sub_100651EB8(v22, v23);
    swift_endAccess();

    (*(v26 + 8))(v28, v27);
    (*(v29 + 8))(v32, v31);
    swift_bridgeObjectRelease_n();

    v12 = *(v0 + 8);

    return v12(v33, 0);
  }
}

uint64_t sub_10063AE0C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10063AF48, v1, v0);
}

uint64_t sub_10063AF48()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[170];
    v3 = v0[169];
    v4 = Strong;
    swift_beginAccess();
    v5 = sub_100651EB8(v3, v2);
    swift_endAccess();
  }

  v6 = v0[166];
  swift_unknownObjectWeakDestroy();

  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_10063B06C, v7, v9);
}

uint64_t sub_10063B06C()
{
  v1 = v0[96];

  sub_100004F84(v1, &unk_100AD6DD0);
  v2 = v0[168];
  v3 = v0[167];

  return _swift_task_switch(sub_10063B0F0, v3, v2);
}

uint64_t sub_10063B0F0()
{
  v1 = *(v0 + 1784);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1504);
  v11 = *(v0 + 1152);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 912);
  v7 = *(v0 + 856);
  v8 = *(v0 + 848);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v11, v5);
  swift_bridgeObjectRelease_n();

  v9 = *(v0 + 8);

  return v9(0, 1);
}

uint64_t sub_10063B51C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10063B658, v1, v0);
}

uint64_t sub_10063B658()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[170];
    v3 = v0[169];
    v4 = Strong;
    swift_beginAccess();
    v5 = sub_100651EB8(v3, v2);
    swift_endAccess();
  }

  v6 = v0[166];
  swift_unknownObjectWeakDestroy();

  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_10063B77C, v7, v9);
}

uint64_t sub_10063B77C()
{
  v1 = v0[95];

  sub_100004F84(v1, &unk_100AD6DD0);
  v2 = v0[168];
  v3 = v0[167];

  return _swift_task_switch(sub_1006570CC, v3, v2);
}

uint64_t sub_10063B800()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10063B93C, v1, v0);
}

uint64_t sub_10063B93C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[170];
    v3 = v0[169];
    v4 = Strong;
    swift_beginAccess();
    v5 = sub_100651EB8(v3, v2);
    swift_endAccess();
  }

  v6 = v0[166];
  swift_unknownObjectWeakDestroy();

  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_10063BA60, v7, v9);
}

uint64_t sub_10063BA60()
{
  v1 = v0[94];

  sub_100004F84(v1, &unk_100AD6DD0);
  v2 = v0[168];
  v3 = v0[167];

  return _swift_task_switch(sub_10063BAE4, v3, v2);
}

uint64_t sub_10063BAE4()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);

  (*(v4 + 8))(v3, v5);
  swift_bridgeObjectRelease_n();

  v6 = *(v0 + 8);

  return v6(0, 1);
}

uint64_t sub_10063BEE0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10063C01C, v1, v0);
}

uint64_t sub_10063C01C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[170];
    v3 = v0[169];
    v4 = Strong;
    swift_beginAccess();
    v5 = sub_100651EB8(v3, v2);
    swift_endAccess();
  }

  v6 = v0[166];
  swift_unknownObjectWeakDestroy();

  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_10063C140, v7, v9);
}

uint64_t sub_10063C140()
{
  v1 = v0[93];

  sub_100004F84(v1, &unk_100AD6DD0);
  v2 = v0[168];
  v3 = v0[167];

  return _swift_task_switch(sub_10063C1C4, v3, v2);
}

uint64_t sub_10063C1C4()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1504);
  v10 = *(v0 + 1152);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 912);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v10, v4);
  swift_bridgeObjectRelease_n();

  v8 = *(v0 + 8);

  return v8(0, 1);
}

uint64_t sub_10063C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for CanvasContentInputType();
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_10063C6C0, v7, v6);
}

uint64_t sub_10063C6C0()
{
  **(v0 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10063C770;
  v2 = *(v0 + 40);

  return sub_10063CE2C(v2, 1);
}

uint64_t sub_10063C770()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_100656ED4(v2, type metadata accessor for CanvasContentInputType);
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_10063C8C8, v4, v3);
}

uint64_t sub_10063C8C8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10063C974;
  v3 = v0[3];

  return sub_10063D268(v1, v3);
}

uint64_t sub_10063C974(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_10063CA9C, v4, v3);
}

uint64_t sub_10063CA9C()
{
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[15] = v2;
  v0[16] = v1;

  return _swift_task_switch(sub_10063CB28, v2, v1);
}

uint64_t sub_10063CB28()
{
  v1 = v0[13];
  if (v1)
  {
    sub_1000F24EC(&unk_100AD4780);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_100941D50;
    *(v2 + 4) = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[17] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_10063CC10;
  v5 = v0[11];

  return sub_10065261C(v5);
}

uint64_t sub_10063CC10()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_10063CD54, v3, v2);
}

uint64_t sub_10063CD54()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_10063CDB8, v1, v2);
}

uint64_t sub_10063CDB8()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10063CE2C(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_10063CECC, v5, v4);
}

uint64_t sub_10063CECC()
{
  v1 = [*(v0 + 24) viewIfLoaded];
  v2 = [v1 window];

  if (!v2)
  {
    v3 = [*(v0 + 24) presentedViewController];
    if (!v3)
    {
LABEL_5:

      v5 = *(v0 + 8);

      return v5();
    }

    v2 = v3;
  }

  v4 = *(v0 + 24);

  if ([v4 isBeingDismissed])
  {
    goto LABEL_5;
  }

  v7 = *(v0 + 88);
  v11 = *(v0 + 16);
  v8 = static MainActor.shared.getter();
  *(v0 + 64) = v8;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = vextq_s8(v11, v11, 8uLL);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_10063D0A8;

  return withCheckedContinuation<A>(isolation:function:_:)(v10, v8, &protocol witness table for MainActor, 0xD000000000000038, 0x80000001008FF900, sub_100656510, v9, &type metadata for () + 8);
}

uint64_t sub_10063D0A8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10063D208, v3, v2);
}

uint64_t sub_10063D208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063D268(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  sub_1000F24EC(&qword_100AD5170);
  v3[27] = swift_task_alloc();
  v4 = type metadata accessor for AssetPlacement();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = sub_1000F24EC(&unk_100AEE0A0);
  v3[32] = swift_task_alloc();
  v5 = type metadata accessor for PhotoLibraryAssetMetadata();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = type metadata accessor for AssetAttachment.AssetType(0);
  v3[44] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v8 = type metadata accessor for AssetType();
  v3[49] = v8;
  v3[50] = *(v8 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v9 = type metadata accessor for AssetSource();
  v3[56] = v9;
  v3[57] = *(v9 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v3[68] = v10;
  v11 = *(v10 - 8);
  v3[69] = v11;
  v3[70] = *(v11 + 64);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = type metadata accessor for MainActor();
  v3[74] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[75] = v13;
  v3[76] = v12;

  return _swift_task_switch(sub_10063D778, v13, v12);
}

uint64_t sub_10063D778()
{
  v256 = v0;
  v1 = v0[67];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[25];
  Date.init()();
  v5 = *(v3 + 56);
  v5(v1, 1, 1, v2);
  if (!*(v4 + 16))
  {
    goto LABEL_10;
  }

  v6 = sub_100051964(UIImagePickerControllerOriginalImage);
  if ((v7 & 1) == 0 || (sub_10000BA20(*(v0[25] + 56) + 32 * v6, (v0 + 2)), sub_1000065A8(0, &qword_100AE9450), (swift_dynamicCast() & 1) == 0))
  {
    if (*(v4 + 16))
    {
      v30 = sub_100051964(UIImagePickerControllerMediaURL);
      if (v31)
      {
        v32 = v0[64];
        v33 = v0[36];
        v34 = v0[37];
        sub_10000BA20(*(v0[25] + 56) + 32 * v30, (v0 + 6));
        v35 = swift_dynamicCast();
        v5(v32, v35 ^ 1u, 1, v33);
        v36 = *(v34 + 48);
        if (v36(v32, 1, v33) != 1)
        {
          v65 = v0[39];
          v66 = *(v0[37] + 32);
          v66(v0[40], v0[64], v0[36]);
          sub_10057757C(v65);
          v0[80] = 0;
          v185 = v66;
          v191 = v0[69];
          v195 = v0[68];
          v197 = v0[72];
          v89 = v0;
          v90 = v0[67];
          v236 = v89[63];
          v217 = v89[62];
          v202 = v89[60];
          v212 = v89[59];
          v91 = v89[57];
          v252 = v89[58];
          v231 = v89[56];
          v188 = v89[53];
          v245 = v89[52];
          v209 = v89[51];
          v221 = v89[50];
          v200 = v89[49];
          v226 = v89[48];
          v205 = v89[47];
          v250 = v89[46];
          v241 = v89[45];
          v92 = v89[39];
          v186 = v92;
          v93 = v89[36];
          v94 = v89[37];
          sub_100004F84(v90, &unk_100AD6DD0);
          v95 = *(v94 + 16);
          v96 = v92;
          v97 = v93;
          v95(v90, v96, v93);
          v98 = v93;
          v99 = v89;
          v5(v90, 0, 1, v98);
          (*(v91 + 104))(v252, enum case for AssetSource.cameraPicker(_:), v231);
          v184 = v95;
          v95(v236, v186, v97);
          v5(v236, 0, 1, v97);
          (*(v191 + 16))(v188, v197, v195);
          (*(v191 + 56))(v188, 0, 1, v195);
          (*(v221 + 104))(v245, enum case for AssetType.video(_:), v200);
          v198 = *(v91 + 16);
          v198(v202, v252, v231);
          UUID.init()();
          v100 = objc_allocWithZone(type metadata accessor for VideoAsset());
          *&v100[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
          (*(v250 + 16))(v205, v226, v241);
          (*(v221 + 16))(v209, v245, v200);
          v198(v212, v202, v231);
          v253 = sub_100285908(v205, v209, v212);
          v101 = *(v250 + 8);
          v101(v226, v241);
          v242 = *(v91 + 8);
          v242(v202, v231);
          (*(v221 + 8))(v245, v200);
          sub_1000082B4(v236, v217, &unk_100AD6DD0);
          v102 = v36(v217, 1, v97);
          if (v102 == 1)
          {
            sub_100004F84(v89[62], &unk_100AD6DD0);
          }

          else
          {
            v144 = v89[48];
            v146 = v89[44];
            v145 = v89[45];
            v147 = v89[38];
            v148 = v89[36];
            v185(v147, v89[62], v148);
            v184(v146, v147, v148);
            type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
            swift_storeEnumTagMultiPayload();
            v99 = v89;
            swift_storeEnumTagMultiPayload();
            UUID.init()();
            v149 = UUID.uuidString.getter();
            v151 = v150;
            v101(v144, v145);
            type metadata accessor for AssetAttachment(0);
            v152 = swift_allocObject();
            *(v152 + 16) = 0;
            sub_100656E04(v146, v152 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v153 = (v152 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v153 = v149;
            v153[1] = v151;
            v154 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v253[v154] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v253[v154] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v156 = v89[37];
            v155 = v89[38];
            v157 = v89[36];
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            (*(v156 + 8))(v155, v157);
          }

          v192 = v99;
          v213 = v99[63];
          v218 = v99[58];
          v214 = v99[56];
          v210 = v99[53];
          v158 = v99[37];
          v223 = v99[36];
          v228 = v99[39];
          v160 = v99[34];
          v159 = v99[35];
          v246 = v99[33];
          v233 = v99[32];
          v238 = v99[40];
          sub_1000082B4(v210, v99[54], &unk_100AD4790);
          y = CGRectZero.origin.y;
          width = CGRectZero.size.width;
          height = CGRectZero.size.height;
          v261.origin.x = CGRectZero.origin.x;
          v261.origin.y = y;
          v261.size.width = width;
          v261.size.height = height;
          v164 = NSStringFromCGRect(v261);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v262.origin.x = CGRectZero.origin.x;
          v262.origin.y = y;
          v262.size.width = width;
          v262.size.height = height;
          v165 = NSStringFromCGRect(v262);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v263.origin.x = CGRectZero.origin.x;
          v263.origin.y = y;
          v263.size.width = width;
          v263.size.height = height;
          v166 = NSStringFromCGRect(v263);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
          sub_100004F84(v210, &unk_100AD4790);
          sub_100004F84(v213, &unk_100AD6DD0);
          v242(v218, v214);
          v167 = *(v158 + 8);
          v167(v228, v223);
          v167(v238, v223);
          (*(v160 + 32))(v233, v159, v246);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&unk_100AEE0B0);
          v168 = swift_allocObject();
          v169 = *(*v168 + 104);
          v170 = sub_1000F24EC(&qword_100AD5B20);
          (*(*(v170 - 8) + 56))(v168 + v169, 1, 1, v170);
          *(v168 + *(*v168 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v233, v168 + *(*v168 + 120), &unk_100AEE0A0);
          *&v253[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v168;
          goto LABEL_44;
        }

        goto LABEL_11;
      }
    }

LABEL_10:
    v37 = v0[64];
    v38 = v0[36];

    v5(v37, 1, 1, v38);
LABEL_11:
    sub_100004F84(v0[64], &unk_100AD6DD0);
    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000617C(v39, qword_100AEB9B0);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v254 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_100008458(0xD00000000000003FLL, 0x80000001008FF940, &v254);
      _os_log_impl(&_mh_execute_header, v40, v41, "cameraAddition - %s", v42, 0xCu);
      sub_10000BA7C(v43);
    }

    v44 = v0[72];
    v45 = v0[69];
    v46 = v0[68];
    sub_100004F84(v0[67], &unk_100AD6DD0);
    (*(v45 + 8))(v44, v46);

    v47 = v0[1];

    return v47(0);
  }

  v193 = v0[72];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[66];
  v215 = v10;
  v229 = v0[65];
  v189 = v0[61];
  v196 = v0[60];
  v208 = v0[59];
  v11 = v0[57];
  v247 = v0[56];
  v12 = v0;
  v13 = v0[55];
  v239 = v0[52];
  v206 = v0[51];
  v14 = v0[50];
  v234 = v0[49];
  v243 = v0[48];
  v199 = v0[47];
  v251 = v0[46];
  v201 = v0[45];
  v211 = v0[44];
  v219 = v0[36];
  v224 = v0[37];
  v203 = v0[22];
  v0[77] = v203;
  v249 = v11;
  (*(v11 + 104))();
  v5(v10, 1, 1, v219);
  (*(v8 + 16))(v13, v193, v9);
  (*(v8 + 56))(v13, 0, 1, v9);
  v187 = v14;
  (*(v14 + 104))(v239, enum case for AssetType.photo(_:), v234);
  v194 = *(v11 + 16);
  v194(v196, v189, v247);
  v204 = v203;
  UUID.init()();
  v15 = objc_allocWithZone(type metadata accessor for PhotoAsset());
  *&v15[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = 0;
  v190 = *(v251 + 16);
  v190(v199, v243, v201);
  (*(v14 + 16))(v206, v239, v234);
  v16 = v247;
  v194(v208, v196, v247);
  v17 = sub_100285908(v199, v206, v208);
  v18 = *(v251 + 8);
  v19 = v243;
  v18(v243, v201);
  v248 = *(v249 + 8);
  v248(v196, v16);
  (*(v187 + 8))(v239, v234);
  sub_1000F24EC(&unk_100AD4780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100941D50;
  *v211 = v204;
  swift_storeEnumTagMultiPayload();
  v21 = v17;
  v240 = v204;
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v244 = v18;
  v18(v19, v201);
  type metadata accessor for AssetAttachment(0);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_100656E04(v211, v25 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v26 = (v25 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v26 = v22;
  v26[1] = v24;
  *(v20 + 32) = v25;
  v27 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  *&v21[v27] = v20;

  sub_1000082B4(v215, v229, &unk_100AD6DD0);
  v28 = (*(v224 + 48))(v229, 1, v219);
  v29 = v12[65];
  v192 = v12;
  if (v28 == 1)
  {
    sub_100004F84(v29, &unk_100AD6DD0);
  }

  else
  {
    (*(v12[37] + 32))(v12[42], v29, v12[36]);
    v49 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v50 = String._bridgeToObjectiveC()();

    v51 = [v49 fileExistsAtPath:v50];

    v207 = v21;
    if (v51)
    {
      v52 = v12[48];
      v53 = v12[44];
      v230 = v12[45];
      v54 = v12[42];
      v55 = v12[36];
      v56 = v12[37];
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100941D50;
      v58 = v54;
      (*(v56 + 16))(v53, v54, v55);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      UUID.init()();
      v59 = UUID.uuidString.getter();
      v61 = v60;
      v244(v52, v230);
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      v63 = v53;
      v21 = v207;
      sub_100656E04(v63, v62 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v64 = (v62 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v64 = v59;
      v64[1] = v61;
      *(v57 + 32) = v62;
      (*(v56 + 8))(v58, v55);
      *&v207[v27] = v57;
    }

    else
    {
      if (qword_100ACFE08 != -1)
      {
        swift_once();
      }

      v67 = v12[41];
      v68 = v192[42];
      v69 = v192[36];
      v70 = v192[37];
      v71 = type metadata accessor for Logger();
      sub_10000617C(v71, qword_100AE55E0);
      (*(v70 + 16))(v67, v68, v69);
      v72 = v21;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = v192[48];
        v76 = v192[45];
        v235 = v192[42];
        v77 = v192[37];
        v216 = v192[36];
        v220 = v192[41];
        v78 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v254 = swift_slowAlloc();
        *v78 = 138412802;
        *(v78 + 4) = v72;
        *v225 = v72;
        *(v78 + 12) = 2080;
        v190(v75, &v72[OBJC_IVAR____TtC7Journal5Asset_id], v76);
        sub_10000A5AC(&qword_100AE19B0, &type metadata accessor for UUID);
        v79 = v72;
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        v244(v75, v76);
        v83 = sub_100008458(v80, v82, &v254);

        *(v78 + 14) = v83;
        *(v78 + 22) = 2080;
        sub_10000A5AC(&qword_100ADEFD0, &type metadata accessor for URL);
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v85;
        v87 = *(v77 + 8);
        v87(v220, v216);
        v88 = sub_100008458(v84, v86, &v254);

        *(v78 + 24) = v88;
        _os_log_impl(&_mh_execute_header, v73, v74, "%@[%s] failed init imageFile does not exist: %s", v78, 0x20u);
        sub_100004F84(v225, &unk_100AD4BB0);

        swift_arrayDestroy();

        v87(v235, v216);
      }

      else
      {
        v103 = v192[41];
        v104 = v192[42];
        v106 = v192[36];
        v105 = v192[37];

        v107 = *(v105 + 8);
        v107(v103, v106);
        v107(v104, v106);
      }

      v21 = v207;
    }
  }

  v108 = *&v21[v27];
  if (v108 >> 62)
  {
    v109 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v110 = v192[66];
  v111 = v192[61];
  v112 = v192[55];
  v113 = v192[56];
  if (v109)
  {
    v114 = v192[34];
    v237 = v192[33];
    v227 = v192[35];
    v232 = v192[32];
    sub_1000082B4(v112, v192[54], &unk_100AD4790);
    v115 = CGRectZero.origin.y;
    v116 = CGRectZero.size.width;
    v117 = CGRectZero.size.height;
    v253 = v21;
    v258.origin.x = CGRectZero.origin.x;
    v258.origin.y = v115;
    v258.size.width = v116;
    v258.size.height = v117;
    v222 = v113;
    v118 = NSStringFromCGRect(v258);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v259.origin.x = CGRectZero.origin.x;
    v259.origin.y = v115;
    v259.size.width = v116;
    v259.size.height = v117;
    v119 = NSStringFromCGRect(v259);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v260.origin.x = CGRectZero.origin.x;
    v260.origin.y = v115;
    v260.size.width = v116;
    v260.size.height = v117;
    v120 = NSStringFromCGRect(v260);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v112, &unk_100AD4790);
    sub_100004F84(v110, &unk_100AD6DD0);
    v248(v111, v222);
    (*(v114 + 32))(v232, v227, v237);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0);
    v121 = swift_allocObject();
    v122 = *(*v121 + 104);
    v123 = sub_1000F24EC(&qword_100AD5B20);
    (*(*(v123 - 8) + 56))(v121 + v122, 1, 1, v123);
    *(v121 + *(*v121 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v232, v121 + *(*v121 + 120), &unk_100AEE0A0);
    *&v253[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v121;

LABEL_44:
    v192[81] = v253;

    v254 = 0;
    v255 = 0xE000000000000000;
    v171 = v253;
    _StringGuts.grow(_:)(24);

    v254 = 0xD000000000000015;
    v255 = 0x80000001008FF9B0;
    v192[21] = swift_getObjectType();
    sub_1000F24EC(&qword_100AEB9D8);
    v172._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v172);

    v173._countAndFlagsBits = 46;
    v173._object = 0xE100000000000000;
    String.append(_:)(v173);
    v175 = v254;
    v174 = v255;
    if (qword_100AD00B8 != -1)
    {
      swift_once();
    }

    v176 = type metadata accessor for Logger();
    v192[82] = sub_10000617C(v176, qword_100AEB9B0);

    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v254 = v180;
      *v179 = 136315138;
      *(v179 + 4) = sub_100008458(v175, v174, &v254);
      _os_log_impl(&_mh_execute_header, v177, v178, "cameraAddition - %s", v179, 0xCu);
      sub_10000BA7C(v180);
    }

    (*(v192[50] + 16))(v192[52], &v171[OBJC_IVAR____TtC7Journal5Asset_type], v192[49]);
    v181 = swift_task_alloc();
    v192[83] = v181;
    *v181 = v192;
    v181[1] = sub_10063FB20;
    v182 = v192[52];
    v183 = v192[24];

    return sub_1006490C0(v183, v182);
  }

  sub_100170130();
  v124 = swift_allocError();
  v192[78] = v124;
  *v125 = 0;
  swift_willThrow();

  sub_100004F84(v112, &unk_100AD4790);
  sub_100004F84(v110, &unk_100AD6DD0);
  v248(v111, v113);
  v254 = 0;
  v255 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v126 = v255;
  v192[18] = v254;
  v192[19] = v126;
  v127._countAndFlagsBits = 0xD00000000000002ELL;
  v127._object = 0x80000001008FFA70;
  String.append(_:)(v127);
  v128 = [v240 debugDescription];
  v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v131 = v130;

  v132._countAndFlagsBits = v129;
  v132._object = v131;
  String.append(_:)(v132);

  v133._countAndFlagsBits = 0x3A726F727265202CLL;
  v133._object = 0xE900000000000020;
  String.append(_:)(v133);
  v192[23] = v124;
  sub_1000F24EC(&qword_100AD5BC0);
  _print_unlocked<A, B>(_:_:)();
  v135 = v192[18];
  v134 = v192[19];
  if (qword_100AD00B8 != -1)
  {
    swift_once();
  }

  v136 = type metadata accessor for Logger();
  sub_10000617C(v136, qword_100AEB9B0);

  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v254 = v140;
    *v139 = 136315138;
    *(v139 + 4) = sub_100008458(v135, v134, &v254);
    _os_log_impl(&_mh_execute_header, v137, v138, "cameraAddition - %s", v139, 0xCu);
    sub_10000BA7C(v140);
  }

  v141 = swift_task_alloc();
  v192[79] = v141;
  *v141 = v192;
  v141[1] = sub_10063F7C8;
  v142 = v192[67];
  v143 = v192[24];

  return sub_100653198(v143, v142, 0);
}

uint64_t sub_10063F7C8()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return _swift_task_switch(sub_10063F8E8, v3, v2);
}

uint64_t sub_10063F8E8()
{
  v1 = v0[77];
  v2 = v0[72];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];

  sub_100004F84(v5, &unk_100AD6DD0);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_10063FB20(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 400);
  v5 = *(*v1 + 392);
  *(*v1 + 672) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 608);
  v7 = *(v2 + 600);

  return _swift_task_switch(sub_10063FCAC, v7, v6);
}

uint64_t sub_10063FCAC()
{
  v1 = v0[74];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  *v2 = static AssetPlacement.maxGridCount.getter();
  (*(v3 + 104))(v2, enum case for AssetPlacement.grid(_:), v4);
  v5 = swift_task_alloc();
  v0[85] = v5;
  *v5 = v0;
  v5[1] = sub_10063FDB8;
  v6 = v0[84];
  v7 = v0[81];
  v8 = v0[30];
  v9 = v0[24];

  return sub_10044C1DC(v1, &protocol witness table for MainActor, v7, v9, v6, v8, 1);
}