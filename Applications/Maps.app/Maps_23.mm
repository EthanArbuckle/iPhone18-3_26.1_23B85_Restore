uint64_t sub_1002D67B4@<X0>(id a1@<X2>, uint64_t a2@<X0>, char a3@<W1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = [a1 mapItem];
  if (v10)
  {
    v11 = v10;
    if ([a1 _type] == 2)
    {
      v42 = 0.0;
      v43 = 0.0;
      if ([a1 getCoordinate:&v42])
      {
        v13 = v42;
        v12 = v43;
        if (a3)
        {
          v14 = 0;
        }

        else
        {
          v14 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a2];
        }

        v41 = 1;
        v18 = [objc_opt_self() distanceStringFromLocation:a4 toCoordinate:v11 withMapItem:&v41 showsDistance:0 onlyUseThreshold:v14 maximumDistance:1 useShortThreshold:{v13, v12}];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          UUID.init()();
          v23 = (a5 + *(type metadata accessor for PlaceSummaryViewModelUnit.Distance(0) + 20));
          *v23 = v20;
          v23[1] = v22;
LABEL_24:
          v39 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v39 - 8) + 56))(a5, 0, 1, v39);
        }
      }
    }

    if (a4)
    {
      if (a3)
      {
        v24 = a4;
        v25 = 0;
      }

      else
      {
        v26 = objc_allocWithZone(NSNumber);
        v27 = a4;
        v25 = [v26 initWithUnsignedLongLong:a2];
      }

      LOBYTE(v42) = 1;
      v28 = objc_opt_self();
      v29 = a4;
      [v11 _coordinate];
      v30 = [v28 distanceStringFromLocation:v29 toCoordinate:v11 withMapItem:&v42 showsDistance:0 onlyUseThreshold:v25 maximumDistance:1 useShortThreshold:?];

      if (v30)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        if ((MapsFeature_IsEnabled_HikingWatch() & 1) != 0 && [v11 _placeCategoryType] == 1)
        {
          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v45._object = 0xEB00000000796177;
          v34._countAndFlagsBits = 0x636E61747369645BLL;
          v34._object = 0xEF79617761205D65;
          v35._countAndFlagsBits = 0x79617761204025;
          v45._countAndFlagsBits = 0x6120696D20303031;
          v35._object = 0xE700000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, qword_1019600D8, v35, v45);
          sub_1000CE6B8(&unk_10190D5C0);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1011E1D30;
          *(v36 + 56) = &type metadata for String;
          *(v36 + 64) = sub_1000DA61C();
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
          v31 = String.init(format:_:)();
          v33 = v37;
        }

        UUID.init()();

        v38 = (a5 + *(type metadata accessor for PlaceSummaryViewModelUnit.Distance(0) + 20));
        *v38 = v31;
        v38[1] = v33;
        goto LABEL_24;
      }
    }

    v40 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v40 - 8) + 56))(a5, 1, 1, v40);
  }

  else
  {
    v15 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v16 = *(*(v15 - 8) + 56);

    return v16(a5, 1, 1, v15);
  }
}

uint64_t sub_1002D6C7C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v65) = a5;
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000CE6B8(&qword_10190B850);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v66 = sub_1000CE6B8(&unk_10190D600);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v68 = &v55 - v15;
  v67 = type metadata accessor for AttributedString();
  v56 = *(v67 - 8);
  __chkstk_darwin(v67);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  if (!a2 || String.count.getter() < 1)
  {
LABEL_51:
    v53 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v54 = *(*(v53 - 8) + 56);

    return v54(a6, 1, 1, v53);
  }

  v63 = a1;
  if (!a3)
  {
    goto LABEL_32;
  }

  v24 = a3 >> 62;
  if (!(a3 >> 62))
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
LABEL_32:
    if (a4)
    {
      if (a4 == 1)
      {
        static Color.primary.getter();
        v44 = Color.opacity(_:)();
      }

      else
      {
        v44 = static Color.primary.getter();
      }

      v45 = 0;
    }

    else
    {
      if (v65)
      {
        static Font.body.getter();
      }

      else
      {
        static Font.subheadline.getter();
      }

      static Font.Weight.regular.getter();
      v45 = Font.weight(_:)();

      v44 = 0;
    }

    v46 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v46 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      if (v44)
      {
        v70[0] = v44;
        sub_10016EB80();

        AttributedString.subscript.setter();
      }

      if (v45)
      {
        v70[0] = v45;
        sub_1002E276C();

        AttributedString.subscript.setter();
      }

      UUID.init()();
      v47 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
      v48 = v56;
      v49 = v67;
      (*(v56 + 16))(a6 + v47[5], v17, v67);
      (*(v48 + 56))(a6 + v47[12], 1, 1, v49);

      (*(v48 + 8))(v17, v49);
      v50 = (a6 + v47[6]);
      *v50 = 0;
      v50[1] = 0;
      *(a6 + v47[7]) = 0;
      *(a6 + v47[8]) = 0;
      *(a6 + v47[9]) = 0;
      *(a6 + v47[10]) = 0;
      v51 = a6 + v47[11];
      *v51 = 1;
      *(v51 + 8) = 0;
      *(a6 + v47[13]) = _swiftEmptyArrayStorage;
      goto LABEL_49;
    }

    goto LABEL_51;
  }

LABEL_6:
  v25 = v65;
  sub_1002D9B8C(a4, v65 & 1);
  if (a4)
  {
    if (a4 == 1)
    {
      v26 = static Color.primary.getter();
    }

    else
    {
      static Color.primary.getter();
      v26 = Color.opacity(_:)();
    }

    v60 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    if (!v24)
    {
      goto LABEL_13;
    }

LABEL_17:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
LABEL_30:
      UUID.init()();
      v39 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
      v40 = v56;
      v41 = v67;
      (*(v56 + 16))(a6 + v39[5], v23, v67);

      (*(v40 + 8))(v23, v41);
      (*(v40 + 56))(a6 + v39[12], 1, 1, v41);
      v42 = (a6 + v39[6]);
      *v42 = 0;
      v42[1] = 0;
      *(a6 + v39[7]) = 0;
      *(a6 + v39[8]) = 0;
      *(a6 + v39[9]) = 0;
      *(a6 + v39[10]) = 0;
      v43 = a6 + v39[11];
      *v43 = 1;
      *(v43 + 8) = 0;
      *(a6 + v39[13]) = a3;
LABEL_49:
      v52 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v52 - 8) + 56))(a6, 0, 1, v52);
    }

    goto LABEL_18;
  }

  if (v25)
  {
    static Font.headline.getter();
  }

  else
  {
    static Font.subheadline.getter();
  }

  static Font.Weight.semibold.getter();
  v60 = Font.weight(_:)();

  v26 = 0;
  v27 = a3 & 0xFFFFFFFFFFFFFF8;
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_13:
  result = *(v27 + 16);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_18:
  v65 = v14;
  v59 = v26;
  v55 = a6;
  if (result >= 1)
  {
    v29 = 0;
    v62 = (v56 + 16);
    v63 = a3 & 0xC000000000000001;
    v30 = (v64 + 48);
    v64 = a3;
    v57 = v30;
    v58 = v20;
    v61 = result;
    do
    {
      if (v63)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(a3 + 8 * v29 + 32);
      }

      v32 = v31;
      [v31 rangeValue];
      (*v62)(v20, v23, v67);
      sub_1002E298C(&qword_101910100, &type metadata accessor for AttributedString);
      v33 = v23;
      v34 = v65;
      Range<>.init<A>(_:in:)();
      if ((*v30)(v34, 1, v66) == 1)
      {

        sub_100024F64(v34, &qword_10190B850);
        a3 = v64;
        v23 = v33;
      }

      else
      {
        sub_1000F11C4(v34, v68, &unk_10190D600);
        v35 = v59;
        if (v59)
        {
          swift_retain_n();
          sub_1000414C8(&qword_10190B858, &unk_10190D600);
          v36 = AttributedString.subscript.modify();
          v69 = v35;
          sub_10016EB80();
          AttributedSubstring.subscript.setter();
          v36(v70, 0);
        }

        v37 = v60;

        sub_1000414C8(&qword_10190B858, &unk_10190D600);
        v38 = AttributedString.subscript.modify();
        v69 = v37;
        sub_1002E276C();
        AttributedSubstring.subscript.setter();
        v38(v70, 0);

        sub_100024F64(v68, &unk_10190D600);
        a3 = v64;
        v23 = v33;
        v30 = v57;
        v20 = v58;
      }

      ++v29;
    }

    while (v61 != v29);
    a6 = v55;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D763C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 collectionResult];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collection];

    if (v12)
    {
      v13 = [v12 numberOfItems];

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v14 = qword_1019600D8;
      v15 = String._bridgeToObjectiveC()();
      v16 = String._bridgeToObjectiveC()();
      v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000CE6B8(&unk_10190D5C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1011E1D30;
      *(v18 + 56) = &type metadata for UInt;
      *(v18 + 64) = &protocol witness table for UInt;
      *(v18 + 32) = v13;
      v19 = static String.localizedStringWithFormat(_:_:)();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        UUID.init()();
        v23 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
        (*(v6 + 16))(a2 + v23[5], v9, v5);
        (*(v6 + 56))(a2 + v23[12], 1, 1, v5);
        (*(v6 + 8))(v9, v5);
        v24 = (a2 + v23[6]);
        *v24 = 0;
        v24[1] = 0;
        *(a2 + v23[7]) = 0;
        *(a2 + v23[8]) = 0;
        *(a2 + v23[9]) = 0;
        *(a2 + v23[10]) = 0;
        v25 = a2 + v23[11];
        *v25 = 1;
        *(v25 + 8) = 0;
        *(a2 + v23[13]) = _swiftEmptyArrayStorage;
        v26 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
      }
    }
  }

  v28 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v29 = *(*(v28 - 8) + 56);

  return v29(a2, 1, 1, v28);
}

uint64_t sub_1002D7A88@<X0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 publisherResult];
  if (v12 && (v13 = v12, v14 = [v12 publisher], v13, v14) && (v15 = objc_msgSend(v14, "publisherAttribution"), v14, v15) && (v16 = objc_msgSend(v15, *a2), swift_unknownObjectRelease(), v16))
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v20 = [a1 collectionResult];
    if (!v20)
    {
      goto LABEL_16;
    }

    v21 = v20;
    v22 = [v20 collection];

    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = [v22 publisherAttribution];

    if (!v23)
    {
      goto LABEL_16;
    }

    v24 = [v23 *a2];
    swift_unknownObjectRelease();
    if (!v24)
    {
      goto LABEL_16;
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v25;
  }

  v26 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v26 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    UUID.init()();
    v27 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
    (*(v8 + 16))(a3 + v27[5], v11, v7);
    (*(v8 + 56))(a3 + v27[12], 1, 1, v7);
    (*(v8 + 8))(v11, v7);
    v28 = (a3 + v27[6]);
    *v28 = 0;
    v28[1] = 0;
    *(a3 + v27[7]) = 0;
    *(a3 + v27[8]) = 0;
    *(a3 + v27[9]) = 0;
    *(a3 + v27[10]) = 0;
    v29 = a3 + v27[11];
    *v29 = 1;
    *(v29 + 8) = 0;
    *(a3 + v27[13]) = _swiftEmptyArrayStorage;
    v30 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
  }

LABEL_16:
  v32 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v33 = *(*(v32 - 8) + 56);

  return v33(a3, 1, 1, v32);
}

uint64_t sub_1002D7E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() autocompleteClientSourceTitleWithType:a1];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      UUID.init()();
      v15 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
      (*(v6 + 16))(a2 + v15[5], v8, v5);
      (*(v6 + 56))(a2 + v15[12], 1, 1, v5);
      (*(v6 + 8))(v8, v5);
      v16 = (a2 + v15[6]);
      *v16 = 0;
      v16[1] = 0;
      *(a2 + v15[7]) = 0;
      *(a2 + v15[8]) = 0;
      *(a2 + v15[9]) = 0;
      *(a2 + v15[10]) = 0;
      v17 = a2 + v15[11];
      *v17 = 1;
      *(v17 + 8) = 0;
      *(a2 + v15[13]) = _swiftEmptyArrayStorage;
      v18 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
    }
  }

  v20 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v21 = *(*(v20 - 8) + 56);

  return v21(a2, 1, 1, v20);
}

uint64_t sub_1002D8180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 name];
  if (v10)
  {
    v91 = v9;
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if ([a1 _venueFeatureType] == 4)
    {

      v15 = [a1 venueLabelWithContext:2];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v35 = [a1 _venueInfo];
      if (!v35 || (v36 = [v35 parent], swift_unknownObjectRelease(), !v36) || (v37 = objc_msgSend(v36, "featureType"), v36, v37 != 2))
      {
        v38 = [a1 _geoMapItem];
        if (v38)
        {
          v39 = [v38 addressObject];
          swift_unknownObjectRelease();
          if (v39)
          {
            v40 = [v39 venueShortAddress];

            if (v40)
            {
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v42;

              if (String.count.getter() >= 1)
              {

                v44 = HIBYTE(v43) & 0xF;
                if ((v43 & 0x2000000000000000) == 0)
                {
                  v44 = v41 & 0xFFFFFFFFFFFFLL;
                }

                if (v44)
                {
LABEL_48:
                  AttributeContainer.init()();
                  v67 = v91;
                  AttributedString.init(_:attributes:)();
                  UUID.init()();
                  v63 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
                  (*(v6 + 16))(a2 + v63[5], v67, v5);
                  (*(v6 + 56))(a2 + v63[12], 1, 1, v5);
                  (*(v6 + 8))(v67, v5);
                  goto LABEL_49;
                }

                goto LABEL_51;
              }
            }
          }
        }
      }

      if (!v19)
      {
LABEL_52:
        v10 = 0;
        goto LABEL_53;
      }

      v66 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v66 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v66)
      {
        goto LABEL_48;
      }

LABEL_51:

      goto LABEL_52;
    }

    v20 = [a1 _addressFormattedAsShortenedAddress];
    if (!v20)
    {
      goto LABEL_51;
    }

    v89 = v6;
    v90 = v5;
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if ([a1 _isMapItemTypeAddress])
    {
      v94 = v22;
      v95 = v24;
      v92 = v12;
      v93 = v14;
      sub_1000E5580();
      if (StringProtocol.contains<A>(_:)())
      {

        v25 = [a1 _geoAddress];
        if (!v25)
        {
          goto LABEL_58;
        }

        v26 = v25;
        v27 = [v25 structuredAddress];

        if (!v27)
        {
          goto LABEL_58;
        }

        v28 = [v27 locality];

        if (!v28)
        {
          goto LABEL_58;
        }

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {
LABEL_42:
          AttributeContainer.init()();
          v62 = v91;
          AttributedString.init(_:attributes:)();
          UUID.init()();
          v63 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
          v64 = v89;
          v65 = v90;
          (*(v89 + 16))(a2 + v63[5], v62, v90);
          (*(v64 + 56))(a2 + v63[12], 1, 1, v65);
          (*(v64 + 8))(v62, v65);
LABEL_49:
          v68 = (a2 + v63[6]);
          *v68 = 0;
          v68[1] = 0;
          *(a2 + v63[7]) = 0;
          *(a2 + v63[8]) = 0;
          *(a2 + v63[9]) = 0;
          *(a2 + v63[10]) = 0;
          v69 = a2 + v63[11];
          *v69 = 1;
          *(v69 + 8) = 0;
          v70 = v63[13];
LABEL_50:
          *(a2 + v70) = _swiftEmptyArrayStorage;
          v71 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v71 - 8) + 56))(a2, 0, 1, v71);
        }

        goto LABEL_57;
      }
    }

    v33 = String.uppercased()();
    v34 = String.uppercased()();
    if (v33._countAndFlagsBits == v34._countAndFlagsBits && v33._object == v34._object)
    {
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v45 & 1) == 0)
      {

        v61 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v61 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v61)
        {
          goto LABEL_42;
        }

        goto LABEL_57;
      }
    }

    v46 = [a1 _geoAddress];
    v47 = v90;
    if (v46)
    {
      v48 = v46;
      v49 = [v46 structuredAddress];

      if (v49)
      {
        v50 = [v49 administrativeArea];
        if (v50)
        {
          v51 = v50;
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          v55 = [v49 country];
          if (!v55)
          {
            goto LABEL_69;
          }

          v56 = v55;
          v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v58 = v57;

          v59 = String.uppercased()();

          v60 = String.uppercased()();
          if (v59._countAndFlagsBits == v60._countAndFlagsBits && v59._object == v60._object)
          {
          }

          else
          {
            v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v76 & 1) == 0 && String.count.getter() < 1)
            {
LABEL_68:
              v47 = v90;
LABEL_69:

              v83 = HIBYTE(v54) & 0xF;
              if ((v54 & 0x2000000000000000) == 0)
              {
                v83 = v52 & 0xFFFFFFFFFFFFLL;
              }

              if (v83)
              {
                AttributeContainer.init()();
                v84 = v91;
                AttributedString.init(_:attributes:)();
                UUID.init()();
                v80 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
                v85 = v89;
                (*(v89 + 16))(a2 + v80[5], v84, v47);
                (*(v85 + 56))(a2 + v80[12], 1, 1, v47);

                (*(v85 + 8))(v84, v47);
                goto LABEL_73;
              }

LABEL_76:

              goto LABEL_58;
            }
          }

          v77 = v88;
          if (String.count.getter() >= 1)
          {

            v78 = HIBYTE(v58) & 0xF;
            if ((v58 & 0x2000000000000000) == 0)
            {
              v78 = v77 & 0xFFFFFFFFFFFFLL;
            }

            if (v78)
            {
              AttributeContainer.init()();
              v79 = v91;
              AttributedString.init(_:attributes:)();
              UUID.init()();
              v80 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
              v81 = v89;
              v82 = v90;
              (*(v89 + 16))(a2 + v80[5], v79, v90);
              (*(v81 + 56))(a2 + v80[12], 1, 1, v82);

              (*(v81 + 8))(v79, v82);
LABEL_73:
              v86 = (a2 + v80[6]);
              *v86 = 0;
              v86[1] = 0;
              *(a2 + v80[7]) = 0;
              *(a2 + v80[8]) = 0;
              *(a2 + v80[9]) = 0;
              *(a2 + v80[10]) = 0;
              v87 = a2 + v80[11];
              *v87 = 1;
              *(v87 + 8) = 0;
              v70 = v80[13];
              goto LABEL_50;
            }

            goto LABEL_76;
          }

          goto LABEL_68;
        }
      }
    }

LABEL_57:

LABEL_58:
    v75 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v75 - 8) + 56))(a2, 1, 1, v75);
  }

LABEL_53:
  v73 = type metadata accessor for PlaceSummaryViewModelUnit(v10);
  v74 = *(*(v73 - 8) + 56);

  return v74(a2, 1, 1, v73);
}

id sub_1002D8C1C(void *a1)
{
  v2 = [objc_allocWithZone(MapsUIImageGEOFeatureSpec) init];
  [v2 setMarkerFallback:0];
  v3 = [a1 label];
  if (v3 && (v4 = v3, v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v6, v4, v27 = v5, v29 = v7, v23 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v25 = v8, sub_1000E5580(), v9 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , !v9))
  {
    v20 = &selRef_homeWithHalo;
  }

  else
  {
    v10 = [a1 label];
    if (v10 && (v11 = v10, v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v14 = v13, v11, v28 = v12, v30 = v14, v24 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v26 = v15, sub_1000E5580(), v16 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , !v16))
    {
      v20 = &selRef_workWithHalo;
    }

    else
    {
      v17 = [a1 label];
      if (v17 && (v18 = v17, static String._unconditionallyBridgeFromObjectiveC(_:)(), v18, static String._unconditionallyBridgeFromObjectiveC(_:)(), sub_1000E5580(), v19 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , !v19))
      {
        v20 = &selRef_schoolWithHalo;
      }

      else
      {
        v20 = &selRef_markerWithHalo;
      }
    }
  }

  v21 = [objc_opt_self() *v20];
  [v2 setStyle:v21];

  return v2;
}

uint64_t sub_1002D8E78(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result > 2)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > 2)
    {
      return result;
    }
  }

  swift_beginAccess();
  v6 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1002D8F6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 metadata];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v13;
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v14 = sub_100297058(v44), (v15 & 1) == 0))
  {

    sub_10005BF8C(v44);
    goto LABEL_13;
  }

  sub_10004E374(*(v12 + 56) + 32 * v14, v45);
  sub_10005BF8C(v44);

  sub_1000CE6B8(&qword_101918AE8);
  if (swift_dynamicCast())
  {
    v16 = v42;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v16 + 16))
    {
      v19 = sub_100297040(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = *(*(v16 + 56) + 8 * v19);
        swift_unknownObjectRetain();

        v45[0] = v22;
        if (swift_dynamicCast())
        {
          v24 = v44[0];
          v23 = v44[1];
          if (String.count.getter() >= 1)
          {
            if (qword_101906768 != -1)
            {
              swift_once();
            }

            v46._object = 0x800000010122CBC0;
            v25._countAndFlagsBits = 0xD00000000000001ELL;
            v25._object = 0x800000010122CBA0;
            v46._countAndFlagsBits = 0xD00000000000005FLL;
            v26._countAndFlagsBits = 0;
            v26._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, qword_1019600D8, v26, v46);
            sub_1000CE6B8(&unk_10190D5C0);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_1011E1D30;
            *(v27 + 56) = &type metadata for String;
            *(v27 + 64) = sub_1000DA61C();
            *(v27 + 32) = v24;
            *(v27 + 40) = v23;
            countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
            object = v29;

            goto LABEL_16;
          }

          goto LABEL_22;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_22:
  }

LABEL_13:
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v47._object = 0x800000010122CB40;
  v31._object = 0x800000010122CB20;
  v47._countAndFlagsBits = 0xD000000000000050;
  v31._countAndFlagsBits = 0xD000000000000016;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, qword_1019600D8, v32, v47);
  countAndFlagsBits = v33._countAndFlagsBits;
  object = v33._object;
LABEL_16:
  v34 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v34 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    UUID.init()();
    v35 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
    (*(v6 + 16))(a2 + v35[5], v9, v5);
    (*(v6 + 56))(a2 + v35[12], 1, 1, v5);
    (*(v6 + 8))(v9, v5);
    v36 = (a2 + v35[6]);
    *v36 = 0;
    v36[1] = 0;
    *(a2 + v35[7]) = 0;
    *(a2 + v35[8]) = 0;
    *(a2 + v35[9]) = 0;
    *(a2 + v35[10]) = 0;
    v37 = a2 + v35[11];
    *v37 = 1;
    *(v37 + 8) = 0;
    *(a2 + v35[13]) = _swiftEmptyArrayStorage;
    v38 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v38 - 8) + 56))(a2, 0, 1, v38);
  }

  else
  {

    v40 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v40 - 8) + 56))(a2, 1, 1, v40);
  }
}

uint64_t sub_1002D9528@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 mapItem];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 _addressFormattedAsShortenedAddress];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (*&a2[OBJC_IVAR____TtC4Maps38PlaceSummaryTextHighlightConfiguration_typedAutocompleteQuery + 8])
      {
        if (String.count.getter() > 0)
        {
          v24 = String.lowercased()();
          v23 = String.lowercased()();
          sub_1000E5580();
          v12 = StringProtocol.contains<A>(_:)();

          if (v12)
          {
            v13 = a3;
            v14 = v9;
            v15 = v11;
            v16 = a2;
            goto LABEL_12;
          }
        }
      }
    }
  }

  v17 = [a1 name];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v13 = a3;
  v14 = v19;
  v15 = v21;
  v16 = a2;
LABEL_12:
  sub_1002CE5A8(v14, v15, v16, v13);
}

uint64_t sub_1002D96E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 mapItem];
  if (v10 && (v11 = v10, v12 = [v10 _addressFormattedAsShortenedAddress], v11, v12))
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (String.count.getter() >= 1 && (v30[1] = String.lowercased()(), v30[0] = String.lowercased()(), sub_1000E5580(), v16 = StringProtocol.contains<A>(_:)(), , , (v16 & 1) != 0))
    {

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v32._object = 0x800000010122C980;
      v17._countAndFlagsBits = 0x4C2064656B72614DLL;
      v17._object = 0xEF6E6F697461636FLL;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v32._countAndFlagsBits = 0xD00000000000004FLL;
      v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, qword_1019600D8, v18, v32);
      v20 = (v19._object >> 56) & 0xF;
      if ((v19._object & 0x2000000000000000) == 0)
      {
        v20 = v19._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
LABEL_17:
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        UUID.init()();
        v25 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
        (*(v6 + 16))(a2 + v25[5], v9, v5);
        (*(v6 + 56))(a2 + v25[12], 1, 1, v5);
        (*(v6 + 8))(v9, v5);
        v26 = (a2 + v25[6]);
        *v26 = 0;
        v26[1] = 0;
        *(a2 + v25[7]) = 0;
        *(a2 + v25[8]) = 0;
        *(a2 + v25[9]) = 0;
        *(a2 + v25[10]) = 0;
        v27 = a2 + v25[11];
        *v27 = 1;
        *(v27 + 8) = 0;
        *(a2 + v25[13]) = _swiftEmptyArrayStorage;
        v28 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v28 - 8) + 56))(a2, 0, 1, v28);
      }
    }

    else
    {
      v24 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v24 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        goto LABEL_17;
      }
    }

    v29 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }

  else
  {
    v21 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v22 = *(*(v21 - 8) + 56);

    return v22(a2, 1, 1, v21);
  }
}

uint64_t sub_1002D9B8C(char a1, char a2)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  if (a1)
  {
    static Color.primary.getter();
    if (a1 == 1)
    {
      Color.opacity(_:)();
    }
  }

  else
  {
    if (a2)
    {
      static Font.body.getter();
    }

    else
    {
      static Font.subheadline.getter();
    }

    static Font.Weight.regular.getter();
    Font.weight(_:)();
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  sub_10016EB80();

  AttributedString.subscript.setter();
  sub_1002E276C();

  AttributedString.subscript.setter();
}

uint64_t sub_1002D9D1C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v16._object = 0x800000010122C9F0;
    v3._countAndFlagsBits = 0x6569766552206F4ELL;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    v4._object = 0x800000010122C9D0;
    v3._object = 0xEA00000000007377;
    v16._countAndFlagsBits = 0xD000000000000017;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, qword_1019600D8, v3, v16);
    if (String.count.getter() >= 1)
    {
      v9[0] = v5;
      memset(&v9[1], 0, 48);
      v10 = 0;
      v11 = 1;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      sub_1002D0BB8(v9, 0, a2);
      return sub_1002E2888(v9);
    }
  }

  v7 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, 1, 1, v7);
}

id sub_1002D9EA8(float a1)
{
  if (a1 >= 4.0 || a1 < 0.0)
  {
    v2 = dbl_1011F9090[a1 == 4.0];
  }

  else
  {
    v2 = 0.68627451;
  }

  v3 = objc_allocWithZone(UIColor);

  return [v3 initWithRed:1.0 green:v2 blue:0.0 alpha:1.0];
}

uint64_t sub_1002D9F24@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v62 = a2;
  v52 = sub_1000CE6B8(&qword_101918A30);
  __chkstk_darwin(v52);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v48 - v9;
  v56 = type metadata accessor for AttributedString();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AttributedString.Index();
  v57 = *(v61 - 8);
  __chkstk_darwin(v61);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  __chkstk_darwin(v16);
  v60 = &v48 - v17;
  v18 = type metadata accessor for AttributedString.CharacterView();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  swift_beginAccess();
  v25 = a3;
  AttributedString.characters.getter();
  swift_endAccess();
  v26 = AttributedString.CharacterView._count.getter();
  v58 = *(v19 + 8);
  v59 = v18;
  v58(v24, v18);
  if ((v26 & 0x8000000000000000) != 0 || v26 < v62 || a1 >= v62)
  {
    v47 = sub_1000CE6B8(&unk_10190D600);
    return (*(*(v47 - 8) + 56))(a4, 1, 1, v47);
  }

  else
  {
    v48 = a4;
    v27 = v25;
    swift_beginAccess();
    AttributedString.characters.getter();
    v28 = v54;
    v50 = *(v54 + 16);
    v29 = v56;
    v50(v11, v25, v56);
    swift_endAccess();
    AttributedString.startIndex.getter();
    v54 = *(v28 + 8);
    (v54)(v11, v29);
    AttributedString.CharacterView._index(_:offsetBy:)();
    v30 = v57 + 8;
    v49 = *(v57 + 8);
    v49(v15, v61);
    v58(v21, v59);
    swift_beginAccess();
    AttributedString.characters.getter();
    v50(v11, v27, v29);
    swift_endAccess();
    v31 = v55;
    AttributedString.startIndex.getter();
    v32 = v11;
    v33 = v29;
    v34 = v60;
    v35 = v61;
    v36 = v30;
    (v54)(v32, v33);
    AttributedString.CharacterView._index(_:offsetBy:)();
    v37 = v49;
    v62 = v36;
    v49(v31, v35);
    v58(v21, v59);
    sub_1002E298C(&qword_101918A38, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v39 = *(v57 + 32);
      v40 = v51;
      v39(v51, v34, v35);
      v41 = v52;
      v39((v40 + *(v52 + 48)), v15, v35);
      v42 = v53;
      sub_1000D2DFC(v40, v53, &qword_101918A30);
      v43 = *(v41 + 48);
      v44 = v48;
      v39(v48, v42, v35);
      v37(v42 + v43, v35);
      sub_1000F11C4(v40, v42, &qword_101918A30);
      v45 = *(v41 + 48);
      v46 = sub_1000CE6B8(&unk_10190D600);
      v39(&v44[*(v46 + 36)], (v42 + v45), v35);
      v37(v42, v35);
      return (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1002DA598@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 clientResolved];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 itemType];
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v19 = [objc_opt_self() sharedManager];
        v20 = [v19 parkedCar];

        if (v20)
        {
          v21 = [v20 locationDisplayString];

LABEL_25:
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v34;

LABEL_26:
          v35 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v35 = v30 & 0xFFFFFFFFFFFFLL;
          }

          if (v35)
          {
            AttributeContainer.init()();
            AttributedString.init(_:attributes:)();
            UUID.init()();
            v36 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
            (*(v8 + 16))(a3 + v36[5], v11, v7);
            (*(v8 + 56))(a3 + v36[12], 1, 1, v7);

            (*(v8 + 8))(v11, v7);
            v37 = (a3 + v36[6]);
            *v37 = 0;
            v37[1] = 0;
            *(a3 + v36[7]) = 0;
            *(a3 + v36[8]) = 0;
            *(a3 + v36[9]) = 0;
            *(a3 + v36[10]) = 0;
            v38 = a3 + v36[11];
            *v38 = 1;
            *(v38 + 8) = 0;
            *(a3 + v36[13]) = _swiftEmptyArrayStorage;
            v39 = type metadata accessor for PlaceSummaryViewModelUnit(0);
            swift_storeEnumTagMultiPayload();
            return (*(*(v39 - 8) + 56))(a3, 0, 1, v39);
          }
        }

LABEL_31:

        v12 = 0;
        goto LABEL_32;
      }

      if (v14 == 4)
      {
        if (a2)
        {
          v22 = [a2 mapItem];
          if (v22)
          {
            v23 = v22;
            v24 = [v22 _addressFormattedAsShortenedAddress];

            if (v24)
            {
              v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;

              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v45._object = 0x800000010122CD00;
              v27._countAndFlagsBits = 0x4025207261654ELL;
              v28._object = 0x800000010122CCE0;
              v45._countAndFlagsBits = 0xD00000000000006ELL;
              v28._countAndFlagsBits = 0xD000000000000015;
              v27._object = 0xE700000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, qword_1019600D8, v27, v45);
              sub_1000CE6B8(&unk_10190D5C0);
              v29 = swift_allocObject();
              *(v29 + 16) = xmmword_1011E1D30;
              *(v29 + 56) = &type metadata for String;
              *(v29 + 64) = sub_1000DA61C();
              *(v29 + 32) = v43;
              *(v29 + 40) = v26;
              v30 = static String.localizedStringWithFormat(_:_:)();
              v32 = v31;

              goto LABEL_26;
            }
          }
        }

        goto LABEL_31;
      }

      if (v14 != 6)
      {
        goto LABEL_31;
      }

      result = [objc_opt_self() sharedManager];
      if (result)
      {
        v16 = result;
        v17 = [result meCardSchoolAddress];

        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_36;
    }

    if (v14 == 1)
    {
      result = [objc_opt_self() sharedManager];
      if (!result)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v33 = result;
      v17 = [result meCardHomeAddress];

      if (!v17)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_31;
      }

      result = [objc_opt_self() sharedManager];
      if (!result)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v18 = result;
      v17 = [result meCardWorkAddress];

      if (!v17)
      {
        goto LABEL_31;
      }
    }

LABEL_24:
    v21 = [v17 shortAddress];

    if (v21)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

LABEL_32:
  v40 = type metadata accessor for PlaceSummaryViewModelUnit(v12);
  v41 = *(*(v40 - 8) + 56);

  return v41(a3, 1, 1, v40);
}

uint64_t sub_1002DABE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 symbolColor])
  {
    v29 = Color.init(uiColor:)();
  }

  else
  {
    v29 = 0;
  }

  if ([a1 darkSymbolColor])
  {
    v28 = Color.init(uiColor:)();
  }

  else
  {
    v28 = 0;
  }

  v10 = [a1 valueString];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [a1 symbolName];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v19 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    UUID.init()();
    v20 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
    (*(v6 + 16))(a2 + v20[5], v9, v5);
    (*(v6 + 56))(a2 + v20[12], 1, 1, v5);
    (*(v6 + 8))(v9, v5);
    v21 = (a2 + v20[6]);
    *v21 = v16;
    v21[1] = v18;
    v22 = v28;
    *(a2 + v20[7]) = v29;
    *(a2 + v20[8]) = v22;
    *(a2 + v20[9]) = 0;
    *(a2 + v20[10]) = 0;
    v23 = a2 + v20[11];
    *v23 = 1;
    *(v23 + 8) = 0;
    *(a2 + v20[13]) = _swiftEmptyArrayStorage;
    v24 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
  }

  else
  {

    v26 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v27 = *(*(v26 - 8) + 56);

    return v27(a2, 1, 1, v26);
  }
}

id sub_1002DB018@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v4 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v74 - v8;
  __chkstk_darwin(v10);
  v12 = &v74 - v11;
  __chkstk_darwin(v13);
  v15 = &v74 - v14;
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v19 = [a1 _searchResultPhotoCarousel];
    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = v19;
    sub_1000CE6B8(&qword_10190ABA0);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

          v24 = [v23 largestPhoto];
          swift_unknownObjectRelease();
          if (v24)
          {
            v25 = [v24 url];
            swift_unknownObjectRelease();
            if (v25)
            {
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v26 = type metadata accessor for URL();
              (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
            }

            else
            {
              v26 = type metadata accessor for URL();
              (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
            }

            sub_1000F11C4(v12, v15, &unk_101909B00);
            type metadata accessor for URL();
            v37 = *(v26 - 8);
            if ((*(v37 + 48))(v15, 1, v26) != 1)
            {
              (*(v37 + 32))(a2, v15, v26);
              return (*(v37 + 56))(a2, 0, 1, v26);
            }

            goto LABEL_27;
          }

LABEL_26:
          v38 = type metadata accessor for URL();
          (*(*(v38 - 8) + 56))(v15, 1, 1, v38);
LABEL_27:
          sub_100024F64(v15, &unk_101909B00);
LABEL_28:
          if (qword_101906728 != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          sub_100021540(v39, qword_101960018);
          v40 = a1;
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v41, v42))
          {
            v74 = a2;
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v77 = v44;
            *v43 = 136315138;
            v45 = [v40 name];
            if (v45)
            {
              v46 = v45;
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v48;
            }

            else
            {
              v47 = 0;
              v49 = 0xE000000000000000;
            }

            v75 = v47;
            v76 = v49;
            v50 = String.init<A>(_:)();
            v52 = sub_10004DEB8(v50, v51, &v77);

            *(v43 + 4) = v52;
            _os_log_impl(&_mh_execute_header, v41, v42, "[Place Summary] No photo carousel images for  %s were found, using mapItem photos", v43, 0xCu);
            sub_10004E3D0(v44);

            a2 = v74;
          }

          else
          {
          }

          result = [v40 _geoMapItem];
          if (result)
          {
            v53 = [result _photos];
            swift_unknownObjectRelease();
            if (v53)
            {
              sub_1000CE6B8(&qword_10190ABA0);
              v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v55 = sub_1002DB9F0(v54, v18 * 64.0, v18 * 64.0);

              if (v55)
              {
                v56 = [v55 url];
                if (v56)
                {
                  v57 = v56;
                  static URL._unconditionallyBridgeFromObjectiveC(_:)();

                  v58 = 0;
                }

                else
                {
                  v58 = 1;
                }

                swift_unknownObjectRelease();
                v69 = type metadata accessor for URL();
                (*(*(v69 - 8) + 56))(v9, v58, 1, v69);
                v36 = v9;
                return sub_1000F11C4(v36, a2, &unk_101909B00);
              }
            }

            else
            {
              v59 = v40;
              v60 = Logger.logObject.getter();
              v61 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                v77 = v63;
                *v62 = 136315138;
                v64 = [v59 name];
                if (v64)
                {
                  v65 = v64;
                  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v68 = v67;
                }

                else
                {
                  v66 = 0;
                  v68 = 0xE000000000000000;
                }

                v75 = v66;
                v76 = v68;
                v70 = String.init<A>(_:)();
                v72 = sub_10004DEB8(v70, v71, &v77);

                *(v62 + 4) = v72;
                _os_log_impl(&_mh_execute_header, v60, v61, "No photos found for map item %s", v62, 0xCu);
                sub_10004E3D0(v63);
              }
            }

            v73 = type metadata accessor for URL();
            return (*(*(v73 - 8) + 56))(a2, 1, 1, v73);
          }

LABEL_54:
          __break(1u);
          return result;
        }

        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v21 + 32);
          swift_unknownObjectRetain();
          goto LABEL_8;
        }

        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    goto LABEL_26;
  }

  result = [a1 _geoMapItem];
  if (!result)
  {
    goto LABEL_53;
  }

  v27 = [result _photos];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1000CE6B8(&qword_10190ABA0);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = sub_1002DB9F0(v28, v18 * 64.0, v18 * 64.0);

    if (v29)
    {
      v30 = [v29 url];
      if (v30)
      {
        v31 = v30;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        swift_unknownObjectRelease();
        v32 = type metadata accessor for URL();
        (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
      }

      else
      {
        swift_unknownObjectRelease();
        v35 = type metadata accessor for URL();
        (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
      }

      v36 = v6;
      return sub_1000F11C4(v36, a2, &unk_101909B00);
    }
  }

  v33 = type metadata accessor for URL();
  v34 = *(*(v33 - 8) + 56);

  return v34(a2, 1, 1, v33);
}

id sub_1002DB9F0(unint64_t a1, double a2, double a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  while (v7 != v8)
  {
    if (v9)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v8, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v10 = *(a1 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v8, 1))
      {
        goto LABEL_12;
      }
    }

    v11 = [v10 bestPhotoForSize:0 allowSmaller:{a2, a3}];
    swift_unknownObjectRelease();
    ++v8;
    if (v11)
    {
      return v11;
    }
  }

  for (i = 0; v7 != i; ++i)
  {
    if (v9)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_26;
      }

      v13 = *(a1 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
LABEL_22:
        __break(1u);
        return 0;
      }
    }

    v11 = [v13 bestPhotoForSize:1 allowSmaller:{a2, a3}];
    swift_unknownObjectRelease();
    if (v11)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t sub_1002DBB84(uint64_t result, id a2)
{
  if (result)
  {
    v2 = *(result + 16);
    v3 = (result + 32);
    v4 = (result + 32);
    while (v2)
    {
      v5 = *v4++;
      --v2;
      if (v5 == 6)
      {
        return 1;
      }
    }

    v6 = result;
    v7 = [a2 state];
    result = 0;
    if (v7 > 3)
    {
      switch(v7)
      {
        case 4:
          v17 = *(v6 + 16);
          do
          {
            v18 = v17-- != 0;
            result = v18;
            if (!v18)
            {
              break;
            }

            v19 = *v3++;
          }

          while (v19 != 5);
          break;
        case 5:
          v23 = *(v6 + 16);
          do
          {
            v24 = v23-- != 0;
            result = v24;
            if (!v24)
            {
              break;
            }

            v25 = *v3++;
          }

          while (v25 != 3);
          break;
        case 6:
          v11 = *(v6 + 16);
          do
          {
            v12 = v11-- != 0;
            result = v12;
            if (!v12)
            {
              break;
            }

            v13 = *v3++;
          }

          while (v13 != 4);
          break;
      }
    }

    else
    {
      switch(v7)
      {
        case 1:
          v14 = *(v6 + 16);
          do
          {
            v15 = v14-- != 0;
            result = v15;
            if (!v15)
            {
              break;
            }
          }

          while (*v3++);
          break;
        case 2:
          v20 = *(v6 + 16);
          do
          {
            v21 = v20-- != 0;
            result = v21;
            if (!v21)
            {
              break;
            }

            v22 = *v3++;
          }

          while (v22 != 1);
          break;
        case 3:
          v8 = *(v6 + 16);
          do
          {
            v9 = v8-- != 0;
            result = v9;
            if (!v9)
            {
              break;
            }

            v10 = *v3++;
          }

          while (v10 != 2);
          break;
      }
    }
  }

  return result;
}

void *sub_1002DBCE0(uint64_t a1, int a2)
{
  v107 = a2;
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v111 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v103 = &v98 - v7;
  __chkstk_darwin(v8);
  v102 = &v98 - v9;
  __chkstk_darwin(v10);
  v115 = &v98 - v11;
  __chkstk_darwin(v12);
  v132 = &v98 - v13;
  v14 = sub_1000CE6B8(&unk_1019189F0);
  __chkstk_darwin(v14 - 8);
  v100 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v98 - v17;
  v131 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  v18 = *(v131 - 1);
  __chkstk_darwin(v131);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v127 = &v98 - v22;
  v23 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v128 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v104 = &v98 - v27;
  __chkstk_darwin(v28);
  v130 = &v98 - v29;
  __chkstk_darwin(v30);
  v32 = &v98 - v31;
  v33 = sub_1000CE6B8(&qword_10190F380);
  __chkstk_darwin(v33 - 8);
  __chkstk_darwin(v34);
  v106 = &v98 - v35;
  __chkstk_darwin(v36);
  v108 = &v98 - v37;
  v41 = __chkstk_darwin(v38);
  v42 = *(a1 + 16);
  v101 = (v42 - 1);
  if (v42 <= 1)
  {

    return a1;
  }

  v113 = v40;
  v135 = v32;
  v44 = *(v4 + 56);
  v43 = v4 + 56;
  v121 = &v98 - v39;
  v122 = v44;
  v44(v41);
  v119 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v45 = *(v24 + 72);
  v110 = v20;
  v109 = v20 + 8;
  v129 = (v18 + 48);
  v118 = (v43 - 40);
  v125 = (v43 - 8);
  v126 = (v18 + 56);
  v112 = (v43 - 24);
  v123 = v43;
  v124 = (v43 - 48);
  v98 = a1 + v119;
  v46 = a1 + v119;
  v105 = a1;
  v99 = v42;
  v47 = v42;
  v48 = v45;
  v133 = _swiftEmptyArrayStorage;
  v49 = v130;
  v50 = v108;
  v116 = v23;
  v120 = v45;
  while (1)
  {
    v134 = v47;
    v53 = v135;
    sub_1002E27C0(v46, v135, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_1002E27C0(v53, v49, type metadata accessor for PlaceSummaryViewModelUnit);
    if (swift_getEnumCaseMultiPayload())
    {
      v54 = v131;
      (*v126)(v136, 1, 1, v131);
      sub_1002E2828(v49, type metadata accessor for PlaceSummaryViewModelUnit);
    }

    else
    {
      v55 = v49;
      v56 = v110;
      sub_1002E29D4(v55, v110, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      v54 = v131;
      if (*&v109[v131[6]] || *(v56 + v131[9]))
      {
        sub_1002E2828(v56, type metadata accessor for PlaceSummaryViewModelUnit.Label);
        (*v126)(v136, 1, 1, v54);
      }

      else
      {
        v96 = v136;
        sub_1002E29D4(v56, v136, type metadata accessor for PlaceSummaryViewModelUnit.Label);
        (*v126)(v96, 0, 1, v54);
      }
    }

    v57 = *v129;
    v58 = (*v129)(v136, 1, v54);
    v59 = v132;
    if (v58 == 1)
    {
      sub_100024F64(v136, &unk_1019189F0);
      sub_1002E27C0(v135, v128, type metadata accessor for PlaceSummaryViewModelUnit);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = sub_100356A5C(0, v133[2] + 1, 1, v133);
      }

      v61 = v133[2];
      v60 = v133[3];
      if (v61 >= v60 >> 1)
      {
        v133 = sub_100356A5C(v60 > 1, v61 + 1, 1, v133);
      }

      sub_1002E2828(v135, type metadata accessor for PlaceSummaryViewModelUnit);
      v62 = v133;
      v133[2] = v61 + 1;
      sub_1002E29D4(v128, v62 + v119 + v61 * v48, type metadata accessor for PlaceSummaryViewModelUnit);
      goto LABEL_4;
    }

    v114 = v57;
    v63 = v127;
    sub_1002E29D4(v136, v127, type metadata accessor for PlaceSummaryViewModelUnit.Label);
    v64 = *v118;
    (*v118)(v59, v63 + v54[5], v3);
    v65 = v121;
    sub_1000D2DFC(v121, v50, &qword_10190F380);
    v66 = *v125;
    v67 = (*v125)(v50, 1, v3);
    v117 = v64;
    if (v67 == 1)
    {
      sub_100024F64(v65, &qword_10190F380);
      sub_100024F64(v50, &qword_10190F380);
      v64(v65, v59, v3);
      (v122)(v65, 0, 1, v3);
    }

    else
    {
      (*v112)(v115, v50, v3);
      if (v107)
      {
        v68 = v106;
        v69 = v115;
        static AttributedString.+ infix(_:_:)();
        (*v124)(v69, v3);
        sub_100024F64(v65, &qword_10190F380);
        (v122)(v68, 0, 1, v3);
      }

      else
      {
        v70 = v103;
        AttributedString.init(stringLiteral:)();
        v71 = v3;
        v72 = v115;
        v73 = v102;
        static AttributedString.+ infix(_:_:)();
        v74 = *v124;
        (*v124)(v70, v71);
        v68 = v106;
        static AttributedString.+ infix(_:_:)();
        v75 = v73;
        v76 = v72;
        v3 = v71;
        v74(v75, v71);
        v74(v76, v71);
        sub_100024F64(v65, &qword_10190F380);
        (v122)(v68, 0, 1, v71);
      }

      sub_1000F11C4(v68, v65, &qword_10190F380);
      v50 = v108;
    }

    v77 = v113;
    sub_1000D2DFC(v65, v113, &qword_10190F380);
    if (v66(v77, 1, v3) == 1)
    {
      (*v124)(v132, v3);
      sub_1002E2828(v127, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      sub_1002E2828(v135, type metadata accessor for PlaceSummaryViewModelUnit);
      sub_100024F64(v77, &qword_10190F380);
LABEL_24:
      v48 = v120;
      goto LABEL_4;
    }

    v78 = v111;
    (*v112)(v111, v77, v3);
    v79 = v135;
    result = sub_1003CF358(v135, v105);
    v48 = v120;
    if ((v81 & 1) == 0)
    {
      break;
    }

    v51 = v78;
    v52 = *v124;
    (*v124)(v51, v3);
    v52(v132, v3);
    sub_1002E2828(v127, type metadata accessor for PlaceSummaryViewModelUnit.Label);
    sub_1002E2828(v79, type metadata accessor for PlaceSummaryViewModelUnit);
LABEL_4:
    v46 += v48;
    v47 = v134 - 1;
    v49 = v130;
    if (v134 == 1)
    {
      sub_100024F64(v121, &qword_10190F380);
      return v133;
    }
  }

  v82 = v117;
  if (result == v101)
  {
    goto LABEL_31;
  }

  if (!__OFADD__(result, 1))
  {
    if (result + 1 >= v99)
    {
      goto LABEL_42;
    }

    v83 = v100;
    sub_100221C84(v100);
    if (v114(v83, 1, v131) == 1)
    {
      sub_100024F64(v100, &unk_1019189F0);
      v78 = v111;
LABEL_31:
      v84 = v104;
      UUID.init()();
      v85 = v78;
      v86 = v131;
      v82((v84 + v131[5]), v85, v3);
      (v122)(v84 + v86[12], 1, 1, v3);
      v87 = (v84 + v86[6]);
      *v87 = 0;
      v87[1] = 0;
      *(v84 + v86[7]) = 0;
      *(v84 + v86[8]) = 0;
      *(v84 + v86[9]) = 0;
      *(v84 + v86[10]) = 0;
      v88 = v84 + v86[11];
      *v88 = 1;
      *(v88 + 8) = 0;
      *(v84 + v86[13]) = _swiftEmptyArrayStorage;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = sub_100356A5C(0, v133[2] + 1, 1, v133);
      }

      v90 = v133[2];
      v89 = v133[3];
      if (v90 >= v89 >> 1)
      {
        v133 = sub_100356A5C(v89 > 1, v90 + 1, 1, v133);
      }

      v91 = *v124;
      (*v124)(v111, v3);
      v91(v132, v3);
      sub_1002E2828(v127, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      sub_1002E2828(v135, type metadata accessor for PlaceSummaryViewModelUnit);
      v92 = v121;
      sub_100024F64(v121, &qword_10190F380);
      v93 = v133;
      v133[2] = v90 + 1;
      v94 = v120;
      sub_1002E29D4(v104, v93 + v119 + v90 * v120, type metadata accessor for PlaceSummaryViewModelUnit);
      v95 = v92;
      v48 = v94;
      (v122)(v95, 1, 1, v3);
      goto LABEL_4;
    }

    v97 = *v124;
    (*v124)(v111, v3);
    v97(v132, v3);
    sub_1002E2828(v127, type metadata accessor for PlaceSummaryViewModelUnit.Label);
    sub_1002E2828(v135, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_100024F64(v100, &unk_1019189F0);
    goto LABEL_24;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

size_t sub_1002DCBF4(void *a1, uint64_t a2)
{
  v103 = a2;
  v3 = sub_1000CE6B8(&unk_1019189D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v86 = &v81 - v5;
  v6 = sub_1000CE6B8(&qword_101914260);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = &v81 - v8;
  v9 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v81 - v10;
  v102 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v81 - v15;
  v16 = sub_10038B6F8(a1);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  result = [a1 mapItem];
  if (!result)
  {

    return 0;
  }

  v19 = result;
  v83 = v7;
  v82 = v6;
  v84 = v17;
  v20 = *&v17[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v21 = *(v20 + 16);
  v100 = result;
  v93 = v21;
  v81 = v4;
  if (!v21)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_36:
    if (v23[2])
    {
      v46 = v19;
      v47 = *&v84[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities];

      v48 = sub_1002C1A00(v46, v47, 0);

      v105 = v48;
      sub_10013C1B0(v48);
      v103 = static Color.clear.getter();
      v104 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
      v49 = objc_allocWithZone(v104);
      v50 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
      v106[0] = 0xF000000000000007;
      sub_1000CE6B8(&unk_1019189E0);
      v51 = v85;
      Published.init(initialValue:)();
      v52 = *(v83 + 32);
      v101 = v50;
      v53 = &v49[v50];
      v54 = v23;
      v55 = v82;
      v52(v53, v51, v82);
      v56 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
      v106[0] = 0xF000000000000007;
      Published.init(initialValue:)();
      v102 = v56;
      v52(&v49[v56], v51, v55);
      v57 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
      v106[0] = 0x4069000000000000;
      v58 = v86;
      Published.init(initialValue:)();
      v59 = v81;
      (*(v81 + 32))(&v49[v57], v58, v3);
      v60 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
      *&v49[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor] = 0;
      v61 = v3;
      v62 = &v49[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons];
      *v62 = 0;
      v62[1] = 0;
      v99 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
      *&v49[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons] = 0;
      v63 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
      *&v49[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics] = 0;
      v49[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine] = 0;
      v64 = &v49[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString];
      *v64 = 0;
      v64[1] = 0;
      if (v54[2])
      {
        swift_beginAccess();
        v108 = v54;
        sub_1000CE6B8(&qword_10190BF10);
        Published.init(initialValue:)();
        swift_endAccess();
        v65 = v101;
        swift_beginAccess();
        v66 = *(v83 + 8);
        v66(&v49[v65], v55);
        v108 = 0xF000000000000007;
        Published.init(initialValue:)();
        swift_endAccess();
        v67 = v102;
        swift_beginAccess();
        v68 = v105;
        sub_10013C1B0(v105);
        v66(&v49[v67], v55);
        v108 = v68;
        Published.init(initialValue:)();
        swift_endAccess();
        *v62 = 0;
        v62[1] = 0;

        *&v49[v99] = 0;

        v49[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase] = 2;
        swift_beginAccess();
        LOBYTE(v108) = 0;
        Published.init(initialValue:)();
        swift_endAccess();
        *&v49[v60] = v103;

        v49[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute] = 0;
        v107.receiver = v49;
        v107.super_class = v104;
        v69 = objc_msgSendSuper2(&v107, "init");

        sub_10013BD74(v68);
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v70 = *(v106[0] + 16);

        if (v70 >= 3)
        {
          v70 = 3;
        }

        v71 = *(sub_10021C698(0) + 16);

        if (v71 < v70)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v72 = *(v106[0] + 16);

          if (v71 < v72)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v73 = *(v106[0] + 16);

            if (v73)
            {
              v74 = 0;
              do
              {
                swift_getKeyPath();
                swift_getKeyPath();
                v75 = static Published.subscript.modify();
                v77 = v76;
                v78 = *v76;
                result = swift_isUniquelyReferenced_nonNull_native();
                *v77 = v78;
                if ((result & 1) == 0)
                {
                  result = sub_100416690(v78);
                  v78 = result;
                  *v77 = result;
                }

                if (v74 >= v78[2])
                {
                  goto LABEL_56;
                }

                *(v78 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v74 + *(v89 + 24)) = 0;
                v75(v106, 0);
              }

              while (v73 != ++v74);
            }
          }
        }

        sub_10013BD74(v105);
        return v69;
      }

      v79 = v105;
      v92 = v61;
      sub_10013BD74(v105);

      sub_10013BD74(v79);

      v80 = *(v83 + 8);
      v80(&v49[v101], v55);
      v80(&v49[v102], v55);
      (*(v59 + 8))(&v49[v57], v92);

      swift_deallocPartialClassInstance();
    }

    else
    {
    }

    return 0;
  }

  v22 = 0;
  v91 = v20 + 32;
  v23 = _swiftEmptyArrayStorage;
  v24 = (v99 + 48);
  v92 = v3;
  v90 = v20;
  while (1)
  {
    if (v22 >= *(v20 + 16))
    {
      goto LABEL_55;
    }

    v26 = (v91 + 16 * v22);
    v27 = *v26;
    v28 = *(v26 + 8);
    LODWORD(v26) = *(v26 + 9);
    v95 = v28;
    v96 = v26;
    v29 = v27 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v97 = v22;
    v98 = v23;

    if (v29)
    {
      break;
    }

    v32 = _swiftEmptyArrayStorage;
LABEL_27:
    v39 = v96;
    v40 = sub_1002DBCE0(v32, v96);

    if (v40[2])
    {
      v41 = v87;
      UUID.init()();

      v42 = v89;
      *(v41 + *(v89 + 20)) = v40;
      *(v41 + *(v42 + 24)) = v95;
      *(v41 + *(v42 + 28)) = v39;
      sub_1002E29D4(v41, v94, type metadata accessor for PlaceSummaryViewModelLine);
      v23 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = v92;
      v20 = v90;
      v25 = v97;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_1003580F8(0, v23[2] + 1, 1, v23);
      }

      v45 = v23[2];
      v44 = v23[3];
      if (v45 >= v44 >> 1)
      {
        v23 = sub_1003580F8(v44 > 1, v45 + 1, 1, v23);
      }

      v23[2] = v45 + 1;
      result = sub_1002E29D4(v94, v23 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v45, type metadata accessor for PlaceSummaryViewModelLine);
    }

    else
    {

      v3 = v92;
      v25 = v97;
      v23 = v98;
      v20 = v90;
    }

    v22 = v25 + 1;
    v19 = v100;
    if (v22 == v93)
    {
      goto LABEL_36;
    }
  }

  v30 = v29;
  v31 = 0;
  v104 = (v27 & 0xFFFFFFFFFFFFFF8);
  v105 = v27 & 0xC000000000000001;
  v32 = _swiftEmptyArrayStorage;
  while (v105)
  {
    v34 = v27;
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v35 = result;
    v36 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_53;
    }

LABEL_17:
    sub_1002C01DC(v19, v35, 0, 0, 0, v103, 0, 1, v11, 0, 0, 0, 0);

    if ((*v24)(v11, 1, v102) == 1)
    {
      result = sub_100024F64(v11, &qword_10190D6A8);
    }

    else
    {
      sub_1002E29D4(v11, v101, type metadata accessor for PlaceSummaryViewModelUnit);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100356A5C(0, v32[2] + 1, 1, v32);
      }

      v38 = v32[2];
      v37 = v32[3];
      if (v38 >= v37 >> 1)
      {
        v32 = sub_100356A5C(v37 > 1, v38 + 1, 1, v32);
      }

      v32[2] = v38 + 1;
      result = sub_1002E29D4(v101, v32 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v38, type metadata accessor for PlaceSummaryViewModelUnit);
      v19 = v100;
    }

    ++v31;
    v33 = v36 == v30;
    v27 = v34;
    if (v33)
    {
      goto LABEL_27;
    }
  }

  if (v31 >= *(v104 + 2))
  {
    goto LABEL_54;
  }

  v34 = v27;
  v35 = *(v27 + 8 * v31 + 32);

  v36 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_17;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void sub_1002DDA08(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v2 = a2 + 32;
        v3 = a1;
        v4 = 0;
        v13 = v2;
        while (2)
        {
          v5 = (v2 + 16 * v4);
          v6 = *v5;
          v7 = *v5 & 0xFFFFFFFFFFFFFF8;
          if (*v5 >> 62)
          {
            v8 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v8 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v15 = v4 + 1;
          swift_bridgeObjectRetain_n();

          for (i = 0; v8 != i; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (i >= *(v7 + 16))
              {
                goto LABEL_21;
              }

              v10 = *(v6 + 8 * i + 32);
            }

            v11 = v10;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              return;
            }

            v12 = [v10 isEqualToGEOMapItemIdentifier:v3];

            if (v12)
            {
              swift_bridgeObjectRelease_n();

              return;
            }
          }

          swift_bridgeObjectRelease_n();
          v4 = v15;
          v2 = v13;
          if (v15 != v14)
          {
            continue;
          }

          break;
        }
      }
    }
  }
}

unint64_t sub_1002DDB7C(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1 && (a2 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  v10 = [objc_allocWithZone(MapsUIImageGEOFeatureSpec) init];
  [v10 setStyle:a1];
  [v10 setMarkerFallback:a2 & 1];
  v11 = sub_1000CE6B8(&qword_1019141F8);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 96);
  v16 = *(v11 + 112);
  *v13 = v10;
  *(v13 + 8) = 0;
  *(v13 + 16) = a3 & 1;
  *(v13 + 24) = 0;
  v17 = enum case for Image.TemplateRenderingMode.original(_:);
  v18 = type metadata accessor for Image.TemplateRenderingMode();
  (*(*(v18 - 8) + 104))(v14 + v15, v17, v18);
  v19 = v10;
  *(v14 + v16) = static Color.clear.getter();
  *v8 = v12;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PlaceSummaryImageViewModel(0);
  v20 = swift_allocObject();
  v22[1] = 0;
  sub_1000CE6B8(&unk_101918A10);
  Published.init(initialValue:)();
  UUID.init()();

  sub_1002E29D4(v8, v20 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  result = v20;
  v21 = v20 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
  *v21 = 0;
  *(v21 + 8) = 1;
  return result;
}

unint64_t sub_1002DDDB4(void *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v6);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    return 0xF000000000000007;
  }

  v9 = objc_allocWithZone(MapsUIImageContactSpec);
  v10 = a1;
  v11 = [v9 init];
  [v11 setContact:v10];
  [v11 setUseAvatarImageRendered:1];
  if (a2 || (a3 & 1) != 0)
  {
    v22 = [objc_allocWithZone(MapsUIImageGEOFeatureSpec) init];
    v47 = v10;
    v23 = v22;
    [v22 setStyle:a2];
    [v23 setMarkerFallback:a3 & 1];
    v24 = sub_1000CE6B8(&qword_1019141F8);
    v25 = swift_allocBox();
    v27 = v26;
    v28 = *(v24 + 96);
    v41 = *(v24 + 112);
    *v26 = v23;
    *(v26 + 8) = 0;
    *(v26 + 24) = 0;
    *(v26 + 16) = 0;
    v29 = enum case for Image.TemplateRenderingMode.original(_:);
    v44 = enum case for Image.TemplateRenderingMode.original(_:);
    v42 = type metadata accessor for Image.TemplateRenderingMode();
    v30 = *(v42 - 8);
    v43 = *(v30 + 104);
    v45 = v30 + 104;
    v43(v27 + v28, v29, v42);
    v46 = v23;
    *(v27 + v41) = static Color.clear.getter();
    *v8 = v25;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PlaceSummaryImageViewModel(0);
    v31 = swift_allocObject();
    v48 = 0;
    sub_1000CE6B8(&unk_101918A10);
    Published.init(initialValue:)();
    UUID.init()();
    sub_1002E29D4(v8, v31 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    v32 = v31 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
    *v32 = 0;
    *(v32 + 8) = 1;
    v33 = swift_allocBox();
    v35 = v34;
    v36 = *(v24 + 96);
    v37 = *(v24 + 112);
    *v34 = v11;
    *(v34 + 8) = 0;
    *(v34 + 24) = v31;
    *(v34 + 16) = 0;
    v43(v34 + v36, v44, v42);
    v38 = v11;
    *(v35 + v37) = static Color.clear.getter();
    *v8 = v33;
    swift_storeEnumTagMultiPayload();
    v21 = swift_allocObject();
    v48 = 0;
    Published.init(initialValue:)();
    UUID.init()();

    v10 = v38;
    v20 = v46;
  }

  else
  {
    v12 = sub_1000CE6B8(&qword_1019141F8);
    v13 = swift_allocBox();
    v15 = v14;
    v16 = *(v12 + 96);
    v17 = *(v12 + 112);
    *v14 = v11;
    *(v14 + 8) = 0;
    *(v14 + 24) = 0;
    *(v14 + 16) = 0;
    v18 = enum case for Image.TemplateRenderingMode.original(_:);
    v19 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v19 - 8) + 104))(v15 + v16, v18, v19);
    v20 = v11;
    *(v15 + v17) = static Color.clear.getter();
    *v8 = v13;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PlaceSummaryImageViewModel(0);
    v21 = swift_allocObject();
    v48 = 0;
    sub_1000CE6B8(&unk_101918A10);
    Published.init(initialValue:)();
    UUID.init()();
  }

  sub_1002E29D4(v8, v21 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  v39 = v21 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
  *v39 = 0;
  *(v39 + 8) = 1;
  return v21;
}

void sub_1002DE274(void *a1)
{
  v2 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v2);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = (&v65 - v6);
  v9 = __chkstk_darwin(v8);
  v11 = (&v65 - v10);
  v12 = [a1 mapItem];
  if (v12 && (v13 = v12, v14 = [v12 _styleAttributes], v13, v14) || (v15 = objc_msgSend(a1, "category")) != 0 && (v16 = v15, v14 = objc_msgSend(v15, "styleAttributes"), v16, v14))
  {
    v17 = v14;
    sub_1002DDB7C(v14, 0, 0);

LABEL_6:
    return;
  }

  v18 = [a1 directionIntent];
  if (v18)
  {

    v19 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() imageNamed:v19];

    if (v20)
    {
      *v11 = v20;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaceSummaryImageViewModel(0);
      v21 = swift_allocObject();
      v66 = 0;
      sub_1000CE6B8(&unk_101918A10);
      Published.init(initialValue:)();
      UUID.init()();
      v22 = v21 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type;
      v23 = v11;
LABEL_10:
      sub_1002E29D4(v23, v22, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
      v24 = v21 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
      *v24 = 0;
      *(v24 + 8) = 1;
      return;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v25 = [a1 clientResolved];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 itemType];
    if (v27 <= 2)
    {
      if (v27 == 1)
      {
        v28 = [objc_opt_self() homeStyleAttributes];
        goto LABEL_27;
      }

      if (v27 == 2)
      {
        v28 = [objc_opt_self() workStyleAttributes];
        goto LABEL_27;
      }
    }

    else
    {
      switch(v27)
      {
        case 3:
          v28 = [objc_opt_self() parkedCarStyleAttributes];
          goto LABEL_27;
        case 4:
          v29 = [objc_opt_self() sharedManager];
          if (v29)
          {
            v30 = v29;
            v31 = [v29 meCard];

            sub_1002DDDB4(v31, 0, 0);
            return;
          }

          goto LABEL_47;
        case 6:
          v28 = [objc_opt_self() schoolStyleAttributes];
LABEL_27:
          v17 = v28;
          sub_1002DDB7C(v17, 0, 0);

          goto LABEL_6;
      }
    }

    return;
  }

  if ([a1 _type] == 2 || objc_msgSend(a1, "_type") == 1)
  {
    v17 = [objc_opt_self() markerStyleAttributes];
    sub_1002DDB7C(v17, 0, 0);
    goto LABEL_6;
  }

  v32 = [a1 collectionResult];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 collection];

    if (v34)
    {
      v35 = [v34 publisherAttribution];

      if (v35)
      {
        v36 = [v35 iconIdentifier];
        swift_unknownObjectRelease();
        v37 = [objc_allocWithZone(MapsUIImagePublisherSpec) initWithIconIdentifier:v36];
        if (v37)
        {
          v38 = v37;
          v39 = sub_1000CE6B8(&qword_1019141F8);
          a1 = swift_allocBox();
          v41 = v40;
          *v40 = v38;
          v4 = v38;
          v42 = String._bridgeToObjectiveC()();
          v43 = [objc_opt_self() imageNamed:v42];

          if (v43)
          {
            goto LABEL_40;
          }

          __break(1u);
        }
      }
    }
  }

  v44 = [a1 publisherResult];
  if (!v44 || (v45 = v44, v46 = [v44 publisher], v45, !v46) || (v47 = objc_msgSend(v46, "publisherAttribution"), v46, !v47) || (v48 = objc_msgSend(v47, "iconIdentifier"), swift_unknownObjectRelease(), (v49 = objc_msgSend(objc_allocWithZone(MapsUIImagePublisherSpec), "initWithIconIdentifier:", v48)) == 0))
  {
    v59 = [a1 iconStyleAttributes];
    if (v59)
    {
      v60 = v59;
      v61 = [objc_allocWithZone(GEOFeatureStyleAttributes) initWithGEOStyleAttributes:v59];
      sub_1002DDB7C(v61, 0, 1);

      return;
    }

    v62 = [objc_opt_self() sharedCache];
    if (v62)
    {
      v63 = v62;
      v64 = [v62 searchImage];

      if (v64)
      {
        *v4 = v64;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for PlaceSummaryImageViewModel(0);
        v21 = swift_allocObject();
        v66 = 0;
        sub_1000CE6B8(&unk_101918A10);
        Published.init(initialValue:)();
        UUID.init()();
        v22 = v21 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type;
        v23 = v4;
        goto LABEL_10;
      }

      goto LABEL_49;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v50 = v49;
  v39 = sub_1000CE6B8(&qword_1019141F8);
  a1 = swift_allocBox();
  v41 = v51;
  *v51 = v50;
  v4 = v50;
  v52 = String._bridgeToObjectiveC()();
  v43 = [objc_opt_self() imageNamed:v52];

  if (v43)
  {
LABEL_40:
    v53 = *(v39 + 96);
    v54 = *(v39 + 112);
    v41[1] = v43;
    v41[3] = 0;
    *(v41 + 16) = 0;
    v55 = enum case for Image.TemplateRenderingMode.original(_:);
    v56 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v56 - 8) + 104))(v41 + v53, v55, v56);
    *(v41 + v54) = static Color.clear.getter();
    *v7 = a1;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PlaceSummaryImageViewModel(0);
    v57 = swift_allocObject();
    v66 = 0;
    sub_1000CE6B8(&unk_101918A10);
    Published.init(initialValue:)();
    UUID.init()();

    sub_1002E29D4(v7, v57 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    v58 = v57 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
    *v58 = 0x4014000000000000;
    *(v58 + 8) = 0;
    return;
  }

LABEL_50:
  __break(1u);
}

id sub_1002DEBCC(void *a1)
{
  v2 = [a1 childItemType];
  if (v2 == 3)
  {
    result = [a1 publisherResult];
    if (!result)
    {
      return result;
    }

    v16 = result;
    v17 = [result publisher];

    if (!v17)
    {
      return 0;
    }

    v18 = [v17 totalCollectionCount];
    goto LABEL_20;
  }

  if (v2 != 2)
  {
    if (v2 == 1)
    {
      result = [a1 childItemPlace];
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = [result name];

      if (v5)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }

    return 0;
  }

  result = [a1 childItemAction];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [result childActionType];

  result = 0;
  if (v8 > 4)
  {
    if (v8 <= 6)
    {
      if (v8 != 5)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v11.super.isa = qword_1019600D8;
        v12 = 0xD000000000000016;
        v42 = 0x800000010122C750;
        v13 = 0x65746973626557;
        v14 = 0x800000010122C730;
        v15 = 0xD00000000000003DLL;
        goto LABEL_29;
      }

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v35._countAndFlagsBits = 0xD000000000000013;
      v48._object = 0x800000010122C7B0;
      v35._object = 0x800000010122C790;
      v48._countAndFlagsBits = 0xD00000000000004ELL;
      v36._countAndFlagsBits = 1819042115;
      v36._object = 0xE400000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, qword_1019600D8, v36, v48)._countAndFlagsBits;
    }

    if (v8 != 7)
    {
      if (v8 == 8)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v46._object = 0x800000010122C6E0;
        v31._countAndFlagsBits = 0x64616F6C6E776F44;
        v32._countAndFlagsBits = 0xD00000000000001FLL;
        v32._object = 0x800000010122C6C0;
        v46._countAndFlagsBits = 0xD000000000000047;
        v31._object = 0xE800000000000000;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, qword_1019600D8, v31, v46)._countAndFlagsBits;
      }

      return result;
    }

    result = [a1 childItemAction];
    if (!result)
    {
      return result;
    }

    v41 = result;
    v17 = [result guideLocation];

    if (!v17)
    {
      return 0;
    }

    v18 = [v17 numberOfGuides];
LABEL_20:
    v19 = v18;

    if (v19 == 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v20._countAndFlagsBits = 0xD000000000000018;
      v44._object = 0x800000010122C670;
      v21._countAndFlagsBits = 0x6564697547;
      v20._object = 0x800000010122C650;
      v44._countAndFlagsBits = 0xD000000000000040;
      v21._object = 0xE500000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, qword_1019600D8, v21, v44)._countAndFlagsBits;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v45._object = 0x800000010122C600;
      v23._countAndFlagsBits = 0x736564697547;
      v24._object = 0x800000010122C5E0;
      v45._countAndFlagsBits = 0xD000000000000041;
      v24._countAndFlagsBits = 0xD000000000000019;
      v23._object = 0xE600000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v23, v45)._countAndFlagsBits;
    }
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      result = [a1 childItemAction];
      if (!result)
      {
        return result;
      }

      v37 = result;
      v38 = [result childActionSearch];

      if (v38)
      {
        v39 = [v38 displayString];

        if (v39)
        {
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v40;
        }
      }

      return 0;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v25.super.isa = qword_1019600D8;
    v43 = 0x800000010122C820;
    v26 = 0x6F7241206B6F6F4CLL;
    v27 = 0xEB00000000646E75;
    v28 = 0xD00000000000001ALL;
    v29 = 0x800000010122C800;
    v30 = 0xD000000000000037;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v28, 0, v25, *&v26, *&v30)._countAndFlagsBits;
  }

  if (v8 != 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    result = [objc_opt_self() sharedPlatform];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result supportsARMode];

    if (v10)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v11.super.isa = qword_1019600D8;
      v12 = 0xD000000000000016;
      v42 = 0x800000010122C8E0;
      v13 = 0x7265766F796C46;
      v14 = 0x800000010122C8C0;
      v15 = 0xD000000000000034;
LABEL_29:
      v22 = 0xE700000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, 0, v11, *&v13, *&v15)._countAndFlagsBits;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v25.super.isa = qword_1019600D8;
    v43 = 0x800000010122C880;
    v26 = 0x207265766F796C46;
    v27 = 0xEC00000072756F54;
    v28 = 0xD00000000000001BLL;
    v29 = 0x800000010122C860;
    v30 = 0xD000000000000039;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v28, 0, v25, *&v26, *&v30)._countAndFlagsBits;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v47._object = 0x800000010122C940;
  v33._countAndFlagsBits = 0x6F69746365726944;
  v34._object = 0x800000010122C920;
  v47._countAndFlagsBits = 0xD000000000000032;
  v34._countAndFlagsBits = 0xD000000000000019;
  v33._object = 0xEA0000000000736ELL;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, qword_1019600D8, v33, v47)._countAndFlagsBits;
}

id sub_1002DF380(unint64_t a1, double a2)
{
  v4 = type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v32 - v7;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_25:
  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    return 0;
  }

LABEL_3:
  result = [objc_opt_self() system15Semibold];
  if (result)
  {
    v10 = result;
    a2 = a2 + -72.0;
    v11 = objc_allocWithZone(ChildItemsViewModel);
    sub_100014C84(0, &unk_101918A50);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v35 = [v11 initWithChildItems:isa childItemsSpacing:v10 font:8.0 maxWidth:a2 buttonContentEdgeInsets:{0.0, 10.0, 0.0, 10.0}];

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v13;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v18 = sub_1002DEBCC(v16);
        if (v19)
        {
          break;
        }

        ++v15;
        if (v13 == v8)
        {
          goto LABEL_19;
        }
      }

      v20 = v18;
      v21 = v19;
      v32 = v14;
      v22 = v36;
      UUID.init()();
      v23 = v34;
      v24 = (v22 + *(v34 + 20));
      *v24 = v20;
      v24[1] = v21;
      v25 = v35;
      *(v22 + *(v23 + 24)) = v35;
      *(v22 + *(v23 + 28)) = v15;
      v26 = v22;
      v14 = v32;
      sub_1002E27C0(v26, v37, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
      v27 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100358120(0, v14[2] + 1, 1, v14);
      }

      v29 = v14[2];
      v28 = v14[3];
      if (v29 >= v28 >> 1)
      {
        v14 = sub_100358120(v28 > 1, v29 + 1, 1, v14);
      }

      sub_1002E2828(v36, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
      v14[2] = v29 + 1;
      sub_1002E29D4(v37, v14 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
    }

    while (v13 != v8);
LABEL_19:
    if (v14[2])
    {
      v30 = v35;
      v31 = [v35 numberOfColumns];

      return v31;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1002DF734(void *a1, double a2)
{
  v3 = a1;
  v4 = [a1 childItems];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  sub_100014C84(0, &unk_101918A50);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_28:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_29:

    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_31;
      }
    }

    else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      sub_1002DF380(_swiftEmptyArrayStorage, a2);

      return;
    }

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_4:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v26 = v7;
  while (1)
  {
    if (v9)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 = [v10 childItemAction];
    if (!v13 || (v14 = v13, v15 = [v13 childActionType], v14, v15 != 8))
    {
      v24 = v11;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_6;
    }

    v16 = [v3 mapItem];
    if (!v16)
    {
      goto LABEL_36;
    }

    v17 = v16;
    v18 = [v16 _geoMapItem];

    if (!v18)
    {
      break;
    }

    v19 = [v18 offlineDownloadRegion];
    swift_unknownObjectRelease();
    if (v19)
    {
      v20 = v9;
      v21 = v3;
      v22 = [objc_opt_self() sharedHelper];
      v23 = [v22 isRegionDownloaded:v19 requireFullyDownloaded:0];

      if (v23)
      {
      }

      else
      {
        v25 = v11;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v3 = v21;
      v9 = v20;
      v7 = v26;
    }

    else
    {
    }

LABEL_6:
    ++v8;
    if (v12 == v7)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void *sub_1002DFAC8(void *a1)
{
  v2 = type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0);
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - v6;
  result = [a1 resultRefinements];
  if (result)
  {
    v9 = result;
    sub_100014C84(0, &qword_10190A8D8);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
LABEL_23:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
LABEL_4:
        v12 = 0;
        v13 = v10 & 0xC000000000000001;
        v14 = v10 & 0xFFFFFFFFFFFFFF8;
        v39 = _swiftEmptyArrayStorage;
        v34 = v11;
        v35 = v10;
        v32 = v10 & 0xFFFFFFFFFFFFFF8;
        v33 = v10 & 0xC000000000000001;
        do
        {
          if (v13)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *(v14 + 16))
            {
              goto LABEL_22;
            }

            v15 = *(v10 + 8 * v12 + 32);
          }

          v16 = v15;
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          if ([v15 type] == 1 && (v18 = objc_msgSend(v16, "toggle")) != 0)
          {
            v19 = v18;
            v20 = v36;
            UUID.init()();
            v21 = v7;
            v22 = [v19 displayName];
            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v24;

            LOBYTE(v22) = [v19 showAsSelected];
            v26 = v38;
            v27 = (v20 + *(v38 + 20));
            *v27 = v23;
            v27[1] = v25;
            *(v20 + *(v26 + 24)) = v16;
            *(v20 + *(v26 + 28)) = v22;
            v7 = v21;
            sub_1002E29D4(v20, v21, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
            v28 = v39;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_100358148(0, v28[2] + 1, 1, v28);
            }

            v30 = v28[2];
            v29 = v28[3];
            v39 = v28;
            v13 = v33;
            v11 = v34;
            v14 = v32;
            if (v30 >= v29 >> 1)
            {
              v39 = sub_100358148(v29 > 1, v30 + 1, 1, v39);
            }

            v31 = v39;
            v39[2] = v30 + 1;
            sub_1002E29D4(v7, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
            v10 = v35;
          }

          else
          {
          }

          ++v12;
        }

        while (v17 != v11);

        result = v39;
        if (v39[2])
        {
          return result;
        }
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  return result;
}

void sub_1002DFE3C(uint64_t a1)
{
  v2 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v2);
  v4 = (v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v5 = *(a1 + 16);
    v6 = (a1 + 32);
    while (v5)
    {
      v7 = *v6++;
      --v5;
      if (v7 == 2)
      {
        v8 = [objc_opt_self() sharedCache];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 searchImage];

          if (v10)
          {
            *v4 = v10;
            swift_storeEnumTagMultiPayload();
            type metadata accessor for PlaceSummaryImageViewModel(0);
            v11 = swift_allocObject();
            v13[1] = 0;
            sub_1000CE6B8(&unk_101918A10);
            Published.init(initialValue:)();
            UUID.init()();
            sub_1002E29D4(v4, v11 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
            v12 = v11 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
            *v12 = 0;
            *(v12 + 8) = 1;
            return;
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
  }
}

unint64_t sub_1002DFFEC(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    v3 = (a2 + 32);
    while (v2)
    {
      v4 = *v3++;
      --v2;
      if (v4 == 2)
      {
        v5 = [a1 geoMapItem];
        if (!v5)
        {
          return 0xF000000000000007;
        }

        v6 = [objc_opt_self() _itemWithGeoMapItem:v5];
        if (v6)
        {
          v7 = v6;
          v8 = [v6 _styleAttributes];
          v9 = sub_1002DDB7C(v8, 1, 0);
          swift_unknownObjectRelease();

          return v9;
        }

        swift_unknownObjectRelease();
        return 0xF000000000000007;
      }
    }
  }

  return 0xF000000000000007;
}

unint64_t sub_1002E00C4(id a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xF000000000000007;
  }

  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    if (!v3)
    {
      return 0xF000000000000007;
    }

    v5 = *v4++;
    --v3;
  }

  while (v5 != 2);
  v6 = [a1 isMeCard];
  v7 = [a1 addressType];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if (v6)
      {
        v8 = [objc_opt_self() workStyleAttributes];
        goto LABEL_18;
      }

      v13 = [a1 contact];
      v14 = [objc_opt_self() workStyleAttributes];
      goto LABEL_23;
    }

    if (v7 == 3)
    {
      if (v6)
      {
        v8 = [objc_opt_self() schoolStyleAttributes];
        goto LABEL_18;
      }

      v13 = [a1 contact];
      v14 = [objc_opt_self() schoolStyleAttributes];
LABEL_23:
      v10 = v14;
      v12 = sub_1002DDDB4(v13, v10, 0);

      goto LABEL_24;
    }
  }

  else if (v7 == 1)
  {
    if (v6)
    {
      v8 = [objc_opt_self() homeStyleAttributes];
LABEL_18:
      v10 = v8;
      v11 = sub_1002DDB7C(v10, 0, 0);
      goto LABEL_19;
    }

    v13 = [a1 contact];
    v14 = [objc_opt_self() homeStyleAttributes];
    goto LABEL_23;
  }

  v10 = [a1 contact];
  v11 = sub_1002DDDB4(v10, 0, v6 == 0);
LABEL_19:
  v12 = v11;
LABEL_24:

  return v12;
}

char *sub_1002E0314(uint64_t a1)
{
  v6 = swift_allocObject();
  v7 = _swiftEmptyArrayStorage;
  *(v6 + 16) = _swiftEmptyArrayStorage;
  if (*(a1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle))
  {
    v8 = sub_100509AEC();
    v9 = String.init(_:)(v8);
    v10 = sub_100356258(0, 1, 1, _swiftEmptyArrayStorage);
    v1 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v1 >= v11 >> 1)
    {
      v10 = sub_100356258((v11 > 1), v1 + 1, 1, v10);
    }

    *(v10 + 2) = v1 + 1;
    v143 = v10;
    *&v10[16 * v1 + 32] = v9;
    v12 = [objc_allocWithZone(MapsUIImageGEOFeatureSpec) init];
    v13 = [objc_opt_self() sharedLocationWithHalo];
    [v12 setStyle:v13];

    [v12 setMarkerFallback:1];
    v14 = v12;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v143 = _swiftEmptyArrayStorage;
  }

  if (*(a1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_placeSummaryShowsStackedIconsAndLabels) == 1)
  {
    v15 = *(a1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
    if (v15)
    {
      v16 = v15;
      v17 = [v16 postalAddresses];
      sub_1000CE6B8(&unk_101918B20);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v18 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 >= 1)
      {
        object = [v16 postalAddresses];
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v147[0] = _swiftEmptyArrayStorage;
        if (v21 >> 62)
        {
          v22 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v140 = v6;
        v141 = v16;
        if (v22)
        {
          v23 = 0;
          v7 = (v21 & 0xC000000000000001);
          bundle.super.isa = CNLabelHome;
          while (1)
          {
            if (v7)
            {
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_173;
              }

              v24 = *(v21 + 8 * v23 + 32);
            }

            v2 = v24;
            v1 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            v25 = [v24 label];
            if (!v25 || (v26 = v25, static String._unconditionallyBridgeFromObjectiveC(_:)(), v4 = v27, v26, static String._unconditionallyBridgeFromObjectiveC(_:)(), LODWORD(v3) = v28, sub_1000E5580(), object = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , object))
            {
            }

            else
            {
              object = v147;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v3 = *(v147[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            ++v23;
            if (v1 == v22)
            {
              v139 = v147[0];
              v16 = v141;
              v7 = _swiftEmptyArrayStorage;
              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v139 = _swiftEmptyArrayStorage;
LABEL_30:

        object = [v16 postalAddresses];
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v147[0] = _swiftEmptyArrayStorage;
        if (v29 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v30)
        {
          v31 = 0;
          v7 = (v29 & 0xC000000000000001);
          bundle.super.isa = CNLabelWork;
          while (1)
          {
            if (v7)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_175;
              }

              v32 = *(v29 + 8 * v31 + 32);
            }

            v2 = v32;
            v1 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            v33 = [v32 label];
            if (!v33 || (v34 = v33, static String._unconditionallyBridgeFromObjectiveC(_:)(), v4 = v35, v34, static String._unconditionallyBridgeFromObjectiveC(_:)(), LODWORD(v3) = v36, sub_1000E5580(), object = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , object))
            {
            }

            else
            {
              object = v147;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v3 = *(v147[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            ++v31;
            if (v1 == v30)
            {
              v138 = v147[0];
              v16 = v141;
              v7 = _swiftEmptyArrayStorage;
              goto LABEL_46;
            }
          }

LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        v138 = _swiftEmptyArrayStorage;
LABEL_46:

        v37 = [v16 postalAddresses];
        v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v147[0] = _swiftEmptyArrayStorage;
        if (v38 >> 62)
        {
          v39 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        object = _swiftEmptyArrayStorage;
        if (v39)
        {
          v40 = 0;
          v7 = (v38 & 0xC000000000000001);
          bundle.super.isa = CNLabelSchool;
          while (1)
          {
            if (v7)
            {
              v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_177;
              }

              v41 = *(v38 + 8 * v40 + 32);
            }

            v2 = v41;
            v1 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            v42 = [v41 label];
            if (!v42 || (v43 = v42, static String._unconditionallyBridgeFromObjectiveC(_:)(), v4 = v44, v43, static String._unconditionallyBridgeFromObjectiveC(_:)(), LODWORD(v3) = v45, sub_1000E5580(), object = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , object))
            {
            }

            else
            {
              object = v147;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v3 = *(v147[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            ++v40;
            if (v1 == v39)
            {
              v137 = v147[0];
              v16 = v141;
              object = _swiftEmptyArrayStorage;
              goto LABEL_62;
            }
          }

LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v137 = _swiftEmptyArrayStorage;
LABEL_62:

        v46 = [v16 postalAddresses];
        v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v147[0] = _swiftEmptyArrayStorage;
        if (v4 >> 62)
        {
          v47 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v47 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v47)
        {
          v48 = 0;
          bundle.super.isa = (v4 & 0xC000000000000001);
          LODWORD(v2) = v4 & 0xFFFFFFF8;
          v142 = CNLabelHome;
          while (1)
          {
            if (bundle.super.isa)
            {
              v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v48 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_179;
              }

              v49 = *(v4 + 8 * v48 + 32);
            }

            v50 = v49;
            v1 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              break;
            }

            v51 = [v49 label];
            if (v51 && (v52 = v51, static String._unconditionallyBridgeFromObjectiveC(_:)(), LODWORD(v3) = v53, v52, static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v54, sub_1000E5580(), object = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , !object) || (v55 = [v50 label]) != 0 && (v56 = v55, static String._unconditionallyBridgeFromObjectiveC(_:)(), LODWORD(v3) = v57, v56, static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v58, sub_1000E5580(), object = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , !object) || (v59 = objc_msgSend(v50, "label")) != 0 && (v60 = v59, static String._unconditionallyBridgeFromObjectiveC(_:)(), LODWORD(v3) = v61, v60, static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v62, sub_1000E5580(), object = StringProtocol.caseInsensitiveCompare<A>(_:)(), , , !object))
            {
            }

            else
            {
              object = v147;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v7 = *(v147[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            ++v48;
            if (v1 == v47)
            {
              object = v147[0];
              goto LABEL_81;
            }
          }

LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

LABEL_81:

        v63 = v139;
        v64 = v139 < 0 || (v139 & 0x4000000000000000) != 0;
        if (v64)
        {
          v65 = v137;
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_90;
          }
        }

        else
        {
          v65 = v137;
          if (!*(v139 + 16))
          {
            goto LABEL_90;
          }
        }

        if ((v139 & 0xC000000000000001) != 0)
        {
          v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v139 + 16))
          {
            __break(1u);
            goto LABEL_209;
          }

          v66 = *(v139 + 32);
        }

        v63 = v66;
        v67 = sub_1002D8C1C(v66);
        sub_1002D8E78(v67, v140);

LABEL_90:
        LODWORD(v2) = v138 < 0 || (v138 & 0x4000000000000000) != 0;
        if (v2 == 1)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_99;
          }
        }

        else if (!*(v138 + 16))
        {
          goto LABEL_99;
        }

        if ((v138 & 0xC000000000000001) != 0)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v138 + 16))
          {
            __break(1u);
            goto LABEL_211;
          }

          v68 = *(v138 + 32);
        }

        v63 = v68;
        v69 = sub_1002D8C1C(v68);
        sub_1002D8E78(v69, v140);

LABEL_99:
        LODWORD(v3) = v65 < 0 || (v65 & 0x4000000000000000) != 0;
        if (v3 == 1)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_108:
            LODWORD(v1) = object < 0 || (object & 0x4000000000000000) != 0;
            if (v1 == 1)
            {
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_117:
                if (qword_101906768 != -1)
                {
                  swift_once();
                }

                v75 = qword_1019600D8;
                v76 = String._bridgeToObjectiveC()();
                v77 = String._bridgeToObjectiveC()();
                bundle.super.isa = v75;
                v78 = [(objc_class *)v75 localizedStringForKey:v76 value:v77 table:0];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                if (*(v143 + 2) == 1)
                {

                  sub_1000CE6B8(&unk_10190D5C0);
                  v63 = swift_allocObject();
                  *(v63 + 16) = xmmword_1011E1D30;
                  v79 = [v141 postalAddresses];
                  v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  if (!(v80 >> 62))
                  {
                    v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_122:

                    *(v63 + 56) = &type metadata for Int;
                    *(v63 + 64) = &protocol witness table for Int;
                    *(v63 + 32) = v81;
                    v82 = static String.localizedStringWithFormat(_:_:)();
                    v84 = v83;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v143 = sub_100356258(0, *(v143 + 2) + 1, 1, v143);
                    }

                    v86 = *(v143 + 2);
                    v85 = *(v143 + 3);
                    if (v86 >= v85 >> 1)
                    {
                      v143 = sub_100356258((v85 > 1), v86 + 1, 1, v143);
                    }

                    *(v143 + 2) = v86 + 1;
                    v87 = &v143[16 * v86];
                    *(v87 + 4) = v82;
                    *(v87 + 5) = v84;
                    goto LABEL_165;
                  }

LABEL_214:
                  v81 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_122;
                }

                v88 = [v141 postalAddresses];
                v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                if (v89 >> 62)
                {
                  v90 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v90 == 1)
                {

                  countAndFlagsBits = [v141 postalAddresses];
                  object = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  if (object >> 62)
                  {
                    v92 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v92 = *((object & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v64 = v140;
                  if (!v92)
                  {
                    goto LABEL_164;
                  }

                  if ((object & 0xC000000000000001) != 0)
                  {
                    v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    goto LABEL_136;
                  }

                  if (*((object & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v93 = *(object + 32);
LABEL_136:
                    v94 = v93;

                    v95 = [v94 value];
                    v96 = [v95 street];

                    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v99 = v98;

                    v145 = v97;
                    v146 = v99;
                    v100._countAndFlagsBits = 8236;
                    v100._object = 0xE200000000000000;
                    String.append(_:)(v100);
                    v101 = [v94 value];
                    v102 = [v101 city];

                    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v105 = v104;

                    v106._countAndFlagsBits = v103;
                    v106._object = v105;
                    String.append(_:)(v106);

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v143 = sub_100356258(0, *(v143 + 2) + 1, 1, v143);
                    }

                    v108 = *(v143 + 2);
                    v107 = *(v143 + 3);
                    if (v108 >= v107 >> 1)
                    {
                      v143 = sub_100356258((v107 > 1), v108 + 1, 1, v143);
                    }

                    *(v143 + 2) = v108 + 1;
                    v109 = &v143[16 * v108];
                    *(v109 + 4) = v145;
                    *(v109 + 5) = v146;
                    goto LABEL_165;
                  }

                  __break(1u);
                }

                else
                {
                  v110 = [v141 postalAddresses];
                  v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  if (v111 >> 62)
                  {
                    v112 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v112 < 2)
                  {

LABEL_165:
                    swift_beginAccess();
                    goto LABEL_166;
                  }

                  sub_1000CE6B8(&unk_10190D5C0);
                  countAndFlagsBits = swift_allocObject();
                  *(countAndFlagsBits + 1) = xmmword_1011E1D30;
                  v7 = [v141 postalAddresses];
                  v113 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  v92 = v113;
                  if (!(v113 >> 62))
                  {
                    v114 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    goto LABEL_146;
                  }
                }

                v7 = v92;
                v114 = _CocoaArrayWrapper.endIndex.getter();
LABEL_146:

                if (__OFSUB__(v114, 1))
                {
                  __break(1u);
LABEL_222:
                  v143 = sub_100356258(0, *(v143 + 2) + 1, 1, v143);
LABEL_161:
                  v125 = v143;
                  v127 = *(v143 + 2);
                  v126 = *(v143 + 3);
                  if (v127 >= v126 >> 1)
                  {
                    v125 = sub_100356258((v126 > 1), v127 + 1, 1, v143);
                  }

                  *(v125 + 2) = v127 + 1;
                  v128 = &v125[16 * v127];
                  *(v128 + 4) = countAndFlagsBits;
                  *(v128 + 5) = object;
                  v143 = v125;
                  if (!v127)
                  {
                    v130 = *(v125 + 3);
                    if (v130 <= 3)
                    {
                      v143 = sub_100356258((v130 > 1), 2, 1, v125);
                    }

                    *(v143 + 2) = 2;
                    *(v143 + 6) = v142;
                    *(v143 + 7) = v7;
                    goto LABEL_165;
                  }

                  goto LABEL_164;
                }

                *(countAndFlagsBits + 7) = &type metadata for Int;
                *(countAndFlagsBits + 8) = &protocol witness table for Int;
                *(countAndFlagsBits + 4) = v114 - 1;
                v142 = static String.localizedStringWithFormat(_:_:)();
                v7 = v115;

                if (v64)
                {
                  v116 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v116 = *(v139 + 16);
                }

                v4 = v137;

                if (v116 < 1)
                {
                  if (v2)
                  {
                    v122 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v122 = *(v138 + 16);
                  }

                  if (v122 < 1)
                  {
                    if (v3)
                    {
                      v131 = _CocoaArrayWrapper.endIndex.getter();
LABEL_181:

                      if (v131 >= 1)
                      {

                        v136 = 0x800000010122CA30;
                        v121 = 0x6C6F6F686353;
                        v119 = 0xD000000000000016;
                        v117 = 0x800000010122CA10;
                        v118 = 0xD000000000000029;
                        v120.super.isa = bundle.super.isa;
                        v123 = 0xE600000000000000;
LABEL_160:
                        v124 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v119, 0, v120, *&v121, *&v118);
                        countAndFlagsBits = v124._countAndFlagsBits;
                        object = v124._object;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_161;
                        }

                        goto LABEL_222;
                      }

                      if (v1)
                      {
                        v132 = _CocoaArrayWrapper.endIndex.getter();
                      }

                      else
                      {
                        v132 = *(object + 16);
                      }

                      if (v132 >= 1)
                      {
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v143 = sub_100356258(0, *(v143 + 2) + 1, 1, v143);
                        }

                        v134 = *(v143 + 2);
                        v133 = *(v143 + 3);
                        if (v134 >= v133 >> 1)
                        {
                          v143 = sub_100356258((v133 > 1), v134 + 1, 1, v143);
                        }

                        *(v143 + 2) = v134 + 1;
                        v135 = &v143[16 * v134];
                        *(v135 + 4) = v142;
                        *(v135 + 5) = v7;
                        goto LABEL_165;
                      }

LABEL_164:

                      goto LABEL_165;
                    }

LABEL_180:
                    v131 = *(v4 + 16);
                    goto LABEL_181;
                  }

                  v136 = 0x800000010122CA80;
                  v117 = 0x800000010122CA60;
                  v118 = 0xD000000000000027;
                  v119 = 0xD000000000000014;
                  v120.super.isa = bundle.super.isa;
                  v121 = 1802661719;
                }

                else
                {

                  v136 = 0x800000010122CAD0;
                  v117 = 0x800000010122CAB0;
                  v118 = 0xD000000000000027;
                  v119 = 0xD000000000000014;
                  v120.super.isa = bundle.super.isa;
                  v121 = 1701670728;
                }

                v123 = 0xE400000000000000;
                goto LABEL_160;
              }
            }

            else if (!*(object + 16))
            {
              goto LABEL_117;
            }

            if ((object & 0xC000000000000001) == 0)
            {
              if (*(object + 16))
              {
                v72 = *(object + 32);
LABEL_116:
                v73 = v72;
                v74 = sub_1002D8C1C(v72);
                sub_1002D8E78(v74, v140);

                goto LABEL_117;
              }

LABEL_213:
              __break(1u);
              goto LABEL_214;
            }

LABEL_211:
            v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_116;
          }
        }

        else if (!*(v65 + 16))
        {
          goto LABEL_108;
        }

        if ((v65 & 0xC000000000000001) == 0)
        {
          if (!*(v65 + 16))
          {
            __break(1u);
            goto LABEL_213;
          }

          v70 = *(v65 + 32);
          goto LABEL_107;
        }

LABEL_209:
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_107:
        v63 = v70;
        v71 = sub_1002D8C1C(v70);
        sub_1002D8E78(v71, v140);

        goto LABEL_108;
      }
    }
  }

LABEL_166:

  return v143;
}

unint64_t sub_1002E1898(uint64_t a1)
{
  v2 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v2);
  v4 = (v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v5 = *(a1 + 16);
    v6 = (a1 + 32);
    while (v5)
    {
      v7 = *v6++;
      --v5;
      if (v7 == 2)
      {
        v8 = objc_opt_self();
        v9 = String._bridgeToObjectiveC()();
        v10 = [v8 _maps_applicationIconWithBundleIdentifier:v9];

        if (v10)
        {
          *v4 = v10;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for PlaceSummaryImageViewModel(0);
          v11 = swift_allocObject();
          v17[1] = 0;
          v12 = v10;
          sub_1000CE6B8(&unk_101918A10);
          Published.init(initialValue:)();
          UUID.init()();

          sub_1002E29D4(v4, v11 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
          result = v11;
          v14 = v11 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
          *v14 = 0;
          *(v14 + 8) = 1;
        }

        else
        {
          v15 = [objc_opt_self() markerStyleAttributes];
          v16 = sub_1002DDB7C(v15, 0, 0);

          return v16;
        }

        return result;
      }
    }
  }

  return 0xF000000000000007;
}

id sub_1002E1AA4(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xF000000000000007;
  }

  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    if (!v2)
    {
      return 0xF000000000000007;
    }

    v4 = *v3++;
    --v2;
  }

  while (v4 != 2);
  if (![a1 isDynamicCurrentLocation])
  {
    v10 = [a1 mapItem];
    v8 = [v10 _styleAttributes];

    v9 = sub_1002DDB7C(v8, 1, 0);
    goto LABEL_10;
  }

  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v7 = result;
    v8 = [result meCard];

    v9 = sub_1002DDDB4(v8, 0, 0);
LABEL_10:
    v11 = v9;

    return v11;
  }

  __break(1u);
  return result;
}

id sub_1002E1BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v4);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v7 = *(a2 + 16);
    v8 = (a2 + 32);
    while (v7)
    {
      v9 = *v8++;
      --v7;
      if (v9 == 2)
      {
        result = [objc_allocWithZone(MapsUIImageSuggestionSpec) initWithSuggestion:a1];
        if (result)
        {
          v11 = result;
          v12 = sub_1000CE6B8(&qword_1019141F8);
          v13 = swift_allocBox();
          v15 = v14;
          v16 = *(v12 + 96);
          v17 = *(v12 + 112);
          *v14 = v11;
          *(v14 + 8) = 0;
          *(v14 + 24) = 0;
          *(v14 + 16) = 0;
          v18 = enum case for Image.TemplateRenderingMode.original(_:);
          v19 = type metadata accessor for Image.TemplateRenderingMode();
          (*(*(v19 - 8) + 104))(v15 + v16, v18, v19);
          *(v15 + v17) = static Color.clear.getter();
          *v6 = v13;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for PlaceSummaryImageViewModel(0);
          v20 = swift_allocObject();
          v22[1] = 0;
          sub_1000CE6B8(&unk_101918A10);
          Published.init(initialValue:)();
          UUID.init()();
          sub_1002E29D4(v6, v20 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
          result = v20;
          v21 = v20 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
          *v21 = 0;
          *(v21 + 8) = 1;
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }
  }

  return 0xF000000000000007;
}

uint64_t sub_1002E1DD0()
{
  v0 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v19;
  v16 = *(v19 + 16);
  if (v16)
  {
    v10 = 0;
    v11 = *(v4 + 20);
    v17 = v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = v11;
    while (v10 < *(v9 + 16))
    {
      v12 = v5;
      sub_1002E27C0(v17 + *(v5 + 72) * v10, v7, type metadata accessor for PlaceSummaryViewModelLine);
      v13 = *&v7[v18];

      result = sub_1002E2828(v7, type metadata accessor for PlaceSummaryViewModelLine);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = 0;
        while (v15 < *(v13 + 16))
        {
          sub_1002E27C0(v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v15, v3, type metadata accessor for PlaceSummaryViewModelUnit);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            sub_1002E2828(v3, type metadata accessor for PlaceSummaryViewModelUnit);
            return v10;
          }

          ++v15;
          result = sub_1002E2828(v3, type metadata accessor for PlaceSummaryViewModelUnit);
          if (v14 == v15)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        break;
      }

LABEL_3:
      ++v10;

      v5 = v12;
      if (v10 == v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    return 0;
  }

  return result;
}

uint64_t sub_1002E20E0(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v8 - 8);
  KeyPath = &v38 - v9;
  v11 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1002E1DD0();
  if ((v17 & 1) == 0)
  {
    if (a1)
    {
      v18 = result;
      v40 = v16;
      v41[0] = 1;
      if (a4)
      {
        v19 = a1;
        v20 = [a2 _maps_distanceStringFromDetourInformation];
        if (v20)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = objc_opt_self();
        v19 = a1;
        [a2 _coordinate];
        v20 = [v4 distanceStringFromLocation:v19 toCoordinate:a2 withMapItem:v41 showsDistance:0 onlyUseThreshold:0 maximumDistance:1 useShortThreshold:?];
        if (v20)
        {
LABEL_5:
          v21 = v14;
          v22 = v20;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v4 = v23;

          v14 = v21;
          if (!MapsFeature_IsEnabled_HikingWatch() || [a2 _placeCategoryType] != 1)
          {
            v27 = v39;
            goto LABEL_13;
          }

          v38 = v21;
          if (qword_101906768 != -1)
          {
            goto LABEL_30;
          }

          while (1)
          {
            v42._object = 0xEB00000000796177;
            v24._countAndFlagsBits = 0x636E61747369645BLL;
            v24._object = 0xEF79617761205D65;
            v25._countAndFlagsBits = 0x79617761204025;
            v42._countAndFlagsBits = 0x6120696D20303031;
            v25._object = 0xE700000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v25, v42);
            sub_1000CE6B8(&unk_10190D5C0);
            v26 = swift_allocObject();
            *(v26 + 16) = xmmword_1011E1D30;
            *(v26 + 56) = &type metadata for String;
            *(v26 + 64) = sub_1000DA61C();
            *(v26 + 32) = v39;
            *(v26 + 40) = v4;
            v27 = String.init(format:_:)();
            v4 = v28;

            v14 = v38;
LABEL_13:
            UUID.init()();

            v30 = &KeyPath[*(type metadata accessor for PlaceSummaryViewModelUnit.Distance(0) + 20)];
            *v30 = v27;
            v30[1] = v4;
            swift_storeEnumTagMultiPayload();
            v29 = 0;
LABEL_14:
            (*(v12 + 56))(KeyPath, v29, 1, v11);
            if ((*(v12 + 48))(KeyPath, 1, v11) == 1)
            {
              return sub_100024F64(KeyPath, &qword_10190D6A8);
            }

            sub_1002E29D4(KeyPath, v14, type metadata accessor for PlaceSummaryViewModelUnit);
            KeyPath = swift_getKeyPath();
            v11 = swift_getKeyPath();
            v31 = static Published.subscript.modify();
            v33 = v32;
            a1 = *v32;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v33 = a1;
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v18 & 0x8000000000000000) != 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              a1 = sub_100416690(a1);
              *v33 = a1;
              if ((v18 & 0x8000000000000000) != 0)
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            if (v18 >= a1[2])
            {
              goto LABEL_26;
            }

            v35 = type metadata accessor for PlaceSummaryViewModelLine(0);
            a1 = (a1 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)) + *(*(v35 - 8) + 72) * v18);
            v33 = *(v35 + 20);
            v18 = *(v33 + a1);
            v36 = swift_isUniquelyReferenced_nonNull_native();
            *(v33 + a1) = v18;
            if (v36)
            {
              v37 = v40;
              if ((v40 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              goto LABEL_21;
            }

LABEL_27:
            v18 = sub_1004166B8(v18);
            *(v33 + a1) = v18;
            v37 = v40;
            if ((v40 & 0x8000000000000000) != 0)
            {
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_21:
            if (v37 < *(v18 + 16))
            {
              sub_1002E2694(v14, v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v37);
              v31(v41, 0);

              return sub_1002E2828(v14, type metadata accessor for PlaceSummaryViewModelUnit);
            }

LABEL_29:
            __break(1u);
LABEL_30:
            swift_once();
          }
        }
      }

      v29 = 1;
      goto LABEL_14;
    }

    (*(v12 + 56))(KeyPath, 1, 1, v11);
    return sub_100024F64(KeyPath, &qword_10190D6A8);
  }

  return result;
}

uint64_t sub_1002E2694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1002E26F8(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1002E2708(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_1002E2718()
{
  result = qword_101918A20;
  if (!qword_101918A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918A20);
  }

  return result;
}

unint64_t sub_1002E276C()
{
  result = qword_101918A28;
  if (!qword_101918A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918A28);
  }

  return result;
}

uint64_t sub_1002E27C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E2828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002E298C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002E29D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E2A3C()
{
  result = GEOConfigGetDouble();
  qword_10195FEA8 = v1;
  return result;
}

uint64_t sub_1002E2A6C()
{
  result = GEOConfigGetInteger();
  qword_10195FEB0 = result;
  return result;
}

uint64_t sub_1002E2A9C()
{
  result = GEOConfigGetInteger();
  qword_10195FEB8 = result;
  return result;
}

uint64_t sub_1002E2ACC()
{
  result = GEOConfigGetUInteger();
  qword_10195FEC0 = result;
  return result;
}

uint64_t sub_1002E2AFC()
{
  result = GEOConfigGetDouble();
  qword_10195FED0 = v1;
  return result;
}

uint64_t sub_1002E2B2C()
{
  result = GEOConfigGetDouble();
  qword_10195FED8 = v1;
  return result;
}

uint64_t sub_1002E2B5C()
{
  result = GEOConfigGetDouble();
  qword_10195FEE8 = v1;
  return result;
}

uint64_t sub_1002E2B8C()
{
  result = GEOConfigGetDouble();
  qword_10195FEF0 = v1;
  return result;
}

void sub_1002E2BBC()
{
  v1 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___msgRoutine;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___msgRoutine);
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = MapsSuggestionsResourceDepotForMapsProcess();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 oneRoutine];

    if (v5)
    {
      v6 = *(v0 + v1);
      *(v0 + v1) = v5;
      v5;

      v2 = 0;
LABEL_5:
      v7 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1002E2C5C()
{
  v1 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___observers;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___observers);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps20MapsFavoritesManager____lazy_storage___observers);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = type metadata accessor for MapsFavoritesManagerObserverHashTable();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR____TtC4Maps37MapsFavoritesManagerObserverHashTable_onRegisterObserver];
    *v8 = 0;
    v8[1] = 0;
    v9 = &v7[OBJC_IVAR____TtC4Maps37MapsFavoritesManagerObserverHashTable_onUnregisterObserver];
    *v8 = sub_1002F1A84;
    v8[1] = v4;
    *v9 = sub_1002F1AB4;
    v9[1] = v5;
    v14.receiver = v7;
    v14.super_class = v6;
    v10 = objc_msgSendSuper2(&v14, "initWithProtocol:queue:", &OBJC_PROTOCOL___HomeDataProvidingObserver, 0);
    v11 = *(v0 + v1);
    *(v0 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_1002E2DC8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

uint64_t sub_1002E3220(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__setupButtons;
  swift_beginAccess();
  v4 = *(v1 + v3);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));

  v6 = *a1;
  swift_beginAccess();
  v7 = *(v1 + v6);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  sub_100054B58(v8);
  return v5;
}

void sub_1002E3378(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  if (*&v2[OBJC_IVAR____TtC4Maps20MapsFavoritesManager_mapViewMode] != a1)
  {
    if (qword_101906668 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_10195FE88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "ViewMode changed", v10, 2u);
    }

    v11 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__hasInitialData;
    swift_beginAccess();
    v12 = *&v2[v11];

    os_unfair_lock_lock((v12 + 20));
    v13 = *(v12 + 16);
    os_unfair_lock_unlock((v12 + 20));

    if (v13 == 1)
    {
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v2;
      v16 = v2;
      sub_10020AAE4(0, 0, v6, &unk_1011F94C0, v15);
    }
  }
}

uint64_t sub_1002E35AC()
{
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FE88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error loading shortcuts %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002E3750(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = type metadata accessor for Date();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002E381C, 0, 0);
}

uint64_t sub_1002E381C()
{
  v39 = v0;
  v1 = v0[28];
  v2 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__needsSuggestions;
  v0[33] = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__needsSuggestions;
  swift_beginAccess();
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 20));
  LODWORD(v2) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  v4 = v0[28];
  if (v2 == 1)
  {
    v5 = _swiftEmptyArrayStorage;
    v0[25] = _swiftEmptyArrayStorage;
    v6 = sub_1002E71BC();
    if (v6)
    {
      v7 = v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[25] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[25] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v5 = v0[25];
    }

    v0[34] = v5;
    Date.init()();
    if (qword_101906678 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v14 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__suggestions;
  if (v0[27])
  {
    swift_beginAccess();
    v15 = *(v4 + v14);

    os_unfair_lock_lock((v15 + 24));
    v16 = *(v15 + 16);

    os_unfair_lock_unlock((v15 + 24));

    v38 = _swiftEmptyArrayStorage;
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (v17)
      {
LABEL_13:
        v37 = v0;
        v18 = 0;
        v0 = (v16 & 0xC000000000000001);
        while (1)
        {
          if (v0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v19 = *(v16 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v22 = v37[27];
          if ([v19 type] == v22)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v18;
          if (v21 == v17)
          {
            v0 = v37;
            v23 = v38;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        swift_once();
LABEL_7:
        v8 = v0[31];
        v9 = v0[29];
        v10 = v0[30];
        Date.addingTimeInterval(_:)();
        v11 = *(v10 + 8);
        v0[35] = v11;
        v0[36] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v11(v8, v9);
        v12 = swift_task_alloc();
        v0[37] = v12;
        *v12 = v0;
        v12[1] = sub_1002E3DE0;

        return sub_1002E745C(sub_1002E4880, 0, sub_1002E48F4, 0);
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_13;
      }
    }

    v23 = _swiftEmptyArrayStorage;
LABEL_30:
  }

  else
  {
    swift_beginAccess();
    v24 = *(v4 + v14);

    os_unfair_lock_lock((v24 + 24));
    v23 = *(v24 + 16);

    os_unfair_lock_unlock((v24 + 24));
  }

  v25 = sub_1002E6AE8(v23);
  swift_bridgeObjectRelease_n();
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100021540(v26, qword_10195FE88);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 134218242;
    if (v25 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 4) = v31;
    *(v29 + 12) = 2080;
    type metadata accessor for MapsFavoriteItem();

    v32 = Array.description.getter();
    v34 = v33;

    v35 = sub_10004DEB8(v32, v34, &v38);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Returning %ld suggested LOIs: %s", v29, 0x16u);
    sub_10004E3D0(v30);
  }

  v36 = v0[1];

  return v36(v25);
}

uint64_t sub_1002E3DE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  (*(v3 + 280))(*(v3 + 256), *(v3 + 232));
  if (v1)
  {
    v5 = sub_1002E4808;
  }

  else
  {
    v5 = sub_1002E3F58;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1002E3F58()
{
  v63 = v0;
  v60 = v0 + 208;
  v1 = *(v0 + 304);
  v62[0] = _swiftEmptyArrayStorage;
  v2 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
LABEL_43:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v4 = *(v0 + 304);
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v1;
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v1 = v4 + 32;
  v61 = _swiftEmptyArrayStorage;
  while (v3 != v5)
  {
    if (v6)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= v2[2])
      {
        goto LABEL_40;
      }

      v7 = *(v1 + 8 * v5);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v10 = type metadata accessor for MapsFavoriteItem();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_cachedSubtitle];
    *v12 = 0;
    v12[1] = 0;
    v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isUpdatingETA] = 0;
    v13 = &v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_analyticsGrouping];
    *v13 = 0x6966654472657355;
    v13[1] = 0xEB0000000064656ELL;
    *&v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_number] = 0;
    v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] = 0;
    v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted] = 0;
    v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere] = 0;
    v14 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isMeCardWritebackEnabled;
    if (qword_1019066B0 != -1)
    {
      v59 = v11;
      swift_once();
      v11 = v59;
    }

    v11[v14] = byte_10195FEE0;
    *&v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_transportType] = 0;
    *&v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] = v8;
    *(v0 + 184) = v11;
    *(v0 + 192) = v10;
    ++v5;
    if (objc_msgSendSuper2((v0 + 184), "init"))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v61 = v62[0];
      v5 = v9;
    }
  }

  sub_100054B58(v61);
  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100021540(v16, qword_10195FE88);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v62[0] = v20;
    *v19 = 134218242;
    swift_beginAccess();
    v21 = *(v0 + 200);
    v22 = v16;
    if (v21 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    type metadata accessor for MapsFavoriteItem();

    v24 = Array.description.getter();
    v26 = v25;

    v27 = sub_10004DEB8(v24, v26, v62);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Fetched %ld suggested items: %s", v19, 0x16u);
    sub_10004E3D0(v20);

    v16 = v22;
  }

  else
  {
  }

  v28 = *(v0 + 312);
  v29 = *(v0 + 224);
  swift_beginAccess();
  v30 = *(v0 + 200);
  v31 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__suggestions;
  swift_beginAccess();
  *(v0 + 208) = v30;
  v32 = *(v29 + v31);
  *(swift_task_alloc() + 16) = v60;

  os_unfair_lock_lock((v32 + 24));
  sub_1002F1E04((v32 + 16));
  os_unfair_lock_unlock((v32 + 24));
  if (!v28)
  {
    v33 = *(v0 + 264);
    v34 = *(v0 + 224);

    swift_endAccess();
    swift_beginAccess();
    v35 = *(v34 + v33);
    os_unfair_lock_lock((v35 + 20));
    *(v35 + 16) = 0;
    os_unfair_lock_unlock((v35 + 20));
    swift_endAccess();

    v36 = *(v0 + 224);
    v37 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__suggestions;
    if (*(v0 + 216))
    {
      swift_beginAccess();
      v38 = *(v36 + v37);

      os_unfair_lock_lock((v38 + 24));
      v1 = *(v38 + 16);

      os_unfair_lock_unlock((v38 + 24));

      v62[0] = _swiftEmptyArrayStorage;
      if (v1 >> 62)
      {
        v39 = _CocoaArrayWrapper.endIndex.getter();
        if (v39)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
LABEL_27:
          v60 = v16;
          v40 = 0;
          v41 = v1 & 0xFFFFFFFFFFFFFF8;
          v2 = &selRef_traceControlView_setPlaying_;
          while (1)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v40 >= *(v41 + 16))
              {
                goto LABEL_42;
              }

              v42 = *(v1 + 8 * v40 + 32);
            }

            v43 = v42;
            v44 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_41;
            }

            v45 = *(v0 + 216);
            if ([v42 type] == v45)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v41 = v1 & 0xFFFFFFFFFFFFFF8;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v40;
            if (v44 == v39)
            {
              v46 = v62[0];
              p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
              v16 = v60;
              goto LABEL_47;
            }
          }
        }
      }

      v46 = _swiftEmptyArrayStorage;
LABEL_47:
    }

    else
    {
      swift_beginAccess();
      v47 = *(v36 + v37);

      os_unfair_lock_lock((v47 + 24));
      v46 = *(v47 + 16);

      os_unfair_lock_unlock((v47 + 24));
    }

    v48 = sub_1002E6AE8(v46);
    swift_bridgeObjectRelease_n();
    if (p_cache[205] != -1)
    {
      swift_once();
    }

    sub_100021540(v16, qword_10195FE88);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v62[0] = v52;
      *v51 = 134218242;
      if (v48 >> 62)
      {
        v53 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v53 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v51 + 4) = v53;
      *(v51 + 12) = 2080;
      type metadata accessor for MapsFavoriteItem();

      v54 = Array.description.getter();
      v56 = v55;

      v57 = sub_10004DEB8(v54, v56, v62);

      *(v51 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Returning %ld suggested LOIs: %s", v51, 0x16u);
      sub_10004E3D0(v52);
    }

    v58 = *(v0 + 8);

    v58(v48);
  }
}

uint64_t sub_1002E4808()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1002E4880(void *a1)
{
  v1 = [a1 visitCount];
  if (qword_101906680 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  return v1 >= qword_10195FEB0;
}

id sub_1002E48F4(void *a1)
{
  v2 = [a1 visitCount];
  if (qword_101906688 != -1)
  {
    v4 = v2;
    swift_once();
    v2 = v4;
  }

  if (v2 >= qword_10195FEB8)
  {
    result = [a1 type];
    if (!result)
    {
      return result;
    }

    if ([a1 type] != 1)
    {
      return ([a1 type] != 2);
    }
  }

  return 0;
}

uint64_t sub_1002E4B34(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1002E4BF0;

  return sub_1002E3750(a1);
}

uint64_t sub_1002E4BF0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for MapsFavoriteItem();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

id sub_1002E4D7C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000CE6B8(&unk_101926870);
  __chkstk_darwin(v60);
  v59 = &v45 - v6;
  v7 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v51 = a1;
  if (![a1 _geoMapItem])
  {
    return 0;
  }

  v54 = v9;
  v46 = swift_unknownObjectRetain();
  v17 = [v46 _clientAttributes];
  if (v17 && (v18 = v17, v19 = [v17 mapsSyncAttributes], v18, v19) && (v20 = objc_msgSend(v19, "mapsSyncIdentifier"), v19, v20))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v4 + 56))(v16, 1, 1, v3);
    swift_unknownObjectRelease();
  }

  v21 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v22 = *(v1 + v21);

  os_unfair_lock_lock((v22 + 24));
  v23 = *(v22 + 16);

  os_unfair_lock_unlock((v22 + 24));

  if (v23 >> 62)
  {
    goto LABEL_40;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_41:
    swift_unknownObjectRelease();

    sub_100024F64(v16, &unk_101918E50);
    return 0;
  }

LABEL_9:
  v25 = 0;
  v57 = v24;
  v58 = v23 & 0xC000000000000001;
  v49 = v23 & 0xFFFFFFFFFFFFFF8;
  v26 = (v4 + 48);
  v47 = (v4 + 32);
  v52 = (v4 + 8);
  v53 = v23;
  v27 = &selRef_lowercaseString;
  v55 = v16;
  v56 = (v4 + 48);
  while (1)
  {
    if (v58)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v25 >= *(v49 + 16))
      {
        goto LABEL_39;
      }

      v29 = *(v23 + 8 * v25 + 32);
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v24 = _CocoaArrayWrapper.endIndex.getter();
        if (!v24)
        {
          goto LABEL_41;
        }

        goto LABEL_9;
      }
    }

    v61 = v30;
    v62 = v29;
    dispatch thunk of MapsSyncObject.identifier.getter();
    v4 = v59;
    v31 = *(v60 + 48);
    sub_100240034(v12, v59);
    v32 = v16;
    sub_100240034(v16, v4 + v31);
    v33 = *v26;
    if ((*v26)(v4, 1, v3) == 1)
    {
      sub_100024F64(v12, &unk_101918E50);
      if (v33(v4 + v31, 1, v3) == 1)
      {
        swift_unknownObjectRelease();

        sub_100024F64(v4, &unk_101918E50);
        v16 = v32;
LABEL_36:
        v38 = v62;
        sub_100024F64(v16, &unk_101918E50);
        return v38;
      }

      goto LABEL_23;
    }

    v34 = v54;
    sub_100240034(v4, v54);
    if (v33(v4 + v31, 1, v3) == 1)
    {
      sub_100024F64(v12, &unk_101918E50);
      (*v52)(v34, v3);
      v23 = v53;
LABEL_23:
      sub_100024F64(v4, &unk_101926870);
      v16 = v32;
      goto LABEL_25;
    }

    v35 = v48;
    (*v47)(v48, v4 + v31, v3);
    sub_1000413F0(&qword_101916EA8, &type metadata accessor for UUID);
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    v36 = *v52;
    v37 = v35;
    v16 = v55;
    (*v52)(v37, v3);
    sub_100024F64(v12, &unk_101918E50);
    v36(v34, v3);
    v27 = &selRef_lowercaseString;
    v26 = v56;
    sub_100024F64(v4, &unk_101918E50);
    v23 = v53;
    if (v50)
    {
      swift_unknownObjectRelease();

      goto LABEL_36;
    }

LABEL_25:
    v38 = v62;
    v39 = [v62 v27[165]];
    if (v39)
    {
      break;
    }

    v28 = v38;
LABEL_11:

    ++v25;
    if (v61 == v57)
    {
      goto LABEL_41;
    }
  }

  v40 = v39;
  v28 = [v39 _identifier];

  if (!v28)
  {
    v28 = v38;
    goto LABEL_34;
  }

  v41 = [v51 _geoMapItem];
  if (!v41 || (v42 = [v41 _identifier], swift_unknownObjectRelease(), !v42))
  {

LABEL_32:
    v16 = v55;
LABEL_34:
    v26 = v56;
    goto LABEL_11;
  }

  v43 = [v28 isEqualToGEOMapItemIdentifier:v42];

  if ((v43 & 1) == 0)
  {
    v28 = v38;
    goto LABEL_32;
  }

  sub_100024F64(v55, &unk_101918E50);

  swift_unknownObjectRelease();
  return v38;
}

uint64_t sub_1002E56A8(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1002E575C;

  return sub_1000589D8(a1);
}

uint64_t sub_1002E575C(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1002E58D4()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002E5ADC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002F1E1C;

  return sub_100059160();
}

BOOL sub_1002E5B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch thunk of FavoriteItem.latitude.getter();
  v5 = dispatch thunk of FavoriteItem.longitude.getter();
  v6 = dispatch thunk of FavoriteItem.latitude.getter();
  v7 = dispatch thunk of FavoriteItem.longitude.getter();
  v8 = v7;
  if (!v4)
  {

LABEL_8:
    return 0;
  }

  if (!v5)
  {

    goto LABEL_8;
  }

  if (v6)
  {
    if (v7)
    {
      [v4 doubleValue];
      v10 = v9;
      [v5 doubleValue];
      v12 = [objc_allocWithZone(CLLocation) initWithLatitude:v10 longitude:v11];
      [v12 distanceFromLocation:a3];
      v14 = v13;

      [v6 doubleValue];
      v16 = v15;
      [v8 doubleValue];
      v18 = [objc_allocWithZone(CLLocation) initWithLatitude:v16 longitude:v17];
      [v18 distanceFromLocation:a3];
      v20 = v19;

      return v14 < v20;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1002E5D44(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1002E5E70;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_100056010;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002E5E70()
{
  v0[24] = 0;
  v1 = v0[21];
  sub_100055670(0);
  v2 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[25] = v4;

  os_unfair_lock_unlock((v3 + 24));

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v0[26] = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[26] = v5;
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_mapViewMode;
        v0[27] = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_mapViewMode;
        v0[28] = 0;
        v7 = v0[25];
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v0[27];
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v0[29] = v8;
        v9 = v0[24];
        v10 = *(v0[21] + v6);
        v0[2] = v0;
        v0[3] = sub_1002E60BC;
        v11 = swift_continuation_init();
        v0[17] = sub_1000CE6B8(&unk_10191A930);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_1002E6364;
        v0[13] = &unk_10160FFE0;
        v0[14] = v11;
        [v8 updateSubtitleWithViewMode:v10 currentLocation:v9 completionHandler:v0 + 10];
        v5 = (v0 + 2);
      }

      return _swift_continuation_await(v5);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002E60BC()
{

  return _swift_task_switch(sub_1002E619C, 0, 0);
}

uint64_t sub_1002E619C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 192);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 224) + 1;
    *(v0 + 224) = v6;
    v7 = *(v0 + 200);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v9 = v8;
    *(v0 + 232) = v8;
    v10 = *(v0 + 192);
    v11 = *(*(v0 + 168) + *(v0 + 216));
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1002E60BC;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_1000CE6B8(&unk_10191A930);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1002E6364;
    *(v0 + 104) = &unk_10160FFE0;
    *(v0 + 112) = v12;
    [v9 updateSubtitleWithViewMode:v11 currentLocation:v10 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1002E6364(uint64_t a1)
{
  v1 = *sub_10005E838((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

void sub_1002E6398(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id, uint64_t))
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = a1;
  a4(a3, v8, ObjectType);
  swift_unknownObjectRelease();
}

void sub_1002E641C()
{
  v1 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_isETATimerRunning;
  if ((*(v0 + OBJC_IVAR____TtC4Maps20MapsFavoritesManager_isETATimerRunning) & 1) == 0)
  {
    sub_1002E6808();
    if (v2)
    {
      *(v0 + v1) = 1;
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();
      if (qword_101906668 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100021540(v3, qword_10195FE88);
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v11 = v6;
        *v5 = 136315138;
        swift_unknownObjectRetain();
        sub_1000CE6B8(&qword_101909880);
        v7 = String.init<A>(describing:)();
        v9 = sub_10004DEB8(v7, v8, &v11);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, oslog, v4, "didRegisterObserver: %s | timer resumed", v5, 0xCu);
        sub_10004E3D0(v6);
      }

      else
      {
      }
    }
  }
}

void sub_1002E6610()
{
  v1 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager_isETATimerRunning;
  if (*(v0 + OBJC_IVAR____TtC4Maps20MapsFavoritesManager_isETATimerRunning) == 1)
  {
    sub_1002E6808();
    if ((v2 & 1) == 0)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.suspend()();
      swift_unknownObjectRelease();
      *(v0 + v1) = 0;
      if (qword_101906668 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100021540(v3, qword_10195FE88);
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v11 = v6;
        *v5 = 136315138;
        swift_unknownObjectRetain();
        sub_1000CE6B8(&qword_101909880);
        v7 = String.init<A>(describing:)();
        v9 = sub_10004DEB8(v7, v8, &v11);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, oslog, v4, "didUnregisterObserver: %s | timer suspended", v5, 0xCu);
        sub_10004E3D0(v6);
      }

      else
      {
      }
    }
  }
}

void sub_1002E6808()
{
  v0 = sub_1002E2C5C();
  v1 = [v0 allObservers];

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (v4 < *(v2 + 16))
    {
      sub_10004E374(v5, v8);
      sub_10004E374(v8, v9);
      sub_1000CE6B8(&qword_101918E48);
      if (swift_dynamicCast())
      {
        v6 = [v7 needsETAUpdatesForPinnedPlaces];
        swift_unknownObjectRelease();
        if (v6)
        {

          sub_1000D2BE0(v8, v9);
          goto LABEL_9;
        }
      }

      ++v4;
      sub_10004E3D0(v8);
      v5 += 32;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    memset(v9, 0, sizeof(v9));
LABEL_9:
    sub_100024F64(v9, &unk_101908380);
  }
}

uint64_t sub_1002E6988(uint64_t a1)
{
  v2 = sub_1002E2C5C();
  v3 = [v2 allObservers];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10004E374(v6, v9);
      sub_1000CE6B8(&qword_101909880);
      if (swift_dynamicCast())
      {
        if ([v8 respondsToSelector:"homeDataProvidingObjectDidUpdate:"])
        {
          [v8 homeDataProvidingObjectDidUpdate:a1];
        }

        swift_unknownObjectRelease();
      }

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

void *sub_1002E6AE8(unint64_t a1)
{
  v1 = a1;
  v25 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v3 = 0;
    v19 = v1 & 0xFFFFFFFFFFFFFF8;
    v20 = v1 & 0xC000000000000001;
    v17 = i;
    v18 = v1 + 32;
    while (1)
    {
      if (v20)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v19 + 16))
        {
          goto LABEL_31;
        }

        v4 = *(v18 + 8 * v3);
      }

      v5 = v4;
      v6 = __OFADD__(v3, 1);
      v7 = v3 + 1;
      if (v6)
      {
        break;
      }

      v8 = *(v22 + v21);

      os_unfair_lock_lock((v8 + 24));
      v9 = *(v8 + 16);

      os_unfair_lock_unlock((v8 + 24));

      if (v9 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
        v23 = v7;
        if (v10)
        {
LABEL_13:
          v11 = 0;
          v1 = v9 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v12 = *(v9 + 8 * v11 + 32);
            }

            v13 = v12;
            v14 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            v24 = v12;
            v15 = sub_1002E6D40(&v24, v5);

            if (v15)
            {

              goto LABEL_6;
            }

            ++v11;
            if (v14 == v10)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          break;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v23 = v7;
        if (v10)
        {
          goto LABEL_13;
        }
      }

LABEL_5:

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v3 = v23;
      if (v23 == v17)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002E6D40(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 identifier];
  if (!v9)
  {
    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (!v8)
  {
    if (v13)
    {
LABEL_16:

      goto LABEL_17;
    }

LABEL_29:
    if (qword_101906668 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100021540(v30, qword_10195FE88);
    v31 = v3;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v34 = 136315138;
      v36 = [v31 debugDescription];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_10004DEB8(v37, v39, &v42);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "Removing existing LOI from suggestions: %s", v34, 0xCu);
      sub_10004E3D0(v35);
    }

    return 1;
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  if (v6 == v11 && v8 == v13)
  {

    goto LABEL_29;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_29;
  }

LABEL_17:
  result = [v3 geoMapItem];
  if (!result)
  {
    return result;
  }

  v17 = [result _identifier];
  swift_unknownObjectRelease();
  if (!v17)
  {
    return 0;
  }

  v18 = [a2 geoMapItem];
  if (!v18 || (v19 = [v18 _identifier], swift_unknownObjectRelease(), !v19))
  {

    return 0;
  }

  if (([v17 isEqualToGEOMapItemIdentifier:v19] & 1) == 0)
  {

    return 0;
  }

  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100021540(v20, qword_10195FE88);
  v21 = v3;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v24 = 136315138;
    v25 = [v21 debugDescription];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_10004DEB8(v26, v28, &v42);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Removing existing LOI from suggestions: %s", v24, 0xCu);
    sub_10004E3D0(v41);
  }

  return 1;
}

id sub_1002E71BC()
{
  v1 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0xED00007469736E61;
    if (!i)
    {
      break;
    }

    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v27 = v3;
    while (1)
    {
      if (v7)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_24;
        }

        v9 = *(v3 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v9 type] == 6)
      {
        v12 = [v10 identifier];
        if (v12)
        {
          v13 = v7;
          v14 = i;
          v15 = v12;
          v16 = v5;
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          v20 = v17;
          v5 = v16;
          if (v20 == 0x725479627261654ELL && v19 == v16)
          {

            goto LABEL_21;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          i = v14;
          v7 = v13;
          v3 = v27;
          if (v22)
          {

LABEL_21:

            return 0;
          }
        }
      }

      ++v6;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_19:

  v23 = [objc_allocWithZone(type metadata accessor for MapsFavoriteItem()) init];
  [v23 setType:6];
  v24 = String._bridgeToObjectiveC()();
  [v23 setCustomName:v24];

  v25 = String._bridgeToObjectiveC()();
  [v23 setShortcutIdentifier:v25];

  return v23;
}

uint64_t sub_1002E745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return _swift_task_switch(sub_1002E7484, 0, 0);
}

uint64_t sub_1002E7484()
{
  v0[2] = _swiftEmptyArrayStorage;
  v0[3] = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  v0[11] = v1;
  *(v1 + 16) = xmmword_1011E47C0;
  *(v1 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v1 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:3];
  *(v1 + 48) = [objc_allocWithZone(NSNumber) initWithInteger:5];
  if (qword_101906690 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = qword_10195FEC0;
  v0[12] = qword_10195FEC0;
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v5;
  v6[5] = v4;
  v6[6] = v3;
  v7 = swift_task_alloc();
  v0[14] = v7;
  v8 = sub_1000CE6B8(&qword_101915260);
  v0[15] = v8;
  *v7 = v0;
  v7[1] = sub_1002E7678;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000031, 0x800000010122D1B0, sub_1002F1E34, v6, v8);
}

uint64_t sub_1002E7678()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1002E7D98;
  }

  else
  {

    v2 = sub_1002E7794;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E7794()
{
  sub_100247638(*(v0 + 32));
  v1 = *(v0 + 24);
  *(v0 + 136) = v1;
  v2 = *(v0 + 96);
  if (v1 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if ((v16 & 0x8000000000000000) != 0 || v16 < v2)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v12, v13, v14, v11, v9, v15, v8);
      }

      v49 = *(v0 + 96);
      v1 = v49 - v10;
      if (v49 >= v10)
      {
LABEL_4:
        v5 = *(v0 + 64);
        v4 = *(v0 + 72);
        v6 = swift_task_alloc();
        *(v0 + 144) = v6;
        *(v6 + 16) = *(v0 + 80);
        *(v6 + 32) = v1;
        *(v6 + 40) = v5;
        *(v6 + 48) = v4;
        v7 = swift_task_alloc();
        *(v0 + 152) = v7;
        *v7 = v0;
        v7[1] = sub_1002E7E08;
        v8 = *(v0 + 120);
        v9 = sub_1002F1E38;
        v10 = v0 + 40;
        v11 = 0x800000010122D1F0;
        v12 = 0;
        v13 = 0;
        v14 = 0xD000000000000039;
        v15 = v6;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v12, v13, v14, v11, v9, v15, v8);
      }

      goto LABEL_42;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < v2)
    {
      v1 = v2 - v3;
      if (v2 >= v3)
      {
        goto LABEL_4;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      v18 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 184) = v18;
      if (!v18)
      {
        goto LABEL_44;
      }

      goto LABEL_11;
    }
  }

  *(v0 + 168) = v1;
  *(v0 + 176) = v1;
  if (v1 >> 62)
  {
    goto LABEL_43;
  }

  v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 184) = v18;
  if (!v18)
  {
LABEL_44:

    v50 = *(v0 + 8);

    return v50(_swiftEmptyArrayStorage);
  }

LABEL_11:
  if (v18 < 1)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v19 = 0;
  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  *&v17 = 67109376;
  v51 = v17;
  while (1)
  {
    *(v0 + 192) = v19;
    v23 = (*(v0 + 168) & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(*(v0 + 176) + 8 * v19 + 32);
    v1 = v23;
    *(v0 + 200) = v23;
    v24 = [v23 mapItem];
    *(v0 + 208) = v24;
    if (v24)
    {
      break;
    }

    if (p_cache[205] != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100021540(v25, qword_10195FE88);
    v22 = v1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = p_cache;
      v29 = swift_slowAlloc();
      *v29 = v51;
      v30 = [v22 mapItemHandle];
      if (v30)
      {
        v31 = v30;
        v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        sub_1000D41B4(v32, v34);
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      *(v29 + 4) = v35;

      *(v29 + 8) = 1024;
      v36 = [v22 mapItem];
      if (v36)
      {

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      p_cache = v28;
      *(v29 + 10) = v37;

      _os_log_impl(&_mh_execute_header, v26, v27, "Something's wrong: mapItemHandle:%{BOOL}d, mapItem:%{BOOL}d", v29, 0xEu);

      v21 = v26;
    }

    else
    {

      v21 = v22;
      v22 = v26;
    }

    v19 = *(v0 + 192) + 1;
    if (v19 == *(v0 + 184))
    {
      goto LABEL_44;
    }
  }

  v38 = v24;
  type metadata accessor for FavoriteItem();
  v39 = MapsSyncObject.__allocating_init()();
  *(v0 + 216) = v39;
  v40 = [objc_opt_self() mapItemStorageForGEOMapItem:v38];
  dispatch thunk of FavoriteItem.mapItemStorage.setter();
  v41 = [v1 identifierString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of FavoriteItem.shortcutIdentifier.setter();
  v42 = [v1 preferredName];
  if (v42)
  {
    v43 = v42;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  dispatch thunk of FavoriteItem.customName.setter();
  v44 = [v1 type];
  if (v44 < -32768)
  {
    goto LABEL_48;
  }

  if (v44 < 0x8000)
  {
    dispatch thunk of FavoriteItem.type.setter();
    if ([v1 isLOIFromMeCard])
    {
      v45 = 3;
    }

    else
    {
      v45 = 0xFFFFFFFFLL;
    }

    [v39 setSourceType:v45];
    v46 = v39;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_37:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(v0 + 224) = *(v0 + 16);
  v47 = swift_task_alloc();
  *(v0 + 232) = v47;
  *v47 = v0;
  v47[1] = sub_1002E8464;

  return sub_1002E89F0(v1);
}

uint64_t sub_1002E7D98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E7E08()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1002E83EC;
  }

  else
  {

    v2 = sub_1002E7F30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E7F30()
{
  sub_100247638(v1[5]);
  v3 = v1[3];
  v1[21] = v3;
  v1[22] = v3;
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[23] = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_33:

    v35 = v1[1];

    return v35(_swiftEmptyArrayStorage);
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  v1[23] = v4;
  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v5 = 0;
  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  *&v2 = 67109376;
  v36 = v2;
  while (1)
  {
    v1[24] = v5;
    v9 = (v1[21] & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v1[22] + 8 * v5 + 32);
    v0 = v9;
    v1[25] = v9;
    v10 = [v9 mapItem];
    v1[26] = v10;
    if (v10)
    {
      break;
    }

    if (p_cache[205] != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100021540(v11, qword_10195FE88);
    v8 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = p_cache;
      v15 = swift_slowAlloc();
      *v15 = v36;
      v16 = [v8 mapItemHandle];
      if (v16)
      {
        v17 = v16;
        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        sub_1000D41B4(v18, v20);
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      *(v15 + 4) = v21;

      *(v15 + 8) = 1024;
      v22 = [v8 mapItem];
      if (v22)
      {

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      p_cache = v14;
      *(v15 + 10) = v23;

      _os_log_impl(&_mh_execute_header, v12, v13, "Something's wrong: mapItemHandle:%{BOOL}d, mapItem:%{BOOL}d", v15, 0xEu);

      v7 = v12;
    }

    else
    {

      v7 = v8;
      v8 = v12;
    }

    v5 = v1[24] + 1;
    if (v5 == v1[23])
    {
      goto LABEL_33;
    }
  }

  v24 = v10;
  type metadata accessor for FavoriteItem();
  v25 = MapsSyncObject.__allocating_init()();
  v1[27] = v25;
  v26 = [objc_opt_self() mapItemStorageForGEOMapItem:v24];
  dispatch thunk of FavoriteItem.mapItemStorage.setter();
  v27 = [v0 identifierString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of FavoriteItem.shortcutIdentifier.setter();
  v28 = [v0 preferredName];
  if (v28)
  {
    v29 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  dispatch thunk of FavoriteItem.customName.setter();
  v30 = [v0 type];
  if (v30 < -32768)
  {
    goto LABEL_37;
  }

  if (v30 < 0x8000)
  {
    dispatch thunk of FavoriteItem.type.setter();
    if ([v0 isLOIFromMeCard])
    {
      v31 = 3;
    }

    else
    {
      v31 = 0xFFFFFFFFLL;
    }

    [v25 setSourceType:v31];
    v32 = v25;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_29:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1[28] = v1[2];
  v33 = swift_task_alloc();
  v1[29] = v33;
  *v33 = v1;
  v33[1] = sub_1002E8464;

  return sub_1002E89F0(v0);
}

uint64_t sub_1002E83EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E8464()
{

  return _swift_task_switch(sub_1002E8560, 0, 0);
}

uint64_t sub_1002E8560()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);

  v35 = *(v0 + 224);
  v3 = *(v0 + 192) + 1;
  if (v3 == *(v0 + 184))
  {
LABEL_2:

    v4 = *(v0 + 8);

    return v4(v35);
  }

  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  while (1)
  {
    *(v0 + 192) = v3;
    v9 = (*(v0 + 168) & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(*(v0 + 176) + 8 * v3 + 32);
    v10 = v9;
    *(v0 + 200) = v9;
    v11 = [v9 mapItem];
    *(v0 + 208) = v11;
    if (v11)
    {
      break;
    }

    if (p_cache[205] != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_10195FE88);
    v8 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = p_cache;
      v16 = swift_slowAlloc();
      *v16 = 67109376;
      v17 = [v8 mapItemHandle];
      if (v17)
      {
        v18 = v17;
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        sub_1000D41B4(v19, v21);
        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      *(v16 + 4) = v22;

      *(v16 + 8) = 1024;
      v23 = [v8 mapItem];
      if (v23)
      {

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      p_cache = v15;
      *(v16 + 10) = v24;

      _os_log_impl(&_mh_execute_header, v13, v14, "Something's wrong: mapItemHandle:%{BOOL}d, mapItem:%{BOOL}d", v16, 0xEu);

      v7 = v13;
    }

    else
    {

      v7 = v8;
      v8 = v13;
    }

    v3 = *(v0 + 192) + 1;
    if (v3 == *(v0 + 184))
    {
      goto LABEL_2;
    }
  }

  v25 = v11;
  type metadata accessor for FavoriteItem();
  v26 = MapsSyncObject.__allocating_init()();
  *(v0 + 216) = v26;
  v27 = [objc_opt_self() mapItemStorageForGEOMapItem:v25];
  dispatch thunk of FavoriteItem.mapItemStorage.setter();
  v28 = [v10 identifierString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of FavoriteItem.shortcutIdentifier.setter();
  v29 = [v10 preferredName];
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  dispatch thunk of FavoriteItem.customName.setter();
  v31 = [v10 type];
  if (v31 < -32768)
  {
    __break(1u);
  }

  else if (v31 < 0x8000)
  {
    dispatch thunk of FavoriteItem.type.setter();
    if ([v10 isLOIFromMeCard])
    {
      v32 = 3;
    }

    else
    {
      v32 = 0xFFFFFFFFLL;
    }

    [v26 setSourceType:v32];
    v33 = v26;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_35:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_30:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(v0 + 224) = *(v0 + 16);
  v34 = swift_task_alloc();
  *(v0 + 232) = v34;
  *v34 = v0;
  v34[1] = sub_1002E8464;

  return sub_1002E89F0(v10);
}

uint64_t sub_1002E89F0(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return _swift_task_switch(sub_1002E8A10, 0, 0);
}

uint64_t sub_1002E8A10()
{
  v62 = v0;
  v1 = [v0[21] addressIdentifier];
  if (!v1)
  {
LABEL_21:
    v25 = v0[1];

    return v25();
  }

  v2 = v0[22];
  v3 = v1;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  v0[23] = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v56 = v2;
  v57 = v6;
  v7 = *&v2[v6];

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  if (v8 >> 62)
  {
    goto LABEL_49;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_4:
  v58 = v5;
  v10 = 4;
  while (1)
  {
    v11 = v10 - 4;
    v0[24] = (v10 - 4);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v12 = *(v8 + 8 * v10);
    }

    v13 = v12;
    v14 = [v12 identifier];
    if (!v14)
    {

      v24 = v10 - 3;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_47;
      }

      goto LABEL_19;
    }

    v60 = v10 - 4;
    v15 = v0;
    v16 = v14;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = v17;
    v5 = v58;
    if (v20 == v59 && v19 == v58)
    {
      break;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v10 - 4;
    if (v22)
    {
      goto LABEL_25;
    }

    v24 = v10 - 3;
    if (__OFADD__(v60, 1))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }

LABEL_19:
    ++v10;
    if (v24 == v9)
    {
      goto LABEL_20;
    }
  }

  v23 = v10 - 4;
LABEL_25:

  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v32 = v0[21];
  v27 = v0[22];
  v28 = type metadata accessor for Logger();
  v0[25] = sub_100021540(v28, qword_10195FE88);
  v29 = v27;
  v30 = v32;
  v31 = Logger.logObject.getter();
  LOBYTE(v32) = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_36;
  }

  v0 = &selRef_hasMarkedText;
  v29 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  *v29 = 136315394;
  v33 = *&v56[v57];

  os_unfair_lock_lock((v33 + 24));
  v34 = *(v33 + 16);

  os_unfair_lock_unlock((v33 + 24));

  if ((v34 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if (v60 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_continuation_await(v35);
  }

  v36 = *(v34 + 8 * v10);
  while (2)
  {
    v37 = v36;

    v38 = [v37 identifier];

    if (v38)
    {
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    v42 = v15[21];
    v43 = sub_10004DEB8(v39, v41, &v61);

    *(v29 + 4) = v43;
    *(v29 + 6) = 2080;
    v44 = [v42 v0[506]];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = sub_10004DEB8(v45, v47, &v61);
    v0 = v15;

    *(v29 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v31, v32, "Remapping shortcut identifier <%s> to <%s>", v29, 0x16u);
    swift_arrayDestroy();

    v23 = v10 - 4;
LABEL_36:
    v15 = v56;
    v31 = *&v56[v57];

    os_unfair_lock_lock((v31 + 24));
    v32 = *(v31 + 16);

    os_unfair_lock_unlock((v31 + 24));

    if ((v32 & 0xC000000000000001) == 0)
    {
      if (v23 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v49 = *(v32 + 8 * v10);
        goto LABEL_39;
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

  v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_39:
  v50 = v49;
  v29 = v0[21];

  v51 = [v29 identifierString];
  if (!v51)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v52;
    v51 = String._bridgeToObjectiveC()();
  }

  [v50 setIdentifier:v51];

  v31 = *&v56[v57];

  os_unfair_lock_lock((v31 + 24));
  v32 = *(v31 + 16);

  os_unfair_lock_unlock((v31 + 24));

  if ((v32 & 0xC000000000000001) == 0)
  {
    if (v23 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v53 = *(v32 + 8 * v10);
      goto LABEL_44;
    }

    goto LABEL_54;
  }

  v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_44:
  v54 = v53;
  v0[26] = v53;

  v0[2] = v0;
  v0[3] = sub_1002E90F0;
  v55 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&qword_10191CEA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003956B0;
  v0[13] = &unk_1016100D0;
  v0[14] = v55;
  [v54 saveWithCompletionHandler:v0 + 10];
  v35 = (v0 + 2);

  return _swift_continuation_await(v35);
}

uint64_t sub_1002E90F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1002E9260;
  }

  else
  {
    v2 = sub_1002E9200;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E9200()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1002E9260()
{
  v1 = v0[26];
  v2 = v0[22];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[22];
    v6 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v7 + v6);

    os_unfair_lock_lock((v10 + 24));
    v11 = *(v10 + 16);

    os_unfair_lock_unlock((v10 + 24));

    result = v0[24];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (result >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v13 = *(v11 + 8 * result + 32);
    }

    v14 = v13;

    *(v8 + 4) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save favorite %@", v8, 0xCu);
    sub_100024F64(v9, &qword_1019144F0);
  }

  v15 = v0[1];

  return v15();
}

void sub_1002E9430(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  if (GeoServicesConfig_TransportTypePreference == a1 && *(&GeoServicesConfig_TransportTypePreference + 1) == a2)
  {
    if (qword_101906668 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_10195FE88);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Transport preference changed", v13, 2u);
    }

    v14 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__hasInitialData;
    swift_beginAccess();
    v15 = *&v3[v14];

    os_unfair_lock_lock((v15 + 20));
    v16 = *(v15 + 16);
    os_unfair_lock_unlock((v15 + 20));

    if (v16 == 1)
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v3;
      v19 = v3;
      sub_10020AAE4(0, 0, v8, &unk_1011F93C8, v18);
    }
  }
}

uint64_t sub_1002E96E4()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__needsSuggestions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = 1;
  os_unfair_lock_unlock((v3 + 20));
  swift_endAccess();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1002E97B8;

  return sub_100059160();
}

uint64_t sub_1002E97B8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1002E992C;
  }

  else
  {
    v2 = sub_1002E98CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E98CC()
{
  sub_100054628();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E992C()
{
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FE88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error loading shortcuts %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_1002E9DC0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002E9E1C()
{
  v1[9] = v0;
  sub_1000CE6B8(&qword_10190EBD0);
  v1[10] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002E9F14, 0, 0);
}

uint64_t sub_1002E9F14()
{
  type metadata accessor for MapsSyncQueryPredicate();
  static MapsSyncQueryPredicate.withFormat(_:_:)();
  v1 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v2 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[14] = v2;
  type metadata accessor for FavoriteItemRequest();
  v0[15] = FavoriteItemRequest.__allocating_init()();
  v6 = (&async function pointer to dispatch thunk of MapsSyncRequest.count(options:) + async function pointer to dispatch thunk of MapsSyncRequest.count(options:));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1002EA040;

  return v6(v2);
}

uint64_t sub_1002EA040(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1002EC62C;
  }

  else
  {
    v6 = *(v4 + 120);

    *(v4 + 144) = a1;
    v5 = sub_1002EA174;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002EA174()
{
  if (v0[18] < 1)
  {
    v0[19] = type metadata accessor for MapsSyncService();
    v0[20] = static MapsSyncService.shared.getter();
    v10 = (&async function pointer to dispatch thunk of MapsSyncService.cloudKitSyncAllowed() + async function pointer to dispatch thunk of MapsSyncService.cloudKitSyncAllowed());
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_1002EA354;

    return v10();
  }

  else
  {
    if (qword_101906668 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100021540(v1, qword_10195FE88);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[14];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[Migration] skipping migration, existing favorites present", v6, 2u);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1002EA354(char a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_1002EC6AC;
  }

  else
  {

    *(v4 + 464) = a1 & 1;
    v5 = sub_1002EA488;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002EA488()
{
  if (*(v0 + 464) == 1)
  {
    *(v0 + 184) = static MapsSyncService.shared.getter();
    v18 = (&async function pointer to dispatch thunk of MapsSyncService.lastSyncDate() + async function pointer to dispatch thunk of MapsSyncService.lastSyncDate());
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = sub_1002EA7B4;
    v2 = *(v0 + 104);

    return v18(v2);
  }

  else
  {
    v4 = [objc_allocWithZone(MapsSuggestionsMapsSyncShortcutStorage) init];
    *(v0 + 208) = v4;
    v5 = type metadata accessor for MapsFavoritesSuggestor();
    *(v0 + 16) = objc_allocWithZone(v5);
    *(v0 + 24) = v5;
    v6 = objc_msgSendSuper2((v0 + 16), "init");
    *(v0 + 216) = v6;
    v7 = [objc_allocWithZone(MapsSuggestionsRealContactsConnector) init];
    *(v0 + 224) = v7;
    v8 = [objc_allocWithZone(MapsSuggestionsRealNetworkRequester) initFromResourceDepot:0];
    *(v0 + 232) = v8;
    v9 = [objc_allocWithZone(MapsSuggestionsContacts) initWithConnector:v7 networkRequester:v8];
    *(v0 + 240) = v9;
    v10 = [objc_allocWithZone(MapsSuggestionsRealMapsSyncConnector) init];
    *(v0 + 248) = v10;
    v11 = [objc_allocWithZone(MapsSuggestionsMapsSync) initWithMapsSyncConnector:v10];
    *(v0 + 256) = v11;
    v12 = [objc_allocWithZone(MapsSuggestionsRealRoutineConnector) init];
    *(v0 + 264) = v12;
    v13 = [objc_allocWithZone(MapsSuggestionsRoutine) initWithRoutineConnector:v12 networkRequester:v8 mapsSync:v11];
    *(v0 + 272) = v13;
    v14 = [objc_allocWithZone(MapsSuggestionsShortcutManager) initWithStorage:v4 suggestor:v6 contacts:v9 routine:v13 mapsSync:v11 usingMyPlaces:0];
    *(v0 + 280) = v14;
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *(v15 + 16) = v14;
    v16 = swift_task_alloc();
    *(v0 + 296) = v16;
    v17 = sub_1000CE6B8(&unk_101918DF0);
    *v16 = v0;
    v16[1] = sub_1002EAB68;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 32, 0, 0, 0xD000000000000012, 0x800000010122D190, sub_1002EEF5C, v15, v17);
  }
}

uint64_t sub_1002EA7B4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1002EC72C;
  }

  else
  {
    v4 = v2[23];
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = sub_1002EA8E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EA8E8()
{
  v1 = [objc_allocWithZone(MapsSuggestionsMapsSyncShortcutStorage) init];
  v0[13].receiver = v1;
  v2 = type metadata accessor for MapsFavoritesSuggestor();
  v0[1].receiver = objc_allocWithZone(v2);
  v0[1].super_class = v2;
  v3 = objc_msgSendSuper2(v0 + 1, "init");
  v0[13].super_class = v3;
  v4 = [objc_allocWithZone(MapsSuggestionsRealContactsConnector) init];
  v0[14].receiver = v4;
  v5 = [objc_allocWithZone(MapsSuggestionsRealNetworkRequester) initFromResourceDepot:0];
  v0[14].super_class = v5;
  v6 = [objc_allocWithZone(MapsSuggestionsContacts) initWithConnector:v4 networkRequester:v5];
  v0[15].receiver = v6;
  v7 = [objc_allocWithZone(MapsSuggestionsRealMapsSyncConnector) init];
  v0[15].super_class = v7;
  v8 = [objc_allocWithZone(MapsSuggestionsMapsSync) initWithMapsSyncConnector:v7];
  v0[16].receiver = v8;
  v9 = [objc_allocWithZone(MapsSuggestionsRealRoutineConnector) init];
  v0[16].super_class = v9;
  v10 = [objc_allocWithZone(MapsSuggestionsRoutine) initWithRoutineConnector:v9 networkRequester:v5 mapsSync:v8];
  v0[17].receiver = v10;
  v11 = [objc_allocWithZone(MapsSuggestionsShortcutManager) initWithStorage:v1 suggestor:v3 contacts:v6 routine:v10 mapsSync:v8 usingMyPlaces:0];
  v0[17].super_class = v11;
  v12 = swift_task_alloc();
  v0[18].receiver = v12;
  *(v12 + 16) = v11;
  v13 = swift_task_alloc();
  v0[18].super_class = v13;
  v14 = sub_1000CE6B8(&unk_101918DF0);
  *v13 = v0;
  *(v13 + 1) = sub_1002EAB68;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[2], 0, 0, 0xD000000000000012, 0x800000010122D190, sub_1002EEF5C, v12, v14);
}

uint64_t sub_1002EAB68()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002EAFB8;
  }

  else
  {

    v2 = sub_1002EAC84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EAC84()
{
  v17 = v0;
  v0[39] = v0[4];
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[40] = sub_100021540(v1, qword_10195FE88);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    sub_100014C84(0, &qword_101918E00);
    v6 = Array.description.getter();
    v8 = sub_10004DEB8(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Migration] Shortcuts from MSg: %s", v4, 0xCu);
    sub_10004E3D0(v5);
  }

  v0[5] = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101908400);
  v9 = swift_allocObject();
  v0[41] = v9;
  *(v9 + 16) = xmmword_1011E47C0;
  *(v9 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v9 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:3];
  *(v9 + 48) = [objc_allocWithZone(NSNumber) initWithInteger:5];
  if (qword_101906690 != -1)
  {
    swift_once();
  }

  v10 = v0[9];
  v11 = qword_10195FEC0;
  v0[42] = qword_10195FEC0;
  v12 = swift_task_alloc();
  v0[43] = v12;
  v12[2] = v10;
  v12[3] = v9;
  v12[4] = v11;
  v12[5] = 0;
  v12[6] = 0;
  v13 = swift_task_alloc();
  v0[44] = v13;
  v14 = sub_1000CE6B8(&qword_101915260);
  v0[45] = v14;
  *v13 = v0;
  v13[1] = sub_1002EB0A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD000000000000031, 0x800000010122D1B0, sub_1002EEF64, v12, v14);
}

uint64_t sub_1002EAFB8()
{
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v12 = v0[26];
  v13 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002EB0A0()
{
  *(*v1 + 368) = v0;

  if (v0)
  {

    v2 = sub_1002EB49C;
  }

  else
  {

    v2 = sub_1002EB1F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EB1F4()
{
  sub_100247638(v0[6]);
  v8 = v0[5];
  v0[47] = v8;
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v0[42];
  v11 = v10 - v9;
  if (v10 < v9)
  {
LABEL_9:
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v1, v2, v3, v4, v5, v6, v7);
  }

  v12 = v0[41];
  v13 = v0[9];
  v14 = swift_task_alloc();
  v0[48] = v14;
  v14[2] = v13;
  v14[3] = v12;
  v14[5] = 0;
  v14[6] = 0;
  v14[4] = v11;
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_1002EB348;
  v7 = v0[45];
  v5 = sub_1002EEF7C;
  v9 = (v0 + 7);
  v4 = 0x800000010122D1F0;
  v1 = 0;
  v2 = 0;
  v3 = 0xD000000000000039;
  v6 = v14;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1002EB348()
{
  *(*v1 + 400) = v0;

  if (v0)
  {

    v2 = sub_1002EC028;
  }

  else
  {

    v2 = sub_1002EB578;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EB49C()
{
  v1 = *(v0 + 272);
  v12 = *(v0 + 280);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002EB578()
{
  v82 = v0;
  v1 = v0[39];
  sub_100247638(v0[7]);
  v0[8] = _swiftEmptyArrayStorage;
  v3 = v0 + 8;
  if (v1 >> 62)
  {
    goto LABEL_62;
  }

  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_63:

    v79 = v1 & 0xC000000000000001;
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

LABEL_3:
  v6 = 0;
  v79 = v1 & 0xC000000000000001;
  v76 = v0[39] + 32;
  v73 = (v0[12] + 56);
  v7 = _swiftEmptyArrayStorage;
  v1 = 1;
  v8 = &selRef_invertedButton;
  *&v2 = 136315138;
  v70 = v2;
  v74 = v5;
  v75 = v0;
  v71 = v4;
  v72 = v3;
  do
  {
    while (1)
    {
      if (v79)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_59;
        }

        v9 = *(v76 + 8 * v6);
      }

      v10 = v9;
      if (__OFADD__(v6++, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v4 = v1 & 0xFFFFFFFFFFFFFF8;
        v5 = _CocoaArrayWrapper.endIndex.getter();
        if (!v5)
        {
          goto LABEL_63;
        }

        goto LABEL_3;
      }

      v12 = [v9 type];
      if (v12 <= 5 && ((1 << v12) & 0x2C) != 0 && ([v10 v8[306]] & 1) == 0)
      {
        v14 = [v10 geoMapItem];
        if (v14)
        {
          break;
        }
      }

      if (v6 == v5)
      {
        goto LABEL_55;
      }
    }

    v77 = v6;

    v3 = type metadata accessor for FavoriteItem();
    v78 = MapsSyncObject.__allocating_init()();
    v15 = v0[5];
    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (!v16)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_39;
      }
    }

    v1 = 0;
    v0 = (v15 & 0xFFFFFFFFFFFFFF8);
    v17 = v10;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v20 = *(v15 + 8 * v1 + 32);
      }

      v21 = v20;
      v22 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if ([v20 isLOIFromMeCard])
      {
        break;
      }

LABEL_22:

      ++v1;
      v10 = v17;
      if (v22 == v16)
      {
        goto LABEL_39;
      }
    }

    v23 = [v21 mapItem];
    v24 = [v23 _identifier];

    if (!v24)
    {
      goto LABEL_21;
    }

    v25 = [v21 mapItem];
    v26 = [v25 _identifier];

    v27 = [v17 geoMapItem];
    v28 = [v27 _identifier];

    if (!v26)
    {
      if (!v28)
      {
        goto LABEL_35;
      }

      goto LABEL_20;
    }

    if (!v28)
    {
      v28 = v26;
LABEL_20:

LABEL_21:
      v3 = [v21 mapItem];
      v18 = [v17 geoMapItem];
      IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

      if (IsEqualToMapItemForPurpose)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    sub_100014C84(0, &qword_101919ED0);
    v29 = static NSObject.== infix(_:_:)();

    if ((v29 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_35:
    v30 = [v21 identifierString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of FavoriteItem.shortcutIdentifier.setter();
    [v78 setSourceType:3];
    v31 = v21;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81 = v35;
      *v34 = v70;
      v36 = [v31 identifierString];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_10004DEB8(v37, v39, &v81);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "[Migration] found matching loi: %s", v34, 0xCu);
      sub_10004E3D0(v35);
    }

    else
    {
    }

    v10 = v17;
LABEL_39:
    v3 = v78;
    v41 = [v10 mapsSyncCreateTime];
    if (v41)
    {
      v0 = v75;
      v42 = v41;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
    }

    else
    {
      v43 = 1;
      v0 = v75;
    }

    v5 = v74;
    v1 = v0[10];
    (*v73)(v1, v43, 1, v0[11]);
    dispatch thunk of MapsSyncObject.createTime.setter();

    v44 = [v10 geoMapItem];
    dispatch thunk of FavoriteItem.mapItemStorage.setter();
    v45 = [v10 type];
    if (v45 < -32768)
    {
      goto LABEL_60;
    }

    if (v45 >= 0x8000)
    {
      goto LABEL_61;
    }

    dispatch thunk of FavoriteItem.type.setter();
    dispatch thunk of FavoriteItem.version.setter();
    dispatch thunk of FavoriteItem.hidden.setter();
    v46 = [v10 customName];
    if (v46)
    {
      v47 = v46;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    dispatch thunk of FavoriteItem.customName.setter();
    v48 = [v10 stringContacts];
    v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = v49 + 40;
      do
      {

        dispatch thunk of FavoriteItem.addContactHandle(_:)();

        v51 += 16;
        --v50;
      }

      while (v50);
    }

    v52 = v3;
    v3 = v72;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v7 = *v72;
    v4 = v71;
    v6 = v77;
    v1 = 1;
    v8 = &selRef_invertedButton;
  }

  while (v77 != v74);
LABEL_55:

LABEL_64:
  v53 = 0;
  v54 = v0[39] + 32;
  while (v5 != v53)
  {
    if (v79)
    {
      v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v53 >= *(v4 + 16))
      {
        goto LABEL_99;
      }

      v55 = *(v54 + 8 * v53);
    }

    v56 = v55;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v57 = [v55 type];

    ++v53;
    if (v57 == 2)
    {
      goto LABEL_76;
    }
  }

  sub_1002ECAE4(2);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = *v3;
LABEL_76:
  v58 = 0;
  while (v5 != v58)
  {
    if (v79)
    {
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v58 >= *(v4 + 16))
      {
        goto LABEL_101;
      }

      v59 = *(v54 + 8 * v58);
    }

    v60 = v59;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_100;
    }

    v61 = [v59 type];

    ++v58;
    if (v61 == 3)
    {

      goto LABEL_88;
    }
  }

  sub_1002ECAE4(3);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = *v3;
LABEL_88:
  v0[51] = v7;

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  v64 = v7 >> 62;
  if (os_log_type_enabled(v62, v63))
  {
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    if (v64)
    {
      v66 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v66 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v65 + 4) = v66;

    _os_log_impl(&_mh_execute_header, v62, v63, "[Migration] saving %ld migrated favorites", v65, 0xCu);
  }

  else
  {
  }

  type metadata accessor for MapsSyncStore();
  v0[52] = static MapsSyncStore.sharedStore.getter();
  if (!v64)
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MapsSyncObject();
    goto LABEL_95;
  }

LABEL_102:
  type metadata accessor for MapsSyncObject();

  v69 = _bridgeCocoaArray<A>(_:)();

  v7 = v69;
LABEL_95:
  v0[53] = v7;
  v80 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v67 = swift_task_alloc();
  v0[54] = v67;
  *v67 = v0;
  v67[1] = sub_1002EC110;

  return v80(v7);
}