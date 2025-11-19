id sub_1000CE118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 40))(a4, a5);
  v6 = String._bridgeToObjectiveC()();

  [a1 bindString:v6 atPosition:1];

  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 24);
  dispatch thunk of RawRepresentable.rawValue.getter();
  return [a1 bindInt64:v9 atPosition:2];
}

uint64_t sub_1000CE21C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void sub_1000CE270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a6 + 40);
    v10 = a1;
    v8(a5, a6);
    v11 = String._bridgeToObjectiveC()();

    [v10 bindString:v11 atPosition:1];

    v12 = sub_100004080(v10);
    *a4 = v12;
    *(a4 + 8) = 0;
  }

  else
  {
    if (qword_100239CD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000DAC0(v14, qword_10023FCB8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v16 + 4) = v18;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Failed to get current schema version: %@", v16, 0xCu);
      sub_1000AEA80(v17);
    }
  }
}

void sub_1000CE47C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000CE4F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000CE504()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000CE680()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 4);
  v8 = *&v0[v4];
  v9 = *&v0[(*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8];

  return sub_1000CD8B4(v7, &v0[v3], v8, &v0[v6], v9, v1, v2);
}

uint64_t sub_1000CE7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CE7C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_1000CE91C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = v5 + *(*(v3 - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v1 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1000CE118(a1, v1 + v5, v8, v3, v4);
}

uint64_t sub_1000CEA14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000CEA3C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000CEB40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1000CEB78(uint64_t a1)
{
  result = sub_1000CD860();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000CEBA4()
{
  result = qword_10023C960;
  if (!qword_10023C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C960);
  }

  return result;
}

uint64_t sub_1000CEC14(char a1)
{
  result = 0x6369706F74;
  switch(a1)
  {
    case 1:
      return 0xD000000000000014;
    case 2:
      return 6910049;
    case 3:
      v4 = 0x54746E657665;
      goto LABEL_34;
    case 4:
      return 0x4E646C697542736FLL;
    case 5:
      v5 = 0x746C75736572;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
    case 6:
      return 0x446572756C696166;
    case 7:
      return 0x546572756C696166;
    case 8:
      return 0x726F7774654E6461;
    case 9:
      return 0x657079546461;
    case 10:
      v5 = 0x656C646E7562;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
    case 11:
      v3 = 5;
      goto LABEL_19;
    case 12:
      return 0x7463617265746E69;
    case 13:
      return 1701869940;
    case 14:
      return 0x756F437972746572;
    case 15:
      return 0x74616E6974736564;
    case 16:
      return 0x65736E6F70736572;
    case 17:
      return 0x4474736575716572;
    case 18:
      return 0x7475626972747461;
    case 19:
      return 0xD00000000000001ALL;
    case 20:
      v3 = 9;
LABEL_19:
      result = v3 | 0xD000000000000012;
      break;
    case 21:
      result = 0x6B63616274736F70;
      break;
    case 22:
      result = 0x65636E6575716573;
      break;
    case 23:
      result = 0x6C7074656B72616DLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      v4 = 0x54726566666FLL;
LABEL_34:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      break;
    case 27:
      result = 0x79636E6572727563;
      break;
    case 28:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CEFE8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C970, &qword_1001BDA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v67 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000D0040();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  v68 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 56);
    v14 = *(v3 + 64);
    v68 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 72);
    v16 = *(v3 + 80);
    v68 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 88);
    v18 = *(v3 + 96);
    v68 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 104);
    v20 = *(v3 + 112);
    v68 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 120);
    v22 = *(v3 + 128);
    v68 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 136);
    v24 = *(v3 + 144);
    v68 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 152);
    v26 = *(v3 + 160);
    v68 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 168);
    v28 = *(v3 + 176);
    v68 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = *(v3 + 184);
    v30 = *(v3 + 192);
    v68 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = *(v3 + 200);
    v32 = *(v3 + 208);
    v68 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v3 + 216);
    v68 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = *(v3 + 224);
    v35 = *(v3 + 232);
    v68 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = *(v3 + 240);
    v37 = *(v3 + 248);
    v68 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = *(v3 + 256);
    v39 = *(v3 + 264);
    v68 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = *(v3 + 272);
    v41 = *(v3 + 280);
    v68 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = *(v3 + 288);
    v43 = *(v3 + 296);
    v68 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = *(v3 + 304);
    v45 = *(v3 + 312);
    v68 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = *(v3 + 320);
    v47 = *(v3 + 328);
    v68 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v48 = *(v3 + 336);
    v49 = *(v3 + 344);
    v68 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = *(v3 + 352);
    v51 = *(v3 + 360);
    v68 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v52 = *(v3 + 368);
    v53 = *(v3 + 376);
    v68 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v54 = *(v3 + 384);
    v55 = *(v3 + 392);
    v68 = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v56 = *(v3 + 400);
    v57 = *(v3 + 408);
    v68 = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v58 = *(v3 + 416);
    v68 = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v59 = *(v3 + 417);
    v68 = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v60 = *(v3 + 424);
    v61 = *(v3 + 432);
    v68 = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v62 = *(v3 + 440);
    v63 = *(v3 + 448);
    v68 = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v64 = *(v3 + 456);
    v65 = *(v3 + 464);
    v68 = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CF574(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000CEC14(*a1);
  v5 = v4;
  if (v3 == sub_1000CEC14(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000CF5FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000CEC14(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CF660()
{
  sub_1000CEC14(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000CF6B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000CEC14(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CF714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000D02EC();
  *a2 = result;
  return result;
}

uint64_t sub_1000CF744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000CEC14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000CF778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000D02EC();
  *a1 = result;
  return result;
}

uint64_t sub_1000CF7AC(uint64_t a1)
{
  v2 = sub_1000D0040();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CF7E8(uint64_t a1)
{
  v2 = sub_1000D0040();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000CF83C@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0xEC0000006E6F6973;
  v7 = *(a1 + 7);
  v8.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v9 = *a1;
  isa = v8.super.super.isa;
  if (v9 <= 3)
  {
    if (*a1 > 1u)
    {
      if (v9 == 2)
      {
        v6 = 0xEA00000000007265;
        v10 = 0x746C69466B6E696CLL;
      }

      else
      {
        v6 = 0xE600000000000000;
        v10 = 0x68636E75616CLL;
      }
    }

    else if (*a1)
    {
      v6 = 0xED00006E6F697461;
      v10 = 0x64696C6156706174;
    }

    else
    {
      v10 = 0x736572706D496461;
    }
  }

  else if (*a1 <= 5u)
  {
    if (v9 == 4)
    {
      v6 = 0x80000001001CA760;
      v10 = 0xD000000000000019;
    }

    else
    {
      v10 = 0x7265766E6F436461;
    }
  }

  else if (v9 == 6)
  {
    v6 = 0x80000001001CA790;
    v10 = 0xD000000000000013;
  }

  else if (v9 == 7)
  {
    v6 = 0xE700000000000000;
    v10 = 0x74736575716572;
  }

  else
  {
    v6 = 0xED00006574656C70;
    v10 = 0x6D6F4379726F7473;
  }

  v74 = v10;
  v86 = *(a1 + 4);
  v11 = a1[1];
  if (v11 == 10)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = sub_1000C5038(v11);
  }

  v14 = 7368801;
  v85 = *(a1 + 8);
  v15 = *(a1 + 24);
  v83 = *(a1 + 40);
  v84 = v15;
  v16 = a1[80];
  v70 = v13;
  v71 = v12;
  if (v16 <= 1)
  {
    v69 = 0xE300000000000000;
    if (a1[80])
    {
      v17 = 6448503;
    }

    else
    {
      v17 = 7368801;
    }
  }

  else if (v16 == 2)
  {
    v69 = 0xEB00000000686775;
    v17 = 0x6F72685477656976;
  }

  else
  {
    if (v16 != 3)
    {
      v68 = 0;
      v69 = 0;
      goto LABEL_31;
    }

    v69 = 0xEC0000006867756FLL;
    v17 = 0x7268546B63696C63;
  }

  v68 = v17;
LABEL_31:
  if (a1[113] <= 1u)
  {
    if (!a1[113])
    {
      v67 = 0x726F7774654E6461;
      v66 = 0xE90000000000006BLL;
      goto LABEL_39;
    }

    v66 = 0xE800000000000000;
    v18 = 0x656372656D6D6F63;
    goto LABEL_37;
  }

  if (a1[113] == 2)
  {
    v66 = 0xE900000000000072;
    v18 = 0x65706F6C65766564;
LABEL_37:
    v67 = v18;
    goto LABEL_39;
  }

  v66 = 0;
  v67 = 0;
LABEL_39:
  v19 = a1[81];
  v64 = a1[82];
  v20 = a1[83];
  v21 = a1[84];
  v22 = 1701734758;
  *(&v79 + 7) = *(a1 + 17);
  HIBYTE(v79) = a1[144];
  v23 = a1[145];
  v75 = v6;
  if (a1[146] <= 1u)
  {
    if (a1[146])
    {
      v63 = 0xE600000000000000;
      v22 = 0x657372616F63;
      goto LABEL_45;
    }

    v22 = 1701736302;
LABEL_43:
    v63 = 0xE400000000000000;
LABEL_45:
    v65 = v22;
    goto LABEL_47;
  }

  if (a1[146] == 2)
  {
    goto LABEL_43;
  }

  v65 = 0;
  v63 = 0;
LABEL_47:
  v82 = *(a1 + 168);
  *&v78[7] = v82;
  v24 = *(a1 + 13);
  v81 = *(a1 + 12);
  v25 = 0xEC000000746E656DLL;
  if ((v23 & 1) == 0)
  {
    v25 = 0xE700000000000000;
  }

  v26 = 0x6C6C6174736E69;
  if (v23)
  {
    v26 = 0x656761676E656572;
  }

  v27 = v23 == 2;
  if (v23 == 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  v62 = v28;
  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26;
  }

  v61 = v29;
  if (v21)
  {
    v30 = 0xE800000000000000;
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  v31 = 7107189;
  if (v21)
  {
    v31 = 0x647261646E617473;
  }

  v32 = v21 == 2;
  if (v21 == 2)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  v60 = v33;
  if (v32)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  v59 = v34;
  v35 = 0xE400000000000000;
  if (v20)
  {
    v35 = 0xE500000000000000;
  }

  v36 = 2003134838;
  if (v20)
  {
    v36 = 0x6B63696C63;
  }

  if (v20 == 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  if (v20 == 2)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  v39 = 0xEB00000000656361;
  if (v19)
  {
    v14 = 0x6C7074656B72616DLL;
  }

  else
  {
    v39 = 0xE300000000000000;
  }

  if (v19 == 2)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  if (v19 == 2)
  {
    v41 = 0;
  }

  else
  {
    v41 = v14;
  }

  v42 = a1[85];
  v43 = 0x676E69646E6570;
  if (v42)
  {
    v43 = 0x64657A696C616572;
    v44 = 0xE800000000000000;
  }

  else
  {
    v44 = 0xE700000000000000;
  }

  v45 = v42 == 2;
  if (v42 == 2)
  {
    v46 = 0;
  }

  else
  {
    v46 = v43;
  }

  v57 = v46;
  if (v45)
  {
    v47 = 0;
  }

  else
  {
    v47 = v44;
  }

  v56 = v47;
  v58 = *(a1 + 92);
  v48 = a1[186];
  v49 = 0x6169725465657266;
  if (v48)
  {
    v49 = 0x746E756F63736964;
    v50 = 0xEA00000000006465;
  }

  else
  {
    v50 = 0xE90000000000006CLL;
  }

  if (v48 == 2)
  {
    v51 = 0;
  }

  else
  {
    v51 = v49;
  }

  if (v48 == 2)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  v80 = v24;
  sub_1000C4880(&v86, v77);
  sub_10005CB44(&v85, v77);
  sub_10005CB44(&v84, v77);
  sub_10005CB44(&v83, v77);
  sub_10005CB44(&v82, v77);
  sub_10005CB44(&v81, v77);
  sub_10005CB44(&v80, v77);
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  *a4 = xmmword_1001BD910;
  *(a4 + 104) = *(a1 + 4);
  *(a4 + 136) = *(a1 + 8);
  *(a4 + 152) = *(a1 + 24);
  *(a4 + 168) = *(a1 + 40);
  *(a4 + 297) = v79;
  *(a4 + 393) = *v78;
  result = *(a1 + 12);
  v54 = *(a1 + 13);
  *(a4 + 440) = result;
  *(a4 + 16) = 1;
  *(a4 + 24) = isa;
  *(a4 + 32) = &off_100213A70;
  *(a4 + 40) = 0xD000000000000010;
  *(a4 + 48) = 0x80000001001CCE30;
  *(a4 + 72) = 0xD000000000000010;
  *(a4 + 80) = 0x80000001001CCE50;
  *(a4 + 88) = v74;
  *(a4 + 96) = v75;
  *(a4 + 120) = v71;
  *(a4 + 128) = v70;
  *(a4 + 184) = v68;
  *(a4 + 192) = v69;
  *(a4 + 200) = v41;
  *(a4 + 208) = v40;
  *(a4 + 216) = v64;
  *(a4 + 224) = v38;
  *(a4 + 232) = v37;
  *(a4 + 240) = v59;
  *(a4 + 248) = v60;
  *(a4 + 256) = *(a1 + 13);
  *(a4 + 264) = a1[112];
  *(a4 + 272) = v67;
  *(a4 + 280) = v66;
  *(a4 + 296) = a1[128];
  *(a4 + 288) = *(a1 + 15);
  *(a4 + 320) = v61;
  *(a4 + 328) = v62;
  *(a4 + 336) = v65;
  *(a4 + 344) = v63;
  *(a4 + 352) = *(a1 + 19);
  *(a4 + 360) = a1[160];
  *(a4 + 368) = v57;
  *(a4 + 376) = v56;
  v55 = *(a1 + 11);
  *(a4 + 392) = a1[96];
  *(a4 + 384) = v55;
  *(a4 + 408) = *&v78[15];
  *(a4 + 416) = v58;
  *(a4 + 424) = v51;
  *(a4 + 432) = v52;
  *(a4 + 456) = v54;
  return result;
}

uint64_t sub_1000CFF08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CFF50(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D0018(uint64_t a1)
{
  result = sub_100025BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D0040()
{
  result = qword_10023C978;
  if (!qword_10023C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C978);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnoutEventPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnoutEventPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D01E8()
{
  result = qword_10023C980;
  if (!qword_10023C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C980);
  }

  return result;
}

unint64_t sub_1000D0240()
{
  result = qword_10023C988;
  if (!qword_10023C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C988);
  }

  return result;
}

unint64_t sub_1000D0298()
{
  result = qword_10023C990;
  if (!qword_10023C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C990);
  }

  return result;
}

uint64_t sub_1000D02EC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000D0340()
{
  v1[2] = v0;
  v2 = type metadata accessor for ReengagementConversionTask(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D03D4, 0, 0);
}

uint64_t sub_1000D03D4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v3[4];
  v6 = v3[1];
  v37 = *v3;
  v35 = v3[3];
  v38 = v3[2];
  v40 = v3[5];
  v7 = v3[10];
  v8 = v3[13];
  v42 = v3[12];
  v29 = v3[11];
  v30 = v3[14];
  v9 = v3[7];
  v43 = v3[6];
  v34 = v3[9];
  v31 = v3[8];
  sub_10000CE28((v3 + 18), v1 + v2[10]);
  sub_10000CE28((v3 + 28), v1 + v2[11]);
  sub_10000CE28((v3 + 33), v1 + v2[12]);
  sub_10000CE28((v3 + 23), v1 + v2[13]);
  sub_10000CE28((v3 + 38), v1 + v2[14]);
  sub_10000CE28((v3 + 43), v1 + v2[15]);
  v10 = qword_100239CE0;
  v36 = v5;

  v33 = v40;
  v41 = v6;

  v32 = v38;
  v39 = v7;

  v11 = v29;
  v12 = v8;

  v13 = v30;
  v14 = v9;

  v15 = v31;
  if (v10 != -1)
  {
    swift_once();
  }

  v17 = v0[3];
  v16 = v0[4];
  v18 = v0[2];
  v19 = type metadata accessor for Logger();
  v20 = sub_10000DAC0(v19, qword_10023FCD0);
  v0[5] = v20;
  (*(*(v19 - 8) + 16))(v16 + v17[16], v20, v19);
  sub_10000CE28(v18 + 384, v16 + v17[17]);
  v21 = (v16 + v17[5]);
  *v21 = v35;
  v21[1] = v36;
  v21[2] = v33;
  v22 = (v16 + v17[6]);
  *v22 = v37;
  v22[1] = v41;
  v22[2] = v32;
  v23 = (v16 + v17[7]);
  *v23 = v34;
  v23[1] = v39;
  v23[2] = v11;
  v24 = (v16 + v17[8]);
  *v24 = v42;
  v24[1] = v12;
  v24[2] = v13;
  v25 = (v16 + v17[9]);
  *v25 = v43;
  v25[1] = v14;
  v25[2] = v15;
  v26 = swift_task_alloc();
  v0[6] = v26;
  *v26 = v0;
  v26[1] = sub_1000D06F4;
  v27 = v0[4];

  return sub_100089B80();
}

uint64_t sub_1000D06F4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000D0884;
  }

  else
  {
    v3 = sub_1000D0808;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D0808()
{
  sub_1000D55AC(*(v0 + 32), type metadata accessor for ReengagementConversionTask);
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000D0884()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_1000D55AC(v0[4], type metadata accessor for ReengagementConversionTask);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Vending machine fetch failed with error: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    v10 = v0[7];
  }

  v11 = v0[4];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D0A04(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[36] = v6;
  v7 = *(v6 - 8);
  v2[37] = v7;
  v8 = *(v7 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0B58, 0, 0);
}

uint64_t sub_1000D0B58()
{
  v1 = 915061776;
  v2 = *(v0 + 248);
  if (v2 == 915061776)
  {
LABEL_2:
    v3 = *(v0 + 256);
    v5 = v3[9];
    v4 = v3[10];
    v6 = v3[11];
    v7 = swift_allocObject();
    *(v0 + 320) = v7;
    *(v7 + 16) = v1;
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_1000D108C;

    return sub_100110B28(v0 + 176, sub_1000D54AC, v7, v5, v4, v6);
  }

  v10 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 240) = 0;
  v11 = [v10 initWithStoreItemIdentifier:v2 error:v0 + 240];
  v12 = *(v0 + 240);
  if (v11)
  {
    v13 = v11;
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    v16 = *(v0 + 296);
    v43 = *(v0 + 288);
    v17 = *(v0 + 272);
    v18 = *(v0 + 280);
    v19 = *(v0 + 264);
    v20 = type metadata accessor for PropertyListDecoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = v12;
    PropertyListDecoder.init()();
    v24 = [v13 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 224) = 0x696C702E6F666E49;
    *(v0 + 232) = 0xEA00000000007473;
    (*(v17 + 104))(v18, enum case for URL.DirectoryHint.inferFromPath(_:), v19);
    sub_10003E5C8();
    URL.appending<A>(path:directoryHint:)();
    (*(v17 + 8))(v18, v19);
    v25 = *(v16 + 8);
    v25(v15, v43);
    v26 = Data.init(contentsOf:options:)();
    v28 = v27;
    v25(*(v0 + 312), *(v0 + 288));
    sub_1000BB9AC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10001BABC(v26, v28);

    v40 = *(v0 + 64);
    *(v0 + 128) = *(v0 + 48);
    *(v0 + 144) = v40;
    *(v0 + 160) = *(v0 + 80);
    v41 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v41;
    sub_10009B180(v0 + 96);
    v42 = *(v0 + 113);
    if (v42 != 2 && (v42 & 1) != 0)
    {
      v1 = *(v0 + 248);
      goto LABEL_2;
    }
  }

  else
  {
    v29 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100239CE0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000DAC0(v30, qword_10023FCD0);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Could not get next conversion tag %@", v33, 0xCu);
      sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }
  }

  v37 = *(v0 + 304);
  v36 = *(v0 + 312);
  v38 = *(v0 + 280);

  v39 = *(v0 + 8);

  return v39(0, 1);
}

uint64_t sub_1000D108C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);

  if (v0)
  {
    v6 = sub_1000D12C8;
  }

  else
  {
    v6 = sub_1000D11EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000D11EC()
{
  v1 = 0;
  if ((*(v0 + 216) & 1) == 0)
  {
    v2 = *(v0 + 200);
    if (v2 != 0xFFFFFFFFLL)
    {
      v1 = v2 + 1;
      if (v2 == -1)
      {
        __break(1u);
      }
    }
  }

  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 280);

  v6 = *(v0 + 8);

  return v6(v1, 0);
}

uint64_t sub_1000D12C8()
{
  v1 = v0[42];
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FCD0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not get next conversion tag %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[35];

  v11 = v0[1];

  return v11(0, 1);
}

uint64_t sub_1000D14BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 800) = v4;
  *(v5 + 936) = a4;
  *(v5 + 792) = a3;
  *(v5 + 784) = a2;
  *(v5 + 776) = a1;
  v6 = type metadata accessor for ReengagementConversionTask(0);
  *(v5 + 808) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 816) = swift_task_alloc();
  v8 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  *(v5 + 824) = v8;
  v9 = *(v8 - 8);
  *(v5 + 832) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 840) = swift_task_alloc();
  v11 = type metadata accessor for URL.DirectoryHint();
  *(v5 + 848) = v11;
  v12 = *(v11 - 8);
  *(v5 + 856) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 864) = swift_task_alloc();
  v14 = type metadata accessor for URL();
  *(v5 + 872) = v14;
  v15 = *(v14 - 8);
  *(v5 + 880) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 888) = swift_task_alloc();
  *(v5 + 896) = swift_task_alloc();

  return _swift_task_switch(sub_1000D16AC, 0, 0);
}

uint64_t sub_1000D16AC()
{
  v1 = *(v0 + 784);
  v2 = v1 + *(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) + 68);
  v3 = *(v2 + *(type metadata accessor for AppImpressionPayload() + 44));
  if (v3 == 2 || (v3 & 1) == 0)
  {
    if (qword_100239CE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000DAC0(v8, qword_10023FCD0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Impression is not eligible for re-engagement", v11, 2u);
    }
  }

  else
  {
    v4 = *(v0 + 776);
    if (v4 == 915061776)
    {
      v5 = 0xD000000000000012;
      v6 = objc_allocWithZone(LSApplicationRecord);
      v7 = sub_1000BB120(0xD000000000000012, 0x80000001001CB3C0, 0);
      v143 = 0x80000001001CB3C0;
      *(v0 + 688) = sub_10006DF54();
      *(v0 + 696) = &off_10021F840;
      *(v0 + 664) = v7;
      sub_10000DA64((v0 + 664), v0 + 624);
      goto LABEL_16;
    }

    v19 = objc_allocWithZone(LSApplicationRecord);
    *(v0 + 760) = 0;
    v20 = [v19 initWithStoreItemIdentifier:v4 error:v0 + 760];
    v21 = *(v0 + 760);
    if (v20)
    {
      v22 = v20;
      *(v0 + 688) = sub_10006DF54();
      *(v0 + 696) = &off_10021F840;
      *(v0 + 664) = v22;
      sub_10000DA64((v0 + 664), v0 + 624);
      v23 = *(v0 + 648);
      v24 = *(v0 + 656);
      sub_10000DA7C((v0 + 624), v23);
      v25 = *(v24 + 32);
      v26 = v21;
      v27 = v25(v23, v24);
      if (v28)
      {
        v5 = v27;
        v143 = v28;
LABEL_16:
        v146 = v5;
        v29 = *(v0 + 776);
        v30 = objc_allocWithZone(LSApplicationRecord);
        *(v0 + 768) = 0;
        v31 = [v30 initWithStoreItemIdentifier:v29 error:v0 + 768];
        v32 = *(v0 + 768);
        if (v31)
        {
          v33 = v31;
          v34 = *(v0 + 896);
          v35 = *(v0 + 888);
          v36 = *(v0 + 880);
          v140 = *(v0 + 872);
          v37 = *(v0 + 864);
          v38 = *(v0 + 856);
          v39 = *(v0 + 848);
          v40 = type metadata accessor for PropertyListDecoder();
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          swift_allocObject();
          v43 = v32;
          PropertyListDecoder.init()();
          v44 = [v33 URL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          *(v0 + 744) = 0x696C702E6F666E49;
          *(v0 + 752) = 0xEA00000000007473;
          (*(v38 + 104))(v37, enum case for URL.DirectoryHint.inferFromPath(_:), v39);
          sub_10003E5C8();
          URL.appending<A>(path:directoryHint:)();
          (*(v38 + 8))(v37, v39);
          v45 = *(v36 + 8);
          v45(v35, v140);
          v46 = Data.init(contentsOf:options:)();
          v48 = v47;
          v45(*(v0 + 896), *(v0 + 872));
          sub_1000BB9AC();
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          sub_10001BABC(v46, v48);

          v121 = *(v0 + 528);
          *(v0 + 592) = *(v0 + 512);
          *(v0 + 608) = v121;
          v122 = *(v0 + 496);
          *(v0 + 560) = *(v0 + 480);
          *(v0 + 576) = v122;
          *(v0 + 544) = *(v0 + 464);
          if (*(v0 + 568) != 1)
          {
            v123 = *(v0 + 616);
            v124 = *(v0 + 608);
            v136 = *(v0 + 592);
            v138 = *(v0 + 584);
            v141 = *(v0 + 576);
            v132 = (*(v0 + 600) >> 8) & 1;
            v134 = *(v0 + 600);

            sub_1000D54FC(v124, v123);
            sub_10009B180(v0 + 544);

            sub_1000D5520(v124, v123);
            goto LABEL_44;
          }

          sub_10009B180(v0 + 544);
        }

        else
        {
          v70 = v32;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_100239CE0 != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Logger();
          sub_10000DAC0(v81, qword_10023FCD0);
          swift_errorRetain();
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *v84 = 138412290;
            swift_errorRetain();
            v86 = _swift_stdlib_bridgeErrorToNSError();
            *(v84 + 4) = v86;
            *v85 = v86;
            _os_log_impl(&_mh_execute_header, v82, v83, "Fetching cooldown windows failed with error: %@", v84, 0xCu);
            sub_10000DAF8(v85, &qword_100239F10, &qword_1001B4FD0);
          }

          else
          {
          }
        }

        v138 = 0;
        v141 = 0;
        LOBYTE(v134) = 0;
        v136 = 0;
        LOBYTE(v132) = 1;
LABEL_44:
        v87 = *(v0 + 840);
        v88 = *(v0 + 832);
        v89 = *(v0 + 824);
        v90 = *(v0 + 816);
        v91 = *(v0 + 808);
        v92 = *(v0 + 800);
        v93 = *(v0 + 936);
        v94 = *(v0 + 792);
        v95 = *(v0 + 776);
        sub_100014B50(*(v0 + 784), v87 + v89[5], &qword_10023A7D0, &unk_1001B5840);
        *v87 = v95;
        v96 = (v87 + v89[6]);
        *v96 = v146;
        v96[1] = v143;
        v97 = v87 + v89[7];
        *v97 = v94;
        v97[8] = v93 & 1;
        v98 = v87 + v89[8];
        *v98 = v141;
        *(v98 + 1) = v138;
        *(v98 + 2) = v136;
        v98[24] = v134;
        v98[25] = v132;
        sub_1000D5544(v87, v90, type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);
        (*(v88 + 56))(v90, 0, 1, v89);
        v100 = v92[4];
        v99 = v92[5];
        v101 = v92[1];
        v144 = v92[2];
        v102 = v92[10];
        v139 = v92[11];
        v103 = v92[13];
        v135 = *v92;
        v137 = v92[12];
        v104 = v92[7];
        v142 = v92[6];
        v130 = v92[9];
        v131 = v92[3];
        v125 = v92[14];
        v126 = v92[8];
        sub_10000CE28((v92 + 18), v90 + v91[10]);
        sub_10000CE28((v92 + 28), v90 + v91[11]);
        sub_10000CE28((v92 + 33), v90 + v91[12]);
        sub_10000CE28((v92 + 23), v90 + v91[13]);
        sub_10000CE28((v92 + 38), v90 + v91[14]);
        sub_10000CE28((v92 + 43), v90 + v91[15]);
        v105 = qword_100239CE0;
        v133 = v100;

        v129 = v99;
        v147 = v101;

        v128 = v144;
        v145 = v102;

        v127 = v139;

        v106 = v125;

        v107 = v126;
        if (v105 != -1)
        {
          swift_once();
        }

        v108 = *(v0 + 816);
        v109 = *(v0 + 808);
        v110 = *(v0 + 800);
        v111 = type metadata accessor for Logger();
        v112 = sub_10000DAC0(v111, qword_10023FCD0);
        (*(*(v111 - 8) + 16))(v108 + v109[16], v112, v111);
        sub_10000CE28(v110 + 384, v108 + v109[17]);
        v113 = (v108 + v109[5]);
        *v113 = v131;
        v113[1] = v133;
        v113[2] = v129;
        v114 = (v108 + v109[6]);
        *v114 = v135;
        v114[1] = v147;
        v114[2] = v128;
        v115 = (v108 + v109[7]);
        *v115 = v130;
        v115[1] = v145;
        v115[2] = v127;
        v116 = (v108 + v109[8]);
        *v116 = v137;
        v116[1] = v103;
        v116[2] = v106;
        v117 = (v108 + v109[9]);
        *v117 = v142;
        v117[1] = v104;
        v117[2] = v107;
        sub_10000DA7C(v92 + 33, *(v110 + 288));
        *(v0 + 728) = v109;
        *(v0 + 736) = &off_10023BF18;
        v118 = sub_10005CA24((v0 + 704));
        sub_1000D5544(v108, v118, type metadata accessor for ReengagementConversionTask);
        v119 = type metadata accessor for TaskGreyhound();
        v120 = swift_task_alloc();
        *(v0 + 904) = v120;
        *v120 = v0;
        v120[1] = sub_1000D27AC;

        return (sub_10000C9BC)(v0 + 704, v119, &off_1002169F0);
      }

      if (qword_100239CE0 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_10000DAC0(v72, qword_10023FCD0);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = *(v0 + 776);
        v76 = swift_slowAlloc();
        *v76 = 134217984;
        *(v76 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v73, v74, "Marketplace ID for advertised app %llu is nil", v76, 0xCu);
      }

      v77 = *(v0 + 800);

      sub_10005C97C();
      v78 = swift_allocError();
      *v79 = xmmword_1001BDBD0;
      *(v79 + 16) = 2;
      sub_1000C7DDC(2u, v78, (v0 + 240));

      sub_10000DA7C((v77 + 384), *(v77 + 408));
      v66 = type metadata accessor for SnoutManager();
      v80 = swift_task_alloc();
      *(v0 + 912) = v80;
      *v80 = v0;
      v80[1] = sub_1000D29EC;
      v68 = *(v0 + 776);
      v69 = v0 + 240;
      goto LABEL_35;
    }

    v49 = v21;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *(v0 + 920) = v50;
    v51 = _convertErrorToNSError(_:)();
    v52 = [v51 code];

    if (v52 != -10814)
    {
      if (qword_100239CE0 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10000DAC0(v58, qword_10023FCD0);
      swift_errorRetain();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = *(v0 + 776);
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 134218242;
        *(v62 + 4) = v61;
        *(v62 + 12) = 2112;
        swift_errorRetain();
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 14) = v64;
        *v63 = v64;
        _os_log_impl(&_mh_execute_header, v59, v60, "Unexpected error fetching LSApplicationRecord for itemID: %llu, error: %@", v62, 0x16u);
        sub_10000DAF8(v63, &qword_100239F10, &qword_1001B4FD0);
      }

      v65 = *(v0 + 800);

      swift_errorRetain();
      sub_1000C7DDC(2u, v50, (v0 + 16));

      sub_10000DA7C((v65 + 384), *(v65 + 408));
      v66 = type metadata accessor for SnoutManager();
      v67 = swift_task_alloc();
      *(v0 + 928) = v67;
      *v67 = v0;
      v67[1] = sub_1000D2BF0;
      v68 = *(v0 + 776);
      v69 = v0 + 16;
LABEL_35:

      return (sub_10016E27C)(v69, v68, 0, 0, v66, &off_100223858);
    }

    if (qword_100239CE0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000DAC0(v53, qword_10023FCD0);
    v9 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = os_log_type_enabled(v9, v54);
    v56 = *(v0 + 920);
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v9, v54, "Advertised item ID is not installed, skipping re-engagement processing", v57, 2u);

      goto LABEL_10;
    }

    v71 = *(v0 + 920);
  }

LABEL_10:
  v12 = *(v0 + 896);
  v13 = *(v0 + 888);
  v14 = *(v0 + 864);
  v15 = *(v0 + 840);
  v16 = *(v0 + 816);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000D27AC()
{
  v1 = *v0;
  v2 = *(*v0 + 904);
  v4 = *v0;

  sub_10000DB58((v1 + 704));

  return _swift_task_switch(sub_1000D28DC, 0, 0);
}

uint64_t sub_1000D28DC()
{
  v1 = v0[105];
  sub_1000D55AC(v0[102], type metadata accessor for ReengagementConversionTask);
  sub_1000D55AC(v1, type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);
  sub_10000DB58(v0 + 78);
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];
  v5 = v0[105];
  v6 = v0[102];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D29EC()
{
  v1 = *v0;
  v2 = *(*v0 + 912);
  v4 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000D2B1C, 0, 0);
}

uint64_t sub_1000D2B1C()
{
  sub_10000DB58(v0 + 78);
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[105];
  v5 = v0[102];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000D2BF0()
{
  v1 = *v0;
  v2 = *(*v0 + 928);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000D2D20, 0, 0);
}

uint64_t sub_1000D2D20()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[115];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Advertised item ID is not installed, skipping re-engagement processing", v6, 2u);
  }

  else
  {
    v7 = v0[115];
  }

  v8 = v0[112];
  v9 = v0[111];
  v10 = v0[108];
  v11 = v0[105];
  v12 = v0[102];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000D2EBC()
{
  v1 = [objc_allocWithZone(NSNumberFormatter) init];
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 numberFromString:v4];

  if (v5)
  {
    v6 = [v5 unsignedLongLongValue];

    sub_1000B7C6C(v6, v14);
    sub_100014B50(v14, v11, &qword_10023A7E0, &qword_1001B5850);
    v7 = v12;
    if (v12)
    {
      v8 = v13;
      sub_10000DA7C(v11, v12);
      v9 = (*(v8 + 24))(v7, v8);

      sub_1000D5894(v14);
      sub_10000DB58(v11);
      return v9;
    }

    sub_1000D5894(v14);

    sub_10000DAF8(v11, &qword_10023A7E0, &qword_1001B5850);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000D300C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a4;
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = type metadata accessor for InstallConversionTask();
  *(v5 + 88) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1000D30A8, 0, 0);
}

uint64_t sub_1000D30A8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = v2[4];
  v41 = v2[5];
  v6 = v2[1];
  v38 = v2[2];
  v40 = *v2;
  v7 = v2[10];
  v8 = v2[13];
  v35 = v2[12];
  v36 = v2[11];
  v33 = v2[14];
  v9 = v2[7];
  v31 = v2[3];
  v32 = v2[6];
  v30 = v2[9];
  v24 = v2[8];
  sub_10000CE28((v2 + 18), v1 + 152);
  sub_10000CE28((v2 + 28), v1 + 192);
  sub_10000CE28((v2 + 33), v1 + 232);
  sub_10000CE28((v2 + 23), v1 + 272);
  sub_1000438D8(v4, v3);
  v10 = qword_100239CE0;
  v43 = v5;

  v29 = v41;
  v42 = v6;

  v28 = v38;
  v39 = v7;

  v27 = v36;
  v37 = v8;

  v26 = v33;
  v34 = v9;

  v25 = v24;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = type metadata accessor for Logger();
  v19 = sub_10000DAC0(v18, qword_10023FCD0);
  (*(*(v18 - 8) + 16))(v12 + *(v11 + 56), v19, v18);
  sub_10000CE28(v14 + 384, v12 + *(v11 + 60));
  *v12 = v15;
  *(v12 + 8) = v16;
  *(v12 + 16) = v17;
  *(v12 + 24) = v13;
  *(v12 + 32) = v31;
  *(v12 + 40) = v43;
  *(v12 + 48) = v29;
  *(v12 + 56) = v40;
  *(v12 + 64) = v42;
  *(v12 + 72) = v28;
  *(v12 + 80) = v30;
  *(v12 + 88) = v39;
  *(v12 + 96) = v27;
  *(v12 + 104) = v35;
  *(v12 + 112) = v37;
  *(v12 + 120) = v26;
  *(v12 + 128) = v32;
  *(v12 + 136) = v34;
  *(v12 + 144) = v25;
  sub_10000DA7C(v2 + 33, *(v14 + 288));
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_10023AE78;
  v20 = sub_10005CA24((v0 + 16));
  sub_1000D5544(v12, v20, type metadata accessor for InstallConversionTask);
  v21 = type metadata accessor for TaskGreyhound();
  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  v22[1] = sub_1000D3430;

  return (sub_10000C9BC)(v0 + 16, v21, &off_1002169F0);
}

uint64_t sub_1000D3430()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v4 = *v0;

  sub_10000DB58((v1 + 16));

  return _swift_task_switch(sub_1000D3534, 0, 0);
}

uint64_t sub_1000D3534()
{
  sub_1000D55AC(*(v0 + 96), type metadata accessor for InstallConversionTask);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D35B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for InstallConversionTask();
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000D364C, 0, 0);
}

uint64_t sub_1000D364C()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v2[4];
  v40 = v2[5];
  v6 = v2[1];
  v37 = v2[2];
  v39 = *v2;
  v7 = v2[10];
  v8 = v2[13];
  v34 = v2[12];
  v35 = v2[11];
  v32 = v2[14];
  v9 = v2[7];
  v30 = v2[3];
  v31 = v2[6];
  v29 = v2[9];
  v24 = v2[8];
  sub_10000CE28((v2 + 18), v1 + 152);
  sub_10000CE28((v2 + 28), v1 + 192);
  sub_10000CE28((v2 + 33), v1 + 232);
  sub_10000CE28((v2 + 23), v1 + 272);
  sub_1000438D8(v4, v3);
  v10 = qword_100239CE0;
  v42 = v5;

  v28 = v40;
  v41 = v6;

  v27 = v37;
  v38 = v7;

  v26 = v35;
  v36 = v8;

  v25 = v32;
  v33 = v9;

  v11 = v24;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0[11];
  v13 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[7];
  v17 = v0[8] | 0x2000000000000000;
  v18 = type metadata accessor for Logger();
  v19 = sub_10000DAC0(v18, qword_10023FCD0);
  (*(*(v18 - 8) + 16))(v13 + *(v12 + 56), v19, v18);
  sub_10000CE28(v14 + 384, v13 + *(v12 + 60));
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  *(v13 + 24) = 0;
  *(v13 + 32) = v30;
  *(v13 + 40) = v42;
  *(v13 + 48) = v28;
  *(v13 + 56) = v39;
  *(v13 + 64) = v41;
  *(v13 + 72) = v27;
  *(v13 + 80) = v29;
  *(v13 + 88) = v38;
  *(v13 + 96) = v26;
  *(v13 + 104) = v34;
  *(v13 + 112) = v36;
  *(v13 + 120) = v25;
  *(v13 + 128) = v31;
  *(v13 + 136) = v33;
  *(v13 + 144) = v11;
  sub_10000DA7C(v2 + 33, *(v14 + 288));
  v0[5] = v12;
  v0[6] = &off_10023AE78;
  v20 = sub_10005CA24(v0 + 2);
  sub_1000D5544(v13, v20, type metadata accessor for InstallConversionTask);
  v21 = type metadata accessor for TaskGreyhound();
  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v22[1] = sub_1000D39D0;

  return (sub_10000C9BC)(v0 + 2, v21, &off_1002169F0);
}

uint64_t sub_1000D39D0()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v4 = *v0;

  sub_10000DB58((v1 + 16));

  return _swift_task_switch(sub_1000D58E8, 0, 0);
}

uint64_t sub_1000D3AE8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1000D3C14@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4828(*a1);
  *a2 = result;
  return result;
}

void sub_1000D3C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0x65696C632D667270;
  v5 = 0xEB00000000657461;
  v6 = 0x6369666974726563;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564692D6D657469;
  if (v2 != 4)
  {
    v8 = 0x776F6465722D7369;
    v7 = 0xED000064616F6C6ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00007475706E69;
  v10 = 0x2D65746176697270;
  if (v2 != 1)
  {
    v10 = 0x6D617473656D6974;
    v9 = 0xE900000000000070;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1000D3D38()
{
  v1 = *v0;
  v2 = 0x65696C632D667270;
  v3 = 0x6369666974726563;
  v4 = 0x6564692D6D657469;
  if (v1 != 4)
  {
    v4 = 0x776F6465722D7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x2D65746176697270;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D3E28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4828(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D3E50(uint64_t a1)
{
  v2 = sub_1000D40C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D3E8C(uint64_t a1)
{
  v2 = sub_1000D40C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TokenHandoff.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C998, &qword_1001BDBE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000D40C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v21[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v21[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[5];
  v17 = v3[6];
  v21[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[7];
  v21[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = *(v3 + 64);
  v21[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000D40C8()
{
  result = qword_10023C9A0;
  if (!qword_10023C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9A0);
  }

  return result;
}

__n128 TokenHandoff.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D48C0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000D41A0()
{
  *v0;
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1000D4288@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4874(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D42B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = 6580578;
  v3 = *v1;
  v4 = 0xE500000000000000;
  v5 = 0x65636E6F6ELL;
  if (v3 != 5)
  {
    v5 = 0x65646F6363;
    v4 = 0xE500000000000000;
  }

  v6 = 7627113;
  result = 7566185;
  if (v3 != 3)
  {
    v6 = 7566185;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE300000000000000;
  }

  v8 = 0xE300000000000000;
  if (v3 != 1)
  {
    v2 = 0x6570797464;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 6583649;
    v9 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10;
  return result;
}

uint64_t sub_1000D4368()
{
  v1 = 6580578;
  v2 = *v0;
  v3 = 0x65636E6F6ELL;
  if (v2 != 5)
  {
    v3 = 0x65646F6363;
  }

  v4 = 7627113;
  if (v2 != 3)
  {
    v4 = 7566185;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0x6570797464;
  }

  if (!*v0)
  {
    v1 = 6583649;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D4414@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4874(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D443C(uint64_t a1)
{
  v2 = sub_1000D4C40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D4478(uint64_t a1)
{
  v2 = sub_1000D4C40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PODTokenPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C9A8, &qword_1001BDBE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000D4C40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v25[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v25[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v25[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v25[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[7];
  v19 = v3[8];
  v25[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[9];
  v21 = v3[10];
  v25[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v23 = v3[11];
  v24 = v3[12];
  v25[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

__n128 PODTokenPayload.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D4C94(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1000D474C(void *a1)
{
  if (a1[2])
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x2C746E656D656C65;
  }

  a1[2];
  v2 = 0x2C666F6F7270;
  if (a1[4])
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  if (a1[6])
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x6369666974726563;
  }

  if (a1[6])
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = 0xEB00000000657461;
  }

  v9 = v1;
  v6._countAndFlagsBits = v2;
  v6._object = v3;
  String.append(_:)(v6);

  v7._countAndFlagsBits = v4;
  v7._object = v5;
  String.append(_:)(v7);

  return v9;
}

unint64_t sub_1000D4828(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214F50, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D4874(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215638, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D48C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023C9F0, &qword_1001BE010);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000D40C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v34[0]) = 1;
  *&v28 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v28 + 1) = v14;
  LOBYTE(v34[0]) = 2;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v34[0]) = 3;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  LOBYTE(v34[0]) = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = 5;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v41 = v16 & 1;
  *&v29 = v11;
  *(&v29 + 1) = v13;
  v17 = v28;
  v30 = v28;
  v18 = v26;
  *&v31 = v26;
  *(&v31 + 1) = v25;
  v19 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v24;
  v33 = v41;
  sub_1000D5644(&v29, v34);
  sub_10000DB58(a1);
  v34[0] = v11;
  v34[1] = v13;
  v35 = v17;
  v36 = v18;
  v37 = v25;
  v38 = v19;
  v39 = v24;
  v40 = v41;
  result = sub_10005C884(v34);
  v21 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v21;
  *(a2 + 64) = v33;
  v22 = v30;
  *a2 = v29;
  *(a2 + 16) = v22;
  return result;
}

unint64_t sub_1000D4C40()
{
  result = qword_10023C9B0;
  if (!qword_10023C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9B0);
  }

  return result;
}

uint64_t sub_1000D4C94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023C9E8, &qword_1001BE008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000D4C40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v46[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v12;
  LOBYTE(v46[0]) = 1;
  *&v37 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v37 + 1) = v13;
  LOBYTE(v46[0]) = 2;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v46[0]) = 3;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v46[0]) = 4;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v16;
  LOBYTE(v46[0]) = 5;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v17;
  v57 = 6;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = *(v6 + 8);
  v20 = v18;
  v30 = v21;
  v19(v9, v5);
  *&v39 = v11;
  v22 = v38;
  *(&v39 + 1) = v38;
  v40 = v37;
  *&v41 = v36;
  *(&v41 + 1) = v15;
  *&v42 = v33;
  v23 = v35;
  *(&v42 + 1) = v32;
  *&v43 = v35;
  *(&v43 + 1) = v31;
  *&v44 = v34;
  v24 = v30;
  *(&v44 + 1) = v20;
  v45 = v30;
  sub_1000D560C(&v39, v46);
  sub_10000DB58(a1);
  v46[0] = v11;
  v46[1] = v22;
  v47 = v37;
  v48 = v36;
  v49 = v15;
  v50 = v33;
  v51 = v32;
  v52 = v23;
  v53 = v31;
  v54 = v34;
  v55 = v20;
  v56 = v24;
  result = sub_10005C9D0(v46);
  v26 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v26;
  *(a2 + 96) = v45;
  v27 = v40;
  *a2 = v39;
  *(a2 + 16) = v27;
  v28 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v28;
  return result;
}

__n128 sub_1000D518C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000D51B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000D51F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D5290()
{
  result = qword_10023C9B8;
  if (!qword_10023C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9B8);
  }

  return result;
}

unint64_t sub_1000D52E8()
{
  result = qword_10023C9C0;
  if (!qword_10023C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9C0);
  }

  return result;
}

unint64_t sub_1000D5340()
{
  result = qword_10023C9C8;
  if (!qword_10023C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9C8);
  }

  return result;
}

unint64_t sub_1000D5398()
{
  result = qword_10023C9D0;
  if (!qword_10023C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9D0);
  }

  return result;
}

unint64_t sub_1000D53F0()
{
  result = qword_10023C9D8;
  if (!qword_10023C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9D8);
  }

  return result;
}

unint64_t sub_1000D5448()
{
  result = qword_10023C9E0;
  if (!qword_10023C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9E0);
  }

  return result;
}

double sub_1000D54AC@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  result = sub_10005CE24(&v7);
  if (!v2)
  {
    v6 = v8[0];
    *a1 = v7;
    a1[1] = v6;
    result = *(v8 + 9);
    *(a1 + 25) = *(v8 + 9);
  }

  return result;
}

uint64_t sub_1000D54FC(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1000D550C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000D550C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000D5520(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1000D5530(a1, a2);
  }

  return a1;
}

uint64_t sub_1000D5530(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000D5544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D55AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D567C(uint64_t a1)
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

__n128 sub_1000D5698(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000D56AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000D56F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000D5738(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000D5768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 424))
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

uint64_t sub_1000D57B0(uint64_t result, int a2, int a3)
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 424) = 1;
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

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D586C(uint64_t a1)
{
  result = sub_10005C97C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D591C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Date();
  sub_100026610(v3, a2);
  sub_10000DAC0(v3, a2);
  return Date.init(timeIntervalSinceNow:)();
}

uint64_t sub_1000D5974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[188] = v8;
  v9[187] = a8;
  v9[186] = a7;
  v9[185] = a6;
  v9[184] = a5;
  v9[183] = a4;
  v9[182] = a3;
  v9[181] = a2;
  v9[180] = a1;
  v10 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v9[189] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v9[190] = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023CA30, &qword_1001BE288) - 8) + 64) + 15;
  v9[191] = swift_task_alloc();
  v13 = *(*(sub_10000CDE0(&qword_10023CA38, &qword_1001BE290) - 8) + 64) + 15;
  v9[192] = swift_task_alloc();
  v14 = *(*(sub_10000CDE0(&qword_10023A718, qword_1001BBA70) - 8) + 64) + 15;
  v9[193] = swift_task_alloc();
  v9[194] = swift_task_alloc();
  v9[195] = swift_task_alloc();
  v9[196] = swift_task_alloc();
  v9[197] = swift_task_alloc();
  v15 = type metadata accessor for AdAttributionKitConversion();
  v9[198] = v15;
  v16 = *(v15 - 8);
  v9[199] = v16;
  v17 = *(v16 + 64) + 15;
  v9[200] = swift_task_alloc();
  v9[201] = swift_task_alloc();
  v9[202] = swift_task_alloc();
  v18 = type metadata accessor for Date();
  v9[203] = v18;
  v19 = *(v18 - 8);
  v9[204] = v19;
  v20 = *(v19 + 64) + 15;
  v9[205] = swift_task_alloc();
  v9[206] = swift_task_alloc();
  v9[207] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5BF4, 0, 0);
}

uint64_t sub_1000D5BF4()
{
  v1 = v0[188];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_allocObject();
  v0[208] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;

  v8 = swift_task_alloc();
  v0[209] = v8;
  *v8 = v0;
  v8[1] = sub_1000D5D14;

  return sub_10010FF18((v0 + 158), sub_1000E1CF0, v7, v4, v5, v6);
}

uint64_t sub_1000D5D14()
{
  v2 = *v1;
  v3 = *(*v1 + 1672);
  v7 = *v1;
  *(*v1 + 1680) = v0;

  v4 = *(v2 + 1664);

  if (v0)
  {
    v5 = sub_1000D87CC;
  }

  else
  {
    v5 = sub_1000D5E38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000D5E38()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1328);
  *(v0 + 1400) = *(v0 + 1312);
  *(v0 + 1416) = v2;
  *(v0 + 1432) = *(v0 + 1344);
  v3 = *(v0 + 1296);
  *(v0 + 1368) = v1;
  *(v0 + 1384) = v3;
  *(v0 + 1352) = *(v0 + 1264);
  v4 = *(v0 + 1368);
  *(v0 + 1688) = v4;
  v5 = *(v0 + 1376);
  *(v0 + 1257) = v5;
  v6 = *(v0 + 1400);
  *(v0 + 1696) = *(v0 + 1424);
  if (v6)
  {
    v7 = *(v0 + 1656);
    v8 = *(v0 + 1504);
    v9 = *(v0 + 1496);
    v10 = *(v0 + 1384) / 1000.0;
    Date.init(timeIntervalSince1970:)();
    sub_1000D8D88(v9, (v0 + 256));
    v11 = *(v0 + 464);
    *(v0 + 208) = *(v0 + 448);
    *(v0 + 224) = v11;
    *(v0 + 240) = *(v0 + 480);
    v12 = *(v0 + 400);
    *(v0 + 144) = *(v0 + 384);
    *(v0 + 160) = v12;
    v13 = *(v0 + 432);
    *(v0 + 176) = *(v0 + 416);
    *(v0 + 192) = v13;
    v14 = *(v0 + 336);
    *(v0 + 80) = *(v0 + 320);
    *(v0 + 96) = v14;
    v15 = *(v0 + 368);
    *(v0 + 112) = *(v0 + 352);
    *(v0 + 128) = v15;
    v16 = *(v0 + 272);
    *(v0 + 16) = *(v0 + 256);
    *(v0 + 32) = v16;
    v17 = *(v0 + 304);
    *(v0 + 48) = *(v0 + 288);
    *(v0 + 64) = v17;
    if (sub_1000E1D58(v0 + 16) == 1)
    {
      v18 = swift_task_alloc();
      *(v0 + 1784) = v18;
      *v18 = v0;
      v18[1] = sub_1000D7548;
      v19 = *(v0 + 1504);
      v20 = *(v0 + 1488);
      v21 = *(v0 + 1448);
      v22 = *(v0 + 1440);

      return sub_1000D985C(v0 + 1168, v20, v22, v21);
    }

    if (!*(*(v0 + 1480) + 16) || (v39 = sub_1000C3CA8(*(v0 + 232)), (v40 & 1) == 0))
    {
      sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
      sub_10000DAF8(v0 + 256, &qword_10023CA48, &qword_1001BE2A8);
      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_10000DAC0(v56, qword_10023FD48);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Impression required for reporting", v59, 2u);
      }

      sub_1000E17B4();
      v54 = swift_allocError();
      v55 = 4;
      goto LABEL_29;
    }

    v41 = *(*(v0 + 1480) + 56) + 224 * v39;
    v42 = *v41;
    v43 = *(v41 + 8);
    *(v0 + 1712) = *(v41 + 24);
    *(v0 + 1720) = *(v41 + 32);
    v44 = *(v41 + 56);
    *(v0 + 1728) = v44;
    v45 = *(v41 + 64);
    v144 = *(v41 + 128);
    v147 = v42;
    v46 = *(v41 + 136);
    *(v0 + 1258) = v46;
    v47 = *(v41 + 184);
    string = *(v41 + 176);
    v141 = *(v41 + 208);
    string_8 = *(v41 + 216);

    sub_10000DAF8(v0 + 256, &qword_10023CA48, &qword_1001BE2A8);
    if ((v45 & 1) != 0 || HIDWORD(v44))
    {
      sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);

      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_10000DAC0(v73, qword_10023FD48);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "Source id is required for reporting", v76, 2u);
      }

      sub_1000E17B4();
      v54 = swift_allocError();
      *v77 = 0;
      goto LABEL_30;
    }

    if (v46)
    {
      v48 = v147;
      if (!v43)
      {
        sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);

        if (qword_100239D08 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_10000DAC0(v49, qword_10023FD48);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Publisher type is required for reporting", v52, 2u);
        }

        sub_1000E17B4();
        v54 = swift_allocError();
        v55 = 5;
LABEL_29:
        *v53 = v55;
LABEL_30:
        swift_willThrow();
        *(v0 + 1824) = v54;
        if (qword_100239D08 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_10000DAC0(v60, qword_10023FD48);
        swift_errorRetain();
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = 138412290;
          swift_errorRetain();
          v65 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 4) = v65;
          *v64 = v65;
          _os_log_impl(&_mh_execute_header, v61, v62, "Encountered error while donating purchase event: %@", v63, 0xCu);
          sub_10000DAF8(v64, &qword_100239F10, &qword_1001B4FD0);
        }

        swift_errorRetain();
        sub_1000CA6E0(v54, (v0 + 496));
        v66 = swift_task_alloc();
        *(v0 + 1832) = v66;
        *v66 = v0;
        v66[1] = sub_1000D88FC;
        v67 = *(v0 + 1688);
        v68 = *(v0 + 1504);
        v69 = *(v0 + 1448);
        v70 = *(v0 + 1440);
        v71 = *(v0 + 1257);
        v72 = (v0 + 496);
LABEL_35:

        return sub_1000D8F60(v72, v70, v69, v67, v71, v54);
      }
    }

    else
    {

      v43 = 0;
      v48 = v144;
    }

    *(v0 + 1744) = v43;
    *(v0 + 1736) = v48;
    v78 = *(v0 + 1632);
    v79 = *(v0 + 1624);
    v80 = *(v0 + 1576);
    v81 = *(v78 + 56);
    *(v0 + 1752) = v81;
    *(v0 + 1760) = (v78 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v81(v80, 1, 1, v79);
    if ((string_8 & 1) == 0)
    {
      v82 = *(v0 + 1624);
      v83 = *(v0 + 1576);
      v84 = *(v0 + 1568);
      Date.init(timeIntervalSince1970:)();
      sub_10000DAF8(v83, &qword_10023A718, qword_1001BBA70);
      v81(v84, 0, 1, v82);
      sub_1000E1DB8(v84, v83);
    }

    if (v47)
    {
      v85._countAndFlagsBits = string;
      v85._object = v47;
      v86 = _findStringSwitchCase(cases:string:)(&off_100214368, v85);

      if (!v86)
      {
        v87 = &enum case for AdAttributionKitAdInteractionType.view(_:);
        goto LABEL_56;
      }

      if (v86 == 1)
      {
        v87 = &enum case for AdAttributionKitAdInteractionType.click(_:);
LABEL_56:
        string_8a = v87;
        v142 = *(v0 + 1752);
        v145 = *(v0 + 1760);
        v97 = *(v0 + 1704);
        v148 = *(v0 + 1696);
        stringb = *(v0 + 1257);
        v133 = *(v0 + 1688);
        v134 = *(v0 + 1712);
        v98 = *(v0 + 1656);
        v99 = *(v0 + 1648);
        v139 = v99;
        v140 = *(v0 + 1728);
        v136 = *(v0 + 1720);
        v137 = *(v0 + 1624);
        v100 = *(v0 + 1608);
        v101 = *(v0 + 1576);
        v102 = *(v0 + 1568);
        v103 = *(v0 + 1560);
        v135 = *(v0 + 1464);
        v138 = *(v0 + 1456);
        v104 = *(v0 + 1448);
        v132 = *(v0 + 1440);
        v105 = *(*(v0 + 1632) + 16);
        v105();
        sub_100014B50(v101, v103, &qword_10023A718, qword_1001BBA70);

        AdAttributionKitConversion.init()();

        AdAttributionKitConversion.conversionID.setter();
        AdAttributionKitConversion.advertisedItemID.setter();
        AdAttributionKitConversion.adNetworkID.setter();
        AdAttributionKitConversion.sourceID.setter();

        AdAttributionKitConversion.marketplaceID.setter();
        (v105)(v102, v139, v137);
        v142(v102, 0, 1, v137);
        AdAttributionKitConversion.conversionDate.setter();
        sub_100014B50(v103, v102, &qword_10023A718, qword_1001BBA70);
        AdAttributionKitConversion.impressionDate.setter();
        AdAttributionKitConversion.countryCode.setter();
        v106 = type metadata accessor for AdAttributionKitConversionType();
        v107 = *(v106 - 8);
        LODWORD(v104) = *(v0 + 1258);
        v108 = *(v0 + 1608);
        v109 = *(v0 + 1536);
        (*(v107 + 104))(v109, **(&off_10021E0F8 + stringb), v106);
        (*(v107 + 56))(v109, 0, 1, v106);
        AdAttributionKitConversion.conversionType.setter();
        if (v104 == 1)
        {
          v110 = *(v0 + 1744);
          v111 = *(v0 + 1736);
          v112 = *(v0 + 1608);
          AdAttributionKitConversion.sourceDomain.setter();
        }

        else
        {
          v113 = *(v0 + 1736);
          v114 = *(v0 + 1608);
          AdAttributionKitConversion.publisherItemID.setter();
        }

        v115 = *(v0 + 1648);
        v116 = *(v0 + 1632);
        v117 = *(v0 + 1624);
        v118 = *(v0 + 1608);
        stringc = *(v0 + 1576);
        v119 = *(v0 + 1560);
        v120 = *(v0 + 1528);
        v121 = type metadata accessor for AdAttributionKitAdInteractionType();
        v122 = *(v121 - 8);
        (*(v122 + 104))(v120, *string_8a, v121);
        (*(v122 + 56))(v120, 0, 1, v121);
        AdAttributionKitConversion.adInteractionType.setter();
        sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
        sub_10000DAF8(v119, &qword_10023A718, qword_1001BBA70);
        v123 = *(v116 + 8);
        v123(v115, v117);
        sub_10000DAF8(stringc, &qword_10023A718, qword_1001BBA70);
        v124 = *(v0 + 1608);
        *(v0 + 1792) = v123;
        (*(*(v0 + 1592) + 32))(*(v0 + 1616), v124, *(v0 + 1584));
        if (qword_100239D08 != -1)
        {
          swift_once();
        }

        v125 = type metadata accessor for Logger();
        sub_10000DAC0(v125, qword_10023FD48);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&_mh_execute_header, v126, v127, "Donating conversion event", v128, 2u);
        }

        v129 = *(v0 + 1504);

        sub_10000DA7C((v129 + 48), *(v129 + 72));
        v130 = swift_task_alloc();
        *(v0 + 1800) = v130;
        *v130 = v0;
        v130[1] = sub_1000D8390;
        v131 = *(v0 + 1616);

        return (sub_1000FB76C)(v131, &type metadata for BiomeEventStreamDog, &off_10021F658);
      }
    }

    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_10000DAC0(v88, qword_10023FD48);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "Missing SKAN interaction type", v91, 2u);
    }

    sub_1000E17B4();
    v92 = swift_allocError();
    *v93 = 9;
    sub_1000CA6E0(v92, (v0 + 944));

    v54 = swift_allocError();
    *(v0 + 1768) = v54;
    *v94 = 9;
    v95 = swift_task_alloc();
    *(v0 + 1776) = v95;
    *v95 = v0;
    v95[1] = sub_1000D6EC8;
    v96 = *(v0 + 1504);
    v69 = *(v0 + 1448);
    v70 = *(v0 + 1440);
    v72 = (v0 + 944);
    v67 = v4;
    v71 = v5;
    goto LABEL_35;
  }

  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000DAC0(v24, qword_10023FD48);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "No conversion metadata found for reporting", v27, 2u);
  }

  v28 = *(v0 + 1656);
  v29 = *(v0 + 1648);
  v30 = *(v0 + 1640);
  v31 = *(v0 + 1616);
  v32 = *(v0 + 1608);
  v33 = *(v0 + 1600);
  v34 = *(v0 + 1576);
  v35 = *(v0 + 1568);
  v36 = *(v0 + 1560);
  v37 = *(v0 + 1552);
  v143 = *(v0 + 1544);
  v146 = *(v0 + 1536);
  stringa = *(v0 + 1528);
  string_8b = *(v0 + 1520);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1000D6EC8()
{
  v1 = *v0;
  v2 = *(*v0 + 1776);
  v3 = *(*v0 + 1768);
  v5 = *v0;

  sub_10003AE8C(v1 + 944);

  return _swift_task_switch(sub_1000D6FE8, 0, 0);
}

uint64_t sub_1000D6FE8()
{
  v48 = *(v0 + 1752);
  v49 = *(v0 + 1760);
  v1 = *(v0 + 1704);
  v50 = *(v0 + 1696);
  v51 = *(v0 + 1257);
  v41 = *(v0 + 1688);
  v42 = *(v0 + 1712);
  v2 = *(v0 + 1656);
  v3 = *(v0 + 1648);
  v46 = v3;
  v47 = *(v0 + 1728);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1576);
  v7 = *(v0 + 1568);
  v8 = *(v0 + 1560);
  v43 = *(v0 + 1464);
  v44 = *(v0 + 1720);
  v45 = *(v0 + 1456);
  v9 = *(v0 + 1448);
  v40 = *(v0 + 1440);
  v10 = *(*(v0 + 1632) + 16);
  v10();
  sub_100014B50(v6, v8, &qword_10023A718, qword_1001BBA70);

  AdAttributionKitConversion.init()();

  AdAttributionKitConversion.conversionID.setter();
  AdAttributionKitConversion.advertisedItemID.setter();
  AdAttributionKitConversion.adNetworkID.setter();
  AdAttributionKitConversion.sourceID.setter();

  AdAttributionKitConversion.marketplaceID.setter();
  (v10)(v7, v46, v4);
  v48(v7, 0, 1, v4);
  AdAttributionKitConversion.conversionDate.setter();
  sub_100014B50(v8, v7, &qword_10023A718, qword_1001BBA70);
  AdAttributionKitConversion.impressionDate.setter();
  AdAttributionKitConversion.countryCode.setter();
  v11 = type metadata accessor for AdAttributionKitConversionType();
  v12 = *(v11 - 8);
  v13 = *(v0 + 1258);
  v14 = *(v0 + 1608);
  v15 = *(v0 + 1536);
  (*(v12 + 104))(v15, **(&off_10021E0F8 + v51), v11);
  (*(v12 + 56))(v15, 0, 1, v11);
  AdAttributionKitConversion.conversionType.setter();
  if (v13 == 1)
  {
    v16 = *(v0 + 1744);
    v17 = *(v0 + 1736);
    v18 = *(v0 + 1608);
    AdAttributionKitConversion.sourceDomain.setter();
  }

  else
  {
    v19 = *(v0 + 1736);
    v20 = *(v0 + 1608);
    AdAttributionKitConversion.publisherItemID.setter();
  }

  v21 = *(v0 + 1648);
  v22 = *(v0 + 1632);
  v23 = *(v0 + 1624);
  v24 = *(v0 + 1608);
  v25 = *(v0 + 1576);
  v26 = *(v0 + 1560);
  v27 = *(v0 + 1528);
  v28 = type metadata accessor for AdAttributionKitAdInteractionType();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v27, enum case for AdAttributionKitAdInteractionType.view(_:), v28);
  (*(v29 + 56))(v27, 0, 1, v28);
  AdAttributionKitConversion.adInteractionType.setter();
  sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
  sub_10000DAF8(v26, &qword_10023A718, qword_1001BBA70);
  v30 = *(v22 + 8);
  v30(v21, v23);
  sub_10000DAF8(v25, &qword_10023A718, qword_1001BBA70);
  v31 = *(v0 + 1608);
  *(v0 + 1792) = v30;
  (*(*(v0 + 1592) + 32))(*(v0 + 1616), v31, *(v0 + 1584));
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000DAC0(v32, qword_10023FD48);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Donating conversion event", v35, 2u);
  }

  v36 = *(v0 + 1504);

  sub_10000DA7C((v36 + 48), *(v36 + 72));
  v37 = swift_task_alloc();
  *(v0 + 1800) = v37;
  *v37 = v0;
  v37[1] = sub_1000D8390;
  v38 = *(v0 + 1616);

  return (sub_1000FB76C)(v38, &type metadata for BiomeEventStreamDog, &off_10021F658);
}

uint64_t sub_1000D7548()
{
  v1 = *(*v0 + 1784);
  v3 = *v0;

  return _swift_task_switch(sub_1000D7644, 0, 0);
}

uint64_t sub_1000D7644()
{
  if (*(v0 + 1176))
  {
    v1 = *(v0 + 1232);
    v2 = *(v0 + 1472);
    sub_10000DAF8(v0 + 1168, &qword_10023CA40, &qword_1001BE2A0);
    if (!*(v2 + 16) || (v3 = *(v0 + 1472), v4 = sub_1000C3CA8(v1), (v5 & 1) == 0))
    {
      sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000DAC0(v20, qword_10023FD48);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Impression required for reporting", v23, 2u);
      }

      sub_1000E17B4();
      v16 = swift_allocError();
      *v24 = 4;
      swift_willThrow();
      goto LABEL_25;
    }

    v6 = *(v0 + 1680);
    v7 = *(v0 + 1520);
    v8 = *(*(v0 + 1472) + 56) + (v4 << 6);
    v9 = *v8;
    v10 = *(v8 + 8);
    v114 = *(v8 + 16);
    v120 = *(v8 + 48);
    v116 = *(v8 + 56);
    v11 = type metadata accessor for AppImpressionPayload();
    v12 = sub_10003AFB8();
    v13 = sub_10003B00C();
    v14 = sub_1000E1D70(&qword_10023A808, type metadata accessor for AppImpressionPayload);
    v15 = sub_1000E1D70(&qword_10023A810, type metadata accessor for AppImpressionPayload);

    JWS.init(compactJWS:)(v9, v10, v11, v12, v13, v14, v15, v7);
    if (v6)
    {
      v16 = v6;
      v17 = &qword_10023B690;
      v18 = &qword_1001B9260;
      v19 = v0 + 1352;
LABEL_24:
      sub_10000DAF8(v19, v17, v18);
LABEL_25:
      *(v0 + 1824) = v16;
      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10000DAC0(v52, qword_10023FD48);
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        swift_errorRetain();
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v57;
        *v56 = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "Encountered error while donating purchase event: %@", v55, 0xCu);
        sub_10000DAF8(v56, &qword_100239F10, &qword_1001B4FD0);
      }

      swift_errorRetain();
      sub_1000CA6E0(v16, (v0 + 496));
      v58 = swift_task_alloc();
      *(v0 + 1832) = v58;
      *v58 = v0;
      v58[1] = sub_1000D88FC;
      v59 = *(v0 + 1688);
      v60 = *(v0 + 1504);
      v61 = *(v0 + 1448);
      v62 = *(v0 + 1440);
      v63 = *(v0 + 1257);

      return sub_1000D8F60((v0 + 496), v62, v61, v59, v63, v16);
    }

    v45 = *(v0 + 1520) + *(*(v0 + 1512) + 68);
    if (HIDWORD(*(v45 + v11[7])))
    {
      sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000DAC0(v46, qword_10023FD48);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Source id is required for reporting", v49, 2u);
      }

      v50 = *(v0 + 1520);

      sub_1000E17B4();
      v16 = swift_allocError();
      *v51 = 0;
      swift_willThrow();
      v17 = &qword_10023A7D0;
      v18 = &unk_1001B5840;
      v19 = v50;
      goto LABEL_24;
    }

    v112 = *(v45 + v11[7]);
    v64 = *(*(v0 + 1632) + 56);
    v64(*(v0 + 1552), 1, 1, *(v0 + 1624));
    if ((v116 & 1) == 0)
    {
      v65 = *(v0 + 1624);
      v66 = *(v0 + 1568);
      v67 = *(v0 + 1552);
      Date.init(timeIntervalSince1970:)();
      sub_10000DAF8(v67, &qword_10023A718, qword_1001BBA70);
      v64(v66, 0, 1, v65);
      sub_1000E1DB8(v66, v67);
    }

    v102 = *(v0 + 1704);
    v109 = v64;
    v110 = *(v0 + 1696);
    v118 = *(v0 + 1257);
    v68 = *(v0 + 1656);
    v69 = *(v0 + 1640);
    v104 = *(v0 + 1688);
    v105 = *(v0 + 1624);
    v70 = *(v0 + 1600);
    v71 = *(v0 + 1568);
    v72 = *(v0 + 1552);
    v73 = *(v0 + 1544);
    v106 = v69;
    v107 = *(v0 + 1464);
    v108 = *(v0 + 1456);
    v74 = *(v0 + 1448);
    v75 = *(v0 + 1440);
    v76 = (v45 + v11[10]);
    v77 = v76[1];
    v103 = *v76;
    v122 = *(v45 + v11[5]);
    v78 = *(*(v0 + 1632) + 16);
    v78();
    sub_100014B50(v72, v73, &qword_10023A718, qword_1001BBA70);

    AdAttributionKitConversion.init()();

    AdAttributionKitConversion.conversionID.setter();
    AdAttributionKitConversion.advertisedItemID.setter();
    AdAttributionKitConversion.adNetworkID.setter();
    AdAttributionKitConversion.sourceID.setter();

    AdAttributionKitConversion.marketplaceID.setter();
    (v78)(v71, v106, v105);
    v109(v71, 0, 1, v105);
    AdAttributionKitConversion.conversionDate.setter();
    sub_100014B50(v73, v71, &qword_10023A718, qword_1001BBA70);
    AdAttributionKitConversion.impressionDate.setter();
    AdAttributionKitConversion.countryCode.setter();
    v79 = type metadata accessor for AdAttributionKitConversionType();
    v80 = *(v79 - 8);
    v81 = *(&off_10021E0F8 + v118);
    v82 = *(v0 + 1640);
    v83 = *(v0 + 1632);
    v84 = *(v0 + 1624);
    v85 = *(v0 + 1600);
    v113 = *(v0 + 1552);
    v86 = *(v0 + 1544);
    v87 = *(v0 + 1536);
    v88 = *(v0 + 1528);
    v119 = *(v0 + 1520);
    (*(v80 + 104))(v87, *v81, v79);
    (*(v80 + 56))(v87, 0, 1, v79);
    AdAttributionKitConversion.conversionType.setter();
    AdAttributionKitConversion.publisherItemID.setter();
    v89 = &enum case for AdAttributionKitAdInteractionType.click(_:);
    if (!v114)
    {
      v89 = &enum case for AdAttributionKitAdInteractionType.view(_:);
    }

    v90 = *v89;
    v91 = type metadata accessor for AdAttributionKitAdInteractionType();
    v92 = *(v91 - 8);
    (*(v92 + 104))(v88, v90, v91);
    (*(v92 + 56))(v88, 0, 1, v91);
    AdAttributionKitConversion.adInteractionType.setter();
    sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
    sub_10000DAF8(v86, &qword_10023A718, qword_1001BBA70);
    v93 = *(v83 + 8);
    v93(v82, v84);
    sub_10000DAF8(v113, &qword_10023A718, qword_1001BBA70);
    sub_10000DAF8(v119, &qword_10023A7D0, &unk_1001B5840);
    v94 = *(v0 + 1600);
    *(v0 + 1792) = v93;
    (*(*(v0 + 1592) + 32))(*(v0 + 1616), v94, *(v0 + 1584));
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_10000DAC0(v95, qword_10023FD48);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Donating conversion event", v98, 2u);
    }

    v99 = *(v0 + 1504);

    sub_10000DA7C((v99 + 48), *(v99 + 72));
    v100 = swift_task_alloc();
    *(v0 + 1800) = v100;
    *v100 = v0;
    v100[1] = sub_1000D8390;
    v101 = *(v0 + 1616);

    return (sub_1000FB76C)(v101, &type metadata for BiomeEventStreamDog, &off_10021F658);
  }

  else
  {
    sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000DAC0(v25, qword_10023FD48);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 1656);
    v30 = *(v0 + 1632);
    v31 = *(v0 + 1624);
    if (v28)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No eligible winning postback found", v32, 2u);
    }

    (*(v30 + 8))(v29, v31);
    v33 = *(v0 + 1656);
    v34 = *(v0 + 1648);
    v35 = *(v0 + 1640);
    v36 = *(v0 + 1616);
    v37 = *(v0 + 1608);
    v38 = *(v0 + 1600);
    v39 = *(v0 + 1576);
    v40 = *(v0 + 1568);
    v41 = *(v0 + 1560);
    v42 = *(v0 + 1552);
    v111 = *(v0 + 1544);
    v115 = *(v0 + 1536);
    v117 = *(v0 + 1528);
    v121 = *(v0 + 1520);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_1000D8390()
{
  v2 = *(*v1 + 1800);
  v5 = *v1;
  *(*v1 + 1808) = v0;

  if (v0)
  {
    v3 = sub_1000D8B78;
  }

  else
  {
    v3 = sub_1000D84A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D84A4()
{
  sub_1000CA6E0(0, (v0 + 720));
  v1 = swift_task_alloc();
  *(v0 + 1816) = v1;
  *v1 = v0;
  v1[1] = sub_1000D855C;
  v2 = *(v0 + 1688);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1448);
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1257);

  return sub_1000D8F60((v0 + 720), v5, v4, v2, v6, 0);
}

uint64_t sub_1000D855C()
{
  v1 = *v0;
  v2 = *(*v0 + 1816);
  v4 = *v0;

  sub_10003AE8C(v1 + 720);

  return _swift_task_switch(sub_1000D8660, 0, 0);
}

uint64_t sub_1000D8660()
{
  v1 = v0[224];
  v2 = v0[207];
  v3 = v0[204];
  v4 = v0[203];
  (*(v0[199] + 8))(v0[202], v0[198]);
  v1(v2, v4);
  v5 = v0[207];
  v6 = v0[206];
  v7 = v0[205];
  v8 = v0[202];
  v9 = v0[201];
  v10 = v0[200];
  v11 = v0[197];
  v12 = v0[196];
  v13 = v0[195];
  v14 = v0[194];
  v17 = v0[193];
  v18 = v0[192];
  v19 = v0[191];
  v20 = v0[190];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D87CC()
{
  v1 = v0[207];
  v2 = v0[206];
  v3 = v0[205];
  v4 = v0[202];
  v5 = v0[201];
  v6 = v0[200];
  v7 = v0[197];
  v8 = v0[196];
  v9 = v0[195];
  v10 = v0[194];
  v13 = v0[193];
  v14 = v0[192];
  v15 = v0[191];
  v16 = v0[190];
  v17 = v0[210];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000D88FC()
{
  v1 = *v0;
  v2 = *(*v0 + 1832);
  v3 = *(*v0 + 1824);
  v5 = *v0;

  sub_10003AE8C(v1 + 496);

  return _swift_task_switch(sub_1000D8A1C, 0, 0);
}

uint64_t sub_1000D8A1C()
{
  v1 = v0[228];
  v2 = v0[207];
  v3 = v0[204];
  v4 = v0[203];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  v5 = v0[207];
  v6 = v0[206];
  v7 = v0[205];
  v8 = v0[202];
  v9 = v0[201];
  v10 = v0[200];
  v11 = v0[197];
  v12 = v0[196];
  v13 = v0[195];
  v14 = v0[194];
  v17 = v0[193];
  v18 = v0[192];
  v19 = v0[191];
  v20 = v0[190];
  v21 = v0[228];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D8B78()
{
  (*(*(v0 + 1592) + 8))(*(v0 + 1616), *(v0 + 1584));
  v1 = *(v0 + 1808);
  *(v0 + 1824) = v1;
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD48);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error while donating purchase event: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  swift_errorRetain();
  sub_1000CA6E0(v1, (v0 + 496));
  v8 = swift_task_alloc();
  *(v0 + 1832) = v8;
  *v8 = v0;
  v8[1] = sub_1000D88FC;
  v9 = *(v0 + 1688);
  v10 = *(v0 + 1504);
  v11 = *(v0 + 1448);
  v12 = *(v0 + 1440);
  v13 = *(v0 + 1257);

  return sub_1000D8F60((v0 + 496), v12, v11, v9, v13, v1);
}

__n128 sub_1000D8D88@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1].n128_i64[0];
  if (v3)
  {
    v4 = a1 + 2;
    for (i = v3 - 1; ; --i)
    {
      v6 = v4[13];
      v47 = v4[12];
      v48 = v6;
      v49 = v4[14];
      v7 = v4[9];
      v43 = v4[8];
      v44 = v7;
      v8 = v4[11];
      v45 = v4[10];
      v46 = v8;
      v9 = v4[5];
      v39 = v4[4];
      v40 = v9;
      v10 = v4[7];
      v41 = v4[6];
      v42 = v10;
      v11 = v4[1];
      v35 = *v4;
      v36 = v11;
      v12 = v4[3];
      v37 = v4[2];
      v38 = v12;
      if (v40.n128_u64[1])
      {
        if (*&v40 == __PAIR128__(0xE300000000000000, 3157556) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v47.n128_u8[0] != 2 && (v47.n128_u8[0] & 1) != 0 && (v36.n128_u8[8] & 1) == 0 && !v36.n128_u64[0])
        {
          break;
        }
      }

      if (!i)
      {
        goto LABEL_12;
      }

      v4 += 15;
    }

    v32 = v47;
    v33 = v48;
    v34 = v49;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    MeasurementWindowConfiguration.sourceIDDigits.getter(&v20);
    sub_1000195FC(&v35, &v50);
    v62 = v32;
    v63 = v33;
    v64 = v34;
    v58 = v28;
    v59 = v29;
    v60 = v30;
    v61 = v31;
    v54 = v24;
    v55 = v25;
    v56 = v26;
    v57 = v27;
    v50 = v20;
    v51 = v21;
    v52 = v22;
    v53 = v23;
  }

  else
  {
LABEL_12:
    sub_1000E1E28(&v50);
  }

  v13 = v63;
  a2[12] = v62;
  a2[13] = v13;
  a2[14] = v64;
  v14 = v59;
  a2[8] = v58;
  a2[9] = v14;
  v15 = v61;
  a2[10] = v60;
  a2[11] = v15;
  v16 = v55;
  a2[4] = v54;
  a2[5] = v16;
  v17 = v57;
  a2[6] = v56;
  a2[7] = v17;
  v18 = v51;
  *a2 = v50;
  a2[1] = v18;
  result = v53;
  a2[2] = v52;
  a2[3] = result;
  return result;
}

uint64_t sub_1000D8F60(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 1016) = v6;
  *(v7 + 1008) = a6;
  *(v7 + 258) = a5;
  *(v7 + 1000) = a4;
  *(v7 + 992) = a3;
  *(v7 + 984) = a2;
  *(v7 + 976) = a1;
  v8 = a1[11];
  *(v7 + 672) = a1[10];
  *(v7 + 688) = v8;
  v9 = a1[13];
  *(v7 + 704) = a1[12];
  *(v7 + 720) = v9;
  v10 = a1[7];
  *(v7 + 608) = a1[6];
  *(v7 + 624) = v10;
  v11 = a1[9];
  *(v7 + 640) = a1[8];
  *(v7 + 656) = v11;
  v12 = a1[3];
  *(v7 + 544) = a1[2];
  *(v7 + 560) = v12;
  v13 = a1[5];
  *(v7 + 576) = a1[4];
  *(v7 + 592) = v13;
  v14 = a1[1];
  *(v7 + 512) = *a1;
  *(v7 + 528) = v14;
  v15 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  *(v7 + 1024) = v15;
  v16 = *(v15 - 8);
  *(v7 + 1032) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 1040) = swift_task_alloc();

  return _swift_task_switch(sub_1000D907C, 0, 0);
}

uint64_t sub_1000D907C()
{
  if (ConversionType.isInstall.getter(*(v0 + 258)))
  {
    v1 = sub_10000DA7C((*(v0 + 1016) + 208), *(*(v0 + 1016) + 232));
    v2 = *v1;
    *(v0 + 1048) = *v1;

    return _swift_task_switch(sub_1000D923C, v2, 0);
  }

  else
  {
    v3 = *(v0 + 992);
    sub_10000DA7C((*(v0 + 1016) + 208), *(*(v0 + 1016) + 232));
    v4 = type metadata accessor for SnoutManager();
    v5 = swift_task_alloc();
    *(v0 + 1080) = v5;
    *v5 = v0;
    v5[1] = sub_1000D974C;
    v6 = *(v0 + 984);
    v7 = *(v0 + 976);

    return (sub_10016E27C)(v7, v6, v3, 1, v4, &off_100223858);
  }
}

uint64_t sub_1000D923C()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  v8 = *(v0 + 976);
  v9 = *(v0 + 688);
  *(v0 + 176) = *(v0 + 672);
  *(v0 + 192) = v9;
  v10 = *(v0 + 720);
  *(v0 + 208) = *(v0 + 704);
  *(v0 + 224) = v10;
  v11 = *(v0 + 624);
  *(v0 + 112) = *(v0 + 608);
  *(v0 + 128) = v11;
  v12 = *(v0 + 656);
  *(v0 + 144) = *(v0 + 640);
  *(v0 + 160) = v12;
  v13 = *(v0 + 560);
  *(v0 + 48) = *(v0 + 544);
  *(v0 + 64) = v13;
  v14 = *(v0 + 592);
  *(v0 + 80) = *(v0 + 576);
  *(v0 + 96) = v14;
  v15 = *(v0 + 528);
  *(v0 + 16) = *(v0 + 512);
  *(v0 + 32) = v15;
  *(v0 + 240) = v7;
  *(v0 + 248) = v6;
  *(v0 + 256) = 257;
  sub_1000E191C(v0 + 16);
  v16 = *(v0 + 224);
  *(v0 + 456) = *(v0 + 208);
  *(v0 + 472) = v16;
  *(v0 + 488) = *(v0 + 240);
  *(v0 + 504) = *(v0 + 256);
  v17 = *(v0 + 160);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 408) = v17;
  v18 = *(v0 + 192);
  *(v0 + 424) = *(v0 + 176);
  *(v0 + 440) = v18;
  v19 = *(v0 + 96);
  *(v0 + 328) = *(v0 + 80);
  *(v0 + 344) = v19;
  v20 = *(v0 + 128);
  *(v0 + 360) = *(v0 + 112);
  *(v0 + 376) = v20;
  v21 = *(v0 + 32);
  *(v0 + 264) = *(v0 + 16);
  *(v0 + 280) = v21;
  v22 = *(v0 + 64);
  *(v0 + 296) = *(v0 + 48);
  *(v0 + 312) = v22;

  sub_100010568(v8, v0 + 736);
  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  if (v5 && (*(v0 + 960) = *(v0 + 1008), swift_errorRetain(), sub_10000CDE0(&qword_10023A710, &qword_1001B5480), sub_10001523C(0, &qword_10023C5D0, NSError_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v23 = *(v0 + 976);
    v24 = *(v0 + 968);
    v52 = *(v23 + 48);
    v53 = *(v23 + 40);

    v25 = [v24 domain];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v27;
    v51 = v26;

    v49 = [v24 code];
    v28 = 0;
    v29 = *(v0 + 976);
  }

  else
  {
    v29 = *(v0 + 976);
    v52 = *(v29 + 6);
    v53 = *(v29 + 5);

    v49 = 0;
    v50 = 0;
    v51 = 0;
    v24 = 0;
    v28 = 1;
  }

  *(v0 + 1056) = v24;
  v48 = *(v29 + 85);
  v30 = *(v29 + 15);
  v31 = *(v29 + 128);
  v32 = *(v29 + 113);
  v33 = *(v29 + 83);
  v34 = *(v29 + 80);
  v35 = *v29;
  v36 = *(v29 + 185);
  v37 = *(v29 + 24);
  v38 = *(v29 + 25);
  v39 = *(v29 + 26);
  v40 = *(v29 + 27);
  v46 = v39;
  v47 = v37;
  *(v0 + 1088) = v31;
  *(v0 + 1096) = v28;
  sub_10000CDE0(&qword_10023BCB0, &unk_1001BE250);
  v41 = swift_allocObject();
  *(v0 + 1064) = v41;
  *(v41 + 16) = xmmword_1001B93B0;
  *(v41 + 32) = v35;
  *(v41 + 40) = v53;
  *(v41 + 48) = v52;
  *(v41 + 56) = v34;
  *(v41 + 57) = v33;
  *(v41 + 58) = v32;
  *(v41 + 64) = v30;
  *(v41 + 72) = *(v0 + 1088);
  *(v41 + 73) = v48;
  *(v41 + 80) = v51;
  *(v41 + 88) = v50;
  *(v41 + 96) = v49;
  *(v41 + 104) = *(v0 + 1096);
  *(v41 + 105) = v36;
  *(v41 + 112) = v47;
  *(v41 + 120) = v38;
  *(v41 + 128) = v46;
  *(v41 + 136) = v40;

  v42 = swift_task_alloc();
  *(v0 + 1072) = v42;
  *v42 = v0;
  v42[1] = sub_1000D95B8;
  v43 = *(v0 + 1048);
  v44 = *(v0 + 1000);

  return sub_10016D920(v41, v44);
}

uint64_t sub_1000D95B8()
{
  v1 = *(*v0 + 1072);
  v2 = *(*v0 + 1064);
  v3 = *(*v0 + 1048);
  v5 = *v0;

  return _swift_task_switch(sub_1000D96E4, v3, 0);
}

uint64_t sub_1000D96E4()
{
  v1 = *(v0 + 1040);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000D974C()
{
  v1 = *v0;
  v2 = *(*v0 + 1080);
  v6 = *v0;

  v3 = *(v1 + 1040);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000D985C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[219] = v4;
  v5[218] = a4;
  v5[217] = a3;
  v5[216] = a2;
  v5[215] = a1;
  return _swift_task_switch(sub_1000D988C, 0, 0);
}

uint64_t sub_1000D988C()
{
  v1 = *(v0 + 1728);
  v2 = *(v1 + 16);
  *(v0 + 1760) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 1032);
    v5 = (v0 + 1432);
    v50 = (v0 + 1432);
    while (1)
    {
      *(v0 + 1768) = v3;
      v6 = (v1 + 96 * v3);
      v7 = v6[3];
      *v5 = v6[2];
      v5[1] = v7;
      v8 = v6[4];
      v9 = v6[5];
      v10 = v6[6];
      *(v5 + 73) = *(v6 + 105);
      v5[3] = v9;
      v5[4] = v10;
      v5[2] = v8;
      v11 = *(v0 + 1432);
      v12 = *(v0 + 1440);
      v58 = *(v0 + 1448);
      v56 = *(v0 + 1464);
      v57 = *(v0 + 1456);
      v54 = *(v0 + 1480);
      v55 = *(v0 + 1472);
      v52 = *(v0 + 1504);
      v53 = *(v0 + 1488);
      v51 = *(v0 + 1512);
      sub_100019760(v5, v0 + 1528);
      sub_100019760(v5, v0 + 1624);
      v13 = sub_1000BB714();
      v14 = sub_1000BB768();
      v15 = sub_1000BB7BC();
      v16 = sub_1000BB810();

      JWS.init(compactJWS:)(v11, v12, &type metadata for Postback.JWSPayload, v13, v14, v15, v16, v0 + 1232);
      *(v0 + 1776) = 0;
      v17 = *(v0 + 1408);
      *(v0 + 1192) = *(v0 + 1392);
      *(v0 + 1208) = v17;
      *(v0 + 1224) = *(v0 + 1424);
      v18 = *(v0 + 1344);
      *(v0 + 1128) = *(v0 + 1328);
      *(v0 + 1144) = v18;
      v19 = *(v0 + 1376);
      *(v0 + 1160) = *(v0 + 1360);
      *(v0 + 1176) = v19;
      v20 = *(v0 + 1280);
      *(v0 + 1064) = *(v0 + 1264);
      *(v0 + 1080) = v20;
      v21 = *(v0 + 1312);
      *(v0 + 1096) = *(v0 + 1296);
      *(v0 + 1112) = v21;
      v22 = *(v0 + 1248);
      *v4 = *(v0 + 1232);
      *(v0 + 1048) = v22;

      v5 = (v0 + 1432);
      sub_100019798(v50);
      v23 = *(v0 + 1176);
      v25 = *(v0 + 1192);
      v24 = *(v0 + 1208);
      *(v0 + 504) = v25;
      *(v0 + 520) = v24;
      v26 = *(v0 + 1112);
      v28 = *(v0 + 1128);
      v27 = *(v0 + 1144);
      *(v0 + 440) = v28;
      *(v0 + 456) = v27;
      v29 = *(v0 + 1144);
      v31 = *(v0 + 1160);
      v30 = *(v0 + 1176);
      *(v0 + 472) = v31;
      *(v0 + 488) = v30;
      v32 = *(v0 + 1048);
      v34 = *(v0 + 1064);
      v33 = *(v0 + 1080);
      *(v0 + 376) = v34;
      *(v0 + 392) = v33;
      v35 = *(v0 + 1080);
      v37 = *(v0 + 1096);
      v36 = *(v0 + 1112);
      *(v0 + 408) = v37;
      *(v0 + 424) = v36;
      v38 = *(v0 + 1048);
      v39 = *v4;
      *(v0 + 344) = *v4;
      *(v0 + 360) = v38;
      v40 = *(v0 + 1208);
      *(v0 + 240) = v25;
      *(v0 + 256) = v40;
      *(v0 + 176) = v28;
      *(v0 + 192) = v29;
      *(v0 + 208) = v31;
      *(v0 + 224) = v23;
      *(v0 + 112) = v34;
      *(v0 + 128) = v35;
      *(v0 + 144) = v37;
      *(v0 + 160) = v26;
      *(v0 + 288) = v57;
      *(v0 + 296) = v56;
      *(v0 + 304) = v55;
      *(v0 + 312) = v54;
      *(v0 + 320) = v53;
      *(v0 + 328) = v52;
      *(v0 + 336) = v51;
      *(v0 + 536) = *(v0 + 1224);
      *(v0 + 16) = v58;
      *(v0 + 24) = v57;
      *(v0 + 32) = v56;
      *(v0 + 40) = v55;
      *(v0 + 48) = v54;
      *(v0 + 56) = v53;
      *(v0 + 64) = v52;
      *(v0 + 72) = v51;
      *(v0 + 272) = *(v0 + 1224);
      *(v0 + 280) = v58;
      *(v0 + 80) = v39;
      *(v0 + 96) = v32;
      sub_1000BB8B8(v0 + 280, v0 + 544);
      sub_1000BB914(v0 + 16);
      if (*(v0 + 496))
      {
        sub_1000BB914(v0 + 280);
        if (!*(v0 + 504))
        {
          v42 = *v50;
          v43 = *(v0 + 1448);
          v44 = *(v0 + 1464);
          v45 = *(v0 + 1480);
          v46 = *(v0 + 1496);
          v41 = *(v0 + 1512);
          LOBYTE(v2) = *(v0 + 1520);
          goto LABEL_12;
        }

        sub_100019798(v50);
      }

      else
      {
        sub_100019798(v50);
        sub_1000BB914(v0 + 280);
      }

      v3 = *(v0 + 1768) + 1;
      if (v3 == *(v0 + 1760))
      {
        v41 = 0;
        LOBYTE(v2) = 0;
        goto LABEL_11;
      }

      v1 = *(v0 + 1728);
    }
  }

  v41 = 0;
LABEL_11:
  v42 = 0uLL;
  v43 = 0uLL;
  v44 = 0uLL;
  v45 = 0uLL;
  v46 = 0uLL;
LABEL_12:
  v47 = *(v0 + 1720);
  *v47 = v42;
  *(v47 + 16) = v43;
  *(v47 + 32) = v44;
  *(v47 + 48) = v45;
  *(v47 + 64) = v46;
  *(v47 + 80) = v41;
  *(v47 + 88) = v2;
  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1000D9E94()
{
  v1 = *v0;
  v2 = *(*v0 + 1784);
  v4 = *v0;

  sub_10003AE8C(v1 + 808);

  return _swift_task_switch(sub_1000D9F98, 0, 0);
}

uint64_t sub_1000D9F98()
{
  v1 = *(v0 + 1776);

  v2 = *(v0 + 1768) + 1;
  v3 = 0uLL;
  if (v2 == *(v0 + 1760))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    goto LABEL_11;
  }

  v10 = (v0 + 1032);
  v11 = (v0 + 1432);
  v50 = (v0 + 1432);
  while (1)
  {
    *(v0 + 1768) = v2;
    v12 = (*(v0 + 1728) + 96 * v2);
    v13 = v12[3];
    *v11 = v12[2];
    v11[1] = v13;
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[6];
    *(v11 + 73) = *(v12 + 105);
    v11[3] = v15;
    v11[4] = v16;
    v11[2] = v14;
    v17 = *(v0 + 1432);
    v18 = *(v0 + 1440);
    v58 = *(v0 + 1448);
    v56 = *(v0 + 1464);
    v57 = *(v0 + 1456);
    v54 = *(v0 + 1480);
    v55 = *(v0 + 1472);
    v52 = *(v0 + 1504);
    v53 = *(v0 + 1488);
    v51 = *(v0 + 1512);
    sub_100019760(v11, v0 + 1528);
    sub_100019760(v11, v0 + 1624);
    v19 = sub_1000BB714();
    v20 = sub_1000BB768();
    v21 = sub_1000BB7BC();
    v22 = sub_1000BB810();

    JWS.init(compactJWS:)(v17, v18, &type metadata for Postback.JWSPayload, v19, v20, v21, v22, v0 + 1232);
    *(v0 + 1776) = 0;
    v23 = *(v0 + 1408);
    *(v0 + 1192) = *(v0 + 1392);
    *(v0 + 1208) = v23;
    *(v0 + 1224) = *(v0 + 1424);
    v24 = *(v0 + 1344);
    *(v0 + 1128) = *(v0 + 1328);
    *(v0 + 1144) = v24;
    v25 = *(v0 + 1376);
    *(v0 + 1160) = *(v0 + 1360);
    *(v0 + 1176) = v25;
    v26 = *(v0 + 1280);
    *(v0 + 1064) = *(v0 + 1264);
    *(v0 + 1080) = v26;
    v27 = *(v0 + 1312);
    *(v0 + 1096) = *(v0 + 1296);
    *(v0 + 1112) = v27;
    v28 = *(v0 + 1248);
    *v10 = *(v0 + 1232);
    *(v0 + 1048) = v28;

    v11 = (v0 + 1432);
    sub_100019798(v50);
    v29 = *(v0 + 1176);
    v31 = *(v0 + 1192);
    v30 = *(v0 + 1208);
    *(v0 + 504) = v31;
    *(v0 + 520) = v30;
    v32 = *(v0 + 1112);
    v34 = *(v0 + 1128);
    v33 = *(v0 + 1144);
    *(v0 + 440) = v34;
    *(v0 + 456) = v33;
    v35 = *(v0 + 1144);
    v37 = *(v0 + 1160);
    v36 = *(v0 + 1176);
    *(v0 + 472) = v37;
    *(v0 + 488) = v36;
    v38 = *(v0 + 1048);
    v40 = *(v0 + 1064);
    v39 = *(v0 + 1080);
    *(v0 + 376) = v40;
    *(v0 + 392) = v39;
    v41 = *(v0 + 1080);
    v43 = *(v0 + 1096);
    v42 = *(v0 + 1112);
    *(v0 + 408) = v43;
    *(v0 + 424) = v42;
    v44 = *(v0 + 1048);
    v45 = *v10;
    *(v0 + 344) = *v10;
    *(v0 + 360) = v44;
    v46 = *(v0 + 1208);
    *(v0 + 240) = v31;
    *(v0 + 256) = v46;
    *(v0 + 176) = v34;
    *(v0 + 192) = v35;
    *(v0 + 208) = v37;
    *(v0 + 224) = v29;
    *(v0 + 112) = v40;
    *(v0 + 128) = v41;
    *(v0 + 144) = v43;
    *(v0 + 160) = v32;
    *(v0 + 288) = v57;
    *(v0 + 296) = v56;
    *(v0 + 304) = v55;
    *(v0 + 312) = v54;
    *(v0 + 320) = v53;
    *(v0 + 328) = v52;
    *(v0 + 336) = v51;
    *(v0 + 536) = *(v0 + 1224);
    *(v0 + 16) = v58;
    *(v0 + 24) = v57;
    *(v0 + 32) = v56;
    *(v0 + 40) = v55;
    *(v0 + 48) = v54;
    *(v0 + 56) = v53;
    *(v0 + 64) = v52;
    *(v0 + 72) = v51;
    *(v0 + 272) = *(v0 + 1224);
    *(v0 + 280) = v58;
    *(v0 + 80) = v45;
    *(v0 + 96) = v38;
    sub_1000BB8B8(v0 + 280, v0 + 544);
    sub_1000BB914(v0 + 16);
    if (*(v0 + 496))
    {
      break;
    }

    sub_100019798(v50);
    sub_1000BB914(v0 + 280);
LABEL_5:
    v2 = *(v0 + 1768) + 1;
    if (v2 == *(v0 + 1760))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v3 = 0uLL;
      goto LABEL_11;
    }
  }

  sub_1000BB914(v0 + 280);
  if (*(v0 + 504))
  {
    sub_100019798(v50);
    goto LABEL_5;
  }

  v3 = *v50;
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1480);
  v9 = *(v0 + 1496);
  v4 = *(v0 + 1512);
  v5 = *(v0 + 1520);
LABEL_11:
  v47 = *(v0 + 1720);
  *v47 = v3;
  *(v47 + 16) = v6;
  *(v47 + 32) = v7;
  *(v47 + 48) = v8;
  *(v47 + 64) = v9;
  *(v47 + 80) = v4;
  *(v47 + 88) = v5;
  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1000DA5C0(uint64_t a1, uint64_t a2)
{
  v3[107] = v2;
  v3[106] = a2;
  v3[105] = a1;
  v4 = type metadata accessor for InAppPurchaseDetails();
  v3[108] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[109] = swift_task_alloc();
  v6 = *(*(sub_10000CDE0(&qword_10023CA10, &qword_1001BE230) - 8) + 64) + 15;
  v3[110] = swift_task_alloc();
  v7 = *(*(sub_10000CDE0(&qword_10023A718, qword_1001BBA70) - 8) + 64) + 15;
  v3[111] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[112] = v8;
  v9 = *(v8 - 8);
  v3[113] = v9;
  v10 = *(v9 + 64) + 15;
  v3[114] = swift_task_alloc();
  v11 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v3[115] = v11;
  v12 = *(v11 - 8);
  v3[116] = v12;
  v13 = *(v12 + 64) + 15;
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA7BC, 0, 0);
}

uint64_t sub_1000DA7BC()
{
  v1 = v0[106];
  v2 = objc_allocWithZone(LSApplicationRecord);
  v0[104] = 0;
  v3 = [v2 initWithStoreItemIdentifier:v1 error:v0 + 104];
  v4 = v0[104];
  if (v3)
  {
    v5 = v3;
    v6 = v0[107];
    v7 = v0[106];
    v0[102] = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
    v0[103] = &off_10021F840;
    v0[99] = v5;
    v8 = v4;
    v10 = v6[3];
    v9 = v6[4];
    v11 = v6[5];
    v12 = swift_allocObject();
    v0[119] = v12;
    *(v12 + 16) = v7;
    v13 = swift_task_alloc();
    v0[120] = v13;
    *v13 = v0;
    v13[1] = sub_1000DAA10;

    return sub_10010FF18((v0 + 69), sub_1000E2164, v12, v10, v9, v11);
  }

  else
  {
    v15 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = v0[118];
    v17 = v0[117];
    v18 = v0[114];
    v19 = v0[111];
    v20 = v0[110];
    v21 = v0[109];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1000DAA10()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v7 = *v1;
  *(*v1 + 968) = v0;

  v4 = *(v2 + 952);

  if (v0)
  {
    v5 = sub_1000DB488;
  }

  else
  {
    v5 = sub_1000DAB68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DAB68()
{
  v1 = *(v0 + 600);
  *(v0 + 672) = *(v0 + 584);
  *(v0 + 688) = v1;
  *(v0 + 704) = *(v0 + 616);
  *(v0 + 720) = *(v0 + 632);
  v2 = *(v0 + 568);
  *(v0 + 640) = *(v0 + 552);
  *(v0 + 656) = v2;
  v3 = *(v0 + 656);
  *(v0 + 976) = v3;
  v4 = *(v0 + 664);
  *(v0 + 1096) = v4;
  v5 = *(v0 + 680);
  *(v0 + 984) = v5;
  v6 = *(v0 + 688);
  *(v0 + 992) = v6;
  if (!v6)
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000DAC0(v12, qword_10023FD48);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "No conversion metadata found";
    goto LABEL_14;
  }

  v7 = *(v0 + 856);
  *(v0 + 464) = *(v0 + 552);
  *(v0 + 480) = v3;
  *(v0 + 488) = v4;
  v8 = *(v0 + 577);
  *(v0 + 496) = *(v0 + 584);
  *(v0 + 504) = v5;
  *(v0 + 489) = v8;
  *(v0 + 512) = v6;
  v9 = *(v0 + 624);
  *(v0 + 520) = *(v0 + 608);
  *(v0 + 536) = v9;

  if (sub_1000DC830((v0 + 464), (v0 + 792)))
  {

    sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000DAC0(v17, qword_10023FD48);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Automatic reporting mode required for processing In-App Purchases";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_15:

    sub_10000DB58((v0 + 792));
    v18 = *(v0 + 944);
    v19 = *(v0 + 936);
    v20 = *(v0 + 912);
    v21 = *(v0 + 888);
    v22 = *(v0 + 880);
    v23 = *(v0 + 872);

    v24 = *(v0 + 8);

    return v24();
  }

  v10 = *(v0 + 840);
  v11 = *(v10 + *(*(v0 + 864) + 40));
  *(v0 + 1097) = v11;
  if (v11 != 2 && (v11 & 1) == 0)
  {
    NSDecimal.init(integerLiteral:)(v11, 0);
    v10 = *(v0 + 840);
LABEL_23:
    v75 = *(v0 + 1097);
    v33 = *(v0 + 992);
    v34 = *(v0 + 936);
    v35 = *(v0 + 904);
    v36 = *(v0 + 896);
    v73 = *(v0 + 984);
    v74 = *(v0 + 888);
    v71 = *(v0 + 864);
    v72 = *(v0 + 912);
    NSDecimal.init(integerLiteral:)(*(v0 + 848), 1000);
    *(v0 + 1056) = static NSDecimal.* infix(_:_:)();
    *(v0 + 1064) = v37;
    *(v0 + 1072) = v38;
    *(v0 + 1076) = 0;
    *(v0 + 1084) = 0;
    *(v0 + 1092) = 0;
    NSDecimalRound((v0 + 1076), (v0 + 1056), 0, NSRoundPlain);
    v39 = *(v0 + 1084);
    v40 = *(v0 + 1092);
    v41 = *(v0 + 1076);
    NSDecimal._bridgeToObjectiveC()((v0 + 1076));
    v43 = v42;
    [v42 longLongValue];

    v44 = v10[3];
    v45 = *(v35 + 16);
    v45(v72, v10 + *(v71 + 28), v36);

    AdAttributionKitSystemReportedPurchase.init()();
    AdAttributionKitSystemReportedPurchase.advertisedItemID.setter();
    AdAttributionKitSystemReportedPurchase.conversionID.setter();
    AdAttributionKitSystemReportedPurchase.price.setter();
    AdAttributionKitSystemReportedPurchase.quantity.setter();
    v45(v74, v72, v36);
    (*(v35 + 56))(v74, 0, 1, v36);
    AdAttributionKitSystemReportedPurchase.purchaseDate.setter();
    if (v75 == 2)
    {
      v46 = *(v0 + 936);
      v47 = *(v0 + 880);
      v48 = enum case for AdAttributionKitOfferType.none(_:);
      v49 = type metadata accessor for AdAttributionKitOfferType();
      v50 = *(v49 - 8);
      (*(v50 + 104))(v47, v48, v49);
      (*(v50 + 56))(v47, 0, 1, v49);
    }

    else
    {
      v51 = *(v0 + 1097);
      v52 = type metadata accessor for AdAttributionKitOfferType();
      v53 = *(v52 - 8);
      v54 = (v53 + 56);
      v55 = *(v0 + 936);
      v56 = *(v0 + 880);
      if (v51)
      {
        v57 = &enum case for AdAttributionKitOfferType.discounted(_:);
      }

      else
      {
        v57 = &enum case for AdAttributionKitOfferType.freeTrial(_:);
      }

      (*(v53 + 104))(*(v0 + 880), *v57, v52);
      (*v54)(v56, 0, 1, v52);
    }

    AdAttributionKitSystemReportedPurchase.offerType.setter();
    sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
    v58 = *(v0 + 944);
    v59 = *(v0 + 936);
    v60 = *(v0 + 928);
    v61 = *(v0 + 920);
    (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));
    (*(v60 + 32))(v58, v59, v61);
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    *(v0 + 1016) = sub_10000DAC0(v62, qword_10023FD48);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Donating system reported purchase event", v65, 2u);
    }

    v66 = *(v0 + 856);

    sub_10000DA7C((v66 + 48), *(v66 + 72));
    v67 = swift_task_alloc();
    *(v0 + 1024) = v67;
    *v67 = v0;
    v67[1] = sub_1000DBC50;
    v68 = *(v0 + 944);

    return (sub_1000FBA18)(v68, &type metadata for BiomeEventStreamDog, &off_10021F658);
  }

  v27 = v10[4];
  v26 = v10[5];
  if (v27 == 4477781 && v26 == 0xE300000000000000)
  {
LABEL_22:
    v30 = *v10;
    v31 = v10[1];
    v32 = *(v10 + 4);
    goto LABEL_23;
  }

  v28 = v10[4];
  v29 = v10[5];
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v10 = *(v0 + 840);
    goto LABEL_22;
  }

  v69 = swift_task_alloc();
  *(v0 + 1000) = v69;
  *v69 = v0;
  v69[1] = sub_1000DB574;
  v70 = *(v0 + 856);

  return sub_1000DCCA0(v0 + 728, v27, v26, v5, v6, v3, v4);
}

uint64_t sub_1000DB488()
{
  sub_10000DB58(v0 + 99);
  v1 = v0[121];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[114];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[109];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000DB574()
{
  v2 = *v1;
  v3 = *(*v1 + 1000);
  v7 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v4 = *(v2 + 992);

    sub_10000DAF8(v2 + 640, &qword_10023B690, &qword_1001B9260);
    v5 = sub_1000DC574;
  }

  else
  {
    v5 = sub_1000DB6DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DB6DC()
{
  v1 = *(v0 + 840);
  v2 = *(v1 + 4);
  v3 = *(v0 + 768);
  v4 = *(v0 + 776);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v0 + 760);
  static NSDecimal.* infix(_:_:)();
  sub_10003C344(v0 + 728);
  v50 = *(v0 + 1097);
  v8 = *(v0 + 992);
  v9 = *(v0 + 936);
  v10 = *(v0 + 904);
  v11 = *(v0 + 896);
  v48 = *(v0 + 984);
  v49 = *(v0 + 888);
  v46 = *(v0 + 864);
  v47 = *(v0 + 912);
  v12 = *(v0 + 840);
  NSDecimal.init(integerLiteral:)(*(v0 + 848), 1000);
  *(v0 + 1056) = static NSDecimal.* infix(_:_:)();
  *(v0 + 1064) = v13;
  *(v0 + 1072) = v14;
  *(v0 + 1076) = 0u;
  *(v0 + 1092) = 0;
  NSDecimalRound((v0 + 1076), (v0 + 1056), 0, NSRoundPlain);
  v15 = *(v0 + 1084);
  v16 = *(v0 + 1092);
  v17 = *(v0 + 1076);
  NSDecimal._bridgeToObjectiveC()((v0 + 1084));
  v19 = v18;
  [v18 longLongValue];

  v20 = *(v12 + 24);
  v21 = *(v10 + 16);
  v21(v47, v12 + *(v46 + 28), v11);

  AdAttributionKitSystemReportedPurchase.init()();
  AdAttributionKitSystemReportedPurchase.advertisedItemID.setter();
  AdAttributionKitSystemReportedPurchase.conversionID.setter();
  AdAttributionKitSystemReportedPurchase.price.setter();
  AdAttributionKitSystemReportedPurchase.quantity.setter();
  v21(v49, v47, v11);
  (*(v10 + 56))(v49, 0, 1, v11);
  AdAttributionKitSystemReportedPurchase.purchaseDate.setter();
  if (v50 == 2)
  {
    v22 = *(v0 + 936);
    v23 = *(v0 + 880);
    v24 = enum case for AdAttributionKitOfferType.none(_:);
    v25 = type metadata accessor for AdAttributionKitOfferType();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v23, v24, v25);
    (*(v26 + 56))(v23, 0, 1, v25);
  }

  else
  {
    v27 = *(v0 + 1097);
    v28 = type metadata accessor for AdAttributionKitOfferType();
    v29 = *(v28 - 8);
    v30 = (v29 + 56);
    v31 = *(v0 + 936);
    v32 = *(v0 + 880);
    if (v27)
    {
      v33 = &enum case for AdAttributionKitOfferType.discounted(_:);
    }

    else
    {
      v33 = &enum case for AdAttributionKitOfferType.freeTrial(_:);
    }

    (*(v29 + 104))(*(v0 + 880), *v33, v28);
    (*v30)(v32, 0, 1, v28);
  }

  AdAttributionKitSystemReportedPurchase.offerType.setter();
  sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
  v34 = *(v0 + 944);
  v35 = *(v0 + 936);
  v36 = *(v0 + 928);
  v37 = *(v0 + 920);
  (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));
  (*(v36 + 32))(v34, v35, v37);
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  *(v0 + 1016) = sub_10000DAC0(v38, qword_10023FD48);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Donating system reported purchase event", v41, 2u);
  }

  v42 = *(v0 + 856);

  sub_10000DA7C((v42 + 48), *(v42 + 72));
  v43 = swift_task_alloc();
  *(v0 + 1024) = v43;
  *v43 = v0;
  v43[1] = sub_1000DBC50;
  v44 = *(v0 + 944);

  return (sub_1000FBA18)(v44, &type metadata for BiomeEventStreamDog, &off_10021F658);
}

uint64_t sub_1000DBC50()
{
  v2 = *(*v1 + 1024);
  v5 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = sub_1000DC0EC;
  }

  else
  {
    v3 = sub_1000DBD90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DBD90()
{
  v1 = *(v0 + 1097);
  v2 = *(v0 + 992);
  if (v1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v1 & 1;
  }

  sub_1000C8DC0(*(*(v0 + 840) + 32), *(*(v0 + 840) + 40), v3, 0, (v0 + 240));
  v4 = swift_task_alloc();
  *(v0 + 1040) = v4;
  *v4 = v0;
  v4[1] = sub_1000DBE98;
  v5 = *(v0 + 984);
  v6 = *(v0 + 976);
  v7 = *(v0 + 856);
  v8 = *(v0 + 1096);

  return sub_1000D8F60((v0 + 240), v5, v2, v6, v8, 0);
}

uint64_t sub_1000DBE98()
{
  v1 = *v0;
  v2 = *(*v0 + 1040);
  v3 = *(*v0 + 992);
  v5 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000DBFEC, 0, 0);
}

uint64_t sub_1000DBFEC()
{
  (*(v0[116] + 8))(v0[118], v0[115]);
  sub_10000DB58(v0 + 99);
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[114];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000DC0EC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1016);
  (*(*(v0 + 928) + 8))(*(v0 + 944), *(v0 + 920));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1032);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to donate system reported purchase event: %@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v9 = *(v0 + 1032);
  v10 = *(v0 + 1097);
  v11 = *(v0 + 992);
  v12 = *(v0 + 840);

  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  if (v10 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v10 & 1;
  }

  swift_errorRetain();
  sub_1000C8DC0(v13, v14, v15, v9, (v0 + 16));
  v16 = swift_task_alloc();
  *(v0 + 1048) = v16;
  *v16 = v0;
  v16[1] = sub_1000DC310;
  v17 = *(v0 + 984);
  v18 = *(v0 + 976);
  v19 = *(v0 + 856);
  v20 = *(v0 + 1096);

  return sub_1000D8F60((v0 + 16), v17, v11, v18, v20, v9);
}

uint64_t sub_1000DC310()
{
  v1 = *v0;
  v2 = *(*v0 + 1048);
  v3 = *(*v0 + 1032);
  v4 = *(*v0 + 992);
  v6 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000DC480, 0, 0);
}

uint64_t sub_1000DC480()
{
  v1 = v0[129];
  swift_willThrow();
  sub_10000DB58(v0 + 99);
  v2 = v0[129];
  v3 = v0[118];
  v4 = v0[117];
  v5 = v0[114];
  v6 = v0[111];
  v7 = v0[110];
  v8 = v0[109];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000DC574()
{
  v26 = v0;
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v1 = v0[126];
  v2 = v0[109];
  v3 = v0[105];
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD48);
  sub_1000E1A30(v3, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[126];
  v9 = v0[109];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 136315394;
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);

    sub_1000A0B90(v9);
    v15 = sub_10017AD04(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get currency exchange rate for %s: %@", v10, 0x16u);
    sub_10000DAF8(v11, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v12);
  }

  else
  {

    sub_1000A0B90(v9);
  }

  sub_10000DB58(v0 + 99);
  v17 = v0[118];
  v18 = v0[117];
  v19 = v0[114];
  v20 = v0[111];
  v21 = v0[110];
  v22 = v0[109];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000DC830(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[7] == 0xD000000000000012 && 0x80000001001CB3C0 == a1[8];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = type metadata accessor for PropertyListDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v13 = a2[3];
  v14 = a2[4];
  sub_10000DA7C(a2, v13);
  (*(v14 + 40))(v13, v14);
  v15 = Data.init(contentsOf:options:)();
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  sub_1000BB9AC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10001BABC(v15, v17);

  v25[2] = v27;
  v25[3] = v28;
  v25[4] = v29;
  v25[0] = v25[5];
  v25[1] = v26;
  v19 = *(&v26 + 1);
  v20 = v29;
  sub_1000E198C(*(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1));
  sub_10009B180(v25);
  if (v19 != 1)
  {

    if ((*(&v20 + 1) - 1) >= 2)
    {
      if (v20 != 2 && (v20 & 1) != 0)
      {
        v22 = a1[10];
        if (v22)
        {
          if (*(&v20 + 1))
          {
            if (*(*(&v20 + 1) + 16))
            {
              v24[0] = a1[9];
              v24[1] = v22;
              __chkstk_darwin(v21);
              v24[-2] = v24;
              v18 = sub_1000E1818(sub_1000E19D8, &v24[-4], *(&v20 + 1));
              sub_1000D5520(v20, *(&v20 + 1));
              return v18 & 1;
            }

            sub_1000D5520(v20, *(&v20 + 1));
          }

LABEL_18:
          v18 = 1;
          return v18 & 1;
        }
      }

      sub_1000D5520(v20, *(&v20 + 1));
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1000DCCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 1160) = v7;
  *(v8 + 1413) = a7;
  *(v8 + 1152) = a6;
  *(v8 + 1144) = a5;
  *(v8 + 1136) = a4;
  *(v8 + 1128) = a3;
  *(v8 + 1120) = a2;
  *(v8 + 1112) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 1168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1176) = v10;
  *(v8 + 1184) = *(v10 + 64);
  *(v8 + 1192) = swift_task_alloc();
  *(v8 + 1200) = swift_task_alloc();

  return _swift_task_switch(sub_1000DCD90, 0, 0);
}

uint64_t sub_1000DCD90()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  Date.init(timeIntervalSinceNow:)();
  v18 = *v6;
  *(v0 + 1208) = *v6;
  v17 = v6[1];
  *(v0 + 1216) = v17;
  v9 = v6[2];
  *(v0 + 1224) = v9;
  v10 = *(v4 + 16);
  *(v0 + 1232) = v10;
  *(v0 + 1240) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v1, v5);
  v11 = *(v4 + 80);
  *(v0 + 1408) = v11;
  v12 = (v11 + 32) & ~v11;
  v13 = swift_allocObject();
  *(v0 + 1248) = v13;
  *(v13 + 16) = v8;
  *(v13 + 24) = v7;
  v14 = *(v4 + 32);
  *(v0 + 1256) = v14;
  *(v0 + 1264) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v13 + v12, v2, v5);

  v15 = swift_task_alloc();
  *(v0 + 1272) = v15;
  *v15 = v0;
  v15[1] = sub_1000DCF68;

  return sub_100110FF0(v0 + 688, sub_1000E2140, v13, v18, v17, v9);
}

uint64_t sub_1000DCF68()
{
  v2 = *v1;
  v3 = *(*v1 + 1272);
  v7 = *v1;
  *(*v1 + 1280) = v0;

  v4 = *(v2 + 1248);

  if (v0)
  {
    v5 = sub_1000DE6D8;
  }

  else
  {
    v5 = sub_1000DD08C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DD08C()
{
  *(v0 + 1080) = *(v0 + 688);
  *(v0 + 1096) = *(v0 + 704);
  v1 = *(v0 + 712);
  v2 = *(v0 + 736);
  *(v0 + 976) = *(v0 + 720);
  *(v0 + 992) = v2;
  if (v1)
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000DAC0(v3, qword_10023FD48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 1200);
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1168);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Tier 1 cache for currency exchange rates found", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    *(v0 + 1008) = *(v0 + 1080);
    *(v0 + 1024) = *(v0 + 1096);
    v11 = *(v0 + 992);
    *(v0 + 880) = *(v0 + 976);
    *(v0 + 896) = v11;
    v12 = *(v0 + 1200);
    v13 = *(v0 + 1192);
    v14 = *(v0 + 1112);

    v15 = *(v0 + 1024);
    *v14 = *(v0 + 1008);
    *(v14 + 16) = v15;
    *(v14 + 24) = v1;
    v16 = *(v0 + 896);
    *(v14 + 32) = *(v0 + 880);
    *(v14 + 48) = v16;
    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    sub_1000E17B4();
    v19 = swift_allocError();
    *v20 = 6;
    swift_willThrow();
    *(v0 + 1376) = v19;
    *(v0 + 1104) = v19;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    if (swift_dynamicCast() && *(v0 + 1412) == 6)
    {

      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000DAC0(v21, qword_10023FD48);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Tier 1 cache miss", v24, 2u);
      }

      v25 = *(v0 + 1104);

      v26 = swift_task_alloc();
      *(v0 + 1288) = v26;
      *v26 = v0;
      v26[1] = sub_1000DD5EC;
      v27 = *(v0 + 1160);

      return sub_1000E0DE0();
    }

    else
    {
      v28 = *(v0 + 1104);

      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000DAC0(v29, qword_10023FD48);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to retrieve exchange rate from tier 1 cache with error: %@", v32, 0xCu);
        sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
      }

      v35 = *(v0 + 1128);
      v36 = *(v0 + 1120);

      swift_errorRetain();
      sub_1000C8DC0(v36, v35, 2, v19, (v0 + 240));
      v37 = swift_task_alloc();
      *(v0 + 1384) = v37;
      *v37 = v0;
      v37[1] = sub_1000DE520;
      v38 = *(v0 + 1160);
      v39 = *(v0 + 1152);
      v40 = *(v0 + 1144);
      v41 = *(v0 + 1136);
      v42 = *(v0 + 1413);

      return sub_1000D8F60((v0 + 240), v41, v40, v39, v42, v19);
    }
  }
}

uint64_t sub_1000DD5EC()
{
  v2 = *(*v1 + 1288);
  v5 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v3 = sub_1000DEA6C;
  }

  else
  {
    v3 = sub_1000DD700;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DD700()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1184);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = (*(v0 + 1408) + 32) & ~*(v0 + 1408);
  (*(v0 + 1232))(v4, *(v0 + 1200), v6);
  v10 = swift_allocObject();
  *(v0 + 1304) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v2(v10 + v9, v4, v6);

  v11 = swift_task_alloc();
  *(v0 + 1312) = v11;
  *v11 = v0;
  v11[1] = sub_1000DD868;
  v12 = *(v0 + 1224);
  v13 = *(v0 + 1216);
  v14 = *(v0 + 1208);

  return sub_100110FF0(v0 + 816, sub_1000E1B5C, v10, v14, v13, v12);
}

uint64_t sub_1000DD868()
{
  v2 = *v1;
  v3 = *(*v1 + 1312);
  v7 = *v1;
  *(*v1 + 1320) = v0;

  v4 = *(v2 + 1304);

  if (v0)
  {
    v5 = sub_1000DEC78;
  }

  else
  {
    v5 = sub_1000DD98C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DD98C()
{
  *(v0 + 1056) = *(v0 + 816);
  *(v0 + 1072) = *(v0 + 832);
  v1 = *(v0 + 840);
  v2 = *(v0 + 864);
  *(v0 + 944) = *(v0 + 848);
  *(v0 + 960) = v2;
  if (v1)
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000DAC0(v3, qword_10023FD48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 1200);
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1168);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Exchange rate fetched", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    *(v0 + 1008) = *(v0 + 1056);
    *(v0 + 1024) = *(v0 + 1072);
    v11 = *(v0 + 960);
    *(v0 + 880) = *(v0 + 944);
    *(v0 + 896) = v11;
    v12 = *(v0 + 1200);
    v13 = *(v0 + 1192);
    v14 = *(v0 + 1112);

    v15 = *(v0 + 1024);
    *v14 = *(v0 + 1008);
    *(v14 + 16) = v15;
    *(v14 + 24) = v1;
    v16 = *(v0 + 896);
    *(v14 + 32) = *(v0 + 880);
    *(v14 + 48) = v16;
    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000DAC0(v19, qword_10023FD48);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Critical error, we don't have currency exchange rate after fetching", v22, 2u);
    }

    sub_1000E17B4();
    v23 = swift_allocError();
    *v24 = 6;
    swift_willThrow();
    *(v0 + 1328) = v23;
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    *(v0 + 1336) = sub_10000DAC0(v19, qword_10023FD48);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to get exchange rate with error: %@", v27, 0xCu);
      sub_10000DAF8(v28, &qword_100239F10, &qword_1001B4FD0);
    }

    v30 = *(v0 + 1128);
    v31 = *(v0 + 1120);

    swift_errorRetain();
    sub_1000C8DC0(v31, v30, 2, v23, (v0 + 464));
    v32 = swift_task_alloc();
    *(v0 + 1344) = v32;
    *v32 = v0;
    v32[1] = sub_1000DDE00;
    v33 = *(v0 + 1160);
    v34 = *(v0 + 1152);
    v35 = *(v0 + 1144);
    v36 = *(v0 + 1136);
    v37 = *(v0 + 1413);

    return sub_1000D8F60((v0 + 464), v36, v35, v34, v37, v23);
  }
}

uint64_t sub_1000DDE00()
{
  v1 = *v0;
  v2 = *(*v0 + 1344);
  v3 = *(*v0 + 1328);
  v5 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_1000DDF20, 0, 0);
}

uint64_t sub_1000DDF20()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1328);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Falling back to tier 2 cache", v5, 2u);
  }

  if (qword_100239D10 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 1256);
  v22 = *(v0 + 1264);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1232);
  v8 = *(v0 + 1192);
  v9 = *(v0 + 1184);
  v10 = *(v0 + 1168);
  v11 = *(v0 + 1128);
  v12 = *(v0 + 1120);
  v13 = (*(v0 + 1408) + 32) & ~*(v0 + 1408);
  v14 = sub_10000DAC0(v10, qword_10023FD60);
  v7(v8, v14, v10);
  v15 = swift_allocObject();
  *(v0 + 1352) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  v21(v15 + v13, v8, v10);

  v16 = swift_task_alloc();
  *(v0 + 1360) = v16;
  *v16 = v0;
  v16[1] = sub_1000DE148;
  v17 = *(v0 + 1224);
  v18 = *(v0 + 1216);
  v19 = *(v0 + 1208);

  return sub_100110FF0(v0 + 752, sub_1000E2140, v15, v19, v18, v17);
}

uint64_t sub_1000DE148()
{
  v2 = *v1;
  v3 = *(*v1 + 1360);
  v7 = *v1;
  *(*v1 + 1368) = v0;

  v4 = *(v2 + 1352);

  if (v0)
  {
    v5 = sub_1000DF050;
  }

  else
  {
    v5 = sub_1000DE26C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DE26C()
{
  *(v0 + 1032) = *(v0 + 752);
  *(v0 + 1048) = *(v0 + 768);
  v1 = *(v0 + 776);
  v2 = *(v0 + 800);
  *(v0 + 912) = *(v0 + 784);
  *(v0 + 928) = v2;
  if (v1)
  {
    (*(*(v0 + 1176) + 8))(*(v0 + 1200), *(v0 + 1168));
    *(v0 + 1008) = *(v0 + 1032);
    *(v0 + 1024) = *(v0 + 1048);
    v3 = *(v0 + 928);
    *(v0 + 880) = *(v0 + 912);
    *(v0 + 896) = v3;
    v4 = *(v0 + 1200);
    v5 = *(v0 + 1192);
    v6 = *(v0 + 1112);

    v7 = *(v0 + 1024);
    *v6 = *(v0 + 1008);
    *(v6 + 16) = v7;
    *(v6 + 24) = v1;
    v8 = *(v0 + 896);
    *(v6 + 32) = *(v0 + 880);
    *(v6 + 48) = v8;
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    sub_1000E17B4();
    v11 = swift_allocError();
    *v12 = 7;
    swift_willThrow();
    *(v0 + 1392) = v11;
    v13 = *(v0 + 1336);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to get tier 2 cache: %@", v16, 0xCu);
      sub_10000DAF8(v17, &qword_100239F10, &qword_1001B4FD0);
    }

    v19 = *(v0 + 1128);
    v20 = *(v0 + 1120);

    swift_errorRetain();
    sub_1000C8DC0(v20, v19, 2, v11, (v0 + 16));
    v21 = swift_task_alloc();
    *(v0 + 1400) = v21;
    *v21 = v0;
    v21[1] = sub_1000DEE84;
    v22 = *(v0 + 1160);
    v23 = *(v0 + 1152);
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1136);
    v26 = *(v0 + 1413);

    return sub_1000D8F60((v0 + 16), v25, v24, v23, v26, v11);
  }
}

uint64_t sub_1000DE520()
{
  v1 = *v0;
  v2 = *(*v0 + 1384);
  v3 = *(*v0 + 1376);
  v5 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000DE640, 0, 0);
}

uint64_t sub_1000DE640()
{
  v1 = v0[172];

  v2 = swift_task_alloc();
  v0[161] = v2;
  *v2 = v0;
  v2[1] = sub_1000DD5EC;
  v3 = v0[145];

  return sub_1000E0DE0();
}

uint64_t sub_1000DE6D8()
{
  v1 = *(v0 + 1280);
  *(v0 + 1376) = v1;
  *(v0 + 1104) = v1;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1412) == 6;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {

    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000DAC0(v19, qword_10023FD48);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Tier 1 cache miss", v22, 2u);
    }

    v23 = *(v0 + 1104);

    v24 = swift_task_alloc();
    *(v0 + 1288) = v24;
    *v24 = v0;
    v24[1] = sub_1000DD5EC;
    v25 = *(v0 + 1160);

    return sub_1000E0DE0();
  }

  else
  {
    v3 = *(v0 + 1104);

    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000DAC0(v4, qword_10023FD48);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to retrieve exchange rate from tier 1 cache with error: %@", v7, 0xCu);
      sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
    }

    v10 = *(v0 + 1128);
    v11 = *(v0 + 1120);

    swift_errorRetain();
    sub_1000C8DC0(v11, v10, 2, v1, (v0 + 240));
    v12 = swift_task_alloc();
    *(v0 + 1384) = v12;
    *v12 = v0;
    v12[1] = sub_1000DE520;
    v13 = *(v0 + 1160);
    v14 = *(v0 + 1152);
    v15 = *(v0 + 1144);
    v16 = *(v0 + 1136);
    v17 = *(v0 + 1413);

    return sub_1000D8F60((v0 + 240), v16, v15, v14, v17, v1);
  }
}

uint64_t sub_1000DEA6C()
{
  v1 = *(v0 + 1296);
  *(v0 + 1328) = v1;
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 1336) = sub_10000DAC0(v2, qword_10023FD48);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get exchange rate with error: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 1128);
  v9 = *(v0 + 1120);

  swift_errorRetain();
  sub_1000C8DC0(v9, v8, 2, v1, (v0 + 464));
  v10 = swift_task_alloc();
  *(v0 + 1344) = v10;
  *v10 = v0;
  v10[1] = sub_1000DDE00;
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  v13 = *(v0 + 1144);
  v14 = *(v0 + 1136);
  v15 = *(v0 + 1413);

  return sub_1000D8F60((v0 + 464), v14, v13, v12, v15, v1);
}

uint64_t sub_1000DEC78()
{
  v1 = *(v0 + 1320);
  *(v0 + 1328) = v1;
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 1336) = sub_10000DAC0(v2, qword_10023FD48);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get exchange rate with error: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 1128);
  v9 = *(v0 + 1120);

  swift_errorRetain();
  sub_1000C8DC0(v9, v8, 2, v1, (v0 + 464));
  v10 = swift_task_alloc();
  *(v0 + 1344) = v10;
  *v10 = v0;
  v10[1] = sub_1000DDE00;
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  v13 = *(v0 + 1144);
  v14 = *(v0 + 1136);
  v15 = *(v0 + 1413);

  return sub_1000D8F60((v0 + 464), v14, v13, v12, v15, v1);
}

uint64_t sub_1000DEE84()
{
  v1 = *v0;
  v2 = *(*v0 + 1400);
  v3 = *(*v0 + 1392);
  v5 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000DEFA4, 0, 0);
}

uint64_t sub_1000DEFA4()
{
  v1 = v0[174];
  v2 = v0[150];
  v3 = v0[149];
  v4 = v0[147];
  v5 = v0[146];
  swift_willThrow();
  (*(v4 + 8))(v2, v5);

  v6 = v0[1];
  v7 = v0[174];

  return v6();
}

uint64_t sub_1000DF050()
{
  v1 = *(v0 + 1368);
  *(v0 + 1392) = v1;
  v2 = *(v0 + 1336);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get tier 2 cache: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 1128);
  v9 = *(v0 + 1120);

  swift_errorRetain();
  sub_1000C8DC0(v9, v8, 2, v1, (v0 + 16));
  v10 = swift_task_alloc();
  *(v0 + 1400) = v10;
  *v10 = v0;
  v10[1] = sub_1000DEE84;
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  v13 = *(v0 + 1144);
  v14 = *(v0 + 1136);
  v15 = *(v0 + 1413);

  return sub_1000D8F60((v0 + 16), v14, v13, v12, v15, v1);
}

uint64_t sub_1000DF214(uint64_t a1, uint64_t a2)
{
  v3[103] = v2;
  v3[102] = a2;
  v3[101] = a1;
  v4 = *(*(sub_10000CDE0(&qword_10023CA10, &qword_1001BE230) - 8) + 64) + 15;
  v3[104] = swift_task_alloc();
  v5 = *(*(sub_10000CDE0(&qword_10023A718, qword_1001BBA70) - 8) + 64) + 15;
  v3[105] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[106] = v6;
  v7 = *(v6 - 8);
  v3[107] = v7;
  v8 = *(v7 + 64) + 15;
  v3[108] = swift_task_alloc();
  v9 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v3[109] = v9;
  v10 = *(v9 - 8);
  v3[110] = v10;
  v11 = *(v10 + 64) + 15;
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();

  return _swift_task_switch(sub_1000DF3E0, 0, 0);
}

uint64_t sub_1000DF3E0()
{
  v1 = *(v0 + 824);
  sub_1000E0AD0(*(v0 + 808));
  sub_100014B50(*(v0 + 816), v0 + 768, &qword_10023A7E0, &qword_1001B5850);
  if (*(v0 + 792))
  {
    v9 = *(v0 + 824);
    sub_10000DA64((v0 + 768), v0 + 728);
    v10 = *(v0 + 752);
    v11 = *(v0 + 760);
    sub_10000DA7C((v0 + 728), v10);
    v12 = (*(v11 + 16))(v10, v11);
    *(v0 + 904) = v12;
    v14 = v9[3];
    v13 = v9[4];
    v15 = v9[5];
    v16 = swift_allocObject();
    *(v0 + 912) = v16;
    *(v16 + 16) = v12;
    v17 = swift_task_alloc();
    *(v0 + 920) = v17;
    *v17 = v0;
    v17[1] = sub_1000DF790;

    return sub_10010FF18(v0 + 552, sub_1000A0C60, v16, v14, v13, v15);
  }

  else
  {
    sub_10000DAF8(v0 + 768, &qword_10023A7E0, &qword_1001B5850);
    sub_1000E17B4();
    swift_allocError();
    *v18 = 8;
    swift_willThrow();
    v2 = *(v0 + 896);
    v3 = *(v0 + 888);
    v4 = *(v0 + 864);
    v5 = *(v0 + 840);
    v6 = *(v0 + 832);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000DF790()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v7 = *v1;
  *(*v1 + 928) = v0;

  v4 = *(v2 + 912);

  if (v0)
  {
    v5 = sub_1000E0108;
  }

  else
  {
    v5 = sub_1000DF8E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DF8E8()
{
  v1 = *(v0 + 600);
  *(v0 + 672) = *(v0 + 584);
  *(v0 + 688) = v1;
  *(v0 + 704) = *(v0 + 616);
  *(v0 + 720) = *(v0 + 632);
  v2 = *(v0 + 568);
  *(v0 + 640) = *(v0 + 552);
  *(v0 + 656) = v2;
  v3 = *(v0 + 656);
  *(v0 + 936) = v3;
  v4 = *(v0 + 664);
  *(v0 + 1040) = v4;
  v5 = *(v0 + 680);
  *(v0 + 944) = v5;
  v6 = *(v0 + 688);
  *(v0 + 952) = v6;
  if (!v6)
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000DAC0(v12, qword_10023FD48);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "No conversion metadata found";
    goto LABEL_14;
  }

  v7 = *(v0 + 824);
  *(v0 + 464) = *(v0 + 552);
  *(v0 + 480) = v3;
  *(v0 + 488) = v4;
  v8 = *(v0 + 577);
  *(v0 + 496) = *(v0 + 584);
  *(v0 + 504) = v5;
  *(v0 + 489) = v8;
  *(v0 + 512) = v6;
  v9 = *(v0 + 624);
  *(v0 + 520) = *(v0 + 608);
  *(v0 + 536) = v9;

  if (sub_1000DC830((v0 + 464), (v0 + 728)))
  {
    v10 = *(v0 + 808);
    v65 = type metadata accessor for DeveloperBillingEvent();
    v11 = *(v10 + *(v65 + 28));
    *(v0 + 1041) = v11;
    v66 = v11;
    if (v11 == 2 || (v11 & 1) != 0)
    {
      v26 = *v10;
      v25 = v10[1];
      v27 = *(v10 + 4);
    }

    else
    {
      NSDecimal.init(integerLiteral:)((v11 & 1), 0);
      v10 = *(v0 + 808);
    }

    v28 = *(v0 + 888);
    v62 = *(v0 + 864);
    v63 = *(v0 + 904);
    v29 = *(v0 + 856);
    v61 = *(v0 + 848);
    v64 = *(v0 + 840);
    NSDecimal.init(integerLiteral:)(v64, 1000);
    *(v0 + 1000) = static NSDecimal.* infix(_:_:)();
    *(v0 + 1008) = v30;
    *(v0 + 1016) = v31;
    *(v0 + 1020) = 0;
    *(v0 + 1028) = 0;
    *(v0 + 1036) = 0;
    NSDecimalRound((v0 + 1020), (v0 + 1000), 0, NSRoundPlain);
    v32 = *(v0 + 1028);
    v33 = *(v0 + 1036);
    v34 = *(v0 + 1020);
    NSDecimal._bridgeToObjectiveC()((v0 + 1020));
    v36 = v35;
    [v35 longLongValue];

    v60 = v10[3];
    v37 = *(v29 + 16);
    v37(v62, v10 + *(v65 + 24), v61);

    AdAttributionKitDeveloperReportedPurchase.init()();
    AdAttributionKitDeveloperReportedPurchase.advertisedItemID.setter();
    AdAttributionKitDeveloperReportedPurchase.conversionID.setter();
    AdAttributionKitDeveloperReportedPurchase.price.setter();
    AdAttributionKitDeveloperReportedPurchase.quantity.setter();
    v37(v64, v62, v61);
    (*(v29 + 56))(v64, 0, 1, v61);
    AdAttributionKitDeveloperReportedPurchase.purchaseDate.setter();
    if (v66 == 2)
    {
      v38 = *(v0 + 888);
      v39 = *(v0 + 832);
      v40 = enum case for AdAttributionKitOfferType.none(_:);
      v41 = type metadata accessor for AdAttributionKitOfferType();
      v42 = *(v41 - 8);
      (*(v42 + 104))(v39, v40, v41);
      (*(v42 + 56))(v39, 0, 1, v41);
    }

    else
    {
      v43 = type metadata accessor for AdAttributionKitOfferType();
      v44 = *(v43 - 8);
      v45 = (v44 + 56);
      v46 = *(v0 + 888);
      v47 = *(v0 + 832);
      if (v66)
      {
        v48 = &enum case for AdAttributionKitOfferType.discounted(_:);
      }

      else
      {
        v48 = &enum case for AdAttributionKitOfferType.freeTrial(_:);
      }

      (*(v44 + 104))(*(v0 + 832), *v48, v43);
      (*v45)(v47, 0, 1, v43);
    }

    AdAttributionKitDeveloperReportedPurchase.offerType.setter();
    sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
    v49 = *(v0 + 896);
    v50 = *(v0 + 888);
    v51 = *(v0 + 880);
    v52 = *(v0 + 872);
    (*(*(v0 + 856) + 8))(*(v0 + 864), *(v0 + 848));
    (*(v51 + 32))(v49, v50, v52);
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    *(v0 + 960) = sub_10000DAC0(v53, qword_10023FD48);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Donating developer reported purchase event", v56, 2u);
    }

    v57 = *(v0 + 824);

    sub_10000DA7C((v57 + 48), *(v57 + 72));
    v58 = swift_task_alloc();
    *(v0 + 968) = v58;
    *v58 = v0;
    v58[1] = sub_1000E01E0;
    v59 = *(v0 + 896);

    return (sub_1000FBC48)(v59, &type metadata for BiomeEventStreamDog, &off_10021F658);
  }

  sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000DAC0(v17, qword_10023FD48);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Manual reporting mode required for processing developer reported billing events";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);
  }

LABEL_15:

  v18 = *(v0 + 896);
  v19 = *(v0 + 888);
  v20 = *(v0 + 864);
  v21 = *(v0 + 840);
  v22 = *(v0 + 832);
  sub_10000DB58((v0 + 728));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1000E0108()
{
  sub_10000DB58(v0 + 91);
  v1 = v0[116];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];
  v5 = v0[105];
  v6 = v0[104];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000E01E0()
{
  v2 = *(*v1 + 968);
  v5 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v3 = sub_1000E066C;
  }

  else
  {
    v3 = sub_1000E0320;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E0320()
{
  v1 = *(v0 + 1041);
  v2 = *(v0 + 952);
  if (v1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v1 & 1;
  }

  sub_1000C8278(v3, 0, (v0 + 240));
  v4 = swift_task_alloc();
  *(v0 + 984) = v4;
  *v4 = v0;
  v4[1] = sub_1000E0420;
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 824);
  v8 = *(v0 + 1040);

  return sub_1000D8F60((v0 + 240), v5, v2, v6, v8, 0);
}

uint64_t sub_1000E0420()
{
  v1 = *v0;
  v2 = *(*v0 + 984);
  v3 = *(*v0 + 952);
  v5 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000E0574, 0, 0);
}

uint64_t sub_1000E0574()
{
  (*(v0[110] + 8))(v0[112], v0[109]);
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[105];
  v5 = v0[104];
  sub_10000DB58(v0 + 91);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000E066C()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 960);
  (*(*(v0 + 880) + 8))(*(v0 + 896), *(v0 + 872));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 976);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to donate developer reported purchase event: %@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v9 = *(v0 + 976);
  v10 = *(v0 + 1041);
  v11 = *(v0 + 952);

  if (v10 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 & 1;
  }

  swift_errorRetain();
  sub_1000C8278(v12, v9, (v0 + 16));
  v13 = swift_task_alloc();
  *(v0 + 992) = v13;
  *v13 = v0;
  v13[1] = sub_1000E0880;
  v14 = *(v0 + 944);
  v15 = *(v0 + 936);
  v16 = *(v0 + 824);
  v17 = *(v0 + 1040);

  return sub_1000D8F60((v0 + 16), v14, v11, v15, v17, v9);
}

uint64_t sub_1000E0880()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v3 = *(*v0 + 976);
  v4 = *(*v0 + 952);
  v6 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000E09F0, 0, 0);
}

uint64_t sub_1000E09F0()
{
  v1 = v0[122];
  swift_willThrow();
  sub_10000DB58(v0 + 91);
  v2 = v0[122];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[108];
  v6 = v0[105];
  v7 = v0[104];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000E0AD0(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (&v19 - v6);
  v8 = *(a1 + 4);
  v10 = *a1;
  v9 = a1[1];
  NSDecimal.init(integerLiteral:)(v6, 0);
  if (static NSDecimal.< infix(_:_:)())
  {
    sub_1000E17B4();
    swift_allocError();
    v12 = 2;
  }

  else if (a1[3] < 1)
  {
    sub_1000E17B4();
    swift_allocError();
    v12 = 3;
  }

  else
  {
    v13 = sub_100028B78(&off_100214470);
    v14 = type metadata accessor for DeveloperBillingEvent();
    v15 = sub_1000C2280(*(a1 + *(v14 + 28)), v13);

    if (v15)
    {
      v16 = *(v14 + 24);
      static Date.now.getter();
      sub_1000E1D70(&qword_10023B530, &type metadata accessor for Date);
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v3 + 8))(v7, v2);
      if ((v17 & 1) == 0)
      {
        return result;
      }

      sub_1000E17B4();
      swift_allocError();
      v12 = 1;
    }

    else
    {
      sub_1000E17B4();
      swift_allocError();
      v12 = 10;
    }
  }

  *v11 = v12;
  return swift_willThrow();
}

double sub_1000E0D20@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_100239D18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Date();
  sub_10000DAC0(v5, qword_10023C9F8);
  sub_1000E2458(a1, v9);
  if (!v2)
  {
    v7 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v7;
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v10;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_1000E0E00()
{
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching server exchange rates", v4, 2u);
  }

  v5 = *(v0 + 128);

  sub_10000CE28(v5 + 88, v0 + 16);
  *(v0 + 96) = &type metadata for DogTools;
  *(v0 + 104) = &off_100217B48;
  *(v0 + 56) = xmmword_1001BE1D0;
  *(v0 + 112) = &type metadata for HTTP;
  *(v0 + 120) = &off_10021B990;
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1000E0F90;

  return sub_10001BF14();
}

uint64_t sub_1000E0F90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_1000E12EC;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_1000E10B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E10B8()
{
  v1 = v0[19];
  v2 = v0[16];
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = swift_allocObject();
  v0[20] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1000E11BC;

  return sub_10010F230(sub_10010F230, sub_1000E1C9C, v6, v4, v3, v5);
}

uint64_t sub_1000E11BC()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1000E13B4;
  }

  else
  {
    v4 = sub_1000E1350;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E12EC()
{
  v1 = *(v0 + 144);
  sub_1000E1C10(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E1350()
{
  sub_1000E1C10(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E13B4()
{
  v1 = *(v0 + 176);
  sub_1000E1C10(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000E1418(void *a1, uint64_t a2)
{
  v30 = type metadata accessor for Date();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v9 = [a1 connection];
  v10 = sub_100084BCC(v9, 0, _swiftEmptyArrayStorage, 0, 0);
  if ([v10 deleteAllEntities])
  {

    v11 = 1 << *(a2 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a2 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = (v5 + 8);

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_9:
        v17 = __clz(__rbit64(v13)) | (v16 << 6);
        v18 = (*(a2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(a2 + 56) + 20 * v17;
        v31 = *v21;
        v32 = *(v21 + 16);
        v33 = 1;

        static Date.now.getter();
        Date.timeIntervalSince1970.getter();
        v23 = v22;
        (*v28)(v8, v30);
        v24 = v23 * 1000.0;
        if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v24 <= -1.0)
        {
          goto LABEL_20;
        }

        if (v24 >= 1.84467441e19)
        {
          goto LABEL_21;
        }

        v34 = 0;
        v35 = v33;
        *v36 = v42;
        *&v36[3] = *(&v42 + 3);
        v37 = v20;
        v38 = v19;
        v39 = v31;
        v40 = v32;
        v41 = v24;
        v25 = [v29 connection];
        v26 = sub_1000EC884(&v34, v25);

        if (v2)
        {

          sub_10003C344(&v34);
          return;
        }

        v13 &= v13 - 1;

        sub_10003C344(&v34);
        v15 = v16;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          return;
        }

        v13 = *(a2 + 64 + 8 * v16);
        ++v15;
        if (v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    type metadata accessor for AKSQLError(0);
    v42 = 8;
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_1000E1D70(&qword_100239FA8, type metadata accessor for AKSQLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

unint64_t sub_1000E17B4()
{
  result = qword_10023CA18;
  if (!qword_10023CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CA18);
  }

  return result;
}

uint64_t sub_1000E1818(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000E18C4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000E191C(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 0xFF01;
  v3 = *(result + 128) & 1;
  v4 = *(result + 144) & 0xFFFF01;
  v5 = *(result + 160) & 1;
  v6 = *(result + 184) & 0xFFFFFFLL;
  v7 = *(result + 240) & 0x103;
  *(result + 80) &= 0xFFFFFFFFFFFFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 184) = v6;
  *(result + 240) = v7;
  return result;
}

uint64_t sub_1000E198C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result != 1)
  {

    return sub_1000D54FC(a6, a7);
  }

  return result;
}

uint64_t sub_1000E19D8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000E1A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E1A98()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_1000E1B74@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  sub_10015E100(*(v1 + 16), *(v1 + 24), v9);
  if (!v2)
  {
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

uint64_t sub_1000E1C64()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E1CB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000E1CF0@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = sub_1000E27A8(v9);
  if (!v2)
  {
    v7 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v7;
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v10;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_1000E1D58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E1D70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E1DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000E1E28(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

__n128 sub_1000E1E50(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1000E1E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1000E1EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AggregatedReportingManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AggregatedReportingManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E20C0(uint64_t a1)
{
  result = sub_1000E17B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E20EC()
{
  result = qword_10023CA50;
  if (!qword_10023CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CA50);
  }

  return result;
}

double sub_1000E217C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10009B518(a1);
  sub_10000CDE0(&qword_10023CA80, &qword_1001BE480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v6 = String._bridgeToObjectiveC()();
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = [objc_opt_self() predicateWithProperty:v6 equalToValue:v7];
  swift_unknownObjectRelease();

  *(inited + 32) = v8;
  v9 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v11 = [objc_opt_self() containsPredicateWithProperty:v9 values:v10];
  swift_unknownObjectRelease();

  *(inited + 40) = v11;
  v12 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CA88, &qword_1001BE488);
  swift_arrayDestroy();
  v13 = [v2 connection];
  v14 = v12;
  v15 = sub_10008692C(v13, v12, &off_1002165E0, 0, 0);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v19[2] = &v22;
  sub_100036504(sub_1000E2B70, v19, v15);

  if (v3)
  {
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v21 = v27;
    v20[0] = v22;
    v20[1] = v23;
    sub_1000E2A54(v20);
  }

  else
  {
    v17 = v25;
    *(a2 + 32) = v24;
    *(a2 + 48) = v17;
    *(a2 + 64) = v26;
    *(a2 + 80) = v27;
    result = *&v22;
    v18 = v23;
    *a2 = v22;
    *(a2 + 16) = v18;
  }

  return result;
}

void sub_1000E2458(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_10000CDE0(&qword_10023CA80, &qword_1001BE480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  *&v25 = a1;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  Date.timeIntervalSince1970.getter();
  v12 = v11 * 1000.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v12 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = [v9 predicateWithProperty:v13 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:6];
  swift_unknownObjectRelease();

  *(inited + 40) = v14;
  v15 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CA88, &qword_1001BE488);
  swift_arrayDestroy();
  v16 = [v3 connection];
  v17 = v15;
  v18 = sub_10008692C(v16, v15, &off_100216750, 0, 0);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  __chkstk_darwin(v18);
  v22[2] = &v25;
  v19 = v31;
  sub_100036504(sub_1000E2B70, v22, v18);
  if (v19)
  {

    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v24 = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_1000E2A54(v23);
  }

  else
  {

    v20 = v28;
    *(a2 + 32) = v27;
    *(a2 + 48) = v20;
    *(a2 + 64) = v29;
    *(a2 + 80) = v30;
    v21 = v26;
    *a2 = v25;
    *(a2 + 16) = v21;
  }
}

double sub_1000E27A8@<D0>(uint64_t a1@<X8>)
{
  v4 = [v1 connection];
  v5 = String._bridgeToObjectiveC()();

  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = sub_10008692C(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v12[2] = &v15;
  sub_100036504(sub_1000E2A50, v12, v8);

  if (v2)
  {
    v13[2] = v17;
    v13[3] = v18;
    v13[4] = v19;
    v14 = v20;
    v13[0] = v15;
    v13[1] = v16;
    sub_1000E2A54(v13);
  }

  else
  {
    v10 = v18;
    *(a1 + 32) = v17;
    *(a1 + 48) = v10;
    *(a1 + 64) = v19;
    *(a1 + 80) = v20;
    result = *&v15;
    v11 = v16;
    *a1 = v15;
    *(a1 + 16) = v11;
  }

  return result;
}

id sub_1000E29F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversionHistoryDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E2A54(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E2ABC(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = a1[2];
  v7 = a1[4];
  v22 = a1[3];
  v23 = v7;
  v24 = *(a1 + 10);
  v8 = a1[1];
  v19 = *a1;
  v20 = v8;
  v21 = v6;
  v9 = *(v5 + 16);
  v25[0] = *v5;
  v25[1] = v9;
  v11 = *(v5 + 48);
  v10 = *(v5 + 64);
  v12 = *(v5 + 32);
  v26 = *(v5 + 80);
  v25[3] = v11;
  v25[4] = v10;
  v25[2] = v12;
  sub_1000E2A54(v25);
  v13 = v20;
  *v5 = v19;
  *(v5 + 16) = v13;
  v14 = v22;
  v15 = v23;
  v16 = v21;
  *(v5 + 80) = v24;
  *(v5 + 48) = v14;
  *(v5 + 64) = v15;
  *(v5 + 32) = v16;
  *a3 = 1;
  return sub_100047148(&v19, v18);
}

unint64_t sub_1000E2B78()
{
  result = qword_10023CA90;
  if (!qword_10023CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CA90);
  }

  return result;
}

unint64_t sub_1000E2BD0()
{
  result = qword_10023CA98;
  if (!qword_10023CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CA98);
  }

  return result;
}

unint64_t sub_1000E2C24(uint64_t a1)
{
  *(a1 + 8) = sub_10003BE30();
  result = sub_1000E2C54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000E2C54()
{
  result = qword_10023CAE8;
  if (!qword_10023CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CAE8);
  }

  return result;
}

uint64_t sub_1000E2CA8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023CB18, &qword_1001BE5E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000E2BD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = *(v3 + 40);
  v15 = *(v3 + 48);
  v18[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = *(v3 + 56);
  v18[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000E2E78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E2F48()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000E3004()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000E30D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E3438(*a1);
  *a2 = result;
  return result;
}

void sub_1000E3100(unint64_t *a1@<X8>)
{
  v2 = 0xEE0064695F6E6F69;
  v3 = 0x737265765F707061;
  v4 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA620;
  }

  v5 = 0x80000001001CA000;
  if (*v1)
  {
    v4 = 0xD000000000000015;
    v5 = 0x80000001001CAEA0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000E318C()
{
  v1 = 0x737265765F707061;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000E3214@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E3438(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000E324C(uint64_t a1)
{
  v2 = sub_1000E2BD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E3288(uint64_t a1)
{
  v2 = sub_1000E2BD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E32C4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000E3484(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_1000E3324()
{
  result = qword_10023CAF0;
  if (!qword_10023CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CAF0);
  }

  return result;
}

unint64_t sub_1000E337C()
{
  result = qword_10023CAF8;
  if (!qword_10023CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CAF8);
  }

  return result;
}

unint64_t sub_1000E33D4()
{
  result = qword_10023CB00;
  if (!qword_10023CB00)
  {
    sub_10000CCC0(&qword_10023CB08, &qword_1001BE5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CB00);
  }

  return result;
}

unint64_t sub_1000E3438(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100216248, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E3484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023CB10, &qword_1001BE5E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000E2BD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v29 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v23 = v12;
  v27 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  HIDWORD(v21) = v16;
  v22 = v15;
  v26 = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v25 = 1;
  v24 = BYTE4(v21) & 1;
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = v25;
  v19 = v22;
  v20 = v23;
  *(a2 + 16) = v11;
  *(a2 + 24) = v20;
  *(a2 + 32) = v14;
  *(a2 + 40) = v19;
  *(a2 + 48) = v24;
  *(a2 + 56) = v17;
  return result;
}

uint64_t sub_1000E36F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E3740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000E37A4()
{
  result = qword_10023CB20;
  if (!qword_10023CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CB20);
  }

  return result;
}

uint64_t sub_1000E37F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E61C();
  (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v19, v15);
  (*(v11 + 16))(v14, v29, v10);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v24 = v30;
  v23 = v31;
  *(v22 + 2) = v30;
  *(v22 + 3) = v23;
  *(v22 + 4) = v32;
  (*(v11 + 32))(&v22[v21], v14, v10);
  aBlock[4] = sub_1000E3E4C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_10021E258;
  v25 = _Block_copy(aBlock);
  sub_1000438D8(v24, v23);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100014D60();
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  v27 = v33;
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v37 + 8))(v27, v26);
  (*(v35 + 8))(v9, v36);
}

uint64_t sub_1000E3C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v6 = [v4 signatureFromData:isa type:1 bag:a3 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v14[0] = v8;
    v14[1] = v10;
    sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v12 = v7;
    v13 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v14[0] = v13;
    sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1000E3D74()
{
  v1 = sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  sub_10001BABC(*(v0 + 2), *(v0 + 3));
  v6 = *(v0 + 4);
  swift_unknownObjectRelease();
  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000E3E4C()
{
  v1 = *(*(sub_10000CDE0(&unk_10023CB30, qword_1001BE700) - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1000E3C2C(v2, v3, v4);
}

uint64_t sub_1000E3EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1000E3ED8@<Q0>(uint64_t a1@<X8>)
{
  v4 = [v1 connection];
  v5 = String._bridgeToObjectiveC()();

  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = sub_100086F10(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  sub_1000E5480(v24);
  v21 = v24[6];
  v22 = v24[7];
  v23 = v24[8];
  v17 = v24[2];
  v18 = v24[3];
  v19 = v24[4];
  v20 = v24[5];
  v15 = v24[0];
  v16 = v24[1];
  v13[2] = &v15;
  sub_100036DBC(sub_1000E5510, v13, v8);

  if (v2)
  {
    v14[6] = v21;
    v14[7] = v22;
    v14[8] = v23;
    v14[2] = v17;
    v14[3] = v18;
    v14[4] = v19;
    v14[5] = v20;
    v14[0] = v15;
    v14[1] = v16;
    sub_1000E54A4(v14);
  }

  else
  {
    v10 = v22;
    *(a1 + 96) = v21;
    *(a1 + 112) = v10;
    *(a1 + 128) = v23;
    v11 = v18;
    *(a1 + 32) = v17;
    *(a1 + 48) = v11;
    v12 = v20;
    *(a1 + 64) = v19;
    *(a1 + 80) = v12;
    result = v16;
    *a1 = v15;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000E40C8()
{
  v2 = v0;
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  result = Date.timeIntervalSince1970.getter();
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 value:v8 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 predicateWithProperty:v11 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v14 = [v2 connection];
  v15 = v13;
  v16 = sub_100086F10(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  v19 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v16);
  v18[2] = &v19;
  sub_100036DBC(sub_1000E550C, v18, v16);

  v17 = v19;
  if (v1)
  {
  }

  return v17;
}

void *sub_1000E4390()
{
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v3 = String._bridgeToObjectiveC()();
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = objc_opt_self();
  v6 = [v5 predicateWithProperty:v3 equalToValue:v4];
  swift_unknownObjectRelease();

  *(inited + 32) = v6;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 predicateWithProperty:v7 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v8;
  v9 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v10 = [v0 connection];
  v11 = v9;
  v12 = sub_100086F10(v10, v9, _swiftEmptyArrayStorage, 0, 0);
  v16 = _swiftEmptyArrayStorage;
  v15[2] = &v16;
  sub_100036DBC(sub_1000E550C, v15, v12);

  v13 = v16;
  if (v1)
  {
  }

  return v13;
}

void *sub_1000E45E0(uint64_t a1, uint64_t a2)
{
  sub_10009B518(a2);
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v10 = [objc_opt_self() containsPredicateWithProperty:v8 values:v9];
  swift_unknownObjectRelease();

  *(inited + 40) = v10;
  v11 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v12 = [v2 connection];
  v13 = v11;
  v14 = sub_100086F10(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  v17[2] = &v18;
  v18 = _swiftEmptyArrayStorage;
  sub_100036DBC(sub_1000E550C, v17, v14);

  v15 = v18;
  if (v3)
  {
  }

  return v15;
}

void *sub_1000E4850(uint64_t a1)
{
  v4 = [v1 connection];
  v5 = sub_100113DA4(11, a1);
  v6 = sub_100086F10(v4, v5, _swiftEmptyArrayStorage, 0, 0);
  v10 = _swiftEmptyArrayStorage;
  v9[2] = &v10;
  sub_100036DBC(sub_1000E550C, v9, v6);

  v7 = v10;
  if (v2)
  {
  }

  return v7;
}

__n128 sub_1000E4944@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10009B518(a1);
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v6 = String._bridgeToObjectiveC()();
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = [objc_opt_self() predicateWithProperty:v6 equalToValue:v7];
  swift_unknownObjectRelease();

  *(inited + 32) = v8;
  v9 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v11 = [objc_opt_self() containsPredicateWithProperty:v9 values:v10];
  swift_unknownObjectRelease();

  *(inited + 40) = v11;
  v12 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v13 = [v2 connection];
  v14 = v12;
  v15 = sub_100086F10(v13, v12, &off_100216778, 0, 0);
  sub_1000E5480(v31);
  v28 = v31[6];
  v29 = v31[7];
  v30 = v31[8];
  v24 = v31[2];
  v25 = v31[3];
  v26 = v31[4];
  v27 = v31[5];
  v22 = v31[0];
  v23 = v31[1];
  v20[2] = &v22;
  sub_100036DBC(sub_1000E549C, v20, v15);

  if (v3)
  {
    v21[6] = v28;
    v21[7] = v29;
    v21[8] = v30;
    v21[2] = v24;
    v21[3] = v25;
    v21[4] = v26;
    v21[5] = v27;
    v21[0] = v22;
    v21[1] = v23;
    sub_1000E54A4(v21);
  }

  else
  {
    v17 = v29;
    *(a2 + 96) = v28;
    *(a2 + 112) = v17;
    *(a2 + 128) = v30;
    v18 = v25;
    *(a2 + 32) = v24;
    *(a2 + 48) = v18;
    v19 = v27;
    *(a2 + 64) = v26;
    *(a2 + 80) = v19;
    result = v23;
    *a2 = v22;
    *(a2 + 16) = result;
  }

  return result;
}

void *sub_1000E4C5C()
{
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v2 = String._bridgeToObjectiveC()();
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = objc_opt_self();
  v5 = [v4 predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  *(inited + 32) = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 predicateWithProperty:v6 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v7;
  v8 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v9 = [v0 connection];
  v10 = v8;
  v11 = sub_100086F10(v9, v8, _swiftEmptyArrayStorage, 0, 0);
  v17 = _swiftEmptyArrayStorage;
  v16 = &v17;
  sub_100036DBC(sub_1000E550C, v15, v11);

  v12 = v17;
  if (v14)
  {
  }

  return v12;
}

void *sub_1000E4EB8()
{
  v2 = String._bridgeToObjectiveC()();
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 value:v3 comparisonType:2];
  swift_unknownObjectRelease();

  v5 = [v0 connection];
  v6 = v4;
  v7 = sub_100086F10(v5, v4, &off_1002167A0, 0, 0);
  v11 = _swiftEmptyArrayStorage;
  v10[2] = &v11;
  sub_100036DBC(sub_1000E550C, v10, v7);

  v8 = v11;
  if (v1)
  {
  }

  return v8;
}

void *sub_1000E5034()
{
  v2 = [v0 connection];
  v3 = String._bridgeToObjectiveC()();
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = [objc_opt_self() predicateWithProperty:v3 value:v4 comparisonType:4];
  swift_unknownObjectRelease();

  v6 = sub_100086F10(v2, v5, &off_1002167C8, 0, 0);
  v9[2] = &v10;
  v10 = _swiftEmptyArrayStorage;
  sub_100036DBC(sub_1000E5478, v9, v6);

  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

id sub_1000E521C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GhostbackDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E5274(__int128 *a1, uint64_t a2, _BYTE *a3, _OWORD *a4)
{
  v6 = a1[7];
  v26 = a1[6];
  v27 = v6;
  v28 = a1[8];
  v7 = a1[3];
  v22 = a1[2];
  v23 = v7;
  v8 = a1[5];
  v24 = a1[4];
  v25 = v8;
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v10 = a4[7];
  v29[6] = a4[6];
  v29[7] = v10;
  v29[8] = a4[8];
  v11 = a4[3];
  v29[2] = a4[2];
  v29[3] = v11;
  v12 = a4[5];
  v29[4] = a4[4];
  v29[5] = v12;
  v13 = a4[1];
  v29[0] = *a4;
  v29[1] = v13;
  sub_1000E54A4(v29);
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v30 = v20;
  v31 = v21;
  MeasurementWindowConfiguration.sourceIDDigits.getter(&v30);
  v14 = v37;
  a4[6] = v36;
  a4[7] = v14;
  a4[8] = v38;
  v15 = v33;
  a4[2] = v32;
  a4[3] = v15;
  v16 = v35;
  a4[4] = v34;
  a4[5] = v16;
  v17 = v31;
  *a4 = v30;
  a4[1] = v17;
  *a3 = 1;
  return sub_100070EEC(&v20, &v19);
}

__n128 sub_1000E536C(__n128 *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v29 = a1[8];
  v6 = a1[3];
  v23 = a1[2];
  v24 = v6;
  v7 = a1[5];
  v25 = a1[4];
  v26 = v7;
  v8 = a1[1];
  v21 = *a1;
  v22 = v8;
  v9 = *a4;
  sub_100070EEC(&v21, &v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100089418(0, *(v9 + 2) + 1, 1, v9);
    *a4 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100089418((v11 > 1), v12 + 1, 1, v9);
    *a4 = v9;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[144 * v12];
  *(v13 + 2) = v21;
  v14 = v22;
  v15 = v23;
  v16 = v25;
  *(v13 + 5) = v24;
  *(v13 + 6) = v16;
  *(v13 + 3) = v14;
  *(v13 + 4) = v15;
  result = v26;
  v18 = v27;
  v19 = v29;
  *(v13 + 9) = v28;
  *(v13 + 10) = v19;
  *(v13 + 7) = result;
  *(v13 + 8) = v18;
  return result;
}

double sub_1000E5480(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000E54A4(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023CBD8, &qword_1001C1840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E5514@<X0>(void *a1@<X8>)
{
  v3 = [*v1 targetApplicationRecord];
  result = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
  a1[3] = result;
  a1[4] = &off_10021F840;
  *a1 = v3;
  return result;
}

uint64_t sub_1000E559C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1000E56B8;
  v2 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023A750, &qword_1001B5478);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100021CD4;
  v0[13] = &unk_10021E2E8;
  v0[14] = v2;
  [v1 openWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E56B8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v0 + 152);
    v3 = *(v1 + 8);
    v5 = *v0;
  }

  return v3(v4);
}

uint64_t sub_1000E57D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_1000E57F8, 0, 0);
}

uint64_t sub_1000E57F8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = String._bridgeToObjectiveC()();
  v0[22] = v5;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1000E5934;
  v6 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023A750, &qword_1001B5478);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100021CD4;
  v0[13] = &unk_10021E2C0;
  v0[14] = v6;
  [v2 openApplicationWithBundleIdentifier:v5 usingConfiguration:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E5934()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1000E5AA8;
  }

  else
  {
    v3 = sub_1000E5A44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E5A44()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5AA8()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_1000E5B18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000DA7C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001523C(0, &qword_10023BC40, LSAppLink_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000E5C28()
{
  v1 = v0[19];
  v2 = objc_opt_self();
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v0[20] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000E5D6C;
  v6 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&unk_10023CBE0, &unk_1001BE800);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000E5B18;
  v0[13] = &unk_10021E298;
  v0[14] = v6;
  [v2 getAppLinksWithURL:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E5D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1000E5F04;
  }

  else
  {
    v3 = sub_1000E5E7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E5E7C()
{
  v1 = v0[20];
  v2 = sub_100087C34(v0[18]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1000E5F04()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

id sub_1000E603C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostbackUpdateTestingServiceListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E60A4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009E634();
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v11];

    v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon36PostbackUpdateTestingServiceProtocol_];
    [a1 setExportedInterface:v12];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon44PostbackUpdateTestingServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v13 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v14, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing entitlement for TestingService", v17, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v9 & 1;
}