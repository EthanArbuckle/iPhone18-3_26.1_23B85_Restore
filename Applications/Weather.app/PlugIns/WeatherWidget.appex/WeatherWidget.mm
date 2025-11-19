WeatherWidget::WidgetDisplaySize_optional __swiftcall WidgetDisplaySize.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

WeatherWidget::WidgetDisplaySize_optional sub_100002688@<W0>(Swift::Int *a1@<X0>, WeatherWidget::WidgetDisplaySize_optional *a2@<X8>)
{
  result.value = WidgetDisplaySize.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000026B4@<X0>(uint64_t *a1@<X8>)
{
  result = WidgetDisplaySize.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100002750()
{
  sub_1000EC334();
  if (v0 == 1210.0)
  {
    return 2;
  }

  sub_1000EC334();
  if (v2 > 1133.0)
  {
    return 3;
  }

  sub_1000EC334();
  if (v3 > 667.0)
  {
    return 2;
  }

  sub_1000EC334();
  return v4 > 320.0;
}

BOOL sub_1000027EC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 1 && v1 < 3;
}

uint64_t variable initialization expression of AggregateWeatherViewModel.__placeholderSunEvent@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);

  return sub_1000028A0(a1, 1, 1, v2);
}

uint64_t variable initialization expression of LocalSearchRequestManager.geocodeRequestDeduper()
{
  v0 = *(*(sub_1000E9BE4() - 8) + 64);
  __chkstk_darwin();
  sub_1000029B8();
  sub_100002A10(&qword_10012EC10, &unk_1000EEAF0);
  sub_100002A58();
  sub_1000EC3C4();
  v1 = sub_100002A10(&qword_10012EC20, &unk_1000F2430);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1000E9B94();
}

unint64_t sub_1000029B8()
{
  result = qword_10012EC08;
  if (!qword_10012EC08)
  {
    sub_1000E9BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC08);
  }

  return result;
}

uint64_t sub_100002A10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002A58()
{
  result = qword_10012EC18;
  if (!qword_10012EC18)
  {
    sub_100002ABC(&qword_10012EC10, &unk_1000EEAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC18);
  }

  return result;
}

uint64_t sub_100002ABC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

double variable initialization expression of LocalSearchRequestManager.$__lazy_storage_$_store@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_1000EEAE0;
  return result;
}

unint64_t sub_100002B28()
{
  result = qword_10012EC28;
  if (!qword_10012EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetDisplaySize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WidgetDisplaySize(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100002CE0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_100002D2C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002D38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002D58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_100002D94(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_100002E28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100002E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_1000EA2C4();
  sub_1000069F4();
  v28 = v27;
  v30 = *(v29 + 64);
  (__chkstk_darwin)();
  sub_100006A10();
  v33 = v32 - v31;
  v34 = sub_100002A10(&qword_10012EEA0, &qword_1000EED68);
  v35 = sub_1000069E4(v34);
  v37 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v39 = (&a9 - v38);
  sub_1000068F4(v23, &a9 - v38, &qword_10012EEA0, &qword_1000EED68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = sub_1000EA014();
    sub_1000069E4(v40);
    (*(v41 + 32))(v25, v39);
  }

  else
  {
    v42 = *v39;
    sub_1000EC1A4();
    v43 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v28 + 8))(v33, v26);
  }

  sub_100006A20();
}

void sub_100003050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1000EA2C4();
  sub_1000069F4();
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  sub_100006A10();
  v33 = v32 - v31;
  v34 = sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  v35 = sub_1000069E4(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = (&a9 - v38);
  v40 = type metadata accessor for ModernDailyForecastRowView();
  sub_1000068F4(v20 + *(v40 + 28), v39, &qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = sub_1000EBC34();
    sub_1000069E4(v41);
    (*(v42 + 32))(v24, v39);
  }

  else
  {
    v43 = *v39;
    sub_1000EC1A4();
    v44 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v27 + 8))(v33, v25);
  }

  sub_100006A20();
}

double sub_100003228()
{
  v1 = v0;
  v2 = sub_1000EBC34();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v50 - v7;
  v9 = sub_1000EA3A4();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = __chkstk_darwin(v9);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v50 - v13;
  v14 = sub_1000EA2C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ModernDailyForecastRowView();
  v27 = v19;
  v28 = v1 + *(v19 + 20);
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    result = 1.0;
    if (v29)
    {
      return result;
    }
  }

  else
  {

    sub_1000EC1A4();
    v50 = v14;
    v31 = sub_1000EA524();
    v51 = v6;
    v32 = v31;
    sub_1000E9F14();

    v6 = v51;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v29, 0);
    v19 = (*(v15 + 8))(v18, v50);
    result = 1.0;
    if ((v57 & 0x100000000000000) != 0)
    {
      return result;
    }
  }

  v33 = v1 + *(v27 + 24);
  v34 = v53;
  sub_10003E504(v19, v20, v21, v22, v23, v24, v25, v26, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v36 = v54;
  v35 = v55;
  v37 = v56;
  (*(v55 + 104))(v54, enum case for ColorSchemeContrast.increased(_:), v56);
  v38 = sub_1000EA394();
  v39 = *(v35 + 8);
  v39(v36, v37);
  v40 = (v39)(v34, v37);
  result = 1.0;
  if ((v38 & 1) == 0)
  {
    sub_100003050(v40, v41, v42, v43, v44, v45, v46, v47, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
    sub_1000EBC14();
    v48 = sub_1000EBBF4();
    v49 = *(v52 + 8);
    v49(v6, v2);
    v49(v8, v2);
    result = 0.27;
    if (v48)
    {
      return 0.7;
    }
  }

  return result;
}

uint64_t sub_1000035F4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = type metadata accessor for ModernDailyForecastRowView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100006144(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000653C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_1000065A0;
  a1[1] = v7;
  return result;
}

uint64_t sub_1000036E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v34 = a3;
  v4 = sub_1000EA4E4();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012EEB8, &qword_1000EED80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v30 - v10);
  v12 = sub_100002A10(&qword_10012EEC0, &qword_1000EED88);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v16 = sub_100002A10(&qword_10012EEC8, &qword_1000EED90);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v31 = sub_100002A10(&qword_10012EED0, &qword_1000EED98);
  v21 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v23 = &v30 - v22;
  *v11 = sub_1000EABD4();
  v11[1] = v24;
  v25 = sub_100002A10(&qword_10012EED8, &qword_1000EEDA0);
  sub_100003ADC(a2, v30, (v11 + *(v25 + 44)));
  sub_1000EABD4();
  sub_1000EA0A4();
  sub_1000068A4(v11, v15, &qword_10012EEB8, &qword_1000EED80);
  memcpy(&v15[*(v12 + 36)], __src, 0x70uLL);
  sub_1000EA4B4();
  v26 = sub_100006620();
  sub_1000EA914();
  (*(v32 + 8))(v7, v33);
  sub_100006850(v15, &qword_10012EEC0, &qword_1000EED88);
  v27 = a2 + *(type metadata accessor for ModernDailyForecastRowView() + 40);
  v37 = sub_1000EB144();
  v38 = v28;
  v35 = v12;
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  sub_1000EA8D4();

  (*(v17 + 8))(v20, v16);
  sub_1000EA084();
  return sub_1000066D8(v23);
}

uint64_t sub_100003ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v104 = a2;
  v102 = a3;
  v100 = sub_100002A10(&qword_10012EEF0, &qword_1000EEDA8);
  v4 = *(*(v100 - 8) + 64);
  v5 = __chkstk_darwin(v100);
  v103 = &v97[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v106 = &v97[-v7];
  v118 = sub_1000EAFC4();
  v117 = *(v118 - 8);
  v8 = *(v117 + 64);
  v9 = __chkstk_darwin(v118);
  v116 = &v97[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v115 = &v97[-v11];
  v105 = sub_100002A10(&qword_10012EEF8, &qword_1000EEDB0);
  v12 = *(*(v105 - 8) + 64);
  v13 = __chkstk_darwin(v105);
  v101 = &v97[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v119 = &v97[-v15];
  v16 = type metadata accessor for ModernDailyForecastRowView();
  v113 = *(v16 + 40);
  v17 = v16;
  v114 = v16;
  *&v124 = sub_1000EB104();
  *(&v124 + 1) = v18;
  sub_100005898();
  v19 = sub_1000EA814();
  v21 = v20;
  v23 = v22;
  sub_1000EA9C4();
  v110 = sub_1000EA784();
  v109 = v24;
  v26 = v25;

  sub_1000058EC(v19, v21, v23 & 1);

  v27 = a1;
  v28 = a1 + *(v17 + 36);
  v29 = type metadata accessor for DailyViewAttributes();
  v30 = *(v29 + 68);
  v111 = v29;
  v31 = *(v28 + v30);
  v112 = v28;
  sub_1000EA5D4();
  LOBYTE(v21) = v26;
  v32 = v110;
  v33 = v109;
  v108 = sub_1000EA7D4();
  v35 = v34;
  v37 = v36;
  v107 = v38;

  v39 = v32;
  v40 = v119;
  sub_1000058EC(v39, v33, v21 & 1);

  v41 = *(v28 + *(v29 + 80));
  v42 = v108;
  v109 = sub_1000EA714();
  v99 = v43;
  v98 = v44;
  v110 = v45;
  sub_1000058EC(v42, v35, v37 & 1);

  v46 = v115;
  sub_1000EB1E4();
  sub_1000EAF84();
  v47 = *(v117 + 8);
  v48 = v118;
  v47(v46, v118);
  v49 = v116;
  sub_1000EB1E4();
  sub_1000EAF54();
  v47(v49, v48);
  sub_1000EAED4();
  v50 = *(v112 + *(v111 + 72));
  KeyPath = swift_getKeyPath();
  v52 = &v40[*(sub_100002A10(&qword_10012EF00, &qword_1000F5320) + 36)];
  *v52 = KeyPath;
  v52[1] = v50;
  v53 = v114;
  v54 = *(v27 + *(v114 + 52));

  sub_1000EABC4();
  sub_1000E9FC4();
  v55 = &v40[*(sub_100002A10(&qword_10012EF08, &qword_1000EEDF0) + 36)];
  v56 = v122;
  *v55 = v121;
  v55[1] = v56;
  v55[2] = v123;
  v57 = sub_1000043DC(1);
  v58 = v27;
  v59 = (v27 + *(v53 + 56));
  v60 = *v59;
  v61 = v59[1];
  v62 = v59[2];
  *&v124 = *v59;
  *(&v124 + 1) = v61;
  *&v125 = v62;
  sub_100002A10(&qword_10012EF10, &qword_1000EEDF8);
  result = sub_1000EAAF4();
  if ((v57 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = v120;
  if (v57 >= *(v120 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v64 = (v120 + 32 * v57);
  v65 = v64[4];
  v66 = v64[5];
  v67 = v64[6];
  v68 = v64[7];

  v127.origin.x = v65;
  v127.origin.y = v66;
  v127.size.width = v67;
  v127.size.height = v68;
  MinX = CGRectGetMinX(v127);
  v70 = &v119[*(v105 + 36)];
  *v70 = MinX;
  *(v70 + 1) = 0;
  v71 = sub_1000EA2E4();
  v72 = v106;
  *v106 = v71;
  *(v72 + 8) = 0;
  *(v72 + 16) = 1;
  v73 = sub_100002A10(&qword_10012EF18, &qword_1000EEE00);
  sub_100004560(v58, v72 + *(v73 + 44));
  v74 = sub_1000043DC(2);
  *&v124 = v60;
  *(&v124 + 1) = v61;
  *&v125 = v62;
  result = sub_1000EAAF4();
  if ((v74 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v120;
  if (v74 >= *(v120 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v75 = (v120 + 32 * v74);
  v76 = v75[4];
  v77 = v75[5];
  v78 = v75[6];
  v79 = v75[7];

  v128.origin.x = v76;
  v128.origin.y = v77;
  v128.size.width = v78;
  v128.size.height = v79;
  v80 = CGRectGetMinX(v128);
  v81 = (v72 + *(sub_100002A10(&qword_10012EF20, &qword_1000EEE08) + 36));
  *v81 = v80;
  v81[1] = 0.0;
  sub_1000E9FD4();
  v82 = sub_1000043DC(2);
  *&v124 = v60;
  *(&v124 + 1) = v61;
  *&v125 = v62;
  result = sub_1000EAAF4();
  if ((v82 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v120;
  if (v82 < *(v120 + 16))
  {
    v83 = (v120 + 32 * v82);
    v84 = v83[4];
    v85 = v83[5];
    v86 = v83[6];
    v87 = v83[7];

    v129.origin.x = v84;
    v129.origin.y = v85;
    v129.size.width = v86;
    v129.size.height = v87;
    CGRectGetMinX(v129);
    sub_1000EABC4();
    sub_1000E9FC4();
    v88 = (v72 + *(v100 + 36));
    v89 = v125;
    *v88 = v124;
    v88[1] = v89;
    v88[2] = v126;
    v90 = v101;
    sub_1000068F4(v119, v101, &qword_10012EEF8, &qword_1000EEDB0);
    v91 = v103;
    sub_1000068F4(v72, v103, &qword_10012EEF0, &qword_1000EEDA8);
    v92 = v102;
    v93 = v109;
    v94 = v99;
    *v102 = v109;
    v92[1] = v94;
    v95 = v98 & 1;
    *(v92 + 16) = v98 & 1;
    v92[3] = v110;
    *(v92 + 16) = 257;
    v96 = sub_100002A10(&qword_10012EF28, &unk_1000EEE10);
    sub_1000068F4(v90, v92 + *(v96 + 48), &qword_10012EEF8, &qword_1000EEDB0);
    sub_1000068F4(v91, v92 + *(v96 + 64), &qword_10012EEF0, &qword_1000EEDA8);
    sub_10000673C(v93, v94, v95);

    sub_100006850(v72, &qword_10012EEF0, &qword_1000EEDA8);
    sub_100006850(v119, &qword_10012EEF8, &qword_1000EEDB0);
    sub_100006850(v91, &qword_10012EEF0, &qword_1000EEDA8);
    sub_100006850(v90, &qword_10012EEF8, &qword_1000EEDB0);
    sub_1000058EC(v93, v94, v95);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100004560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v3 = sub_1000E9874();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v161 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E9894();
  v159 = *(v6 - 8);
  v160 = v6;
  v7 = *(v159 + 64);
  __chkstk_darwin(v6);
  v158 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v151 = *(v147 - 8);
  v9 = *(v151 + 64);
  v10 = __chkstk_darwin(v147);
  v150 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v149 = &v145 - v12;
  v13 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v148 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v146 = &v145 - v17;
  v18 = sub_1000EAD54();
  v156 = *(v18 - 8);
  v157 = v18;
  v19 = *(v156 + 64);
  __chkstk_darwin(v18);
  v153 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_100002A10(&qword_10012EF38, &qword_1000EEE20);
  v21 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v154 = &v145 - v22;
  v178 = sub_100002A10(&qword_10012EF40, &qword_1000EEE28);
  v23 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v152 = &v145 - v24;
  v25 = sub_100002A10(&qword_10012EF48, &unk_1000EEE30);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v183 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v180 = &v145 - v29;
  v30 = sub_1000EBC34();
  v176 = *(v30 - 8);
  v177 = v30;
  v31 = *(v176 + 64);
  v32 = __chkstk_darwin(v30);
  v172 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v168 = &v145 - v34;
  v175 = sub_1000EABF4();
  v173 = *(v175 - 8);
  v35 = *(v173 + 64);
  __chkstk_darwin(v175);
  v171 = &v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100002A10(&qword_10012EF50, &unk_1000F7050);
  v38 = *(v37 - 8);
  v169 = v37 - 8;
  v39 = *(v38 + 64);
  __chkstk_darwin(v37 - 8);
  v41 = &v145 - v40;
  v42 = sub_100002A10(&qword_10012EF58, &unk_1000EEE40);
  v43 = *(v42 - 8);
  v170 = v42 - 8;
  v44 = *(v43 + 64);
  __chkstk_darwin(v42 - 8);
  v167 = &v145 - v45;
  v46 = sub_100002A10(&qword_10012EF60, &qword_1000F7060);
  v47 = *(v46 - 8);
  v174 = v46 - 8;
  v48 = *(v47 + 64);
  v49 = __chkstk_darwin(v46 - 8);
  v182 = &v145 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v166 = &v145 - v52;
  __chkstk_darwin(v51);
  v184 = &v145 - v53;
  v54 = type metadata accessor for ModernDailyForecastRowView();
  v55 = *(v54 + 40);
  v181 = a1 + *(v54 + 36);
  sub_1000054E8();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  sub_1000EA9C4();
  v62 = sub_1000EA784();
  v163 = v63;
  v164 = v62;
  v162 = v64;
  v165 = v65;

  v66 = v61 & 1;
  v67 = a1;
  sub_1000058EC(v57, v59, v66);
  v68 = v54;

  v70 = v168;
  sub_100003050(v69, v71, v72, v73, v74, v75, v76, v77, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
  v78 = v172;
  sub_1000EBC14();
  v79 = v78;
  LOBYTE(v78) = sub_1000EBBF4();
  v80 = *(v176 + 8);
  v81 = v79;
  v82 = v177;
  v80(v81, v177);
  v80(v70, v82);
  v83 = v173;
  v84 = &enum case for BlendMode.normal(_:);
  if ((v78 & 1) == 0)
  {
    v84 = &enum case for BlendMode.plusLighter(_:);
  }

  v85 = v171;
  v86 = v175;
  (*(v173 + 104))(v171, *v84, v175);
  (*(v83 + 32))(&v41[*(v169 + 44)], v85, v86);
  v87 = v163;
  *v41 = v164;
  *(v41 + 1) = v87;
  v41[16] = v162 & 1;
  *(v41 + 3) = v165;
  v88 = sub_100003228();
  v89 = v167;
  sub_1000068A4(v41, v167, &qword_10012EF50, &unk_1000F7050);
  *(v89 + *(v170 + 44)) = v88;
  v90 = *(v67 + *(v68 + 44));
  sub_1000EABE4();
  v91 = v181;
  sub_1000E9FC4();
  v92 = v89;
  v93 = v166;
  sub_1000068A4(v92, v166, &qword_10012EF58, &unk_1000EEE40);
  v94 = (v93 + *(v174 + 44));
  v95 = v204;
  *v94 = v203;
  v94[1] = v95;
  v94[2] = v205;
  v96 = v180;
  sub_1000068A4(v93, v184, &qword_10012EF60, &qword_1000F7060);
  sub_1000EABC4();
  sub_1000E9FC4();
  v176 = v208;
  v177 = v206;
  v174 = v211;
  v175 = v210;
  v202 = 1;
  v201 = v207;
  v200 = v209;
  v97 = type metadata accessor for DailyViewAttributes();
  v98 = 1;
  if (*(v91 + *(v97 + 40)) == 1)
  {
    v99 = v97;
    v173 = v68;
    v100 = v91 + *(v97 + 88);
    v101 = v146;
    sub_1000068F4(v100, v146, &qword_10012EF30, &unk_1000F14F0);
    v102 = v147;
    if (sub_100005B30(v101, 1, v147) == 1)
    {
      sub_100006850(v101, &qword_10012EF30, &unk_1000F14F0);
      v103 = v149;
      sub_1000EB1B4();
      v101 = v103;
      v104 = v151;
    }

    else
    {
      v104 = v151;
      v103 = v149;
    }

    sub_1000E82E4();
    v105 = *(v104 + 8);
    v105(v101, v102);
    v106 = v148;
    sub_1000068F4(v181 + *(v99 + 92), v148, &qword_10012EF30, &unk_1000F14F0);
    if (sub_100005B30(v106, 1, v102) == 1)
    {
      sub_100006850(v106, &qword_10012EF30, &unk_1000F14F0);
      sub_1000EB194();
      v106 = v103;
    }

    sub_1000E82E4();
    v105(v106, v102);
    sub_1000EB1B4();
    sub_1000E82E4();
    v105(v103, v102);
    v107 = v150;
    sub_1000EB194();
    sub_1000E82E4();
    v105(v107, v102);
    v108 = v158;
    sub_1000EB134();
    sub_1000E9884();
    (*(v159 + 8))(v108, v160);
    sub_1000EAB64();
    v109 = v153;
    sub_1000EAD44();
    v68 = v173;
    v110 = *(v173 + 32);
    sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
    sub_1000EAEA4();
    sub_1000EABC4();
    sub_1000E9FC4();
    v111 = v154;
    (*(v156 + 32))(v154, v109, v157);
    v112 = (v111 + *(v155 + 36));
    v113 = v213;
    *v112 = v212;
    v112[1] = v113;
    v112[2] = v214;
    sub_10000674C();
    v114 = v152;
    sub_1000EA8F4();
    sub_100006850(v111, &qword_10012EF38, &qword_1000EEE20);
    sub_1000068A4(v114, v96, &qword_10012EF40, &qword_1000EEE28);
    v98 = 0;
  }

  sub_1000028A0(v96, v98, 1, v178);
  sub_1000EABC4();
  sub_1000E9FC4();
  v178 = v215;
  v172 = v219;
  v173 = v217;
  v171 = v220;
  v191 = 1;
  v190 = v216;
  v189 = v218;
  sub_1000054E8();
  v116 = v115;
  v117 = v67;
  v119 = v118;
  v120 = v96;
  v122 = v121;
  sub_1000EA9C4();
  v123 = sub_1000EA784();
  v169 = v124;
  v170 = v123;
  v126 = v125;
  v181 = v127;

  sub_1000058EC(v116, v119, v122 & 1);

  v128 = *(v117 + *(v68 + 48));
  sub_1000EABE4();
  sub_1000E9FC4();
  LODWORD(v168) = v126 & 1;
  v129 = v182;
  sub_1000068F4(v184, v182, &qword_10012EF60, &qword_1000F7060);
  v130 = v202;
  LOBYTE(v119) = v201;
  LOBYTE(v117) = v200;
  v131 = v183;
  sub_1000068F4(v120, v183, &qword_10012EF48, &unk_1000EEE30);
  v132 = v191;
  LODWORD(v166) = v190;
  LODWORD(v167) = v189;
  v133 = v179;
  sub_1000068F4(v129, v179, &qword_10012EF60, &qword_1000F7060);
  v134 = sub_100002A10(&qword_10012EF68, &qword_1000EEE50);
  v135 = v133 + v134[12];
  *v135 = 0;
  *(v135 + 8) = v130;
  v136 = v176;
  *(v135 + 16) = v177;
  *(v135 + 24) = v119;
  *(v135 + 32) = v136;
  *(v135 + 40) = v117;
  v137 = v174;
  *(v135 + 48) = v175;
  *(v135 + 56) = v137;
  sub_1000068F4(v131, v133 + v134[16], &qword_10012EF48, &unk_1000EEE30);
  v138 = v133 + v134[20];
  *v138 = 0;
  *(v138 + 8) = v132;
  *(v138 + 16) = v178;
  *(v138 + 24) = v166;
  *(v138 + 32) = v173;
  *(v138 + 40) = v167;
  v139 = v171;
  *(v138 + 48) = v172;
  *(v138 + 56) = v139;
  v140 = v134[24];
  v142 = v169;
  v141 = v170;
  *&v192[0] = v170;
  *(&v192[0] + 1) = v169;
  LOBYTE(v134) = v168;
  LOBYTE(v192[1]) = v168;
  *(&v192[1] + 1) = v188[0];
  DWORD1(v192[1]) = *(v188 + 3);
  v143 = v181;
  *(&v192[1] + 1) = v181;
  v192[3] = v186;
  v192[4] = v187;
  v192[2] = v185;
  memcpy((v133 + v140), v192, 0x50uLL);
  sub_1000068F4(v192, v193, &qword_10012EF70, &qword_1000EEE58);
  sub_100006850(v180, &qword_10012EF48, &unk_1000EEE30);
  sub_100006850(v184, &qword_10012EF60, &qword_1000F7060);
  v193[0] = v141;
  v193[1] = v142;
  v194 = v134;
  *v195 = v188[0];
  *&v195[3] = *(v188 + 3);
  v196 = v143;
  v197 = v185;
  v198 = v186;
  v199 = v187;
  sub_100006850(v193, &qword_10012EF70, &qword_1000EEE58);
  sub_100006850(v183, &qword_10012EF48, &unk_1000EEE30);
  return sub_100006850(v182, &qword_10012EF60, &qword_1000F7060);
}

void sub_1000054E8()
{
  sub_100006A58();
  v1 = v0;
  v49 = v2;
  v3 = sub_1000EAD74();
  sub_1000069F4();
  v5 = v4;
  v45 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  sub_100006A10();
  v11 = v10 - v9;
  v12 = sub_1000EC224();
  sub_1000069F4();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000069F4();
  v47 = v23;
  v48 = v24;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v23);
  v29 = &v44 - v28;
  v1(v27);
  sub_1000EAD24();
  sub_1000EC214();
  v46 = *(v14 + 8);
  v30 = v22;
  v31 = v12;
  v46(v30, v12);
  v32 = *(v5 + 104);
  v33 = v11;
  v34 = v3;
  v32(v11, enum case for WeatherFormatPlaceholder.none(_:), v3);
  sub_1000E93A4();
  sub_1000E9394();
  sub_100006808(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v35 = v47;
  v36 = sub_1000E8304();
  v38 = v37;

  (*(v45 + 8))(v33, v34);
  v46(v20, v31);
  (*(v48 + 8))(v29, v35);
  v50 = v36;
  v51 = v38;
  sub_100005898();
  v39 = sub_1000EA814();
  v41 = v40;
  LOBYTE(v35) = v42;
  v43 = *(v49 + *(type metadata accessor for DailyViewAttributes() + 68));
  sub_1000EA664();
  sub_1000EA684();
  sub_1000EA5D4();

  sub_1000EA7D4();

  sub_1000058EC(v39, v41, v35 & 1);

  sub_100006A20();
}

unint64_t sub_100005898()
{
  result = qword_10012ED80;
  if (!qword_10012ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED80);
  }

  return result;
}

uint64_t sub_1000058EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100005910(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002A10(&qword_10012ED88, &qword_1000EECC8);
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_14:

    return sub_100005B30(v10, a2, v9);
  }

  v11 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
  v12 = sub_100006A04(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[6];
LABEL_13:
    v10 = a1 + v14;
    goto LABEL_14;
  }

  v15 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
  v16 = sub_100006A04(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[7];
    goto LABEL_13;
  }

  v18 = sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
  v19 = sub_100006A04(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[8];
    goto LABEL_13;
  }

  v21 = type metadata accessor for DailyViewAttributes();
  v22 = sub_100006A04(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[9];
    goto LABEL_13;
  }

  v24 = sub_1000EB214();
  v25 = sub_100006A04(v24);
  if (*(v26 + 84) == a2)
  {
    v9 = v25;
    v14 = a3[10];
    goto LABEL_13;
  }

  v28 = *(a1 + a3[14] + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

uint64_t sub_100005B6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002A10(&qword_10012ED88, &qword_1000EECC8);
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
      v18 = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[8];
        }

        else
        {
          v23 = type metadata accessor for DailyViewAttributes();
          v24 = sub_100006A04(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[9];
          }

          else
          {
            v26 = sub_1000EB214();
            result = sub_100006A04(v26);
            if (*(v28 + 84) != a3)
            {
              *(a1 + a4[14] + 8) = (a2 - 1);
              return result;
            }

            v11 = result;
            v16 = a4[10];
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

uint64_t type metadata accessor for ModernDailyForecastRowView()
{
  result = qword_10012EE00;
  if (!qword_10012EE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005DD4()
{
  sub_100005F98(319, &qword_10012EE10, &type metadata accessor for LayoutDirection);
  if (v0 <= 0x3F)
  {
    sub_100005F48();
    if (v1 <= 0x3F)
    {
      sub_100005F98(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        sub_100005F98(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
        if (v3 <= 0x3F)
        {
          sub_100005FEC();
          if (v4 <= 0x3F)
          {
            type metadata accessor for DailyViewAttributes();
            if (v5 <= 0x3F)
            {
              sub_1000EB214();
              if (v6 <= 0x3F)
              {
                sub_10000609C();
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

void sub_100005F48()
{
  if (!qword_10012EE18)
  {
    v0 = sub_1000E9F94();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EE18);
    }
  }
}

void sub_100005F98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100005FEC()
{
  if (!qword_10012EE30)
  {
    sub_100006048();
    v0 = sub_1000EAEB4();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EE30);
    }
  }
}

unint64_t sub_100006048()
{
  result = qword_10012EE38;
  if (!qword_10012EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EE38);
  }

  return result;
}

void sub_10000609C()
{
  if (!qword_10012EE40)
  {
    sub_100002ABC(&unk_10012EE48, qword_1000EED10);
    v0 = sub_1000EAB14();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EE40);
    }
  }
}

uint64_t sub_100006144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernDailyForecastRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000061A8()
{
  sub_100006A58();
  v1 = type metadata accessor for ModernDailyForecastRowView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_100002A10(&qword_10012EEA0, &qword_1000EED68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000EA014();
    sub_1000069D0(v5);
    (*(v6 + 8))(v0 + v2);
  }

  else
  {
    v7 = *v4;
  }

  sub_100006530(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  v8 = v1[6];
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000EA3A4();
    sub_1000069D0(v9);
    (*(v10 + 8))(v4 + v8);
  }

  else
  {
    v11 = *(v4 + v8);
  }

  v12 = v1[7];
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000EBC34();
    sub_1000069D0(v13);
    (*(v14 + 8))(v4 + v12);
  }

  else
  {
    v15 = *(v4 + v12);
  }

  v16 = v1[8];
  v17 = sub_100002A10(&qword_10012EDA0, &unk_1000EECE0);
  sub_1000069D0(v17);
  (*(v18 + 8))(v4 + v16);
  v19 = v4 + v1[9];
  v20 = sub_1000EBC44();
  sub_1000069D0(v20);
  (*(v21 + 8))(v19);
  v22 = type metadata accessor for DailyViewAttributes();
  v23 = *&v19[v22[5]];

  v24 = *&v19[v22[17]];

  v25 = *&v19[v22[18]];

  v26 = *&v19[v22[19]];

  v27 = v22[22];
  v28 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_100005B30(&v19[v27], 1, v28))
  {
    (*(*(v28 - 8) + 8))(&v19[v27], v28);
  }

  v29 = v22[23];
  if (!sub_100005B30(&v19[v29], 1, v28))
  {
    (*(*(v28 - 8) + 8))(&v19[v29], v28);
  }

  v30 = v1[10];
  v31 = sub_1000EB214();
  sub_1000069D0(v31);
  (*(v32 + 8))(v4 + v30);
  v33 = (v4 + v1[14]);
  v34 = *v33;

  v35 = v33[1];

  v36 = v33[2];

  sub_100006A20();

  return _swift_deallocObject(v37, v38, v39);
}

uint64_t sub_100006530(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10000653C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernDailyForecastRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000065A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ModernDailyForecastRowView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000036E8(a1, v6, a2);
}

unint64_t sub_100006620()
{
  result = qword_10012EEE0;
  if (!qword_10012EEE0)
  {
    sub_100002ABC(&qword_10012EEC0, &qword_1000EED88);
    sub_100006988(&qword_10012EEE8, &qword_10012EEB8, &qword_1000EED80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EEE0);
  }

  return result;
}

uint64_t sub_1000066D8(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012EED0, &qword_1000EED98);
  sub_1000069D0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000673C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000674C()
{
  result = qword_10012EF78;
  if (!qword_10012EF78)
  {
    sub_100002ABC(&qword_10012EF38, &qword_1000EEE20);
    sub_100006808(&qword_10012EF80, &type metadata accessor for WeatherDayVarianceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF78);
  }

  return result;
}

uint64_t sub_100006808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006850(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A10(a2, a3);
  sub_1000069D0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000068A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006A38(a1, a2, a3, a4);
  sub_1000069E4(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1000068F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006A38(a1, a2, a3, a4);
  sub_1000069E4(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_100006988(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100002A10(a3, a4);
}

uint64_t sub_100006A70@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v120 = a1;
  v121 = a3;
  v8 = sub_1000E8604();
  v9 = sub_1000090D4(v8);
  v117 = v10;
  v118 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v116 = (v14 - v13);
  sub_10000921C();
  v15 = type metadata accessor for InstantWeatherViewModel();
  v16 = sub_1000069E4(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100006A10();
  v21 = v20 - v19;
  v22 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  sub_100009210(v22);
  v24 = *(v23 + 64);
  sub_100009204();
  __chkstk_darwin(v25);
  v27 = &v111 - v26;
  v28 = type metadata accessor for WeatherDataViewModel();
  v29 = sub_1000069E4(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_1000091AC();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v119 = &v111 - v36;
  v37 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  sub_100009210(v37);
  v39 = *(v38 + 64);
  sub_100009204();
  __chkstk_darwin(v40);
  v42 = &v111 - v41;
  v43 = type metadata accessor for ForecastEntry(0);
  v44 = sub_1000069E4(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_100006A10();
  v49 = v48 - v47;
  switch(a2)
  {
    case 1:
      v114 = a4;
      v115 = v49;
      if (qword_10012EB30 != -1)
      {
        sub_1000090B4();
      }

      v69 = sub_1000E9F64();
      v113 = sub_100008CB8(v69, qword_100145BF8);
      v70 = sub_1000E9F44();
      v71 = sub_1000EC1B4();
      if (sub_1000091EC(v71))
      {
        v72 = sub_1000091BC();
        v112 = a5;
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "Location is fresh; evaluating the refresh policy...", v72, 2u);
        a5 = v112;
        sub_100009194();
      }

      sub_100007804(v120);
      if (sub_100005B30(v42, 1, v43) == 1)
      {
        sub_100008E48(v42, &qword_10012F040, &unk_1000EEED0);
        v73 = sub_1000E9F44();
        v74 = sub_1000EC1B4();
        if (sub_100009178(v74))
        {
          v75 = sub_1000091BC();
          sub_1000091E0(v75);
          sub_100009134(&_mh_execute_header, v76, v77, "Timeline missing entries, returning error refresh policy");
          sub_100009118();
        }

        v59 = sub_1000091D4();
        v61 = v114;
        return sub_100007298(v59, v61, v60);
      }

      sub_100008CF0(v42, v115, type metadata accessor for ForecastEntry);
      sub_10000FB4C(v27);
      if (sub_100005B30(v27, 1, v28) == 1)
      {
        sub_100008E48(v27, &qword_10012F038, &qword_1000F0F90);
        v78 = sub_1000E9F44();
        v79 = sub_1000EC1B4();
        if (sub_100009178(v79))
        {
          v80 = sub_1000091BC();
          sub_1000091E0(v80);
          sub_100009134(&_mh_execute_header, v81, v82, "Timeline entry missing its view model, returning error refresh policy");
          sub_100009118();
        }

        v83 = sub_1000091D4();
        sub_100007298(v83, v114, v84);
      }

      else
      {
        v85 = v27;
        v86 = v119;
        sub_100008CF0(v85, v119, type metadata accessor for WeatherDataViewModel);
        sub_100009008(v86, v34, type metadata accessor for WeatherDataViewModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100008CF0(v34, v21, type metadata accessor for InstantWeatherViewModel);
          v87 = v21 + *(v15 + 24);
          v88 = v116;
          sub_1000EB5C4();
          sub_100007998(v88, v121, v114, a5);
          (*(v117 + 8))(v88, v118);
          sub_100008D50(v21, type metadata accessor for InstantWeatherViewModel);
        }

        else
        {
          sub_1000090E8();
          sub_100008D50(v34, v89);
          v90 = v115;
          v91 = (v115 + *(v43 + 24));
          if (v91[50] == 1)
          {
            v92 = sub_1000091D4();
            sub_100008060(v92, v93, v94, v95, v96, v97, v98);
            sub_1000090E8();
            sub_100008D50(v86, v99);
            sub_100009100();
            v101 = v90;
            return sub_100008D50(v101, v100);
          }

          v102 = v91[48];
          v91[49];
          v103 = sub_1000091D4();
          sub_100008060(v103, v104, v105, v106, v107, v108, v109);
        }

        sub_1000090E8();
        sub_100008D50(v86, v110);
      }

      sub_100009100();
      v101 = v115;
      return sub_100008D50(v101, v100);
    case 4:
      if (qword_10012EB30 != -1)
      {
        sub_1000090B4();
      }

      v63 = sub_1000E9F64();
      sub_100008CB8(v63, qword_100145BF8);
      v64 = sub_1000E9F44();
      v65 = sub_1000EC1B4();
      if (sub_100009178(v65))
      {
        v66 = sub_1000091BC();
        sub_1000091E0(v66);
        sub_100009118();
      }

      return sub_1000EBD04();
    default:
      v50 = a4;
      if (qword_10012EB30 != -1)
      {
        sub_1000090B4();
      }

      v51 = sub_1000E9F64();
      sub_100008CB8(v51, qword_100145BF8);
      v52 = sub_1000E9F44();
      v53 = sub_1000EC1B4();
      if (sub_1000091EC(v53))
      {
        v54 = swift_slowAlloc();
        v55 = sub_10000923C();
        v123 = v55;
        *v54 = 136446210;
        v122 = a2;
        v56 = sub_1000EBEE4();
        v58 = sub_1000E2E18(v56, v57, &v123);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "Location state is not fresh; returning error refresh policy; state=%{public}s", v54, 0xCu);
        sub_100009068(v55);
        sub_100009194();
        sub_100009118();
      }

      v59 = sub_1000091D4();
      v61 = v50;
      return sub_100007298(v59, v61, v60);
  }
}

uint64_t sub_100007298@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v63 = a1;
  v70 = a3;
  v3 = sub_1000E8734();
  v4 = sub_1000090D4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100006A10();
  v11 = v10 - v9;
  v12 = sub_1000E8754();
  v13 = sub_1000090D4(v12);
  v68 = v14;
  v69 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_100006A10();
  v19 = v18 - v17;
  v20 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v20);
  v22 = *(v21 + 64);
  sub_100009204();
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  v71 = sub_1000E8604();
  v26 = sub_1000090D4(v71);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_1000091AC();
  v64 = (v31 - v32);
  v34 = __chkstk_darwin(v33);
  v36 = &v63 - v35;
  __chkstk_darwin(v34);
  v65 = &v63 - v37;
  if (qword_10012EB30 != -1)
  {
    sub_1000090B4();
  }

  v38 = sub_1000E9F64();
  v67 = sub_100008CB8(v38, qword_100145BF8);
  v39 = sub_1000E9F44();
  v40 = sub_1000EC1B4();
  if (sub_1000091EC(v40))
  {
    v41 = sub_1000091BC();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "About to compute error refresh policy. (5 min to next refresh).", v41, 2u);
    sub_100009194();
  }

  sub_1000E8714();
  (*(v6 + 104))(v11, enum case for Calendar.Component.minute(_:), v3);
  sub_1000E85F4();
  sub_1000E86E4();
  v42 = *(v28 + 8);
  v43 = v71;
  v42(v36, v71);
  (*(v6 + 8))(v11, v3);
  (*(v68 + 8))(v19, v69);
  if (sub_100005B30(v25, 1, v43) == 1)
  {
    sub_100008E48(v25, &qword_10012F048, &qword_1000EEF30);
    v44 = sub_1000E9F44();
    v45 = sub_1000EC194();
    if (sub_100009178(v45))
    {
      v46 = sub_1000091BC();
      sub_1000091E0(v46);
      sub_100009134(&_mh_execute_header, v47, v48, "Failed to compute error refresh policy, returning .atEnd");
      sub_100009118();
    }

    return sub_1000EBCF4();
  }

  else
  {
    v69 = v42;
    v50 = v65;
    (*(v28 + 32))(v65, v25, v43);
    v51 = v64;
    (*(v28 + 16))(v64, v50, v43);
    v52 = v66;

    v53 = sub_1000E9F44();
    v54 = sub_1000EC1B4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v55 = 136446466;
      sub_100009154(&qword_10012F050);
      v56 = sub_1000EC5B4();
      v58 = v57;
      v59 = v51;
      v60 = v69;
      v69(v59, v71);
      v61 = sub_1000E2E18(v56, v58, &v72);
      v43 = v71;

      *(v55 + 4) = v61;
      v62 = v60;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_1000E2E18(v63, v52, &v72);
      _os_log_impl(&_mh_execute_header, v53, v54, "Reloading .after(%{public}s) 5 minutes from now) for %s", v55, 0x16u);
      swift_arrayDestroy();
      sub_100009194();
      sub_100009118();
    }

    else
    {

      v62 = v69;
      v69(v51, v43);
    }

    sub_1000EBCE4();
    return v62(v50, v43);
  }
}

uint64_t sub_100007804(uint64_t a1)
{
  v4 = sub_100009228(a1);
  v5 = type metadata accessor for ForecastEntry(v4);
  v6 = v5;
  if (v3)
  {
    sub_100009008(v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v1, type metadata accessor for ForecastEntry);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1000028A0(v1, v7, 1, v6);
}

uint64_t sub_1000078F8(uint64_t a1)
{
  v4 = sub_100009228(a1);
  v6 = v5(v4);
  v7 = v6;
  if (v3)
  {
    (*(*(v6 - 8) + 16))(v1, v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_1000028A0(v1, v8, 1, v7);
}

uint64_t sub_100007998@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v61[0] = a2;
  v61[1] = a4;
  v5 = sub_1000E8604();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v61 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v61 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v61 - v18;
  v20 = __chkstk_darwin(v17);
  v71 = v61 - v21;
  __chkstk_darwin(v20);
  v23 = v61 - v22;
  if (qword_10012EB30 != -1)
  {
    swift_once();
  }

  v24 = sub_1000E9F64();
  v25 = sub_100008CB8(v24, qword_100145BF8);
  v26 = v6[2];
  v69 = a1;
  v64 = v26;
  v65 = v6 + 2;
  v26(v23, a1, v5);
  v67 = v25;
  v27 = sub_1000E9F44();
  v28 = sub_1000EC1B4();
  v29 = os_log_type_enabled(v27, v28);
  v62 = v16;
  v63 = v13;
  v68 = v10;
  v66 = v6;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v72 = v31;
    *v30 = 136315138;
    sub_100008FC4(&qword_10012F050);
    v32 = sub_1000EC5B4();
    v34 = v33;
    v35 = v6[1];
    v35(v23, v5);
    v36 = sub_1000E2E18(v32, v34, &v72);
    v13 = v63;

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "About to compute refresh policy for interpolated location. expirationDate=%s", v30, 0xCu);
    sub_100009068(v31);
    v16 = v62;
  }

  else
  {

    v35 = v6[1];
    v35(v23, v5);
  }

  result = sub_100008EA0(0x15uLL);
  v38 = v71;
  v39 = v69;
  if (((result - 5) * 60) >> 64 != (60 * (result - 5)) >> 63)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000E85B4();
  sub_1000E8584();
  v35(v19, v5);
  sub_100008FC4(&qword_10012F058);
  if (sub_1000EBE14())
  {
    v40 = v16;
    v41 = v38;
  }

  else
  {
    v40 = v16;
    v41 = v39;
  }

  v42 = v64;
  v64(v40, v41, v5);
  sub_1000E8584();
  sub_1000E85B4();
  sub_1000E8544();
  v44 = v43;
  v35(v19, v5);
  v45 = v68;
  v42(v68, v13, v5);
  v69 = v35;
  v46 = v45;

  v47 = sub_1000E9F44();
  v48 = sub_1000EC1B4();

  if (!os_log_type_enabled(v47, v48))
  {

    v60 = v46;
    v55 = v69;
    (v69)(v60, v5);
    goto LABEL_16;
  }

  v49 = v47;
  v50 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  *v50 = 136446722;
  sub_100008FC4(&qword_10012F050);
  v51 = sub_1000EC5B4();
  v53 = v52;
  v54 = v46;
  v55 = v69;
  (v69)(v54, v5);
  v56 = sub_1000E2E18(v51, v53, &v72);

  *(v50 + 4) = v56;
  *(v50 + 12) = 2080;
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v44 < 9.22337204e18)
  {
    v57 = sub_1000089E8(v44);
    v59 = sub_1000E2E18(v57, v58, &v72);

    *(v50 + 14) = v59;
    *(v50 + 22) = 2080;
    *(v50 + 24) = sub_1000E2E18(v61[0], v70, &v72);
    _os_log_impl(&_mh_execute_header, v49, v48, "Reloading .after(%{public}s) (%s from now) for %s", v50, 0x20u);
    swift_arrayDestroy();

    v16 = v62;
    v13 = v63;
    v38 = v71;
LABEL_16:
    sub_1000EBCE4();
    (v55)(v13, v5);
    (v55)(v16, v5);
    return (v55)(v38, v5);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100008060@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, const char *a4@<X3>, void (*a5)(uint64_t)@<X4>, const char *a6@<X5>, uint64_t a7@<X8>)
{
  v121 = a6;
  v134 = a5;
  v123 = a4;
  v144 = a3;
  v126 = a2;
  v122 = a1;
  v140 = a7;
  v8 = sub_1000E8734();
  v9 = sub_1000090D4(v8);
  v135 = v10;
  v136 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v132 = v14 - v13;
  sub_10000921C();
  v133 = sub_1000E8754();
  v15 = sub_1000090D4(v133);
  v131 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100006A10();
  v129 = v20 - v19;
  v21 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v21);
  v23 = *(v22 + 64);
  sub_100009204();
  __chkstk_darwin(v24);
  v130 = &v120 - v25;
  sub_10000921C();
  v145 = sub_1000E8604();
  v26 = sub_1000090D4(v145);
  v128 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_1000091AC();
  v124 = v30 - v31;
  v33 = __chkstk_darwin(v32);
  v127 = &v120 - v34;
  __chkstk_darwin(v33);
  v137 = &v120 - v35;
  sub_10000921C();
  v36 = sub_1000E97F4();
  v37 = sub_1000090D4(v36);
  v142 = v38;
  v143 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_100006A10();
  v43 = v42 - v41;
  v141 = sub_1000E96A4();
  v44 = sub_1000090D4(v141);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44);
  sub_100006A10();
  v51 = v50 - v49;
  v52 = sub_1000E94B4();
  v53 = sub_1000090D4(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  __chkstk_darwin(v53);
  sub_100006A10();
  v60 = v59 - v58;
  v61 = sub_1000E9644();
  v62 = sub_1000090D4(v61);
  v138 = v63;
  v139 = v62;
  v65 = *(v64 + 64);
  __chkstk_darwin(v62);
  sub_100006A10();
  v68 = v67 - v66;
  v70 = v7[5];
  v69 = v7[6];
  v125 = v7;
  sub_100008DA8(v7 + 2, v70);
  sub_1000E9804();
  sub_1000E94A4();
  (*(v55 + 8))(v60, v52);
  sub_1000E9694();
  v72 = *(v46 + 8);
  v71 = v46 + 8;
  v73 = v72(v51, v141);
  v144(v73);
  (*(v142 + 8))(v43, v143);
  sub_1000E9634();
  v75 = v74;
  if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v74 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v74 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000E9624();
  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v76 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v76 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v43 = v75;
  v71 = v76;
  if (v76 >= v75)
  {
    if (qword_10012EB30 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000090B4();
LABEL_9:
  v77 = sub_1000E9F64();
  v144 = sub_100008CB8(v77, qword_100145BF8);
  v78 = sub_1000E9F44();
  v79 = sub_1000EC1B4();
  if (sub_1000091EC(v79))
  {
    v80 = v68;
    v81 = swift_slowAlloc();
    v82 = sub_10000923C();
    v146[0] = v82;
    *v81 = 136446210;
    v83 = sub_100008F2C();
    v85 = sub_1000E2E18(v83, v84, v146);

    *(v81 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v78, v79, v123, v81, 0xCu);
    sub_100009068(v82);
    sub_100009194();
    v68 = v80;
    sub_100009194();
  }

  v86 = v145;
  v87 = v128;
  v88 = sub_100008DEC(v43, v71);
  v89 = v129;
  sub_1000E8714();
  v91 = v135;
  v90 = v136;
  v92 = v132;
  v93 = (*(v135 + 104))(v132, enum case for Calendar.Component.second(_:), v136);
  v94 = v127;
  v134(v93);
  v95 = v130;
  v143 = v88;
  sub_1000E86E4();
  v96 = v94;
  v97 = *(v87 + 8);
  (v97)(v96, v86);
  (*(v91 + 8))(v92, v90);
  (*(v131 + 8))(v89, v133);
  if (sub_100005B30(v95, 1, v86) == 1)
  {
    sub_100008E48(v95, &qword_10012F048, &qword_1000EEF30);
    v98 = v144;
    v99 = sub_1000E9F44();
    v100 = sub_1000EC194();
    if (sub_100009178(v100))
    {
      v101 = sub_1000091BC();
      sub_1000091E0(v101);
      _os_log_impl(&_mh_execute_header, v99, v98, v121, v97, 2u);
      sub_100009118();
    }

    sub_1000EBCF4();
    v103 = v138;
    v102 = v139;
  }

  else
  {
    v142 = v68;
    v104 = v137;
    (*(v87 + 32))(v137, v95, v86);
    v105 = v124;
    (*(v87 + 16))(v124, v104, v86);

    v106 = sub_1000E9F44();
    v107 = v105;
    v108 = sub_1000EC1B4();

    if (os_log_type_enabled(v106, v108))
    {
      v109 = sub_10000923C();
      v146[0] = swift_slowAlloc();
      *v109 = 136446722;
      sub_100009154(&qword_10012F050);
      v110 = sub_1000EC5B4();
      v112 = v111;
      v113 = v97;
      (v97)(v107, v145);
      v114 = sub_1000E2E18(v110, v112, v146);

      *(v109 + 4) = v114;
      *(v109 + 12) = 2080;
      v115 = sub_1000089E8(v143);
      v117 = sub_1000E2E18(v115, v116, v146);

      *(v109 + 14) = v117;
      *(v109 + 22) = 2080;
      *(v109 + 24) = sub_1000E2E18(v122, v126, v146);
      _os_log_impl(&_mh_execute_header, v106, v108, "Reloading .after(%{public}s) (%s from now) for %s", v109, 0x20u);
      swift_arrayDestroy();
      sub_100009194();
      v86 = v145;
      sub_100009194();
    }

    else
    {

      v113 = v97;
      (v97)(v107, v86);
    }

    v102 = v139;
    v118 = v137;
    v103 = v138;
    v68 = v142;
    sub_1000EBCE4();
    (v113)(v118, v86);
  }

  return (*(v103 + 8))(v68, v102);
}

uint64_t sub_1000089E8(uint64_t a1)
{
  if (a1 >= 60)
  {
    v3 = sub_1000EC5B4();
    v1._countAndFlagsBits = 0x736574756E696D20;
  }

  else
  {
    v3 = sub_1000EC5B4();
    v1._countAndFlagsBits = 0x73646E6F63657320;
  }

  v1._object = 0xE800000000000000;
  sub_1000EBF44(v1);
  return v3;
}

uint64_t sub_100008A90@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_10012EB30 != -1)
  {
    sub_1000090B4();
  }

  v8 = sub_1000E9F64();
  sub_100008CB8(v8, qword_100145BF8);
  v9 = sub_1000E9F44();
  v10 = sub_1000EC1B4();
  if (os_log_type_enabled(v9, v10))
  {
    v21 = a2;
    v11 = a4;
    v12 = swift_slowAlloc();
    v13 = sub_10000923C();
    v22 = v13;
    *v12 = 136446210;
    v14 = sub_1000EBEE4();
    v16 = sub_1000E2E18(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "About to determine refresh policy for error entry: %{public}s", v12, 0xCu);
    sub_100009068(v13);
    sub_100009194();
    a4 = v11;
    a2 = v21;
    sub_100009194();
  }

  if (a1)
  {
    return sub_100007298(a2, a3, a4);
  }

  v18 = sub_1000E9F44();
  v19 = sub_1000EC1B4();
  if (sub_1000091EC(v19))
  {
    v20 = sub_1000091BC();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Returning policy: .never for error: .locationPermissionDenied", v20, 2u);
    sub_100009194();
  }

  return sub_1000EBD04();
}

uint64_t LocalSearchRequestService.__deallocating_deinit()
{
  sub_100009068((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100008CB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100008D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_100008DA8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008DEC(uint64_t a1, uint64_t a2)
{
  if (a2 - a1 != -1)
  {
    return sub_100008EA0(a2 - a1 + 1) + a1;
  }

  swift_stdlib_random();
  return 0;
}

uint64_t sub_100008E48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A10(a2, a3);
  sub_1000069E4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_100008EA0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008F2C()
{
  sub_1000EC434();
  v1._countAndFlagsBits = 3026478;
  v1._object = 0xE300000000000000;
  sub_1000EBF44(v1);
  sub_1000EC434();
  return 0;
}

uint64_t sub_100008FC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000E8604();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100009068(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000090B4()
{

  return swift_once();
}

uint64_t sub_100009118()
{
}

void sub_100009134(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100009154(unint64_t *a1)
{

  return sub_100008FC4(a1);
}

BOOL sub_100009178(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100009194()
{
}

uint64_t sub_1000091BC()
{

  return swift_slowAlloc();
}

BOOL sub_1000091EC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000923C()
{

  return swift_slowAlloc();
}

uint64_t sub_100009268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EB3C4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100005B30(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100009328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000EB3C4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000028A0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for EventViewModelFactory()
{
  result = qword_10012F0B8;
  if (!qword_10012F0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000941C()
{
  result = sub_1000EB3C4();
  if (v1 <= 0x3F)
  {
    result = sub_1000EAE64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1000094A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v378 = a2;
  v368 = a3;
  v379 = a1;
  v357 = sub_1000E8B64();
  v3 = sub_1000090D4(v357);
  v344 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  sub_10000D4C4(v8 - v7);
  v9 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
  v10 = sub_1000090D4(v9);
  v372 = v11;
  v373 = v10;
  v13 = *(v12 + 64);
  sub_100009204();
  __chkstk_darwin(v14);
  sub_10000D58C();
  v371 = v15;
  v16 = sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
  v17 = sub_100009210(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v20);
  sub_10000D56C();
  v370 = v21;
  v22 = sub_100002A10(&qword_10012F100, &qword_1000EEF08);
  sub_100009210(v22);
  v24 = *(v23 + 64);
  sub_100009204();
  __chkstk_darwin(v25);
  sub_10000D58C();
  v362 = v26;
  v363 = sub_1000E8EC4();
  v27 = sub_1000090D4(v363);
  v358 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_100006A10();
  sub_10000D4C4(v32 - v31);
  v33 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  v34 = sub_100009210(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v37);
  sub_10000D56C();
  v364 = v38;
  v376 = sub_100002A10(&qword_10012F110, &qword_1000EEF18);
  sub_1000090D4(v376);
  v365[0] = v39;
  v41 = *(v40 + 64);
  sub_100009204();
  __chkstk_darwin(v42);
  sub_10000D58C();
  v374 = v43;
  v342 = sub_1000E8C04();
  v44 = sub_1000090D4(v342);
  v341 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v48);
  sub_10000D56C();
  sub_10000D4A0(v49);
  v337 = sub_1000E8C14();
  v50 = sub_1000090D4(v337);
  v336 = v51;
  v53 = *(v52 + 64);
  __chkstk_darwin(v50);
  sub_100006A10();
  v56 = sub_10000D4A0(v55 - v54);
  v359 = type metadata accessor for EventViewModel(v56);
  v57 = sub_1000090D4(v359);
  v360 = v58;
  v60 = *(v59 + 64);
  __chkstk_darwin(v57);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v61);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v62);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v63);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v64);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v65);
  sub_10000D56C();
  sub_10000D4C4(v66);
  v67 = sub_100002A10(&qword_10012F118, &qword_1000EEF20);
  sub_100009210(v67);
  v69 = *(v68 + 64);
  sub_100009204();
  __chkstk_darwin(v70);
  sub_10000D58C();
  sub_10000D4A0(v71);
  v352 = sub_1000E8AD4();
  v72 = sub_1000090D4(v352);
  v350 = v73;
  v75 = *(v74 + 64);
  __chkstk_darwin(v72);
  sub_100006A10();
  sub_10000D4A0(v77 - v76);
  v347 = sub_1000E8AA4();
  v78 = sub_1000090D4(v347);
  v346 = v79;
  v81 = *(v80 + 64);
  __chkstk_darwin(v78);
  sub_100006A10();
  sub_10000D4C4(v83 - v82);
  v84 = sub_100002A10(&qword_10012F120, &qword_1000EEF28);
  v85 = sub_100009210(v84);
  v87 = *(v86 + 64);
  __chkstk_darwin(v85);
  sub_10000D45C();
  v375 = v88;
  __chkstk_darwin(v89);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v90);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v91);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v92);
  v94 = (&v329 - v93);
  v95 = sub_1000E8734();
  v96 = sub_1000090D4(v95);
  v98 = v97;
  v100 = *(v99 + 64);
  __chkstk_darwin(v96);
  sub_100006A10();
  v103 = v102 - v101;
  v104 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v104);
  v106 = *(v105 + 64);
  sub_100009204();
  __chkstk_darwin(v107);
  v109 = &v329 - v108;
  v110 = sub_1000E8604();
  v111 = sub_1000090D4(v110);
  v113 = v112;
  v115 = *(v114 + 64);
  v116 = __chkstk_darwin(v111);
  v118 = &v329 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v116);
  v120 = &v329 - v119;
  v369 = sub_1000E8754();
  v121 = sub_1000090D4(v369);
  v367 = v122;
  v124 = *(v123 + 64);
  __chkstk_darwin(v121);
  sub_100006A10();
  v127 = v126 - v125;
  sub_1000E86B4();
  (*(v98 + 104))(v103, enum case for Calendar.Component.minute(_:), v95);
  sub_1000E85B4();
  v365[1] = v127;
  sub_1000E86E4();
  v128 = *(v113 + 8);
  v368 = v113 + 8;
  v366 = v128;
  v128(v118, v110);
  (*(v98 + 8))(v103, v95);
  sub_10000D4FC(v109, 1, v110);
  if (v189)
  {
    sub_1000E85B4();
    sub_10000D4FC(v109, 1, v110);
    v132 = v120;
    if (!v189)
    {
      sub_10000D3A8(v109, &qword_10012F048, &qword_1000EEF30);
    }
  }

  else
  {
    v129 = *(v113 + 32);
    v130 = sub_10000D598();
    v131(v130);
    v132 = v120;
  }

  v133 = *(v377 + *(type metadata accessor for EventViewModelFactory() + 20));
  sub_1000E8C94();
  v377 = v133;
  sub_1000EAE04();

  v134 = sub_1000EAD64();
  sub_10000D480(v94);
  v135 = v375;
  v136 = v376;
  if (v189)
  {
    sub_10000D3A8(v94, &qword_10012F120, &qword_1000EEF28);
LABEL_14:
    v149 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  sub_1000069F4();
  v138 = v137;
  v140 = (*(v139 + 88))(v94, v134);
  if (v140 != enum case for WeatherEventDescription.severeWeather(_:))
  {
    (*(v138 + 8))(v94, v134);
    goto LABEL_14;
  }

  v332 = v110;
  (*(v138 + 96))(v94, v134);
  v142 = *v94;
  v141 = v94[1];
  if (sub_1000E8C94())
  {
    v330 = v142;
    v331 = v141;
    v143 = v346;
    v144 = v345;
    v145 = v347;
    (*(v346 + 104))(v345, enum case for WeatherAlert.Prominence.high(_:), v347);
    v146 = sub_1000EC024();

    (*(v143 + 8))(v144, v145);
    v147 = v348;
    sub_1000078B0(v146);

    v148 = v352;
    sub_10000D4FC(v147, 1, v352);
    if (!v189)
    {
      (*(v350 + 32))(v349, v147, v148);
      v150 = v335;
      sub_1000E8AC4();
      LODWORD(v348) = sub_10000AD34(v150);
      (*(v336 + 8))(v150, v337);
      v151 = v359;
      v152 = v359[6];
      v153 = v340;
      sub_1000E8AB4();
      v154 = v351;
      sub_1000E8BF4();
      v347 = *(v341 + 8);
      v155 = v153;
      v156 = v342;
      v347(v155, v342);
      sub_10000D554();
      v157 = v332;
      sub_1000028A0(v158, v159, v160, v332);
      v161 = v151[7];
      sub_10000D52C();
      sub_1000028A0(v162, v163, v164, v157);
      v165 = v338;
      sub_1000E8AB4();
      v166 = &v154[v151[8]];
      sub_1000E8BE4();
      v347(v165, v156);
      v167 = v151[13];
      sub_1000E8F24();
      sub_10000D52C();
      sub_1000028A0(v168, v169, v170, v171);
      *v154 = 2;
      v154[1] = v348;
      v172 = &v154[v151[9]];
      v173 = v330;
      v174 = v331;
      *v172 = v330;
      v172[1] = v174;
      v175 = &v154[v151[10]];
      *v175 = v173;
      v175[1] = v174;
      v176 = &v154[v151[11]];
      *v176 = v173;
      v176[1] = v174;
      *&v154[v151[12]] = 0;
      v177 = v339;
      sub_10000ACD0(v154, v339);
      swift_bridgeObjectRetain_n();
      sub_100030DC4();
      v149 = v178;
      v179 = v178[3];
      if (v178[2] >= v179 >> 1)
      {
        sub_10000D578(v179);
        sub_100030DC4();
        v149 = v325;
      }

      v135 = v375;
      v136 = v376;
      sub_10000B874(v351);
      (*(v350 + 8))(v349, v352);
      sub_10000D434();
      sub_10000B8D0(v177, v180);
      goto LABEL_20;
    }

    sub_10000D3A8(v147, &qword_10012F118, &qword_1000EEF20);
  }

  else
  {
  }

  v149 = &_swiftEmptyArrayStorage;
LABEL_20:
  v110 = v332;
LABEL_21:
  v181 = v364;
  sub_1000E8CB4();
  sub_10000D4FC(v181, 1, v136);
  if (v189)
  {
    v182 = &qword_10012F108;
    v183 = &qword_1000EEF10;
    v184 = v181;
LABEL_27:
    sub_10000D3A8(v184, v182, v183);
    goto LABEL_28;
  }

  (*(v365[0] + 32))(v374, v181, v136);
  v185 = sub_1000E91B4();
  __chkstk_darwin(v185);
  *(&v329 - 2) = v132;
  v380 = sub_10000B090(sub_10000B934, (&v329 - 4), v186);

  sub_10000B954(&v380);

  v187 = v362;
  sub_1000078C8(v380);

  v188 = v363;
  sub_10000D4FC(v187, 1, v363);
  if (v189)
  {
    v190 = sub_10000D470();
    v191(v190, v136);
    v182 = &qword_10012F100;
    v183 = &qword_1000EEF08;
    v184 = v187;
    goto LABEL_27;
  }

  v364 = v149;
  v216 = v358;
  v217 = v361;
  (*(v358 + 32))(v361, v187, v188);
  v352 = v134;
  sub_10000D4DC();
  v218 = v132;
  v219 = v353;
  v220 = sub_1000EAE14();
  v221 = v219;
  sub_10000D538(v220, &qword_10012F108, &qword_1000EEF10);
  sub_10000D480(v219);
  if (v222)
  {
    (*(v216 + 8))(v217, v188);
    v223 = sub_10000D470();
    v224(v223, v136);
    sub_10000D3A8(v219, &qword_10012F120, &qword_1000EEF28);
    v149 = v364;
    v132 = v218;
    goto LABEL_28;
  }

  v362 = v218;
  v332 = v110;
  sub_1000069F4();
  v255 = v254;
  v257 = *(v256 + 88);
  v258 = sub_10000D560();
  v259 = v257(v258);
  if (v259 != enum case for WeatherEventDescription.nextHourPrecipitation(_:))
  {
    (*(v216 + 8))(v361, v363);
LABEL_51:
    v270 = sub_10000D470();
    v271(v270, v376);
    (*(v255 + 8))(v221, v134);
    goto LABEL_52;
  }

  v260 = v259;
  v261 = *(v255 + 96);
  v262 = sub_10000D560();
  v261(v262);
  v263 = v221[1];
  v351 = *v221;
  sub_10000D4DC();
  sub_10000D514(v365);
  v264 = sub_1000EAE24();
  sub_10000D538(v264, &qword_10012F108, &qword_1000EEF10);
  sub_10000D480(v136);
  if (v189)
  {

    v265 = sub_10000D418();
    v266(v265);
    v267 = sub_10000D470();
    v268(v267, v376);
    v269 = v136;
LABEL_49:
    sub_10000D3A8(v269, &qword_10012F120, &qword_1000EEF28);
LABEL_52:
    v110 = v332;
    v132 = v362;
    v135 = v375;
    v149 = v364;
    goto LABEL_28;
  }

  v353 = v263;
  v272 = (v257)(v136, v134);
  if (v272 != v260)
  {

    v279 = sub_10000D418();
    v280(v279);
    v281 = sub_10000D470();
    v282(v281, v376);
    (*(v255 + 8))(v136, v134);
    goto LABEL_52;
  }

  (v261)(v136, v134);
  v273 = v136[1];
  v350 = *v136;
  sub_10000D4DC();
  sub_10000D514(&v364);
  v274 = sub_1000EAE34();
  v221 = v136;
  sub_10000D538(v274, &qword_10012F108, &qword_1000EEF10);
  sub_10000D480(v136);
  if (v189)
  {

    v275 = sub_10000D418();
    v276(v275);
    v277 = sub_10000D470();
    v278(v277, v376);
    v269 = v136;
    goto LABEL_49;
  }

  v283 = sub_10000D560();
  v284 = v257(v283);
  v285 = v353;
  if (v284 != v260)
  {

    v320 = sub_10000D418();
    v321(v320);
    goto LABEL_51;
  }

  v286 = sub_10000D560();
  v261(v286);
  v287 = *v221;
  v288 = v221[1];
  v289 = v359;
  v290 = v359[6];
  v291 = v333;
  sub_1000E8EA4();
  sub_10000D554();
  v292 = v332;
  sub_1000028A0(v293, v294, v295, v332);
  v296 = v289[7];
  sub_1000E85F4();
  sub_10000D554();
  sub_1000028A0(v297, v298, v299, v292);
  v300 = v340;
  sub_1000E9194();
  v301 = v291 + v289[8];
  sub_1000E8BE4();
  (*(v341 + 8))(v300, v342);
  v302 = v289[13];
  sub_1000E8EB4();
  sub_1000E8F24();
  sub_10000D554();
  sub_1000028A0(v303, v304, v305, v306);
  *v291 = 1286;
  v307 = (v291 + v289[9]);
  *v307 = v287;
  v307[1] = v288;
  v308 = (v291 + v289[10]);
  *v308 = v350;
  v308[1] = v273;
  v309 = (v291 + v289[11]);
  *v309 = v351;
  v309[1] = v285;
  *(v291 + v289[12]) = 0;
  sub_10000ACD0(v291, v334);
  v310 = v364;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132 = v362;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v326 = v310[2];
    sub_100030DC4();
    v310 = v327;
  }

  v313 = v310[2];
  v312 = v310[3];
  v364 = v310;
  v110 = v332;
  v314 = v358;
  if (v313 >= v312 >> 1)
  {
    sub_100030DC4();
    v364 = v328;
  }

  v135 = v375;
  v315 = v376;
  v316 = v361;
  sub_10000B874(v333);
  (*(v314 + 8))(v316, v363);
  v317 = sub_10000D470();
  v318(v317, v315);
  v149 = v364;
  sub_10000D434();
  sub_10000B8D0(v334, v319);
LABEL_28:
  v192 = v370;
  sub_1000E8CC4();
  v193 = v371;
  sub_1000E8C84();
  sub_1000EAE44();
  (*(v372 + 8))(v193, v373);
  sub_10000D3A8(v192, &qword_10012F0F8, &qword_1000EEF00);
  sub_10000D480(v135);
  if (v189)
  {
    v194 = sub_10000D4B0();
    v195(v194);
    sub_10000D3A8(v135, &qword_10012F120, &qword_1000EEF28);
  }

  else
  {
    sub_1000069F4();
    v197 = v196;
    v199 = *(v198 + 88);
    v200 = sub_10000D598();
    v202 = v201(v200);
    if (v202 == enum case for WeatherEventDescription.changeInCondition(_:))
    {
      v364 = v149;
      v362 = v132;
      v203 = v110;
      v204 = *(v197 + 96);
      v205 = sub_10000D598();
      v206(v205);
      v208 = *v135;
      v207 = v135[1];
      v209 = v356;
      sub_1000E8CC4();
      v210 = v357;
      sub_10000D4FC(v209, 1, v357);
      if (v189)
      {
        sub_10000D3A8(v209, &qword_10012F0F8, &qword_1000EEF00);
        v228 = 3;
      }

      else
      {
        v225 = v344;
        v226 = v343;
        (*(v344 + 32))(v343, v209, v210);
        v227 = sub_10000B354();
        (*(v225 + 8))(v226, v210);
        v228 = v227 + 3;
      }

      v229 = v354;
      v230 = v359;
      v231 = v359[6];
      sub_10000D52C();
      v110 = v203;
      sub_1000028A0(v232, v233, v234, v203);
      v235 = v230[7];
      sub_10000D52C();
      sub_1000028A0(v236, v237, v238, v203);
      v239 = &v229[v230[8]];
      sub_1000E85F4();
      v240 = v230[13];
      sub_1000E8F24();
      sub_10000D52C();
      sub_1000028A0(v241, v242, v243, v244);
      *v229 = v228;
      v229[1] = 5;
      v245 = &v229[v230[9]];
      *v245 = v208;
      *(v245 + 1) = v207;
      v246 = &v229[v230[10]];
      *v246 = v208;
      *(v246 + 1) = v207;
      v247 = &v229[v230[11]];
      *v247 = v208;
      *(v247 + 1) = v207;
      *&v229[v230[12]] = 0;
      v248 = v355;
      sub_10000ACD0(v229, v355);
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v322 = v364[2];
        sub_100030DC4();
        v364 = v323;
      }

      v132 = v362;
      v249 = v364[3];
      if (v364[2] >= v249 >> 1)
      {
        sub_10000D578(v249);
        sub_100030DC4();
        v364 = v324;
      }

      sub_10000B874(v229);
      v250 = sub_10000D4B0();
      v251(v250);
      v149 = v364;
      sub_10000D434();
      sub_10000B8D0(v248, v252);
    }

    else
    {
      v211 = sub_10000D4B0();
      v212(v211);
      v213 = *(v197 + 8);
      v214 = sub_10000D598();
      v215(v214);
    }
  }

  v366(v132, v110);
  return v149;
}

uint64_t sub_10000ACD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AD34(uint64_t a1)
{
  v2 = sub_1000E8C14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for WeatherSeverity.minor(_:))
  {
    return 0;
  }

  if (v7 == enum case for WeatherSeverity.moderate(_:))
  {
    return 1;
  }

  if (v7 == enum case for WeatherSeverity.severe(_:))
  {
    return 2;
  }

  if (v7 == enum case for WeatherSeverity.extreme(_:))
  {
    return 3;
  }

  if (v7 != enum case for WeatherSeverity.unknown(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  return 4;
}

BOOL sub_10000AEB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v14 - v5;
  v7 = sub_1000E8604();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8E94();
  if (sub_100005B30(v6, 1, v7) == 1)
  {
    (*(v8 + 16))(v11, a2, v7);
    if (sub_100005B30(v6, 1, v7) != 1)
    {
      sub_10000D3A8(v6, &qword_10012F048, &qword_1000EEF30);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_10000D330();
  v12 = sub_1000EBE04();
  (*(v8 + 8))(v11, v7);
  return (v12 & 1) == 0;
}

uint64_t sub_10000B090(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v34 = sub_1000E8EC4();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v34);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = 0;
  v33 = *(a3 + 16);
  v30 = v5 + 16;
  v13 = (v5 + 8);
  v27 = (v5 + 32);
  v29 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v33 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v34);
    v17 = v31(v11);
    if (v3)
    {
      (*v13)(v11, v34);
      v24 = v29;

      return v24;
    }

    if (v17)
    {
      v26 = *v27;
      v26(v28, v11, v34);
      v18 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        v21 = v18[2];
        sub_1000AC888();
        v20 = v35;
      }

      a3 = v16;
      v22 = v20[2];
      v23 = (v22 + 1);
      if (v22 >= v20[3] >> 1)
      {
        v29 = (v22 + 1);
        v25 = v22;
        sub_1000AC888();
        v23 = v29;
        v22 = v25;
        a3 = v16;
        v20 = v35;
      }

      ++v12;
      v20[2] = v23;
      v29 = v20;
      result = (v26)(v20 + v14 + v22 * v15, v28, v34);
    }

    else
    {
      result = (*v13)(v11, v34);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B354()
{
  v0 = sub_100002A10(&qword_10012F130, &qword_1000EEF40);
  sub_100009210(v0);
  v2 = *(v1 + 64);
  sub_100009204();
  __chkstk_darwin(v3);
  v5 = &v30[-v4];
  v6 = sub_1000E8B44();
  v7 = sub_1000090D4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100006A10();
  v14 = v13 - v12;
  v15 = sub_1000E8754();
  v16 = sub_1000090D4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100006A10();
  v23 = v22 - v21;
  sub_1000E86B4();
  v24 = sub_1000E8B54();
  v31 = v23;
  sub_10000B6B8(sub_10000D388, v24, v5);

  sub_10000D4FC(v5, 1, v6);
  if (v25)
  {
    sub_10000D3A8(v5, &qword_10012F130, &qword_1000EEF40);
    v26 = 0;
  }

  else
  {
    (*(v9 + 32))(v14, v5, v6);
    if (sub_1000E8B14())
    {
      sub_1000E8B04();
      v28 = sub_1000E8B34();
      (*(v9 + 8))(v14, v6);
      if (v28)
      {
        v26 = 0;
      }

      else
      {
        v26 = 2;
      }
    }

    else
    {
      (*(v9 + 8))(v14, v6);
      v26 = 1;
    }
  }

  (*(v18 + 8))(v23, v15);
  return v26;
}

uint64_t sub_10000B5CC()
{
  v0 = sub_1000E8604();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8B24();
  v5 = sub_1000E86D4();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_10000B6B8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = sub_1000E8B44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return sub_1000028A0(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return sub_1000028A0(v15, v14, 1, v5);
}

uint64_t sub_10000B874(uint64_t a1)
{
  v2 = type metadata accessor for EventViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10000B954(size_t *a1)
{
  v2 = *(sub_1000E8EC4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10000D318(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10000B9FC(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10000B9FC(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000EC5A4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000E8EC4();
        v6 = sub_1000EC014();
        v6[2] = v5;
      }

      v7 = *(sub_1000E8EC4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000BEC4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000BB2C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000BB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_1000E8604();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v43 - v12;
  v13 = sub_1000E8EC4();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v59 = &v43 - v18;
  result = __chkstk_darwin(v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = a3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v13);
        v32 = v13;
        v33 = v59;
        v31(v59, v26, v32);
        sub_1000E8EA4();
        v34 = v61;
        sub_1000E8EA4();
        v64 = sub_1000E8574();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v13 = v32;
        (*v54)(v39, v32);
        result = v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return result;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        swift_arrayInitWithTakeFrontToBack();
        result = v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v49 + 1;
      v26 = &v48[v44];
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10000BEC4(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v136 = a1;
  v160 = sub_1000E8604();
  v8 = *(v160 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v160);
  v159 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v133 - v12;
  v13 = sub_1000E8EC4();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v139 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v150 = &v133 - v19;
  v20 = __chkstk_darwin(v18);
  v157 = &v133 - v21;
  __chkstk_darwin(v20);
  v161 = &v133 - v22;
  v145 = a3;
  v23 = a3[1];
  v140 = v14;
  if (v23 < 1)
  {
    v25 = &_swiftEmptyArrayStorage;
LABEL_101:
    v162 = *v136;
    if (!v162)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v126 = (v25 + 16);
      v127 = *(v25 + 16);
      while (v127 >= 2)
      {
        if (!*v145)
        {
          goto LABEL_139;
        }

        v128 = v25;
        v129 = (v25 + 16 * v127);
        v130 = *v129;
        v131 = &v126[2 * v127];
        v25 = v131[1];
        sub_10000CAB8(*v145 + v140[9] * *v129, *v145 + v140[9] * *v131, *v145 + v140[9] * v25, v162);
        if (v5)
        {
          break;
        }

        if (v25 < v130)
        {
          goto LABEL_127;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_128;
        }

        *v129 = v130;
        v129[1] = v25;
        v132 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_129;
        }

        v127 = *v126 - 1;
        memmove(v131, v131 + 2, 16 * v132);
        *v126 = v127;
        v25 = v128;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v25 = sub_10000D124(v25);
    goto LABEL_103;
  }

  v134 = a4;
  v24 = 0;
  v154 = (v8 + 8);
  v155 = v14 + 2;
  v152 = v14 + 4;
  v153 = (v14 + 1);
  v25 = &_swiftEmptyArrayStorage;
  v156 = v13;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v135 = v25;
      v28 = v24;
      v137 = v24;
      v146 = v5;
      v147 = v24 + 1;
      v29 = *v145;
      v162 = v29;
      v30 = v14;
      v31 = v14[9];
      v148 = v23;
      v149 = v31;
      v32 = v29 + v31 * v27;
      v33 = v13;
      v34 = v30[2];
      v34(v161, v32, v13);
      v35 = v157;
      v143 = v34;
      v34(v157, v29 + v31 * v28, v33);
      v5 = v158;
      v25 = v161;
      sub_1000E8EA4();
      v36 = v159;
      sub_1000E8EA4();
      LODWORD(v144) = sub_1000E8574();
      v37 = *v154;
      v38 = v160;
      (*v154)(v36, v160);
      v142 = v37;
      (v37)(v5, v38);
      v39 = v140[1];
      v39(v35, v33);
      v141 = v39;
      v39(v25, v33);
      v40 = v148;
      v41 = v137 + 2;
      v42 = v162 + v149 * (v137 + 2);
      while (1)
      {
        v43 = v41;
        if (++v147 >= v40)
        {
          break;
        }

        v5 = v161;
        v44 = v156;
        v45 = v143;
        v162 = v41;
        (v143)(v161, v42, v156);
        v25 = v157;
        v45(v157, v32, v44);
        v46 = v158;
        sub_1000E8EA4();
        v47 = v159;
        sub_1000E8EA4();
        LOBYTE(v151) = sub_1000E8574() & 1;
        LODWORD(v151) = v151;
        v48 = v47;
        v49 = v160;
        v50 = v142;
        (v142)(v48, v160);
        v50(v46, v49);
        v51 = v141;
        v141(v25, v44);
        v51(v5, v44);
        v43 = v162;
        v40 = v148;
        v42 += v149;
        v32 += v149;
        v41 = v162 + 1;
        if ((v144 & 1) != v151)
        {
          goto LABEL_9;
        }
      }

      v147 = v40;
LABEL_9:
      if (v144)
      {
        v27 = v147;
        v26 = v137;
        v13 = v156;
        if (v147 < v137)
        {
          goto LABEL_133;
        }

        if (v137 >= v147)
        {
          v5 = v146;
          v14 = v140;
          v25 = v135;
          goto LABEL_32;
        }

        if (v40 >= v43)
        {
          v52 = v43;
        }

        else
        {
          v52 = v40;
        }

        v53 = v149 * (v52 - 1);
        v54 = v149 * v52;
        v55 = v137;
        v56 = v137 * v149;
        v5 = v146;
        v14 = v140;
        do
        {
          if (v55 != --v27)
          {
            v57 = v5;
            v58 = *v145;
            if (!*v145)
            {
              goto LABEL_140;
            }

            v162 = *v152;
            (v162)(v139, v58 + v56, v13);
            v59 = v56 < v53 || v58 + v56 >= v58 + v54;
            if (v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v162)(v58 + v53, v139, v13);
            v5 = v57;
            v14 = v140;
          }

          ++v55;
          v53 -= v149;
          v54 -= v149;
          v56 += v149;
        }

        while (v55 < v27);
        v25 = v135;
      }

      else
      {
        v5 = v146;
        v14 = v140;
        v25 = v135;
        v13 = v156;
      }

      v27 = v147;
      v26 = v137;
    }

LABEL_32:
    v60 = v145[1];
    if (v27 < v60)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_132;
      }

      if (v27 - v26 < v134)
      {
        break;
      }
    }

LABEL_48:
    if (v27 < v26)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = *(v25 + 16);
      sub_100030CF0();
      v25 = v124;
    }

    v80 = *(v25 + 16);
    v81 = v80 + 1;
    if (v80 >= *(v25 + 24) >> 1)
    {
      sub_100030CF0();
      v25 = v125;
    }

    *(v25 + 16) = v81;
    v82 = (v25 + 32);
    v83 = (v25 + 32 + 16 * v80);
    *v83 = v26;
    v83[1] = v27;
    v162 = *v136;
    if (!v162)
    {
      goto LABEL_141;
    }

    v147 = v27;
    if (v80)
    {
      v151 = (v25 + 32);
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = (v25 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v25 + 32);
          v88 = *(v25 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v145)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_10000CAB8(*v145 + v14[9] * *v116, *v145 + v14[9] * *v119, *v145 + v14[9] * v120, v162);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v146 = 0;
        v5 = v14;
        v121 = v25;
        v25 = *(v25 + 16);
        if (v118 > v25)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v25)
        {
          goto LABEL_115;
        }

        v81 = v25 - 1;
        memmove(v119, v119 + 16, 16 * (v25 - 1 - v118));
        *(v121 + 16) = v25 - 1;
        v122 = v25 > 2;
        v25 = v121;
        v14 = v5;
        v5 = v146;
        v82 = v151;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v23 = v145[1];
    v24 = v147;
    if (v147 >= v23)
    {
      goto LABEL_101;
    }
  }

  v61 = (v26 + v134);
  if (__OFADD__(v26, v134))
  {
    goto LABEL_134;
  }

  if (v61 >= v60)
  {
    v61 = v145[1];
  }

  if (v61 < v26)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v27 == v61)
  {
    goto LABEL_48;
  }

  v135 = v25;
  v146 = v5;
  v62 = *v145;
  v63 = v14[9];
  v151 = v14[2];
  v64 = v62 + v63 * (v27 - 1);
  v148 = -v63;
  v137 = v26;
  v65 = (v26 - v27);
  v149 = v62;
  v138 = v63;
  v66 = (v62 + v27 * v63);
  v141 = v61;
LABEL_41:
  v147 = v27;
  v142 = v66;
  v143 = v65;
  v144 = v64;
  v67 = v64;
  while (1)
  {
    v68 = v161;
    v69 = v151;
    (v151)(v161, v66, v13);
    v70 = v157;
    (v69)(v157, v67, v13);
    v71 = v158;
    sub_1000E8EA4();
    v72 = v159;
    sub_1000E8EA4();
    LODWORD(v162) = sub_1000E8574();
    v73 = *v154;
    v74 = v72;
    v75 = v160;
    (*v154)(v74, v160);
    v76 = v71;
    v13 = v156;
    v73(v76, v75);
    v77 = *v153;
    (*v153)(v70, v13);
    v77(v68, v13);
    if ((v162 & 1) == 0)
    {
LABEL_46:
      v27 = v147 + 1;
      v64 = v144 + v138;
      v65 = v143 - 1;
      v66 = &v142[v138];
      if ((v147 + 1) == v141)
      {
        v27 = v141;
        v5 = v146;
        v14 = v140;
        v25 = v135;
        v26 = v137;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v149)
    {
      break;
    }

    v78 = *v152;
    v79 = v150;
    (*v152)(v150, v66, v13);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v13);
    v67 += v148;
    v66 += v148;
    v59 = __CFADD__(v65++, 1);
    if (v59)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_10000CAB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v81 = sub_1000E8604();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v69 - v11;
  v85 = sub_1000E8EC4();
  v12 = *(*(v85 - 8) + 64);
  v13 = __chkstk_darwin(v85);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v83 = &v69 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v89 = a1;
  v88 = v86;
  v76 = (v7 + 8);
  v77 = (v16 + 16);
  v75 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v44 = v86;
    sub_1000316B4(a2, v21 / v19, v86);
    v45 = v44 + v24 * v19;
    v46 = -v19;
    v47 = v45;
    v84 = a1;
    v71 = v46;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v69 = v47;
    v50 = v47;
    v72 = a2 + v46;
    v73 = a2;
    while (1)
    {
      if (v45 <= v86)
      {
        v89 = a2;
        v87 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v70 = v50;
      v82 = v49 + v46;
      v51 = v45 + v46;
      v52 = v45;
      v53 = *v77;
      v54 = v48;
      v55 = v85;
      v56 = v49;
      (*v77)(v83, v45 + v46, v85);
      v57 = v78;
      v53(v78, v54, v55);
      v58 = v79;
      sub_1000E8EA4();
      v59 = v80;
      sub_1000E8EA4();
      LODWORD(v74) = sub_1000E8574();
      v60 = *v76;
      v61 = v59;
      v62 = v81;
      (*v76)(v61, v81);
      v60(v58, v62);
      v63 = *v75;
      (*v75)(v57, v55);
      v63(v83, v55);
      if (v74)
      {
        v45 = v52;
        a3 = v82;
        if (v56 < v73 || v82 >= v73)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v70;
          v46 = v71;
          a1 = v84;
        }

        else
        {
          v67 = v70;
          v46 = v71;
          v47 = v70;
          v20 = v56 == v73;
          v68 = v72;
          a2 = v72;
          a1 = v84;
          if (!v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v68;
            v47 = v67;
          }
        }

        goto LABEL_36;
      }

      v64 = v82;
      if (v56 < v52 || v82 >= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v64;
        v45 = v51;
        v50 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
      }

      else
      {
        v50 = v51;
        v20 = v52 == v56;
        v49 = v82;
        v45 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v45 = v51;
          v50 = v51;
        }
      }
    }

    v89 = a2;
    v87 = v69;
  }

  else
  {
    v25 = v86;
    sub_1000316B4(a1, (a2 - a1) / v19, v86);
    v73 = v19;
    v74 = v25 + v23 * v19;
    v87 = v74;
    v82 = a3;
    while (v86 < v74 && a2 < a3)
    {
      v84 = a1;
      v27 = *v77;
      v28 = v83;
      v29 = v85;
      (*v77)(v83, a2, v85);
      v30 = v78;
      v27(v78, v86, v29);
      v31 = v79;
      sub_1000E8EA4();
      v32 = v80;
      sub_1000E8EA4();
      v33 = sub_1000E8574();
      v34 = a2;
      v35 = *v76;
      v36 = v32;
      v37 = v81;
      (*v76)(v36, v81);
      v35(v31, v37);
      v38 = *v75;
      (*v75)(v30, v29);
      v38(v28, v29);
      if (v33)
      {
        v39 = v73;
        a2 = v34 + v73;
        v40 = v84;
        if (v84 < v34 || v84 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v39 = v73;
        v42 = v86 + v73;
        v40 = v84;
        if (v84 < v86 || v84 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
          a2 = v34;
        }

        else
        {
          a3 = v82;
          a2 = v34;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v42;
        v86 = v42;
      }

      a1 = v40 + v39;
      v89 = a1;
    }
  }

LABEL_58:
  sub_10000D138(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_10000D138(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000E8EC4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10000D218(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A10(&qword_10012F128, &qword_1000EEF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_10000D330()
{
  result = qword_10012F058;
  if (!qword_10012F058)
  {
    sub_1000E8604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F058);
  }

  return result;
}

uint64_t sub_10000D3A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A10(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D418()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 248);
  return result;
}

uint64_t sub_10000D4B0()
{
  v1 = *(*(v0 - 208) + 8);
  result = *(v0 - 224);
  v3 = *(v0 - 192);
  return result;
}

uint64_t sub_10000D4DC()
{
  v2 = *(v0 - 288);
  v3 = *(v0 - 112);

  return sub_1000E8CB4();
}

uint64_t sub_10000D514@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1;
  v5 = *(v2 - 256);
  v6 = *(v2 - 128);
  return result;
}

uint64_t sub_10000D538(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = *(v4 - 344);

  return sub_10000D3A8(v6, a2, a3);
}

uint64_t sub_10000D5A4@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_1000E91E4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100006A10();
  v57 = v5 - v4;
  v6 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for AggregateWeatherViewModel(0);
  v14 = sub_1000069E4(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100006A10();
  v19 = v18 - v17;
  v20 = type metadata accessor for WeatherDataViewModel();
  v21 = sub_1000069E4(v20);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v57 - v27;
  v29 = type metadata accessor for ForecastEntry.Model(0);
  v30 = sub_1000069E4(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_100006A10();
  v35 = (v34 - v33);
  v36 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v36 + 28), v35, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v45 = *v35;
    v44 = sub_1000EB404();
    if (!v45)
    {
      v46 = v58;
      v47 = 2;
      return sub_1000028A0(v46, v47, 2, v44);
    }

    goto LABEL_9;
  }

  sub_10000DA94(v35, v28, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v28, v26, type metadata accessor for WeatherDataViewModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10000DC24();
    sub_10000DBCC(v26, v37);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v38 = sub_1000E9F64();
    sub_100008CB8(v38, qword_100145C10);
    v39 = sub_1000E9F44();
    v40 = sub_1000EC194();
    if (os_log_type_enabled(v39, v40))
    {
      *swift_slowAlloc() = 0;
      sub_10000DC5C(&_mh_execute_header, v41, v42, "Expected aggregate weather but got instant or sunrise/sunset");
    }

    sub_10000DC24();
    sub_10000DBCC(v28, v43);
    v44 = sub_1000EB404();
LABEL_9:
    v46 = v58;
    v47 = 1;
    return sub_1000028A0(v46, v47, 2, v44);
  }

  sub_10000DA94(v26, v19, type metadata accessor for AggregateWeatherViewModel);
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v48 = sub_1000E9F64();
  sub_100008CB8(v48, qword_100145C10);
  v49 = sub_1000E9F44();
  v50 = sub_1000EC1B4();
  if (os_log_type_enabled(v49, v50))
  {
    *swift_slowAlloc() = 0;
    sub_10000DC5C(&_mh_execute_header, v51, v52, "Making Moon complication view model entry from aggregate weather");
  }

  sub_10004493C();
  sub_10000DAF4(v12, v10);
  v53 = v19 + *(v13 + 20);
  sub_1000E99B4();
  sub_1000E91D4();
  v54 = v58;
  sub_1000EB3F4();
  sub_10000DB64(v12);
  sub_10000DBCC(v19, type metadata accessor for AggregateWeatherViewModel);
  sub_10000DC24();
  sub_10000DBCC(v28, v55);
  v44 = sub_1000EB404();
  v46 = v54;
  v47 = 0;
  return sub_1000028A0(v46, v47, 2, v44);
}

uint64_t sub_10000DA34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10000DA94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10000DAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DB64(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DBCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000DC3C()
{

  return swift_once();
}

void sub_10000DC5C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10000DC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_10000DD4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for UVIndexContentView()
{
  result = qword_10012F1A0;
  if (!qword_10012F1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DE48()
{
  sub_10000DECC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ForecastEntry(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000DECC()
{
  if (!qword_10012F1B0)
  {
    sub_1000EBC44();
    v0 = sub_1000E9F94();
    if (!v1)
    {
      atomic_store(v0, &qword_10012F1B0);
    }
  }
}

uint64_t sub_10000DF40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  v10 = sub_1000069E4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - v13);
  sub_10000EBC4(v2, &v20 - v13, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC44();
    sub_1000069E4(v15);
    return (*(v16 + 32))(a1, v14);
  }

  else
  {
    v18 = *v14;
    sub_1000EC1A4();
    v19 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10000E138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v53 = sub_100002A10(&qword_10012F1E0, &qword_1000EEFC8);
  v3 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v54 = &v47 - v4;
  v61 = sub_100002A10(&qword_10012F1E8, &qword_1000EEFD0);
  v5 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v57 = &v47 - v6;
  v58 = sub_1000EB6F4();
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100002A10(&qword_10012F1F0, &qword_1000EEFD8);
  v9 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v11 = &v47 - v10;
  v51 = sub_100002A10(&qword_10012F1F8, &qword_1000EEFE0);
  v12 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v14 = &v47 - v13;
  v59 = sub_100002A10(&qword_10012F200, &qword_1000EEFE8);
  v15 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v17 = &v47 - v16;
  v18 = sub_1000EBAB4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000EB8D4();
  v52 = *(v22 - 8);
  v23 = *(v52 + 64);
  __chkstk_darwin(v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000EBC44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v48 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v47 - v31;
  sub_10000DF40(&v47 - v31);
  v49 = v27;
  v50 = v26;
  v33 = (*(v27 + 88))(v32, v26);
  if (v33 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v34 = a1 + *(type metadata accessor for UVIndexContentView() + 20);
    sub_1000CACF0(v21);
    sub_1000EB8C4();
    v35 = v52;
    (*(v52 + 16))(v14, v25, v22);
    swift_storeEnumTagMultiPayload();
    sub_10000EAC0(&qword_10012F220, &type metadata accessor for UltravioletCircularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v17, v11, &qword_10012F200, &qword_1000EEFE8);
    swift_storeEnumTagMultiPayload();
    sub_10000EA04();
    sub_10000EB08();
    sub_1000EA4A4();
    sub_100008E48(v17, &qword_10012F200, &qword_1000EEFE8);
    return (*(v35 + 8))(v25, v22);
  }

  if (v33 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1000EC3E4(61);
    v65._countAndFlagsBits = 0xD000000000000021;
    v65._object = 0x80000001000FB1A0;
    sub_1000EBF44(v65);
    v43 = v48;
    sub_10000DF40(v48);
    sub_10000EAC0(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v44 = v50;
    v66._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v66);

    (*(v49 + 8))(v43, v44);
    v67._object = 0x80000001000FB180;
    v67._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000EBF44(v67);
LABEL_9:
    result = sub_1000EC464();
    __break(1u);
    return result;
  }

  if (v33 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1000EC3E4(62);
    v68._countAndFlagsBits = 0xD000000000000022;
    v68._object = 0x80000001000FB150;
    sub_1000EBF44(v68);
    v45 = v48;
    sub_10000DF40(v48);
    sub_10000EAC0(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v46 = v50;
    v69._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v69);

    (*(v49 + 8))(v45, v46);
    v70._object = 0x80000001000FB180;
    v70._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1000EBF44(v70);
    goto LABEL_9;
  }

  v37 = v11;
  v38 = a1 + *(type metadata accessor for UVIndexContentView() + 20);
  sub_1000CACF0(v21);
  v39 = v55;
  sub_1000EB6E4();
  v40 = v56;
  v41 = v58;
  (*(v56 + 16))(v54, v39, v58);
  swift_storeEnumTagMultiPayload();
  sub_10000EAC0(&qword_10012F210, &type metadata accessor for UltravioletInlineContentView);
  v42 = v57;
  sub_1000EA4A4();
  sub_10000EBC4(v42, v37, &qword_10012F1E8, &qword_1000EEFD0);
  swift_storeEnumTagMultiPayload();
  sub_10000EA04();
  sub_10000EB08();
  sub_1000EA4A4();
  sub_100008E48(v42, &qword_10012F1E8, &qword_1000EEFD0);
  return (*(v40 + 8))(v39, v41);
}

unint64_t sub_10000EA04()
{
  result = qword_10012F218;
  if (!qword_10012F218)
  {
    sub_100002ABC(&qword_10012F200, &qword_1000EEFE8);
    sub_10000EAC0(&qword_10012F220, &type metadata accessor for UltravioletCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F218);
  }

  return result;
}

uint64_t sub_10000EAC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000EB08()
{
  result = qword_10012F228;
  if (!qword_10012F228)
  {
    sub_100002ABC(&qword_10012F1E8, &qword_1000EEFD0);
    sub_10000EAC0(&qword_10012F210, &type metadata accessor for UltravioletInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F228);
  }

  return result;
}

uint64_t sub_10000EBC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A10(a3, a4);
  sub_1000069E4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_10000EC28()
{
  result = qword_10012F238;
  if (!qword_10012F238)
  {
    sub_100002ABC(&qword_10012F240, &qword_1000EEFF8);
    sub_10000ECAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F238);
  }

  return result;
}

unint64_t sub_10000ECAC()
{
  result = qword_10012F248;
  if (!qword_10012F248)
  {
    sub_100002ABC(&qword_10012F250, &qword_1000EF000);
    sub_10000EA04();
    sub_10000EB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F248);
  }

  return result;
}

uint64_t sub_10000ED38(uint64_t a1, uint64_t a2)
{
  v25 = sub_1000EA994();
  v4 = sub_1000090D4(v25);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000E8364();
  v12 = sub_1000090D4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = &v26[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v26[-1] - v20;
  v26[0] = a1;
  v26[1] = a2;
  sub_1000E8344();
  sub_1000E8354();
  v22 = *(v14 + 8);
  v22(v21, v11);
  sub_100005898();
  sub_1000EC394();
  v22(v19, v11);

  v26[0] = 0;
  sub_10000F044();

  v23 = sub_10000F088();
  [v23 scanHexLongLong:v26];

  sub_1000EBF24();

  (*(v6 + 104))(v10, enum case for Color.RGBColorSpace.sRGB(_:), v25);
  return sub_1000EA9F4();
}

unint64_t sub_10000F044()
{
  result = qword_10012F258;
  if (!qword_10012F258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012F258);
  }

  return result;
}

id sub_10000F088()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1000EBE64();

  v2 = [v0 initWithString:v1];

  return v2;
}

unint64_t sub_10000F10C(uint64_t a1)
{
  v1 = sub_10000F1B4(a1);
  v2 = sub_10000F948();
  v3 = sub_10000FA10(v1);
  v4 = v1[2];
  if (v4 >= 2)
  {
    v5 = *(v1 + 32) << 56;
  }

  else
  {
    v5 = 0;
  }

  sub_10000FAF4(v1);
  if (v4)
  {
    v6 = *(v1 + 32);
  }

  return v5 | v2 | (v3 << 48) | 0x10000000000;
}

void *sub_10000F1B4(uint64_t a1)
{
  v2 = sub_1000E88D4();
  v3 = sub_1000090D4(v2);
  v92 = v4;
  v93 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v91 = v8 - v7;
  v88 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v9 = sub_1000090D4(v88);
  v96 = v10;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v9);
  v95 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v90 = &v86 - v16;
  __chkstk_darwin(v15);
  v94 = &v86 - v17;
  v18 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v86 - v20;
  v22 = sub_1000E8D34();
  v23 = sub_1000090D4(v22);
  v86 = v24;
  v87 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_100006A10();
  v29 = v28 - v27;
  v30 = sub_1000E90D4();
  v31 = sub_1000090D4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  sub_100006A10();
  v38 = v37 - v36;
  v39 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &v86 - v41;
  v43 = sub_100002A10(&qword_10012F110, &qword_1000EEF18);
  v44 = sub_1000090D4(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44);
  v50 = &v86 - v49;
  v97 = a1;
  sub_1000E8CB4();
  if (sub_100005B30(v42, 1, v43) == 1)
  {
    sub_10000D3A8(v42, &qword_10012F108, &qword_1000EEF10);
LABEL_8:
    v53 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  (*(v46 + 32))(v50, v42, v43);
  (*(v33 + 104))(v38, enum case for PrecipitationRelevancyWindow.default(_:), v30);
  v51 = sub_1000E91C4();
  (*(v33 + 8))(v38, v30);
  if ((v51 & 1) == 0)
  {
    (*(v46 + 8))(v50, v43);
    goto LABEL_8;
  }

  sub_100030EA4();
  v53 = v52;
  v55 = v52[2];
  v54 = v52[3];
  if (v55 >= v54 >> 1)
  {
    sub_10000FB24(v54);
    sub_100030EA4();
    v53 = v82;
  }

  (*(v46 + 8))(v50, v43);
  v53[2] = v55 + 1;
  *(v53 + v55 + 32) = 0;
LABEL_9:
  sub_1000E8C74();
  v56 = v87;
  if (sub_100005B30(v21, 1, v87) == 1)
  {
    v89 = v53;
    v29 = v88;
    sub_10000D3A8(v21, &qword_10012F260, &unk_1000EF030);
  }

  else
  {
    (*(v86 + 32))(v29, v21, v56);
    if (sub_1000E8CE4())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = v53[2];
        sub_100030EA4();
        v53 = v84;
      }

      v58 = v53[2];
      v57 = v53[3];
      if (v58 >= v57 >> 1)
      {
        sub_10000FB24(v57);
        sub_100030EA4();
        v53 = v85;
      }

      v59 = sub_10000FB38();
      v60(v59);
      v53[2] = v58 + 1;
      v89 = v53;
      *(v53 + v58 + 32) = 2;
    }

    else
    {
      v89 = v53;
      v61 = sub_10000FB38();
      v62(v61);
    }
  }

  v63 = v91;
  sub_1000E8C64();
  v64 = v90;
  sub_1000E8854();
  v65 = v93;
  v92 = *(v92 + 8);
  (v92)(v63, v93);
  v66 = objc_opt_self();
  v67 = [v66 fahrenheit];
  v68 = v94;
  sub_1000E8334();

  v69 = *(v96 + 8);
  v69(v64, v29);
  sub_1000E8C64();
  sub_1000E8864();
  (v92)(v63, v65);
  v70 = [v66 fahrenheit];
  v71 = v95;
  sub_1000E8334();

  v69(v64, v29);
  sub_1000E82E4();
  v73 = v72;
  sub_1000E82E4();
  if (vabdd_f64(v73, v74) <= 5.0)
  {
    v69(v71, v29);
    v69(v68, v29);
    return v89;
  }

  else
  {
    v75 = v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = v75[2];
      sub_100030EA4();
      v75 = v80;
    }

    v77 = v75[2];
    v76 = v75[3];
    if (v77 >= v76 >> 1)
    {
      sub_10000FB24(v76);
      sub_100030EA4();
      v75 = v81;
    }

    v69(v71, v29);
    v69(v68, v29);
    v75[2] = v77 + 1;
    *(v75 + v77 + 32) = 4;
  }

  return v75;
}

uint64_t sub_10000F948()
{
  v0 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  sub_1000E8C74();
  v4 = sub_1000E8D34();
  v5 = sub_100005B30(v3, 1, v4);
  sub_10000D3A8(v3, &qword_10012F260, &unk_1000EF030);
  if (v5 == 1)
  {
    return 67305728;
  }

  else
  {
    return 67240192;
  }
}

uint64_t sub_10000FA10(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    while (1)
    {
      v9 = *v7++;
      result = v9;
      if (v9 > 1)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    sub_1000E8C74();
    v10 = sub_1000E8D34();
    v11 = sub_100005B30(v5, 1, v10);
    sub_10000D3A8(v5, &qword_10012F260, &unk_1000EF030);
    if (v11 == 1)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_10000FAF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    return *(a1 + 33);
  }

  if (!v1)
  {
    return 1;
  }

  if (*(a1 + 32) <= 1u)
  {
    return 1;
  }

  return *(a1 + 32);
}

uint64_t sub_10000FB38()
{
  v3 = *(v2 - 176);
  v4 = *(v0 + 8);
  return v1;
}

uint64_t sub_10000FB4C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ForecastEntry.Model(0);
  v4 = sub_1000069E4(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100006A10();
  v9 = v8 - v7;
  v10 = *(type metadata accessor for ForecastEntry(0) + 28);
  sub_100013C6C();
  sub_100012B50(v1 + v11, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100012AF4(v9, a1);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for WeatherDataViewModel();
  return sub_1000028A0(a1, v12, 1, v13);
}

uint64_t sub_10000FC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001000FB200 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697461636F4C6F6ELL && a2 == 0xEE00617461446E6FLL;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6568746165576F6ELL && a2 == 0xED00006174614472)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000EC5D4();

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

uint64_t sub_10000FD68(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0x697461636F4C6F6ELL;
  }

  return 0x6568746165576F6ELL;
}

uint64_t sub_10000FE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000FC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000FE54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000FD54();
  *a1 = result;
  return result;
}

uint64_t sub_10000FE7C(uint64_t a1)
{
  v2 = sub_100012C04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FEB8(uint64_t a1)
{
  v2 = sub_100012C04();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10000FF2C()
{
  sub_100013DC0();
  v45 = v0;
  v2 = v1;
  v3 = sub_100002A10(&qword_10012F460, &qword_1000EF230);
  v4 = sub_1000090D4(v3);
  v43 = v5;
  v44 = v4;
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_10000D58C();
  v42 = v9;
  v10 = sub_100002A10(&qword_10012F468, &qword_1000EF238);
  v11 = sub_1000090D4(v10);
  v40 = v12;
  v41 = v11;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = sub_100002A10(&qword_10012F470, &qword_1000EF240);
  sub_1000090D4(v18);
  v39 = v19;
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  v24 = &v38 - v23;
  v25 = sub_100002A10(&qword_10012F478, &qword_1000EF248);
  sub_1000090D4(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_100009204();
  __chkstk_darwin(v30);
  v32 = &v38 - v31;
  v33 = v2[4];
  sub_100008DA8(v2, v2[3]);
  sub_100012C04();
  sub_1000EC6A4();
  v34 = (v27 + 8);
  if (v45)
  {
    if (v45 == 1)
    {
      sub_100012CAC();
      sub_100013D78();
      sub_1000EC534();
      (*(v40 + 8))(v17, v41);
    }

    else
    {
      sub_100012C58();
      sub_100013D78();
      sub_1000EC534();
      v35 = sub_100013DD8();
      v37(v35, v36);
    }
  }

  else
  {
    sub_100012D00();
    sub_100013D78();
    sub_1000EC534();
    (*(v39 + 8))(v24, v18);
  }

  (*v34)(v32, v25);
  sub_100013DA8();
}

void sub_100010270()
{
  sub_100013DC0();
  v77 = v0;
  v2 = v1;
  v76 = sub_100002A10(&qword_10012F418, &qword_1000EF208);
  sub_1000090D4(v76);
  v74 = v3;
  v5 = *(v4 + 64);
  sub_100009204();
  __chkstk_darwin(v6);
  sub_100013D28(v7);
  v73 = sub_100002A10(&qword_10012F420, &qword_1000EF210);
  sub_1000090D4(v73);
  v71 = v8;
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = v68 - v12;
  v14 = sub_100002A10(&qword_10012F428, &qword_1000EF218);
  sub_1000090D4(v14);
  v70 = v15;
  v17 = *(v16 + 64);
  sub_100009204();
  __chkstk_darwin(v18);
  v20 = v68 - v19;
  v21 = sub_100002A10(&qword_10012F430, &unk_1000EF220);
  sub_1000090D4(v21);
  v75 = v22;
  v24 = *(v23 + 64);
  sub_100009204();
  __chkstk_darwin(v25);
  sub_100013D48();
  v26 = v2[4];
  sub_100008DA8(v2, v2[3]);
  sub_100012C04();
  sub_100013D08();
  sub_1000EC694();
  if (v0)
  {
    goto LABEL_13;
  }

  v68[0] = v14;
  v68[1] = v20;
  v68[2] = v13;
  v69 = 0;
  v27 = v76;
  v77 = v2;
  v28 = sub_1000EC524();
  sub_1000814FC(v28, 0);
  v30 = v21;
  if (v31 != v29 >> 1)
  {
    sub_100013D90();
    if (v34 == v35)
    {
      __break(1u);
      return;
    }

    v36 = v21;
    v37 = *(v33 + v32);
    v38 = sub_1000814F8(v32 + 1);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    v43 = v73;
    v44 = v74;
    if (v40 == v42 >> 1)
    {
      if (v37)
      {
        v70 = v38;
        v45 = v69;
        if (v37 == 1)
        {
          sub_100012CAC();
          sub_100013D38();
          sub_1000EC4A4();
          if (!v45)
          {
            swift_unknownObjectRelease();
            v46 = sub_100013DD8();
            v47(v46, v43);
            v48 = sub_100013D18();
            v49(v48);
LABEL_22:
            sub_100009068(v77);
            goto LABEL_14;
          }
        }

        else
        {
          LODWORD(v73) = v37;
          sub_100012C58();
          v59 = v72;
          sub_100013D38();
          sub_1000EC4A4();
          if (!v45)
          {
            swift_unknownObjectRelease();
            (*(v44 + 8))(v59, v27);
            v66 = sub_100013D18();
            v67(v66);
            goto LABEL_22;
          }
        }

        v60 = sub_100013D18();
        v61(v60);
      }

      else
      {
        sub_100012D00();
        sub_100013D38();
        v56 = v69;
        sub_1000EC4A4();
        if (!v56)
        {
          swift_unknownObjectRelease();
          v62 = sub_100013DD8();
          v63(v62, v68[0]);
          v64 = sub_100013D68();
          v65(v64, v36);
          goto LABEL_22;
        }

        v57 = sub_100013D68();
        v58(v57, v36);
      }

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v30 = v36;
  }

  v50 = sub_1000EC414();
  swift_allocError();
  v52 = v51;
  v53 = *(sub_100002A10(&qword_10012F440, &unk_1000F19E0) + 48);
  *v52 = &type metadata for ForecastEntry.Error;
  sub_1000EC4B4();
  sub_100013DE4();
  (*(*(v50 - 8) + 104))(v52, enum case for DecodingError.typeMismatch(_:), v50);
  swift_willThrow();
  swift_unknownObjectRelease();
  v54 = sub_100013D68();
  v55(v54, v30);
LABEL_12:
  v2 = v77;
LABEL_13:
  sub_100009068(v2);
LABEL_14:
  sub_100013DA8();
}

uint64_t sub_1000107D4@<X0>(_BYTE *a1@<X8>)
{
  result = static WeatherLocation.supportsSecureCoding.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100010800(uint64_t a1)
{
  v2 = sub_100012D00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001083C(uint64_t a1)
{
  v2 = sub_100012D00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000FF08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000108A4(uint64_t a1)
{
  v2 = sub_100012CAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000108E0(uint64_t a1)
{
  v2 = sub_100012CAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001091C(uint64_t a1)
{
  v2 = sub_100012C58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010958(uint64_t a1)
{
  v2 = sub_100012C58();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100010994(_BYTE *a1@<X8>)
{
  sub_100010270();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1000109DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000EC5D4();

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

Swift::Int sub_100010AE0(char a1)
{
  sub_1000EC664();
  sub_1000EC674(a1 & 1);
  return sub_1000EC684();
}

uint64_t sub_100010B28(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_100010B84(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1000EC5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_100010BF4()
{
  sub_1000EC664();
  sub_1000EC674(0);
  return sub_1000EC684();
}

void sub_100010C38()
{
  sub_100013DC0();
  v53 = v0;
  v54 = v1;
  v3 = v2;
  v4 = sub_100002A10(&qword_10012F4C0, &qword_1000EF268);
  v5 = sub_1000090D4(v4);
  v51 = v6;
  v52 = v5;
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  sub_10000D58C();
  v50 = v10;
  v48 = type metadata accessor for WeatherDataViewModel();
  v11 = sub_1000069E4(v48);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100006A10();
  sub_100013D28(v14);
  v15 = sub_100002A10(&qword_10012F4C8, &qword_1000EF270);
  v16 = sub_1000090D4(v15);
  v46[1] = v17;
  v47 = v16;
  v19 = *(v18 + 64);
  sub_100009204();
  __chkstk_darwin(v20);
  v21 = type metadata accessor for ForecastEntry.Model(0);
  v22 = sub_1000069E4(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_100006A10();
  v27 = (v26 - v25);
  v28 = sub_100002A10(&qword_10012F4D0, &qword_1000EF278);
  sub_1000090D4(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_100009204();
  __chkstk_darwin(v33);
  v35 = v46 - v34;
  v36 = v3[4];
  sub_100008DA8(v3, v3[3]);
  sub_100012D54();
  sub_1000EC6A4();
  sub_100013C6C();
  sub_100012B50(v53, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v49;
    sub_100012AF4(v27, v49);
    sub_100012DA8();
    sub_1000EC534();
    sub_100013C9C();
    sub_1000129D4(v38, v39);
    sub_1000EC594();
    v40 = sub_100013D58();
    v41(v40);
    sub_100012BAC(v37, type metadata accessor for WeatherDataViewModel);
  }

  else
  {
    v42 = *v27;
    sub_100012DFC();
    sub_1000EC534();
    sub_100012EA4();
    v43 = v47;
    sub_1000EC594();
    v44 = sub_100013DD8();
    v45(v44, v43);
  }

  (*(v30 + 8))(v35, v28);
  sub_100013DA8();
}

void sub_100010FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_100013DC0();
  v96 = v12;
  v15 = v14;
  v91 = v16;
  v95 = sub_100002A10(&qword_10012F480, &qword_1000EF250);
  sub_1000090D4(v95);
  v92 = v17;
  v19 = *(v18 + 64);
  sub_100009204();
  __chkstk_darwin(v20);
  sub_10000D58C();
  v90 = v21;
  v22 = sub_100002A10(&qword_10012F488, &qword_1000EF258);
  v23 = sub_1000090D4(v22);
  v87 = v24;
  v88 = v23;
  v26 = *(v25 + 64);
  sub_100009204();
  __chkstk_darwin(v27);
  sub_10000D58C();
  v89 = v28;
  v29 = sub_100002A10(&qword_10012F490, &qword_1000EF260);
  v30 = sub_1000090D4(v29);
  v93 = v31;
  v94 = v30;
  v33 = *(v32 + 64);
  sub_100009204();
  __chkstk_darwin(v34);
  sub_100013D48();
  v35 = type metadata accessor for ForecastEntry.Model(0);
  v36 = sub_1000069E4(v35);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v41 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v39);
  v44 = &v83 - v43;
  __chkstk_darwin(v42);
  v46 = &v83 - v45;
  v47 = v15[4];
  sub_100008DA8(v15, v15[3]);
  sub_100012D54();
  sub_100013D08();
  sub_1000EC694();
  if (!v12)
  {
    v83 = v44;
    v84 = v46;
    v85 = v41;
    v86 = v35;
    v96 = v15;
    v49 = v94;
    v48 = v95;
    v50 = sub_1000EC524();
    sub_1000814FC(v50, 0);
    if (v52 != v51 >> 1)
    {
      sub_100013D90();
      if (v55 == v56)
      {
        __break(1u);
        return;
      }

      v97 = *(v54 + v53);
      sub_1000814F8(v53 + 1);
      v58 = v57;
      v60 = v59;
      swift_unknownObjectRelease();
      v61 = v92;
      if (v58 == v60 >> 1)
      {
        if (v97)
        {
          sub_100012DA8();
          v62 = v90;
          sub_100013D78();
          sub_1000EC4A4();
          type metadata accessor for WeatherDataViewModel();
          sub_100013C9C();
          sub_1000129D4(v63, v64);
          v65 = v85;
          sub_1000EC514();
          v66 = v93;
          swift_unknownObjectRelease();
          (*(v61 + 8))(v62, v48);
          (*(v66 + 8))(v13, v49);
          swift_storeEnumTagMultiPayload();
          sub_100013C14();
          v75 = v84;
          sub_100012AF4(v65, v84);
          v76 = v91;
        }

        else
        {
          sub_100012DFC();
          sub_100013D78();
          sub_1000EC4A4();
          v76 = v91;
          sub_100012E50();
          sub_1000EC514();
          swift_unknownObjectRelease();
          v77 = sub_100013D58();
          v78(v77);
          v79 = sub_100013CE4();
          v80(v79);
          v81 = v83;
          *v83 = a12;
          swift_storeEnumTagMultiPayload();
          sub_100013C14();
          v82 = v81;
          v75 = v84;
          sub_100012AF4(v82, v84);
        }

        sub_100013C14();
        sub_100012AF4(v75, v76);
        v74 = v96;
        goto LABEL_10;
      }
    }

    v67 = v86;
    v68 = sub_1000EC414();
    swift_allocError();
    v70 = v69;
    v71 = *(sub_100002A10(&qword_10012F440, &unk_1000F19E0) + 48);
    *v70 = v67;
    sub_1000EC4B4();
    sub_100013DE4();
    (*(*(v68 - 8) + 104))(v70, enum case for DecodingError.typeMismatch(_:), v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    v72 = sub_100013CE4();
    v73(v72);
    v15 = v96;
  }

  v74 = v15;
LABEL_10:
  sub_100009068(v74);
  sub_100013DA8();
}

Swift::Int sub_100011604()
{
  v1 = *v0;
  sub_1000EC664();
  sub_1000EC674(v1);
  return sub_1000EC684();
}

uint64_t sub_100011650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000109DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100011678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100010AA0();
  *a1 = result;
  return result;
}

uint64_t sub_1000116A0(uint64_t a1)
{
  v2 = sub_100012D54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000116DC(uint64_t a1)
{
  v2 = sub_100012D54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100011740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010B84(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10001176C(uint64_t a1)
{
  v2 = sub_100012DA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000117A8(uint64_t a1)
{
  v2 = sub_100012DA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000117E4()
{
  sub_1000EC664();
  sub_1000EC674(0);
  return sub_1000EC684();
}

uint64_t sub_100011824(uint64_t a1)
{
  v2 = sub_100012DFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100011860(uint64_t a1)
{
  v2 = sub_100012DFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000118CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E6176656C6572 && a2 == 0xE900000000000065;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000EC5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int sub_100011A30(unsigned __int8 a1)
{
  sub_1000EC664();
  sub_1000EC674(a1);
  return sub_1000EC684();
}

uint64_t sub_100011A78(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x636E6176656C6572;
      break;
    case 2:
      result = 0x747865746E6F63;
      break;
    case 3:
      result = 0x6C65646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100011B04(void *a1)
{
  v3 = sub_100002A10(&qword_10012F3F0, &qword_1000EF200);
  sub_1000090D4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  v10 = &v25[-v9];
  v11 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100012980();
  sub_1000EC6A4();
  v25[15] = 0;
  sub_1000E8604();
  sub_100013C54();
  sub_1000129D4(v12, v13);
  sub_100013C40();
  sub_1000EC594();
  if (!v1)
  {
    v14 = type metadata accessor for ForecastEntry(0);
    v15 = v14[5];
    v25[14] = 1;
    sub_1000EBD64();
    sub_100013CCC();
    sub_1000129D4(v16, v17);
    sub_100013C40();
    sub_1000EC554();
    v18 = v14[6];
    v25[13] = 2;
    type metadata accessor for WidgetContext();
    sub_100013CB4();
    sub_1000129D4(v19, v20);
    sub_100013C40();
    sub_1000EC594();
    v21 = v14[7];
    v25[12] = 3;
    type metadata accessor for ForecastEntry.Model(0);
    sub_100013C84();
    sub_1000129D4(v22, v23);
    sub_100013C40();
    sub_1000EC594();
  }

  return (*(v5 + 8))(v10, v3);
}

void sub_100011D70()
{
  sub_100013DC0();
  v65 = v0;
  v3 = v2;
  v55 = v4;
  v57 = type metadata accessor for ForecastEntry.Model(0);
  v5 = sub_1000069E4(v57);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100006A10();
  v56 = v9 - v8;
  v61 = type metadata accessor for WidgetContext();
  v10 = sub_1000069E4(v61);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100006A10();
  v58 = v14 - v13;
  v15 = *(*(sub_100002A10(&qword_10012F268, &qword_1000EF070) - 8) + 64);
  sub_100009204();
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = sub_1000E8604();
  v20 = sub_1000090D4(v19);
  v59 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_100006A10();
  sub_100013D28(v24);
  v64 = sub_100002A10(&qword_10012F3C0, &qword_1000EF1F8);
  sub_1000090D4(v64);
  v62 = v25;
  v27 = *(v26 + 64);
  sub_100009204();
  __chkstk_darwin(v28);
  sub_100013D48();
  v29 = type metadata accessor for ForecastEntry(0);
  v30 = sub_1000069E4(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_100006A10();
  v35 = v34 - v33;
  v36 = v3[4];
  sub_100008DA8(v3, v3[3]);
  sub_100012980();
  v63 = v1;
  sub_100013D08();
  sub_1000EC694();
  if (v0)
  {
    sub_100009068(v3);
  }

  else
  {
    v65 = v35;
    v37 = v59;
    sub_100013C54();
    sub_1000129D4(v38, v39);
    v40 = v60;
    sub_1000EC514();
    (*(v37 + 32))(v65, v40, v19);
    sub_1000EBD64();
    sub_100013CCC();
    sub_1000129D4(v41, v42);
    sub_1000EC4D4();
    sub_100012A84(v18, v65 + v29[5]);
    sub_100013CB4();
    sub_1000129D4(v43, v44);
    v45 = v58;
    sub_1000EC514();
    sub_100012AF4(v45, v65 + v29[6]);
    sub_100013C84();
    sub_1000129D4(v46, v47);
    v48 = v56;
    sub_1000EC514();
    v49 = sub_100013C2C();
    v50(v49);
    v51 = v29[7];
    sub_100013C14();
    v52 = v65;
    sub_100012AF4(v48, v65 + v53);
    sub_100012B50(v52, v55);
    sub_100009068(v3);
    sub_100012BAC(v52, type metadata accessor for ForecastEntry);
  }

  sub_100013DA8();
}

uint64_t sub_1000122D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000118CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000122F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100011A28();
  *a1 = result;
  return result;
}

uint64_t sub_100012320(uint64_t a1)
{
  v2 = sub_100012980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001235C(uint64_t a1)
{
  v2 = sub_100012980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100012398@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000E8604();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100012450(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012488(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F268, &qword_1000EF070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012510()
{
  result = type metadata accessor for WeatherDataViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100012590(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100013D84();
  v6 = sub_1000E8604();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_100002A10(&qword_10012F268, &qword_1000EF070);
    v12 = sub_100006A04(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for WidgetContext();
      v16 = sub_100006A04(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = type metadata accessor for ForecastEntry.Model(0);
        v14 = a3[7];
      }
    }

    v10 = v3 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_1000126C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100013D84();
  v8 = sub_1000E8604();
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_100002A10(&qword_10012F268, &qword_1000EF070);
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = type metadata accessor for WidgetContext();
      v18 = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v11 = type metadata accessor for ForecastEntry.Model(0);
        v16 = a4[7];
      }
    }

    v12 = v4 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

void sub_1000127EC()
{
  sub_1000E8604();
  if (v0 <= 0x3F)
  {
    sub_1000128A0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WidgetContext();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ForecastEntry.Model(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000128A0()
{
  if (!qword_10012F380)
  {
    sub_1000EBD64();
    v0 = sub_1000EC364();
    if (!v1)
    {
      atomic_store(v0, &qword_10012F380);
    }
  }
}

unint64_t sub_1000128FC()
{
  result = qword_10012F3B8;
  if (!qword_10012F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3B8);
  }

  return result;
}

unint64_t sub_100012980()
{
  result = qword_10012F3C8;
  if (!qword_10012F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3C8);
  }

  return result;
}

uint64_t sub_1000129D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100012A1C(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F268, &qword_1000EF070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F268, &qword_1000EF070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013D84();
  v6 = v5(v4);
  sub_1000069E4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_100012B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013D84();
  v6 = v5(v4);
  sub_1000069E4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100012BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100012C04()
{
  result = qword_10012F438;
  if (!qword_10012F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F438);
  }

  return result;
}

unint64_t sub_100012C58()
{
  result = qword_10012F448;
  if (!qword_10012F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F448);
  }

  return result;
}

unint64_t sub_100012CAC()
{
  result = qword_10012F450;
  if (!qword_10012F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F450);
  }

  return result;
}

unint64_t sub_100012D00()
{
  result = qword_10012F458;
  if (!qword_10012F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F458);
  }

  return result;
}

unint64_t sub_100012D54()
{
  result = qword_10012F498;
  if (!qword_10012F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F498);
  }

  return result;
}

unint64_t sub_100012DA8()
{
  result = qword_10012F4A0;
  if (!qword_10012F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4A0);
  }

  return result;
}

unint64_t sub_100012DFC()
{
  result = qword_10012F4B0;
  if (!qword_10012F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4B0);
  }

  return result;
}

unint64_t sub_100012E50()
{
  result = qword_10012F4B8;
  if (!qword_10012F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4B8);
  }

  return result;
}

unint64_t sub_100012EA4()
{
  result = qword_10012F4E0;
  if (!qword_10012F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForecastEntry.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ForecastEntry.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10001304CLL);
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

uint64_t _s10CodingKeysOwet_0(unsigned int *a1, int a2)
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

_BYTE *sub_100013104(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1000131A0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RainInlineContentViewModelFactory.ContentLength(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100013268(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100013334);
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

_BYTE *storeEnumTagSinglePayload for ForecastEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100013468);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000134A4()
{
  result = qword_10012F4E8;
  if (!qword_10012F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4E8);
  }

  return result;
}

unint64_t sub_1000134FC()
{
  result = qword_10012F4F0;
  if (!qword_10012F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4F0);
  }

  return result;
}

unint64_t sub_100013554()
{
  result = qword_10012F4F8;
  if (!qword_10012F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4F8);
  }

  return result;
}

unint64_t sub_1000135AC()
{
  result = qword_10012F500;
  if (!qword_10012F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F500);
  }

  return result;
}

unint64_t sub_100013604()
{
  result = qword_10012F508;
  if (!qword_10012F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F508);
  }

  return result;
}

unint64_t sub_10001365C()
{
  result = qword_10012F510;
  if (!qword_10012F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F510);
  }

  return result;
}

unint64_t sub_1000136B4()
{
  result = qword_10012F518;
  if (!qword_10012F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F518);
  }

  return result;
}

unint64_t sub_10001370C()
{
  result = qword_10012F520;
  if (!qword_10012F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F520);
  }

  return result;
}

unint64_t sub_100013764()
{
  result = qword_10012F528;
  if (!qword_10012F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F528);
  }

  return result;
}

unint64_t sub_1000137BC()
{
  result = qword_10012F530;
  if (!qword_10012F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F530);
  }

  return result;
}

unint64_t sub_100013814()
{
  result = qword_10012F538;
  if (!qword_10012F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F538);
  }

  return result;
}

unint64_t sub_10001386C()
{
  result = qword_10012F540;
  if (!qword_10012F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F540);
  }

  return result;
}

unint64_t sub_1000138C4()
{
  result = qword_10012F548;
  if (!qword_10012F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F548);
  }

  return result;
}

unint64_t sub_10001391C()
{
  result = qword_10012F550;
  if (!qword_10012F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F550);
  }

  return result;
}

unint64_t sub_100013974()
{
  result = qword_10012F558;
  if (!qword_10012F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F558);
  }

  return result;
}

unint64_t sub_1000139CC()
{
  result = qword_10012F560;
  if (!qword_10012F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F560);
  }

  return result;
}

unint64_t sub_100013A24()
{
  result = qword_10012F568;
  if (!qword_10012F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F568);
  }

  return result;
}

unint64_t sub_100013A7C()
{
  result = qword_10012F570;
  if (!qword_10012F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F570);
  }

  return result;
}

unint64_t sub_100013AD4()
{
  result = qword_10012F578;
  if (!qword_10012F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F578);
  }

  return result;
}

unint64_t sub_100013B2C()
{
  result = qword_10012F580;
  if (!qword_10012F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F580);
  }

  return result;
}

unint64_t sub_100013B84()
{
  result = qword_10012F588;
  if (!qword_10012F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F588);
  }

  return result;
}

uint64_t sub_100013C2C()
{
  v2 = *(*(v1 - 112) + 8);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_100013DE4()
{

  return sub_1000EC404();
}

uint64_t sub_100013E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_100013ED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for AdaptiveConditionsContentView()
{
  result = qword_10012F5E8;
  if (!qword_10012F5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  v10 = sub_1000069E4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - v13);
  sub_10000EBC4(v2, &v20 - v13, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC44();
    sub_1000069E4(v15);
    return (*(v16 + 32))(a1, v14);
  }

  else
  {
    v18 = *v14;
    sub_1000EC1A4();
    v19 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000141E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v45 = sub_100002A10(&qword_10012F620, &qword_1000EFA90);
  v3 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v46 = &v41 - v4;
  v51 = sub_100002A10(&qword_10012F628, &qword_1000EFA98);
  v5 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v47 = &v41 - v6;
  v44 = type metadata accessor for AdaptiveConditionsInlineContentView();
  v7 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100002A10(&qword_10012F630, &qword_1000EFAA0);
  v10 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v12 = &v41 - v11;
  v43 = sub_100002A10(&qword_10012F638, &qword_1000EFAA8);
  v13 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v15 = &v41 - v14;
  v49 = sub_100002A10(&qword_10012F640, &unk_1000EFAB0);
  v16 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v18 = &v41 - v17;
  v19 = type metadata accessor for AdaptiveConditionsRectangularContentView();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000EBC44();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v41 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v41 - v28;
  v48 = a1;
  sub_100013FEC(&v41 - v28);
  v42 = v24;
  v30 = (*(v24 + 88))(v29, v23);
  if (v30 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1000EC3E4(63);
    v55._countAndFlagsBits = 0xD000000000000021;
    v55._object = 0x80000001000FB1A0;
    sub_1000EBF44(v55);
    v39 = v41;
    sub_100013FEC(v41);
    sub_100014ABC(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v56._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v56);

    (*(v42 + 8))(v39, v23);
    v57._object = 0x80000001000FB260;
    v57._countAndFlagsBits = 0xD00000000000001CLL;
    sub_1000EBF44(v57);
  }

  else
  {
    if (v30 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v31 = v48 + *(type metadata accessor for AdaptiveConditionsContentView() + 20);
      sub_10008F850(v22);
      v32 = *(v19 + 20);
      type metadata accessor for ConditionsEvaluationManager();
      *&v22[v32] = swift_allocObject();
      sub_100014BC0(v22, v15, type metadata accessor for AdaptiveConditionsRectangularContentView);
      swift_storeEnumTagMultiPayload();
      sub_100014ABC(&qword_10012F658, type metadata accessor for AdaptiveConditionsRectangularContentView);
      sub_1000EA4A4();
      sub_10000EBC4(v18, v12, &qword_10012F640, &unk_1000EFAB0);
      swift_storeEnumTagMultiPayload();
      sub_100014A00();
      sub_100014B04();
      sub_1000EA4A4();
      sub_100008E48(v18, &qword_10012F640, &unk_1000EFAB0);
      v33 = v22;
      v34 = type metadata accessor for AdaptiveConditionsRectangularContentView;
      return sub_100014C20(v33, v34);
    }

    if (v30 == enum case for WidgetFamily.accessoryInline(_:))
    {
      v35 = v48 + *(type metadata accessor for AdaptiveConditionsContentView() + 20);
      sub_10008F850(v9);
      v36 = *(v44 + 20);
      type metadata accessor for ConditionsEvaluationManager();
      *&v9[v36] = swift_allocObject();
      sub_100014BC0(v9, v46, type metadata accessor for AdaptiveConditionsInlineContentView);
      swift_storeEnumTagMultiPayload();
      sub_100014ABC(&qword_10012F648, type metadata accessor for AdaptiveConditionsInlineContentView);
      v37 = v47;
      sub_1000EA4A4();
      sub_10000EBC4(v37, v12, &qword_10012F628, &qword_1000EFA98);
      swift_storeEnumTagMultiPayload();
      sub_100014A00();
      sub_100014B04();
      sub_1000EA4A4();
      sub_100008E48(v37, &qword_10012F628, &qword_1000EFA98);
      v33 = v9;
      v34 = type metadata accessor for AdaptiveConditionsInlineContentView;
      return sub_100014C20(v33, v34);
    }

    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1000EC3E4(64);
    v58._countAndFlagsBits = 0xD000000000000022;
    v58._object = 0x80000001000FB150;
    sub_1000EBF44(v58);
    v40 = v41;
    sub_100013FEC(v41);
    sub_100014ABC(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v59._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v59);

    (*(v42 + 8))(v40, v23);
    v60._object = 0x80000001000FB260;
    v60._countAndFlagsBits = 0xD00000000000001CLL;
    sub_1000EBF44(v60);
  }

  result = sub_1000EC464();
  __break(1u);
  return result;
}

unint64_t sub_100014A00()
{
  result = qword_10012F650;
  if (!qword_10012F650)
  {
    sub_100002ABC(&qword_10012F640, &unk_1000EFAB0);
    sub_100014ABC(&qword_10012F658, type metadata accessor for AdaptiveConditionsRectangularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F650);
  }

  return result;
}

uint64_t sub_100014ABC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100014B04()
{
  result = qword_10012F660;
  if (!qword_10012F660)
  {
    sub_100002ABC(&qword_10012F628, &qword_1000EFA98);
    sub_100014ABC(&qword_10012F648, type metadata accessor for AdaptiveConditionsInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F660);
  }

  return result;
}

uint64_t sub_100014BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100014C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100014C7C()
{
  result = qword_10012F668;
  if (!qword_10012F668)
  {
    sub_100002ABC(&qword_10012F670, &qword_1000EFAC0);
    sub_100014D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F668);
  }

  return result;
}

unint64_t sub_100014D00()
{
  result = qword_10012F678;
  if (!qword_10012F678)
  {
    sub_100002ABC(&qword_10012F680, &qword_1000EFAC8);
    sub_100014A00();
    sub_100014B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F678);
  }

  return result;
}

uint64_t sub_100014D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v76 = a3;
  v5 = sub_100002A10(&qword_10012F688, &qword_1000EFB58);
  v65 = sub_1000090D4(v5);
  v66 = v6;
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v68 = sub_100002A10(&qword_10012F690, &qword_1000EFB60);
  sub_1000090D4(v68);
  v70 = v12;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  v64 = &v63 - v16;
  v17 = sub_100002A10(&qword_10012F698, &qword_1000EFB68);
  v72 = sub_1000090D4(v17);
  v73 = v18;
  v20 = *(v19 + 64);
  sub_100009204();
  __chkstk_darwin(v21);
  v67 = &v63 - v22;
  v23 = sub_100002A10(&qword_10012F6A0, &qword_1000EFB70);
  v74 = sub_1000090D4(v23);
  v75 = v24;
  v26 = *(v25 + 64);
  sub_100009204();
  __chkstk_darwin(v27);
  v69 = &v63 - v28;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v29 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for WeatherIntent();
  v71 = v29;
  v81 = v29;

  sub_100002A10(&qword_10012F6A8, &qword_1000EFB78);
  v30 = type metadata accessor for DailyForecastContentView();
  v31 = sub_100002ABC(&qword_10012F6B0, &unk_1000EFB80);
  v32 = sub_100015A48(&qword_10012F6B8, type metadata accessor for DailyForecastContentView);
  v33 = sub_100006988(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80);
  v77 = v30;
  v78 = v31;
  v79 = v32;
  v80 = v33;
  sub_100015CE0();
  sub_100015A48(&qword_10012F6C8, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCC4();
  sub_1000EA354();
  v34 = sub_100015CA8();
  v36 = v35;
  v38 = v37;
  sub_100015C90();
  v40 = sub_100006988(v39, &qword_10012F688, &qword_1000EFB58);
  v42 = v64;
  v41 = v65;
  sub_1000EA474();
  sub_1000058EC(v34, v36, v38 & 1);

  (*(v66 + 8))(v11, v41);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v43 = sub_1000EBC44();
  sub_1000090D4(v43);
  v45 = v44;
  v47 = *(v46 + 72);
  v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1000EFAD0;
  (*(v45 + 104))(v49 + v48, enum case for WidgetFamily.systemSmall(_:), v43);
  v77 = v41;
  v78 = v40;
  sub_100015C78();
  v50 = sub_100015CE0();
  v52 = v67;
  v51 = v68;
  sub_1000EA454();

  v53 = v51;
  (*(v70 + 8))(v42, v51);
  sub_1000EA354();
  v54 = sub_100015CA8();
  v56 = v55;
  LOBYTE(v48) = v57;
  v77 = v53;
  v78 = v50;
  sub_100015C48();
  v58 = sub_100015CE0();
  v59 = v69;
  v60 = v72;
  sub_1000EA444();
  sub_1000058EC(v54, v56, v48 & 1);

  (*(v73 + 8))(v52, v60);
  v77 = v60;
  v78 = v58;
  sub_100015C60();
  sub_100015CE0();
  v61 = v74;
  sub_1000EA494();

  return (*(v75 + 8))(v59, v61);
}

uint64_t sub_10001541C(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F6B0, &unk_1000EFB80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v21 - v4;
  v6 = type metadata accessor for DailyForecastContentView();
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000159C8(a1, v10 + *(v8 + 36));
  *v10 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[5]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(v10 + v6[7]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[8]) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  v12 = v10 + v6[6];
  *v12 = KeyPath;
  v12[8] = 0;
  v13 = (v10 + v6[10]);
  type metadata accessor for CGRect(0);
  v14 = sub_1000EC014();
  *(v14 + 16) = 12;
  bzero((v14 + 32), 0x180uLL);
  v21[1] = v14;
  sub_100002A10(&unk_10012EE48, qword_1000EED10);
  sub_1000EAA84();
  v15 = v21[3];
  *v13 = v21[2];
  v13[1] = v15;
  v16 = v6[11];
  v17 = [objc_opt_self() mainScreen];
  [v17 bounds];

  *(v10 + v16) = sub_100002750();
  v18 = enum case for DynamicTypeSize.xxLarge(_:);
  v19 = sub_1000E9FF4();
  (*(*(v19 - 8) + 104))(v5, v18, v19);
  sub_100015A48(&qword_10012F6F0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000EBE24();
  if (result)
  {
    sub_100015A48(&qword_10012F6B8, type metadata accessor for DailyForecastContentView);
    sub_100006988(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80);
    sub_1000EA8B4();
    sub_100015A90(v5);
    return sub_100015AF8(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015800()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for WidgetNames.DailyForecast(_:), v0);
  v8 = sub_1000E93B4();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_1000158F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100015930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100015998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100015800();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000159C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015A90(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F6B0, &unk_1000EFB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015AF8(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015B54()
{
  sub_100002ABC(&qword_10012F6A0, &qword_1000EFB70);
  sub_100002ABC(&qword_10012F698, &qword_1000EFB68);
  sub_100002ABC(&qword_10012F690, &qword_1000EFB60);
  sub_100002ABC(&qword_10012F688, &qword_1000EFB58);
  sub_100015C90();
  sub_100006988(v0, &qword_10012F688, &qword_1000EFB58);
  sub_100015C78();
  sub_100015CC8();
  sub_100015C48();
  sub_100015CC8();
  sub_100015C60();
  sub_100015CC8();
  return sub_100015CC8();
}

uint64_t sub_100015CA8()
{

  return sub_1000EA7F4();
}

uint64_t sub_100015CC8()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100015CE0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for EventType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for EventType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100015E4CLL);
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

uint64_t sub_100015E98(uint64_t a1, int a2, int *a3)
{
  v6 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100006A04(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[6];
  }

  else
  {
    v9 = sub_1000E8604();
    sub_100006A04(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[8];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return sub_100019B04(*(a1 + a3[9] + 8));
      }

      sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
      v8 = a3[13];
    }
  }

  v12 = sub_100019AF8(v8);

  return sub_100005B30(v12, v13, v14);
}

uint64_t sub_100015FC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100006A04(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = a4[6];
  }

  else
  {
    v11 = sub_1000E8604();
    result = sub_100006A04(v11);
    if (*(v13 + 84) == a3)
    {
      v10 = a4[8];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
      v10 = a4[13];
    }
  }

  v14 = sub_100019AF8(v10);

  return sub_1000028A0(v14, v15, a2, v16);
}

void sub_100016104()
{
  sub_100016270(319, &qword_10012F768);
  if (v0 <= 0x3F)
  {
    sub_1000162BC(319, &qword_10012F770, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_1000E8604();
      if (v2 <= 0x3F)
      {
        sub_100016270(319, &qword_10012F778);
        if (v3 <= 0x3F)
        {
          sub_10001652C(319, &qword_10012F780, &qword_10012F788, &qword_1000EFCC8);
          if (v4 <= 0x3F)
          {
            sub_1000162BC(319, &unk_10012F790, &type metadata accessor for PrecipitationShift);
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

void sub_100016270(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000EC364();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1000162BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000EC364();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100016324(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100019B04(*(a1 + 8));
  }

  sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v5 = sub_100019AF8(*(a3 + 28));

  return sub_100005B30(v5, v6, v7);
}

uint64_t sub_1000163BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_100002A10(&qword_10012F048, &qword_1000EEF30);
    v6 = sub_100019AF8(*(a4 + 28));

    return sub_1000028A0(v6, v7, a2, v8);
  }

  return result;
}

void sub_100016464()
{
  sub_10001652C(319, &qword_10012F848, &unk_10012F850, &qword_1000EFCE8);
  if (v0 <= 0x3F)
  {
    sub_1000162BC(319, &qword_10012F770, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001652C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100002ABC(a3, a4);
    v5 = sub_1000EC364();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlertSeverity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AlertSeverity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1000166D4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10001670C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_10001671C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001670C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000167FC()
{
  result = qword_10012F888;
  if (!qword_10012F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F888);
  }

  return result;
}

unint64_t sub_100016850(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_100016860(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7665537472656C61 && a2 == 0xED00007974697265;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
          if (v9 || (sub_1000EC5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
            if (v10 || (sub_1000EC5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1000EC5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x63736544676E6F6CLL && a2 == 0xEF6E6F6974706972;
                if (v12 || (sub_1000EC5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001000FB3A0 == a2;
                  if (v13 || (sub_1000EC5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000012 && 0x80000001000FB3C0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1000EC5D4();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_100016B9C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x7665537472656C61;
      break;
    case 2:
      result = 0x7461447472617473;
      break;
    case 3:
      result = 0x65746144646E65;
      break;
    case 4:
      result = 0x6974617269707865;
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x63736544676E6F6CLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100016D08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1000E8F24();
  v5 = sub_1000090D4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100006A10();
  v12 = v11 - v10;
  v13 = sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
  sub_100009210(v13);
  v15 = *(v14 + 64);
  sub_100009204();
  __chkstk_darwin(v16);
  v146 = &v135[-v17];
  v18 = sub_100002A10(&qword_10012F908, &unk_1000EFFE0);
  sub_1000069E4(v18);
  v20 = *(v19 + 64);
  sub_100009204();
  __chkstk_darwin(v21);
  v23 = &v135[-v22];
  v24 = sub_1000E8604();
  v25 = sub_1000090D4(v24);
  v149 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_100006A10();
  v148 = v30 - v29;
  v31 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v32 = sub_100009210(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_1000091AC();
  v147 = v35 - v36;
  __chkstk_darwin(v37);
  v39 = &v135[-v38];
  v40 = sub_100002A10(&qword_10012F910, &qword_1000F19F0);
  v41 = sub_1000069E4(v40);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  sub_1000091AC();
  __chkstk_darwin(v44);
  v46 = a2;
  v48 = &v135[-v47];
  if (*a1 != *v46)
  {
    return 0;
  }

  v49 = a1[1];
  v50 = v46[1];
  if (v49 == 5)
  {
    if (v50 != 5)
    {
      return 0;
    }

LABEL_6:
    v139 = v45;
    v140 = v18;
    v137 = v23;
    v138 = v4;
    v142 = v12;
    v143 = v7;
    v51 = v46;
    v144 = type metadata accessor for EventViewModel(0);
    v52 = v144[6];
    v53 = *(v40 + 48);
    v141 = a1;
    sub_100019210(&a1[v52], v48, &qword_10012F048, &qword_1000EEF30);
    v145 = v51;
    sub_100019210(&v51[v52], &v48[v53], &qword_10012F048, &qword_1000EEF30);
    sub_1000199F0(v48);
    if (v54)
    {
      sub_1000199F0(&v48[v53]);
      if (v54)
      {
        sub_100008E48(v48, &qword_10012F048, &qword_1000EEF30);
LABEL_16:
        v64 = v144[7];
        v65 = *(v40 + 48);
        v66 = v141;
        v67 = v139;
        sub_100019210(&v141[v64], v139, &qword_10012F048, &qword_1000EEF30);
        sub_100019210(&v145[v64], v67 + v65, &qword_10012F048, &qword_1000EEF30);
        sub_1000199F0(v67);
        if (v54)
        {
          sub_1000199F0(v67 + v65);
          v69 = v142;
          v68 = v143;
          v70 = v140;
          if (v54)
          {
            sub_100008E48(v67, &qword_10012F048, &qword_1000EEF30);
            goto LABEL_29;
          }
        }

        else
        {
          v71 = v147;
          sub_100019210(v67, v147, &qword_10012F048, &qword_1000EEF30);
          sub_1000199F0(v67 + v65);
          v73 = v142;
          v68 = v143;
          v74 = v140;
          if (!v72)
          {
            v79 = v149;
            v80 = v67 + v65;
            v81 = v148;
            (*(v149 + 32))(v148, v80, v24);
            sub_1000199D8();
            sub_100018FE4(v82, v83);
            v136 = sub_1000EBE24();
            v84 = v66;
            v85 = v74;
            v69 = v73;
            v86 = *(v79 + 8);
            v86(v81, v24);
            v70 = v85;
            v66 = v84;
            v86(v71, v24);
            sub_100008E48(v67, &qword_10012F048, &qword_1000EEF30);
            if ((v136 & 1) == 0)
            {
              return 0;
            }

LABEL_29:
            v88 = v144;
            v87 = v145;
            v89 = v144[8];
            if ((sub_1000E85A4() & 1) == 0)
            {
              return 0;
            }

            v90 = v88[9];
            v91 = *&v66[v90];
            v92 = *&v66[v90 + 8];
            v93 = &v87[v90];
            v94 = v91 == *v93 && v92 == *(v93 + 1);
            v95 = v87;
            if (!v94)
            {
              v96 = sub_1000EC5D4();
              v95 = v145;
              if ((v96 & 1) == 0)
              {
                return 0;
              }
            }

            v97 = v88[10];
            v98 = *&v66[v97];
            v99 = *&v66[v97 + 8];
            v100 = &v95[v97];
            if (v98 != *v100 || v99 != *(v100 + 1))
            {
              v102 = sub_1000EC5D4();
              v95 = v145;
              if ((v102 & 1) == 0)
              {
                return 0;
              }
            }

            v103 = v88[11];
            v104 = &v66[v103];
            v105 = *&v66[v103 + 8];
            v106 = &v95[v103];
            v107 = *(v106 + 1);
            if (v105)
            {
              if (!v107)
              {
                return 0;
              }

              if (*v104 != *v106 || v105 != v107)
              {
                v109 = sub_1000EC5D4();
                v95 = v145;
                if ((v109 & 1) == 0)
                {
                  return 0;
                }
              }
            }

            else if (v107)
            {
              return 0;
            }

            v110 = v88[12];
            v111 = *&v95[v110];
            if (*&v66[v110])
            {
              if (!v111)
              {
                return 0;
              }

              v112 = *&v95[v110];

              sub_10004788C();
              v114 = v113;

              if ((v114 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v111)
            {
              return 0;
            }

            v115 = v88[13];
            v116 = *(v70 + 48);
            v117 = v137;
            sub_100019ACC();
            sub_100019210(v118, v119, v120, v121);
            sub_100019ACC();
            sub_100019210(v122, v123, v124, v125);
            v126 = v138;
            if (sub_100005B30(v117, 1, v138) == 1)
            {
              sub_1000199F0(v117 + v116);
              if (!v54)
              {
                goto LABEL_61;
              }

              sub_100008E48(v117, &qword_10012F6F8, &qword_1000EFCB0);
            }

            else
            {
              v127 = v146;
              sub_100019210(v117, v146, &qword_10012F6F8, &qword_1000EFCB0);
              sub_1000199F0(v117 + v116);
              if (v54)
              {
                v128 = *(v68 + 8);
                v129 = sub_100019B38();
                v130(v129);
LABEL_61:
                v55 = &qword_10012F908;
                v56 = &unk_1000EFFE0;
                v57 = v117;
                goto LABEL_25;
              }

              (*(v68 + 32))(v69, v117 + v116, v126);
              sub_100019A10();
              sub_100018FE4(v131, v132);
              v133 = sub_1000EBE24();
              v134 = *(v68 + 8);
              v134(v69, v126);
              v134(v127, v126);
              sub_100008E48(v117, &qword_10012F6F8, &qword_1000EFCB0);
              if ((v133 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }

          v75 = *(v149 + 8);
          v76 = sub_100019AC0();
          v77(v76);
        }

        v55 = &qword_10012F910;
        v56 = &qword_1000F19F0;
        v57 = v67;
LABEL_25:
        sub_100008E48(v57, v55, v56);
        return 0;
      }
    }

    else
    {
      sub_100019210(v48, v39, &qword_10012F048, &qword_1000EEF30);
      sub_1000199F0(&v48[v53]);
      if (!v54)
      {
        v59 = v148;
        v58 = v149;
        (*(v149 + 32))(v148, &v48[v53], v24);
        sub_1000199D8();
        sub_100018FE4(v60, v61);
        v62 = sub_1000EBE24();
        v63 = *(v58 + 8);
        v63(v59, v24);
        v63(v39, v24);
        sub_100008E48(v48, &qword_10012F048, &qword_1000EEF30);
        if ((v62 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_16;
      }

      (*(v149 + 8))(v39, v24);
    }

    v55 = &qword_10012F910;
    v56 = &qword_1000F19F0;
    v57 = v48;
    goto LABEL_25;
  }

  if (v49 == v50)
  {
    goto LABEL_6;
  }

  return 0;
}