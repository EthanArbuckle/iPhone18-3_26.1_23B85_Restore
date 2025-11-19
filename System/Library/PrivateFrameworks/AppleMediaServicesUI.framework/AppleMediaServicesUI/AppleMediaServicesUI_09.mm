uint64_t sub_1000D2AF4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v71 = &v65 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v65 - v15;
  result = __chkstk_darwin(v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_1000D6698(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = URLQueryItem.name.getter();
      v37 = v36;
      if (v35 == URLQueryItem.name.getter() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_1000D6698(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = URLQueryItem.name.getter();
    v55 = v54;
    if (v53 == URLQueryItem.name.getter() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_1001619F4(&v78, &v77, &v76);
  return 1;
}

unint64_t sub_1000D30FC()
{
  result = qword_10026BD48;
  if (!qword_10026BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD48);
  }

  return result;
}

unint64_t sub_1000D3150()
{
  result = qword_10026BD50;
  if (!qword_10026BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD50);
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncPage()
{
  result = qword_10026BDB0;
  if (!qword_10026BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D3218()
{
  result = type metadata accessor for MediaCatalogSyncPageMetadata();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D32B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001F6870 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000D3384(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x4C5255656C6966;
  }
}

uint64_t sub_1000D33C0(uint64_t a1, uint64_t a2)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MediaCatalogSyncPageMetadata() + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = *(a1 + v4 + 16);
  v8 = a2 + v4;
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *v8;
  v12 = *v5;

  return sub_1000D0314(v12, v6, v7, v11, v9, v10);
}

uint64_t sub_1000D3430(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_10026BEA0, &qword_1001EA080);
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000D3BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  type metadata accessor for URL();
  sub_100006C04();
  sub_1000D3C5C(v14, v15);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = (v3 + *(type metadata accessor for MediaCatalogSyncPageMetadata() + 20));
    v17 = *v16;
    v19 = *(v16 + 1);
    v18 = *(v16 + 2);
    v22 = v17;
    v23 = v19;
    v24 = v18;
    v21[7] = 1;
    sub_1000D3CA4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1000D35F0()
{
  type metadata accessor for URL();
  sub_100006C04();
  sub_1000D3C5C(v1, v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v0 + *(type metadata accessor for MediaCatalogSyncPageMetadata() + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *v3;
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000D36EC()
{
  Hasher.init(_seed:)();
  sub_1000D35F0();
  return Hasher._finalize()();
}

uint64_t sub_1000D372C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v37 = type metadata accessor for URL();
  v4 = sub_100002CC4(v37);
  v34 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&qword_10026BE80, &qword_1001EA078);
  v35 = sub_100002CC4(v10);
  v36 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v35);
  v14 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000D3BB4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002C00(a1);
  }

  v32 = v14;
  v19 = v34;
  v38 = 0;
  sub_100006C04();
  sub_1000D3C5C(v20, v21);
  v22 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = *(v19 + 32);
  v31 = v17;
  v23(v17, v9, v22);
  v41 = 1;
  sub_1000D3C08();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = sub_1000051C0();
  v25(v24);
  v26 = v39;
  v27 = v40;
  v28 = v31;
  v29 = &v31[*(v32 + 20)];
  *v29 = v38;
  *(v29 + 1) = v26;
  *(v29 + 2) = v27;
  sub_10007ACE4(v28, v33);
  sub_100002C00(a1);
  return sub_10007AD48(v28);
}

uint64_t sub_1000D3A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D32B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D3A7C(uint64_t a1)
{
  v2 = sub_1000D3BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D3AB8(uint64_t a1)
{
  v2 = sub_1000D3BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000D3AFC()
{
  Hasher.init(_seed:)();
  sub_1000D35F0();
  return Hasher._finalize()();
}

unint64_t sub_1000D3BB4()
{
  result = qword_10026BE88;
  if (!qword_10026BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BE88);
  }

  return result;
}

unint64_t sub_1000D3C08()
{
  result = qword_10026BE98;
  if (!qword_10026BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BE98);
  }

  return result;
}

uint64_t sub_1000D3C5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000D3CA4()
{
  result = qword_10026BEB0;
  if (!qword_10026BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BEB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncPageMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000D3DD8()
{
  result = qword_10026BEB8;
  if (!qword_10026BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BEB8);
  }

  return result;
}

unint64_t sub_1000D3E30()
{
  result = qword_10026BEC0;
  if (!qword_10026BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BEC0);
  }

  return result;
}

unint64_t sub_1000D3E88()
{
  result = qword_10026BEC8;
  if (!qword_10026BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BEC8);
  }

  return result;
}

void sub_1000D3EDC(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = sub_100002CC4(v3);
  v47 = v5;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v4);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = v1[4];
  sub_100003CA8(v1, v1[3]);
  sub_1000D4838(v12);
  v14 = v46;
  v15 = dispatch thunk of FileStore.items(within:)();
  if (v14)
  {

    (*(v47 + 8))(v12, v3);
  }

  else
  {
    v16 = v15;
    v17 = v47;
    v45 = *(v47 + 8);
    v46 = v47 + 8;
    v45(v12, v3);
    v44 = *(v16 + 16);
    if (v44)
    {
      v18 = v17;
      v39 = v1;
      v40 = 0;
      v19 = 0;
      v20 = *(v18 + 80);
      sub_100004864();
      v42 = v16 + v22;
      v43 = v16;
      v23 = *(a1 + 16);
      v41 = v21 + 16;
      while (v19 < *(v16 + 16))
      {
        v24 = v19++;
        v25 = v3;
        (*(v21 + 16))(v10, v42 + *(v21 + 72) * v24, v3);
        v26 = 0;
        while (v23 != v26)
        {
          v27 = type metadata accessor for MediaCatalogSyncPageMetadata();
          sub_100002CFC(v27);
          v30 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v29 + 72) * v26;
          v31 = URL.lastPathComponent.getter();
          v33 = v32;
          if (v31 == URL.lastPathComponent.getter() && v33 == v34)
          {

            goto LABEL_17;
          }

          ++v26;
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v36)
          {
            goto LABEL_17;
          }
        }

        v37 = v39[4];
        sub_100003CA8(v39, v39[3]);
        v38 = v40;
        dispatch thunk of FileStore.removeItem(at:)();
        v40 = v38;
        if (v38)
        {

          v45(v10, v25);
          return;
        }

LABEL_17:
        v3 = v25;
        v45(v10, v25);
        v16 = v43;
        v21 = v47;
        if (v19 == v44)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
    }
  }
}

uint64_t sub_1000D422C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v36 = a2;
  v39 = type metadata accessor for FileStoreProtectionType();
  v3 = sub_100002CC4(v39);
  v37 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v38 = v8 - v7;
  v9 = type metadata accessor for URL();
  v10 = sub_100002CC4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v34 - v18;
  v20 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_1000D4838(v19);
  v21 = v41;
  dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
  if (v21)
  {
    return (*(v12 + 8))(v19, v9);
  }

  v23 = *(v12 + 8);
  v23(v19, v9);
  sub_1000D4BF0(v40);
  v34[0] = v12;
  v34[1] = v23;
  v41 = v9;
  sub_1000D4AA8(v17);

  v24 = v2[3];
  v34[3] = v2[4];
  v34[2] = sub_100003CA8(v2, v24);
  v25 = v39;
  v27 = *(v40 + 24);
  v26 = *(v40 + 32);
  v28 = v37;
  v29 = v38;
  (*(v37 + 104))(v38, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v39);
  v35 = v17;
  dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
  (*(v28 + 8))(v29, v25);
  v30 = v36;
  (*(v34[0] + 32))(v36, v35, v41);
  LOBYTE(v26) = *v40;
  v32 = *(v40 + 8);
  v31 = *(v40 + 16);
  v33 = v30 + *(type metadata accessor for MediaCatalogSyncPageMetadata() + 20);
  *v33 = v26;
  *(v33 + 8) = v32;
  *(v33 + 16) = v31;
}

void *sub_1000D4534(uint64_t a1)
{
  v3 = type metadata accessor for MediaCatalogSyncPage();
  v4 = sub_100002CC4(v3);
  v43 = v5;
  v44 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100002DEC();
  v13 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v14 = sub_100002CFC(v13);
  v45 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v20 = v19 - v18;
  v21 = 0;
  v46 = a1;
  v48 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  while (v48 != v21)
  {
    v23 = *(v45 + 80);
    sub_100004864();
    sub_10007ACE4(v46 + v24 + *(v25 + 72) * v21, v20);
    v26 = v47[4];
    sub_100003CA8(v47, v47[3]);
    v27 = dispatch thunk of FileStore.contents(at:)();
    if (v1)
    {
      goto LABEL_11;
    }

    v29 = v27;
    v30 = v28;
    static String.Encoding.utf8.getter();
    v31 = String.init(data:encoding:)();
    if (!v32)
    {
      sub_100090C64();
      swift_allocError();
      *v41 = 1;
      swift_willThrow();
      sub_1000253FC(v29, v30);
LABEL_11:
      sub_10007AD48(v20);

      return v22;
    }

    v33 = v31;
    v34 = v32;
    sub_1000253FC(v29, v30);
    sub_10007ACE4(v20, v10);
    v35 = (v10 + *(v44 + 20));
    *v35 = v33;
    v35[1] = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1000D5230(0, v22[2] + 1, 1, v22);
    }

    v37 = v22[2];
    v36 = v22[3];
    if (v37 >= v36 >> 1)
    {
      v22 = sub_1000D5230((v36 > 1), v37 + 1, 1, v22);
    }

    sub_10007AD48(v20);
    v22[2] = v37 + 1;
    v38 = *(v43 + 80);
    sub_100004864();
    sub_1000D5354(v10, v22 + v39 + *(v40 + 72) * v37);
    ++v21;
  }

  return v22;
}

uint64_t sub_1000D4838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = type metadata accessor for MediaCatalogSyncPageStoreCore();
  v14 = *(v13 + 20);
  v15 = type metadata accessor for URL();
  sub_100002DDC(v15);
  (*(v16 + 16))(a1, v2 + v14);
  v17 = *(v7 + 104);
  v18 = sub_10003AEAC();
  v17(v18);
  sub_10001ECE0();
  URL.append<A>(component:directoryHint:)();
  v19 = *(v7 + 8);
  v19(v12, v4);
  sub_1000D0004(*(v23 + *(v13 + 24)), *(v23 + *(v13 + 24) + 8), *(v23 + *(v13 + 24) + 16));
  v20 = sub_10003AEAC();
  v17(v20);
  URL.append<A>(component:directoryHint:)();
  v19(v12, v4);

  v21 = sub_10003AEAC();
  v17(v21);
  URL.append<A>(component:directoryHint:)();
  return (v19)(v12, v4);
}

uint64_t type metadata accessor for MediaCatalogSyncPageStoreCore()
{
  result = qword_10026C010;
  if (!qword_10026C010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D4AA8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v10 = v9 - v8;
  sub_1000D4838(a1);

  v11._countAndFlagsBits = 0x6E6F736A2ELL;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  (*(v5 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_10001ECE0();
  URL.append<A>(component:directoryHint:)();
  (*(v5 + 8))(v10, v2);
}

uint64_t sub_1000D4BF0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v10 = v9 - v8;
  if (*(a1 + 64))
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    sub_100090C64();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }

  return sub_100002FD8();
}

void sub_1000D4CFC()
{
  sub_10000C398();
  if (v7)
  {
    sub_100002EBC();
    if (v9 != v10)
    {
      sub_10000AE9C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_10000B860(v8);
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF80, &qword_1001EA2D0);
    v11 = sub_10001CD54();
    sub_100019BE0(v11);
    sub_100023D60(v12);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_100002FD8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10007B9A4(&qword_10026BF88, &qword_1001EA2D8);
    sub_100012C1C();
  }
}

void sub_1000D4E00()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000181BC(v6);
  if (v2)
  {
    sub_10007B9A4(&qword_10026BEE0, &qword_1001EBCD0);
    v9 = sub_10001CD54();
    j__malloc_size(v9);
    sub_10000A3BC();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1000D4ECC()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &qword_100269C28, &qword_1001E68D8);
  sub_10000A610();
  v9 = type metadata accessor for URLQueryItem();
  sub_100005C6C(v9);
  v11 = *(v10 + 80);
  sub_100004864();
  if (v1)
  {
    v13 = sub_1000079E8(v12);
    sub_1000D68D4(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D4FA8()
{
  sub_1000074C8();
  if (v2)
  {
    sub_1000083B0();
    if (v3 != v4)
    {
      sub_1000067D8();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  v5 = *(v0 + 16);
  sub_10000A61C();
  sub_1000D65A8(v5, v6, v7, v8, v9);
  sub_10000A610();
  v10 = type metadata accessor for MediaCatalogSyncPageMetadata();
  sub_100005C6C(v10);
  v12 = *(v11 + 80);
  sub_100004864();
  if (v1)
  {
    v14 = sub_1000079E8(v13);
    sub_1000D68D4(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D507C()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &qword_10026BF90, &qword_1001EA2E0);
  sub_10000A610();
  v9 = type metadata accessor for BagValueType();
  sub_100005C6C(v9);
  v11 = *(v10 + 80);
  sub_100004864();
  if (v1)
  {
    v13 = sub_1000079E8(v12);
    sub_1000D68D4(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5158()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000B860(v6);
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF98, &qword_1001EA2E8);
    v9 = sub_100005F6C();
    v10 = j__malloc_size(v9);
    sub_100007F80(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000071C0();
  if (v1)
  {
    if (v9 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1000D5230(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000D65A8(v9, a2, &qword_10026BED0, &qword_1001EA1C0, type metadata accessor for MediaCatalogSyncPage);
  v11 = *(type metadata accessor for MediaCatalogSyncPage() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1000D68D4(a4 + v12, v9, v10 + v12, type metadata accessor for MediaCatalogSyncPage);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000D5354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncPage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000D53B8()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &qword_100269FA0, &qword_1001EA1D0);
  v9 = sub_10000A610();
  v10 = type metadata accessor for ScheduleInfo.Metadata(v9);
  sub_100005C6C(v10);
  v12 = *(v11 + 80);
  sub_100004864();
  if (v1)
  {
    v14 = sub_1000079E8(v13);
    sub_1000D68D4(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D54B8()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000B860(v6);
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF70, &qword_1001EA2A8);
    v9 = sub_10001CD54();
    sub_100019BE0(v9);
    sub_100023D60(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000071C0();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D5584()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000181BC(v6);
  if (v2)
  {
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D5678()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &qword_10026A040, &qword_1001EA2A0);
  sub_10000A610();
  v9 = type metadata accessor for ContentInfo();
  sub_100005C6C(v9);
  v11 = *(v10 + 80);
  sub_100004864();
  if (v1)
  {
    v13 = sub_1000079E8(v12);
    sub_1000D68D4(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5754()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000B860(v6);
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF78, &unk_1001EA2C0);
    v9 = sub_100005F6C();
    v10 = j__malloc_size(v9);
    sub_100007F80(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000071C0();
  if (v1)
  {
    if (v9 != v0 || &v12[72 * v2] <= v11)
    {
      memmove(v11, v12, 72 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D5830()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &qword_100269FE8, &qword_1001EA250);
  v9 = sub_10000A610();
  v10 = type metadata accessor for MercuryCacheMetadata(v9);
  sub_100005C6C(v10);
  v12 = *(v11 + 80);
  sub_100004864();
  if (v1)
  {
    v14 = sub_1000079E8(v13);
    sub_1000D68D4(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D590C()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &qword_100269FF0, &qword_1001E7560);
  v9 = sub_10000A610();
  updated = type metadata accessor for CacheUpdateRun(v9);
  sub_100005C6C(updated);
  v12 = *(v11 + 80);
  sub_100004864();
  if (v1)
  {
    v14 = sub_1000079E8(v13);
    sub_1000D68D4(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D59E8()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &qword_10026BF48, &unk_1001EA258);
  v9 = sub_10000A610();
  updated = type metadata accessor for MercuryCacheUpdateData.DataKind(v9);
  sub_100005C6C(updated);
  v12 = *(v11 + 80);
  sub_100004864();
  if (v1)
  {
    v14 = sub_1000079E8(v13);
    sub_1000D68D4(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5AC4()
{
  sub_10000C398();
  if (v7)
  {
    sub_100002EBC();
    if (v9 != v10)
    {
      sub_10000AE9C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_10000B860(v8);
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF38, &unk_1001EA240);
    v4 = 40;
    v11 = sub_100005F6C();
    v12 = j__malloc_size(v11);
    sub_100007F80(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v11 != v0 || v5 + 40 * v2 <= v4)
    {
      v14 = sub_100002FD8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10007B9A4(&qword_10026BF40, &qword_1001EE040);
    sub_100012C1C();
  }
}

void sub_1000D5BAC()
{
  sub_10000C398();
  if (v3)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000D64A0(*(v0 + 16), v4);
  v7 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  sub_100005C6C(v7);
  v9 = *(v8 + 80);
  sub_100004864();
  if (v1)
  {
    v11 = sub_1000079E8(v10);
    sub_1000D67B0(v11, v12, v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5C7C()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v9 = type metadata accessor for LogInterpolation();
  sub_100005C6C(v9);
  v11 = *(v10 + 80);
  sub_100004864();
  if (v1)
  {
    v13 = sub_1000079E8(v12);
    sub_1000D68D4(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5D58()
{
  sub_10000C398();
  if (v7)
  {
    sub_100002EBC();
    if (v9 != v10)
    {
      sub_10000AE9C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_10000B860(v8);
  if (v3)
  {
    sub_10007B9A4(&qword_10026BED8, &qword_1001EA1C8);
    v11 = sub_10001CD54();
    sub_100019BE0(v11);
    sub_100023D60(v12);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v14 = sub_100002FD8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    sub_100012C1C();
  }
}

void sub_1000D5E38()
{
  sub_10000C398();
  if (v7)
  {
    sub_100002EBC();
    if (v9 != v10)
    {
      sub_10000AE9C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_10000B860(v8);
  if (v3)
  {
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    v4 = 48;
    v11 = sub_100005F6C();
    v12 = j__malloc_size(v11);
    sub_100007F80(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v11 != v0 || v5 + 48 * v2 <= v4)
    {
      v14 = sub_100002FD8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10007B9A4(&unk_100271F40, &unk_1001EA290);
    sub_100012C1C();
  }
}

void sub_1000D5F20()
{
  sub_10000C398();
  if (v7)
  {
    sub_100002EBC();
    if (v9 != v10)
    {
      sub_10000AE9C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_10000B860(v8);
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF60, &qword_1001EA278);
    v11 = sub_10001CD54();
    sub_100019BE0(v11);
    sub_100023D60(v12);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_100002FD8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
    sub_100012C1C();
  }
}

void sub_1000D6078(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    sub_100002EBC();
    if (v9 != v10)
    {
      sub_10000AE9C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_10007B9A4(a5, a6);
    v13 = sub_10001CD54();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 32);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[32 * v11] <= v15)
    {
      memmove(v15, v16, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D6164()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10000B1EC(v2, v5, &qword_10026BF10, &qword_1001EA208);
  v9 = sub_10000A610();
  v10 = type metadata accessor for ScheduleInfo(v9);
  sub_100005C6C(v10);
  v12 = *(v11 + 80);
  sub_100004864();
  if (v1)
  {
    v14 = sub_1000079E8(v13);
    sub_1000D68D4(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D6240()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000181BC(v6);
  if (v2)
  {
    sub_10007B9A4(&qword_10026BF08, &qword_1001EA200);
    v9 = sub_10001CD54();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * ((v10 - 32) / 2);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[2 * v3] <= v11)
    {
      memmove(v11, v12, 2 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 2 * v3);
  }
}

void sub_1000D6318()
{
  sub_10000C398();
  if (v7)
  {
    sub_100002EBC();
    if (v9 != v10)
    {
      sub_10000AE9C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_10000B860(v8);
  if (v3)
  {
    sub_10007B9A4(&qword_10026BEF8, &qword_1001EA1E8);
    v4 = 24;
    v11 = sub_100005F6C();
    v12 = j__malloc_size(v11);
    sub_100007F80(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v11 != v0 || v5 + 24 * v2 <= v4)
    {
      v14 = sub_100002FD8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10007B9A4(&qword_10026BF00, &unk_1001EA1F0);
    sub_100012C1C();
  }
}

void *sub_1000D6400(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v4 = sub_10001CD54();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1000D64A0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(&qword_100269FD8, &qword_1001EA220);
  v4 = *(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000D65A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(a3, a4);
  v8 = sub_10000A610();
  v9 = a5(v8);
  sub_100002CFC(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1000D66E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

char *sub_1000D671C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

char *sub_1000D6750(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return sub_100009E30(result, a3, a2);
  }

  return result;
}

uint64_t sub_1000D67B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100017D60();
  if (v10 && (v11 = sub_10007B9A4(a4, a5), result = sub_100002DDC(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_100004C20();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_10007B9A4(a4, a5);
    sub_100004C20();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_1000D6878(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

char *sub_1000D6898(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

uint64_t sub_1000D68D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_100017D60();
  if (v8 && (v9 = (a4)(0), result = sub_100002DDC(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_100004C20();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_100004C20();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_1000D6988(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

unint64_t sub_1000D69D8()
{
  result = sub_1000D6A64();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000D6A64()
{
  result = qword_10026C020;
  if (!qword_10026C020)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10026C020);
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncRequest()
{
  result = qword_10026C0B0;
  if (!qword_10026C0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncResponse()
{
  result = qword_10026C140;
  if (!qword_10026C140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D6BAC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D6C58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D6CAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000D6D14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F70736552776172 && a2 == 0xEF79646F4265736ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174654D636E7973 && a2 == 0xEC00000061746164;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001001F68B0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x736E6961746E6F63 && a2 == 0xEF73656972746E45)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000D6F24(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6F70736552776172;
      break;
    case 2:
      result = 0x6174654D636E7973;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6F43737574617473;
      break;
    case 5:
      result = 0x736E6961746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D7008(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = 0xE400000000000000;
  v9 = 1936748641;
  if (v3 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7373656E746966;
  }

  if (v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = 0xE400000000000000;
  v13 = 1936748641;
  if (*a2 != 1)
  {
    v13 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7373656E746966;
  }

  if (*a2)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_34:
      v28 = 0;
      return v28 & 1;
    }
  }

  v19 = v4 == v6 && v5 == v7;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_34;
  }

  v20 = *(a1 + 3);
  v21 = *(a1 + 4);
  v22 = *(a2 + 24);
  v23 = *(a2 + 32);
  if ((static Data.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_34;
  }

  v24 = *(a1 + 56);
  v30[0] = *(a1 + 40);
  v30[1] = v24;
  v31 = a1[72];
  v25 = *(a2 + 56);
  v32[0] = *(a2 + 40);
  v32[1] = v25;
  v33 = *(a2 + 72);
  if ((sub_1000D80BC(v30, v32) & 1) == 0)
  {
    goto LABEL_34;
  }

  v26 = type metadata accessor for MediaCatalogSyncResponse();
  v27 = v26[7];
  if ((static Date.== infix(_:_:)() & 1) == 0 || *&a1[v26[8]] != *(a2 + v26[8]))
  {
    goto LABEL_34;
  }

  v28 = a1[v26[9]] ^ *(a2 + v26[9]) ^ 1;
  return v28 & 1;
}

void sub_1000D71F8()
{
  sub_100004C34();
  v2 = v0;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_10026C1B0, &qword_1001EA538);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = v4[3];
  v14 = v4[4];
  sub_10000A264(v4);
  sub_1000D927C();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *(v2 + 8);
  v16 = *(v2 + 16);
  LOBYTE(v26) = *v2;
  *(&v26 + 1) = v15;
  *&v27 = v16;
  v29 = 0;
  sub_1000D3CA4();
  sub_1000030C8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v17 = *(v2 + 32);
    *&v26 = *(v2 + 24);
    *(&v26 + 1) = v17;
    v29 = 1;
    sub_10003A5E0(v26, v17);
    sub_1000D93E4();
    sub_1000030C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000253FC(v26, *(&v26 + 1));
    v18 = *(v2 + 72);
    v19 = *(v2 + 56);
    v26 = *(v2 + 40);
    v27 = v19;
    v28 = v18;
    v29 = 2;
    sub_1000D9438();
    sub_1000030C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = type metadata accessor for MediaCatalogSyncResponse();
    v21 = v20[7];
    LOBYTE(v26) = 3;
    type metadata accessor for Date();
    sub_1000051D4();
    sub_1000D9778(v22, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v2 + v20[8]);
    LOBYTE(v26) = 4;
    sub_1000030C8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v2 + v20[9]);
    LOBYTE(v26) = 5;
    sub_1000030C8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v12, v5);
  sub_10000ABA0();
}

void sub_1000D7474()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v1 + 2);
  String.hash(into:)();

  String.hash(into:)();
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  Data.hash(into:)();
  v11 = *(v1 + 40);
  v12 = *(v1 + 56);
  v13 = v1[72];
  sub_1000D82F0();
  v7 = type metadata accessor for MediaCatalogSyncResponse();
  v8 = v7[7];
  type metadata accessor for Date();
  sub_1000051D4();
  sub_1000D9778(v9, v10);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*&v1[v7[8]]);
  Hasher._combine(_:)(v1[v7[9]]);
}

Swift::Int sub_1000D75C4()
{
  sub_100004750();
  sub_1000D7474();
  return Hasher._finalize()();
}

void sub_1000D75FC()
{
  sub_100007E34();
  v2 = v1;
  v32 = v3;
  v36 = type metadata accessor for Date();
  v4 = sub_100002CC4(v36);
  v33 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10007B9A4(&qword_10026C198, &qword_1001EA530);
  sub_100002CC4(v34);
  v11 = *(v10 + 64);
  sub_100004E78();
  __chkstk_darwin(v12);
  v35 = type metadata accessor for MediaCatalogSyncResponse();
  v13 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_1000D927C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100002C00(v2);
  }

  else
  {
    v31 = v9;
    sub_1000D3C08();
    sub_1000079F8();
    v17 = *(&v37 + 1);
    v18 = v38;
    v19 = v15;
    *v15 = v37;
    *(v15 + 1) = v17;
    *(v15 + 2) = v18;
    sub_1000D92D0();
    sub_1000079F8();
    *(v15 + 24) = v37;
    sub_1000D3150();
    sub_1000079F8();
    v20 = v39;
    v21 = v38;
    *(v15 + 40) = v37;
    *(v15 + 56) = v21;
    v15[72] = v20;
    LOBYTE(v37) = 3;
    sub_1000051D4();
    sub_1000D9778(v22, v23);
    v24 = v31;
    v25 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v25;
    v27 = v35;
    (*(v33 + 32))(v19 + *(v35 + 28), v24, v26);
    sub_1000063A4(4);
    *(v19 + *(v27 + 32)) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000063A4(5);
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = sub_100005858();
    v30(v29);
    *(v19 + *(v27 + 36)) = v28 & 1;
    sub_1000D9324(v19, v32);
    sub_100002C00(v2);
    sub_1000D9388(v19);
  }

  sub_100005B78();
}

uint64_t sub_1000D7A7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E79537478656ELL && a2 == 0xED00006E656B6F54;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000D7B48(char a1)
{
  if (a1)
  {
    return 0x7465736572;
  }

  else
  {
    return 0x636E79537478656ELL;
  }
}

uint64_t sub_1000D7B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v8 = a1 == a4 && a2 == a5;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6 == 2 || ((a6 ^ a3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  return 0;
}

void sub_1000D7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100007E34();
  a22 = v24;
  a23 = v25;
  a10 = v26;
  v28 = v27;
  v29 = sub_10007B9A4(&qword_10026C270, &qword_1001EA960);
  sub_100002CC4(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  sub_100004E78();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  v37 = v28[4];
  sub_100003CA8(v28, v28[3]);
  sub_1000D9DD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v23)
  {
    a12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v31 + 8))(v36, v29);
  sub_100005B78();
}

void sub_1000D7D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (a4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = a4 & 1;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_1000D7DEC(uint64_t a1, uint64_t a2, char a3)
{
  sub_100004750();
  sub_1000D7D6C(v7, a1, a2, a3);
  return Hasher._finalize()();
}

void sub_1000D7E44()
{
  sub_100004C34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_10026C260, &qword_1001EA958);
  sub_100002CC4(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  v7 = v2[3];
  v8 = v2[4];
  sub_10000A264(v2);
  sub_1000D9DD8();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = sub_10000A318();
    v10(v9, v3);
  }

  sub_100002C00(v2);
  sub_10000ABA0();
}

uint64_t sub_1000D7FCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047342 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000D809C(char a1)
{
  if (a1)
  {
    return 1635018093;
  }

  else
  {
    return 1954047342;
  }
}

uint64_t sub_1000D80BC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v12 = a1[2] == *(a2 + 16) && v8 == v10;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    if (v9 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 2 || ((v11 ^ v9) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  return 0;
}

void sub_1000D8190()
{
  sub_100004C34();
  v2 = v0;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_10026C1E8, &qword_1001EA548);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  v12 = &v17[-v11];
  v13 = v4[3];
  v14 = v4[4];
  sub_10000A264(v4);
  sub_1000D97C0();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v2;
  v16 = v2[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v18 = *(v2 + 1);
    v19 = *(v2 + 32);
    v17[15] = 1;
    sub_1000D9868();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v7 + 8))(v12, v5);
  sub_10000ABA0();
}

void sub_1000D82F0()
{
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = *(v0 + 32);
  if (v0[3])
  {
    v3 = v0[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v2 & 1;
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_1000D83A0()
{
  sub_100004750();
  sub_1000D82F0();
  return Hasher._finalize()();
}

void sub_1000D83D8()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_10026C1D0, &qword_1001EA540);
  sub_100002CC4(v5);
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v9 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_1000D97C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100002C00(v2);
  }

  else
  {
    LOBYTE(v15) = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    sub_1000D9814();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = sub_1000073F4();
    v14(v13);
    sub_100002C00(v2);
    *v4 = v10;
    *(v4 + 8) = v12;
    *(v4 + 16) = v15;
    *(v4 + 24) = v16;
    *(v4 + 32) = v17;
  }

  sub_100005B78();
}

uint64_t sub_1000D8590(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000D860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void sub_1000D8654()
{
  sub_100007E34();
  v1 = v0;
  v2 = sub_10007B9A4(&qword_10026C2D8, &qword_1001EAC80);
  sub_100002CC4(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  v6 = v1[4];
  sub_100003CA8(v1, v1[3]);
  sub_1000DA300();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v7 = sub_1000073F4();
  v8(v7);
  sub_100005B78();
}

void sub_1000D876C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000D87DC(uint64_t a1, uint64_t a2)
{
  sub_100004750();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000D8848()
{
  sub_100004C34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_10026C2C8, &qword_1001EAC78);
  sub_100002CC4(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  v7 = v2[3];
  v8 = v2[4];
  sub_10000A264(v2);
  sub_1000DA300();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = sub_10000A318();
    v10(v9, v3);
  }

  sub_100002C00(v2);
  sub_10000ABA0();
}

uint64_t sub_1000D897C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000D8A04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 && (sub_1001C4818(a1, a2) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

void sub_1000D8A3C()
{
  sub_100004C34();
  v1 = v0;
  v3 = v2;
  v4 = sub_10007B9A4(&qword_10026C278, &qword_1001EA968);
  sub_100002CC4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100004E78();
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  v12 = v3[3];
  v13 = v3[4];
  sub_10000A264(v3);
  sub_1000D9D30();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[1] = v1;
  sub_10007B9A4(&qword_10026C248, &qword_1001EA950);
  sub_1000D9E2C(&qword_10026C280, sub_1000D9EA4);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v11, v4);
  sub_10000ABA0();
}

void sub_1000D8BA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);

    sub_10007AA40(a1, a2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000D8C00(uint64_t a1)
{
  sub_100004750();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    sub_10007AA40(v3, a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000D8C5C()
{
  sub_100004C34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_10026C238, &qword_1001EA948);
  sub_100002CC4(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  v7 = v2[3];
  v8 = v2[4];
  sub_10000A264(v2);
  sub_1000D9D30();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_10007B9A4(&qword_10026C248, &qword_1001EA950);
    sub_1000D9E2C(&qword_10026C250, sub_1000D9D84);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9 = sub_10000A318();
    v10(v9, v3);
  }

  sub_100002C00(v2);
  sub_10000ABA0();
}

uint64_t sub_1000D8DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D6D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D8E18(uint64_t a1)
{
  v2 = sub_1000D927C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D8E54(uint64_t a1)
{
  v2 = sub_1000D927C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000D8EC8()
{
  Hasher.init(_seed:)();
  sub_1000D7474();
  return Hasher._finalize()();
}

uint64_t sub_1000D8F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D7A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D8F38(uint64_t a1)
{
  v2 = sub_1000D9DD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D8F74(uint64_t a1)
{
  v2 = sub_1000D9DD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D8FB0(uint64_t a1@<X8>)
{
  sub_1000D7E44();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

Swift::Int sub_1000D9018()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_1000D7D6C(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_1000D9094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D7FCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D90BC(uint64_t a1)
{
  v2 = sub_1000D97C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D90F8(uint64_t a1)
{
  v2 = sub_1000D97C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D9134@<D0>(uint64_t a1@<X8>)
{
  sub_1000D83D8();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

Swift::Int sub_1000D919C()
{
  Hasher.init(_seed:)();
  sub_1000D82F0();
  return Hasher._finalize()();
}

unint64_t sub_1000D91E0()
{
  result = qword_10026C188;
  if (!qword_10026C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C188);
  }

  return result;
}

unint64_t sub_1000D927C()
{
  result = qword_10026C1A0;
  if (!qword_10026C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1A0);
  }

  return result;
}

unint64_t sub_1000D92D0()
{
  result = qword_10026C1A8;
  if (!qword_10026C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1A8);
  }

  return result;
}

uint64_t sub_1000D9324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D9388(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D93E4()
{
  result = qword_10026C1B8;
  if (!qword_10026C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1B8);
  }

  return result;
}

unint64_t sub_1000D9438()
{
  result = qword_10026C1C0;
  if (!qword_10026C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1C0);
  }

  return result;
}

uint64_t sub_1000D9490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D8590(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000D94BC(uint64_t a1)
{
  v2 = sub_1000DA300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D94F8(uint64_t a1)
{
  v2 = sub_1000DA300();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D9534(void *a1@<X8>)
{
  sub_1000D8848();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_1000D9560()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000D8654();
}

Swift::Int sub_1000D958C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D9610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D897C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000D963C(uint64_t a1)
{
  v2 = sub_1000D9D30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D9678(uint64_t a1)
{
  v2 = sub_1000D9D30();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D96B4(void *a1@<X8>)
{
  sub_1000D8C5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

Swift::Int sub_1000D970C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    sub_10007AA40(v3, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D9778(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000D97C0()
{
  result = qword_10026C1D8;
  if (!qword_10026C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1D8);
  }

  return result;
}

unint64_t sub_1000D9814()
{
  result = qword_10026C1E0;
  if (!qword_10026C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1E0);
  }

  return result;
}

unint64_t sub_1000D9868()
{
  result = qword_10026C1F0;
  if (!qword_10026C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000D99B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D9A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000D9A74()
{
  result = qword_10026C1F8;
  if (!qword_10026C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1F8);
  }

  return result;
}

unint64_t sub_1000D9ACC()
{
  result = qword_10026C200;
  if (!qword_10026C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C200);
  }

  return result;
}

unint64_t sub_1000D9B24()
{
  result = qword_10026C208;
  if (!qword_10026C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C208);
  }

  return result;
}

unint64_t sub_1000D9B7C()
{
  result = qword_10026C210;
  if (!qword_10026C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C210);
  }

  return result;
}

unint64_t sub_1000D9BD4()
{
  result = qword_10026C218;
  if (!qword_10026C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C218);
  }

  return result;
}

unint64_t sub_1000D9C2C()
{
  result = qword_10026C220;
  if (!qword_10026C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C220);
  }

  return result;
}

unint64_t sub_1000D9C84()
{
  result = qword_10026C228;
  if (!qword_10026C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C228);
  }

  return result;
}

unint64_t sub_1000D9CDC()
{
  result = qword_10026C230;
  if (!qword_10026C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C230);
  }

  return result;
}

unint64_t sub_1000D9D30()
{
  result = qword_10026C240;
  if (!qword_10026C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C240);
  }

  return result;
}

unint64_t sub_1000D9D84()
{
  result = qword_10026C258;
  if (!qword_10026C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C258);
  }

  return result;
}

unint64_t sub_1000D9DD8()
{
  result = qword_10026C268;
  if (!qword_10026C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C268);
  }

  return result;
}

uint64_t sub_1000D9E2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_10026C248, &qword_1001EA950);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000D9EA4()
{
  result = qword_10026C288;
  if (!qword_10026C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C288);
  }

  return result;
}

_BYTE *sub_1000D9EF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000D9FE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DA038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000DA09C()
{
  result = qword_10026C290;
  if (!qword_10026C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C290);
  }

  return result;
}

unint64_t sub_1000DA0F4()
{
  result = qword_10026C298;
  if (!qword_10026C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C298);
  }

  return result;
}

unint64_t sub_1000DA14C()
{
  result = qword_10026C2A0;
  if (!qword_10026C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2A0);
  }

  return result;
}

unint64_t sub_1000DA1A4()
{
  result = qword_10026C2A8;
  if (!qword_10026C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2A8);
  }

  return result;
}

unint64_t sub_1000DA1FC()
{
  result = qword_10026C2B0;
  if (!qword_10026C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2B0);
  }

  return result;
}

unint64_t sub_1000DA254()
{
  result = qword_10026C2B8;
  if (!qword_10026C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2B8);
  }

  return result;
}

unint64_t sub_1000DA2AC()
{
  result = qword_10026C2C0;
  if (!qword_10026C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2C0);
  }

  return result;
}

unint64_t sub_1000DA300()
{
  result = qword_10026C2D0;
  if (!qword_10026C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2D0);
  }

  return result;
}

_BYTE *sub_1000DA354(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1000DA404()
{
  result = qword_10026C2E0;
  if (!qword_10026C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2E0);
  }

  return result;
}

unint64_t sub_1000DA45C()
{
  result = qword_10026C2E8;
  if (!qword_10026C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2E8);
  }

  return result;
}

unint64_t sub_1000DA4B4()
{
  result = qword_10026C2F0;
  if (!qword_10026C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2F0);
  }

  return result;
}

void sub_1000DA530(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a6;
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v72 - v17;
  v19 = __chkstk_darwin(v16);
  v22 = &v72 - v21;
  v23 = *a1;
  if (*a1)
  {
    if (v23 != 1)
    {

      goto LABEL_9;
    }

    v73 = v20;
    v74 = v19;
    v75 = v7;
    v76 = a7;
  }

  else
  {
    v73 = v20;
    v74 = v19;
    v75 = v7;
    v76 = a7;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_9:
    sub_100090C64();
    swift_allocError();
    v30 = 4;
LABEL_10:
    *v29 = v30;
    swift_willThrow();
    return;
  }

  sub_100006C2C();
  v25 = v77;
  if (sub_1000E00AC(v26, v27))
  {
    v28 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
    sub_10000A7C0(v76, 1, 1, v28);
    return;
  }

  v31 = type metadata accessor for MediaCatalogSyncState();
  v32 = *&a1[*(v31 + 44)];
  if (!v32)
  {
    if (*(a1 + 4))
    {
      v40 = v25;
      v42 = *(a1 + 1);
      v41 = *(a1 + 2);
      v43 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
      sub_1000030D8(v43);
      v39 = v76;
      (*(v44 + 16))(v76 + v45, v40);
      sub_1000051EC();
      v47 = 3;
    }

    else
    {
      v39 = v76;
      if (!*(a1 + 6))
      {
        v65 = v25;
        v67 = *(a1 + 1);
        v66 = *(a1 + 2);
        v68 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
        sub_1000030D8(v68);
        (*(v69 + 16))(v39 + v70, v65);
        sub_1000051EC();
        *(v39 + v71) = 0;
        goto LABEL_25;
      }

      v56 = v31;
      sub_100006C2C();
      sub_1000CEE1C(v57, v58);
      if (!v85)
      {
        goto LABEL_29;
      }

      sub_1000CEF5C(v84);
      v59 = &a1[*(v56 + 40)];
      Date.addingTimeInterval(_:)();
      v61 = *(a1 + 1);
      v60 = *(a1 + 2);
      v62 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
      sub_1000030D8(v62);
      (*(v63 + 32))(v39 + v64, v15);
      sub_1000051EC();
      v47 = 1;
    }

LABEL_24:
    *(v39 + v46) = v47;
LABEL_25:
    sub_10000A7C0(v39, 0, 1, a2);

    return;
  }

  v33 = *(v31 + 40);
  sub_100006C2C();
  sub_1000CEE1C(v34, v35);
  if (!v81[1])
  {
LABEL_29:
    sub_100090C64();
    swift_allocError();
    v30 = 6;
    goto LABEL_10;
  }

  v36 = *(v82 + 16);
  if (v36 < v32)
  {
    sub_1000CEF5C(v81);
    sub_100006C2C();
    sub_1000CEE1C(v37, v38);
    v39 = v76;
    if (v83[1])
    {
      sub_1000CEF5C(v83);
LABEL_20:
      Date.addingTimeInterval(_:)();
      v49 = v77;
      if (static Date.> infix(_:_:)())
      {
        v50 = v73;
        v51 = v22;
        v52 = v74;
        (*(v73 + 32))(v18, v51, v74);
      }

      else
      {
        v50 = v73;
        v53 = v22;
        v52 = v74;
        (*(v73 + 8))(v53, v74);
        (*(v50 + 16))(v18, v49, v52);
      }

      v54 = *(a1 + 1);
      v55 = *(a1 + 2);
      *v39 = v23;
      *(v39 + 8) = v54;
      *(v39 + 16) = v55;
      a2 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
      (*(v50 + 32))(v39 + *(a2 + 20), v18, v52);
      v46 = *(a2 + 24);
      v47 = 4;
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  if (v32 - 1 < v36)
  {
    v48 = *(v82 + 8 * (v32 - 1) + 32);
    sub_1000CEF5C(v81);
    v39 = v76;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for MediaCatalogSyncError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000DAB54()
{
  result = qword_10026C2F8;
  if (!qword_10026C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2F8);
  }

  return result;
}

uint64_t sub_1000DABF0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000DACBC()
{
  sub_1000DAD14();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1000DAD14()
{
  if (!qword_10026C418)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_10026C418);
    }
  }
}

unint64_t sub_1000DAD70()
{
  result = qword_10026C440;
  if (!qword_10026C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C440);
  }

  return result;
}

uint64_t sub_1000DADC4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v13 = v12 - v11;
  v14 = type metadata accessor for MediaCatalogSyncScheduleAction(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_100002DEC();
  sub_100004B68();
  v16 = *(*(sub_10007B9A4(&qword_10026C480, &qword_1001EB090) - 8) + 64);
  sub_100004E78();
  v18 = __chkstk_darwin(v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_1000DD4A0(a1, &v27 - v19, type metadata accessor for MediaCatalogSyncScheduleAction);
  sub_1000DD4A0(a2, &v20[v21], type metadata accessor for MediaCatalogSyncScheduleAction);
  sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
  sub_100012C3C(v20);
  if (!v24)
  {
    sub_1000083C0();
    sub_1000DD4A0(v20, v2, v23);
    sub_100012C3C(&v20[v21]);
    if (!v24)
    {
      (*(v8 + 32))(v13, &v20[v21], v5);
      v22 = static Date.== infix(_:_:)();
      v25 = *(v8 + 8);
      v25(v13, v5);
      v25(v2, v5);
      sub_100005868();
      return v22 & 1;
    }

    (*(v8 + 8))(v2, v5);
LABEL_9:
    sub_1000DD500(v20);
    v22 = 0;
    return v22 & 1;
  }

  sub_100012C3C(&v20[v21]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_100005868();
  v22 = 1;
  return v22 & 1;
}

void sub_1000DB00C()
{
  v2 = type metadata accessor for Date();
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = type metadata accessor for MediaCatalogSyncScheduleAction(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100002DEC();
  sub_100004B68();
  sub_1000083C0();
  sub_1000DD4A0(v0, v1, v13);
  v14 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
  if (sub_100009F34(v1, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v10, v1, v2);
    Hasher._combine(_:)(1uLL);
    sub_1000051FC();
    sub_1000DD35C(v15, v16);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v10, v2);
  }
}

uint64_t sub_1000DB1A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61727473746F6F62 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696C756465686373 && a2 == 0xEA0000000000676ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001001F6900 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001001F6920 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x526572756C696166 && a2 == 0xEC00000079727465;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x746867696C666E69 && a2 == 0xEF74706D65747441)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000DB400(char a1)
{
  result = 0x61727473746F6F62;
  switch(a1)
  {
    case 1:
      result = 0x696C756465686373;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x526572756C696166;
      break;
    case 5:
      result = 0x7465736572;
      break;
    case 6:
      result = 0x746867696C666E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DB4F0(void *a1, uint64_t a2)
{
  v82 = a2;
  v5 = sub_10007B9A4(&qword_10026C510, &qword_1001EB0E0);
  v6 = sub_100002CC4(v5);
  v80 = v7;
  v81 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_1000074D8();
  v79 = v11;
  v12 = sub_10007B9A4(&qword_10026C518, &qword_1001EB0E8);
  v13 = sub_100002CC4(v12);
  v77 = v14;
  v78 = v13;
  v16 = *(v15 + 64);
  sub_100004E78();
  __chkstk_darwin(v17);
  sub_1000074D8();
  v76 = v18;
  v19 = sub_10007B9A4(&qword_10026C520, &qword_1001EB0F0);
  v20 = sub_100002CC4(v19);
  v74 = v21;
  v75 = v20;
  v23 = *(v22 + 64);
  sub_100004E78();
  __chkstk_darwin(v24);
  sub_1000074D8();
  v73 = v25;
  v26 = sub_10007B9A4(&qword_10026C528, &qword_1001EB0F8);
  v27 = sub_100002CC4(v26);
  v71 = v28;
  v72 = v27;
  v30 = *(v29 + 64);
  sub_100004E78();
  __chkstk_darwin(v31);
  sub_1000074D8();
  v70 = v32;
  v33 = sub_10007B9A4(&qword_10026C530, &qword_1001EB100);
  v34 = sub_100002CC4(v33);
  v68 = v35;
  v69 = v34;
  v37 = *(v36 + 64);
  sub_100004E78();
  __chkstk_darwin(v38);
  sub_1000074D8();
  v67 = v39;
  v40 = sub_10007B9A4(&qword_10026C538, &qword_1001EB108);
  v41 = sub_100002CC4(v40);
  v65 = v42;
  v66 = v41;
  v44 = *(v43 + 64);
  sub_100004E78();
  __chkstk_darwin(v45);
  sub_100004B68();
  v46 = sub_10007B9A4(&qword_10026C540, &qword_1001EB110);
  sub_100002CC4(v46);
  v64 = v47;
  v49 = *(v48 + 64);
  sub_100004E78();
  __chkstk_darwin(v50);
  v52 = &v63 - v51;
  v53 = sub_10007B9A4(&qword_10026C548, &qword_1001EB118);
  sub_100002CC4(v53);
  v55 = v54;
  v57 = *(v56 + 64);
  sub_100004E78();
  __chkstk_darwin(v58);
  sub_100019BFC();
  v59 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000DD5C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v82)
  {
    case 1:
      v84 = 1;
      sub_1000DD7B8();
      sub_10000BF28();
      v61 = v65;
      v60 = v66;
      goto LABEL_9;
    case 2:
      v85 = 2;
      sub_1000DD764();
      v2 = v67;
      sub_10000BF28();
      v61 = v68;
      v60 = v69;
      goto LABEL_9;
    case 3:
      v86 = 3;
      sub_1000DD710();
      v2 = v70;
      sub_10000BF28();
      v61 = v71;
      v60 = v72;
      goto LABEL_9;
    case 4:
      v87 = 4;
      sub_1000DD6BC();
      v2 = v73;
      sub_10000BF28();
      v61 = v74;
      v60 = v75;
      goto LABEL_9;
    case 5:
      v88 = 5;
      sub_1000DD668();
      v2 = v76;
      sub_10000BF28();
      v61 = v77;
      v60 = v78;
      goto LABEL_9;
    case 6:
      v89 = 6;
      sub_1000DD614();
      v2 = v79;
      sub_10000BF28();
      v61 = v80;
      v60 = v81;
LABEL_9:
      (*(v61 + 8))(v2, v60);
      break;
    default:
      v83 = 0;
      sub_1000DD80C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v64 + 8))(v52, v46);
      break;
  }

  return (*(v55 + 8))(v3, v53);
}

uint64_t sub_1000DBA6C(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_10026C488, &qword_1001EB098);
  v101 = sub_100002CC4(v3);
  v102 = v4;
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_1000074D8();
  v107 = v8;
  v9 = sub_10007B9A4(&qword_10026C490, &qword_1001EB0A0);
  v99 = sub_100002CC4(v9);
  v100 = v10;
  v12 = *(v11 + 64);
  sub_100004E78();
  __chkstk_darwin(v13);
  sub_1000074D8();
  v106 = v14;
  v15 = sub_10007B9A4(&qword_10026C498, &qword_1001EB0A8);
  v97 = sub_100002CC4(v15);
  v98 = v16;
  v18 = *(v17 + 64);
  sub_100004E78();
  __chkstk_darwin(v19);
  sub_1000074D8();
  v104 = v20;
  v93 = sub_10007B9A4(&qword_10026C4A0, &qword_1001EB0B0);
  sub_100002CC4(v93);
  v96 = v21;
  v23 = *(v22 + 64);
  sub_100004E78();
  __chkstk_darwin(v24);
  sub_1000074D8();
  v103 = v25;
  v26 = sub_10007B9A4(&qword_10026C4A8, &qword_1001EB0B8);
  v27 = sub_100002CC4(v26);
  v94 = v28;
  v95 = v27;
  v30 = *(v29 + 64);
  sub_100004E78();
  __chkstk_darwin(v31);
  sub_1000074D8();
  v105 = v32;
  v33 = sub_10007B9A4(&qword_10026C4B0, &qword_1001EB0C0);
  v34 = sub_100002CC4(v33);
  v91 = v35;
  v92 = v34;
  v37 = *(v36 + 64);
  sub_100004E78();
  __chkstk_darwin(v38);
  v40 = &v85 - v39;
  v41 = sub_10007B9A4(&qword_10026C4B8, &qword_1001EB0C8);
  sub_100002CC4(v41);
  v90 = v42;
  v44 = *(v43 + 64);
  sub_100004E78();
  __chkstk_darwin(v45);
  sub_100019BFC();
  v46 = sub_10007B9A4(&qword_10026C4C0, &qword_1001EB0D0);
  sub_100002CC4(v46);
  v48 = v47;
  v50 = *(v49 + 64);
  sub_100004E78();
  __chkstk_darwin(v51);
  v53 = &v85 - v52;
  v55 = a1[3];
  v54 = a1[4];
  v108 = a1;
  sub_100003CA8(a1, v55);
  sub_1000DD5C0();
  v56 = v109;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v56)
  {
    return sub_100002C00(v108);
  }

  v88 = v1;
  v87 = v41;
  v89 = v40;
  v57 = v105;
  v58 = v106;
  v59 = v107;
  v109 = v48;
  v60 = KeyedDecodingContainer.allKeys.getter();
  result = sub_10018BB1C(v60, 0);
  if (v63 == v64 >> 1)
  {
LABEL_8:
    v71 = type metadata accessor for DecodingError();
    swift_allocError();
    v73 = v72;
    v74 = *(sub_10007B9A4(&qword_10026C4D0, &qword_1001EB0D8) + 48);
    *v73 = &type metadata for MediaCatalogSyncReason;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v71 - 8) + 104))(v73, enum case for DecodingError.typeMismatch(_:), v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v109 + 8))(v53, v46);
    return sub_100002C00(v108);
  }

  v86 = v46;
  if (v63 >= (v64 >> 1))
  {
    __break(1u);
    return result;
  }

  v85 = *(v62 + v63);
  sub_10018BE1C(v63 + 1, v64 >> 1, result, v62, v63, v64);
  v66 = v65;
  v68 = v67;
  swift_unknownObjectRelease();
  if (v66 != v68 >> 1)
  {
    v46 = v86;
    goto LABEL_8;
  }

  switch(v85)
  {
    case 1:
      v111 = 1;
      sub_1000DD7B8();
      v57 = v89;
      sub_1000030E8();
      swift_unknownObjectRelease();
      v79 = v91;
      v78 = v92;
      goto LABEL_14;
    case 2:
      v112 = 2;
      sub_1000DD764();
      sub_1000030E8();
      swift_unknownObjectRelease();
      v79 = v94;
      v78 = v95;
LABEL_14:
      (*(v79 + 8))(v57, v78);
      goto LABEL_18;
    case 3:
      v113 = 3;
      sub_1000DD710();
      v80 = v103;
      sub_1000030E8();
      swift_unknownObjectRelease();
      (*(v96 + 8))(v80, v93);
      goto LABEL_18;
    case 4:
      v114 = 4;
      sub_1000DD6BC();
      v75 = v104;
      sub_1000030E8();
      swift_unknownObjectRelease();
      v76 = v97;
      v77 = v98;
      goto LABEL_17;
    case 5:
      v115 = 5;
      sub_1000DD668();
      v81 = v86;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v100 + 8))(v58, v99);
      v82 = sub_10000A3D0();
      v84 = v81;
      break;
    case 6:
      v116 = 6;
      sub_1000DD614();
      v75 = v59;
      sub_1000030E8();
      swift_unknownObjectRelease();
      v76 = v101;
      v77 = v102;
LABEL_17:
      (*(v77 + 8))(v75, v76);
LABEL_18:
      v82 = sub_10000A3D0();
      v84 = v59;
      break;
    default:
      v110 = 0;
      sub_1000DD80C();
      v69 = v88;
      v70 = v86;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v90 + 8))(v69, v87);
      v82 = sub_10000A3D0();
      v84 = v70;
      break;
  }

  v83(v82, v84);
  sub_100002C00(v108);
  return v85;
}

uint64_t sub_1000DC2F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1000DC410(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x636E79537478656ELL;
  }

  return 0x6E6F73616572;
}

BOOL sub_1000DC468(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = 0xE400000000000000;
  v9 = 1936748641;
  if (v3 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7373656E746966;
  }

  if (v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = 0xE400000000000000;
  v13 = 1936748641;
  if (*a2 != 1)
  {
    v13 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7373656E746966;
  }

  if (*a2)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = v4 == v6 && v5 == v7;
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v20 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
    v21 = *(v20 + 20);
    if (static Date.== infix(_:_:)())
    {
      return a1[*(v20 + 24)] == *(a2 + *(v20 + 24));
    }
  }

  return 0;
}

uint64_t sub_1000DC5F0(void *a1)
{
  v4 = v1;
  v6 = sub_10007B9A4(&qword_10026C470, &qword_1001EB088);
  sub_100002CC4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100004E78();
  __chkstk_darwin(v11);
  sub_100004B68();
  v12 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000DD3A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v4;
  v20 = *(v4 + 1);
  v21 = *(v4 + 2);
  sub_1000D3CA4();
  sub_10000ABB4();
  if (!v2)
  {
    v13 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
    v14 = *(v13 + 20);
    type metadata accessor for Date();
    sub_1000051FC();
    sub_1000DD35C(v15, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v4[*(v13 + 24)];
    sub_1000DD44C();
    sub_10000ABB4();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_1000DC7C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v1 + 2);
  String.hash(into:)();

  String.hash(into:)();
  v5 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
  v6 = *(v5 + 20);
  type metadata accessor for Date();
  sub_1000051FC();
  sub_1000DD35C(v7, v8);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(v1[*(v5 + 24)]);
}

Swift::Int sub_1000DC8D4(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

uint64_t sub_1000DC91C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = sub_100002CC4(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = sub_10007B9A4(&qword_10026C458, &qword_1001EB080);
  sub_100002CC4(v12);
  v14 = *(v13 + 64);
  sub_100004E78();
  __chkstk_darwin(v15);
  sub_100019BFC();
  v16 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
  v17 = sub_100002DDC(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100002DEC();
  v22 = v21 - v20;
  v23 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000DD3A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002C00(a1);
  }

  sub_1000D3C08();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v22 = v31;
  *(v22 + 8) = v32;
  *(v22 + 16) = v33;
  sub_1000051FC();
  sub_1000DD35C(v24, v25);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 32))(v22 + *(v16 + 20), v11, v4);
  sub_1000DD3F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = sub_1000063BC();
  v27(v26);
  *(v22 + *(v16 + 24)) = 1;
  sub_1000DD4A0(v22, a2, type metadata accessor for MediaCatalogSyncScheduleModel);
  sub_100002C00(0);
  return sub_1000DD568(v22, type metadata accessor for MediaCatalogSyncScheduleModel);
}

uint64_t sub_1000DCD04(uint64_t a1)
{
  v2 = sub_1000DD80C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCD40(uint64_t a1)
{
  v2 = sub_1000DD80C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DB1A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DCDAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DB3F8();
  *a1 = result;
  return result;
}

uint64_t sub_1000DCDD4(uint64_t a1)
{
  v2 = sub_1000DD5C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCE10(uint64_t a1)
{
  v2 = sub_1000DD5C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCE4C(uint64_t a1)
{
  v2 = sub_1000DD6BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCE88(uint64_t a1)
{
  v2 = sub_1000DD6BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCEC4(uint64_t a1)
{
  v2 = sub_1000DD614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCF00(uint64_t a1)
{
  v2 = sub_1000DD614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCF3C(uint64_t a1)
{
  v2 = sub_1000DD764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCF78(uint64_t a1)
{
  v2 = sub_1000DD764();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCFB4(uint64_t a1)
{
  v2 = sub_1000DD668();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCFF0(uint64_t a1)
{
  v2 = sub_1000DD668();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DD02C(uint64_t a1)
{
  v2 = sub_1000DD710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DD068(uint64_t a1)
{
  v2 = sub_1000DD710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DD0A4(uint64_t a1)
{
  v2 = sub_1000DD7B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DD0E0(uint64_t a1)
{
  v2 = sub_1000DD7B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DD11C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DBA6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000DD1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DC2F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DD1DC(uint64_t a1)
{
  v2 = sub_1000DD3A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DD218(uint64_t a1)
{
  v2 = sub_1000DD3A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000DD29C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1000DD35C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000DD3A4()
{
  result = qword_10026C460;
  if (!qword_10026C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C460);
  }

  return result;
}

unint64_t sub_1000DD3F8()
{
  result = qword_10026C468;
  if (!qword_10026C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C468);
  }

  return result;
}

unint64_t sub_1000DD44C()
{
  result = qword_10026C478;
  if (!qword_10026C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C478);
  }

  return result;
}

uint64_t sub_1000DD4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100002DDC(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000DD500(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026C480, &qword_1001EB090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DD568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002DDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1000DD5C0()
{
  result = qword_10026C4C8;
  if (!qword_10026C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4C8);
  }

  return result;
}

unint64_t sub_1000DD614()
{
  result = qword_10026C4D8;
  if (!qword_10026C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4D8);
  }

  return result;
}

unint64_t sub_1000DD668()
{
  result = qword_10026C4E0;
  if (!qword_10026C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4E0);
  }

  return result;
}

unint64_t sub_1000DD6BC()
{
  result = qword_10026C4E8;
  if (!qword_10026C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4E8);
  }

  return result;
}

unint64_t sub_1000DD710()
{
  result = qword_10026C4F0;
  if (!qword_10026C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4F0);
  }

  return result;
}

unint64_t sub_1000DD764()
{
  result = qword_10026C4F8;
  if (!qword_10026C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4F8);
  }

  return result;
}

unint64_t sub_1000DD7B8()
{
  result = qword_10026C500;
  if (!qword_10026C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C500);
  }

  return result;
}

unint64_t sub_1000DD80C()
{
  result = qword_10026C508;
  if (!qword_10026C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C508);
  }

  return result;
}

uint64_t sub_1000DD860(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1000DD8E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncScheduleModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000DDB14()
{
  result = qword_10026C550;
  if (!qword_10026C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C550);
  }

  return result;
}

unint64_t sub_1000DDB6C()
{
  result = qword_10026C558;
  if (!qword_10026C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C558);
  }

  return result;
}

unint64_t sub_1000DDBC4()
{
  result = qword_10026C560;
  if (!qword_10026C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C560);
  }

  return result;
}

unint64_t sub_1000DDC1C()
{
  result = qword_10026C568;
  if (!qword_10026C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C568);
  }

  return result;
}

unint64_t sub_1000DDC74()
{
  result = qword_10026C570;
  if (!qword_10026C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C570);
  }

  return result;
}

unint64_t sub_1000DDCCC()
{
  result = qword_10026C578;
  if (!qword_10026C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C578);
  }

  return result;
}

unint64_t sub_1000DDD24()
{
  result = qword_10026C580;
  if (!qword_10026C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C580);
  }

  return result;
}

unint64_t sub_1000DDD7C()
{
  result = qword_10026C588;
  if (!qword_10026C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C588);
  }

  return result;
}

unint64_t sub_1000DDDD4()
{
  result = qword_10026C590;
  if (!qword_10026C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C590);
  }

  return result;
}

unint64_t sub_1000DDE2C()
{
  result = qword_10026C598;
  if (!qword_10026C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C598);
  }

  return result;
}

unint64_t sub_1000DDE84()
{
  result = qword_10026C5A0;
  if (!qword_10026C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5A0);
  }

  return result;
}

unint64_t sub_1000DDEDC()
{
  result = qword_10026C5A8;
  if (!qword_10026C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5A8);
  }

  return result;
}

unint64_t sub_1000DDF34()
{
  result = qword_10026C5B0;
  if (!qword_10026C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5B0);
  }

  return result;
}

unint64_t sub_1000DDF8C()
{
  result = qword_10026C5B8;
  if (!qword_10026C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5B8);
  }

  return result;
}

unint64_t sub_1000DDFE4()
{
  result = qword_10026C5C0;
  if (!qword_10026C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5C0);
  }

  return result;
}

unint64_t sub_1000DE03C()
{
  result = qword_10026C5C8;
  if (!qword_10026C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5C8);
  }

  return result;
}

unint64_t sub_1000DE094()
{
  result = qword_10026C5D0;
  if (!qword_10026C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5D0);
  }

  return result;
}

unint64_t sub_1000DE0EC()
{
  result = qword_10026C5D8;
  if (!qword_10026C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5D8);
  }

  return result;
}

unint64_t sub_1000DE144()
{
  result = qword_10026C5E0;
  if (!qword_10026C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5E0);
  }

  return result;
}

unint64_t sub_1000DE19C()
{
  result = qword_10026C5E8;
  if (!qword_10026C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5E8);
  }

  return result;
}

unint64_t sub_1000DE200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(32);

  v6._countAndFlagsBits = sub_1000D0004(a1, a2, a3);
  String.append(_:)(v6);

  return 0xD00000000000001ELL;
}

uint64_t sub_1000DE298()
{
  sub_10001ECE0();
  v0 = StringProtocol.components<A>(separatedBy:)();
  sub_1000DE338(v0);

  return sub_1000D00A8();
}

uint64_t sub_1000DE338(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_1000DE3A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047342 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x636E79537478656ELL && a2 == 0xED00006E656B6F54;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656863537478656ELL && a2 == 0xEF744164656C7564;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552646C756F6873 && a2 == 0xEB00000000746573;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001001F6940 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001001F6960 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x506465726564726FLL && a2 == 0xEF7473694C656761)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000DE6A8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1954047342;
      break;
    case 2:
      result = 0x636E79537478656ELL;
      break;
    case 3:
      result = 0x656863537478656ELL;
      break;
    case 4:
      result = 0x6552646C756F6873;
      break;
    case 5:
      result = 0x4274736575716572;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x506465726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DE7E8(unsigned __int8 *a1, void *a2)
{
  v82 = type metadata accessor for Date();
  v4 = sub_100002CC4(v82);
  v80 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v77[1] = v9 - v8;
  v10 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_1000056E8();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v77 - v16;
  v81 = sub_10007B9A4(&qword_10026C700, &qword_1001EB958);
  v18 = sub_100002DDC(v81);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_1000056E8();
  v78 = v21 - v22;
  __chkstk_darwin(v23);
  v25 = *a1;
  v27 = *(a1 + 1);
  v26 = *(a1 + 2);
  v28 = *a2;
  v29 = a2[1];
  v30 = a2[2];
  if (*a1)
  {
    if (v25 == 1)
    {
      v31 = 1936748641;
    }

    else
    {
      v31 = 0x6E776F6E6B6E75;
    }

    if (v25 == 1)
    {
      v32 = 0xE400000000000000;
    }

    else
    {
      v32 = 0xE700000000000000;
    }
  }

  else
  {
    v32 = 0xE700000000000000;
    v31 = 0x7373656E746966;
  }

  v79 = v17;
  v83 = (v77 - v24);
  v33 = 0xE400000000000000;
  v34 = 1936748641;
  if (v28 != 1)
  {
    v34 = 0x6E776F6E6B6E75;
    v33 = 0xE700000000000000;
  }

  if (v28)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0x7373656E746966;
  }

  if (v28)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0xE700000000000000;
  }

  v37 = v14;
  v38 = v31 == v35 && v32 == v36;
  if (v38)
  {
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v40 = v27 == v29 && v26 == v30;
  if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_53;
  }

  v41 = *(a1 + 4);
  v42 = a2[4];
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_53;
    }

    v43 = v37;
    v44 = *(a1 + 3) == a2[3] && v41 == v42;
    if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v43 = v37;
    if (v42)
    {
      goto LABEL_53;
    }
  }

  v45 = *(a1 + 6);
  v46 = a2[6];
  if (!v45)
  {
    v47 = v83;
    if (!v46)
    {
      goto LABEL_47;
    }

LABEL_53:
    v53 = 0;
    return v53 & 1;
  }

  v47 = v83;
  if (!v46)
  {
    goto LABEL_53;
  }

  v48 = *(a1 + 5) == a2[5] && v45 == v46;
  if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_47:
  v49 = type metadata accessor for MediaCatalogSyncState();
  v50 = v49[7];
  sub_100012C5C();
  sub_1000652F0(a2 + v50, v47 + v32);
  v51 = v82;
  if (sub_100009F34(v47, 1, v82) == 1)
  {
    if (sub_100009F34(v47 + v32, 1, v51) != 1)
    {
      goto LABEL_52;
    }

    sub_10000A00C(v47, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v52 = v79;
    sub_1000652F0(v47, v79);
    if (sub_100009F34(v47 + v32, 1, v51) == 1)
    {
      (*(v80 + 8))(v52, v51);
      goto LABEL_52;
    }

    v83 = v49;
    v55 = v80;
    v56 = sub_10000ABD8(v80);
    v57(v56);
    sub_100006C3C();
    sub_1000DFE80(v58, v59);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v60 = *(v55 + 8);
    v60(v36, v51);
    v60(v52, v51);
    v49 = v83;
    sub_10000A00C(v47, &unk_100271EA0, &qword_1001E77F0);
    if ((v32 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v61 = v49[8];
  v62 = a1[v61];
  v63 = *(a2 + v61);
  if (v62 == 2)
  {
    v47 = v78;
    if (v63 != 2)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

  v53 = 0;
  v47 = v78;
  if (v63 != 2 && ((v63 ^ v62) & 1) == 0)
  {
LABEL_61:
    v64 = v49[9];
    sub_100012C5C();
    sub_1000652F0(a2 + v64, v47 + v32);
    v65 = v82;
    if (sub_100009F34(v47, 1, v82) == 1)
    {
      sub_1000063CC(v47 + v32);
      if (!v38)
      {
        goto LABEL_52;
      }

      sub_10000A00C(v47, &unk_100271EA0, &qword_1001E77F0);
LABEL_69:
      v73 = v49[10];
      if ((static Date.== infix(_:_:)() & 1) != 0 && *&a1[v49[11]] == *(a2 + v49[11]))
      {
        v74 = v49[12];
        v75 = *&a1[v74];
        v76 = *(a2 + v74);
        sub_1001C450C();
        return v53 & 1;
      }

      goto LABEL_53;
    }

    sub_1000652F0(v47, v43);
    sub_1000063CC(v47 + v32);
    if (!v38)
    {
      v66 = v80;
      v67 = sub_10000ABD8(v80);
      v68(v67);
      sub_100006C3C();
      sub_1000DFE80(v69, v70);
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = *(v66 + 8);
      v72(v36, v65);
      v72(v43, v65);
      sub_10000A00C(v47, &unk_100271EA0, &qword_1001E77F0);
      if ((v71 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

    (*(v80 + 8))(v43, v65);
LABEL_52:
    sub_10000A00C(v47, &qword_10026C700, &qword_1001EB958);
    goto LABEL_53;
  }

  return v53 & 1;
}

uint64_t sub_1000DEE34(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_10026C6E8, &qword_1001EB950);
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000DFCD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  LOBYTE(v30) = *v3;
  v31 = v14;
  v32 = v15;
  v33 = 0;
  sub_1000D3CA4();
  sub_1000083A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = *(v3 + 24);
    v17 = *(v3 + 32);
    LOBYTE(v30) = 1;
    sub_1000083A4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 40);
    v19 = *(v3 + 48);
    LOBYTE(v30) = 2;
    sub_1000083A4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = type metadata accessor for MediaCatalogSyncState();
    v21 = v20[7];
    LOBYTE(v30) = 3;
    type metadata accessor for Date();
    sub_100006C3C();
    sub_1000DFE80(v22, v23);
    sub_100003110();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = *(v3 + v20[8]);
    sub_100019C0C(4);
    sub_1000083A4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v20[9];
    LOBYTE(v30) = 5;
    sub_100003110();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = v20[10];
    LOBYTE(v30) = 6;
    sub_100003110();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v3 + v20[11]);
    sub_100019C0C(7);
    sub_1000083A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v3 + v20[12]);
    v33 = 8;
    sub_10007B9A4(&qword_10026C6D0, &qword_1001EB948);
    sub_1000DFDE4(&qword_10026C6F0, &qword_10026C6F8);
    sub_1000083A4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

void sub_1000DF144(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000056E8();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  v21 = *v1;
  v22 = *(v1 + 1);
  v23 = v2[2];
  String.hash(into:)();

  String.hash(into:)();
  if (v2[4])
  {
    v24 = v2[3];
    sub_100007F94();
    String.hash(into:)();
  }

  else
  {
    sub_10000AF24();
  }

  if (v2[6])
  {
    v25 = v2[5];
    sub_100007F94();
    String.hash(into:)();
  }

  else
  {
    sub_10000AF24();
  }

  v26 = type metadata accessor for MediaCatalogSyncState();
  sub_1000652F0(v2 + v26[7], v20);
  sub_1000063CC(v20);
  if (v27)
  {
    sub_10000AF24();
  }

  else
  {
    (*(v7 + 32))(v12, v20, v4);
    sub_100007F94();
    sub_100006C3C();
    sub_1000DFE80(v28, v29);
    sub_100004C48();
    (*(v7 + 8))(v12, v4);
  }

  v30 = *(v2 + v26[8]);
  if (v30 == 2)
  {
    v31 = 0;
  }

  else
  {
    sub_100007F94();
    v31 = v30 & 1;
  }

  Hasher._combine(_:)(v31);
  sub_1000652F0(v2 + v26[9], v17);
  sub_1000063CC(v17);
  if (v27)
  {
    sub_10000AF24();
  }

  else
  {
    (*(v7 + 32))(v12, v17, v4);
    sub_100007F94();
    sub_100006C3C();
    sub_1000DFE80(v32, v33);
    sub_100004C48();
    (*(v7 + 8))(v12, v4);
  }

  v34 = v26[10];
  sub_100006C3C();
  sub_1000DFE80(v35, v36);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + v26[11]));
  sub_10007A87C(a1, *(v2 + v26[12]));
}

Swift::Int sub_1000DF4C8()
{
  Hasher.init(_seed:)();
  sub_1000DF144(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000DF508@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for Date();
  v5 = sub_100002CC4(v4);
  v49 = v6;
  v50 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_1000056E8();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = sub_10007B9A4(&qword_10026C6C0, &qword_1001EB940);
  v21 = sub_100002CC4(v20);
  v47 = v22;
  v48 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  v53 = type metadata accessor for MediaCatalogSyncState();
  v25 = sub_100002DDC(v53);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_100002DEC();
  v51 = (v29 - v28);
  v52 = a1;
  v30 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000DFCD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002C00(v52);
  }

  v44 = v11;
  v45 = v16;
  v57 = 0;
  sub_1000D3C08();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v55;
  v32 = v56;
  v33 = v51;
  *v51 = v54;
  v33[1] = v31;
  v33[2] = v32;
  sub_10000B87C(1);
  v33[3] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33[4] = v34;
  sub_10000B87C(2);
  v33[5] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33[6] = v35;
  LOBYTE(v54) = 3;
  sub_100006C3C();
  sub_1000DFE80(v36, v37);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v38 = v53;
  sub_10003FD2C(v19, v33 + v53[7]);
  sub_10000B87C(4);
  *(v33 + v38[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100019C0C(5);
  v39 = v50;
  sub_10000A3DC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10003FD2C(v45, v33 + v38[9]);
  sub_100019C0C(6);
  sub_10000A3DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v49 + 32))(v33 + v38[10], v44, v39);
  sub_10000B87C(7);
  *(v33 + v38[11]) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B9A4(&qword_10026C6D0, &qword_1001EB948);
  v57 = 8;
  sub_1000DFDE4(&qword_10026C6D8, &qword_10026C6E0);
  sub_10000A3DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = sub_10000BF48();
  v41(v40);
  *(v33 + v38[12]) = v54;
  sub_1000DFD24(v33, v46);
  sub_100002C00(v52);
  return sub_1000DFD88(v33);
}

uint64_t sub_1000DFB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DE3A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DFB70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DE6A0();
  *a1 = result;
  return result;
}

uint64_t sub_1000DFB98(uint64_t a1)
{
  v2 = sub_1000DFCD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DFBD4(uint64_t a1)
{
  v2 = sub_1000DFCD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000DFC18()
{
  Hasher.init(_seed:)();
  sub_1000DF144(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000DFCD0()
{
  result = qword_10026C6C8;
  if (!qword_10026C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C6C8);
  }

  return result;
}

uint64_t sub_1000DFD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DFD88(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DFDE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_10026C6D0, &qword_1001EB948);
    sub_1000DFE80(a2, type metadata accessor for MediaCatalogSyncPageMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DFE80(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000DFFA8()
{
  result = qword_10026C710;
  if (!qword_10026C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C710);
  }

  return result;
}

unint64_t sub_1000E0000()
{
  result = qword_10026C718;
  if (!qword_10026C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C718);
  }

  return result;
}

unint64_t sub_1000E0058()
{
  result = qword_10026C720;
  if (!qword_10026C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C720);
  }

  return result;
}

BOOL sub_1000E00AC(unsigned __int8 *a1, uint64_t a2)
{
  v5 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000BF58();
  v9 = type metadata accessor for Date();
  v10 = sub_100002CC4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1000CEE1C(a2, v25);
  if (*(&v25[0] + 1))
  {
    v18 = v26;
    v19 = v27;
    sub_10000A00C(v25, &qword_100269AE8, &qword_1001E94D0);
    if (v19)
    {
      v20 = 120.0;
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    v20 = 120.0;
  }

  v21 = type metadata accessor for MediaCatalogSyncState();
  sub_1000E0BFC(&a1[*(v21 + 36)], v2, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v2, 1, v9) == 1)
  {
    sub_10000A00C(v2, &unk_100271EA0, &qword_1001E77F0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v16, v2, v9);
    Date.timeIntervalSince(_:)();
    v24 = v23;
    (*(v12 + 8))(v16, v9);
    return v20 >= v24;
  }
}

uint64_t sub_1000E02C4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v9 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = type metadata accessor for MediaCatalogSyncState();
  sub_1000E0BFC(&a1[v15[9]], v14, &unk_100271EA0, &qword_1001E77F0);
  v16 = type metadata accessor for Date();
  v17 = sub_100009F34(v14, 1, v16);
  sub_10000A00C(v14, &unk_100271EA0, &qword_1001E77F0);
  if (v17 == 1)
  {
    LODWORD(v44) = *a1;
    v18 = *(a1 + 1);
    v19 = *(a1 + 2);
    v20 = *(a1 + 4);
    v42 = *(a1 + 3);
    v43 = v18;
    v21 = *(a1 + 5);
    v22 = *(a1 + 6);
    v40 = v20;
    v41 = v21;
    sub_1000E0BFC(&a1[v15[7]], a6 + v15[7], &unk_100271EA0, &qword_1001E77F0);
    v23 = v15[9];
    v24 = a1[v15[8]];
    v25 = *(*(v16 - 8) + 16);
    v25(a6 + v23, v45, v16);
    sub_10000A7C0(a6 + v23, 0, 1, v16);
    v25(a6 + v15[10], &a1[v15[10]], v16);
    v26 = *&a1[v15[11]];
    v27 = *&a1[v15[12]];
    *a6 = v44;
    v28 = v42;
    *(a6 + 8) = v43;
    *(a6 + 16) = v19;
    v29 = v40;
    *(a6 + 24) = v28;
    *(a6 + 32) = v29;
    *(a6 + 40) = v41;
    *(a6 + 48) = v22;
    *(a6 + v15[8]) = v24;
    sub_10000312C(v26);
  }

  else
  {
    if (sub_1000E00AC(a1, a2))
    {
      sub_100006C54();
      return sub_1000E0B9C(a1, a6, v30);
    }

    LODWORD(v45) = *a1;
    v33 = *(a1 + 1);
    v32 = *(a1 + 2);
    v35 = *(a1 + 3);
    v34 = *(a1 + 4);
    v36 = *(a1 + 6);
    v44 = *(a1 + 5);
    sub_1000E0BFC(&a1[v15[7]], a6 + v15[7], &unk_100271EA0, &qword_1001E77F0);
    v37 = a1[v15[8]];
    sub_10000A7C0(a6 + v15[9], 1, 1, v16);
    (*(*(v16 - 8) + 16))(a6 + v15[10], &a1[v15[10]], v16);
    v38 = *&a1[v15[11]];
    v39 = *&a1[v15[12]];
    *a6 = v45;
    *(a6 + 8) = v33;
    *(a6 + 16) = v32;
    *(a6 + 24) = v35;
    *(a6 + 32) = v34;
    *(a6 + 40) = v44;
    *(a6 + 48) = v36;
    *(a6 + v15[8]) = v37;
    sub_10000312C(v38);
  }
}

uint64_t sub_1000E05D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  v8 = sub_100003D10(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000BF58();
  v11 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v12 = sub_100002CC4(v11);
  v69 = v13;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v12);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  sub_1000E0BFC(a1, v3, &qword_100269AB8, &qword_1001E6680);
  v67 = v11;
  if (sub_100009F34(v3, 1, v11) == 1)
  {
    sub_10000A00C(v3, &qword_100269AB8, &qword_1001E6680);
LABEL_31:
    sub_100006C54();
    return sub_1000E0B9C(a2, a3, v38);
  }

  v64 = a3;
  sub_1000E0B38(v3, v20);
  v62 = type metadata accessor for MediaCatalogSyncState();
  v63 = a2;
  v21 = *(a2 + *(v62 + 48));
  v22 = v20;
  v68 = *(v21 + 16);
  if (!v68)
  {
LABEL_30:
    sub_10007AD48(v22);
    a2 = v63;
    a3 = v64;
    goto LABEL_31;
  }

  v23 = 0;
  v24 = v21 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
  v65 = v21;
  v66 = v22;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_1000E0B9C(v24 + v69[9] * v23, v18, type metadata accessor for MediaCatalogSyncPageMetadata);
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_29;
    }

    v25 = *(v67 + 20);
    v26 = &v18[v25];
    if (v18[v25])
    {
      if (v18[v25] == 1)
      {
        v27 = 0xE400000000000000;
        v28 = 1936748641;
      }

      else
      {
        v27 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v27 = 0xE700000000000000;
      v28 = 0x7373656E746966;
    }

    v29 = v22 + v25;
    if (*v29)
    {
      if (*v29 == 1)
      {
        v30 = 0xE400000000000000;
        v31 = 1936748641;
      }

      else
      {
        v30 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v30 = 0xE700000000000000;
      v31 = 0x7373656E746966;
    }

    v33 = *(v26 + 1);
    v32 = *(v26 + 2);
    v34 = *(v29 + 8);
    v35 = *(v29 + 16);
    if (v28 == v31 && v27 == v30)
    {
      break;
    }

    a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = v65;
    v22 = v66;
    if (a2)
    {
      goto LABEL_24;
    }

LABEL_29:
    sub_10007AD48(v18);
    if (v68 == ++v23)
    {
      goto LABEL_30;
    }
  }

  v21 = v65;
  v22 = v66;
LABEL_24:
  v37 = v33 == v34 && v32 == v35;
  if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_10007AD48(v18);
  v40 = *(v21 + 16);
  if (v23 >= (v40 - 1))
  {
    v45 = _swiftEmptyArrayStorage;
    v46 = v63;
    goto LABEL_45;
  }

  if (v40 <= v23)
  {
    goto LABEL_47;
  }

  v22 = sub_1000E0C5C(v23 + 1, v40, v21);
  a2 = v41;
  v18 = v42;
  v24 = v43;
  if ((v43 & 1) == 0)
  {
LABEL_36:
    sub_10008A19C(v22, a2, v18, v24);
    v45 = v44;
    v46 = v63;
    goto LABEL_44;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = _swiftEmptyArrayStorage;
  }

  v48 = v47[2];

  if (__OFSUB__(v24 >> 1, v18))
  {
    goto LABEL_48;
  }

  if (v48 != (v24 >> 1) - v18)
  {
LABEL_49:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v46 = v63;
  if (v45)
  {
    goto LABEL_45;
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_44:
  swift_unknownObjectRelease();
LABEL_45:
  v69 = v45;
  sub_10007AD48(v66);
  LODWORD(v68) = *v46;
  v49 = v46[1];
  v50 = v46[2];
  v51 = v46[4];
  v66 = v46[3];
  v67 = v49;
  v53 = v46[5];
  v52 = v46[6];
  v54 = v62;
  v55 = v64;
  sub_1000E0BFC(v46 + *(v62 + 28), v64 + *(v62 + 28), &unk_100271EA0, &qword_1001E77F0);
  v56 = *(v46 + v54[8]);
  sub_1000E0BFC(v46 + v54[9], v55 + v54[9], &unk_100271EA0, &qword_1001E77F0);
  v57 = v54[10];
  v58 = type metadata accessor for Date();
  sub_100002DDC(v58);
  (*(v59 + 16))(v55 + v57, v46 + v57);
  v60 = *(v46 + v54[11]);
  *v55 = v68;
  v61 = v66;
  *(v55 + 8) = v67;
  *(v55 + 16) = v50;
  *(v55 + 24) = v61;
  *(v55 + 32) = v51;
  *(v55 + 40) = v53;
  *(v55 + 48) = v52;
  *(v55 + v54[8]) = v56;
  *(v55 + v54[11]) = v60;
  *(v55 + v54[12]) = v69;
}

uint64_t sub_1000E0B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncPageMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E0B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100002DDC(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000E0BFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10007B9A4(a3, a4);
  sub_100002DDC(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1000E0C5C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = type metadata accessor for MediaCatalogSyncPageMetadata();
    sub_100003D10(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000E0D00()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v9 = v8 - v7;
  v27 = type metadata accessor for URL();
  v10 = sub_100002CC4(v27);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v17 = v16 - v15;
  v18 = v0[4];
  sub_100003CA8(v0, v0[3]);
  sub_1000E1364(v17);
  sub_100003140();
  (*(v4 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_10001ECE0();
  URL.append<A>(component:directoryHint:)();
  (*(v4 + 8))(v9, v1);
  v19 = dispatch thunk of FileStore.contents(at:)();
  if (v28)
  {
    return (*(v12 + 8))(v17, v27);
  }

  v22 = v19;
  v23 = v20;
  (*(v12 + 8))(v17, v27);
  v24 = type metadata accessor for PropertyListDecoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for MediaCatalogSyncState();
  sub_1000E159C(&qword_10026C730);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1000253FC(v22, v23);
}

uint64_t sub_1000E0F78()
{
  v1 = type metadata accessor for FileStoreProtectionType();
  v2 = sub_100002CC4(v1);
  v56 = v3;
  v57 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v58 = v7 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = sub_100002CC4(v8);
  v55 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v15 = v14 - v13;
  v16 = type metadata accessor for URL();
  v17 = sub_100002CC4(v16);
  v59 = v18;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v17);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v47 - v24;
  v26 = type metadata accessor for PropertyListEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for MediaCatalogSyncState();
  sub_1000E159C(&qword_10026C728);
  v29 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v31 = v30;

  if (!v0)
  {
    v53 = v29;
    v54 = v31;
    v51 = v15;
    v52 = v23;
    v33 = v8;
    v34 = v58;
    v35 = v60[4];
    sub_100003CA8(v60, v60[3]);
    sub_1000E1364(v25);
    dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
    v36 = *(v59 + 1);
    v50 = v16;
    v59 = v36;
    v36(v25, v16);
    v37 = v60[4];
    v48 = v60[3];
    v49 = v37;
    v47[1] = sub_100003CA8(v60, v48);
    v38 = v52;
    sub_1000E1364(v52);
    sub_100003140();
    v39 = v55;
    v40 = v51;
    (*(v55 + 104))(v51, enum case for URL.DirectoryHint.inferFromPath(_:), v33);
    sub_10001ECE0();
    URL.append<A>(component:directoryHint:)();
    (*(v39 + 8))(v40, v33);
    v41 = v56;
    v42 = v34;
    v43 = v38;
    v44 = v57;
    (*(v56 + 104))(v42, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v57);
    v46 = v53;
    v45 = v54;
    dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
    sub_1000253FC(v46, v45);
    (*(v41 + 8))(v42, v44);
    return v59(v43, v50);
  }

  return result;
}

uint64_t sub_1000E1364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = type metadata accessor for MediaCatalogSyncStateStoreCore();
  v14 = *(v13 + 20);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(a1, v2 + v14, v15);
  v16 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v17 = *(v7 + 104);
  v17(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10001ECE0();
  URL.append<A>(component:directoryHint:)();
  v18 = *(v7 + 8);
  v18(v12, v4);
  sub_1000D0004(*(v20 + *(v13 + 24)), *(v20 + *(v13 + 24) + 8), *(v20 + *(v13 + 24) + 16));
  v17(v12, v16, v4);
  URL.append<A>(component:directoryHint:)();
  v18(v12, v4);
}

uint64_t type metadata accessor for MediaCatalogSyncStateStoreCore()
{
  result = qword_10026C790;
  if (!qword_10026C790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E159C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaCatalogSyncState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1000E1608(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000E1624(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E1664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000E16C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244520, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E1710(char a1)
{
  if (!a1)
  {
    return 0x7373656E746966;
  }

  if (a1 == 1)
  {
    return 1936748641;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1000E1760(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1000E2D98();
}

unint64_t sub_1000E176C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E16C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000E179C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E1710(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncTopic(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000E18B8()
{
  result = qword_10026C7D0;
  if (!qword_10026C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C7D0);
  }

  return result;
}

unint64_t sub_1000E19C4()
{
  result = qword_10026C7D8;
  if (!qword_10026C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C7D8);
  }

  return result;
}

uint64_t sub_1000E1A18(uint64_t a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_100268718 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = *(type metadata accessor for LogInterpolation() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v35 = &type metadata for EngagementScheduleRunner;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v34);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001001F6980;
  v9._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v10 = type metadata accessor for ScheduleInfo(0);
  v35 = v10;
  v11 = sub_100017E64(v34);
  sub_1000A9424(a1, v11);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v34);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13);

  v14 = (a1 + *(v10 + 20));
  v15 = type metadata accessor for ScheduleInfo.Metadata(0);
  if (v14[*(v15 + 52)])
  {
    v16 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
    sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001E61B0;
    v18 = *v14;
    switch(*v14)
    {
      case 1:
        sub_100003164();
        break;
      case 2:
        sub_100005214();
        break;
      case 3:
        sub_100006C6C();
        break;
      default:
        break;
    }

    *(v17 + 32) = 0x636974796C616E61;
    *(v17 + 40) = 0xE900000000000073;
    sub_1000E2000(v17, v16);
    if (*(*a1 + 16))
    {
      v23 = *(*a1 + 32);

      v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v24.super.isa = 0;
    }

    [v16 setContext:v24.super.isa];

    if (qword_100268670 != -1)
    {
      swift_once();
    }

    sub_1000627E8();
  }

  else
  {
    v19 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
    v20 = [objc_opt_self() currentProcess];
    [v19 setClientInfo:v20];

    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001E8AB0;
    v18 = *v14;
    v22 = v21;
    switch(*v14)
    {
      case 1:
        sub_100003164();
        break;
      case 2:
        sub_100005214();
        break;
      case 3:
        sub_100006C6C();
        break;
      default:
        break;
    }

    sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    *(v22 + 32) = sub_100092378();
    sub_1000F43B4(v22, v19);
    v25 = *a1;
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v19 setEvents:isa];

    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v27 = sub_10002411C();
    v28 = [objc_allocWithZone(AMSEngagement) initWithBag:v27];

    v29 = [v28 _enqueue:v19];
  }

  v30 = &v14[*(v15 + 44)];
  v31 = *v30;
  v32 = v30[1];
  sub_100190178(*v30, v32, v18);
  sub_100066958(v18, v31, v32);
  sub_1001CF380();
}

void sub_1000E2000(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setApps:isa];
}

uint64_t sub_1000E207C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000071CC();
  }

  return v5 & 1;
}

uint64_t sub_1000E20F4(unsigned __int8 a1, char a2)
{
  v2 = 0x5443454E4E4F43;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x5443454E4E4F43;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v6 = 1162626372;
      goto LABEL_7;
    case 2:
      v3 = 0xE300000000000000;
      v7 = 17735;
      goto LABEL_10;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1145128264;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x4843544150;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1414745936;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v7 = 21840;
LABEL_10:
      v5 = v7 | 0x540000u;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v6 = 1094996053;
LABEL_7:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x455400000000;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE600000000000000;
      v9 = 1162626372;
      goto LABEL_17;
    case 2:
      v8 = 0xE300000000000000;
      v10 = 17735;
      goto LABEL_20;
    case 3:
      v8 = 0xE400000000000000;
      v2 = 1145128264;
      break;
    case 4:
      v8 = 0xE500000000000000;
      v2 = 0x4843544150;
      break;
    case 5:
      v8 = 0xE400000000000000;
      v2 = 1414745936;
      break;
    case 6:
      v8 = 0xE300000000000000;
      v10 = 21840;
LABEL_20:
      v2 = v10 | 0x540000u;
      break;
    case 7:
      v8 = 0xE600000000000000;
      v9 = 1094996053;
LABEL_17:
      v2 = v9 & 0xFFFF0000FFFFFFFFLL | 0x455400000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000071CC();
  }

  return v12 & 1;
}

uint64_t sub_1000E228C(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE100000000000000;
      v5 = 65;
      break;
    case 2:
      v3 = 0xE100000000000000;
      v5 = 66;
      break;
    case 3:
      v3 = 0xE100000000000000;
      v5 = 67;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE100000000000000;
      v2 = 65;
      break;
    case 2:
      v6 = 0xE100000000000000;
      v2 = 66;
      break;
    case 3:
      v6 = 0xE100000000000000;
      v2 = 67;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E2384(char a1, char a2)
{
  v3 = 0xE100000000000000;
  v4 = 47;
  switch(a1)
  {
    case 1:
      v4 = 63;
      break;
    case 2:
      v4 = 35;
      break;
    case 3:
      v4 = 0x45746E6563726570;
      v3 = 0xEE006465646F636ELL;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v4 = 0x6564756C637865;
      break;
    case 5:
      v4 = 0x736E655365736163;
      v3 = 0xED00006576697469;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 47;
  switch(a2)
  {
    case 1:
      v6 = 63;
      break;
    case 2:
      v6 = 35;
      break;
    case 3:
      v6 = 0x45746E6563726570;
      v5 = 0xEE006465646F636ELL;
      break;
    case 4:
      v5 = 0xE700000000000000;
      v6 = 0x6564756C637865;
      break;
    case 5:
      v6 = 0x736E655365736163;
      v5 = 0xED00006576697469;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E250C(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000004C525564;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  sub_100026710();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E25A0(unsigned __int8 a1, char a2)
{
  v2 = 1415071060;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1415071060;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x52454745544E49;
      break;
    case 2:
      v5 = 1112493122;
      break;
    case 3:
      v5 = 1279346002;
      break;
    case 4:
      v5 = 0x205952414D495250;
      v3 = 0xEB0000000059454BLL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x52454745544E49;
      break;
    case 2:
      v2 = 1112493122;
      break;
    case 3:
      v2 = 1279346002;
      break;
    case 4:
      v2 = 0x205952414D495250;
      v6 = 0xEB0000000059454BLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E26EC(unsigned __int8 a1, char a2)
{
  v2 = 1936748641;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1936748641;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x7373656E746966;
      break;
    case 2:
      v5 = 0xD000000000000016;
      v3 = 0x80000001001F2F10;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x64656C62616E65;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      sub_1000F125C();
      break;
    case 2:
      v2 = 0xD000000000000016;
      v6 = 0x80000001001F2F10;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x64656C62616E65;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E2834(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00636E79732D69;
  v3 = 0x70612D616964656DLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0x437972746E756F63;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001001F2F40;
    }

    else
    {
      v6 = 0xEB0000000065646FLL;
    }
  }

  else
  {
    v5 = 0x70612D616964656DLL;
    v6 = 0xEE00636E79732D69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x437972746E756F63;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001001F2F40;
    }

    else
    {
      v2 = 0xEB0000000065646FLL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F34();
  }

  return v8 & 1;
}

uint64_t sub_1000E293C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  sub_100026710();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E29C0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 25705;
  }

  else
  {
    v3 = 0x73644961657261;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 25705;
  }

  else
  {
    v5 = 0x73644961657261;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E2A48(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 25705;
  }

  else
  {
    v3 = 0x7374656B637562;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 25705;
  }

  else
  {
    v5 = 0x7374656B637562;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E2AD0(unsigned __int8 a1, char a2)
{
  v2 = 0x656D6954646E65;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x656D6954646E65;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 2:
      v5 = 0x6D69547472617473;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0x6F726665726F7473;
      v3 = 0xEB0000000073746ELL;
      break;
    case 4:
      v5 = 0x6E656D7461657274;
      v3 = 0xEA00000000007374;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 25705;
      break;
    case 2:
      v2 = 0x6D69547472617473;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v2 = 0x6F726665726F7473;
      v6 = 0xEB0000000073746ELL;
      break;
    case 4:
      v2 = 0x6E656D7461657274;
      v6 = 0xEA00000000007374;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E2C48(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62616568636163;
  v4 = a1;
  v5 = 0x6C62616568636163;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0x656D697265707865;
      v6 = 0xEB0000000073746ELL;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1953259891;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1684366707;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x656D697265707865;
      v2 = 0xEB0000000073746ELL;
      break;
    case 2:
      v2 = 0xE200000000000000;
      v3 = 25705;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1953259891;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1684366707;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F34();
  }

  return v8 & 1;
}

uint64_t sub_1000E2D98()
{
  sub_1000F125C();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 1936748641;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1936748641;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (v1 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E2E6C()
{
  sub_100026710();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000E2EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000071CC();
  }

  return v10 & 1;
}

uint64_t sub_1000E2F7C(unsigned __int8 a1, char a2)
{
  v2 = 0x65756575716E65;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x696577746867696CLL;
    }

    else
    {
      v4 = 1668184435;
    }

    if (v3 == 1)
    {
      v5 = 0xEF636E7953746867;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x65756575716E65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x696577746867696CLL;
    }

    else
    {
      v2 = 1668184435;
    }

    if (a2 == 1)
    {
      v6 = 0xEF636E7953746867;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E3074(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x79654B6863746162;
  v4 = a1;
  v5 = 0x79654B6863746162;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x79654B6568636163;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x64657461657263;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x73657269707865;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x617461646174656DLL;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v5 = 1752457584;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v5 = 0x6574617473;
      break;
    case 7:
      v5 = 0x6E6564496B736174;
      v6 = 0xEE00726569666974;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v5 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x79654B6568636163;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x64657461657263;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x73657269707865;
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x617461646174656DLL;
      break;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1752457584;
      break;
    case 6:
      v2 = 0xE500000000000000;
      v3 = 0x6574617473;
      break;
    case 7:
      v3 = 0x6E6564496B736174;
      v2 = 0xEE00726569666974;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v3 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F34();
  }

  return v8 & 1;
}

uint64_t sub_1000E32AC(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000032;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_100026710();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC();
  }

  return v8 & 1;
}

uint64_t sub_1000E3340(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void sub_1000E33CC(unint64_t a1, unint64_t *a2)
{
  v5 = sub_1000116AC(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v7;
    sub_1000E6878(&v9, a2);

    if (v2)
    {
      return;
    }
  }
}

void sub_1000E349C()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000C79C();
  v13 = sub_100008BF8();
  sub_10008A2E0(v13, v14, &unk_10026FEC0, &qword_1001E6280);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_100009F34(v0, 1, v15);

  if (v16 == 1)
  {
    sub_10000A0C4(v0, &unk_10026FEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v15 - 8) + 8))(v0, v15);
  }

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10000A0C4(v6, &unk_10026FEC0);
    sub_100002FB8();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100002FB8();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  swift_task_create();

  sub_10000A0C4(v6, &unk_10026FEC0);

LABEL_9:
  sub_100005F14();
}