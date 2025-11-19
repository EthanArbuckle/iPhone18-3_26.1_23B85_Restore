unint64_t sub_100137374(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v22 = *a1;
    v23 = v4;
    v24 = *(a1 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    result = sub_100137284();
    *v2 = v20;
  }

  else
  {
    sub_1000180EC(a1, &qword_100CB6C48);
    sub_1000D5F5C(a2);
    if (v6)
    {
      sub_100025198();
      sub_100008574();
      v7 = sub_10022C350(&qword_100CA3AA0);
      sub_1000145E4(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19);
      v15 = (*(v21 + 56) + 48 * a2);
      v17 = v15[1];
      v16 = v15[2];
      v22 = *v15;
      v23 = v17;
      v24 = v16;
      _NativeDictionary._delete(at:)();
      *v2 = v21;
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
    }

    return sub_1000180EC(&v22, &qword_100CB6C48);
  }

  return result;
}

unint64_t sub_1001374BC(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100137514(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100137574()
{
  sub_100137820();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100009994();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = sub_100081B54(319, &qword_100CADCE0);
      if (v5 <= 0x3F)
      {
        v1 = type metadata accessor for WireframeLevelInterestManager();
        if (v6 <= 0x3F)
        {
          v1 = sub_100081B54(319, &qword_100CC07C8);
          if (v7 <= 0x3F)
          {
            v1 = sub_100081B54(319, &qword_100CE0DF0);
            if (v8 <= 0x3F)
            {
              v1 = type metadata accessor for WireframeContentPrefetcher();
              if (v9 <= 0x3F)
              {
                sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
                v1 = v10;
                if (v11 <= 0x3F)
                {
                  sub_10008178C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
                  if (v13 > 0x3F)
                  {
                    return v12;
                  }

                  sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
                  if (v14 > 0x3F)
                  {
                    return v12;
                  }

                  else
                  {
                    sub_10008178C(319, &qword_100CBC208, type metadata accessor for TipCoordinator, type metadata accessor for Resolved);
                    v1 = v15;
                    if (v16 <= 0x3F)
                    {
                      v1 = type metadata accessor for Text.Measurements();
                      if (v17 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
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
  }

  return v1;
}

void sub_100137820()
{
  if (!qword_100CD9540)
  {
    sub_10022E824(&qword_100CA4B98);
    sub_100006F64(&qword_100CA4BA0, &qword_100CA4B98);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD9540);
    }
  }
}

void sub_10013790C()
{
  if (!qword_100CD9D48)
  {
    type metadata accessor for SceneResizeMonitor();
    sub_10008152C(&unk_100CD9D50, type metadata accessor for SceneResizeMonitor);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD9D48);
    }
  }
}

uint64_t sub_1001379B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100137A0C()
{
  result = sub_100137A94();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100137A94()
{
  result = qword_100CADCE0;
  if (!qword_100CADCE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CADCE0);
  }

  return result;
}

void sub_100137B64()
{
  sub_100137A94();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_100137C1C();
      if (v2 <= 0x3F)
      {
        sub_100137C80();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100137C1C()
{
  if (!qword_100CCEB18)
  {
    sub_10022E824(qword_100CCEA90);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCEB18);
    }
  }
}

void sub_100137C80()
{
  if (!qword_100CB7100)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB7100);
    }
  }
}

uint64_t sub_100137D14()
{
  type metadata accessor for IsDeviceVerySlowViewInputPredicate();
  type metadata accessor for SlowDeviceGridView();
  type metadata accessor for StaticIf();
  sub_100656B50();
  sub_10001F404();
  swift_getWitnessTable();
  sub_10001C914();
  return swift_getWitnessTable();
}

uint64_t sub_100137DBC(void *a1)
{
  type metadata accessor for LocationModel();

  return sub_100137E6C(a1);
}

uint64_t sub_100137E6C(void *a1)
{
  type metadata accessor for LocationModel();
  sub_1000161C0(a1, a1[3]);
  return dispatch thunk of ContextType.use<A>(_:for:name:)();
}

uint64_t sub_100137EF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for LocationModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v61 - v8;
  v10 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  sub_1000161C0(a1, a1[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  v76 = v3;
  result = sub_100024D10(v12, 1, v3);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B98);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v74 = v90;
  if (!v90)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v73 = v91;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v72 = v86;
  if (!v86)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v71 = v89;
  v70 = v88;
  v69 = v87;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WireframeLevelInterestManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v68 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v85)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v83)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v66 = v15;
  v67 = v14;
  v16 = sub_10002D7F8(v84, v85);
  v65 = &v61;
  v17 = __chkstk_darwin(v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v22 = type metadata accessor for NetworkActivityManager();
  v81[3] = v22;
  v81[4] = &off_100C55440;
  v81[0] = v21;
  v64 = type metadata accessor for LocationModule();
  v23 = swift_allocObject();
  v24 = sub_10002D7F8(v81, v22);
  v63 = &v61;
  v25 = __chkstk_darwin(v24);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v80 = &off_100C55440;
  v79 = v22;
  *&v78 = v29;
  if (qword_100CA26A8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000703C(v30, qword_100D90A60);
  v31 = *(v4 + 16);
  v32 = v9;
  v33 = v9;
  v34 = v76;
  v31(v33, v12, v76);
  v31(v6, v12, v34);
  v35 = v6;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v77 = v61;
    *v38 = 141558787;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    v39 = LocationModel.name.getter();
    v62 = v12;
    v41 = v40;
    v42 = *(v4 + 8);
    v43 = v32;
    v44 = v76;
    v42(v43);
    v45 = sub_100078694(v39, v41, &v77);

    *(v38 + 14) = v45;
    *(v38 + 22) = 2160;
    *(v38 + 24) = 1752392040;
    *(v38 + 32) = 2081;
    v46 = LocationModel.id.getter();
    v48 = v47;
    (v42)(v35, v44);
    v49 = sub_100078694(v46, v48, &v77);

    *(v38 + 34) = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "Initializing Location module for location: name=%{private,mask.hash}s, id=%{private,mask.hash}s", v38, 0x2Au);
    swift_arrayDestroy();

    (v42)(v62, v44);
  }

  else
  {

    v50 = *(v4 + 8);
    v51 = v76;
    v50(v12, v76);
    v50(v35, v51);
    v50(v32, v51);
  }

  v52 = v74;
  v53 = v73;
  v54 = v72;
  v55 = v71;
  v56 = v70;
  v57 = v69;
  v58 = v68;
  v59 = v64;
  v23[2] = v67;
  v23[3] = v66;
  v23[4] = v52;
  v23[5] = v53;
  v23[6] = v54;
  v23[7] = v57;
  v23[8] = v56;
  v23[9] = v55;
  v23[10] = v58;
  sub_100013188(&v78, (v23 + 11));
  sub_100013188(&v82, (v23 + 16));
  sub_100006F14(v81);
  result = sub_100006F14(v84);
  v60 = v75;
  v75[3] = v59;
  v60[4] = &off_100C7B350;
  *v60 = v23;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewPresentationKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100138858);
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

uint64_t getEnumTagSinglePayload for OptInTipViewViewModel.TipKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10013894C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Location.Identifier();
  sub_10001B350(a1, 1, 1, v2);
  State = type metadata accessor for VisibleLocationWeatherLoadState();
  *(a1 + State[5]) = _swiftEmptyArrayStorage;
  v4 = (a1 + State[6]);
  StatusLog = type metadata accessor for VisibleLocationWeatherLoadStatusLog();
  *v4 = 0u;
  v4[1] = 0u;
  Date.init()();
  v6 = v4 + *(StatusLog + 36);
  *v6 = 0;
  v6[8] = 1;
  v7 = v4 + *(StatusLog + 40);
  *v7 = 0;
  v7[8] = 1;
  *(a1 + State[7]) = 0;
  return Date.init()();
}

char *sub_100138A80(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10007996C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

double sub_100138B98@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LocationViewPage(0);
  sub_100003810(v5);
  sub_10001164C();

  return sub_100138C10(a1, v2 + v6, a2);
}

double sub_100138C10@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v5 = type metadata accessor for LocationViewPage(0);
  *&result = sub_100138C64(*(a2 + *(v5 + 24)), a3).n128_u64[0];
  return result;
}

__n128 sub_100138C64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1].n128_u64[1];
  v6 = v2[5].n128_u64[0];
  v9 = v2[2];
  sub_100035B30(&v2[5].n128_i64[1], a2 + 56);
  sub_100035B30(&v2[8], a2 + 96);

  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CA4B98);
  sub_100138D2C();
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  result = v9;
  *(a2 + 24) = v9;
  *(a2 + 40) = a1;
  *(a2 + 48) = v6;
  return result;
}

unint64_t sub_100138D2C()
{
  result = qword_100CA4BA0;
  if (!qword_100CA4BA0)
  {
    sub_10022E824(&qword_100CA4B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4BA0);
  }

  return result;
}

uint64_t sub_100138D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v17 = *(a1 + 24);
  sub_100035B30(a1 + 56, a2 + 56);
  sub_100035B30(a1 + 96, a2 + 96);
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  v7 = type metadata accessor for LocationContentView(0);
  v8 = v7[13];
  *(a2 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[14];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v7[15];
  *(a2 + v10) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v11 = a2 + v7[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v7[17];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = (a2 + v7[18]);
  type metadata accessor for ObservableResolver();
  sub_100139100();
  *v13 = EnvironmentObject.init()();
  v13[1] = v14;
  Text.Measurements.init()();

  sub_10022C350(&qword_100CA4B98);
  sub_100006F64(&qword_100CA4BA0, &qword_100CA4B98);
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v15;
  *(a2 + 16) = v4;
  *(a2 + 24) = v17;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  sub_100035B30(v5 + 16, v18);
  type metadata accessor for WireframeContentPrefetcher();
  swift_allocObject();
  *(a2 + 136) = sub_100139158(v18);

  swift_unknownObjectRetain();
}

uint64_t sub_100138FDC()
{
  sub_10000FE4C();
  v0 = sub_10010327C();
  return sub_100005F94(v0);
}

uint64_t sub_100139044()
{
  sub_10000FE4C();
  v0 = sub_10013E9DC();
  return sub_100005F94(v0);
}

uint64_t sub_100139094@<X0>(_OWORD *a1@<X8>)
{
  *a1 = *(v1 + 24);
  v3 = *(sub_10022C350(&qword_100CCF9E8) + 36);
  swift_unknownObjectRetain();
  return sub_100138D98(v1, a1 + v3);
}

unint64_t sub_100139100()
{
  result = qword_100CB0468;
  if (!qword_100CB0468)
  {
    type metadata accessor for ObservableResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB0468);
  }

  return result;
}

uint64_t sub_100139158(__int128 *a1)
{
  sub_10022C350(&qword_100CED280);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  sub_100013188(a1, v1 + 16);
  return v1;
}

uint64_t type metadata accessor for WireframeContentManager()
{
  result = qword_100CCC0B0;
  if (!qword_100CCC0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013920C()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1001392EC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, Swift::Int *a7@<X8>)
{
  v128 = a6;
  v110 = a5;
  v109 = a4;
  v117 = a3;
  countAndFlagsBits = a2;
  v130 = a7;
  v147 = type metadata accessor for WeatherFormatPlaceholder();
  v136 = *(v147 - 8);
  __chkstk_darwin(v147);
  v135 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v146 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v103 - v11;
  v134 = sub_10022C350(&qword_100CA53F8);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v143 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v151 = &v103 - v14;
  v15 = type metadata accessor for Precipitation();
  v144 = *(v15 - 8);
  v145 = v15;
  __chkstk_darwin(v15);
  v142 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for WeatherCondition();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v103 - v19;
  v114 = type metadata accessor for SunEvents();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v105 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v112 = &v103 - v22;
  v23 = sub_10022C350(&qword_100CAB9B0);
  __chkstk_darwin(v23 - 8);
  v108 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v107 = &v103 - v26;
  __chkstk_darwin(v27);
  v106 = &v103 - v28;
  v29 = type metadata accessor for DayWeather();
  v111 = *(v29 - 8);
  __chkstk_darwin(v29);
  v104 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v31 - 8);
  v140 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v148 = &v103 - v34;
  v35 = type metadata accessor for TimeZone();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v138 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v103 - v43;
  __chkstk_darwin(v45);
  v47 = &v103 - v46;
  v127 = a1;
  HourWeather.date.getter();
  Location.timeZone.getter();
  Date.zeroMinutes(timeZone:)();
  v118 = v36;
  v48 = *(v36 + 8);
  v150 = v38;
  v139 = v35;
  v49 = v35;
  v50 = v39;
  v121 = v36 + 8;
  v120 = v48;
  v48(v38, v49);
  object = v40;
  v51 = v40[1];
  v149 = v44;
  v124 = v40 + 1;
  v123 = v51;
  v51(v44, v39);
  v137 = v47;
  if ((Calendar.isDateInToday(_:)() & 1) == 0)
  {
    v54 = v110;
    v55 = v107;
    sub_100035AD0(v110, v107, &qword_100CAB9B0);
    if (sub_100024D10(v55, 1, v29) == 1)
    {
      sub_1000180EC(v55, &qword_100CAB9B0);
      sub_10001B350(v148, 1, 1, v39);
    }

    else
    {
      v63 = v112;
      DayWeather.sun.getter();
      (*(v111 + 8))(v55, v29);
      SunEvents.sunrise.getter();
      (*(v113 + 8))(v63, v114);
    }

    v53 = v140;
    v64 = v108;
    sub_100035AD0(v54, v108, &qword_100CAB9B0);
    if (sub_100024D10(v64, 1, v29) != 1)
    {
      v65 = v112;
      DayWeather.sun.getter();
      (*(v111 + 8))(v64, v29);
      SunEvents.sunset.getter();
      (*(v113 + 8))(v65, v114);
      goto LABEL_12;
    }

    sub_1000180EC(v64, &qword_100CAB9B0);
    goto LABEL_10;
  }

  v52 = v106;
  sub_100035AD0(v109, v106, &qword_100CAB9B0);
  if (sub_100024D10(v52, 1, v29) == 1)
  {
    sub_1000180EC(v52, &qword_100CAB9B0);
    sub_10001B350(v148, 1, 1, v39);
    v53 = v140;
LABEL_10:
    sub_10001B350(v53, 1, 1, v39);
    goto LABEL_12;
  }

  v56 = v111;
  v57 = v104;
  (*(v111 + 32))(v104, v52, v29);
  v58 = v112;
  DayWeather.sun.getter();
  SunEvents.sunrise.getter();
  v117 = v29;
  v59 = *(v113 + 8);
  v60 = v58;
  v61 = v114;
  v59(v60, v114);
  v62 = v105;
  DayWeather.sun.getter();
  SunEvents.sunset.getter();
  v59(v62, v61);
  (*(v56 + 8))(v57, v117);
LABEL_12:
  v117 = object[2];
  v117(v149, v137, v50);
  Location.timeZone.getter();
  v66 = v119;
  HourWeather.condition.getter();
  v67 = Date.isDaytime(sunrise:sunset:)();
  v68 = WeatherCondition.conditionIconName(isDaytime:)(v67 & 1);
  countAndFlagsBits = v68.value._countAndFlagsBits;
  object = v68.value._object;
  v69 = *(v125 + 8);
  v70 = v126;
  v69(v66, v126);
  HourWeather.condition.getter();
  v71 = WeatherCondition.description.getter();
  v72 = v50;
  v115 = v50;
  v125 = v71;
  v114 = v73;
  v69(v66, v70);
  HourWeather.precipitationChance.getter();
  Double.roundedPrecipitationPercent.getter();
  v75 = v74;
  v76 = v122;
  HourWeather.condition.getter();
  LOBYTE(v66) = WeatherCondition.isPrecipitation.getter();
  v69(v76, v70);
  v77 = v142;
  HourWeather.precipitation.getter();
  HourWeather.temperature.getter();
  CurrentWeather.temperature.getter();
  sub_100119F7C();
  v78 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v79 = v130;
  *v130 = 0;
  v80 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  v117(v79 + v80[13], v149, v72);
  (*(v118 + 16))(v79 + v80[14], v150, v139);
  v81 = object;
  v79[1] = countAndFlagsBits;
  v79[2] = v81;
  v82 = v114;
  v79[3] = v125;
  v79[4] = v82;
  v79[5] = v75;
  *(v79 + 48) = v66 & 1;
  (*(v144 + 16))(v79 + v80[9], v77, v145);
  *(v79 + v80[16]) = v78;
  static WeatherClock.date.getter();
  v83 = Date.formattedHours(timeZone:forAccessibility:)();
  v84 = (v79 + v80[11]);
  *v84 = v83;
  v84[1] = v85;
  v86 = Date.formattedHours(timeZone:forAccessibility:)();
  v87 = (v79 + v80[12]);
  *v87 = v86;
  v87[1] = v88;
  *(v79 + v80[15]) = 0;
  v89 = v129;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  countAndFlagsBits = *(v131 + 8);
  v90 = v133;
  countAndFlagsBits(v89, v133);
  v91 = v136;
  v92 = v135;
  (*(v136 + 104))(v135, enum case for WeatherFormatPlaceholder.none(_:), v147);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100114168();
  v93 = v134;
  v94 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v131 = v95;

  (*(v91 + 8))(v92, v147);
  countAndFlagsBits(v146, v90);
  v96 = (v79 + v80[10]);
  v97 = v131;
  *v96 = v94;
  v96[1] = v97;
  Hasher.init(_seed:)();
  sub_100119FC0(v152);
  v98 = Hasher._finalize()();
  v99 = v115;
  v100 = v123;
  v123(v138, v115);
  v101 = *(v132 + 8);
  v101(v143, v93);
  v101(v151, v93);
  (*(v144 + 8))(v142, v145);
  v120(v150, v139);
  v100(v149, v99);
  sub_1000180EC(v140, &unk_100CB2CF0);
  sub_1000180EC(v148, &unk_100CB2CF0);
  v100(v137, v99);
  *v79 = v98;
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10013A2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = type metadata accessor for IsDeviceVerySlowViewInputPredicate();
  __chkstk_darwin(v18[0]);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for SlowDeviceGridView();
  v6 = type metadata accessor for StaticIf();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  static ViewInputPredicate<>.deviceIsVerySlow.getter();
  v20 = v5;
  v21 = v4;
  v22 = v2;
  v18[4] = v5;
  v18[5] = v4;
  v19 = v2;
  v13 = sub_100656B50();
  sub_10001F404();
  WitnessTable = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v23 = v13;
  v24 = WitnessTable;
  v25 = v4;
  sub_10001C914();
  v14 = swift_getWitnessTable();
  sub_1000833D8(v9, v6, v14);
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_1000833D8(v12, v6, v14);
  return (v15)(v12, v6);
}

uint64_t type metadata accessor for AutomationInfoViewModifier()
{
  result = qword_100CBF300;
  if (!qword_100CBF300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AutomationInfoProperty()
{
  result = qword_100CC6318;
  if (!qword_100CC6318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013A5B0()
{
  result = type metadata accessor for AutomationInfoProperty();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10013A61C()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AutomationInfo(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10013A6D0()
{
  result = type metadata accessor for AutomationViewInfo(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AutomationCellInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *sub_10013A76C()
{
  v0 = sub_10013A824();
  if (v1 <= 0x3F)
  {
    v2 = sub_10013A84C();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_100858878(319, &unk_100CACAD8, &type metadata accessor for WeatherMapOverlayKind);
    if (v4 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void *sub_10013A824()
{
  result = qword_100CDEC48;
  if (!qword_100CDEC48)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CDEC48);
  }

  return result;
}

ValueMetadata *sub_10013A84C()
{
  result = qword_100CDED28;
  if (!qword_100CDED28)
  {
    result = &type metadata for AutomationSearchInfo;
    atomic_store(&type metadata for AutomationSearchInfo, &qword_100CDED28);
  }

  return result;
}

void *sub_10013A894()
{
  v0 = sub_10013A824();
  if (v1 <= 0x3F)
  {
    sub_100858878(319, &qword_100CDEC50, sub_100007760);
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      sub_100858878(319, &unk_100CACAD8, &type metadata accessor for WeatherMapOverlayKind);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_100858878(319, &qword_100CDEC58, sub_100007760);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_10013AA08();
          v0 = v8;
          if (v9 <= 0x3F)
          {
            sub_10013AA80();
            v0 = v10;
            if (v11 <= 0x3F)
            {
              v0 = sub_10013AB58();
              if (v12 <= 0x3F)
              {
                sub_10013AAF8();
                v0 = v13;
                if (v14 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_10013AA08()
{
  if (!qword_100CDEC60)
  {
    sub_10022E824(&qword_100CA6078);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CDEC60);
    }
  }
}

void sub_10013AA80()
{
  if (!qword_100CDEC68)
  {
    sub_10022E824(&qword_100CA6078);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CDEC68);
    }
  }
}

void sub_10013AAF8()
{
  if (!qword_100CDEC78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CDEC78);
    }
  }
}

void *sub_10013AB58()
{
  result = qword_100CDEC70;
  if (!qword_100CDEC70)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CDEC70);
  }

  return result;
}

uint64_t type metadata accessor for ActivityModifier()
{
  result = qword_100CED2F0;
  if (!qword_100CED2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WeatherActivity()
{
  result = qword_100CB3E90;
  if (!qword_100CB3E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013AC18()
{
  result = type metadata accessor for WeatherActivity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10013AC84()
{
  v0 = type metadata accessor for Location.Identifier();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_10013ACFC()
{
  v0 = type metadata accessor for LocationViewModel();
  if (v1 <= 0x3F)
  {
    sub_10009C020(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = type metadata accessor for Text.Measurements();
      if (v4 <= 0x3F)
      {
        sub_10008178C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
          v0 = v7;
          if (v8 <= 0x3F)
          {
            sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
            v0 = v9;
            if (v10 <= 0x3F)
            {
              sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
              if (v12 > 0x3F)
              {
                return v11;
              }

              else
              {
                sub_10009C020(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
                v0 = v13;
                if (v14 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_10013AF54()
{
  sub_100009BA0(319, &qword_100CADCC8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10013B0E4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocationViewModel();
      if (v2 <= 0x3F)
      {
        sub_100137A94();
        if (v3 <= 0x3F)
        {
          sub_10013B178();
          if (v4 <= 0x3F)
          {
            type metadata accessor for WireframeContentPrefetcher();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10013B068()
{
  if (!qword_100CADCC8)
  {
    type metadata accessor for ScenePhase();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CADCC8);
    }
  }
}

void sub_10013B0E4()
{
  if (!qword_100CADCD0)
  {
    type metadata accessor for LocationViewObserverViewState();
    sub_100067294(&qword_100CADCD8, type metadata accessor for LocationViewObserverViewState);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CADCD0);
    }
  }
}

void sub_10013B178()
{
  if (!qword_100CADCE8)
  {
    sub_10022E824(&qword_100CA4B60);
    sub_100006F64(&qword_100CA4B68, &qword_100CA4B60);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CADCE8);
    }
  }
}

uint64_t sub_10013B23C()
{
  v0 = type metadata accessor for LocationViewModel();
  if (v1 <= 0x3F)
  {
    sub_10009C020(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = type metadata accessor for Text.Measurements();
      if (v4 <= 0x3F)
      {
        sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
          v0 = v7;
          if (v8 <= 0x3F)
          {
            sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
            if (v10 > 0x3F)
            {
              return v9;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_10013B438()
{
  type metadata accessor for LocationViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DisplayMetrics();
    if (v1 <= 0x3F)
    {
      sub_100009994();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WireframeLevelInterestManager();
        if (v3 <= 0x3F)
        {
          type metadata accessor for WireframeContentPrefetcher();
          if (v4 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CADCE0);
            if (v5 <= 0x3F)
            {
              sub_100081B54(319, &qword_100CC07C8);
              if (v6 <= 0x3F)
              {
                sub_10009BE44(319, &qword_100CB7100);
                if (v7 <= 0x3F)
                {
                  sub_10009BE44(319, &qword_100CE0E20);
                  if (v8 <= 0x3F)
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
}

void sub_10013B5DC()
{
  sub_100137C80();
  if (v0 <= 0x3F)
  {
    sub_10013B740();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Location.Identifier();
      if (v2 <= 0x3F)
      {
        sub_10013B178();
        if (v3 <= 0x3F)
        {
          sub_10013B7B4(319, &qword_100CCB7A8, type metadata accessor for LocationViewCollisionOptionsUpdatingViewState, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10013B7B4(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_10010F29C();
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

void sub_10013B740()
{
  if (!qword_100CCB798)
  {
    sub_10022E824(&qword_100CCB7A0);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCB798);
    }
  }
}

void sub_10013B7B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10013B838()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t type metadata accessor for LocationGridView()
{
  result = qword_100CD4770;
  if (!qword_100CD4770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013B920()
{
  type metadata accessor for LocationViewModel();
  if (v0 <= 0x3F)
  {
    sub_100009994();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WireframeLevelInterestManager();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WireframeContentPrefetcher();
        if (v3 <= 0x3F)
        {
          sub_100081B54(319, &qword_100CADCE0);
          if (v4 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CC07C8);
            if (v5 <= 0x3F)
            {
              type metadata accessor for DisplayMetrics();
              if (v6 <= 0x3F)
              {
                sub_10013BAD4();
                if (v7 <= 0x3F)
                {
                  sub_10009BE44(319, &qword_100CE0E20);
                  if (v8 <= 0x3F)
                  {
                    sub_10009BE44(319, &qword_100CB7100);
                    if (v9 <= 0x3F)
                    {
                      sub_10009BE44(319, &unk_100CA41F0);
                      if (v10 <= 0x3F)
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
    }
  }
}

void sub_10013BAD4()
{
  if (!qword_100CBC208)
  {
    type metadata accessor for TipCoordinator();
    v0 = type metadata accessor for Resolved();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBC208);
    }
  }
}

void sub_10013BB48()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013BC1C()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    sub_10013BCD0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocationFooterViewModel();
      if (v2 <= 0x3F)
      {
        sub_100137A94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10013BCD0()
{
  if (!qword_100CAD8E8)
  {
    type metadata accessor for ColorSchemeContrast();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAD8E8);
    }
  }
}

uint64_t sub_10013BD48()
{
  v0 = type metadata accessor for LocationComponentContainerViewModel();
  if (v1 <= 0x3F)
  {
    v0 = sub_100081B54(319, &qword_100CADCE0);
    if (v2 <= 0x3F)
    {
      v0 = sub_100081B54(319, &qword_100CC07C8);
      if (v3 <= 0x3F)
      {
        v0 = type metadata accessor for Location.Identifier();
        if (v4 <= 0x3F)
        {
          sub_100009994();
          v0 = v5;
          if (v6 <= 0x3F)
          {
            sub_1000827BC(319, &qword_100CC07D0, &qword_100CC07D8, &unk_100A84020, &type metadata accessor for State);
            v0 = v7;
            if (v8 <= 0x3F)
            {
              sub_10013D3D4();
              v0 = v9;
              if (v10 <= 0x3F)
              {
                sub_10013D468();
                v0 = v11;
                if (v12 <= 0x3F)
                {
                  sub_10013D638();
                  v0 = v13;
                  if (v14 <= 0x3F)
                  {
                    sub_1000816EC(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
                    v0 = v15;
                    if (v16 <= 0x3F)
                    {
                      sub_10013D854(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                      v0 = v17;
                      if (v18 <= 0x3F)
                      {
                        sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
                        v0 = v19;
                        if (v20 <= 0x3F)
                        {
                          sub_1000816EC(319, &qword_100CA3C60, &type metadata for PerformanceTestFeatures, &type metadata accessor for Environment);
                          if (v22 > 0x3F)
                          {
                            return v21;
                          }

                          sub_10013D854(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
                          if (v23 > 0x3F)
                          {
                            return v21;
                          }

                          sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
                          if (v24 > 0x3F)
                          {
                            return v21;
                          }

                          sub_1000816EC(319, &qword_100CACE80, &type metadata for SizingBehavior, &type metadata accessor for Environment);
                          if (v25 > 0x3F)
                          {
                            return v21;
                          }

                          else
                          {
                            sub_10013D854(319, &qword_100CBC208, type metadata accessor for TipCoordinator, type metadata accessor for Resolved);
                            v0 = v26;
                            if (v27 <= 0x3F)
                            {
                              sub_10013D854(319, &unk_100CC0810, type metadata accessor for WireframeContentManagerReference, &type metadata accessor for State);
                              v0 = v28;
                              if (v29 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                                return 0;
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
          }
        }
      }
    }
  }

  return v0;
}

uint64_t type metadata accessor for LocationComponentContainerViewModel()
{
  result = qword_100CE9D28;
  if (!qword_100CE9D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013C208()
{
  type metadata accessor for LocationComponentHeaderViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationComponentViewModel();
    if (v1 <= 0x3F)
    {
      sub_10013D224();
      if (v2 <= 0x3F)
      {
        sub_10013D2DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10013C2C4()
{
  result = type metadata accessor for LocationComponentHeaderViewModel.Description(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10013C36C()
{
  result = type metadata accessor for WeatherDescription();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for LocationComponentViewModel()
{
  result = qword_100CDF8D0;
  if (!qword_100CDF8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013C43C()
{
  result = type metadata accessor for AirQualityComponentViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DailyForecastComponentViewModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeelsLikeComponentViewModel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for HourlyForecastComponentViewModel(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for MapComponentViewModel();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for MoonComponentViewModel();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for NewsArticleComponentViewModel(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for NextHourPrecipitationComponentViewModel();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for NotificationsOptInComponentViewModel();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for PressureComponentViewModel();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for SevereAlertComponentViewModel();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for SunriseSunsetViewModel();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for UVIndexComponentViewModel();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for WindComponentViewModel();
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              return 0;
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
        }
      }
    }
  }

  return result;
}

void sub_10013C5E8()
{
  sub_100100F0C(319, &unk_100CD0DD8, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100100F0C(319, &qword_100CBB7C8, sub_10000F868, &type metadata accessor for Measurement);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013C700()
{
  sub_100007760();
  if (v0 <= 0x3F)
  {
    sub_10000E174();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013C79C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for MapComponentViewModel()
{
  result = qword_100CB4350;
  if (!qword_100CB4350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013C84C()
{
  type metadata accessor for WeatherMapOverlayKind();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Location();
    if (v1 <= 0x3F)
    {
      sub_100082538();
      if (v2 <= 0x3F)
      {
        sub_100007760();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for MoonComponentViewModel()
{
  result = qword_100CB2DA8;
  if (!qword_100CB2DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013C94C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10013C99C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10013C9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10013CA40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10013CA90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10013CAE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10013CB2C()
{
  sub_10013C94C(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10013C94C(319, &qword_100CB2DB8, &type metadata for TemporalString, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10013C94C(319, &qword_100CB2DC0, &type metadata for MoonComponentViewModel.Row, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_10013C94C(319, &qword_100CB2DC8, &type metadata for MoonPhase, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for NextHourPrecipitationComponentViewModel()
{
  result = qword_100CDF6D8;
  if (!qword_100CDF6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013CCE8()
{
  result = type metadata accessor for NextHourPrecipitationChartViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for NotificationsOptInComponentViewModel()
{
  result = qword_100CAB8F8;
  if (!qword_100CAB8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013CDB0()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PressureComponentViewModel()
{
  result = qword_100CE2ED0;
  if (!qword_100CE2ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SevereAlertComponentViewModel()
{
  result = qword_100CC2600;
  if (!qword_100CC2600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013CEBC()
{
  sub_10013C9EC(319, &qword_100CA45C0, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10013C9EC(319, &qword_100CC2610, &type metadata accessor for Array);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = type metadata accessor for WeatherAlert.Prominence();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for UVIndexComponentViewModel()
{
  result = qword_100CE9B00;
  if (!qword_100CE9B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013D01C()
{
  type metadata accessor for WeatherDescription();
  if (v0 <= 0x3F)
  {
    sub_10000D054();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WindComponentViewModel()
{
  result = qword_100CBE8E0;
  if (!qword_100CBE8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013D114()
{
  type metadata accessor for WindComponentCompassViewModel();
  if (v0 <= 0x3F)
  {
    sub_10013D1D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013D1D4()
{
  if (!qword_100CBE8F0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBE8F0);
    }
  }
}

void sub_10013D224()
{
  if (!qword_100CE9D38)
  {
    sub_10013D288();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE9D38);
    }
  }
}

unint64_t sub_10013D288()
{
  result = qword_100CAB7F8;
  if (!qword_100CAB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB7F8);
  }

  return result;
}

void sub_10013D2DC()
{
  if (!qword_100CE9D40)
  {
    type metadata accessor for LocationComponentAction(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE9D40);
    }
  }
}

uint64_t sub_10013D334(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  if (!v2 || result == a2)
  {
    return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
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

uint64_t sub_10013D388(uint64_t a1, uint64_t a2, float a3, float a4)
{
  if (a3 == a4)
  {
    return sub_10013D334(a1, a2);
  }

  else
  {
    return 0;
  }
}

void sub_10013D3D4()
{
  if (!qword_100CC07E0)
  {
    type metadata accessor for LocationComponentActionState();
    sub_100061A3C(&qword_100CC07E8, type metadata accessor for LocationComponentActionState);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC07E0);
    }
  }
}

void sub_10013D468()
{
  if (!qword_100CC07F0)
  {
    sub_10022E824(&qword_100CC0720);
    sub_10023FBF4(&qword_100CC07F8, &qword_100CC0720);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC07F0);
    }
  }
}

uint64_t sub_10013D524()
{
  result = type metadata accessor for Published();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PagingContentOffsetsStorage()
{
  result = qword_100CABF40;
  if (!qword_100CABF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013D638()
{
  if (!qword_100CC0800)
  {
    type metadata accessor for PagingContentOffsetsStorage();
    sub_100061A3C(&qword_100CC0808, type metadata accessor for PagingContentOffsetsStorage);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC0800);
    }
  }
}

void sub_10013D6CC()
{
  sub_10013D75C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10013D75C()
{
  if (!qword_100CABF50)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100CABF50);
    }
  }
}

void sub_10013D7AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10013D800(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10013D854(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_100031D74();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10013D8B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10013D908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10013D96C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10013DA24()
{
  sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10013DB50()
{
  result = qword_100CAD3B8[0];
  if (!qword_100CAD3B8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_100CAD3B8);
  }

  return result;
}

void sub_10013DB98()
{
  sub_10009C020(319, &qword_100CD8B28, &type metadata for LocationViewRowViewModel, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10013DB50();
    if (v1 <= 0x3F)
    {
      sub_10008178C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10013DD18()
{
  type metadata accessor for PinnedScrollableViews();
  if (v0 <= 0x3F)
  {
    sub_10013DB50();
    if (v1 <= 0x3F)
    {
      sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for LocationViewAppEntityView()
{
  result = qword_100CDF820;
  if (!qword_100CDF820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013DEB0()
{
  type metadata accessor for LocationViewModel();
  if (v0 <= 0x3F)
  {
    sub_10013B178();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for ForegroundEffectConfigurationView()
{
  result = qword_100CD82E8;
  if (!qword_100CD82E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10013E000()
{
  result = qword_100CD96B0;
  if (!qword_100CD96B0)
  {
    sub_10022E824(&qword_100CD95F8);
    sub_10013E0BC();
    sub_10008152C(&qword_100CD96C8, type metadata accessor for ActivityModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD96B0);
  }

  return result;
}

unint64_t sub_10013E0BC()
{
  result = qword_100CD96B8;
  if (!qword_100CD96B8)
  {
    sub_10022E824(&qword_100CD95F0);
    sub_10013E178();
    sub_10008152C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD96B8);
  }

  return result;
}

unint64_t sub_10013E178()
{
  result = qword_100CD96C0;
  if (!qword_100CD96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD96C0);
  }

  return result;
}

unint64_t sub_10013E1CC()
{
  result = qword_100CA6050;
  if (!qword_100CA6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6050);
  }

  return result;
}

unint64_t sub_10013E220()
{
  result = qword_100CD9648;
  if (!qword_100CD9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9648);
  }

  return result;
}

unint64_t sub_10013E274()
{
  result = qword_100CD9658;
  if (!qword_100CD9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9658);
  }

  return result;
}

unint64_t sub_10013E2C8()
{
  result = qword_100CD9670;
  if (!qword_100CD9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9670);
  }

  return result;
}

uint64_t sub_10013E31C()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for LocationViewPage(v0);
  sub_100003810(v1);
  v2 = sub_10004E784();

  return sub_10013E378(v2, v3);
}

uint64_t sub_10013E378(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v44 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v46);
  v9 = &v39[-v8];
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v45 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v39[-v13];
  __chkstk_darwin(v15);
  v17 = &v39[-v16];
  v18 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v18 - 8);
  v20 = &v39[-v19];
  v50 = a1;
  v21 = *a1;
  v22 = type metadata accessor for LocationViewPage(0);
  v23 = a2;
  v24 = a2 + v22[5];
  v25 = *(type metadata accessor for ContentStatusBannerPresentationMetrics(0) + 20);
  v49 = v24;
  sub_1000302D8(v24 + v25, v20, &qword_100CA5010);
  v26 = type metadata accessor for ContentStatusBanner();
  LODWORD(v24) = sub_100024D10(v20, 1, v26);
  result = sub_100018198(v20, &qword_100CA5010);
  if (v24 != 1)
  {
    sub_10009D114();
    v29 = v47;
    v28 = v48;
    (*(v47 + 104))(v14, enum case for UserInterfaceSizeClass.regular(_:), v48);
    sub_10001B350(v14, 0, 1, v28);
    v30 = *(v46 + 48);
    sub_1000302D8(v17, v9, &qword_100CA6028);
    sub_1000302D8(v14, &v9[v30], &qword_100CA6028);
    if (sub_100024D10(v9, 1, v28) == 1)
    {
      sub_100018198(v14, &qword_100CA6028);
      sub_100018198(v17, &qword_100CA6028);
      if (sub_100024D10(&v9[v30], 1, v28) == 1)
      {
        result = sub_100018198(v9, &qword_100CA6028);
LABEL_13:
        v21 = *(v49 + 8) - *(v23 + v22[8]);
        goto LABEL_16;
      }
    }

    else
    {
      v46 = a2;
      v31 = v45;
      sub_1000302D8(v9, v45, &qword_100CA6028);
      if (sub_100024D10(&v9[v30], 1, v28) != 1)
      {
        v34 = &v9[v30];
        v35 = v44;
        (*(v29 + 32))(v44, v34, v28);
        sub_1000EA178(&qword_100CA6088);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v29 + 8);
        v36(v35, v28);
        sub_100018198(v14, &qword_100CA6028);
        sub_100018198(v17, &qword_100CA6028);
        v36(v31, v28);
        result = sub_100018198(v9, &qword_100CA6028);
        v23 = v46;
        if (v40)
        {
          goto LABEL_13;
        }

LABEL_8:
        result = static Solarium.isEnabled.getter();
        if (result)
        {
          v32 = v23 + v22[10];
          v33 = *v32;
          if (*(v32 + 8) == 1)
          {
            if ((v33 & 1) == 0)
            {
LABEL_11:
              v21 = *(v49 + 8);
              goto LABEL_16;
            }
          }

          else
          {

            static os_log_type_t.fault.getter();
            v37 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            v38 = v41;
            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_1000EBD74(v33, 0);
            result = (*(v42 + 8))(v38, v43);
            if ((v51 & 1) == 0)
            {
              goto LABEL_11;
            }
          }
        }

        v21 = *(v49 + 8) + -20.0;
        goto LABEL_16;
      }

      sub_100018198(v14, &qword_100CA6028);
      sub_100018198(v17, &qword_100CA6028);
      (*(v29 + 8))(v31, v28);
      v23 = v46;
    }

    sub_100018198(v9, &qword_100CA64E8);
    goto LABEL_8;
  }

LABEL_16:
  *v50 = v21;
  return result;
}

unint64_t sub_10013E9FC()
{
  result = qword_100CA60E0;
  if (!qword_100CA60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60E0);
  }

  return result;
}

void *sub_10013EA50()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v10, v11);
  dispatch thunk of WindowType.bounds.getter();
  v4 = v3;
  sub_100006F14(v10);
  v1[2] = v4;
  type metadata accessor for ResettingBool();
  swift_allocObject();
  v1[3] = ResettingBool.init(wrappedValue:interval:)(0, 1.0);
  swift_allocObject();
  v1[4] = ResettingBool.init(wrappedValue:interval:)(0, 1.0);
  v1[5] = 0;
  v5 = [objc_opt_self() defaultCenter];
  v6 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1007E881C;
  v13 = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1007E6A10;
  v11 = &unk_100C6CFA8;
  v7 = _Block_copy(v10);

  v8 = [v5 addObserverForName:UIDeviceOrientationDidChangeNotification object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  v1[5] = v8;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10013EC48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t ResettingBool.init(wrappedValue:interval:)(char a1, double a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 16) = a2;
  return v2;
}

void sub_10013ECBC()
{
  sub_10000C778();
  v1 = v0;
  v211 = v2;
  v183 = sub_10022C350(&qword_100CD95B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v182 = v4;
  v185 = sub_10022C350(&qword_100CD95B8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v184 = v6;
  v187 = sub_10022C350(&qword_100CD95C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v186 = v8;
  sub_10022C350(&qword_100CD95C8);
  sub_1000037C4();
  v189 = v10;
  v190 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v188 = v12;
  v191 = sub_10022C350(&qword_100CD95D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v192 = v14;
  v193 = sub_10022C350(&qword_100CD95D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v194 = v16;
  v196 = sub_10022C350(&qword_100CD95E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v195 = v18;
  v209 = sub_10022C350(&qword_100CD95E8);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  v198 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  v197 = &v168 - v22;
  v23 = sub_1000038CC();
  v24 = type metadata accessor for LocationContentView(v23);
  v25 = sub_100003AE8(v24);
  v203 = v26;
  __chkstk_darwin(v25);
  v204 = v27;
  v205 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000038CC();
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v173 = v29;
  v174 = v28;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v172 = v31 - v30;
  sub_1000038CC();
  v32 = type metadata accessor for WeatherActivity();
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_1000037D8();
  v176 = v35 - v34;
  v36 = sub_10022C350(&qword_100CD95F0);
  sub_100003810(v36);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v171 = v38;
  v175 = sub_10022C350(&qword_100CD95F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  v178 = v40;
  v177 = sub_10022C350(&qword_100CD9600);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  v180 = v42;
  v206 = sub_10022C350(&qword_100CD9608);
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_100003848();
  v179 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  v181 = &v168 - v46;
  v208 = sub_10022C350(&qword_100CD9610);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  v207 = v48;
  sub_1000038CC();
  v49 = type metadata accessor for LocationViewModel();
  sub_1000037E8();
  __chkstk_darwin(v50);
  sub_100003848();
  v169 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  v170 = &v168 - v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  v56 = &v168 - v55;
  __chkstk_darwin(v57);
  v59 = &v168 - v58;
  v60 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_1000037D8();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v62);
  v63 = *(v0 + 8);
  sub_100140210();
  v64 = &v59[*(v49 + 24)];
  v65 = *(v64 + 8);
  v66 = *(v64 + 9);

  sub_100147C14(v59, type metadata accessor for LocationViewModel);
  v67._countAndFlagsBits = v65;
  v67._object = v66;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v67);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v68);
  v69 = v63;
  LocalizedStringKey.init(stringInterpolation:)();
  v167 = 2;
  v166 = 34;
  v218 = Text.init(_:tableName:bundle:comment:)();
  v219 = v70;
  v201 = v71;
  v220 = v72;
  sub_100140210();
  v73 = &v59[*(v49 + 24)];
  v75 = *v73;
  v74 = *(v73 + 1);

  sub_100147C14(v59, type metadata accessor for LocationViewModel);
  v225[0] = v75;
  v225[1] = v74;
  sub_10002D5A4();
  v212 = Text.init<A>(_:)();
  v213 = v76;
  LODWORD(v200) = v77;
  v215 = v78;
  v210 = v1;
  v214 = sub_100147C68();
  v216 = v79;
  v217 = v80;
  v82 = v81;
  sub_100140210();
  LODWORD(v74) = v56[*(v49 + 56)];
  sub_100147C14(v56, type metadata accessor for LocationViewModel);
  v199 = v69;
  v202 = v82;
  if (v74 == 2)
  {
    v83 = type metadata accessor for AutomationInfoProperty();
    v84 = v171;
    v85 = (v171 + *(v83 + 24));
    sub_100140210();
    v86 = &v59[*(v49 + 24)];
    v88 = *v86;
    v87 = *(v86 + 1);

    sub_100147C14(v59, type metadata accessor for LocationViewModel);
    *v85 = v88;
    v85[1] = v87;
    type metadata accessor for AutomationViewInfo(0);
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AutomationInfo(0);
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    *v84 = 0;
    *(v84 + 8) = 0xE000000000000000;
    *(v84 + 16) = swift_getKeyPath();
    *(v84 + 24) = 0;
    v89 = v170;
    sub_100140210();
    v91 = v172;
    v90 = v173;
    v92 = v174;
    v198 = *(v173 + 16);
    v198(v172, v89, v174);
    sub_100147C14(v89, type metadata accessor for LocationViewModel);
    Location.Identifier.kind.getter();
    (*(v90 + 8))(v91, v92);
    v93 = Location.Identifier.Kind.rawValue.getter();
    v95 = v94;
    v97 = v93 == Location.Identifier.Kind.rawValue.getter() && v95 == v96;
    v98 = v84;
    if (v97)
    {
    }

    else
    {
      v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v99 & 1) == 0)
      {
        sub_100140210();
        v100 = v176;
        v198(v176, v59, v92);
        sub_100010BF4();
        sub_100147C14(v59, v101);
        v102 = 0;
LABEL_11:
        sub_10001B350(v100, v102, 2, v92);
        v107 = v178;
        sub_100149618(v100, v178 + *(v175 + 36));
        sub_10011C0F0(v98, v107, &qword_100CD95F0);
        v108 = v210;
        v109 = v205;
        sub_1001495C0(v210, v205);
        v110 = (*(v203 + 80) + 16) & ~*(v203 + 80);
        v111 = swift_allocObject();
        sub_100149618(v109, v111 + v110);
        v112 = v107;
        v113 = v180;
        sub_10011C0F0(v112, v180, &qword_100CD95F8);
        v114 = (v113 + *(v177 + 36));
        *v114 = sub_1007E7558;
        v114[1] = v111;
        v114[2] = 0;
        v114[3] = 0;
        sub_1001495C0(v108, v109);
        v115 = swift_allocObject();
        sub_100149618(v109, v115 + v110);
        v116 = v179;
        sub_10011C0F0(v113, v179, &qword_100CD9600);
        v117 = (v116 + *(v206 + 36));
        *v117 = 0;
        v117[1] = 0;
        v117[2] = sub_100165460;
        v117[3] = v115;
        sub_10011C0F0(v116, v181, &qword_100CD9608);
        sub_1007E73B4();
        sub_1007E72FC();
        v118 = v207;
        sub_1003E8038();
        sub_10010CD64(v218, v219, v201 & 1);

        sub_10010CD64(v212, v213, v200 & 1);

        sub_10014A53C(v214, v216, v217, v202);
        sub_10000FEC4();
        sub_100018144(v119, v120);
        goto LABEL_14;
      }
    }

    v102 = 2;
    v100 = v176;
    goto LABEL_11;
  }

  v181 = v59;
  v103 = v169;
  sub_100140210();
  v180 = v49;
  v104 = *(v103 + *(v49 + 56));
  sub_100010BF4();
  sub_100147C14(v103, v105);
  v106 = 1;
  switch(v104)
  {
    case 3:
      break;
    default:
      v106 = _stringCompareWithSmolCheck(_:_:expecting:)();
      break;
  }

  __chkstk_darwin(v121);
  v122 = v210;
  v124 = v218;
  v123 = v219;
  *(&v168 - 14) = v210;
  *(&v168 - 13) = v124;
  *(&v168 - 12) = v123;
  LODWORD(v179) = v201 & 1;
  *(&v168 - 88) = v201 & 1;
  v126 = v212;
  v125 = v213;
  *(&v168 - 10) = v220;
  *(&v168 - 9) = v126;
  *(&v168 - 8) = v125;
  v201 = v200 & 1;
  *(&v168 - 56) = v200 & 1;
  v127 = v214;
  *(&v168 - 6) = v215;
  *(&v168 - 5) = v127;
  v128 = v217;
  *(&v168 - 4) = v216;
  *(&v168 - 3) = v128;
  v166 = v82;
  static HorizontalAlignment.center.getter();
  sub_10022C350(&qword_100CD9618);
  sub_100006F64(&qword_100CD9620, &qword_100CD9618);
  v129 = v182;
  VStack.init(alignment:spacing:content:)();
  sub_100017E10();
  v200 = v130;
  v131 = v205;
  sub_1001495C0(v122, v205);
  v132 = *(v203 + 80);
  v133 = v204 + ((v132 + 16) & ~v132);
  v178 = (v132 + 16) & ~v132;
  v134 = swift_allocObject();
  v204 = type metadata accessor for LocationContentView;
  sub_100149618(v131, v134 + ((v132 + 16) & ~v132));
  LODWORD(v203) = v106 & 1;
  v133[v134] = v106 & 1;
  v177 = v133;
  sub_100006F64(&qword_100CD9628, &qword_100CD95B0);
  v135 = v184;
  View.onAppear(perform:)();

  sub_100018144(v129, &qword_100CD95B0);
  sub_1001495C0(v122, v131);
  v136 = swift_allocObject();
  v137 = v178;
  sub_100149618(v131, v136 + v178);
  sub_1007E6CC8();
  v138 = v186;
  View.onDisappear(perform:)();

  sub_100018144(v135, &qword_100CD95B8);
  LOBYTE(v225[0]) = v203;
  v139 = v122;
  sub_1001495C0(v122, v131);
  v140 = swift_allocObject();
  sub_100149618(v131, v140 + v137);
  v141 = sub_1007E6FF0();
  v143 = v187;
  v142 = v188;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v138, &qword_100CD95C0);
  KeyPath = swift_getKeyPath();
  v223 = 0;
  v225[0] = KeyPath;
  LOBYTE(v225[9]) = 0;
  v222[0] = v143;
  v222[1] = &type metadata for Bool;
  v222[2] = v141;
  v222[3] = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v145 = v192;
  v146 = v190;
  View.modifier<A>(_:)();
  memcpy(v224, v225, 0x49uLL);
  sub_10014A2F8(v224);
  (*(v189 + 8))(v142, v146);
  v147 = swift_getKeyPath();
  v224[80] = 0;
  v148 = swift_getKeyPath();
  LOBYTE(v225[0]) = 0;
  v222[0] = v147;
  LOBYTE(v222[9]) = 0;
  v222[10] = v148;
  LOBYTE(v222[11]) = 0;
  sub_1007E707C();
  v149 = v194;
  View.modifier<A>(_:)();
  memcpy(v225, v222, 0x59uLL);
  sub_10014A330(v225);
  sub_100018144(v145, &qword_100CD95D0);
  v150 = v181;
  sub_100140210();
  LOBYTE(v147) = *(v150 + *(v180 + 68));
  sub_100010BF4();
  sub_100147C14(v150, v151);
  v152 = swift_getKeyPath();
  v226 = 0;
  LOBYTE(v221[0]) = v147;
  v221[1] = v152;
  LOBYTE(v221[10]) = 0;
  sub_1007E7158();
  v153 = v195;
  View.modifier<A>(_:)();
  memcpy(v222, v221, 0x51uLL);
  sub_10014A368(v222);
  sub_100018144(v149, &qword_100CD95D8);
  v154 = static Alignment.topTrailing.getter();
  __chkstk_darwin(v154);
  v166 = v139;
  sub_10022C350(&qword_100CD9660);
  sub_1007E71EC();
  sub_1007E7278();
  v155 = v198;
  View.overlay<A>(alignment:content:)();
  sub_100018144(v153, &qword_100CD95E0);
  v156 = sub_1007E72FC();
  v157 = v197;
  v158 = v209;
  sub_1000833D8(v155, v209, v156);
  sub_10000FEC4();
  sub_100018144(v159, v160);
  sub_1000833D8(v157, v158, v156);
  sub_1007E73B4();
  v118 = v207;
  sub_10012D09C();
  sub_10010CD64(v218, v219, v179);

  sub_10010CD64(v212, v213, v201);

  sub_10014A53C(v214, v216, v217, v202);
  sub_10000FEC4();
  sub_100018144(v161, v162);
  sub_10000FEC4();
  sub_100018144(v163, v164);
LABEL_14:
  v165 = sub_1007E74CC();
  sub_1000833D8(v118, v208, v165);
  sub_100018144(v118, &qword_100CD9610);
  sub_10000536C();
}

uint64_t sub_10013FFC4()
{
  type metadata accessor for LocationContentView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  swift_unknownObjectRelease();

  sub_100006F14(v3 + 56);
  sub_100006F14(v3 + 96);

  sub_1000EBD74(*(v3 + 144), *(v3 + 152));
  v4 = v3 + v0[13];
  sub_10022C350(&qword_100CB3278);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  sub_10002436C(v3 + v0[14]);
  v7 = v0[15];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  sub_10002436C(v3 + v0[16]);
  sub_10002436C(v3 + v0[17]);

  v9 = v0[19];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);

  return swift_deallocObject();
}

void sub_100140210()
{
  sub_10000C778();
  sub_1000753E4();
  v1 = type metadata accessor for LocationInput();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4B90);
      sub_100024C98(*(v6 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v7();
    v8 = sub_100028ED4();
    v0(v8);

    sub_10022C350(&qword_100CA4B90);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v9 = sub_100049FC4();
    sub_1000217D8(v9, v10, &qword_100CA4B70);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_1001403D0(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, __n128))
{
  v5 = sub_10022C350(&qword_100CA4B88);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for LocationInput();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4B88);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v12._object = 0xED00007475706E49;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._object = 0x8000000100ABC0E0;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001405E0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v197 = a2;
  v199 = *v2;
  v221 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v172 = v4;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v220 = v6;
  v7 = sub_10022C350(&qword_100CA6600);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100003918(&v171 - v9);
  v198 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  sub_100003918(v11);
  v209 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v217 = v12;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v208 = v14;
  v15 = type metadata accessor for AppConfigurationState();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000038E4();
  sub_100003918(v17);
  v18 = type metadata accessor for TimeState();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000038E4();
  v21 = sub_100003918(v20);
  v188 = type metadata accessor for ModalViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v218 = v23;
  v24 = type metadata accessor for LocationPreviewViewState(0);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000038E4();
  v184 = v26;
  v27 = sub_10022C350(&qword_100CA65C8);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  v195 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v32 = sub_100003918(&v171 - v31);
  v212 = type metadata accessor for ViewState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003848();
  v219 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003918(&v171 - v36);
  v216 = type metadata accessor for Date();
  sub_1000037C4();
  v202 = v37;
  __chkstk_darwin(v38);
  sub_100003848();
  v207 = v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  v206 = &v171 - v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  v204 = &v171 - v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  v46 = &v171 - v45;
  v47 = sub_10022C350(&unk_100CE49F0);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  sub_100003848();
  v205 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  v52 = &v171 - v51;
  __chkstk_darwin(v53);
  v55 = &v171 - v54;
  __chkstk_darwin(v56);
  v57 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v213 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v59 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v58 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v210 = a1;
  v211 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v200 = &v171 - v60;
  sub_1000302D8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, &v171 - v60, &unk_100CE49F0);
  v61 = qword_100CA2158;
  v215 = v57;
  v62 = v59;

  v214 = v58;

  if (v61 != -1)
  {
    swift_once();
  }

  sub_100141A38();
  Configurable.setting<A>(_:)();
  Date.init(timeIntervalSince1970:)();
  if (qword_100CA2160 != -1)
  {
    swift_once();
  }

  v201 = v46;
  Configurable.setting<A>(_:)();
  v63 = v223;
  v64 = (v210 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
  v65 = type metadata accessor for NotificationsOptInState();
  LODWORD(v199) = v64[v65[16]];
  v66 = v200;
  sub_1000302D8(v200, v55, &unk_100CE49F0);
  v67 = type metadata accessor for CurrentLocation();
  sub_1000038B4(v55, 1, v67);
  if (v83)
  {
    sub_1000180EC(v55, &unk_100CE49F0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_100010D38();
    sub_100141B94(v55, v68);
  }

  sub_100141E5C();
  v70 = v69;

  sub_1000302D8(v66, v52, &unk_100CE49F0);
  sub_1000038B4(v52, 1, v67);
  v190 = v63;
  if (v83)
  {
    sub_1000180EC(v52, &unk_100CE49F0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_100010D38();
    sub_100141B94(v52, v71);
  }

  v72 = v210;
  v192 = v62;
  sub_100141E74();
  v74 = v73;

  v75 = v72 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v76 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
  v77 = sub_100141E8C(v199, v70 & 1, v74 & 1, *(v75 + 1), *(v72 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications), *(v75 + 2));
  sub_10001A034();
  *(v79 - 256) = v78;
  v80 = v187;
  sub_100095270();
  v81 = *(v80 + *(v212 + 36) + 8);
  sub_100023310();
  v189 = v77;
  v186 = v65;
  v185 = v76;
  if (v81 != 1)
  {
    goto LABEL_17;
  }

  v81 = 0xD000000000000010;
  v83 = LocationAuthorizationState.rawValue.getter(*(v75 + 1)) == 0xD000000000000010 && 0x8000000100ABA410 == v82;
  if (v83)
  {
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v65 & 1) == 0)
    {
LABEL_17:
      sub_10000689C();
      v84 = v218;
      goto LABEL_28;
    }
  }

  switch(*(v72 + v76))
  {
    case 1:

      v84 = v218;
      goto LABEL_23;
    default:
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v84 = v218;
      if (v65)
      {
LABEL_23:
        v81 = v203;
        if (v64[18] == 1)
        {
          LODWORD(v187) = v64[19] ^ 1;
        }

        else
        {
          LODWORD(v187) = 0;
        }

        v65 = v198;
      }

      else
      {
        sub_10000689C();
      }

      break;
  }

LABEL_28:
  v85 = *(v211 + v65[13]);
  sub_100095270();
  v86 = v66;
  if (swift_getEnumCaseMultiPayload())
  {

    sub_100141B94(v84, type metadata accessor for ModalViewState);
    v87 = 1;
  }

  else
  {
    v88 = v184;
    sub_1001876B0();
    sub_100095270();

    sub_100141B94(v88, type metadata accessor for LocationPreviewViewState);
    v87 = 0;
  }

  v188 = v85;
  v89 = type metadata accessor for PreviewLocation();
  sub_10001B350(v81, v87, 1, v89);
  v173 = *(v75 + 3);
  v180 = *v64;
  v90 = *(v64 + 1);
  v91 = v186;
  v92 = *(v202 + 16);
  v93 = v216;
  v92(v204, &v64[v186[11]], v216);
  v182 = v64[v91[12]];
  v183 = v64[v91[14]];
  LODWORD(v184) = *(v75 + 1);
  LODWORD(v185) = *(v72 + v185);
  v92(v206, v201, v93);
  sub_1000302D8(v86, v205, &unk_100CE49F0);
  sub_10001A034();
  v94 = v219;
  sub_100095270();
  v186 = *&v94[*(v212 + 36) + 8];
  v181 = v90;

  sub_100023310();
  v95 = v75 + *(type metadata accessor for EnvironmentState() + 72);
  v96 = *v95;
  v97 = *(v95 + 8);
  v98 = *(v95 + 16);
  v99 = *(v95 + 24);
  v100 = *(v95 + 32);
  v101 = *(v95 + 40);
  v102 = *(v211 + v65[9]);
  v103 = *(v102 + 16);
  v179 = *v95;
  v178 = v97;
  v177 = v98;
  v176 = v99;
  v175 = v100;
  v174 = v101;
  if (v103)
  {
    v222 = _swiftEmptyArrayStorage;
    v104 = v96;
    v105 = v97;
    v106 = v98;
    v107 = v99;
    v108 = v100;
    v109 = v101;

    sub_10000369C(0, v103, 0);
    v110 = v222;
    v111 = v172 + 16;
    v219 = *(v172 + 16);
    v112 = (*(v172 + 80) + 32) & ~*(v172 + 80);
    v172 = v102;
    v113 = v102 + v112;
    v218 = *(v111 + 56);
    v114 = (v111 - 8);
    do
    {
      v115 = v220;
      v116 = v221;
      (v219)(v220, v113, v221);
      v117 = Location.Identifier.id.getter();
      v119 = v118;
      (*v114)(v115, v116);
      v222 = v110;
      v121 = v110[2];
      v120 = v110[3];
      if (v121 >= v120 >> 1)
      {
        sub_10000369C((v120 > 1), v121 + 1, 1);
        v110 = v222;
      }

      v110[2] = v121 + 1;
      v122 = &v110[2 * v121];
      v122[4] = v117;
      v122[5] = v119;
      v113 += v218;
      --v103;
    }

    while (v103);

    v123 = v195;
    v65 = v198;
    v72 = v210;
  }

  else
  {
    v124 = v101;
    v125 = v96;
    v126 = v97;
    v127 = v98;
    v128 = v99;
    v129 = v100;
    v110 = _swiftEmptyArrayStorage;
    v123 = v195;
  }

  v130 = v191;
  sub_100095270();
  v131 = v72;
  v132 = v202;
  v133 = v216;
  v221 = *(v202 + 32);
  v221(v207, v130, v216);
  v134 = v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  LODWORD(v219) = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v135 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v220 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);

  v218 = v135;

  LODWORD(v210) = static Settings.HomeAndWork.homeAndWorkLabelEnabled.getter();
  v136 = v193;
  sub_100095270();
  v137 = *(v217 + 32);
  v217 += 32;
  v198 = v137;
  (v137)(v208, v136, v209);
  v138 = *(v134 + 16);
  v139 = v211;
  v140 = v194;
  sub_100095270();
  v193 = *(*(v140 + v65[6]) + 16);
  type metadata accessor for SavedLocationsManager();
  v195 = v138;

  v141 = static SavedLocationsManager.maxAllowedLocationsCount.getter();
  (*(v132 + 8))(v201, v133);
  sub_1000180EC(v200, &unk_100CE49F0);
  sub_100141B94(v140, type metadata accessor for LocationsState);
  sub_10011C0F0(v203, v123, &qword_100CA65C8);
  v142 = *(v139 + v65[7]);
  v143 = v196;
  sub_1000302D8(v199 + *(v212 + 32), v196, &qword_100CA6600);
  v144 = type metadata accessor for SearchViewState(0);
  sub_1000038B4(v143, 1, v144);
  v145 = v123;
  if (v83)
  {

    sub_1000180EC(v143, &qword_100CA6600);
    v146 = 1;
  }

  else
  {
    v147 = *v143;
    v148 = v143[1];

    sub_100141B94(v143, type metadata accessor for SearchViewState);

    v149 = HIBYTE(v148) & 0xF;
    v150 = v147 & 0xFFFFFFFFFFFFLL;
    v145 = v123;
    if ((v148 & 0x2000000000000000) == 0)
    {
      v149 = v150;
    }

    v146 = v149 == 0;
  }

  LODWORD(v212) = v146;
  v151 = v187;
  v152 = v181;
  v153 = v180;
  v154 = v197;
  *v197 = v173 == 4;
  v155 = v193 < v141;
  *(v154 + 1) = v153;
  *(v154 + 8) = v152;
  v156 = type metadata accessor for LocationInput();
  v157 = v216;
  v158 = v221;
  v221(v154 + v156[7], v204, v216);
  sub_100013D24(v156[8]);
  v159 = v154 + v156[9];
  v160 = v189;
  *(v159 + 2) = BYTE2(v189);
  *v159 = v160;
  sub_100013D24(v156[10]);
  sub_100013D24(v156[11]);
  sub_100013D24(v156[12]);
  *(v154 + v156[13]) = v151 & 1;
  v158(v154 + v156[14], v206, v157);
  sub_100013D24(v156[15]);
  v161 = (v154 + v156[16]);
  v162 = v215;
  *v161 = v213;
  v161[1] = v162;
  v163 = v214;
  v161[2] = v192;
  v161[3] = v163;
  sub_10011C0F0(v205, v154 + v156[17], &unk_100CE49F0);
  *(v154 + v156[18]) = v186;
  v164 = (v154 + v156[19]);
  v165 = v178;
  *v164 = v179;
  v164[1] = v165;
  v166 = v176;
  v164[2] = v177;
  v164[3] = v166;
  v167 = v174;
  v164[4] = v175;
  v164[5] = v167;
  *(v154 + v156[20]) = v110;
  v158(v154 + v156[21], v207, v157);
  v168 = v154 + v156[22];
  *v168 = v219;
  v169 = v218;
  *(v168 + 8) = v220;
  *(v168 + 16) = v169;
  *(v154 + v156[23]) = v210 & 1;
  *(v154 + v156[24]) = v188;
  (v198)(v154 + v156[25], v208, v209);
  *(v154 + v156[26]) = v195;
  *(v154 + v156[27]) = v155;
  sub_10011C0F0(v145, v154 + v156[28], &qword_100CA65C8);
  *(v154 + v156[29]) = v142;
  *(v154 + v156[30]) = v212;
  return sub_10001B350(v154, 0, 1, v156);
}

uint64_t sub_1001418A0()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for Domain();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  (*(v10 + 104))(v9 - v8, enum case for Domain.standard(_:));
  (*(v2 + 104))(v6, enum case for Access.public(_:), v0);
  sub_10022C350(&qword_100CBCE20);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D8FFB0 = result;
  return result;
}

unint64_t sub_100141A38()
{
  result = qword_100CDD9D8;
  if (!qword_100CDD9D8)
  {
    type metadata accessor for LocationInputFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD9D8);
  }

  return result;
}

uint64_t sub_100141A8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100141AE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100141B3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100141B94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100141BEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_100141C44()
{
  sub_10000C778();
  v24 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000115E8();
  v8 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  sub_10003BA64();
  if (v6)
  {
    if (*(v4 + 16))
    {
      sub_100031B34();
      if (v16)
      {
        sub_100049B4C();
        sub_1001A0E7C(v17, v1);
        sub_100014AD8();
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1001A126C(v1, type metadata accessor for LocationAvailableDataSetState);
        }

        else
        {
          v18 = sub_10002C598();
          v20 = v19(v18);
          v24(v20);
          sub_100016DE0();
          sub_100712170(v21, v22);
          dispatch thunk of SetAlgebra.isSuperset(of:)();
          v23 = *(v10 + 8);
          v23(v14, v8);
          v23(v0, v8);
        }
      }
    }
  }

  sub_10000536C();
}

uint64_t sub_100141E8C(char a1, char a2, char a3, char a4, char a5, unsigned __int8 a6)
{
  if (qword_100CA26D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90AD8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v38 = a2;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v14 = 67110146;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = a2 & 1;
    *(v14 + 14) = 1024;
    *(v14 + 16) = a3 & 1;
    *(v14 + 20) = 2082;
    sub_10014228C();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = a3;
    v18 = a4;
    v19 = sub_100078694(v15, v16, &v40);

    *(v14 + 22) = v19;
    *(v14 + 30) = 2082;
    sub_1001426A4();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_100078694(v20, v21, &v40);

    *(v14 + 32) = v22;
    a4 = v18;
    a3 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Determining user opt-in status, requestedLocationPermission=%{BOOL}d, nhpAvailable=%{BOOL}d, severeAvailable=%{BOOL}d, locationAuthorization=%{public}s, notificationsAuthorization=%{public}s, ", v14, 0x28u);
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();
  }

  if (a4 == 2 && a5 == 1)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = 2;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "User opt-in status is .optedIn", v33, 2u);
      sub_100003884();
    }

    else
    {

      return 2;
    }
  }

  else if ((a1 & 1) != 0 && a4 && a5 != 3 && a5)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "User opt-in status is .declined", v37, 2u);
      sub_100003884();
    }

    return 3;
  }

  else
  {
    v24 = a4;
    v25 = (v38 ^ 1) & a3;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      v29 = v25 & 1;
      *(v28 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v26, v27, "User opt-in status is .newUser(newCoverage: %{BOOL}d)", v28, 8u);
      sub_100003884();
    }

    else
    {

      v29 = v25 & 1;
    }

    return (v29 | ((v24 == 2) << 8)) & 0xFF00FFFF | (a6 << 16);
  }

  return v32;
}

unint64_t sub_10014228C()
{
  result = qword_100CAF018;
  if (!qword_100CAF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF018);
  }

  return result;
}

unint64_t sub_1001422E0()
{
  result = qword_100CAF020;
  if (!qword_100CAF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF020);
  }

  return result;
}

uint64_t sub_100142334()
{
  sub_1001422E0();

  return ShortDescribable.description.getter();
}

uint64_t LocationAuthorizationState.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CAF000);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_100142640();
  v6 = sub_100042FB0(a1);
  return (*(v3 + 32))(v6, v5, v2);
}

unint64_t sub_100142640()
{
  result = qword_100CAF008;
  if (!qword_100CAF008)
  {
    sub_10022E824(&qword_100CAF000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF008);
  }

  return result;
}

unint64_t sub_1001426A4()
{
  result = qword_100CB9BD8;
  if (!qword_100CB9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB9BD8);
  }

  return result;
}

uint64_t sub_1001426F8()
{
  sub_100142734();

  return ShortDescribable.description.getter();
}

unint64_t sub_100142734()
{
  result = qword_100CBB958;
  if (!qword_100CBB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB958);
  }

  return result;
}

uint64_t NotificationAuthorizationState.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CBB940);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_100142A08();
  v6 = sub_100042FB0(a1);
  return (*(v3 + 32))(v6, v5, v2);
}

unint64_t sub_100142A08()
{
  result = qword_100CBB948;
  if (!qword_100CBB948)
  {
    sub_10022E824(&qword_100CBB940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB948);
  }

  return result;
}

uint64_t sub_100142A80(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      sub_10022C350(&unk_100CE49F0);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[17];
      }

      else
      {
        type metadata accessor for AppConfiguration();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[25];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA65C8);
          v11 = a4[28];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100142BF0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      sub_10022C350(&unk_100CE49F0);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[17];
      }

      else
      {
        type metadata accessor for AppConfiguration();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[25];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA65C8);
          v11 = a3[28];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100142D50(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128))
{
  v4 = sub_10022C350(&qword_100CA4B78);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for LocationViewModel();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4B78);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v11._object = 0xED00007475706E49;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._object = 0x8000000100ABC0E0;
  v13._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100142F28@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v696) = a3;
  v701 = a1;
  v697 = a4;
  type metadata accessor for LocationsConfiguration();
  sub_1000037C4();
  v638 = v6;
  v639 = v5;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v637 = v7;
  sub_1000038CC();
  v662 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v661 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v636 = v10;
  v11 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v634 = v13;
  v14 = sub_10022C350(&qword_100CD8AB8);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v672 = v16;
  sub_1000038CC();
  v17 = type metadata accessor for LocationCompositionState();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000038E4();
  v633 = v19;
  v20 = sub_10022C350(&qword_100CA3588);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  v635 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_10000E70C();
  v632 = v24;
  v25 = sub_10022C350(&qword_100CADBA0);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  v668 = v27;
  v28 = sub_10022C350(&qword_100CA65C8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  v640 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v631 = v32;
  sub_1000038CC();
  v630 = type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_1000038E4();
  v615 = v34;
  v35 = sub_10022C350(&qword_100CA6890);
  sub_100003810(v35);
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v629 = v37;
  sub_1000038CC();
  v628 = type metadata accessor for LocationViewConfigurationInputs();
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_1000038E4();
  v655 = v39;
  sub_1000038CC();
  v627 = type metadata accessor for LocationContentState();
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000038E4();
  v676 = v41;
  sub_1000038CC();
  v42 = type metadata accessor for LearnMoreAttributorViewModel();
  v43 = sub_100003810(v42);
  __chkstk_darwin(v43);
  sub_1000038E4();
  v671 = v44;
  sub_1000038CC();
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v625 = v46;
  v626 = v45;
  __chkstk_darwin(v45);
  sub_1000038E4();
  v624 = v47;
  v660 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v675 = v48;
  __chkstk_darwin(v49);
  sub_100003848();
  v659 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_10000E70C();
  v623 = v52;
  v53 = sub_10022C350(&qword_100CAB9B0);
  sub_100003810(v53);
  sub_100003828();
  __chkstk_darwin(v54);
  sub_1000039BC();
  v654 = v55;
  sub_1000038CC();
  v649 = type metadata accessor for UUID();
  sub_1000037C4();
  v648 = v56;
  __chkstk_darwin(v57);
  sub_1000038E4();
  v597 = v58;
  v599 = sub_10022C350(&qword_100CCB488);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  v605 = v60;
  v61 = sub_10022C350(&qword_100CC2B20);
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_100003848();
  v622 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v600 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_10000E70C();
  v602 = v67;
  sub_1000038CC();
  v606 = type metadata accessor for ForegroundEffect();
  sub_1000037C4();
  v601 = v68;
  __chkstk_darwin(v69);
  sub_1000038E4();
  v598 = v70;
  v604 = sub_10022C350(&qword_100CD8BE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v71);
  sub_1000039BC();
  v607 = v72;
  v73 = sub_10022C350(&qword_100CA4B78);
  v74 = sub_100003810(v73);
  __chkstk_darwin(v74);
  sub_100003848();
  v618 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_10000E70C();
  v610 = v77;
  sub_1000038CC();
  v677 = type metadata accessor for LocationViewModel();
  sub_1000037E8();
  __chkstk_darwin(v78);
  sub_100003848();
  v652 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_10000E70C();
  v608 = v81;
  v613 = sub_10022C350(&qword_100CA75C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v82);
  sub_1000039BC();
  v614 = v83;
  v645 = sub_10022C350(&qword_100CB4398);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v84);
  sub_1000039BC();
  v647 = v85;
  v86 = sub_10022C350(&qword_100CA60E8);
  v87 = sub_100003810(v86);
  __chkstk_darwin(v87);
  sub_100003848();
  v651 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v603 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_10000E70C();
  v674 = v92;
  sub_1000038CC();
  v679 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v682 = v93;
  __chkstk_darwin(v94);
  sub_100003848();
  v658 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v653 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_10000E70C();
  v667 = v99;
  sub_1000038CC();
  v700 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v699 = v100;
  __chkstk_darwin(v101);
  sub_100003848();
  v670 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_10000E70C();
  v698 = v104;
  v105 = sub_10022C350(&qword_100CA2CD8);
  v106 = sub_100003810(v105);
  __chkstk_darwin(v106);
  sub_100003848();
  v644 = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_10000E70C();
  v643 = v109;
  sub_1000038CC();
  v656 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v666 = v110;
  __chkstk_darwin(v111);
  sub_1000038E4();
  v673 = v112;
  sub_1000038CC();
  v683 = type metadata accessor for Date();
  sub_1000037C4();
  v684 = v113;
  __chkstk_darwin(v114);
  sub_100003848();
  v669 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  sub_100003878();
  v663 = v117;
  sub_10000386C();
  __chkstk_darwin(v118);
  sub_10000E70C();
  v665 = v119;
  v120 = sub_10022C350(&qword_100CA74F8);
  v121 = sub_100003810(v120);
  __chkstk_darwin(v121);
  sub_100003848();
  v620 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v611 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v646 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  sub_10000E70C();
  v664 = v128;
  sub_1000038CC();
  v678 = type metadata accessor for NewsDataModel();
  sub_1000037E8();
  __chkstk_darwin(v129);
  sub_100003848();
  v609 = v130;
  sub_10000386C();
  __chkstk_darwin(v131);
  sub_10000E70C();
  v686 = v132;
  v133 = sub_10022C350(&qword_100CCD850);
  sub_100003810(v133);
  sub_100003828();
  __chkstk_darwin(v134);
  sub_1000039BC();
  v681 = v135;
  sub_1000038CC();
  v685 = type metadata accessor for PreprocessedWeatherData();
  sub_1000037E8();
  __chkstk_darwin(v136);
  sub_1000038E4();
  v687 = v137;
  v138 = sub_10022C350(&qword_100CA3898);
  v139 = sub_100003810(v138);
  __chkstk_darwin(v139);
  sub_100003848();
  v657 = v140;
  sub_10000386C();
  __chkstk_darwin(v141);
  sub_100003878();
  v616 = v142;
  sub_10000386C();
  __chkstk_darwin(v143);
  sub_100003878();
  v642 = v144;
  sub_10000386C();
  __chkstk_darwin(v145);
  v147 = &v577 - v146;
  v691 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v148);
  sub_100003848();
  v612 = v149;
  sub_10000386C();
  __chkstk_darwin(v150);
  sub_10000E70C();
  v690 = v151;
  v152 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v152);
  sub_100003828();
  __chkstk_darwin(v153);
  v155 = (&v577 - v154);
  v694 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v156);
  sub_1000038E4();
  v689 = v157;
  sub_1000038CC();
  v693 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v692 = v158;
  __chkstk_darwin(v159);
  sub_1000037D8();
  v162 = v161 - v160;
  v163 = sub_10022C350(&qword_100CA65D8);
  v164 = sub_100003810(v163);
  __chkstk_darwin(v164);
  sub_100003848();
  v621 = v165;
  sub_10000386C();
  __chkstk_darwin(v166);
  v168 = &v577 - v167;
  __chkstk_darwin(v169);
  v171 = &v577 - v170;
  v172 = type metadata accessor for Location();
  sub_1000037C4();
  v174 = v173;
  __chkstk_darwin(v175);
  sub_100003848();
  v641 = v176;
  sub_10000386C();
  __chkstk_darwin(v177);
  v179 = &v577 - v178;
  LocationModel.coalesceLocation.getter();
  v180 = sub_100016298();
  sub_1000038B4(v180, v181, v172);
  if (v205)
  {
    sub_1000180EC(v171, &qword_100CA65D8);
    v182 = v698;
    LocationModel.identifier.getter();
    v183 = LocationModel.id.getter();
    v185 = sub_1001467A8(v183, v184, v701);

    sub_1001469E8(v182, 0, v185 & 1, 0, v697);
    v186 = sub_100021744();
    return v188(v186, v187);
  }

  v590 = v147;
  v650 = v174;
  v189 = *(v174 + 32);
  v680 = v172;
  v189(v179, v171, v172);
  v190 = LocationModel.coalesceLocationID.getter();
  v695 = v155;
  v191 = v190;
  v193 = v192;
  v617 = v168;
  v589 = a2;
  LocationModel.location.getter();
  v194 = *(v702 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_logger);
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v593 = sub_10022C350(&qword_100CA40C8);
  v195 = swift_allocObject();
  v592 = xmmword_100A2C3F0;
  *(v195 + 16) = xmmword_100A2C3F0;
  v688 = v179;
  v196 = Location.name.getter();
  v198 = v197;
  *(v195 + 56) = &type metadata for String;
  v594 = sub_100035744();
  *(v195 + 64) = v594;
  *(v195 + 32) = v196;
  *(v195 + 40) = v198;
  sub_100037E14();
  v595 = v194;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v199 = v696;
  v619 = v696 & 1;
  v200 = type metadata accessor for LocationInput();
  v201 = &v701[*(v200 + 64)];
  v202 = *(v201 + 2);
  v591 = v191;
  v203 = v191;
  v204 = v695;
  v596 = v193;
  sub_1000864C0(v203, v193, v202);
  sub_1000038B4(v204, 1, v694);
  v206 = v162;
  v207 = v199;
  if (v205)
  {
    v208 = &qword_100CA37B0;
    v209 = v204;
LABEL_10:
    sub_1000180EC(v209, v208);
    static os_signpost_type_t.end.getter();
    v214 = sub_100036F0C();
    *(v214 + 16) = v592;
    v215 = v688;
    v216 = Location.name.getter();
    v217 = v594;
    *(v214 + 56) = &type metadata for String;
    *(v214 + 64) = v217;
    *(v214 + 32) = v216;
    *(v214 + 40) = v218;
    sub_100037E14();
    sub_100016574();
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    v219 = v698;
    Location.identifier.getter();
    v220 = v619 == 0;
    sub_1000300A0();
    v224 = sub_1001467A8(v221, v222, v223);

    sub_1001469E8(v219, v220, v224 & 1, v207 & 1, v697);
    v225 = sub_100021744();
    v226(v225);
    (*(v692 + 8))(v206, v693);
    sub_1000180EC(v617, &qword_100CA65D8);
    v188 = *(v650 + 8);
    v186 = v215;
    v187 = v680;
    return v188(v186, v187);
  }

  v694 = v201;
  v210 = v689;
  sub_1001071AC(v204, v689, type metadata accessor for LocationWeatherDataState);
  v211 = v590;
  sub_1001A0D3C();
  sub_1000038B4(v211, 1, v691);
  if (v212)
  {
    sub_10001FAF0();
    sub_100105FE4(v210, v213);
    v208 = &qword_100CA3898;
    v209 = v211;
    goto LABEL_10;
  }

  v695 = v200;
  sub_10002CB38();
  v228 = v690;
  sub_1001071AC(v211, v690, v229);
  v230 = v681;
  sub_1001ACCC0();
  sub_1000038B4(v230, 1, v685);
  v232 = v702;
  if (v231)
  {
    sub_10001CFB4();
    sub_100105FE4(v228, v233);
    sub_10001FAF0();
    sub_100105FE4(v210, v234);
    v208 = &qword_100CCD850;
    v209 = v230;
    goto LABEL_10;
  }

  v235 = v230;
  v236 = v687;
  sub_1001071AC(v235, v687, type metadata accessor for PreprocessedWeatherData);
  v237 = v664;
  sub_1001A8724();
  v238 = sub_100016298();
  sub_1000038B4(v238, v239, v678);
  if (v240)
  {
    sub_10001CFB4();
    sub_100105FE4(v228, v241);
    sub_10001FAF0();
    sub_100105FE4(v210, v242);
    sub_1000233E4();
    sub_100105FE4(v236, v243);
    v208 = &qword_100CA74F8;
    v209 = v237;
    goto LABEL_10;
  }

  v585 = v202;
  v580 = v206;

  sub_100020C28();
  sub_1001071AC(v237, v686, v244);
  v245 = v232[31];
  sub_1000161C0(v232 + 27, v232[30]);
  Location.kind.getter();
  v246 = Location.Identifier.Kind.rawValue.getter();
  v248 = v247;
  v249 = 1;
  v250 = Location.Identifier.Kind.rawValue.getter();
  if (v246 != v250 || v248 != v251)
  {
    v249 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v253 = v701;
  v254 = v701[1];
  v255 = *(v701 + 1);
  v256 = Location.id.getter();
  LOBYTE(v255) = sub_1001B10E0(v256, v257, v255);

  v258 = v253[v695[11]];
  v259 = *&v253[v695[9]] | (v253[v695[9] + 2] << 16);
  v260 = *(v245 + 16);
  v261 = &v253[v695[7]];
  v582 = v253[v695[12]];
  v583 = v258;
  v584 = v259;
  v262 = v260(v249 & 1, v254, v255 & 1, v261);
  v586 = objc_opt_self();
  v263 = [v586 currentDevice];
  v264 = [v263 userInterfaceIdiom];

  if (v264 != 1)
  {
    v588 = v262;
    Location.kind.getter();
    v268 = Location.Identifier.Kind.rawValue.getter();
    v270 = v269;
    v272 = v268 == Location.Identifier.Kind.rawValue.getter() && v270 == v271;
    v265 = v677;
    if (v272)
    {

      v267 = v701;
    }

    else
    {
      v273 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v267 = v701;
      if ((v273 & 1) == 0)
      {
        LODWORD(v664) = 0;
LABEL_33:
        v274 = v683;
        v266 = v695;
        goto LABEL_37;
      }
    }

    v266 = v695;
    LODWORD(v664) = v267[v695[13]];
    goto LABEL_36;
  }

  v265 = v677;
  if ((v262 & 1) == 0)
  {
    v588 = 0;
    LODWORD(v664) = 0;
    v267 = v701;
    goto LABEL_33;
  }

  LODWORD(v664) = 0;
  v266 = v695;
  v267 = v701;
  v588 = v701[v695[10]] == 2;
LABEL_36:
  v274 = v683;
LABEL_37:
  v275 = v684 + 16;
  v276 = &v267[v266[14]];
  v681 = *(v684 + 16);
  v681(v665, v276, v274);
  v277 = v232 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastViewModel;
  sub_10002401C();
  sub_100024D10(v277, 1, v265);
  v278 = v643;
  v590 = v277;
  v279 = v665;
  LODWORD(v596) = sub_1001AEAB8();
  v280 = *(v684 + 8);
  v684 += 8;
  v591 = v280;
  v280(v279, v274);
  v281 = v267;
  v282 = *&v267[v695[22] + 8];
  v283 = v698;
  Location.identifier.getter();
  v284 = Location.Identifier.id.getter();
  sub_100113300(v284, v285, v282);

  v578 = *(v699 + 8);
  v579 = v699 + 8;
  v578(v283, v700);
  v286 = sub_100016298();
  v287 = v656;
  sub_1000038B4(v286, v288, v656);
  if (v205)
  {
    v289 = v667;
    WeatherDataModel.currentWeather.getter();
    CurrentWeather.condition.getter();
    (*(v682 + 8))(v289, v679);
    v290 = sub_100016298();
    sub_1000038B4(v290, v291, v287);
    v292 = v650;
    if (!v205)
    {
      sub_1000180EC(v278, &qword_100CA2CD8);
    }
  }

  else
  {
    (*(v666 + 32))(v673, v278, v287);
    v292 = v650;
  }

  v293 = *(v292 + 16);
  v643 = v292 + 16;
  v581 = v293;
  (v293)(v641, v688, v680);
  v294 = v695;
  v587 = v695[21];
  v665 = v275;
  v681(v663, &v281[v587], v683);
  v295 = v691;
  v296 = v281;
  v297 = v690;
  v698 = v690 + *(v691 + 24);
  WeatherDataModel.currentWeather.getter();
  (*(v666 + 16))(v644, v673, v287);
  sub_10000E7B0();
  sub_10001B350(v298, v299, v300, v287);
  ForegroundEffect.init(for:at:currentWeather:weatherCondition:)();
  v301 = *&v296[v294[26]];
  v302 = LocationModel.id.getter();
  LODWORD(v644) = sub_1001B1084(v302, v303, v301);

  sub_10001A080();
  v304 = v642;
  sub_10011145C(v297, v642, v305);
  sub_10000E7B0();
  sub_10001B350(v306, v307, v308, v295);
  v309 = v702 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastWeatherData;
  sub_10002401C();
  v310 = *(v645 + 48);
  v311 = v647;
  sub_1000318A4();
  sub_1000302D8(v312, v313, v314);
  v645 = v309;
  sub_1000318A4();
  v315 = v295;
  sub_1000302D8(v316, v317, v318);
  p_vtable = (&OBJC_METACLASS____TtC7Weather35SunriseSunsetDetailViewModelFactory + 24);
  if (sub_100024D10(v311, 1, v295) == 1)
  {
    sub_1000180EC(v304, &qword_100CA3898);
    v320 = sub_100037318();
    sub_1000038B4(v320, v321, v295);
    v322 = v646;
    if (!v205)
    {
      goto LABEL_48;
    }

    sub_1000180EC(v311, &qword_100CA3898);
LABEL_50:
    v338 = p_vtable;
    sub_100024B5C();
    sub_10011145C(v686, v322, v339);
    sub_10000E7B0();
    v340 = v678;
    sub_10001B350(v341, v342, v343, v678);
    sub_10002401C();
    v311 = v614;
    v344 = *(v613 + 48);
    sub_1000318A4();
    sub_1000302D8(v345, v346, v347);
    sub_1000318A4();
    sub_1000302D8(v348, v349, v350);
    sub_1000038B4(v311, 1, v340);
    if (v205)
    {
      sub_1000180EC(v322, &qword_100CA74F8);
      v351 = sub_100037318();
      sub_1000038B4(v351, v352, v340);
      v315 = v691;
      if (v205)
      {
        sub_1000180EC(v311, &qword_100CA74F8);
LABEL_92:
        v518 = v610;
        sub_1000302D8(v590, v610, &qword_100CA4B78);
        v519 = sub_10000C7F0();
        v520 = v677;
        sub_1000038B4(v519, v521, v677);
        if (!v205)
        {
          sub_100028C90();
          v522 = v608;
          sub_1001071AC(v518, v608, v523);
          if (v588 == *(v522 + v520[10]) && v664 == *(v522 + v520[11]) && *(v522 + v520[12]) == v596 && *(v522 + v520[18]) == *v701 && (static Date.== infix(_:_:)() & 1) != 0)
          {
            v441 = *(v604 + 48);
            v478 = v607;
            sub_1000318A4();
            sub_1000302D8(v524, v525, v526);
            sub_1000318A4();
            sub_1000302D8(v527, v528, v529);
            v476 = v606;
            sub_1000038B4(v478, 1, v606);
            if (v205)
            {
              sub_1000038B4(v441 + v478, 1, v476);
              if (v205)
              {
                sub_1000180EC(v607, &qword_100CA60E8);
                goto LABEL_113;
              }

              goto LABEL_111;
            }

            goto LABEL_108;
          }

          sub_10000CF70();
          sub_100105FE4(v522, v530);
          goto LABEL_106;
        }

        v327 = &qword_100CA4B78;
        v358 = v518;
        goto LABEL_60;
      }
    }

    else
    {
      v353 = v611;
      sub_1000302D8(v311, v611, &qword_100CA74F8);
      v354 = sub_100037318();
      sub_1000038B4(v354, v355, v340);
      if (!v356)
      {
        sub_100020C28();
        v508 = v311 + v344;
        v509 = v609;
        sub_1001071AC(v508, v609, v510);
        v511 = sub_1009D82EC(v353, v509);
        sub_100105FE4(v509, type metadata accessor for NewsDataModel);
        sub_1000300A0();
        sub_1000180EC(v512, v513);
        v514 = sub_100004464();
        sub_100105FE4(v514, v515);
        sub_1000300A0();
        sub_1000180EC(v516, v517);
        v315 = v691;
        if ((v511 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_92;
      }

      sub_1000180EC(v322, &qword_100CA74F8);
      sub_10007515C();
      sub_100105FE4(v353, v357);
      v315 = v691;
    }

    v327 = &qword_100CA75C0;
    goto LABEL_59;
  }

  v323 = v616;
  sub_1000302D8(v311, v616, &qword_100CA3898);
  v324 = sub_100037318();
  sub_1000038B4(v324, v325, v295);
  v322 = v646;
  if (!v205)
  {
    sub_10002CB38();
    v328 = v311 + v310;
    v329 = v612;
    sub_1001071AC(v328, v612, v330);
    v331 = sub_100883064(v323, v329);
    sub_100105FE4(v329, type metadata accessor for WeatherData);
    sub_1000300A0();
    sub_1000180EC(v332, v333);
    v334 = sub_100004464();
    v315 = v691;
    sub_100105FE4(v334, v335);
    sub_1000300A0();
    p_vtable = &OBJC_METACLASS____TtC7Weather35SunriseSunsetDetailViewModelFactory.vtable;
    sub_1000180EC(v336, v337);
    if ((v331 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_50;
  }

  sub_1000180EC(v304, &qword_100CA3898);
  sub_10001CFB4();
  sub_100105FE4(v323, v326);
LABEL_48:
  v327 = &qword_100CB4398;
LABEL_59:
  v358 = v311;
LABEL_60:
  sub_1000180EC(v358, v327);
  while (1)
  {
LABEL_61:
    sub_10001A080();
    v647 = v359;
    sub_10011145C(v690, v657, v360);
    sub_10000E7B0();
    sub_10001B350(v361, v362, v363, v315);
    swift_beginAccess();
    v364 = sub_100004464();
    sub_10053347C(v364, v365, v366);
    swift_endAccess();
    sub_100024B5C();
    v646 = v367;
    v368 = v620;
    sub_10011145C(v686, v620, v369);
    sub_10000E7B0();
    sub_10001B350(v370, v371, v372, v678);
    v373 = OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastNewsData;
    v374 = v702;
    sub_100071E98();
    sub_10053347C(v368, v374 + v373, &qword_100CA74F8);
    swift_endAccess();
    v375 = v622;
    v376 = v649;
    (*(v648 + 16))(v622, v687, v649);
    sub_10000E7B0();
    sub_10001B350(v377, v378, v379, v376);
    v380 = p_vtable[367];
    sub_100071E98();
    sub_10053347C(v375, v380 + v374, &qword_100CC2B20);
    swift_endAccess();
    sub_1001A1848();
    WeatherDataModel.currentWeather.getter();
    v381 = v623;
    WeatherDataModel.dailyForecast.getter();
    CurrentWeather.date.getter();
    v382 = v624;
    Location.timeZone.getter();
    Forecast<>.todaysWeather(today:timeZone:)();
    (*(v625 + 8))(v382, v626);
    sub_10003A3E8();
    v383();
    v384 = *(v675 + 8);
    v675 += 8;
    v645 = v384;
    v384(v381, v660);
    sub_1000300A0();
    static LocationSearchEntity.makeFromLocation(_:name:)(v385, v386, v387);

    sub_1001A1DF8(v374, v671);
    v388 = v676;
    v389 = sub_100024350();
    v390 = v581;
    v581(v389);
    v391 = v627;
    sub_10011145C(v690, v388 + *(v627 + 20), v647);
    v392 = v391[6];
    v678 = type metadata accessor for PreprocessedWeatherData;
    sub_10011145C(v687, v388 + v392, type metadata accessor for PreprocessedWeatherData);
    sub_10011145C(v686, v388 + v391[7], v646);
    v393 = v701;
    v394 = *v701;
    v663 = v695[25];
    v395 = v391[10];
    v649 = *(v661 + 16);
    v396 = v662;
    (v649)(v388 + v395, &v701[v663], v662);
    LOBYTE(v382) = v619;
    *(v388 + v391[8]) = v619;
    *(v388 + v391[9]) = v394;
    v397 = v655;
    v398 = sub_100024350();
    v390(v398);
    v399 = v628;
    sub_10011145C(v690, v397 + *(v628 + 20), v647);
    sub_10011145C(v687, v397 + v399[6], v678);
    sub_10011145C(v686, v397 + v399[7], v646);
    (v649)(v397 + v399[12], &v393[v663], v396);
    v400 = v702;
    *(v397 + v399[8]) = v382;
    *(v397 + v399[9]) = v596;
    v401 = v399[10];
    LODWORD(v678) = v394;
    *(v397 + v401) = v394;
    *(v397 + v399[11]) = v664;
    sub_1000161C0(v400 + 37, v400[40]);
    Location.coordinate.getter();
    Location.name.getter();
    v402 = v629;
    sub_1001A34D0();
    v403 = v695;

    v404 = type metadata accessor for SavedLocation();
    LODWORD(v648) = sub_100024D10(v402, 1, v404);
    sub_1000180EC(v402, &qword_100CA6890);
    v405 = v403[28];
    LODWORD(v647) = v393[v403[27]];
    v649 = &v393[v405];
    v406 = v631;
    sub_1000302D8(&v393[v405], v631, &qword_100CA65C8);
    v407 = sub_10000C7F0();
    sub_1000038B4(v407, v408, v630);
    if (v205)
    {
      sub_1000180EC(v406, &qword_100CA65C8);
      LODWORD(v663) = 0;
    }

    else
    {
      v409 = v615;
      sub_1001071AC(v406, v615, type metadata accessor for PreviewLocation);
      sub_1000161C0(v400 + 42, v400[45]);
      LODWORD(v663) = sub_100495F00(v409);
      sub_100105FE4(v409, type metadata accessor for PreviewLocation);
    }

    v410 = v668;
    v411 = v589;
    v412 = v688;
    Location.identifier.getter();
    v413 = v621;
    sub_1000302D8(v617, v621, &qword_100CA65D8);
    v414 = sub_10000C7F0();
    sub_1000038B4(v414, v415, v680);
    v416 = v690;
    if (v205)
    {
      sub_1000180EC(v413, &qword_100CA65D8);
      v419 = 1;
    }

    else
    {
      Location.identifier.getter();
      v417 = sub_100004464();
      v418(v417);
      v419 = 0;
    }

    v420 = 1;
    sub_10001B350(v410, v419, 1, v700);
    WeatherDataModel.currentWeather.getter();
    memcpy(__dst, (v687 + *(v685 + 60)), 0x70uLL);
    v643 = __dst[12];
    v646 = __dst[13];

    WeatherDataModel.dailyForecast.getter();
    LocationModel.kind.getter();
    v421 = Location.Identifier.Kind.rawValue.getter();
    v423 = v422;
    if (v421 != Location.Identifier.Kind.rawValue.getter() || v423 != v424)
    {
      v420 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v426 = v632;
    LocationModel.locationOfInterest.getter();
    sub_10001A080();
    v427 = v657;
    sub_10011145C(v416, v657, v428);
    LODWORD(v685) = 1;
    sub_10000E7B0();
    sub_10001B350(v429, v430, v431, v691);
    v432 = v633;
    sub_1001A38F4(v427, v633);
    sub_1000180EC(v427, &qword_100CA3898);
    LODWORD(v657) = v701[v695[23]];
    v433 = v420 & 1;
    v434 = v658;
    v435 = v659;
    v436 = v702;
    sub_1001A5A00(v658, __dst, v411, v412, v696 & 1, v433, v708, v432, v657);
    sub_100105FE4(v432, type metadata accessor for LocationCompositionState);
    sub_1000180EC(v426, &qword_100CA3588);
    (v645)(v435, v660);
    v437 = *(v682 + 8);
    v682 += 8;
    v696 = v437;
    v437(v434, v679);
    v438 = sub_100024350();
    v441 = sub_1001AF7D4(v438, v439, v440);
    sub_1000161C0(v436 + 12, v436[15]);
    v691 = sub_1009864D8(v676);
    Location.kind.getter();
    v442 = Location.Identifier.Kind.rawValue.getter();
    v444 = v443;
    if (v442 != Location.Identifier.Kind.rawValue.getter() || v444 != v445)
    {
      LODWORD(v685) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v447 = v634;
    sub_1000302D8(&v701[v695[17]], v634, &unk_100CE49F0);
    type metadata accessor for CurrentLocation();
    v448 = sub_10000C7F0();
    sub_1000038B4(v448, v449, v450);
    if (v205)
    {
      sub_1000180EC(v447, &unk_100CE49F0);
    }

    else
    {
      CurrentLocation.id.getter();
      sub_100105FE4(v447, &type metadata accessor for CurrentLocation);
    }

    LODWORD(v695) = v647 ^ 1;
    sub_100141E5C();
    v452 = v451;

    if (v657)
    {
      v453 = v635;
      LocationModel.locationOfInterest.getter();
    }

    else
    {
      v454 = type metadata accessor for LocationOfInterest();
      v453 = v635;
      sub_10001B350(v635, 1, 1, v454);
    }

    v455 = v701;
    v456 = v669;
    LODWORD(v701) = v648 == 1;
    v457 = v702;
    sub_10087258C(v688, v685 & 1, v582 == 1, v583 == 2, v671, v452 & 1, v584, v643, v672, v646, v453);

    sub_1000180EC(v453, &qword_100CA3588);
    type metadata accessor for LocationFooterViewModel();
    sub_10000E7B0();
    sub_10001B350(v458, v459, v460, v461);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v694 = UnitManager.temperature.getter();

    v462 = v683;
    v681(v456, &v455[v587], v683);
    v463 = v651;
    sub_1000302D8(v674, v651, &qword_100CA60E8);
    v464 = v667;
    WeatherDataModel.currentWeather.getter();
    LODWORD(v698) = CurrentWeather.isDaylight.getter();
    v696(v464, v679);
    v709 = v705;
    v338 = *(&v706 + 1);
    v465 = v706;
    sub_1000161C0(v457 + 17, v457[20]);
    sub_100358150(&v709, v703);
    v702 = v465;

    v685 = v338;
    v466 = v462;

    v467 = v636;
    sub_100024350();
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    v468 = v637;
    AppConfiguration.locationsConfiguration.getter();
    (*(v661 + 8))(v467, v662);
    LOBYTE(v464) = LocationsConfiguration.shouldTrackComponentExposureEvents.getter();
    (*(v638 + 8))(v468, v639);
    v469 = v640;
    sub_1000302D8(v649, v640, &qword_100CA65C8);
    v470 = v652;
    (*(v699 + 16))(v652, v670, v700);
    v471 = v677;
    v472 = v668;
    sub_1000302D8(v668, v470 + v677[5], &qword_100CADBA0);
    memcpy((v470 + v471[6]), v708, 0x9AuLL);
    *(v470 + v471[7]) = v441;
    *(v470 + v471[8]) = v691;
    sub_1000302D8(v672, v470 + v471[9], &qword_100CD8AB8);
    *(v470 + v471[10]) = v588;
    *(v470 + v471[11]) = v664;
    *(v470 + v471[12]) = v596;
    v473 = v619;
    *(v470 + v471[13]) = v619 ^ 1;
    *(v470 + v471[14]) = 3;
    *(v470 + v471[15]) = v694;
    *(v470 + v471[16]) = v473 ^ 1;
    *(v470 + v471[17]) = v473;
    *(v470 + v471[18]) = v678;
    v681(v470 + v471[19], v669, v466);
    sub_1000302D8(v463, v470 + v471[20], &qword_100CA60E8);
    *(v470 + v471[21]) = (v698 & 1) == 0;
    v474 = v470 + v471[29];
    v475 = v706;
    *v474 = v705;
    *(v474 + 16) = v475;
    *(v474 + 32) = v707;
    *(v470 + v471[23]) = v464 & 1;
    *(v470 + v471[24]) = v644;
    *(v470 + v471[25]) = v701;
    *(v470 + v471[27]) = v663 & 1;
    *(v470 + v471[28]) = v695 & 1;
    sub_1000302D8(v469, v470 + v471[26], &qword_100CA65C8);

    v476 = [v586 currentDevice];
    v477 = [v476 userInterfaceIdiom];

    if (!v477)
    {
      break;
    }

    v478 = 0;
    v704 = &_swiftEmptyDictionarySingleton;
    v479 = v441[2];
    v480 = v441 + 6;
    v481 = v676;
    while (1)
    {
      if (v479 == v478)
      {

        sub_1000180EC(v469, &qword_100CA65C8);
        sub_1000180EC(v651, &qword_100CA60E8);
        sub_10003A3E8();
        v483();
        sub_1000180EC(v672, &qword_100CD8AB8);
        sub_1000180EC(v668, &qword_100CADBA0);
        v578(v670, v700);
        v484 = v704;
        goto LABEL_90;
      }

      if (v478 >= v441[2])
      {
        break;
      }

      v482 = *(v480 - 1);
      v338 = *v480;
      v476 = *(v480 - 2);
      v703[0] = v478;
      v703[1] = v476;
      v703[2] = v482;
      v703[3] = v338;

      sub_1007C8094(&v704, v703);

      ++v478;
      v480 += 3;
    }

    __break(1u);
LABEL_108:
    sub_1000302D8(v478, v603, &qword_100CA60E8);
    sub_1000038B4(v441 + v478, 1, v476);
    if (v205)
    {
      (*(v601 + 8))(v603, v606);
LABEL_111:
      v531 = &qword_100CD8BE0;
      v532 = v607;
      goto LABEL_122;
    }

    v533 = v601;
    v534 = v607;
    v535 = v441 + v607;
    v536 = v598;
    v537 = v606;
    (*(v601 + 32))(v598, v535, v606);
    sub_10011515C(&qword_100CA6150, &type metadata accessor for ForegroundEffect);
    v538 = v603;
    v539 = dispatch thunk of static Equatable.== infix(_:_:)();
    v540 = *(v533 + 8);
    v540(v536, v537);
    v540(v538, v537);
    sub_1000180EC(v534, &qword_100CA60E8);
    if ((v539 & 1) == 0)
    {
      goto LABEL_123;
    }

LABEL_113:
    sub_10002401C();
    v541 = v649;
    (*(v648 + 16))(v602, v687, v649);
    sub_10000E7B0();
    sub_10001B350(v542, v543, v544, v541);
    v545 = *(v599 + 48);
    v546 = v605;
    sub_1000318A4();
    sub_1000302D8(v547, v548, v549);
    sub_1000318A4();
    sub_1000302D8(v550, v551, v552);
    sub_1000038B4(v546, 1, v541);
    if (v205)
    {
      sub_1000180EC(v602, &qword_100CC2B20);
      sub_1000038B4(v605 + v545, 1, v649);
      if (!v205)
      {
        goto LABEL_121;
      }

      sub_1000180EC(v605, &qword_100CC2B20);
    }

    else
    {
      v553 = v605;
      sub_1000302D8(v605, v600, &qword_100CC2B20);
      sub_1000038B4(v553 + v545, 1, v649);
      if (v554)
      {
        sub_1000180EC(v602, &qword_100CC2B20);
        (*(v648 + 8))(v600, v649);
LABEL_121:
        v531 = &qword_100CCB488;
        v532 = v605;
LABEL_122:
        sub_1000180EC(v532, v531);
        goto LABEL_123;
      }

      v556 = v648;
      v557 = v605;
      v558 = v597;
      v559 = v649;
      (*(v648 + 32))(v597, v605 + v545, v649);
      sub_10011515C(&qword_100CACE10, &type metadata accessor for UUID);
      v560 = v600;
      v561 = dispatch thunk of static Equatable.== infix(_:_:)();
      v562 = *(v556 + 8);
      v562(v558, v559);
      sub_1000180EC(v602, &qword_100CC2B20);
      v562(v560, v559);
      sub_1000180EC(v557, &qword_100CC2B20);
      if ((v561 & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    if (*(v608 + v677[6] + 152) == v701[v695[23]])
    {
      v563 = *(v608 + v677[24]);
      if (v563 == 25)
      {
        if (v644 == 25)
        {
          goto LABEL_137;
        }
      }

      else if (v644 != 25)
      {
        v564 = sub_10030D368(v563);
        v566 = v565;
        if (v564 == sub_10030D368(v644) && v566 == v567)
        {

LABEL_137:
          sub_1000180EC(v674, &qword_100CA60E8);
          v570 = sub_10003BFE0();
          v571(v570);
          sub_10007515C();
          sub_100105FE4(v686, v572);
          sub_10001CFB4();
          sub_100105FE4(v690, v573);
          sub_10001FAF0();
          sub_100105FE4(v689, v574);
          (*(v692 + 8))(v580, v693);
          sub_1000180EC(v617, &qword_100CA65D8);
          (*(v650 + 8))(v688, v680);
          sub_1000233E4();
          sub_100105FE4(v687, v575);
          sub_100028C90();
          return sub_1001071AC(v608, v697, v576);
        }

        v569 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v569)
        {
          goto LABEL_137;
        }
      }
    }

LABEL_123:
    sub_10000CF70();
    sub_100105FE4(v608, v555);
    v315 = v691;
LABEL_106:
    p_vtable = v338;
  }

  v484 = Dictionary.init(dictionaryLiteral:)();
  sub_1000180EC(v469, &qword_100CA65C8);
  sub_1000180EC(v463, &qword_100CA60E8);
  sub_10003A3E8();
  v485();
  sub_1000180EC(v672, &qword_100CD8AB8);
  sub_1000180EC(v472, &qword_100CADBA0);
  v578(v670, v700);
  v481 = v676;
LABEL_90:
  v486 = v677;
  *(v652 + v677[22]) = v484;
  sub_100028C90();
  v487 = v697;
  sub_1001071AC(v488, v697, v489);
  sub_10011145C(v487, v618, type metadata accessor for LocationViewModel);
  sub_10000E7B0();
  sub_10001B350(v490, v491, v492, v486);
  swift_beginAccess();
  v493 = sub_100004464();
  sub_10053347C(v493, v494, v495);
  swift_endAccess();
  static os_signpost_type_t.end.getter();
  v496 = sub_100036F0C();
  *(v496 + 16) = v592;
  v497 = v688;
  v498 = Location.name.getter();
  v499 = v594;
  *(v496 + 56) = &type metadata for String;
  *(v496 + 64) = v499;
  *(v496 + 32) = v498;
  *(v496 + 40) = v500;
  sub_100037E14();
  sub_100016574();
  v501 = v580;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  sub_1002ED110(&v709);

  sub_100105FE4(v655, type metadata accessor for LocationViewConfigurationInputs);
  sub_100105FE4(v481, type metadata accessor for LocationContentState);
  sub_100105FE4(v671, type metadata accessor for LearnMoreAttributorViewModel);
  sub_1000180EC(v654, &qword_100CAB9B0);
  v696(v653, v679);
  sub_1000180EC(v674, &qword_100CA60E8);
  v502 = sub_10003BFE0();
  v503(v502);
  sub_10007515C();
  sub_100105FE4(v686, v504);
  sub_10001CFB4();
  sub_100105FE4(v690, v505);
  sub_10001FAF0();
  sub_100105FE4(v689, v506);
  (*(v692 + 8))(v501, v693);
  sub_1000180EC(v617, &qword_100CA65D8);
  (*(v650 + 8))(v497, v680);
  sub_1000233E4();
  return sub_100105FE4(v687, v507);
}

uint64_t type metadata accessor for LocationCompositionState()
{
  result = qword_100CE8260;
  if (!qword_100CE8260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001463F8()
{
  sub_10014646C();
  if (v0 <= 0x3F)
  {
    sub_100961118();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10014646C()
{
  if (!qword_100CE8270)
  {
    sub_10022E824(&qword_100CE8278);
    sub_10022E824(&qword_100CA3588);
    sub_10022E824(&qword_100CE8280);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CE8270);
    }
  }
}

uint64_t type metadata accessor for LocationViewConfigurationInputs()
{
  result = qword_100CBCAC8;
  if (!qword_100CBCAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100146588()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PreprocessedWeatherData();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NewsDataModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for AppConfiguration();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for LocationContentState()
{
  result = qword_100CE9048;
  if (!qword_100CE9048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001466C4()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PreprocessedWeatherData();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NewsDataModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for AppConfiguration();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001467A8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = *&a3[*(type metadata accessor for LocationInput() + 64) + 16];
  if (*(v13 + 16) && (v14 = sub_100031B34(), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for LocationWeatherDataState(0);
    sub_10011145C(v17 + *(*(v18 - 8) + 72) * v16, v12, type metadata accessor for LocationWeatherDataState);
    v19 = v12;
    v20 = 0;
  }

  else
  {
    v18 = type metadata accessor for LocationWeatherDataState(0);
    v19 = v12;
    v20 = 1;
  }

  sub_10001B350(v19, v20, 1, v18);
  sub_1000302D8(v12, v9, &qword_100CA37B0);
  type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v9, 1, v18) == 1)
  {
    v21 = 0;
  }

  else
  {
    sub_1000302D8(v9, v6, &qword_100CA37B0);
    v21 = swift_getEnumCaseMultiPayload() == 2;
    sub_100105FE4(v6, type metadata accessor for LocationWeatherDataState);
  }

  sub_1000180EC(v9, &qword_100CA37B0);
  sub_1000180EC(v12, &qword_100CA37B0);
  return v21 & *a3;
}

uint64_t sub_1001469E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v69 = a2;
  v8 = sub_10022C350(&qword_100CA65C8);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v75 = v10;
  sub_1000038CC();
  v68 = type metadata accessor for Location();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = sub_10022C350(&qword_100CA60E8);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v79 = v19;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v73 = v21;
  v74 = v20;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v78 = v23 - v22;
  v24 = sub_10022C350(&qword_100CD8AB8);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v63 - v26;
  v28 = sub_10022C350(&qword_100CADBA0);
  sub_100003810(v28);
  sub_100003828();
  __chkstk_darwin(v29);
  v31 = &v63 - v30;
  v32 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_1000037D8();
  v70 = v34;
  v36 = *(v34 + 16);
  v76 = v38 - v37;
  v36();
  (v36)(v31, a1, v32);
  sub_10001B350(v31, 0, 1, v32);
  v65 = Location.Identifier.name.getter();
  v64 = v39;
  v40 = type metadata accessor for LocationFooterViewModel();
  v77 = v27;
  sub_10001B350(v27, 1, 1, v40);
  v41 = 2;
  v72 = a3;
  if ((a3 & 1) == 0)
  {
    v42 = Location.Identifier.name.getter();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v45 != 0;
  }

  v67 = v41;
  v66 = [objc_opt_self() fahrenheit];
  v46 = v78;
  static WeatherClock.date.getter();
  v47 = type metadata accessor for ForegroundEffect();
  v48 = v79;
  sub_10001B350(v79, 1, 1, v47);
  static Location.current.getter();
  static LocationSearchEntity.makeFromLocation(_:name:)(0, 0, v83);
  (*(v12 + 8))(v16, v68);
  v49 = type metadata accessor for PreviewLocation();
  v50 = v75;
  sub_10001B350(v75, 1, 1, v49);
  (v36)(a5, v76, v32);
  v51 = type metadata accessor for LocationViewModel();
  sub_100035AD0(v31, a5 + v51[5], &qword_100CADBA0);
  v52 = a5 + v51[6];
  v53 = v64;
  *v52 = v65;
  *(v52 + 8) = v53;
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = 0;
  *(v52 + 40) = 0x80;
  *(v52 + 41) = *v82;
  *(v52 + 44) = *&v82[3];
  *(v52 + 48) = 0;
  *(v52 + 56) = 0xE000000000000000;
  *(v52 + 64) = 11565;
  *(v52 + 72) = 0xE200000000000000;
  *(v52 + 80) = 0;
  *(v52 + 88) = 0;
  *(v52 + 96) = 0;
  *(v52 + 104) = 0xE000000000000000;
  *(v52 + 112) = 0;
  *(v52 + 120) = 0xE000000000000000;
  *(v52 + 128) = 0;
  *(v52 + 130) = 0;
  *(v52 + 131) = v80;
  *(v52 + 135) = v81;
  *(v52 + 136) = 0;
  *(v52 + 144) = 0xE000000000000000;
  *(v52 + 152) = 0;
  *(a5 + v51[7]) = _swiftEmptyArrayStorage;
  *(a5 + v51[8]) = 0xC000000000000004;
  sub_100035AD0(v77, a5 + v51[9], &qword_100CD8AB8);
  *(a5 + v51[10]) = 0;
  *(a5 + v51[11]) = 0;
  *(a5 + v51[12]) = 2;
  *(a5 + v51[13]) = v69 & 1;
  *(a5 + v51[14]) = v67;
  *(a5 + v51[15]) = v66;
  *(a5 + v51[16]) = 1;
  *(a5 + v51[17]) = v71 & 1;
  *(a5 + v51[18]) = v72 & 1;
  v54 = v73;
  v55 = v46;
  v56 = v74;
  (*(v73 + 16))(a5 + v51[19], v55, v74);
  sub_100035AD0(v48, a5 + v51[20], &qword_100CA60E8);
  *(a5 + v51[21]) = 0;
  v57 = a5 + v51[29];
  v58 = v83[1];
  *v57 = v83[0];
  *(v57 + 16) = v58;
  *(v57 + 32) = v84;
  *(a5 + v51[23]) = 1;
  *(a5 + v51[24]) = 25;
  *(a5 + v51[25]) = 0;
  *(a5 + v51[27]) = 0;
  *(a5 + v51[28]) = 0;
  sub_100035AD0(v50, a5 + v51[26], &qword_100CA65C8);
  v59 = [objc_opt_self() currentDevice];
  v60 = [v59 userInterfaceIdiom];

  if (v60)
  {
    v61 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v61 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_1000180EC(v50, &qword_100CA65C8);
  sub_1000180EC(v79, &qword_100CA60E8);
  (*(v54 + 8))(v78, v56);
  sub_1000180EC(v77, &qword_100CD8AB8);
  sub_1000180EC(v31, &qword_100CADBA0);
  result = (*(v70 + 8))(v76, v32);
  *(a5 + v51[22]) = v61;
  return result;
}

uint64_t sub_100147114(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    type metadata accessor for LearnMoreAttributorViewModel();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[9];
    }

    else
    {
      sub_10022C350(&qword_100CA3588);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[11];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CB4B98);
        v11 = a4[14];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100147244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CB3AB0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

void static LocationSearchEntity.makeFromLocation(_:name:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100022E2C();
  v7 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v48 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    a1 = Location.name.getter();
    v15 = v16;
  }

  sub_10000C70C(0, &qword_100CADA18);

  Location.coordinate.getter();
  v18 = v17;
  Location.coordinate.getter();
  v20 = [objc_allocWithZone(CLLocation) initWithLatitude:v18 longitude:v19];

  v51 = a1;
  v49 = sub_1001476E4(v20, a1, v15, 0);
  Location.identifier.getter();
  v21 = Location.Identifier.id.getter();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v14, v7);
  v26 = v21 == static Location.currentLocationID.getter() && v23 == v25;
  v27 = v15;
  if (v26)
  {

    goto LABEL_11;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_11:
    v41 = static Location.currentLocationID.getter();
    v42 = v43;
    goto LABEL_12;
  }

  v29 = v48;
  Location.identifier.getter();
  v30 = Location.Identifier.id.getter();
  v32 = v31;
  v24(v29, v7);
  v56 = v30;
  v57 = v32;

  v33._countAndFlagsBits = 58;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);

  v35 = v56;
  v34 = v57;
  v56 = Location.name.getter();
  v57 = v36;
  v54 = 58;
  v55 = 0xE100000000000000;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_10002D5A4();
  sub_100008AC8();
  v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v39 = v38;

  v56 = v35;
  v57 = v34;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  v41 = v56;
  v42 = v57;
LABEL_12:
  sub_10022C350(&qword_100CA2DA8);
  sub_100004698();
  v44 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0);

  sub_10001C828();
  sub_10002880C();
  v45 = EntityProperty<>.init(title:)();
  v56 = v51;
  v57 = v27;

  EntityProperty.wrappedValue.setter();
  v56 = v49;
  v46 = v49;
  EntityProperty.wrappedValue.setter();

  v47 = v50;
  *v50 = v41;
  v47[1] = v42;
  v47[2] = v44;
  v47[3] = v45;
  *(v47 + 32) = 0;
}

id sub_1001476E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

uint64_t sub_100147794(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for LearnMoreAttributorViewModel();
    sub_100003928();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[9];
    }

    else
    {
      sub_10022C350(&qword_100CA3588);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[11];
      }

      else
      {
        v11 = sub_10022C350(&qword_100CB4B98);
        v12 = a3[14];
      }
    }

    return sub_100024D10(a1 + v12, a2, v11);
  }
}

uint64_t sub_1001478D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10022C350(&qword_100CB3AB0);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10014797C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_6:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CADBA0);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = v3 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_10022C350(&qword_100CD8AB8);
    sub_100003928();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[9];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v18 + 84) == a2)
      {
        v8 = v17;
        v12 = a3[19];
      }

      else
      {
        sub_10022C350(&qword_100CA60E8);
        sub_100003928();
        if (*(v20 + 84) == a2)
        {
          v8 = v19;
          v12 = a3[20];
        }

        else
        {
          v8 = sub_10022C350(&qword_100CA65C8);
          v12 = a3[26];
        }
      }
    }

    goto LABEL_5;
  }

  v14 = *(v3 + a3[6] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100147B78(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100147B98(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 <= 0x18)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 25;
  }
}

uint64_t sub_100147BBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100147C14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100147C68()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocationViewModel();
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140210();
  v5 = &v4[*(v2 + 32)];
  v6 = *(v5 + 2);
  v7 = *(v5 + 3);
  v8 = *(v5 + 4);
  v9 = v5[40];
  sub_1001480C8(v6, v7, v8, v5[40]);
  sub_100147C14(v4, type metadata accessor for LocationViewModel);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
      LocalizedStringKey.init(stringInterpolation:)();
      if (v9)
      {
        v12 = Text.init(_:tableName:bundle:comment:)();
        v14 = v13;
        v16 = v15;
        v17 = static Text.+ infix(_:_:)();
        v47 = v18;
        v48 = v17;
        v45 = v19;
        v49 = v20;
        sub_10010CD64(v12, v14, v16 & 1);

        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
        v22._countAndFlagsBits = v7;
        v22._object = v8;
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v22);

        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
        LocalizedStringKey.init(stringInterpolation:)();
        v24 = Text.init(_:tableName:bundle:comment:)();
        v26 = v25;
        LOBYTE(v14) = v27;
        v28 = v48;
        v46 = v6;
        v29 = v47;
        v30 = static Text.+ infix(_:_:)();
        sub_10010CD64(v24, v26, v14 & 1);

        sub_10010CD64(v28, v29, v45 & 1);
      }

      else
      {
        v47 = Text.init(_:tableName:bundle:comment:)();
        v48 = v31;
        LODWORD(v46) = v32;
        v49 = v33;
        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
        v35._countAndFlagsBits = v7;
        v35._object = v8;
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v35);

        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
        LocalizedStringKey.init(stringInterpolation:)();
        v37 = Text.init(_:tableName:bundle:comment:)();
        v39 = v38;
        v41 = v40;
        v42 = v47;
        v30 = static Text.+ infix(_:_:)();
        sub_10010CD64(v37, v39, v41 & 1);

        sub_10010CD64(v42, v48, v46 & 1);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v50 = v6;
    v51 = v7;
    sub_10002D5A4();
    return Text.init<A>(_:)();
  }

  return v30;
}

uint64_t sub_1001480C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_100148118(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10010CD54(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10014815C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v75 = a8;
  LODWORD(v98) = a7;
  v100 = a5;
  v101 = a6;
  v81 = a4;
  v82 = a3;
  v74 = a1;
  v99 = a9;
  v76 = a10;
  v77 = a11;
  v78 = a12;
  v79 = a13;
  v17 = type metadata accessor for ScrollIndicatorVisibility();
  v96 = *(v17 - 8);
  v97 = v17;
  __chkstk_darwin(v17);
  v84 = &v72[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_10022C350(&qword_100CD9748);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v83 = &v72[-v19];
  v20 = type metadata accessor for LocationContentView(0);
  v80 = *(v20 - 8);
  v21 = *(v80 + 64);
  __chkstk_darwin(v20 - 8);
  v92 = sub_10022C350(&qword_100CD97D0);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v72[-v22];
  v88 = sub_10022C350(&qword_100CD9740);
  __chkstk_darwin(v88);
  v89 = &v72[-v23];
  v87 = sub_10022C350(&qword_100CD9730);
  __chkstk_darwin(v87);
  v86 = &v72[-v24];
  v85 = sub_10022C350(&qword_100CD9720);
  __chkstk_darwin(v85);
  v95 = &v72[-v25];
  v26 = v82 & 1;
  v73 = v82 & 1;
  v82 = v98 & 1;
  v71 = a8;
  v27 = a1;
  v28 = a2;
  v29 = a2;
  v30 = v81;
  v31 = v100;
  v32 = sub_100148CFC(v13, v27, v29, v26, v81, v100, v101, v82, v71, a10, a11, a12, a13);
  v98 = v13;
  v33 = &v72[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001495C0(v13, v33);
  v34 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 39) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 39) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100149618(v33, v39 + v34);
  v40 = v39 + v35;
  v41 = v74;
  *v40 = v74;
  *(v40 + 8) = v28;
  v42 = v73;
  *(v40 + 16) = v73;
  *(v40 + 24) = v30;
  v43 = v39 + v36;
  v44 = v101;
  *v43 = v31;
  *(v43 + 8) = v44;
  LOBYTE(v31) = v82;
  *(v43 + 16) = v82;
  *(v43 + 24) = v75;
  v45 = (v39 + v37);
  v46 = v76;
  v47 = v77;
  *v45 = v76;
  v45[1] = v47;
  LOBYTE(v34) = v78;
  v48 = v79;
  v45[2] = v78;
  v45[3] = v48;
  *(v39 + v38) = v32;
  v102 = sub_1007E8198;
  v103 = v39;
  v49 = v83;
  sub_10010CD54(v41, v28, v42);

  sub_10010CD54(v100, v44, v31);

  sub_100148118(v46, v47, v34, v48);
  static Axis.Set.vertical.getter();
  sub_10022C350(&qword_100CD97D8);
  sub_100006F64(&qword_100CD97E0, &qword_100CD97D8);
  ScrollView.init(_:showsIndicators:content:)();
  v50 = v84;
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v47) = static Axis.Set.vertical.getter();
  *(inited + 32) = v47;
  v52 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v52;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v47)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v52)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100006F64(&qword_100CD9750, &qword_100CD9748);
  v53 = v90;
  v54 = v94;
  View.scrollIndicators(_:axes:)();

  (*(v96 + 8))(v50, v97);
  (*(v93 + 8))(v49, v54);
  LOBYTE(v54) = static Edge.Set.top.getter();
  KeyPath = swift_getKeyPath();
  v56 = v89;
  (*(v91 + 32))(v89, v53, v92);
  v57 = v56 + *(v88 + 36);
  *v57 = v54;
  *(v57 + 8) = KeyPath;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 40) = 0;
  v58 = v86;
  sub_10011C0F0(v56, v86, &qword_100CD9740);
  *&v58[*(v87 + 36)] = 0;
  v59 = v95;
  sub_10011C0F0(v58, v95, &qword_100CD9730);
  v60 = &v59[*(v85 + 36)];
  *v60 = 0xD000000000000012;
  v60[1] = 0x8000000100ABBD00;
  v61 = static Alignment.center.getter();
  v63 = v62;
  v64 = sub_10022C350(&qword_100CD96D8);
  v65 = v99;
  v66 = v99 + *(v64 + 36);
  sub_100140210();
  v67 = (v66 + *(type metadata accessor for LocationViewAppEntityView() + 20));

  sub_10022C350(&qword_100CA4B60);
  sub_100006F64(&qword_100CA4B68, &qword_100CA4B60);
  *v67 = ObservedObject.init(wrappedValue:)();
  v67[1] = v68;
  v69 = (v66 + *(sub_10022C350(&qword_100CD9760) + 36));
  *v69 = v61;
  v69[1] = v63;
  return sub_10011C0F0(v59, v65, &qword_100CD9720);
}

uint64_t sub_100148AAC()
{
  sub_10000C778();
  type metadata accessor for LocationContentView(0);
  sub_100003A0C();
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1 + v4;

  swift_unknownObjectRelease();

  sub_100006F14(v6 + 56);
  sub_100006F14(v6 + 96);

  sub_1000EBD74(*(v6 + 144), *(v6 + 152));
  v7 = v6 + v0[13];
  sub_10022C350(&qword_100CB3278);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  sub_100028448(v0[14]);
  v10 = v0[15];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v11 + 8))(v6 + v10);
  }

  else
  {
  }

  sub_100028448(v0[16]);
  sub_100028448(v0[17]);

  v12 = v0[19];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v13 + 8))(v6 + v12);
  sub_1000D3FE0();
  sub_1000D3FE0();
  if (*(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 24))
  {
    sub_1000D3FE0();
  }

  sub_10000536C();

  return swift_deallocObject();
}

double sub_100148CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v60 = a8;
  v61 = a6;
  v62 = a7;
  v66 = a5;
  v70 = a13;
  v59 = a9;
  v14 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v14 - 8);
  v68 = &v57 - v15;
  v16 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v16 - 8);
  v69 = &v57 - v17;
  v71 = type metadata accessor for Text.Measurements.Context();
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v58 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnvironmentValues();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LocationContentView(0);
  v24 = *(v23 + 56);
  v57 = a1;
  v25 = a1 + v24;
  v26 = *v25;
  if (*(v25 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v26, 0);
    (*(v20 + 8))(v22, v19);
    LOBYTE(v26) = v72;
  }

  v67 = *(v23 + 76);
  sub_100149314(v26 & 1);
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;

  v65 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v69, 1, 1, v65);
  v64 = type metadata accessor for Text.Suffix();
  v33 = v68;
  sub_10001B350(v68, 1, 1, v64);
  v34 = v58;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v36 = v35;
  sub_10010CD64(v28, v30, v32 & 1);

  v66 = *(v63 + 8);
  v66(v34, v71);
  static Font.largeTitle.getter();
  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v28) = v40;
  v41 = v33;
  v42 = v69;

  sub_10001B350(v42, 1, 1, v65);
  sub_10001B350(v41, 1, 1, v64);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v44 = v43;
  v45 = v37;
  v46 = v71;
  sub_10010CD64(v45, v39, v28 & 1);

  v66(v34, v46);
  v47 = v36 + v44 + sub_1001494E4();
  v48 = v47 + sub_100149554();
  if (v70)
  {
    v62 = a11;
    v63 = a12;
    sub_10010CD54(a10, a11, a12 & 1);

    static Font.headline.getter();
    Font.smallCaps()();

    v49 = Text.font(_:)();
    v51 = v50;
    v53 = v52;

    sub_10001B350(v42, 1, 1, v65);
    sub_10001B350(v68, 1, 1, v64);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v55 = v54;
    sub_10010CD64(v49, v51, v53 & 1);

    sub_10010CD64(a10, v62, v63 & 1);

    v66(v34, v71);
    return v48 + v55;
  }

  return v48;
}

uint64_t sub_100149314(char a1)
{
  v2 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &enum case for Font.TextStyle.body(_:);
  if ((a1 & 1) == 0)
  {
    v15 = &enum case for Font.TextStyle.title3(_:);
  }

  (*(v10 + 104))(v14, *v15, v8, v12);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v10 + 8))(v14, v8);
  (*(v4 + 104))(v7, enum case for Font.Leading.tight(_:), v2);
  v16 = Font.leading(_:)();

  (*(v4 + 8))(v7, v2);
  return v16;
}

double sub_1001494E4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 0.0;
  if (!v1)
  {
    result = 12.0;
  }

  if (v1 == 5)
  {
    return 20.0;
  }

  return result;
}

double sub_100149554()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 0.0;
  if (v1 <= 5)
  {
    return dbl_100A57C28[v1];
  }

  return result;
}

uint64_t sub_1001495C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100149618(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100149670()
{
  v0 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_100007074(v0, qword_100CD9400);
  sub_10000703C(v0, qword_100CD9400);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();
}

uint64_t sub_100149718(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_10014986C(a4, a5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0();
  }

  return v8 & 1;
}

uint64_t sub_10014982C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Settings.TappableModulesTipStore();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014986C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001498B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v2 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2818 != -1)
  {
    swift_once();
  }

  v15 = sub_10000703C(v11, qword_100CD9400);
  (*(v12 + 104))(v14, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v11);
  LOBYTE(v15) = sub_1001497E4(v15, v14);
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = v34;

    sub_100140210();
    v17 = v8[6];
    v18 = type metadata accessor for Location.Identifier();
    (*(*(v18 - 8) + 16))(&v10[v17], v7, v18);
    sub_100147C14(v7, type metadata accessor for LocationViewModel);
    sub_100140210();
    v19 = v4[*(v2 + 68)];
    sub_100147C14(v4, type metadata accessor for LocationViewModel);
    *&v10[v8[10]] = swift_getKeyPath();
    sub_10022C350(&qword_100CA2D60);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for LocationViewCollisionOptions();
    sub_10008152C(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);

    v20 = EnvironmentObject.init()();
    v22 = v21;
    KeyPath = swift_getKeyPath();
    v39 = 0;
    *v10 = KeyPath;
    v10[72] = 0;
    *(v10 + 10) = v16;
    v10[v8[7]] = v19;
    v24 = &v10[v8[8]];
    sub_10022C350(&qword_100CA4B60);
    sub_100006F64(&qword_100CA4B68, &qword_100CA4B60);
    *v24 = ObservedObject.init(wrappedValue:)();
    v24[1] = v25;
    v26 = &v10[v8[9]];
    type metadata accessor for LocationViewCollisionOptionsUpdatingViewState(0);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    ObservationRegistrar.init()();
    v36 = v27;
    State.init(wrappedValue:)();
    v28 = v38;
    *v26 = v37;
    *(v26 + 1) = v28;
    v29 = &v10[v8[11]];
    *v29 = v20;
    v29[1] = v22;
    v30 = v35;
    sub_100149618(v10, v35);
    v31 = v30;
    v32 = 0;
  }

  else
  {
    v31 = v35;
    v32 = 1;
  }

  return sub_10001B350(v31, v32, 1, v8);
}

uint64_t sub_100149D40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Location.Identifier();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA3BD8);
      v10 = *(a4 + 40);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

unint64_t sub_100149E14()
{
  result = qword_100CD98A8;
  if (!qword_100CD98A8)
  {
    sub_10022E824(&qword_100CD98A0);
    sub_100149ECC();
    sub_100006F64(&qword_100CD98D8, &qword_100CD98E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD98A8);
  }

  return result;
}

unint64_t sub_100149ECC()
{
  result = qword_100CD98B0;
  if (!qword_100CD98B0)
  {
    sub_10022E824(&qword_100CD98B8);
    sub_10022E824(&qword_100CD98C0);
    sub_100006F64(&qword_100CD98C8, &qword_100CD98C0);
    swift_getOpaqueTypeConformance2();
    sub_100149FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD98B0);
  }

  return result;
}

unint64_t sub_100149FC8()
{
  result = qword_100CD98D0;
  if (!qword_100CD98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD98D0);
  }

  return result;
}

unint64_t sub_10014A01C()
{
  result = qword_100CD47F8;
  if (!qword_100CD47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD47F8);
  }

  return result;
}

uint64_t sub_10014A090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Location.Identifier();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA3BD8);
      v10 = *(a3 + 40);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_10014A168()
{
  swift_getKeyPath();
  sub_10001F680();
  sub_10014986C(v1, v2);
  sub_100023108();

  return *(v0 + 41);
}

uint64_t sub_10014A1E8()
{
  sub_100020AF8();
  v0 = sub_10014A168();
  return sub_100005F94(v0);
}

unint64_t sub_10014A29C()
{
  result = qword_100CD9830;
  if (!qword_100CD9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9830);
  }

  return result;
}

unint64_t sub_10014A398()
{
  result = qword_100CD9680;
  if (!qword_100CD9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9680);
  }

  return result;
}

uint64_t sub_10014A3EC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912F0 = result;
  return result;
}

uint64_t sub_10014A53C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10010CD64(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10014A5A0()
{
  result = qword_100CDA1D8;
  if (!qword_100CDA1D8)
  {
    sub_10022E824(&qword_100CD9FA8);
    sub_100006F64(&qword_100CDA1E0, &qword_100CD9FA0);
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA1D8);
  }

  return result;
}

unint64_t sub_10014A6A4()
{
  result = qword_100CDA1C8;
  if (!qword_100CDA1C8)
  {
    sub_10022E824(&qword_100CD9F90);
    sub_100006F64(&qword_100CDA1D0, &qword_100CD9F88);
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA1C8);
  }

  return result;
}

unint64_t sub_10014A7A8()
{
  result = qword_100CDA1B8;
  if (!qword_100CDA1B8)
  {
    sub_10022E824(&qword_100CD9F80);
    sub_100006F64(&qword_100CDA1C0, &qword_100CD9F78);
    sub_100006F64(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA1B8);
  }

  return result;
}

uint64_t sub_10014A8AC()
{
  sub_10009BDF4(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10009BDF4(319, &qword_100CA3C60, &type metadata for PerformanceTestFeatures, &type metadata accessor for Environment);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_10013D7AC(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_10013D7AC(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_10013D7AC(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_10009BDF4(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
      v1 = v8;
      if (v9 <= 0x3F)
      {
        sub_10009BDF4(319, &qword_100CA3C88, &type metadata for SceneMetrics, &type metadata accessor for Environment);
        v1 = v10;
        if (v11 <= 0x3F)
        {
          sub_10009BDF4(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
          v1 = v12;
          if (v13 <= 0x3F)
          {
            v1 = type metadata accessor for Text.Measurements();
            if (v14 <= 0x3F)
            {
              sub_10014ABA8();
              v1 = v15;
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

unint64_t sub_10014AB54()
{
  result = qword_100CA3CA0;
  if (!qword_100CA3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3CA0);
  }

  return result;
}

void sub_10014ABA8()
{
  if (!qword_100CA3C98)
  {
    sub_10014AB54();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3C98);
    }
  }
}

unint64_t sub_10014AC44()
{
  result = qword_100CED338;
  if (!qword_100CED338)
  {
    sub_10022E824(&qword_100CED330);
    sub_10014ACD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CED338);
  }

  return result;
}

unint64_t sub_10014ACD0()
{
  result = qword_100CED340;
  if (!qword_100CED340)
  {
    sub_10022E824(&qword_100CED328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CED340);
  }

  return result;
}

unint64_t sub_10014AD58()
{
  result = qword_100CBF348;
  if (!qword_100CBF348)
  {
    sub_10022E824(&qword_100CBF350);
    sub_10014ADE4();
    sub_10012E840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF348);
  }

  return result;
}

unint64_t sub_10014ADE4()
{
  result = qword_100CBF340;
  if (!qword_100CBF340)
  {
    sub_10022E824(&qword_100CBF338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF340);
  }

  return result;
}

uint64_t sub_10014AE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  KeyPath = swift_getKeyPath();
  if (*v2)
  {
    v10 = 0;
  }

  else
  {
    if (*(v2 + 80))
    {
      v11 = *(v2 + 32);
      v19 = *(v2 + 16);
      v20 = v11;
      v12 = *(v2 + 64);
      v21 = *(v2 + 48);
      v22 = v12;
    }

    else
    {
      sub_1007E9A6C(v2, v18);
      static os_log_type_t.fault.getter();
      v13 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_10014A368(v2);
      (*(v6 + 8))(v8, v5);
    }

    v10 = BYTE9(v21) == 4;
  }

  v14 = sub_10022C350(&qword_100CD9FA0);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = sub_10022C350(&qword_100CD9FA8);
  v16 = a2 + *(result + 36);
  *v16 = KeyPath;
  *(v16 + 8) = v10;
  return result;
}

uint64_t sub_10014B09C()
{
  sub_10000FE4C();
  v0 = sub_10014B108();
  return sub_100005F94(v0);
}

unint64_t sub_10014B128()
{
  result = qword_100CD9AB8[0];
  if (!qword_100CD9AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CD9AB8);
  }

  return result;
}

uint64_t sub_10014B1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_1007E62F8();
  v6 = sub_10022C350(&qword_100CD9F88);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10022C350(&qword_100CD9F90);
  v8 = a2 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = v5;
  return result;
}

double sub_10014B28C()
{
  v1 = *(v0 + 8);
  if (*(v0 + 32))
  {
    sub_1000FDB68();
    sub_10001D07C();
    sub_1000FDE84();
    sub_10001A0E0();
    if (v4)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }

  return v1;
}

uint64_t sub_10014B2FC()
{
  sub_10000FE4C();
  v0 = sub_10014B378();
  return sub_100005F94(v0);
}

unint64_t sub_10014B324()
{
  result = qword_100CA60A0;
  if (!qword_100CA60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60A0);
  }

  return result;
}

uint64_t sub_10014B430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  KeyPath = swift_getKeyPath();
  if (*(v3 + 72))
  {
    v17 = *(v3 + 8);
    v18 = *(v3 + 24);
    v19 = *(v3 + 40);
    v20 = *(v3 + 56);
  }

  else
  {
    sub_1007E9A34(v3, v16);
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10014A2F8(v3);
    (*(v7 + 8))(v9, v6);
  }

  v12 = 1u >> (BYTE8(v19) & 7);
  v13 = sub_10022C350(&qword_100CD9F78);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10022C350(&qword_100CD9F80);
  v15 = a2 + *(result + 36);
  *v15 = KeyPath;
  *(v15 + 8) = v12 ^ 1;
  *(v15 + 16) = v12;
  return result;
}

uint64_t sub_10014B63C()
{
  sub_10000FE4C();
  v0 = sub_10014B6BC();
  return sub_10000EDD8(v0, v1);
}

unint64_t sub_10014B668()
{
  result = qword_100CA6140;
  if (!qword_100CA6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6140);
  }

  return result;
}

uint64_t sub_10014B6DC(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

uint64_t sub_10014B7C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v3 - 8);
  v5 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for AccessibilityTraits();
  v188 = *(v190 - 8);
  __chkstk_darwin(v190);
  v184 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v7 - 8);
  v177 = &v160 - v8;
  v9 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v9 - 8);
  v175 = &v160 - v10;
  v11 = type metadata accessor for Text.Measurements.Context();
  v178 = *(v11 - 8);
  v179 = v11;
  __chkstk_darwin(v11);
  v176 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for LocationHeaderView(0);
  __chkstk_darwin(v181);
  v180 = (&v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = sub_10022C350(&qword_100CD9FD8);
  __chkstk_darwin(v182);
  v183 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v187 = &v160 - v16;
  v185 = sub_10022C350(&qword_100CD9FE0);
  __chkstk_darwin(v185);
  v191 = &v160 - v17;
  v189 = sub_10022C350(&qword_100CD9FE8);
  __chkstk_darwin(v189);
  v192 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v186 = &v160 - v20;
  __chkstk_darwin(v21);
  v196 = &v160 - v22;
  v174 = type metadata accessor for ContentSizeCategory();
  v195 = *(v174 - 8);
  __chkstk_darwin(v174);
  v194 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v173 = &v160 - v25;
  v26 = type metadata accessor for EnvironmentValues();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LocationContentTopHeaderView(0);
  v31 = v30[13];
  v197 = v1;
  v32 = v1 + v31;
  v33 = *v32;
  LODWORD(v32) = *(v32 + 8);
  v193 = v5;
  if (v32 == 1)
  {
    if ((v33 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = a1;
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a1 = v34;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v33, 0);
    (*(v27 + 8))(v29, v26);
    if (LOBYTE(v204[0]) != 1)
    {
LABEL_9:
      v41 = sub_10022C350(&qword_100CD9FF0);
      v42 = a1;
      v43 = 1;
      return sub_10001B350(v42, v43, 1, v41);
    }
  }

  v36 = type metadata accessor for LocationViewModel();
  if (*(v197 + *(v36 + 64)) != 1)
  {
    goto LABEL_9;
  }

  v172 = v36;
  v37 = 0;
  v38 = static Solarium.isEnabled.getter();
  v167 = v26;
  if (v38)
  {
    v39 = v197 + v30[14];
    v40 = *v39;
    if (*(v39 + 8) == 1)
    {
      v37 = *v39;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v44 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v26 = v167;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v40, 0);
      (*(v27 + 8))(v29, v26);
      v37 = v204[0];
    }
  }

  v45 = v173;
  sub_10009ECC8();
  v47 = v194;
  v46 = v195;
  v48 = v174;
  (*(v195 + 32))(v194, v45, v174);
  v49 = (*(v46 + 88))(v47, v48);
  v55 = v49 == enum case for ContentSizeCategory.extraSmall(_:) || v49 == enum case for ContentSizeCategory.small(_:) || v49 == enum case for ContentSizeCategory.medium(_:) || v49 == enum case for ContentSizeCategory.large(_:) || v49 == enum case for ContentSizeCategory.extraLarge(_:) || v49 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v49 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v166 = a1;
  if (!v55)
  {
    if (v49 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v49 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v49 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v49 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v49 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v60 = v30[10];
      memcpy(v204, (v197 + v60), 0x49uLL);
      if (v204[9])
      {
        memcpy(v203, (v197 + v60), 0x48uLL);
      }

      else
      {

        static os_log_type_t.fault.getter();
        v65 = v29;
        v66 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v29 = v65;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100018144(v204, &qword_100CB71A8);
        (*(v27 + 8))(v65, v26);
      }

      v64 = *&v203[7];
      goto LABEL_52;
    }

    (*(v195 + 8))(v194, v48);
  }

  v61 = v30[10];
  memcpy(v204, (v197 + v61), 0x49uLL);
  if (v204[9])
  {
    memcpy(v203, (v197 + v61), 0x48uLL);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v62 = v29;
    v63 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v29 = v62;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(v204, &qword_100CB71A8);
    (*(v27 + 8))(v62, v26);
  }

  v64 = *&v203[5] + *&v203[5];
LABEL_52:
  v168 = v29;
  memcpy(v204, (v197 + *(v172 + 24)), 0x9AuLL);
  v67 = v30[6];
  v68 = v197 + v30[5];
  v69 = *v68;
  v194 = *(v68 + 8);
  v195 = v69;
  LODWORD(v174) = *(v68 + 16);
  v70 = *(v68 + 24);
  v71 = *(v197 + v67);
  v72 = *(v197 + v67 + 8);
  v73 = *(v197 + v67 + 16);
  v74 = *(v197 + v67 + 24);
  v75 = (v197 + v30[7]);
  v76 = v75[1];
  v172 = *v75;
  v173 = v70;
  v171 = v76;
  v77 = v75[2];
  v169 = v75[3];
  v170 = v77;
  v78 = v197 + v30[11];
  v79 = *v78;
  LODWORD(v78) = *(v78 + 8);
  v165 = v27;
  v162 = v72;
  v163 = v71;
  v161 = v73;
  v160 = v74;
  if (v78 == 1)
  {
    sub_100151784(v204, v203);
    sub_10010CD54(v195, v194, v174);

    sub_10010CD54(v71, v72, v73);

    sub_100148118(v172, v171, v170, v169);
  }

  else
  {
    sub_100151784(v204, v203);
    sub_10010CD54(v195, v194, v174);

    sub_10010CD54(v71, v72, v73);

    sub_100148118(v172, v171, v170, v169);
    sub_10022BF9C(v79, 0);
    static os_log_type_t.fault.getter();
    v80 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v81 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v79, 0);
    (*(v27 + 8))(v81, v26);
    LOBYTE(v79) = v203[0];
  }

  v164 = v30;
  sub_100149314(v79 & 1);
  v82 = Text.font(_:)();
  v84 = v83;
  v86 = v85;

  v87 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v175, 1, 1, v87);
  v88 = type metadata accessor for Text.Suffix();
  sub_10001B350(v177, 1, 1, v88);
  v89 = v176;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v91 = v90;
  sub_10010CD64(v82, v84, v86 & 1);

  (*(v178 + 8))(v89, v179);
  KeyPath = swift_getKeyPath();
  v93 = v180;
  *v180 = KeyPath;
  *(v93 + 8) = 0;
  *(v93 + 16) = swift_getKeyPath();
  *(v93 + 24) = 0;
  v94 = v181;
  v95 = *(v181 + 24);
  *(v93 + v95) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  v96 = v94[7];
  *(v93 + v96) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v97 = v93 + v94[8];
  *v97 = swift_getKeyPath();
  *(v97 + 8) = 0;
  v98 = v93 + v94[9];
  *v98 = swift_getKeyPath();
  *(v98 + 8) = 0;
  v99 = v94[10];
  *(v93 + v99) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v100 = v93 + v94[11];
  *v100 = swift_getKeyPath();
  *(v100 + 8) = 0;
  v101 = v93 + v94[12];
  *v101 = swift_getKeyPath();
  *(v101 + 8) = 0;
  *(v101 + 16) = 0;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = v93 + v94[13];
  *v102 = swift_getKeyPath();
  *(v102 + 8) = 0u;
  *(v102 + 24) = 0u;
  *(v102 + 33) = 0u;
  Text.Measurements.init()();
  v203[0] = 0x4046800000000000;
  sub_10014AB54();
  ScaledMetric.init(wrappedValue:)();
  memcpy((v93 + v94[14]), v204, 0x9AuLL);
  v103 = v93 + v94[15];
  v104 = v194;
  *v103 = v195;
  *(v103 + 8) = v104;
  *(v103 + 16) = v174;
  *(v103 + 24) = v173;
  v105 = v93 + v94[16];
  v106 = v162;
  *v105 = v163;
  *(v105 + 8) = v106;
  *(v105 + 16) = v161;
  *(v105 + 24) = v160;
  v107 = (v93 + v94[17]);
  v108 = v171;
  *v107 = v172;
  v107[1] = v108;
  v109 = v169;
  v107[2] = v170;
  v107[3] = v109;
  *(v93 + v94[18]) = v91;
  *(v93 + v94[20]) = v64;
  *(v93 + v94[21]) = v37;
  sub_10008152C(&qword_100CD9FF8, type metadata accessor for LocationHeaderView);
  v110 = v183;
  View.accessibilityIdentifier(_:)();
  sub_100147C14(v93, type metadata accessor for LocationHeaderView);
  sub_10022C350(&unk_100CE17E0);
  v111 = v188;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_100A2C3F0;
  static AccessibilityTraits.isHeader.getter();
  v203[0] = v112;
  sub_10008152C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
  sub_10022C350(&unk_100CE17F0);
  sub_100006F64(&qword_100CB3370, &unk_100CE17F0);
  v113 = v184;
  v114 = v190;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v115 = v187;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v111 + 8))(v113, v114);
  sub_100018144(v110, &qword_100CD9FD8);
  sub_10022C350(&qword_100CA4060);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_100A2D320;
  LOBYTE(v111) = static Edge.Set.leading.getter();
  *(v116 + 32) = v111;
  v117 = static Edge.Set.trailing.getter();
  *(v116 + 33) = v117;
  v118 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v111)
  {
    v118 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v117)
  {
    v118 = Edge.Set.init(rawValue:)();
  }

  v119 = v167;
  v120 = v164;
  EdgeInsets.init(_all:)();
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v129 = v191;
  sub_10011C0F0(v115, v191, &qword_100CD9FD8);
  v130 = v129 + *(v185 + 36);
  *v130 = v118;
  *(v130 + 8) = v122;
  *(v130 + 16) = v124;
  *(v130 + 24) = v126;
  *(v130 + 32) = v128;
  *(v130 + 40) = 0;
  v131 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v140 = v129;
  v141 = v186;
  sub_10011C0F0(v140, v186, &qword_100CD9FE0);
  v142 = v141 + *(v189 + 36);
  *v142 = v131;
  *(v142 + 8) = v133;
  *(v142 + 16) = v135;
  *(v142 + 24) = v137;
  *(v142 + 32) = v139;
  *(v142 + 40) = 0;
  sub_10011C0F0(v141, v196, &qword_100CD9FE8);
  v143 = v120[10];
  memcpy(v203, (v197 + v143), 0x49uLL);
  if (v203[9])
  {
    memcpy(v202, (v197 + v143), 0x48uLL);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v144 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v145 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(v203, &qword_100CB71A8);
    (*(v165 + 8))(v145, v119);
  }

  v146 = v193;
  memcpy(__dst, v202, sizeof(__dst));
  sub_1000FC9C8();
  v147 = *v146;
  if (!sub_1004CF4D0(*v146) && (!sub_10029C3DC(v147) || !*(v146 + 16)))
  {
    sub_10014B28C();
  }

  sub_100147C14(v146, type metadata accessor for DisplayMetrics);
  memcpy(v202, (v197 + v143), 0x49uLL);
  if (v202[72])
  {
    memcpy(v201, (v197 + v143), sizeof(v201));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v148 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v149 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(v202, &qword_100CB71A8);
    (*(v165 + 8))(v149, v119);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v197 = v204[20];
  v150 = v209;
  v194 = v208;
  v195 = v206;
  v200 = 1;
  v199 = v205;
  v198 = v207;
  v151 = v196;
  v152 = v192;
  sub_1000302D8(v196, v192, &qword_100CD9FE8);
  v153 = v200;
  v154 = v199;
  v155 = v198;
  v156 = v166;
  sub_1000302D8(v152, v166, &qword_100CD9FE8);
  v157 = v156 + *(sub_10022C350(&qword_100CDA000) + 48);
  *v157 = 0;
  *(v157 + 8) = v153;
  *(v157 + 16) = v197;
  *(v157 + 24) = v154;
  v158 = v194;
  *(v157 + 32) = v195;
  *(v157 + 40) = v155;
  *(v157 + 48) = v158;
  *(v157 + 56) = v150;
  sub_100018144(v151, &qword_100CD9FE8);
  sub_100018144(v152, &qword_100CD9FE8);
  v41 = sub_10022C350(&qword_100CD9FF0);
  v42 = v156;
  v43 = 0;
  return sub_10001B350(v42, v43, 1, v41);
}

uint64_t sub_10014CD78()
{
  sub_10000FE4C();
  v0 = sub_1001006A8();
  return sub_100005F94(v0);
}

double sub_10014CDC4()
{
  v0.n128_f64[0] = sub_1000834F0(v10);
  *&result = sub_1000A7D44(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v0).n128_u64[0];
  return result;
}

void sub_10014CE48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA3BD8);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[6];
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0);
    sub_100003928();
    if (*(v10 + 84) == a3)
    {
      v9 = a4[7];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE8);
      sub_100003928();
      if (*(v11 + 84) == a3)
      {
        v9 = a4[10];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v5 + a4[14] + 8) = (v4 - 1);
          return;
        }

        type metadata accessor for Text.Measurements();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v9 = a4[19];
        }

        else
        {
          sub_10022C350(&qword_100CA3BF0);
          v9 = a4[22];
        }
      }
    }
  }

  v12 = sub_1000039EC(v9);

  sub_10001B350(v12, v13, v4, v14);
}

uint64_t sub_10014D010(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA3BD8);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = a3[6];
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0);
    sub_100003928();
    if (*(v8 + 84) == v3)
    {
      v7 = a3[7];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE8);
      sub_100003928();
      if (*(v9 + 84) == v3)
      {
        v7 = a3[10];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          return sub_1000039D8(*(v4 + a3[14] + 8));
        }

        type metadata accessor for Text.Measurements();
        sub_100003928();
        if (*(v14 + 84) == v3)
        {
          v7 = a3[19];
        }

        else
        {
          sub_10022C350(&qword_100CA3BF0);
          v7 = a3[22];
        }
      }
    }
  }

  v10 = sub_1000039EC(v7);

  return sub_100024D10(v10, v11, v12);
}

unint64_t sub_10014D248()
{
  result = qword_100CC0F28;
  if (!qword_100CC0F28)
  {
    sub_10022E824(&qword_100CC09F0);
    sub_10023FBF4(&qword_100CC0F30, &unk_100CC09E8);
    sub_10023FBF4(&qword_100CA40A8, &qword_100CA40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0F28);
  }

  return result;
}

uint64_t sub_10014D348()
{
  sub_10022E824(&qword_100CB5B20);
  sub_10014D3D8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10014D3D8()
{
  result = qword_100CB5B40;
  if (!qword_100CB5B40)
  {
    sub_10022E824(&qword_100CB5B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5B40);
  }

  return result;
}

void sub_10014D4E8(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        return;
      case 2:
        *(a1 + v11) = v16;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x10014D6CCLL);
    case 4:
      *(a1 + v11) = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 32) & ~v10;

          sub_10001B350(v18, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 8) = 0;
        }

        else
        {
          *(a1 + 8) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_10014D6F4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10014D840);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return sub_100024D10(((a1 & 0xFFFFFFFFFFFFFFF8) + v7 + 32) & ~v7, v6, v4);
  }

  v18 = *(a1 + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_10014D870()
{
  sub_10022E824(&qword_100CC0B20);
  sub_10022E824(&qword_100CA4680);
  sub_10014D91C();
  type metadata accessor for EmptyVisualEffect();
  sub_100010208();
  sub_100061A3C(v0, v1);
  sub_100005B34();
  swift_getOpaqueTypeConformance2();
  return sub_1000043A0();
}

unint64_t sub_10014D91C()
{
  result = qword_100CC0B30;
  if (!qword_100CC0B30)
  {
    sub_10022E824(&qword_100CC0B20);
    sub_10023FBF4(&qword_100CC0B38, &unk_100CC0B28);
    sub_10014D9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0B30);
  }

  return result;
}

unint64_t sub_10014D9D4()
{
  result = qword_100CC0B40;
  if (!qword_100CC0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0B40);
  }

  return result;
}

unint64_t sub_10014DA48()
{
  result = qword_100CEB190;
  if (!qword_100CEB190)
  {
    sub_10022E824(&qword_100CEAFB8);
    sub_100006F64(&qword_100CEB198, &qword_100CEAFB0);
    sub_100006F64(&qword_100CB3460, &qword_100CB3468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEB190);
  }

  return result;
}

unint64_t sub_10014DB4C()
{
  result = qword_100CDA230;
  if (!qword_100CDA230)
  {
    sub_10022E824(&qword_100CDA028);
    sub_100006F64(&qword_100CDA238, &qword_100CDA020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA230);
  }

  return result;
}

uint64_t sub_10014DC48()
{
  sub_1000164CC();
  type metadata accessor for VStack();
  sub_1000164CC();
  type metadata accessor for LazyVStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10014DD0C()
{
  sub_10000FE4C();
  v0 = sub_10014DD34();
  return sub_100005F94(v0);
}

unint64_t sub_10014DD54()
{
  result = qword_100CA60C8;
  if (!qword_100CA60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60C8);
  }

  return result;
}

uint64_t sub_10014DDEC()
{
  v0 = sub_10014DE2C();
  sub_1000054C8(v0, &type metadata for ForegroundEffectKey);

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_10014DE2C()
{
  result = qword_100CA60F0;
  if (!qword_100CA60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60F0);
  }

  return result;
}

uint64_t sub_10014DE80@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1EB8 != -1)
  {
    swift_once();
  }

  v2 = sub_10022C350(&qword_100CA60E8);
  v3 = sub_10000703C(v2, qword_100CA6010);
  return sub_100060DE0(v3, a1, &qword_100CA60E8);
}

uint64_t sub_10014DF40(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA60E8);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  sub_1000302D8(a1, &v7 - v4, &qword_100CA60E8);
  return sub_10014DFE0(v5);
}

unint64_t sub_10014E010()
{
  result = qword_100CB6E10;
  if (!qword_100CB6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6E10);
  }

  return result;
}

uint64_t sub_10014E064()
{
  sub_10014E010();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10014E0E0@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1004F18A4();
  v4 = v3;
  sub_10022C350(&qword_100CC09E8);
  sub_1000037E8();
  v5 = sub_1000053B8();
  v6(v5);
  result = sub_10022C350(&qword_100CC09F0);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  return result;
}

uint64_t sub_10014E1B8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v32 = a5;
  v7 = sub_10022C350(&qword_100CC19A0);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CC14A8);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v31 = a1;
  if (*(a1 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HorizontalAlignment.leading.getter();
      v37 = 0;
      sub_1004F13F8();
      memcpy(v38, v35, 0xE1uLL);
      memcpy(v39, v35, 0xE1uLL);
      sub_1000302D8(v38, v34, &qword_100CC19A8);
      sub_100018198(v39, &qword_100CC19A8);
      memcpy(&v36[7], v38, 0xE1uLL);
      v20 = v37;
      *v9 = v19;
      *(v9 + 1) = 0;
      v9[16] = v20;
      memcpy(v9 + 17, v36, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CC14B8);
      sub_1001BBAA4();
      sub_10023FBF4(&qword_100CC14B0, &qword_100CC14B8);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v28[0] = v15;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    v28[1] = a4;
    v23 = v22;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v17, v28[0]);
    if (v39[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = static HorizontalAlignment.leading.getter();
  v37 = 0;
  sub_1004F13F8();
  memcpy(v38, v35, 0xE1uLL);
  memcpy(v39, v35, 0xE1uLL);
  sub_1000302D8(v38, v34, &qword_100CC19A8);
  sub_100018198(v39, &qword_100CC19A8);
  memcpy(&v33[7], v38, 0xE1uLL);
  v25 = v37;
  v26 = &v12[*(v10 + 36)];
  *v26 = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v27 = v26 + *(type metadata accessor for RowModifier(0) + 20);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v12 = v24;
  *(v12 + 1) = 0;
  v12[16] = v25;
  memcpy(v12 + 17, v33, 0xE8uLL);
  sub_1000302D8(v12, v9, &qword_100CC14A8);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC14B8);
  sub_1001BBAA4();
  sub_10023FBF4(&qword_100CC14B0, &qword_100CC14B8);
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v12, &qword_100CC14A8);
}

double sub_10014E74C()
{
  sub_10014E788();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_10014E788()
{
  result = qword_100CC0758;
  if (!qword_100CC0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0758);
  }

  return result;
}

unint64_t sub_10014E86C()
{
  result = qword_100CA6100;
  if (!qword_100CA6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6100);
  }

  return result;
}

double sub_10014E8C0()
{
  sub_10014E86C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10014E940()
{
  if (EnvironmentValues.accessibilityVoiceOverEnabled.getter())
  {
    return 1;
  }

  return EnvironmentValues.accessibilitySwitchControlEnabled.getter();
}

uint64_t sub_10014E978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v46 = type metadata accessor for PinnedScrollableViews();
  v43 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for LazyVStack();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v40 - v10;
  v50 = v6;
  v51 = v5;
  v11 = type metadata accessor for VStack();
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v40 - v15;
  v54 = type metadata accessor for _ConditionalContent();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v40 - v16;
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 48);
  memcpy(__dst, (v2 + v21), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v58, (v2 + v21), sizeof(v58));
  }

  else
  {
    v41 = __dst[0];

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v18 + 8))(v20, v17);
  }

  v23 = v2 + *(a1 + 44);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v41 = v17;
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v18 + 8))(v20, v41);
    if (LOBYTE(v58[0]) != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    VStack.init(alignment:spacing:content:)();
    WitnessTable = swift_getWitnessTable();
    v34 = v42;
    sub_1000833D8(v13, v11, WitnessTable);
    v28 = *(v44 + 8);
    v28(v13, v11);
    sub_1000833D8(v34, v11, WitnessTable);
    swift_getWitnessTable();
    v29 = v52;
    sub_1003E8038();
    v28(v13, v11);
    v30 = v34;
    v31 = v11;
    goto LABEL_9;
  }

  if (v24)
  {
    goto LABEL_8;
  }

LABEL_6:
  (*(v43 + 16))(v45, v2 + *(a1 + 36), v46);
  v25 = v48;
  LazyVStack.init(alignment:spacing:pinnedViews:content:)();
  v26 = swift_getWitnessTable();
  v27 = v47;
  sub_1000833D8(v25, v7, v26);
  v28 = *(v49 + 8);
  v28(v25, v7);
  sub_1000833D8(v27, v7, v26);
  swift_getWitnessTable();
  v29 = v52;
  sub_10012D09C();
  v28(v25, v7);
  v30 = v27;
  v31 = v7;
LABEL_9:
  v28(v30, v31);
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v56 = v35;
  v57 = v36;
  v37 = v54;
  v38 = swift_getWitnessTable();
  sub_1000833D8(v29, v37, v38);
  return (*(v53 + 8))(v29, v37);
}

uint64_t sub_10014F17C()
{
  v0 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  type metadata accessor for LocationContentView(0);
  sub_10009ECC8();
  (*(v4 + 32))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 != enum case for ContentSizeCategory.extraSmall(_:) && v10 != enum case for ContentSizeCategory.small(_:) && v10 != enum case for ContentSizeCategory.medium(_:) && v10 != enum case for ContentSizeCategory.large(_:) && v10 != enum case for ContentSizeCategory.extraLarge(_:) && v10 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v10 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v10 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v10 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      sub_100140210();
      sub_1007C7794();
      v22 = v21;
LABEL_40:
      sub_100147C14(v2, type metadata accessor for LocationViewModel);
      return v22;
    }

    (*(v4 + 8))(v6, v3);
  }

  if (qword_100CA2820 != -1)
  {
    swift_once();
  }

  v23 = byte_100CD9418;
  sub_100140210();
  if (v23 != 1)
  {
    v22 = *&v2[*(v0 + 28)];

    goto LABEL_40;
  }

  v24 = *&v2[*(v0 + 32)];

  sub_100147C14(v2, type metadata accessor for LocationViewModel);
  sub_10049BA50(v24);
  v22 = v25;

  return v22;
}

void sub_10014F4C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CAD870);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    type metadata accessor for LocationFooterViewModel();
    sub_100003928();
    if (*(v10 + 84) != a3)
    {
      *(v5 + a4[7]) = (v4 - 1);
      return;
    }

    v9 = a4[6];
  }

  v11 = sub_1000039EC(v9);

  sub_10001B350(v11, v12, v4, v13);
}

uint64_t sub_10014F5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CAD870);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {
    v6 = *(a3 + 20);
  }

  else
  {
    type metadata accessor for LocationFooterViewModel();
    sub_100003928();
    if (*(v7 + 84) != v3)
    {
      return sub_100005B00();
    }

    v6 = *(a3 + 24);
  }

  v8 = sub_1000039EC(v6);

  return sub_100024D10(v8, v9, v10);
}

uint64_t sub_10014F6D0()
{
  sub_10022E824(&qword_100CADD30);
  sub_10022E824(&qword_100CADD28);
  sub_10022E824(&qword_100CADBA0);
  sub_10000579C();
  sub_100006F64(v0, &qword_100CADD28);
  sub_10014F7C8();
  swift_getOpaqueTypeConformance2();
  sub_10014F87C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10014F7C8()
{
  result = qword_100CADD48;
  if (!qword_100CADD48)
  {
    sub_10022E824(&qword_100CADBA0);
    sub_100067294(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CADD48);
  }

  return result;
}

unint64_t sub_10014F87C()
{
  result = qword_100CADD50;
  if (!qword_100CADD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CADD50);
  }

  return result;
}

uint64_t type metadata accessor for LocationHeaderViewLargeText()
{
  result = qword_100CD50E8;
  if (!qword_100CD50E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014F91C()
{
  sub_10009BE44(319, &qword_100CE0E20);
  if (v0 <= 0x3F)
  {
    sub_1000612C8();
    if (v1 <= 0x3F)
    {
      sub_10009BE44(319, &unk_100CA41F0);
      if (v2 <= 0x3F)
      {
        sub_10014F9F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10014F9F8()
{
  if (!qword_100CA4348)
  {
    type metadata accessor for Font.Context();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA4348);
    }
  }
}

unint64_t sub_10014FA70()
{
  result = qword_100CDA120;
  if (!qword_100CDA120)
  {
    sub_10022E824(&qword_100CD9FD8);
    sub_10008152C(&qword_100CD9FF8, type metadata accessor for LocationHeaderView);
    sub_10008152C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA120);
  }

  return result;
}

unint64_t sub_10014FB5C()
{
  result = qword_100CDA118;
  if (!qword_100CDA118)
  {
    sub_10022E824(&qword_100CD9FE0);
    sub_10014FA70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA118);
  }

  return result;
}

uint64_t sub_10014FC2C()
{
  v0 = sub_100003940();
  sub_10022E824(v0);
  sub_1000164CC();
  sub_100006F64(v1, v2);
  type metadata accessor for ForEach();
  return swift_getWitnessTable();
}

uint64_t sub_10014FCF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v4 - 8);
  v198 = &v181 - v5;
  v6 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v6 - 8);
  v196 = &v181 - v7;
  v8 = type metadata accessor for Text.Measurements.Context();
  v199 = *(v8 - 8);
  v200 = v8;
  __chkstk_darwin(v8);
  v197 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for LocationHeaderView(0);
  __chkstk_darwin(v202);
  v201 = (&v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = sub_10022C350(&qword_100CD9FD8);
  __chkstk_darwin(v203);
  v204 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v218 = &v181 - v13;
  v217 = sub_10022C350(&qword_100CD9FE0);
  __chkstk_darwin(v217);
  v205 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v206 = &v181 - v16;
  v215 = sub_10022C350(&qword_100CDA0C0);
  __chkstk_darwin(v215);
  v216 = &v181 - v17;
  v18 = type metadata accessor for AccessibilityTraits();
  v211 = *(v18 - 8);
  v212 = v18;
  __chkstk_darwin(v18);
  v210 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for LocationHeaderViewLargeText();
  __chkstk_darwin(v186);
  v187 = (&v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_10022C350(&qword_100CDA0C8);
  __chkstk_darwin(v21 - 8);
  v195 = &v181 - v22;
  v189 = sub_10022C350(&qword_100CDA0D0);
  __chkstk_darwin(v189);
  v190 = &v181 - v23;
  v188 = sub_10022C350(&qword_100CDA0D8);
  __chkstk_darwin(v188);
  v207 = &v181 - v24;
  v214 = sub_10022C350(&qword_100CDA0E0);
  __chkstk_darwin(v214);
  v191 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v192 = &v181 - v27;
  v28 = type metadata accessor for ContentSizeCategory();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v209 = &v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v208 = &v181 - v32;
  v219 = sub_10022C350(&qword_100CDA0E8);
  __chkstk_darwin(v219);
  v213 = &v181 - v33;
  v34 = type metadata accessor for EnvironmentValues();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LocationContentScrollingHeaderView(0);
  v39 = v1 + v38[12];
  v40 = *v39;
  LODWORD(v39) = *(v39 + 8);
  v220 = a1;
  v221 = v2;
  if (v39 != 1)
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a1 = v220;
    v2 = v221;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v40, 0);
    (*(v35 + 8))(v37, v34);
    if (v225[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v194 = v37;
    v43 = v2;
    v44 = v208;
    sub_10009ECC8();
    v45 = v209;
    (*(v29 + 32))(v209, v44, v28);
    v46 = (*(v29 + 88))(v45, v28);
    v52 = v46 == enum case for ContentSizeCategory.extraSmall(_:) || v46 == enum case for ContentSizeCategory.small(_:) || v46 == enum case for ContentSizeCategory.medium(_:) || v46 == enum case for ContentSizeCategory.large(_:) || v46 == enum case for ContentSizeCategory.extraLarge(_:) || v46 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v46 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    v185 = v34;
    v193 = v35;
    if (!v52)
    {
      if (v46 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v46 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v46 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v46 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v46 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v57 = type metadata accessor for LocationViewModel();
        memcpy(v225, (v2 + *(v57 + 24)), 0x9AuLL);
        KeyPath = swift_getKeyPath();
        v60 = v186;
        v59 = v187;
        *v187 = KeyPath;
        *(v59 + 8) = 0;
        v61 = v60[5];
        *(v59 + v61) = swift_getKeyPath();
        sub_10022C350(&qword_100CA62E0);
        swift_storeEnumTagMultiPayload();
        v62 = v59 + v60[6];
        *v62 = swift_getKeyPath();
        *(v62 + 8) = 0;
        v63 = v60[7];
        *(v59 + v63) = swift_getKeyPath();
        sub_10022C350(&qword_100CA3EE8);
        swift_storeEnumTagMultiPayload();
        memcpy((v59 + v60[8]), v225, 0x9AuLL);
        sub_10022C350(&unk_100CE17E0);
        v64 = v211;
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_100A2C3F0;
        sub_100151784(v225, v224);
        static AccessibilityTraits.isHeader.getter();
        v224[0] = v65;
        sub_10008152C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
        sub_10022C350(&unk_100CE17F0);
        v66 = v38;
        v67 = v221;
        sub_100006F64(&qword_100CB3370, &unk_100CE17F0);
        v68 = v210;
        v69 = v212;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_10008152C(&qword_100CDA110, type metadata accessor for LocationHeaderViewLargeText);
        View.accessibilityAddTraits(_:)();
        (*(v64 + 8))(v68, v69);
        sub_100147C14(v59, type metadata accessor for LocationHeaderViewLargeText);
        v70 = v66[9];
        memcpy(v224, (v67 + v70), 0x49uLL);
        if (v224[9])
        {
          v71 = v194;
          memcpy(v223, (v67 + v70), 0x48uLL);
          v72 = v213;
          v73 = v193;
        }

        else
        {

          static os_log_type_t.fault.getter();
          v155 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v67 = v221;
          v156 = v194;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100018144(v224, &qword_100CB71A8);
          v73 = v193;
          v71 = v156;
          (*(v193 + 8))(v156, v185);
          v72 = v213;
        }

        memcpy(__dst, v223, sizeof(__dst));
        sub_1000EF898();
        v157 = [objc_opt_self() currentDevice];
        v158 = [v157 userInterfaceIdiom];

        a1 = v220;
        if (v158)
        {
          memcpy(v223, (v67 + v70), 0x49uLL);
          if (v223[9])
          {
            memcpy(v222, (v67 + v70), sizeof(v222));
          }

          else
          {

            static os_log_type_t.fault.getter();
            v159 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_100018144(v223, &qword_100CB71A8);
            (*(v73 + 8))(v71, v185);
          }
        }

        static Alignment.leading.getter();
        _FrameLayout.init(width:height:alignment:)();
        v160 = v190;
        sub_10011C0F0(v195, v190, &qword_100CDA0C8);
        v161 = (v160 + *(v189 + 36));
        v162 = v227;
        *v161 = v226;
        v161[1] = v162;
        v161[2] = v228;
        v163 = v160;
        v164 = v207;
        sub_10011C0F0(v163, v207, &qword_100CDA0D0);
        *(v164 + *(v188 + 36)) = 256;
        sub_10022C350(&qword_100CA4060);
        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_100A2D320;
        v166 = static Edge.Set.leading.getter();
        *(v165 + 32) = v166;
        v167 = static Edge.Set.trailing.getter();
        *(v165 + 33) = v167;
        v168 = Edge.Set.init(rawValue:)();
        Edge.Set.init(rawValue:)();
        if (Edge.Set.init(rawValue:)() != v166)
        {
          v168 = Edge.Set.init(rawValue:)();
        }

        Edge.Set.init(rawValue:)();
        if (Edge.Set.init(rawValue:)() != v167)
        {
          v168 = Edge.Set.init(rawValue:)();
        }

        memcpy(v223, (v221 + v70), 0x49uLL);
        if (v223[9])
        {
          memcpy(v222, (v221 + v70), sizeof(v222));
        }

        else
        {

          static os_log_type_t.fault.getter();
          v169 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100018144(v223, &qword_100CB71A8);
          (*(v73 + 8))(v71, v185);
        }

        EdgeInsets.init(_all:)();
        v171 = v170;
        v173 = v172;
        v175 = v174;
        v177 = v176;
        v178 = v191;
        sub_10011C0F0(v207, v191, &qword_100CDA0D8);
        v179 = v178 + *(v214 + 36);
        *v179 = v168;
        *(v179 + 8) = v171;
        *(v179 + 16) = v173;
        *(v179 + 24) = v175;
        *(v179 + 32) = v177;
        *(v179 + 40) = 0;
        v153 = &qword_100CDA0E0;
        v154 = v192;
        sub_10011C0F0(v178, v192, &qword_100CDA0E0);
        sub_1000302D8(v154, v216, &qword_100CDA0E0);
        swift_storeEnumTagMultiPayload();
        sub_1007E9F74();
        sub_10014FB5C();
        goto LABEL_68;
      }

      (*(v29 + 8))(v45, v28);
    }

    v74 = type metadata accessor for LocationViewModel();
    memcpy(v225, (v2 + *(v74 + 24)), 0x9AuLL);
    v75 = v38[6];
    v76 = v2 + v38[5];
    v77 = *v76;
    v208 = *(v76 + 8);
    v209 = v77;
    LODWORD(v195) = *(v76 + 16);
    v207 = *(v76 + 24);
    v78 = v2 + v75;
    v79 = *(v2 + v75);
    v80 = *(v2 + v75 + 8);
    v81 = *(v2 + v75 + 16);
    v82 = v2;
    v83 = *(v78 + 24);
    v84 = (v43 + v38[7]);
    v86 = *v84;
    v85 = v84[1];
    v88 = v84[2];
    v87 = v84[3];
    v191 = v79;
    v192 = v87;
    v89 = v82 + v38[10];
    v90 = *v89;
    LODWORD(v89) = *(v89 + 8);
    v190 = v80;
    LODWORD(v189) = v81;
    v187 = v86;
    v188 = v83;
    v186 = v85;
    v183 = v90;
    v184 = v88;
    if (v89 == 1)
    {
      v222[0] = v90 & 1;
      sub_100151784(v225, v224);
      sub_10010CD54(v209, v208, v195);

      sub_10010CD54(v79, v80, v81);

      sub_100148118(v86, v85, v88, v192);
      v91 = v183;
    }

    else
    {
      sub_100151784(v225, v224);
      sub_10010CD54(v209, v208, v195);

      sub_10010CD54(v79, v80, v81);

      sub_100148118(v86, v85, v88, v192);
      v92 = v183;
      sub_10022BF9C(v183, 0);
      static os_log_type_t.fault.getter();
      v93 = v38;
      v94 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v38 = v93;
      v95 = v194;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v92, 0);
      (*(v193 + 8))(v95, v34);
      v91 = v222[0];
    }

    v182 = v38;
    sub_100149314(v91 & 1);
    v96 = Text.font(_:)();
    v98 = v97;
    v100 = v99;

    v101 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v196, 1, 1, v101);
    v102 = type metadata accessor for Text.Suffix();
    sub_10001B350(v198, 1, 1, v102);
    v103 = v197;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    v104 = v221;
    Text.Measurements.size(of:in:context:)();
    v106 = v105;
    sub_10010CD64(v96, v98, v100 & 1);

    (*(v199 + 8))(v103, v200);
    v107 = v182[9];
    memcpy(v224, (v104 + v107), 0x49uLL);
    if (v224[9])
    {
      memcpy(v223, (v104 + v107), 0x48uLL);
      v108 = v193;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v109 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v110 = v194;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(v224, &qword_100CB71A8);
      v108 = v193;
      (*(v193 + 8))(v110, v185);
    }

    v111 = v190;
    v113 = v187;
    v112 = v188;
    v114 = v186;
    v115 = v223[7];
    v116 = swift_getKeyPath();
    v117 = v201;
    *v201 = v116;
    *(v117 + 8) = 0;
    *(v117 + 16) = swift_getKeyPath();
    *(v117 + 24) = 0;
    v118 = v202;
    v119 = *(v202 + 24);
    *(v117 + v119) = swift_getKeyPath();
    sub_10022C350(&qword_100CA2D60);
    swift_storeEnumTagMultiPayload();
    v120 = v118[7];
    *(v117 + v120) = swift_getKeyPath();
    sub_10022C350(&qword_100CAD618);
    swift_storeEnumTagMultiPayload();
    v121 = v117 + v118[8];
    *v121 = swift_getKeyPath();
    *(v121 + 8) = 0;
    v122 = v117 + v118[9];
    *v122 = swift_getKeyPath();
    *(v122 + 8) = 0;
    v123 = v118[10];
    *(v117 + v123) = swift_getKeyPath();
    sub_10022C350(&qword_100CB3278);
    swift_storeEnumTagMultiPayload();
    v124 = v117 + v118[11];
    *v124 = swift_getKeyPath();
    *(v124 + 8) = 0;
    v125 = v117 + v118[12];
    *v125 = swift_getKeyPath();
    *(v125 + 8) = 0;
    *(v125 + 16) = 0;
    *(v125 + 24) = 0;
    *(v125 + 32) = 0;
    v126 = v117 + v118[13];
    *v126 = swift_getKeyPath();
    *(v126 + 8) = 0u;
    *(v126 + 24) = 0u;
    *(v126 + 33) = 0u;
    Text.Measurements.init()();
    v223[0] = 0x4046800000000000;
    sub_10014AB54();
    ScaledMetric.init(wrappedValue:)();
    memcpy((v117 + v118[14]), v225, 0x9AuLL);
    v127 = v117 + v118[15];
    v128 = v208;
    *v127 = v209;
    *(v127 + 8) = v128;
    *(v127 + 16) = v195;
    *(v127 + 24) = v207;
    v129 = v117 + v118[16];
    *v129 = v191;
    *(v129 + 8) = v111;
    *(v129 + 16) = v189;
    *(v129 + 24) = v112;
    v130 = (v117 + v118[17]);
    *v130 = v113;
    v130[1] = v114;
    v131 = v192;
    v130[2] = v184;
    v130[3] = v131;
    *(v117 + v118[18]) = v106;
    *(v117 + v118[20]) = v115;
    *(v117 + v118[21]) = 0;
    sub_10008152C(&qword_100CD9FF8, type metadata accessor for LocationHeaderView);
    v132 = v204;
    View.accessibilityIdentifier(_:)();
    sub_100147C14(v117, type metadata accessor for LocationHeaderView);
    sub_10022C350(&unk_100CE17E0);
    v133 = v211;
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_100A2C3F0;
    static AccessibilityTraits.isHeader.getter();
    v223[0] = v134;
    sub_10008152C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_100006F64(&qword_100CB3370, &unk_100CE17F0);
    v135 = v210;
    v136 = v212;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v133 + 8))(v135, v136);
    sub_100018144(v132, &qword_100CD9FD8);
    sub_10022C350(&qword_100CA4060);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_100A2D320;
    LOBYTE(v111) = static Edge.Set.leading.getter();
    *(v137 + 32) = v111;
    v138 = static Edge.Set.trailing.getter();
    *(v137 + 33) = v138;
    v139 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v111)
    {
      v139 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v140 = Edge.Set.init(rawValue:)();
    a1 = v220;
    v72 = v213;
    if (v140 != v138)
    {
      v139 = Edge.Set.init(rawValue:)();
    }

    memcpy(v223, (v221 + v107), 0x49uLL);
    if (v223[9])
    {
      memcpy(__dst, (v221 + v107), sizeof(__dst));
    }

    else
    {

      static os_log_type_t.fault.getter();
      v141 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v142 = v194;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(v223, &qword_100CB71A8);
      (*(v108 + 8))(v142, v185);
    }

    EdgeInsets.init(_all:)();
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v150 = v149;
    v151 = v205;
    sub_10011C0F0(v218, v205, &qword_100CD9FD8);
    v152 = v151 + *(v217 + 36);
    *v152 = v139;
    *(v152 + 8) = v144;
    *(v152 + 16) = v146;
    *(v152 + 24) = v148;
    *(v152 + 32) = v150;
    *(v152 + 40) = 0;
    v153 = &qword_100CD9FE0;
    v154 = v206;
    sub_10011C0F0(v151, v206, &qword_100CD9FE0);
    sub_1000302D8(v154, v216, &qword_100CD9FE0);
    swift_storeEnumTagMultiPayload();
    sub_1007E9F74();
    sub_10014FB5C();
LABEL_68:
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v154, v153);
    sub_10011C0F0(v72, a1, &qword_100CDA0E8);
    v41 = 0;
    return sub_10001B350(a1, v41, 1, v219);
  }

  if ((v40 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v41 = 1;
  return sub_10001B350(a1, v41, 1, v219);
}