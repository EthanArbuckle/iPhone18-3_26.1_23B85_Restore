int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10001CE1C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  qword_10002E520 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000023A4(v3, qword_10002E558);
  v12 = v4[2];
  v12(v10, v11, v3);
  v13 = sub_10001CDFC();
  v14 = sub_10001D4CC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "#ContactsButton service created delegate", v15, 2u);
  }

  v16 = v4[1];
  v16(v10, v3);
  qword_10002E528 = [objc_opt_self() serviceListener];
  [qword_10002E528 setDelegate:qword_10002E520];
  v12(v8, v11, v3);
  v17 = sub_10001CDFC();
  v18 = sub_10001D4CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "#ContactsButton service have just set delegate", v19, 2u);
  }

  v16(v8, v3);
  [qword_10002E528 resume];
  return 0;
}

uint64_t type metadata accessor for ServiceDelegate()
{
  result = qword_10002D948;
  if (!qword_10002D948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100002300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000023A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000023E4(uint64_t a1, id *a2)
{
  result = sub_10001D2EC();
  *a2 = 0;
  return result;
}

uint64_t sub_10000245C(uint64_t a1, id *a2)
{
  v3 = sub_10001D2FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000024DC@<X0>(void *a1@<X8>)
{
  sub_10001D30C();
  v2 = sub_10001D2DC();

  *a1 = v2;
  return result;
}

uint64_t sub_100002520()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10001CDEC();
}

uint64_t sub_10000256C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10001CDDC();
}

Swift::Int sub_1000025C4()
{
  sub_10001D6FC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_10001CDDC();
  return sub_10001D70C();
}

uint64_t sub_10000262C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_10001CDCC();
}

uint64_t sub_100002698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10001D2DC();

  *a2 = v5;
  return result;
}

uint64_t sub_1000026E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001D30C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000270C(uint64_t a1)
{
  v2 = sub_100002B34(&qword_10002D9F0, type metadata accessor for UIContentSizeCategory);
  v3 = sub_100002B34(&qword_10002D9F8, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000027C8()
{
  v1 = *v0;
  sub_10001D30C();
  v2 = sub_10001D3BC();

  return v2;
}

uint64_t sub_100002804()
{
  v1 = *v0;
  sub_10001D30C();
  sub_10001D35C();
}

Swift::Int sub_100002858()
{
  v1 = *v0;
  sub_10001D30C();
  sub_10001D6FC();
  sub_10001D35C();
  v2 = sub_10001D70C();

  return v2;
}

uint64_t sub_1000028CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10001D30C();
  v6 = v5;
  if (v4 == sub_10001D30C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10001D6BC();
  }

  return v9 & 1;
}

uint64_t sub_10000295C()
{
  result = sub_10001CE1C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_1000029F0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029FC(uint64_t a1, int a2)
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

uint64_t sub_100002A1C(uint64_t result, int a2, int a3)
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

__n128 sub_100002A84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002B34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002BC4(void *a1)
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10ContactsUI19ContactsButtonAgent_];
  [a1 setExportedInterface:v2];

  v3 = sub_10001CDFC();
  v4 = sub_10001D4CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017934(0xD000000000000013, 0x8000000100020F10, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "#ContactsButton service exporting interface %s", v5, 0xCu);
    sub_100002F44(v6);
  }

  v7 = objc_allocWithZone(type metadata accessor for ContactsButtonServiceProvider());
  v8 = a1;
  sub_1000118B8(v8);
  v10 = v9;
  [v8 setExportedObject:v9];
  v11 = v10;
  v12 = sub_10001CDFC();
  v13 = sub_10001D4CC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "#ContactsButton service exporting object %@", v14, 0xCu);
    sub_100002E94(v15);
  }

  [v8 resume];
  v17 = sub_10001CDFC();
  v18 = sub_10001D4CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "#ContactsButton service resuming connection...", v19, 2u);
  }

  return 1;
}

uint64_t sub_100002E94(uint64_t a1)
{
  v2 = sub_100002EFC(&qword_10002DA60, &qword_10001ECF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002EFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002F44(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_100002FA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002FB0(uint64_t a1, int a2)
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

uint64_t sub_100002FD0(uint64_t result, int a2, int a3)
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

void sub_100003034(uint64_t a1, unint64_t *a2)
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

id sub_10000311C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_100002EFC(&qword_10002DD18, "PB");
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_10001CD2C();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v13 = objc_allocWithZone(LSApplicationExtensionRecord);

  v14 = sub_1000035A4();
  v31 = v10;
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = sub_10001D2DC();
  v18 = [v16 applicationIsInstalled:v17];

  if (v18)
  {
    if (!v14)
    {
      v19 = objc_allocWithZone(LSApplicationRecord);

      v25 = sub_10001721C(a1, a2, 0);
      v26 = [v25 URL];
      v27 = v30;
      sub_10001CD1C();

      v28 = v31;
      sub_1000046D8(v31);
      v12(v27, 0, 1, v11);
      sub_100004848(v27, v28);
      return sub_100004848(v28, v32);
    }
  }

  else if (!v14)
  {
    sub_1000046D8(v31);
    v23 = v32;
    v24 = 1;
    return (v12)(v23, v24, 1, v11);
  }

  v20 = v14;
  v21 = [v20 URL];
  v22 = v32;
  sub_10001CD1C();

  sub_1000046D8(v31);
  v23 = v22;
  v24 = 0;
  return (v12)(v23, v24, 1, v11);
}

id sub_1000035A4()
{
  v1 = sub_10001D2DC();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_10001CCFC();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100003670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100002EFC(&qword_10002DD18, "PB");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v131 - v10;
  v12 = sub_10001CD2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v143 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v142 = &v131 - v18;
  v19 = __chkstk_darwin(v17);
  v144 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v131 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v131 - v25;
  __chkstk_darwin(v24);
  v28 = &v131 - v27;
  type metadata accessor for ContactsButtonPurposeStringHelper();
  v145 = a1;
  v146 = a2;
  sub_10000311C(a1, a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000046D8(v11);
    if (qword_10002D8B0 != -1)
    {
LABEL_51:
      swift_once();
    }

    v29 = sub_10001CE1C();
    sub_1000023A4(v29, qword_10002E558);
    v30 = v146;

    v31 = sub_10001CDFC();
    v32 = sub_10001D4EC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v151[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100017934(v145, v30, v151);
      _os_log_impl(&_mh_execute_header, v31, v32, "#ContactsButton unable to get url for %s", v33, 0xCu);
      sub_100002F44(v34);
    }

    return 0;
  }

  v147 = a3;
  v139 = v23;
  v35 = *(v13 + 32);
  v138 = v13 + 32;
  v137 = v35;
  v35(v28, v11, v12);
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v36 = sub_10001CE1C();
  v37 = sub_1000023A4(v36, qword_10002E558);
  v38 = *(v13 + 16);
  v136 = v13 + 16;
  v135 = v38;
  v38(v26, v28, v12);
  v39 = v146;

  v140 = v37;
  v40 = sub_10001CDFC();
  v41 = sub_10001D4CC();

  v42 = os_log_type_enabled(v40, v41);
  v148 = a4;
  v141 = v13;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v151[0] = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_100017934(v145, v39, v151);
    *(v43 + 12) = 2080;
    sub_100004740();
    v44 = sub_10001D6AC();
    v46 = v45;
    v47 = *(v13 + 8);
    v47(v26, v12);
    v48 = sub_100017934(v44, v46, v151);

    *(v43 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "#ContactsButton bundle for %s found at %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v47 = *(v13 + 8);
    v47(v26, v12);
  }

  v49 = objc_allocWithZone(NSBundle);
  sub_10001CD0C(v50);
  v52 = v51;
  v53 = [v49 initWithURL:v51];

  if (!v53)
  {
    v95 = v146;

    v96 = sub_10001CDFC();
    v97 = sub_10001D4EC();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v151[0] = v99;
      *v98 = 136315138;
      *(v98 + 4) = sub_100017934(v145, v95, v151);
      _os_log_impl(&_mh_execute_header, v96, v97, "#ContactsButton failed to create bundle for %s", v98, 0xCu);
      sub_100002F44(v99);
    }

    v47(v28, v12);
    return 0;
  }

  v132 = v47;
  v133 = v28;
  v134 = v12;
  v149 = v53;
  v54 = [v53 preferredLocalizations];
  v55 = sub_10001D3FC();

  v56 = *(v55 + 16);
  if (!v56)
  {
LABEL_24:

    v75 = sub_10001D2DC();
    v76 = sub_10001D2DC();
    v77 = v149;
    v78 = [v149 URLForResource:v75 withExtension:v76];

    if (!v78)
    {
      v100 = v146;

      v101 = sub_10001CDFC();
      v102 = sub_10001D4EC();

      v103 = os_log_type_enabled(v101, v102);
      v104 = v134;
      if (v103)
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v151[0] = v106;
        *v105 = 136315138;
        *(v105 + 4) = sub_100017934(v145, v100, v151);
        _os_log_impl(&_mh_execute_header, v101, v102, "#ContactsButton can't find Info.plist for %s", v105, 0xCu);
        sub_100002F44(v106);
      }

      v132(v133, v104);
      return 0;
    }

    v79 = v144;
    sub_10001CD1C();

    v80 = v139;
    v81 = v134;
    v137(v139, v79, v134);
    v107 = sub_10001CD3C();
    v109 = v108;
    v110 = objc_opt_self();
    isa = sub_10001CD4C().super.isa;
    v151[0] = 0;
    v112 = [v110 propertyListWithData:isa options:0 format:0 error:v151];

    if (v112)
    {
      v113 = v151[0];
      sub_10001D58C();
      sub_100004798(v107, v109);
      swift_unknownObjectRelease();
      sub_100002EFC(&qword_10002DD28, "PB");
      v114 = swift_dynamicCast();
      v82 = v142;
      if (v114)
      {
        v115 = v150;
        if (v150)
        {
          if (*(v150 + 16) && (v116 = sub_100017EE0(v147, v148), (v117 & 1) != 0))
          {
            sub_1000047EC(*(v115 + 56) + 32 * v116, v151);

            if (swift_dynamicCast())
            {

              v118 = v132;
              v132(v80, v81);
              v118(v133, v81);
              return v150;
            }
          }

          else
          {
          }
        }
      }

      v135(v82, v80, v81);
      v120 = v148;

      v121 = sub_10001CDFC();
      v122 = sub_10001D4EC();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v151[0] = swift_slowAlloc();
        *v123 = 136315394;
        *(v123 + 4) = sub_100017934(v147, v120, v151);
        *(v123 + 12) = 2080;
        sub_100004740();
        v124 = sub_10001D6AC();
        v126 = v125;
        v127 = v132;
        v132(v82, v81);
        v128 = sub_100017934(v124, v126, v151);

        *(v123 + 14) = v128;
        _os_log_impl(&_mh_execute_header, v121, v122, "#ContactsButton no %s in %s", v123, 0x16u);
        swift_arrayDestroy();

        v127(v139, v81);
        v127(v133, v81);
        return 0;
      }
    }

    else
    {
      v119 = v151[0];
      sub_10001CCFC();

      swift_willThrow();
      sub_100004798(v107, v109);
      v82 = v143;
      v135(v143, v80, v81);
      swift_errorRetain();
      v83 = sub_10001CDFC();
      v84 = sub_10001D4EC();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v151[0] = swift_slowAlloc();
        *v85 = 136315394;
        sub_100004740();
        v86 = sub_10001D6AC();
        v88 = v87;
        v89 = v82;
        v90 = v132;
        v132(v89, v81);
        v91 = sub_100017934(v86, v88, v151);

        *(v85 + 4) = v91;
        *(v85 + 12) = 2080;
        swift_getErrorValue();
        v92 = sub_10001D6EC();
        v94 = sub_100017934(v92, v93, v151);

        *(v85 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v83, v84, "#ContactsButton encountered an error reading %s: %s", v85, 0x16u);
        swift_arrayDestroy();

        v90(v139, v81);
        v90(v133, v81);
        return 0;
      }
    }

    v129 = v132;
    v132(v82, v81);
    v129(v80, v81);
    v129(v133, v81);
    return 0;
  }

  v57 = 0;
  v58 = (v55 + 40);
  v59 = v148;
  while (1)
  {
    if (v57 >= *(v55 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    v61 = *(v58 - 1);
    v60 = *v58;

    v62 = v147;
    v63 = sub_10001D2DC();
    v64 = sub_10001D2DC();
    v65 = sub_10001D2DC();

    v66 = [v149 localizedStringForKey:v63 value:0 table:v64 localization:v65];

    v67 = sub_10001D30C();
    v69 = v68;

    v70 = v67 == v62 && v69 == v59;
    if (!v70 && (sub_10001D6BC() & 1) == 0)
    {
      break;
    }

    ++v57;

    v58 += 2;
    if (v56 == v57)
    {
      goto LABEL_24;
    }
  }

  v71 = sub_10001CDFC();
  v72 = sub_10001D4CC();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v151[0] = v74;
    *v73 = 136315138;
    *(v73 + 4) = sub_100017934(v67, v69, v151);
    _os_log_impl(&_mh_execute_header, v71, v72, "#ContactsButton fetched possibly localized purpose string: %s", v73, 0xCu);
    sub_100002F44(v74);
  }

  v132(v133, v134);
  return v67;
}

uint64_t sub_1000046D8(uint64_t a1)
{
  v2 = sub_100002EFC(&qword_10002DD18, "PB");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004740()
{
  result = qword_10002DD20;
  if (!qword_10002DD20)
  {
    sub_10001CD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD20);
  }

  return result;
}

uint64_t sub_100004798(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000047EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EFC(&qword_10002DD18, "PB");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1000048B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v7 = &_swiftEmptyArrayStorage;
    sub_10001D61C();
    v4 = a1 + 32;
    do
    {
      sub_1000047EC(v4, &v6);
      sub_100002EFC(&unk_10002DDD0, &unk_10001E5D0);
      swift_dynamicCast();
      sub_10001D5FC();
      v5 = v7[2];
      sub_10001D62C();
      sub_10001D63C();
      sub_10001D60C();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000049AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_10001D3DC();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_10001D40C();
  }

  return sub_10001D42C();
}

void sub_100004A20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

void sub_100004A7C(id *a1, unint64_t a2)
{
  v5 = [*a1 emailAddresses];
  sub_100002EFC(&qword_10002DDF0, &qword_10001E5E0);
  v6 = sub_10001D3FC();

  if (v6 >> 62)
  {
    v7 = sub_10001D64C();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1000181D0(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v37 = a2;
  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_10001D5DC();
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = [v9 value];
    v12 = sub_10001D30C();
    v14 = v13;

    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      sub_1000181D0((v15 > 1), v16 + 1, 1);
    }

    ++v8;
    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v14;
  }

  while (v7 != v8);

  a2 = v37;
LABEL_14:
  v18 = objc_opt_self();
  isa = sub_10001D3EC().super.isa;

  v20 = [v18 emailAddressesFromStrings:isa invalidAddresses:0];

  sub_1000072F8(0, &qword_10002DDE8, ECEmailAddress_ptr);
  v2 = sub_10001D3FC();

  if (v2 >> 62)
  {
    goto LABEL_38;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
LABEL_41:
        v21 = sub_10001D64C();
      }

      else
      {
        v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v22 = 0;
      v23 = v2 & 0xC000000000000001;
      v32 = v2 + 32;
      v33 = v2 & 0xFFFFFFFFFFFFFF8;
      v24 = a2 & 0xC000000000000001;
      v38 = v2;
      v34 = v2 & 0xC000000000000001;
      v35 = v3;
LABEL_19:
      if (v23)
      {
        v25 = sub_10001D5DC();
      }

      else
      {
        if (v22 >= *(v33 + 16))
        {
          __break(1u);
          return;
        }

        v25 = *(v32 + 8 * v22);
      }

      v26 = v25;
      v27 = __OFADD__(v22, 1);
      v28 = v22 + 1;
      if (!v27)
      {
        break;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      v3 = sub_10001D64C();
      if (!v3)
      {
        goto LABEL_34;
      }
    }

    v36 = v28;
    for (i = 0; v21 != i; ++i)
    {
      if (v24)
      {
        v30 = a2;
        v31 = sub_10001D5DC();
      }

      else
      {
        if (i >= *(v6 + 16))
        {
          goto LABEL_36;
        }

        v30 = a2;
        v31 = *(a2 + 8 * i + 32);
      }

      a2 = v31;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v2 = [v31 compare:v26];

      a2 = v30;
      if (!v2)
      {

        return;
      }
    }

    v22 = v36;
    v2 = v38;
    v23 = v34;
    if (v36 != v35)
    {
      goto LABEL_19;
    }
  }

LABEL_34:
}

uint64_t sub_100004E20(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1000176A0(result, v11, 1, v3);
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

uint64_t sub_100004F38(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10001D6FC();
  sub_10001D35C();
  v9 = sub_10001D70C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10001D6BC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000052E8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100005088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002EFC(&qword_10002DDF8, qword_10001E5E8);
  result = sub_10001D5BC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10001D6FC();
      sub_10001D35C();
      result = sub_10001D70C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1000052E8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100005088(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100005468();
      goto LABEL_16;
    }

    sub_1000055C4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10001D6FC();
  sub_10001D35C();
  result = sub_10001D70C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10001D6BC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10001D6CC();
  __break(1u);
  return result;
}

void *sub_100005468()
{
  v1 = v0;
  sub_100002EFC(&qword_10002DDF8, qword_10001E5E8);
  v2 = *v0;
  v3 = sub_10001D5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000055C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002EFC(&qword_10002DDF8, qword_10001E5E8);
  result = sub_10001D5BC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10001D6FC();

      sub_10001D35C();
      result = sub_10001D70C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000057FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void *sub_1000058A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100005A00()
{
  v0 = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  sub_100002EFC(&qword_10002DDC8, &unk_10001E5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001E580;
  *(inited + 56) = swift_getObjectType();
  *(inited + 32) = v0;
  v2 = sub_10001D30C();
  *(inited + 88) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 72) = v3;
  v4 = sub_10001D30C();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  v6 = sub_10001D30C();
  *(inited + 152) = &type metadata for String;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  v8 = sub_10001D30C();
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v8;
  *(inited + 168) = v9;
  swift_unknownObjectRetain();
  sub_1000048B8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = objc_allocWithZone(CNContactFetchRequest);
  sub_100002EFC(&unk_10002DDD0, &unk_10001E5D0);
  isa = sub_10001D3EC().super.isa;

  v12 = [v10 initWithKeysToFetch:isa];

  v23 = _swiftEmptyArrayStorage;
  v13 = [objc_allocWithZone(CNContactStore) init];
  v14 = swift_allocObject();
  *(v14 + 16) = &v23;
  v15 = swift_allocObject();
  v15[2] = sub_100005D88;
  v15[3] = v14;
  aBlock[4] = sub_100005DA0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004A20;
  aBlock[3] = &unk_100029430;
  v16 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v17 = [v13 enumerateContactsWithFetchRequest:v12 error:aBlock usingBlock:v16];
  _Block_release(v16);

  v18 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v17)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10001CCFC();

    swift_willThrow();

    swift_unknownObjectRelease();
  }

  v20 = v23;

  return v20;
}

uint64_t sub_100005DA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100005DC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100005DE0(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [objc_allocWithZone(CNContactStore) init];
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_10001CE1C();
  sub_1000023A4(v7, qword_10002E558);
  v8 = a1;

  v9 = sub_10001CDFC();
  v10 = sub_10001D4CC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315650;
    v12 = [v8 identifier];
    v13 = v6;
    v14 = sub_10001D30C();
    v15 = a2;
    v17 = v16;

    v18 = sub_100017934(v14, v17, &v25);

    *(v11 + 4) = v18;
    v6 = v13;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v22 = v8;
    *(v11 + 22) = 2080;
    v19 = v8;
    *(v11 + 24) = sub_100017934(v15, a3, &v25);
    _os_log_impl(&_mh_execute_header, v9, v10, "#ContactsButton adding contact with ID %s (%@) to bundle %s", v11, 0x20u);
    sub_100002E94(v22);

    swift_arrayDestroy();
  }

  v20 = sub_10001D2DC();
  v21 = [v8 identifier];
  if (!v21)
  {
    sub_10001D30C();
    v23 = sub_10001D2DC();

    v21 = v23;
  }

  v24 = v21;
  [v6 addLimitedAccessForBundle:v20 contactIdentifier:?];
}

uint64_t sub_10000609C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = sub_10001D2DC();
  v8 = [v6 predicateForContactsMatchingName:v7 options:1];

  sub_100002EFC(&unk_10002DDD0, &unk_10001E5D0);
  isa = sub_10001D3EC().super.isa;
  v23 = 0;
  v10 = [a3 unifiedContactsMatchingPredicate:v8 keysToFetch:isa error:&v23];

  v11 = v23;
  if (v10)
  {
    sub_1000072F8(0, &unk_10002DE00, CNContact_ptr);
    v12 = sub_10001D3FC();
    v13 = v11;
  }

  else
  {
    v14 = v23;
    sub_10001CCFC();

    swift_willThrow();
    if (qword_10002D8B0 != -1)
    {
      swift_once();
    }

    v15 = sub_10001CE1C();
    sub_1000023A4(v15, qword_10002E558);

    swift_errorRetain();
    v16 = sub_10001CDFC();
    v17 = sub_10001D4EC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_100017934(a1, a2, &v23);
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "#ContactsButton query failed for %s: %@", v18, 0x16u);
      sub_100002E94(v19);

      sub_100002F44(v20);
    }

    else
    {
    }

    return 0;
  }

  return v12;
}

uint64_t sub_1000063A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10001D4AC();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100004F38(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10000643C(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {

    return a1;
  }

  v3 = a2;
  sub_1000072F8(0, &qword_10002DDE0, NSArray_ptr);
  v4 = _swiftEmptyArrayStorage;
  v32 = sub_10001D55C();
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = sub_1000178B0(*(v3 + 16), 0);
    v8 = sub_1000058A8(v35, v7 + 4, v5, v3);
    v9 = v35[0];
    a1 = v35[1];
    v4 = v35[2];

    sub_1000072F0();
    if (v8 != v5)
    {
      __break(1u);
      goto LABEL_32;
    }

    a1 = v6;
    v4 = _swiftEmptyArrayStorage;
  }

  v10 = objc_opt_self();
  isa = sub_10001D3EC().super.isa;

  v35[0] = v32;
  v12 = [v10 emailAddressesFromStrings:isa invalidAddresses:v35];

  v9 = v35[0];
  v7 = v35[0];

  sub_1000072F8(0, &qword_10002DDE8, ECEmailAddress_ptr);
  v3 = sub_10001D3FC();

  if (v7 && [v7 count] >= 1)
  {
    if (qword_10002D8B0 == -1)
    {
LABEL_9:
      v13 = sub_10001CE1C();
      sub_1000023A4(v13, qword_10002E558);
      v14 = sub_10001CDFC();
      v15 = sub_10001D4EC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v7;
        *v17 = v9;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v14, v15, "#ContactsButton failed to convert these addresses: %@", v16, 0xCu);
        sub_100002E94(v17);
      }

      goto LABEL_12;
    }

LABEL_32:
    swift_once();
    goto LABEL_9;
  }

LABEL_12:
  v35[0] = v4;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001D64C())
  {
    v31 = v7;
    v33 = i;
    v20 = 0;
    v21 = a1 & 0xC000000000000001;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v21)
      {
        v23 = sub_10001D5DC();
      }

      else
      {
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_26;
        }

        v23 = *(a1 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v34 = v23;
      sub_100004A7C(&v34, v3);
      if (v26)
      {
        sub_10001D5FC();
        v7 = v21;
        v27 = v3;
        v28 = a1;
        v29 = *(v35[0] + 2);
        sub_10001D62C();
        a1 = v28;
        v3 = v27;
        v21 = v7;
        sub_10001D63C();
        sub_10001D60C();
        i = v33;
      }

      else
      {
      }

      ++v20;
      if (v25 == i)
      {
        a1 = v35[0];
        v7 = v31;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_29:

  return a1;
}

void *sub_10000685C(unint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a2 + 16))
  {

    return a1;
  }

  v5 = a2;
  v67 = _swiftEmptyArrayStorage;
  v6 = *(a2 + 56);
  v54 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v58 = (v7 + 63) >> 6;

  v10 = 0;
  v59 = a1;
  v56 = a3;
  for (i = v5; ; v5 = i)
  {
    do
    {
      if (!v9)
      {
        do
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v11 >= v58)
          {

            v65 = _swiftEmptyArrayStorage;
            if (a1 >> 62)
            {
              goto LABEL_56;
            }

            v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_36;
          }

          v9 = *(v54 + 8 * v11);
          ++v10;
        }

        while (!v9);
        v10 = v11;
      }

      v12 = (*(v5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = 0xE000000000000000;
      v65 = 0;
      v66 = 0xE000000000000000;
      v16 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      v61 = v14;
      v62 = v13;
      v63 = 0;
      v64 = v16;

      v17 = sub_10001D39C();
      if (v18)
      {
        v19 = v17;
        v20 = v18;
        do
        {
          if ((sub_10001D2AC() & 1) == 0)
          {
            v68._countAndFlagsBits = v19;
            v68._object = v20;
            sub_10001D37C(v68);
          }

          v19 = sub_10001D39C();
          v20 = v21;
        }

        while (v21);
        v22 = v65;
        v15 = v66;
      }

      else
      {
        v22 = 0;
      }

      v9 &= v9 - 1;

      v23 = sub_10000609C(v22, v15, a3);
    }

    while (!v23);
    if (v23 >> 62)
    {
      v24 = v23;
      v25 = sub_10001D64C();
      if (!v25)
      {
LABEL_32:

        v27 = _swiftEmptyArrayStorage;
        goto LABEL_33;
      }
    }

    else
    {
      v24 = v23;
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_32;
      }
    }

    v61 = _swiftEmptyArrayStorage;
    sub_1000181D0(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      break;
    }

    v55 = v9;
    v26 = 0;
    v27 = v61;
    v28 = v24;
    v60 = v24 & 0xC000000000000001;
    v29 = v24;
    do
    {
      if (v60)
      {
        v30 = sub_10001D5DC();
      }

      else
      {
        v30 = *(v28 + 8 * v26 + 32);
      }

      v31 = v30;
      v32 = [v30 identifier];
      v33 = sub_10001D30C();
      v35 = v34;

      v61 = v27;
      v37 = v27[2];
      v36 = v27[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000181D0((v36 > 1), v37 + 1, 1);
        v27 = v61;
      }

      ++v26;
      v27[2] = v37 + 1;
      v38 = &v27[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
      v28 = v29;
    }

    while (v25 != v26);

    a1 = v59;
    v9 = v55;
LABEL_33:
    sub_100004E20(v27);
    a3 = v56;
  }

  while (1)
  {
    __break(1u);
LABEL_56:
    v39 = sub_10001D64C();
LABEL_36:

    if (!v39)
    {
      break;
    }

    v40 = 0;
    v60 = a1 & 0xC000000000000001;
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v60)
      {
        v42 = sub_10001D5DC();
      }

      else
      {
        if (v40 >= *(v58 + 16))
        {
          goto LABEL_54;
        }

        v42 = *(a1 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v45 = v67;

      v46 = [v43 identifier];
      v47 = sub_10001D30C();
      v49 = v48;

      v61 = v47;
      v62 = v49;
      __chkstk_darwin(v50);
      v53[2] = &v61;
      LOBYTE(v46) = sub_1000057FC(sub_100007298, v53, v45);

      if (v46)
      {
      }

      else
      {
        sub_10001D5FC();
        v41 = v65[2];
        sub_10001D62C();
        sub_10001D63C();
        sub_10001D60C();
      }

      a1 = v59;
      ++v40;
      if (v44 == v39)
      {
        v51 = v65;
        goto LABEL_50;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_50:

  return v51;
}

void *sub_100006D28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [objc_allocWithZone(CNContactStore) init];
  v9 = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  sub_100002EFC(&qword_10002DDC8, &unk_10001E5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001E580;
  *(inited + 56) = swift_getObjectType();
  *(inited + 32) = v9;
  v11 = sub_10001D30C();
  *(inited + 88) = &type metadata for String;
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = sub_10001D30C();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v13;
  *(inited + 104) = v14;
  v15 = sub_10001D30C();
  *(inited + 152) = &type metadata for String;
  *(inited + 128) = v15;
  *(inited + 136) = v16;
  v17 = sub_10001D30C();
  *(inited + 184) = &type metadata for String;
  v18 = v8;
  *(inited + 160) = v17;
  *(inited + 168) = v19;
  swift_unknownObjectRetain();
  sub_1000048B8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = sub_10000609C(a1, a2, v8);

  if (!v20)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v21 = sub_10001D2DC();
  v22 = [v8 fetchLimitedAccessContactIdentifiersForBundle:v21];

  v23 = sub_10001D3FC();
  v24 = sub_1000063A4(v23);

  if (qword_10002D8B0 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v25 = sub_10001CE1C();
    sub_1000023A4(v25, qword_10002E558);

    v26 = sub_10001CDFC();
    v27 = sub_10001D4DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v29;
      *v28 = 136315138;
      v30 = sub_10001D49C();
      v32 = sub_100017934(v30, v31, &v60);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "#ContactsButton already have contacts with IDs: %s", v28, 0xCu);
      sub_100002F44(v29);
    }

    v61 = _swiftEmptyArrayStorage;
    v33 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
      break;
    }

    v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_32;
    }

LABEL_7:
    v55 = v18;
    v35 = 0;
    v58 = v20 + 32;
    v59 = v20 & 0xC000000000000001;
    v18 = (v24 + 56);
    while (1)
    {
      if (v59)
      {
        v37 = sub_10001D5DC();
      }

      else
      {
        if (v35 >= *(v33 + 16))
        {
          goto LABEL_29;
        }

        v37 = *(v58 + 8 * v35);
      }

      v38 = v37;
      if (__OFADD__(v35++, 1))
      {
        break;
      }

      v20 = v33;
      v40 = [v37 identifier];
      v41 = sub_10001D30C();
      v43 = v42;

      if (*(v24 + 16) && (v44 = *(v24 + 40), sub_10001D6FC(), sub_10001D35C(), v45 = sub_10001D70C(), v46 = -1 << *(v24 + 32), v47 = v45 & ~v46, ((*&v18[(v47 >> 3) & 0xFFFFFFFFFFFFFF8] >> v47) & 1) != 0))
      {
        v48 = ~v46;
        while (1)
        {
          v49 = (*(v24 + 48) + 16 * v47);
          v50 = *v49 == v41 && v49[1] == v43;
          if (v50 || (sub_10001D6BC() & 1) != 0)
          {
            break;
          }

          v47 = (v47 + 1) & v48;
          if (((*&v18[(v47 >> 3) & 0xFFFFFFFFFFFFFF8] >> v47) & 1) == 0)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:

        sub_10001D5FC();
        v36 = v61[2];
        sub_10001D62C();
        sub_10001D63C();
        sub_10001D60C();
      }

      v33 = v20;
      if (v35 == v34)
      {
        v51 = v61;
        v18 = v55;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v34 = sub_10001D64C();
  if (v34)
  {
    goto LABEL_7;
  }

LABEL_32:
  v51 = _swiftEmptyArrayStorage;
LABEL_33:

  v53 = sub_10000643C(v51, a5);

  v52 = sub_10000685C(v53, a6, v18);

  swift_unknownObjectRelease();
  return v52;
}

uint64_t sub_100007298(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10001D6BC() & 1;
  }
}

uint64_t sub_1000072F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Class sub_100007364(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000089D4();
    v5.super.isa = sub_10001D28C().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_1000073F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002EFC(&unk_10002DEB0, ">B");
  v39 = a2;
  result = sub_10001D66C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_10001D6FC();
      sub_10001D35C();
      result = sub_10001D70C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100007694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100017EE0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000073F0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100017EE0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_10001D6DC();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000780C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_10000780C()
{
  v1 = v0;
  sub_100002EFC(&unk_10002DEB0, ">B");
  v2 = *v0;
  v3 = sub_10001D65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100007978(void *a1)
{
  v2 = sub_10001CC9C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_10001D30C();
  v10 = v9;

  sub_10001CC7C();
  if (v8 == sub_10001CBDC() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_10001D6BC();

    if ((v13 & 1) == 0)
    {
      if (qword_10002D8B0 != -1)
      {
        swift_once();
      }

      v14 = sub_10001CE1C();
      sub_1000023A4(v14, qword_10002E558);
      v15 = a1;
      v16 = sub_10001CDFC();
      v17 = sub_10001D4EC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v18 = 136315394;
        v19 = sub_10001CBDC();
        v21 = sub_100017934(v19, v20, &v43);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2080;
        v22 = [v15 domain];
        v23 = sub_10001D30C();
        v25 = v24;

        v26 = sub_100017934(v23, v25, &v43);

        *(v18 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v16, v17, "#ContactsButton #Analytics only %s is valid for this initter, got %s", v18, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }
  }

  v27 = [a1 code];
  v28 = v3[13];
  v28(v6, enum case for ContactButtonServiceErrorType.avatarTooLarge(_:), v2);
  v29 = sub_10001CC8C();
  v30 = v3[1];
  v30(v6, v2);
  if (v29 == v27)
  {

    return 1;
  }

  v28(v6, enum case for ContactButtonServiceErrorType.fontTooBig(_:), v2);
  v32 = sub_10001CC8C();
  v30(v6, v2);
  if (v32 == v27)
  {

    return 0x1000000;
  }

  v28(v6, enum case for ContactButtonServiceErrorType.fontTooSmall(_:), v2);
  v33 = sub_10001CC8C();
  v30(v6, v2);
  if (v33 == v27)
  {

    return 0x10000;
  }

  v28(v6, enum case for ContactButtonServiceErrorType._oldTimestamp(_:), v2);
  v34 = sub_10001CC8C();
  v30(v6, v2);
  if (v34 == v27)
  {

    return 0x100000000000000;
  }

  v28(v6, enum case for ContactButtonServiceErrorType.invalidContrast(_:), v2);
  v35 = sub_10001CC8C();
  v30(v6, v2);
  if (v35 == v27)
  {
    goto LABEL_22;
  }

  v28(v6, enum case for ContactButtonServiceErrorType.buttonOccluded(_:), v2);
  v36 = sub_10001CC8C();
  v30(v6, v2);
  if (v36 == v27)
  {
    goto LABEL_22;
  }

  v28(v6, enum case for ContactButtonServiceErrorType._mismatchedTokenPid(_:), v2);
  v37 = sub_10001CC8C();
  v30(v6, v2);
  if (v37 == v27)
  {

    return 0x1000000000000;
  }

  v28(v6, enum case for ContactButtonServiceErrorType._missingHitTest(_:), v2);
  v38 = sub_10001CC8C();
  v30(v6, v2);
  if (v38 == v27 || (v28(v6, enum case for ContactButtonServiceErrorType._missingAuthMessage(_:), v2), v39 = sub_10001CC8C(), v30(v6, v2), v39 == v27))
  {
LABEL_22:

    return 0;
  }

  v28(v6, enum case for ContactButtonServiceErrorType._slotIDMismatch(_:), v2);
  v40 = sub_10001CC8C();
  v30(v6, v2);
  if (v40 == v27)
  {

    return &_mh_execute_header;
  }

  else
  {
    v28(v6, enum case for ContactButtonServiceErrorType._invalidTimestamp(_:), v2);
    v41 = sub_10001CC8C() == v27;

    v30(v6, v2);
    return v41 << 40;
  }
}

void sub_100008030(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = swift_allocObject();
  v8 = a2;
  v9 = v7;
  v10 = &_swiftEmptyDictionarySingleton;
  *(v7 + 16) = &_swiftEmptyDictionarySingleton;
  if (v8)
  {
    v11 = sub_10001D2DC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = &_swiftEmptyDictionarySingleton;
    *(v9 + 16) = 0x8000000000000000;
    sub_100007694(v11, 0x4449656C646E7542, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v10 = aBlock[0];
    *(v9 + 16) = aBlock[0];
  }

  v60 = HIWORD(a3) & 1;
  v61 = HIBYTE(a3) & 1;
  v59 = (a3 >> 40) & 1;
  v13 = HIDWORD(a3) & 1;
  v14 = (a3 >> 24) & 1;
  v15 = (a3 >> 16) & 1;
  v16 = [objc_allocWithZone(NSNumber) initWithBool:a3 & 1];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v10;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v16, 0x6F54726174617641, 0xEE00656772614C6FLL, v17);
  v18 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v19 = [objc_allocWithZone(NSNumber) initWithBool:v14];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v18;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v19, 0x4C6F6F54746E6F46, 0xEC00000065677261, v20);
  v21 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v22 = [objc_allocWithZone(NSNumber) initWithBool:v15];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v21;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v22, 0x536F6F54746E6F46, 0xEC0000006C6C616DLL, v23);
  v24 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v25 = [objc_allocWithZone(NSNumber) initWithBool:v13];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v24;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v25, 0x5364696C61766E49, 0xED00004449746F6CLL, v26);
  v27 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v28 = [objc_allocWithZone(NSNumber) initWithBool:v59];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v27;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v28, 0xD000000000000015, 0x8000000100021290, v29);
  v30 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v31 = [objc_allocWithZone(NSNumber) initWithBool:v60];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v30;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v31, 0xD000000000000012, 0x80000001000212B0, v32);
  v33 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v34 = [objc_allocWithZone(NSNumber) initWithBool:v61];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v33;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v34, 0xD000000000000011, 0x80000001000212D0, v35);
  v36 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v37 = [objc_allocWithZone(NSNumber) initWithBool:a4 & 1];
  v38 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v36;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v37, 0x746E6F43726F6F50, 0xEC00000074736172, v38);
  v39 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v40 = [objc_allocWithZone(NSNumber) initWithBool:(a4 >> 8) & 1];
  v41 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v39;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v40, 0xD000000000000015, 0x80000001000212F0, v41);
  v42 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v43 = [objc_allocWithZone(NSNumber) initWithBool:(a4 >> 16) & 1];
  v44 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v42;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v43, 0x4C6F6F5477656956, 0xEC00000065677261, v44);
  v45 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v46 = [objc_allocWithZone(NSNumber) initWithBool:(a4 >> 24) & 1];
  v47 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v45;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v46, 0x536F6F5477656956, 0xEC0000006C6C616DLL, v47);
  v48 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v49 = [objc_allocWithZone(NSNumber) initWithBool:HIDWORD(a4) & 1];
  v50 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v48;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v49, 0x6E61725477656956, 0xEF746E6572617073, v50);
  v51 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v52 = [objc_allocWithZone(NSNumber) initWithBool:(a4 >> 40) & 1];
  v53 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v51;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v52, 0x4373615777656956, 0xED000066664F7475, v53);
  v54 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v55 = [objc_allocWithZone(NSNumber) initWithBool:HIWORD(a4) & 1];
  v56 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v54;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v55, 0xD000000000000019, 0x8000000100021310, v56);
  *(v9 + 16) = aBlock[0];
  v57 = sub_10001D2DC();
  aBlock[4] = sub_100008A20;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007364;
  aBlock[3] = &unk_1000294A8;
  v58 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v58);
}

void sub_1000086FC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  v5 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = &_swiftEmptyDictionarySingleton;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v5, 0x686374614D6D754ELL, 0xEA00000000007365, isUniquelyReferenced_nonNull_native);
  v7 = v15[0];
  *(v4 + 16) = v15[0];
  v8 = [objc_allocWithZone(NSNumber) initWithBool:a2 == 1];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v7;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v8, 0x6574617453434354, 0xEE00656E6F4E7349, v9);
  v10 = v15[0];
  *(v4 + 16) = v15[0];
  v11 = [objc_allocWithZone(NSNumber) initWithBool:a2 == 2];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v10;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v11, 0xD000000000000011, 0x8000000100021220, v12);
  *(v4 + 16) = v15[0];
  v13 = sub_10001D2DC();
  v15[4] = sub_100008988;
  v15[5] = v4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100007364;
  v15[3] = &unk_100029480;
  v14 = _Block_copy(v15);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_100008950()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008988()
{
  sub_100008D94(v0, "#ContactsButton #Analytics sending success event: %s");
}

uint64_t sub_1000089BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000089D4()
{
  result = qword_10002DEA8;
  if (!qword_10002DEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DEA8);
  }

  return result;
}

uint64_t sub_100008A20()
{
  sub_100008D94(v0, "#ContactsButton #Analytics sending fail event: %s");
}

void sub_100008A54(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  v5 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = &_swiftEmptyDictionarySingleton;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v5, 0xD000000000000011, 0x8000000100021360, isUniquelyReferenced_nonNull_native);
  v7 = v22[0];
  *(v4 + 16) = v22[0];
  v8 = [objc_allocWithZone(NSNumber) initWithBool:a1 == 0];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v7;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v8, 0xD000000000000014, 0x8000000100021380, v9);
  v10 = v22[0];
  *(v4 + 16) = v22[0];
  v11 = [objc_allocWithZone(NSNumber) initWithBool:a1 == 1];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v10;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v11, 0xD000000000000016, 0x80000001000213A0, v12);
  v13 = v22[0];
  *(v4 + 16) = v22[0];
  v14 = a1 > 9;
  v15 = [objc_allocWithZone(NSNumber) initWithBool:(a1 - 2) < 8];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v13;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v15, 0xD000000000000019, 0x80000001000213C0, v16);
  v17 = v22[0];
  *(v4 + 16) = v22[0];
  v18 = [objc_allocWithZone(NSNumber) initWithBool:v14];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v17;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v18, 0xD000000000000016, 0x80000001000213E0, v19);
  *(v4 + 16) = v22[0];
  v20 = sub_10001D2DC();
  v22[4] = sub_100008D60;
  v22[5] = v4;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100007364;
  v22[3] = &unk_1000294D0;
  v21 = _Block_copy(v22);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

uint64_t sub_100008D60()
{
  sub_100008D94(v0, "#ContactsButton #Analytics sending display event: %s");
}

uint64_t sub_100008D94(uint64_t a1, const char *a2)
{
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v4 = sub_10001CE1C();
  sub_1000023A4(v4, qword_10002E558);

  v5 = sub_10001CDFC();
  v6 = sub_10001D4CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = *(a1 + 16);
    sub_1000089D4();

    v10 = sub_10001D29C();
    v12 = v11;

    v13 = sub_100017934(v10, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
    sub_100002F44(v8);
  }

  swift_beginAccess();
  return *(a1 + 16);
}

uint64_t sub_100008F70()
{
  result = sub_10001D21C();
  v1 = 4.0;
  if (result)
  {
    v1 = 0.0;
  }

  dword_10002E538 = LODWORD(v1);
  return result;
}

id sub_100008FA0()
{
  result = [objc_opt_self() grayColor];
  qword_10002E540 = result;
  return result;
}

uint64_t sub_100008FDC()
{
  result = sub_10001D21C();
  v1 = 32.0;
  if ((result & 1) == 0)
  {
    v1 = 30.0;
  }

  qword_10002E548 = *&v1;
  return result;
}

BOOL sub_100009018()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth;
  v3 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth];
  v4 = &v0[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame];
  v5 = CGRectGetWidth(*&v0[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame]) + 0.01;
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v6 = v3 / v5;
  v7 = sub_10001CE1C();
  sub_1000023A4(v7, qword_10002E558);
  v8 = v0;
  v9 = sub_10001CDFC();
  v10 = sub_10001D4CC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    *(v11 + 4) = *&v1[v2];
    *(v11 + 12) = 2048;
    *(v11 + 14) = CGRectGetWidth(*v4);
    *(v11 + 22) = 2048;
    *(v11 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v9, v10, "#ContactsButton avatar width %f to frame width %f is %f", v11, 0x20u);
  }

  return v6 <= 0.45;
}

id sub_10000918C(void *a1)
{
  [a1 setAccessibilityContrast:0];

  return [a1 setAccessibilityButtonShapes:0];
}

void sub_1000091DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100009314(char a1, double a2)
{
  v3 = v2;
  v5 = &OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_tintColor;
  if ((a1 & 1) == 0)
  {
    v5 = &OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFontColor;
  }

  v6 = *&v2[*v5];
  v7 = [v6 CGColor];
  Alpha = CGColorGetAlpha(v7);

  v9 = Alpha * a2;
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  sub_10000F168(v6, v11, Alpha * a2);
  v13 = v12;

  v14 = [v10 blackColor];
  sub_10000F168(v6, v14, v9);
  v16 = v15;

  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v17 = sub_10001CE1C();
  sub_1000023A4(v17, qword_10002E558);
  v18 = v3;
  v19 = sub_10001CDFC();
  v20 = sub_10001D4DC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134219008;
    *(v21 + 4) = a2;
    *(v21 + 12) = 2048;
    v22 = [*&v18[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFontColor] CGColor];
    v23 = CGColorGetAlpha(v22);

    *(v21 + 14) = v23;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v9;
    *(v21 + 32) = 2048;
    *(v21 + 34) = v13;
    *(v21 + 42) = 2048;
    *(v21 + 44) = v16;
    _os_log_impl(&_mh_execute_header, v19, v20, "#ContactsButton contrastRatio for font, cumulativeOpacity %f , fontAlpha %f , fontEffectiveOpacity %f , luminanceVsWhite %f , luminanceVsBlack %f", v21, 0x34u);
  }

  v24 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bgColor;
  v25 = [*&v18[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bgColor] CGColor];
  v26 = CGColorGetAlpha(v25);

  v27 = v26 * a2;
  v28 = *&v18[v24];
  v29 = [v10 whiteColor];
  sub_10000F168(v28, v29, v26 * a2);
  v31 = v30;

  v32 = *&v18[v24];
  v33 = [v10 blackColor];
  sub_10000F168(v32, v33, v27);
  v35 = v34;

  v36 = v18;
  v37 = sub_10001CDFC();
  v38 = sub_10001D4DC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134219008;
    *(v39 + 4) = a2;
    *(v39 + 12) = 2048;
    v40 = [*&v18[v24] CGColor];
    v41 = CGColorGetAlpha(v40);

    *(v39 + 14) = v41;
    *(v39 + 22) = 2048;
    *(v39 + 24) = v27;
    *(v39 + 32) = 2048;
    *(v39 + 34) = v31;
    *(v39 + 42) = 2048;
    *(v39 + 44) = v35;
    _os_log_impl(&_mh_execute_header, v37, v38, "#ContactsButton contrastRatio for BG, cumulativeOpacity %f , fontAlpha %f , fontEffectiveOpacity %f , luminanceVsWhite %f , luminanceVsBlack %f", v39, 0x34u);
  }

  v42 = (v16 + 0.05) / (v31 + 0.05);
  if (v42 < 1.5)
  {
    v43 = (v35 + 0.05) / (v13 + 0.05);
    v44 = sub_10001CDFC();
    if (v43 < 1.5)
    {
      v45 = sub_10001D4EC();
      if (!os_log_type_enabled(v44, v45))
      {
        v47 = 0;
        goto LABEL_21;
      }

      v46 = swift_slowAlloc();
      *v46 = 134218496;
      *(v46 + 4) = v42;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v43;
      *(v46 + 22) = 2048;
      *(v46 + 24) = 0x3FF8000000000000;
      _os_log_impl(&_mh_execute_header, v44, v45, "#ContactsButton contrast ratio failed! fontDarkToWhite: %f , bgDarkToFontWhite %f, thresholdFont %f", v46, 0x20u);
      v47 = 0;
      goto LABEL_18;
    }

    v48 = sub_10001D4DC();
    if (os_log_type_enabled(v44, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = v43;
      v50 = "#ContactsButton luminance ratio OK for font brightest to background darkest: %f";
      goto LABEL_17;
    }

LABEL_19:
    v47 = 1;
    goto LABEL_21;
  }

  v44 = sub_10001CDFC();
  v48 = sub_10001D4DC();
  if (!os_log_type_enabled(v44, v48))
  {
    goto LABEL_19;
  }

  v49 = swift_slowAlloc();
  *v49 = 134217984;
  *(v49 + 4) = v42;
  v50 = "#ContactsButton luminance ratio OK for font darkest to background brightest: %f";
LABEL_17:
  _os_log_impl(&_mh_execute_header, v44, v48, v50, v49, 0xCu);
  v47 = 1;
LABEL_18:

LABEL_21:

  return v47;
}

void sub_100009A60(double a1)
{
  sub_100002EFC(&unk_10002E330, &qword_10001EBA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001E6B0;
  *(inited + 32) = kCGImageSourceCreateThumbnailFromImageIfAbsent;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCGImageSourceCreateThumbnailWithTransform;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kCGImageSourceThumbnailMaxPixelSize;
  *(inited + 144) = &type metadata for CGFloat;
  *(inited + 120) = a1 * 4.0;
  v4 = kCGImageSourceCreateThumbnailFromImageIfAbsent;
  v5 = kCGImageSourceCreateThumbnailWithTransform;
  v6 = kCGImageSourceThumbnailMaxPixelSize;
  sub_100018DE8(inited);
  swift_setDeallocating();
  sub_100002EFC(&qword_10002E510, &qword_10001EBB0);
  swift_arrayDestroy();
  v7 = *v1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData;
  v8 = *(v7 + 8);
  if (v8 >> 60 == 15)
  {

    sub_10000F258();
    return;
  }

  v9 = *v7;
  sub_100010F80(*v7, *(v7 + 8));
  isa = sub_10001CD4C().super.isa;
  v11 = CGImageSourceCreateWithData(isa, 0);

  if (v11)
  {
    type metadata accessor for CFString(0);
    sub_100010FD4(&qword_10002E340, type metadata accessor for CFString);
    v12 = v11;
    v13 = sub_10001D28C().super.isa;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v12, 0, v13);
    sub_10000F908(v9, v8);

    if (ThumbnailAtIndex)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_100009C84()
{
  v1 = v0;
  v2 = sub_10001CD9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F00();
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_10001CE1C();
  sub_1000023A4(v7, qword_10002E558);
  sub_100010280(v0, v22);
  v8 = sub_10001CDFC();
  v9 = sub_10001D50C();
  sub_1000102B8(v1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315138;
    v13 = [*(v1 + 8) localization];
    v14 = sub_10001D30C();
    v16 = v15;

    v17 = sub_100017934(v14, v16, v22);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "#ContactsButton localization value: %s", v11, 0xCu);
    sub_100002F44(v12);

    v2 = v21;
  }

  v18 = [*(v1 + 8) localization];
  sub_10001D30C();

  sub_10001CD7C();
  v19 = sub_10001CD8C();
  (*(v3 + 8))(v6, v2);
  return v19 != 1;
}

void sub_100009F00()
{
  v1 = v0;
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001CE1C();
  sub_1000023A4(v2, qword_10002E558);
  sub_100010280(v0, v7);
  v3 = sub_10001CDFC();
  v4 = sub_10001D50C();
  sub_1000102B8(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134218752;
    *(v5 + 4) = *(v1[2] + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth);
    *(v5 + 12) = 2048;
    v6 = *v1;
    *(v5 + 14) = *(*v1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_buttonWidth);
    *(v5 + 22) = 2048;
    *(v5 + 24) = *(v6 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_buttonHeight);
    *(v5 + 32) = 2048;
    *(v5 + 34) = *(v6 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_trailingEdgeFromAvatar);
    _os_log_impl(&_mh_execute_header, v3, v4, "#ContactsButton avatarWidth: %f buttonWidth: %f buttonHeight: %f trailingEdgeFromAvatar: %f", v5, 0x2Au);
  }
}

uint64_t sub_10000A058@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_100002EFC(&qword_10002E060, &qword_10001E8E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v63 = &v56 - v4;
  v5 = sub_10001CE3C();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002EFC(&qword_10002E068, &qword_10001E8F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v56 - v10;
  v12 = sub_10001CEDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002EFC(&qword_10002E140, &qword_10001EA40);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v56 - v19;
  v21 = sub_100002EFC(&qword_10002E148, &qword_10001EA48);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v56 - v23;
  v25 = sub_100002EFC(&qword_10002E150, &qword_10001EA50);
  v59 = *(v25 - 8);
  v60 = v25;
  v26 = *(v59 + 64);
  __chkstk_darwin(v25);
  v56 = &v56 - v27;
  v57 = sub_100002EFC(&qword_10002E158, &qword_10001EA58);
  v28 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v58 = &v56 - v29;
  *v20 = sub_10001CF7C();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v30 = sub_100002EFC(&qword_10002E160, &qword_10001EA60);
  sub_10000A6F4(v1, &v20[*(v30 + 44)]);
  KeyPath = swift_getKeyPath();
  v32 = v1;
  v33 = sub_100009C84();
  v34 = &enum case for LayoutDirection.rightToLeft(_:);
  if (!v33)
  {
    v34 = &enum case for LayoutDirection.leftToRight(_:);
  }

  (*(v13 + 104))(v16, *v34, v12);
  v35 = &v24[*(v21 + 36)];
  v36 = sub_100002EFC(&qword_10002E0A0, &qword_10001E950);
  (*(v13 + 32))(v35 + *(v36 + 28), v16, v12);
  *v35 = KeyPath;
  sub_1000100C4(v20, v24);
  v37 = *v32;
  v38 = *(*v32 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_contentSizeCategory);
  sub_10001CECC();
  v39 = sub_10001CEBC();
  v40 = *(v39 - 8);
  result = (*(v40 + 48))(v11, 1, v39);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100010134();
    v42 = v56;
    sub_10001D12C();
    sub_100010EC8(v24, &qword_10002E148, &qword_10001EA48);
    (*(v40 + 8))(v11, v39);
    [v32[1] userInterfaceStyle];
    v43 = v63;
    sub_10001CE4C();
    v45 = v61;
    v44 = v62;
    v46 = *(v61 + 48);
    if (v46(v43, 1, v62) == 1)
    {
      v47 = v64;
      (*(v45 + 104))(v64, enum case for ColorScheme.light(_:), v44);
      if (v46(v43, 1, v44) != 1)
      {
        sub_100010EC8(v43, &qword_10002E060, &qword_10001E8E8);
      }
    }

    else
    {
      v47 = v64;
      (*(v45 + 32))(v64, v43, v44);
    }

    v48 = swift_getKeyPath();
    v49 = v58;
    v50 = &v58[*(v57 + 36)];
    v51 = sub_100002EFC(&qword_10002E0C8, &qword_10001E990);
    (*(v45 + 32))(v50 + *(v51 + 28), v47, v44);
    *v50 = v48;
    (*(v59 + 32))(v49, v42, v60);
    v52 = *(v37 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bgColor);
    v53 = sub_10001D1AC();
    LOBYTE(v50) = sub_10001CFFC();
    v54 = v65;
    sub_100010218(v49, v65, &qword_10002E158, &qword_10001EA58);
    result = sub_100002EFC(&qword_10002E178, &qword_10001EA68);
    v55 = v54 + *(result + 36);
    *v55 = v53;
    *(v55 + 8) = v50;
  }

  return result;
}

uint64_t sub_10000A6F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100002EFC(&qword_10002E180, &qword_10001EA70);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = sub_100002EFC(&qword_10002E188, &qword_10001EA78);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v47 - v15);
  *v16 = sub_10001D24C();
  v16[1] = v17;
  v18 = sub_100002EFC(&qword_10002E190, &qword_10001EA80);
  sub_10000AB94(a1, v16 + *(v18 + 44));
  v51 = sub_10001CFAC();
  LOBYTE(v58[0]) = 1;
  sub_10000BA7C(a1, v73);
  *(&v71[1] + 7) = v73[1];
  *(&v71[2] + 7) = v73[2];
  *(&v71[3] + 7) = v73[3];
  *(&v71[4] + 7) = v74;
  *(v71 + 7) = v73[0];
  v49 = LOBYTE(v58[0]);
  v19 = *a1;
  v20 = *(*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFontColor);
  v48 = sub_10001D13C();
  v21 = sub_10001D02C();
  v22 = sub_10001D03C();
  sub_10001D03C();
  if (sub_10001D03C() != v21)
  {
    v22 = sub_10001D03C();
  }

  v23 = *(v19 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_trailingEdgeFromAvatar);
  sub_10001CE2C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v72 = 0;
  *v9 = sub_10001CFBC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v32 = sub_100002EFC(&qword_10002E198, &qword_10001EA88);
  sub_10000BED8(a1, &v9[*(v32 + 44)]);
  v47 = v14;
  sub_100010E60(v16, v14, &qword_10002E188, &qword_10001EA78);
  sub_100010E60(v9, v7, &qword_10002E180, &qword_10001EA70);
  v33 = v50;
  sub_100010E60(v14, v50, &qword_10002E188, &qword_10001EA78);
  v34 = sub_100002EFC(&qword_10002E1A0, &qword_10001EA90);
  v35 = v34[12];
  *(&v53[1] + 1) = v71[1];
  *(&v53[2] + 1) = v71[2];
  v36 = v33 + v35;
  v52 = v51;
  v37 = v49;
  LOBYTE(v53[0]) = v49;
  *(&v53[3] + 1) = v71[3];
  v53[4] = *(&v71[3] + 15);
  *(v53 + 1) = v71[0];
  v38 = v22;
  v39 = v48;
  *&v54 = v48;
  BYTE8(v54) = v38;
  *&v55 = v25;
  *(&v55 + 1) = v27;
  *&v56 = v29;
  *(&v56 + 1) = v31;
  v57 = 0;
  *(v36 + 144) = 0;
  v40 = v53[4];
  *(v36 + 64) = v53[3];
  *(v36 + 80) = v40;
  v41 = v53[2];
  *(v36 + 32) = v53[1];
  *(v36 + 48) = v41;
  v42 = v56;
  v43 = v54;
  *(v36 + 112) = v55;
  *(v36 + 128) = v42;
  *(v36 + 96) = v43;
  v44 = v53[0];
  *v36 = v52;
  *(v36 + 16) = v44;
  v45 = v33 + v34[16];
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_100010E60(v7, v33 + v34[20], &qword_10002E180, &qword_10001EA70);
  sub_100010E60(&v52, v58, &qword_10002E1A8, &qword_10001EA98);
  sub_100010EC8(v9, &qword_10002E180, &qword_10001EA70);
  sub_100010EC8(v16, &qword_10002E188, &qword_10001EA78);
  sub_100010EC8(v7, &qword_10002E180, &qword_10001EA70);
  v61 = v71[1];
  v62 = v71[2];
  *v63 = v71[3];
  *&v63[15] = *(&v71[3] + 15);
  v58[0] = v51;
  v58[1] = 0;
  v59 = v37;
  v60 = v71[0];
  v64 = v39;
  v65 = v38;
  v66 = v25;
  v67 = v27;
  v68 = v29;
  v69 = v31;
  v70 = 0;
  sub_100010EC8(v58, &qword_10002E1A8, &qword_10001EA98);
  return sub_100010EC8(v47, &qword_10002E188, &qword_10001EA78);
}

uint64_t sub_10000AB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v160 = sub_10001CEEC();
  v3 = *(*(v160 - 1) + 64);
  __chkstk_darwin(v160);
  v5 = (&v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10001D1DC();
  v158 = *(v6 - 8);
  v159 = v6;
  v7 = *(v158 + 64);
  __chkstk_darwin(v6);
  v9 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_100002EFC(&qword_10002E218, &qword_10001EAD8);
  v10 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v12 = &v155 - v11;
  v161 = sub_100002EFC(&qword_10002E220, &qword_10001EAE0);
  v13 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v162 = &v155 - v14;
  v15 = sub_10001D1CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001CDAC();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_10001D2CC();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  if (*(*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData + 8) >> 60 == 15)
  {
    sub_10000F258();
    v157 = v12;
    sub_10001D2BC();
    sub_10001CD6C();
    *&v179[0] = sub_10001D32C();
    *(&v179[0] + 1) = v24;
    sub_10000FDA4();
    sub_10001D0EC();
    sub_10001D20C();
    (*(v16 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v15);
    sub_10001D1FC();

    (*(v16 + 8))(v19, v15);
    v26 = v158;
    v25 = v159;
    (*(v158 + 104))(v9, enum case for Image.Interpolation.high(_:), v159);
    v27 = sub_10001D1EC();

    (*(v26 + 8))(v9, v25);
    v28 = *(a1 + 16);
    v30 = *(a1 + 24);
    v29 = *(a1 + 32);
    v31 = *(a1 + 40);
    v33 = *(a1 + 88);
    v32 = *(a1 + 96);
    v35 = *(a1 + 104);
    v34 = *(a1 + 112);
    v36 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth;
    v37 = *(a1 + 128) * (*(v28 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth) / v30);
    v38 = v160[5];
    v39 = enum case for RoundedCornerStyle.continuous(_:);
    v40 = sub_10001CF8C();
    (*(*(v40 - 8) + 104))(v5 + v38, v39, v40);
    *v5 = v37;
    v5[1] = v37;
    v41 = sub_10001D15C();
    sub_10001CE5C();
    v42 = sub_100002EFC(&qword_10002E228, &qword_10001EAE8);
    v43 = v157;
    v44 = v157 + *(v42 + 36);
    sub_100010668(v5, v44);
    v45 = v44 + *(sub_100002EFC(&qword_10002E230, &qword_10001EAF0) + 36);
    v46 = v184;
    *v45 = v183;
    *(v45 + 16) = v46;
    *(v45 + 32) = v185;
    v47 = sub_100002EFC(&qword_10002E238, &qword_10001EAF8);
    *(v44 + *(v47 + 52)) = v41;
    *(v44 + *(v47 + 56)) = 256;
    v48 = sub_10001D23C();
    v50 = v49;
    sub_1000106CC(v5);
    v51 = (v44 + *(sub_100002EFC(&qword_10002E240, &qword_10001EB00) + 36));
    *v51 = v48;
    v51[1] = v50;
    v52 = *(v28 + v36) / v30;
    sub_10001D23C();
    sub_10001CE6C();
    v53 = (v44 + *(sub_100002EFC(&qword_10002E248, &qword_10001EB08) + 36));
    v54 = v187;
    *v53 = v186;
    v53[1] = v54;
    v53[2] = v188;
    v55 = sub_10001D23C();
    v57 = v56;
    v58 = (v44 + *(sub_100002EFC(&qword_10002E250, &qword_10001EB10) + 36));
    *v58 = v55;
    v58[1] = v57;
    *v43 = v27;
    LOBYTE(v44) = sub_10001D00C();
    v59 = v32 * (*(v28 + v36) / v30);
    sub_10001CE2C();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v43 + *(sub_100002EFC(&qword_10002E258, &qword_10001EB18) + 36);
    *v68 = v44;
    *(v68 + 1) = v61;
    *(v68 + 2) = v63;
    *(v68 + 3) = v65;
    *(v68 + 4) = v67;
    v68[40] = 0;
    LOBYTE(v44) = sub_10001D02C();
    v69 = v33 * (*(v28 + v36) / v30);
    sub_10001CE2C();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = v43 + *(sub_100002EFC(&qword_10002E260, &qword_10001EB20) + 36);
    *v78 = v44;
    *(v78 + 1) = v71;
    *(v78 + 2) = v73;
    *(v78 + 3) = v75;
    *(v78 + 4) = v77;
    v78[40] = 0;
    LOBYTE(v44) = sub_10001D04C();
    v79 = v35 * (*(v28 + v36) / v30);
    sub_10001CE2C();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v43 + *(sub_100002EFC(&qword_10002E268, &qword_10001EB28) + 36);
    *v88 = v44;
    *(v88 + 1) = v81;
    *(v88 + 2) = v83;
    *(v88 + 3) = v85;
    *(v88 + 4) = v87;
    v88[40] = 0;
    LOBYTE(v44) = sub_10001D01C();
    v89 = v34 * (*(v28 + v36) / v30);
    sub_10001CE2C();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v98 = v43 + *(sub_100002EFC(&qword_10002E270, &qword_10001EB30) + 36);
    *v98 = v44;
    *(v98 + 1) = v91;
    *(v98 + 2) = v93;
    *(v98 + 3) = v95;
    *(v98 + 4) = v97;
    v98[40] = 0;
    v99 = *(v28 + v36);
    sub_10001D23C();
    sub_10001CE6C();
    v100 = (v43 + *(sub_100002EFC(&qword_10002E278, &qword_10001EB38) + 36));
    v101 = v167;
    *v100 = v166;
    v100[1] = v101;
    v100[2] = v168;
    v102 = sub_10001D22C();
    v104 = v103;
    sub_10000B884(a1, &v172);
    v105 = v176;
    v106 = v177;
    v107 = v176;
    v108 = v177;
    *&v165[64] = v176;
    *&v165[80] = v177;
    v109 = v174;
    v110 = v175;
    v111 = v174;
    v112 = v175;
    *&v165[32] = v174;
    *&v165[48] = v175;
    v113 = v173;
    v114 = v172;
    v115 = v173;
    *v165 = v172;
    *&v165[16] = v173;
    *&v165[96] = v102;
    *&v165[104] = v104;
    v116 = (v43 + *(v163 + 36));
    *v116 = v172;
    v116[1] = v113;
    v117 = *&v165[96];
    v116[5] = v106;
    v116[6] = v117;
    v116[3] = v110;
    v116[4] = v105;
    v116[2] = v109;
    v179[2] = v111;
    v179[3] = v112;
    v179[4] = v107;
    v179[5] = v108;
    v179[0] = v114;
    v179[1] = v115;
    *&v179[6] = v102;
    *(&v179[6] + 1) = v104;
    sub_100010E60(v165, v180, &qword_10002E280, &qword_10001EB40);
    sub_100010EC8(v179, &qword_10002E280, &qword_10001EB40);
    v118 = &qword_10002E218;
    v119 = &qword_10001EAD8;
    sub_100010E60(v43, v162, &qword_10002E218, &qword_10001EAD8);
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_10002E288, &qword_10001EB48);
    sub_100010728();
    sub_100010A34();
    sub_10001CFCC();
    v120 = v43;
  }

  else
  {
    v121 = *(a1 + 16);
    v122 = *(a1 + 24);
    v124 = *(a1 + 72);
    v123 = *(a1 + 80);
    v125 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth;
    sub_100009A60(*(v121 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth));
    v160 = v126;
    sub_10001D2BC();
    sub_10001CD6C();
    *&v179[0] = sub_10001D32C();
    *(&v179[0] + 1) = v127;
    sub_10000FDA4();
    sub_10001D0EC();
    sub_10001D20C();
    (*(v16 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v15);
    v159 = sub_10001D1FC();

    (*(v16 + 8))(v19, v15);
    v128 = *(v121 + v125);
    sub_10001D23C();
    sub_10001CE6C();
    v129 = BYTE8(v186);
    v130 = v187;
    v131 = BYTE8(v187);
    v157 = v188;
    v158 = v186;
    v156 = *(&v188 + 1);
    v165[0] = BYTE8(v186);
    LOBYTE(v180[0]) = BYTE8(v187);
    LOBYTE(v128) = sub_10001D04C();
    v132 = v123 * (*(v121 + v125) / v122);
    sub_10001CE2C();
    v134 = v133;
    v136 = v135;
    v138 = v137;
    v140 = v139;
    LOBYTE(v179[0]) = 0;
    v141 = sub_10001D01C();
    v142 = v124 * (*(v121 + v125) / v122);
    sub_10001CE2C();
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v150 = v149;
    LOBYTE(v183) = 0;
    v151 = sub_10001D22C();
    v153 = v152;
    sub_10000B884(a1, &v166);
    v176 = v170;
    v177 = v171;
    v172 = v166;
    v173 = v167;
    *&v165[71] = v170;
    *&v165[87] = v171;
    *&v165[55] = v169;
    *&v165[7] = v166;
    *&v165[23] = v167;
    v174 = v168;
    v175 = v169;
    *&v178 = v151;
    *(&v178 + 1) = v153;
    *&v165[39] = v168;
    *&v165[103] = v178;
    v180[4] = v170;
    v180[5] = v171;
    v180[2] = v168;
    v180[3] = v169;
    v180[0] = v166;
    v180[1] = v167;
    v181 = v151;
    v182 = v153;
    sub_100010E60(&v172, v179, &qword_10002E280, &qword_10001EB40);
    sub_100010EC8(v180, &qword_10002E280, &qword_10001EB40);
    *&v179[0] = v159;
    *(&v179[0] + 1) = v158;
    LOBYTE(v179[1]) = v129;
    *(&v179[1] + 1) = v130;
    LOBYTE(v179[2]) = v131;
    *(&v179[2] + 1) = v157;
    *&v179[3] = v156;
    WORD4(v179[3]) = 256;
    LOBYTE(v179[4]) = v128;
    *(&v179[4] + 1) = v134;
    *&v179[5] = v136;
    *(&v179[5] + 1) = v138;
    *&v179[6] = v140;
    BYTE8(v179[6]) = 0;
    LOBYTE(v179[7]) = v141;
    *(&v179[7] + 1) = v144;
    *&v179[8] = v146;
    *(&v179[8] + 1) = v148;
    *&v179[9] = v150;
    BYTE8(v179[9]) = 0;
    *(&v179[13] + 9) = *&v165[64];
    *(&v179[14] + 9) = *&v165[80];
    *(&v179[15] + 9) = *&v165[96];
    *(&v179[16] + 1) = *&v165[111];
    *(&v179[9] + 9) = *v165;
    *(&v179[10] + 9) = *&v165[16];
    *(&v179[11] + 9) = *&v165[32];
    *(&v179[12] + 9) = *&v165[48];
    memcpy(v162, v179, 0x110uLL);
    swift_storeEnumTagMultiPayload();
    v118 = &qword_10002E288;
    v119 = &qword_10001EB48;
    sub_100010E60(v179, v165, &qword_10002E288, &qword_10001EB48);
    sub_100002EFC(&qword_10002E288, &qword_10001EB48);
    sub_100010728();
    sub_100010A34();
    sub_10001CFCC();

    v120 = v179;
  }

  return sub_100010EC8(v120, v118, v119);
}

uint64_t sub_10000B884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001D1CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1BC();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v21 = sub_10001D1FC();

  (*(v5 + 8))(v8, v4);
  v9 = *(a1 + 48) * (*(*(a1 + 16) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth) / *(a1 + 24));
  sub_10001D22C();
  sub_10001CE6C();
  v10 = v24;
  LOBYTE(v5) = v25;
  v11 = v26;
  v12 = v27;
  v14 = v28;
  v13 = v29;
  v15 = sub_10001D14C();
  KeyPath = swift_getKeyPath();
  v23 = v5;
  v22 = v12;
  v17 = sub_10001D17C();
  result = sub_10001D23C();
  *a2 = v21;
  *(a2 + 8) = v10;
  *(a2 + 16) = v5;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v13;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = result;
  *(a2 + 88) = v19;
  return result;
}

uint64_t sub_10000BA7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001D21C();
  v42 = a1;
  v5 = *a1;
  v44 = *(*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent);
  if (v4)
  {
    sub_10000FDA4();

    v6 = sub_10001D0EC();
    v8 = v7;
    v10 = v9;
    v11 = *(v5 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont);
    sub_10001D0BC();
    sub_10001D08C();

    sub_10001D0DC();

    sub_10000FDF8(v6, v8, v10 & 1);
  }

  else
  {
    sub_10000FDA4();

    v12 = sub_10001D0EC();
    v14 = v13;
    v16 = v15;
    v17 = *(v5 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont);
    sub_10001D0BC();
    sub_10001D0DC();

    sub_10000FDF8(v12, v14, v16 & 1);
  }

  sub_10001CFCC();
  v18 = v45;
  v19 = v44;
  v20 = *v42;
  v21 = (*v42 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
  if (!*v21 && v21[1] == 0xE000000000000000 || (v22 = sub_10001D6BC(), v19 = v44, v18 = v45, (v22 & 1) != 0))
  {
    sub_100010568(v19, *(&v44 + 1), v18);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    sub_100010568(v44, *(&v44 + 1), v45);
    sub_10000FDA4();

    v27 = sub_10001D0EC();
    v29 = v28;
    v31 = v30;
    v32 = *(v20 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont);
    sub_10001D0BC();
    v41 = sub_10001D0DC();
    v43 = v33;
    v40 = v34;

    sub_10000FDF8(v27, v29, v31 & 1);

    sub_10001CFDC();
    v23 = sub_10001D0CC();
    v24 = v35;
    v37 = v36;
    v26 = v38;
    sub_10000FDF8(v41, v43, v40 & 1);

    v25 = v37 & 1;
    sub_10001006C(v23, v24, v25);
  }

  sub_100010568(v44, *(&v44 + 1), v45);
  sub_1000105A4(v23, v24, v25, v26);
  sub_1000105E8(v44, *(&v44 + 1), v45);
  sub_100010624(v23, v24, v25, v26);
  *a2 = v44;
  *(a2 + 16) = v45;
  *(a2 + 32) = v46;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  *(a2 + 64) = v26;
  sub_100010624(v23, v24, v25, v26);
  return sub_1000105E8(v44, *(&v44 + 1), v45);
}

uint64_t sub_10000BED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v82 = sub_100002EFC(&qword_10002E1B0, &qword_10001EAA0);
  v3 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v84 = (&v78 - v4);
  v83 = sub_100002EFC(&qword_10002E1B8, &qword_10001EAA8);
  v5 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v7 = &v78 - v6;
  if (sub_10001D21C())
  {
    v8 = (*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_rightSideText);
    v9 = *v8;
    v10 = v8[1];
    v80 = a1;
    v87 = v9;
    v88 = v10;
    sub_10000FDA4();

    v11 = sub_10001D0EC();
    v13 = v12;
    v15 = v14;
    sub_10001D0AC();
    v16 = sub_10001D0DC();
    v18 = v17;
    v20 = v19;

    sub_10000FDF8(v11, v13, v15 & 1);

    v21 = *(v80 + 8);
    v22 = [v21 tintColor];
    v87 = sub_10001D19C();
    v80 = sub_10001D0CC();
    v79 = v23;
    v25 = v24;
    v78 = v26;
    sub_10000FDF8(v16, v18, v20 & 1);

    v27 = sub_10001CFEC();
    sub_10001CE2C();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v25 &= 1u;
    v86 = v25;
    v85 = 0;
    LOBYTE(v16) = sub_10001D05C();
    sub_10001CE2C();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    LOBYTE(v87) = 0;
    v44 = [v21 tintColor];
    sub_10001D19C();
    v45 = sub_10001D18C();

    LOBYTE(v18) = sub_10001CFFC();
    v46 = &v7[*(v83 + 36)];
    v47 = *(sub_10001CEEC() + 20);
    v48 = enum case for RoundedCornerStyle.continuous(_:);
    v49 = sub_10001CF8C();
    (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
    __asm { FMOV            V0.2D, #20.0 }

    *v46 = _Q0;
    *&v46[*(sub_100002EFC(&qword_10002E210, &qword_10001EAD0) + 36)] = 256;
    v55 = v79;
    *v7 = v80;
    *(v7 + 1) = v55;
    v7[16] = v25;
    *(v7 + 3) = v78;
    v7[32] = v27;
    *(v7 + 5) = v29;
    *(v7 + 6) = v31;
    *(v7 + 7) = v33;
    *(v7 + 8) = v35;
    v7[72] = 0;
    v7[80] = v16;
    *(v7 + 11) = v37;
    *(v7 + 12) = v39;
    *(v7 + 13) = v41;
    *(v7 + 14) = v43;
    v7[120] = 0;
    *(v7 + 16) = v45;
    v7[136] = v18;
    sub_100010E60(v7, v84, &qword_10002E1B8, &qword_10001EAA8);
    swift_storeEnumTagMultiPayload();
    sub_1000102E8();
    sub_10001CFCC();
    return sub_100010EC8(v7, &qword_10002E1B8, &qword_10001EAA8);
  }

  else
  {
    v57 = (*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_rightSideText);
    v58 = v57[1];
    v87 = *v57;
    v88 = v58;
    sub_10000FDA4();

    v59 = sub_10001D0EC();
    v61 = v60;
    v63 = v62;
    sub_10001D07C();
    v64 = sub_10001D0DC();
    v66 = v65;
    v68 = v67;

    sub_10000FDF8(v59, v61, v63 & 1);

    v69 = [*(a1 + 8) tintColor];
    v87 = sub_10001D19C();
    v70 = sub_10001D0CC();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    sub_10000FDF8(v64, v66, v68 & 1);

    v77 = v84;
    *v84 = v70;
    v77[1] = v72;
    *(v77 + 16) = v74 & 1;
    v77[3] = v76;
    swift_storeEnumTagMultiPayload();
    sub_1000102E8();
    return sub_10001CFCC();
  }
}

uint64_t sub_10000C450@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + 16);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_10000A058(a1);
}

void sub_10000C4A4(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = sub_100002EFC(&qword_10002E060, &qword_10001E8E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = v66 - v5;
  v6 = sub_10001CE3C();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  __chkstk_darwin(v6);
  v75 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002EFC(&qword_10002E068, &qword_10001E8F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v82 = v66 - v11;
  v81 = sub_10001CEDC();
  v12 = *(v81 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v81);
  v80 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100002EFC(&qword_10002E070, &qword_10001E8F8);
  v15 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v17 = v66 - v16;
  v18 = sub_100002EFC(&qword_10002E078, &qword_10001E900);
  v71 = *(v18 - 8);
  v72 = v18;
  v19 = *(v71 + 64);
  __chkstk_darwin(v18);
  v83 = v66 - v20;
  v69 = sub_100002EFC(&qword_10002E080, &qword_10001E908);
  v21 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v73 = v66 - v22;
  v23 = [objc_allocWithZone(ISImageDescriptor) initWithSize:15.0 scale:{15.0, 1.0}];
  v24 = objc_allocWithZone(ISIcon);
  v25 = sub_10001D2DC();
  v26 = [v24 initWithBundleIdentifier:v25];

  v70 = v23;
  v27 = [v26 prepareImageForDescriptor:v23];

  if (!v27)
  {
    __break(1u);
    goto LABEL_15;
  }

  v28 = [v27 CGImage];

  if (!v28)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v29 = v2;
  v30 = *v2;
  v31 = v2[1];
  sub_100002EFC(&qword_10002E088, &qword_10001E910);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10001E6C0;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_10000FB3C();
  *(v32 + 32) = 7368801;
  *(v32 + 40) = 0xE300000000000000;
  sub_10001D31C();
  v66[1] = v33;
  v34 = sub_10001CF9C();
  v67 = v28;
  v68 = v34;
  v87 = 1;
  sub_10000CCEC(v28, v2, v85);
  memcpy(v88, v85, 0x111uLL);
  memcpy(v89, v85, 0x111uLL);
  sub_100010E60(v88, &v84, &qword_10002E098, &qword_10001E918);
  sub_100010EC8(v89, &qword_10002E098, &qword_10001E918);
  memcpy(&v86[7], v88, 0x111uLL);
  v35 = v87;
  KeyPath = swift_getKeyPath();
  v37 = sub_10000DAE4();
  v38 = &enum case for LayoutDirection.rightToLeft(_:);
  if (!v37)
  {
    v38 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v40 = v80;
  v39 = v81;
  (*(v12 + 104))(v80, *v38, v81);
  v41 = &v17[*(v79 + 36)];
  v42 = sub_100002EFC(&qword_10002E0A0, &qword_10001E950);
  v43 = v40;
  v44 = v29;
  (*(v12 + 32))(v41 + *(v42 + 28), v43, v39);
  *v41 = KeyPath;
  *v17 = v68;
  *(v17 + 1) = 0;
  v17[16] = v35;
  memcpy(v17 + 17, v86, 0x118uLL);
  v45 = *(v29[4] + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_contentSizeCategory);
  v46 = v82;
  sub_10001CECC();
  v47 = sub_10001CEBC();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    goto LABEL_16;
  }

  sub_10000FBF4();
  sub_10001D12C();
  sub_100010EC8(v17, &qword_10002E070, &qword_10001E8F8);
  (*(v48 + 8))(v46, v47);
  v49 = v44[5];
  [v49 userInterfaceStyle];
  v50 = v74;
  sub_10001CE4C();
  v52 = v76;
  v51 = v77;
  v53 = *(v76 + 48);
  if (v53(v50, 1, v77) == 1)
  {
    v54 = v75;
    (*(v52 + 104))(v75, enum case for ColorScheme.light(_:), v51);
    v55 = v53(v50, 1, v51);
    v56 = v73;
    if (v55 != 1)
    {
      sub_100010EC8(v50, &qword_10002E060, &qword_10001E8E8);
    }
  }

  else
  {
    v54 = v75;
    (*(v52 + 32))(v75, v50, v51);
    v56 = v73;
  }

  v57 = swift_getKeyPath();
  v58 = (v56 + *(v69 + 36));
  v59 = sub_100002EFC(&qword_10002E0C8, &qword_10001E990);
  (*(v52 + 32))(v58 + *(v59 + 28), v54, v51);
  *v58 = v57;
  (*(v71 + 32))(v56, v83, v72);
  if ([v49 userInterfaceStyle] == 1)
  {
    v60 = sub_10001D16C();
  }

  else
  {
    v60 = sub_10001D17C();
  }

  v61 = v60;
  v62 = v78;
  v63 = v70;
  v64 = sub_10001CFFC();

  sub_100010218(v56, v62, &qword_10002E080, &qword_10001E908);
  v65 = v62 + *(sub_100002EFC(&qword_10002E0D0, &qword_10001E998) + 36);
  *v65 = v61;
  *(v65 + 8) = v64;
}

uint64_t sub_10000CCEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = sub_10001CF7C();
  LOBYTE(v55) = 1;
  sub_10000D328(a1, a2, &v50);
  v68 = *&v51[112];
  v69 = *&v51[128];
  v70 = *&v51[144];
  v64 = *&v51[48];
  v65 = *&v51[64];
  v66 = *&v51[80];
  v67 = *&v51[96];
  v60 = v50;
  v61 = *v51;
  v62 = *&v51[16];
  v63 = *&v51[32];
  v72[8] = *&v51[112];
  v72[9] = *&v51[128];
  v72[10] = *&v51[144];
  v72[4] = *&v51[48];
  v72[5] = *&v51[64];
  v72[6] = *&v51[80];
  v72[7] = *&v51[96];
  v72[0] = v50;
  v72[1] = *v51;
  v71 = v51[160];
  v73 = v51[160];
  v72[2] = *&v51[16];
  v72[3] = *&v51[32];
  sub_100010E60(&v60, v44, &qword_10002E0D8, &qword_10001E9A0);
  sub_100010EC8(v72, &qword_10002E0D8, &qword_10001E9A0);
  *&v54[135] = v68;
  *&v54[151] = v69;
  *&v54[167] = v70;
  *&v54[71] = v64;
  *&v54[87] = v65;
  *&v54[103] = v66;
  *&v54[119] = v67;
  *&v54[7] = v60;
  *&v54[23] = v61;
  *&v54[39] = v62;
  v54[183] = v71;
  *&v54[55] = v63;
  v40 = v55;
  if (sub_10001D21C())
  {
    v5 = (*(a2 + 32) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
    v6 = v5[1];
    *&v50 = *v5;
    *(&v50 + 1) = v6;
    sub_10000FDA4();

    v7 = sub_10001D0EC();
    v9 = v8;
    v11 = v10;
    *&v50 = sub_10001D16C();
    v38 = sub_10001D0CC();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_10000FDF8(v7, v9, v11 & 1);

    KeyPath = swift_getKeyPath();
    v19 = sub_10001D06C();
    v20 = swift_getKeyPath();
    LOBYTE(v44[0]) = 0;
    *&v50 = v38;
    *(&v50 + 1) = v13;
    v51[0] = v15 & 1;
    *&v51[8] = v17;
    *&v51[16] = KeyPath;
    v51[24] = 1;
    *&v51[32] = v20;
    *&v51[40] = v19;
    v51[48] = 0;
  }

  else
  {
    v21 = (*(a2 + 32) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
    v22 = v21[1];
    *&v50 = *v21;
    *(&v50 + 1) = v22;
    sub_10000FDA4();

    v23 = sub_10001D0EC();
    v25 = v24;
    v27 = v26;
    *&v50 = sub_10001D16C();
    v28 = sub_10001D0CC();
    v39 = v29;
    v31 = v30;
    v33 = v32;
    sub_10000FDF8(v23, v25, v27 & 1);

    v34 = swift_getKeyPath();
    v35 = sub_10001D09C();
    v36 = swift_getKeyPath();
    LOBYTE(v44[0]) = 1;
    *&v50 = v28;
    *(&v50 + 1) = v39;
    v51[0] = v31 & 1;
    *&v51[8] = v33;
    *&v51[16] = v34;
    v51[24] = 1;
    *&v51[32] = v36;
    *&v51[40] = v35;
    v51[48] = 1;
  }

  sub_100002EFC(&qword_10002E0E8, &qword_10001EA08);
  sub_10000FEB4();
  sub_10001CFCC();
  v48[2] = v57;
  v48[3] = v58;
  v48[0] = v55;
  v48[1] = v56;
  v44[0] = v42;
  v44[1] = 0;
  v45[0] = v40;
  *&v45[49] = *&v54[48];
  *&v45[33] = *&v54[32];
  *&v45[17] = *&v54[16];
  *&v45[1] = *v54;
  *&v45[113] = *&v54[112];
  *&v45[97] = *&v54[96];
  *&v45[81] = *&v54[80];
  *&v45[65] = *&v54[64];
  *&v45[161] = *&v54[160];
  *&v45[177] = *&v54[176];
  *&v45[145] = *&v54[144];
  *&v45[129] = *&v54[128];
  __src[10] = *&v45[144];
  __src[11] = *&v45[160];
  *(&__src[11] + 9) = *&v45[169];
  __src[6] = *&v45[80];
  __src[7] = *&v45[96];
  __src[8] = *&v45[112];
  __src[9] = *&v45[128];
  __src[2] = *&v45[16];
  __src[3] = *&v45[32];
  __src[4] = *&v45[48];
  __src[5] = *&v45[64];
  __src[0] = v42;
  __src[1] = *v45;
  v49 = v59;
  v46[2] = v57;
  v46[3] = v58;
  v47 = v59;
  v46[0] = v55;
  v46[1] = v56;
  __src[15] = v57;
  __src[16] = v58;
  LOBYTE(__src[17]) = v59;
  __src[13] = v55;
  __src[14] = v56;
  memcpy(a3, __src, 0x111uLL);
  sub_100010E60(v44, &v50, &qword_10002E128, &qword_10001EA28);
  sub_100010E60(v46, &v50, &qword_10002E130, &qword_10001EA30);
  sub_100010EC8(v48, &qword_10002E130, &qword_10001EA30);
  *&v51[129] = *&v54[128];
  *&v51[145] = *&v54[144];
  v52 = *&v54[160];
  *&v51[65] = *&v54[64];
  *&v51[81] = *&v54[80];
  *&v51[97] = *&v54[96];
  *&v51[113] = *&v54[112];
  *&v51[1] = *v54;
  *&v51[17] = *&v54[16];
  *&v51[33] = *&v54[32];
  v50 = v42;
  v51[0] = v40;
  v53 = *&v54[176];
  *&v51[49] = *&v54[48];
  return sub_100010EC8(&v50, &qword_10002E128, &qword_10001EA28);
}

uint64_t sub_10000D328@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10001D1CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001CDAC();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10001D2CC();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = a1;
  sub_10001D2BC();
  sub_10001CD6C();
  *&v97 = sub_10001D32C();
  *(&v97 + 1) = v16;
  sub_10000FDA4();
  sub_10001D0EC();
  sub_10001D20C();
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  v86 = sub_10001D1FC();

  (*(v7 + 8))(v10, v6);
  sub_10001D23C();
  sub_10001CE6C();
  v79 = v113;
  LODWORD(v6) = v114;
  v81 = v115;
  LODWORD(a1) = v116;
  v84 = v118;
  v85 = v117;
  v83 = sub_10001D02C();
  sub_10001CE2C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v80 = v6;
  LOBYTE(v97) = v6;
  v82 = a1;
  LOBYTE(v90) = a1;
  v109 = 0;
  v25 = sub_10001D21C();
  v26 = (*(a2 + 32) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent);
  v27 = v26[1];
  *&v97 = *v26;
  *(&v97 + 1) = v27;
  if (v25)
  {

    v28 = sub_10001D0EC();
    v30 = v29;
    v32 = v31;
    sub_10001D0AC();
    sub_10001D08C();

    v33 = sub_10001D0DC();
    v35 = v34;
    v37 = v36;
    *&v78 = v38;

    sub_10000FDF8(v28, v30, v32 & 1);

    *&v97 = sub_10001D16C();
    *&v77 = sub_10001D0CC();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_10000FDF8(v33, v35, v37 & 1);

    KeyPath = swift_getKeyPath();
    *&v90 = v77;
    *(&v90 + 1) = v40;
    *&v91 = v42 & 1;
    *(&v91 + 1) = v44;
    *&v92 = KeyPath;
    v46 = 1;
  }

  else
  {

    v47 = sub_10001D0EC();
    v49 = v48;
    v51 = v50;
    sub_10001D09C();
    sub_10001D08C();

    v52 = sub_10001D0DC();
    v54 = v53;
    v56 = v55;
    *&v78 = v57;

    sub_10000FDF8(v47, v49, v51 & 1);

    *&v97 = sub_10001D16C();
    *&v77 = sub_10001D0CC();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_10000FDF8(v52, v54, v56 & 1);

    v64 = swift_getKeyPath();
    *&v90 = v77;
    *(&v90 + 1) = v59;
    *&v91 = v61 & 1;
    *(&v91 + 1) = v63;
    *&v92 = v64;
    v46 = 257;
  }

  WORD4(v92) = v46;
  sub_100002EFC(&qword_10002E100, &qword_10001EA10);
  sub_10000FF6C();
  sub_10001CFCC();
  v65 = v97;
  v66 = v98;
  v67 = v99;
  v68 = v100;
  v69 = BYTE1(v100);
  v77 = v97;
  v78 = v98;
  v109 = 1;
  *&v90 = v86;
  *(&v90 + 1) = v79;
  LOBYTE(v91) = v80;
  *(&v91 + 1) = *v112;
  DWORD1(v91) = *&v112[3];
  *(&v91 + 1) = v81;
  LOBYTE(v92) = v82;
  *(&v92 + 1) = *v111;
  DWORD1(v92) = *&v111[3];
  *(&v92 + 1) = v85;
  *&v93 = v84;
  BYTE8(v93) = v83;
  HIDWORD(v93) = *&v110[3];
  *(&v93 + 9) = *v110;
  *&v94 = v18;
  *(&v94 + 1) = v20;
  *&v95 = v22;
  *(&v95 + 1) = v24;
  v96 = 0;
  v89[103] = 0;
  *&v89[87] = v95;
  *&v89[71] = v94;
  *&v89[55] = v93;
  *&v89[39] = v92;
  *&v89[23] = v91;
  *&v89[7] = v90;
  v88 = BYTE1(v100);
  v87 = 1;
  *a3 = 0;
  *(a3 + 8) = 1;
  v70 = *&v89[48];
  *(a3 + 41) = *&v89[32];
  v71 = *v89;
  *(a3 + 25) = *&v89[16];
  *(a3 + 9) = v71;
  v72 = *&v89[64];
  v73 = *&v89[80];
  *(a3 + 105) = *&v89[96];
  *(a3 + 89) = v73;
  *(a3 + 73) = v72;
  *(a3 + 57) = v70;
  *(a3 + 120) = v65;
  *(a3 + 136) = v66;
  *(a3 + 152) = v67;
  *(a3 + 160) = v68;
  *(a3 + 161) = v69;
  *(a3 + 168) = 0;
  *(a3 + 176) = 1;
  sub_100010E60(&v90, &v97, &qword_10002E138, &qword_10001EA38);
  v74 = v77;
  v75 = v78;
  sub_100010024(v77, *(&v77 + 1), v78);
  sub_10001007C(v74, *(&v74 + 1), v75);
  *&v97 = v86;
  *(&v97 + 1) = v79;
  LOBYTE(v98) = v80;
  *(&v98 + 1) = *v112;
  DWORD1(v98) = *&v112[3];
  *(&v98 + 1) = v81;
  LOBYTE(v99) = v82;
  *(&v99 + 1) = *v111;
  HIDWORD(v99) = *&v111[3];
  v100 = v85;
  v101 = v84;
  v102 = v83;
  *v103 = *v110;
  *&v103[3] = *&v110[3];
  v104 = v18;
  v105 = v20;
  v106 = v22;
  v107 = v24;
  v108 = 0;
  return sub_100010EC8(&v97, &qword_10002E138, &qword_10001EA38);
}

BOOL sub_10000DAE4()
{
  v1 = v0;
  v2 = sub_10001CD9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_10001CE1C();
  sub_1000023A4(v7, qword_10002E558);
  sub_10000FD3C(v0, v23);
  v8 = sub_10001CDFC();
  v9 = sub_10001D50C();
  sub_10000FD74(v1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136315138;
    v13 = [*(v1 + 40) localization];
    v14 = sub_10001D30C();
    v16 = v15;

    v17 = sub_100017934(v14, v16, v23);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "#ContactsButton localization value: %s", v11, 0xCu);
    sub_100002F44(v12);

    v2 = v22;
  }

  v18 = [*(v1 + 40) localization];
  sub_10001D30C();

  sub_10001CD7C();
  v19 = sub_10001CD8C();
  (*(v3 + 8))(v6, v2);
  return v19 != 1;
}

void sub_10000DD88(uint64_t a1@<X8>)
{
  v10 = v1[8];
  v11 = v1[9];
  v12 = *(v1 + 20);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_10000C4A4(a1);
}

void sub_10000DE94(void *a1, double a2, double a3)
{
  v7 = sub_10001D25C();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001D27C();
  v24 = *(v11 - 8);
  v25 = v11;
  v12 = *(v24 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = dispatch_group_create();
  *(v15 + 16) = v16;
  dispatch_group_enter(v16);
  sub_10000F5E4();
  v23 = sub_10001D53C();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = v15;
  aBlock[4] = sub_10000F678;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000117B8;
  aBlock[3] = &unk_100029548;
  v18 = _Block_copy(aBlock);
  v19 = v3;
  v20 = a1;

  sub_10001D26C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100010FD4(&unk_10002E030, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002EFC(&unk_10002E4F0, &qword_10001ED90);
  sub_1000112AC(&qword_10002E040, &unk_10002E4F0, &qword_10001ED90);
  sub_10001D59C();
  v21 = v23;
  sub_10001D54C();
  _Block_release(v18);

  (*(v26 + 8))(v10, v7);
  (*(v24 + 8))(v14, v25);
  swift_beginAccess();
  v22 = *(v15 + 16);
  sub_10001D52C();
}

uint64_t sub_10000E1F4(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100002EFC(&qword_10002E048, &qword_10001E770);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_10001D47C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_10001D45C();
  v15 = a1;
  v16 = a2;

  v17 = sub_10001D44C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = a4;
  *(v18 + 56) = a5;
  *(v18 + 64) = a3;
  sub_1000114B8(0, 0, v13, &unk_10001E780, v18);
}

uint64_t sub_10000E354(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = a8;
  *(v8 + 248) = a1;
  *(v8 + 256) = a2;
  *(v8 + 232) = a6;
  *(v8 + 240) = a7;
  sub_10001D45C();
  *(v8 + 272) = sub_10001D44C();
  v10 = sub_10001D43C();

  return _swift_task_switch(sub_10000E3F4, v10, v9);
}

uint64_t sub_10000E3F4()
{
  v47 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);

  v3 = *(v2 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_tag);
  v4 = v3[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton];
  v5 = *(v2 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_style);
  v6 = &v3[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame];
  Width = CGRectGetWidth(*&v3[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame]);
  v8.n128_u64[0] = CGRectGetHeight(*v6);
  v9.n128_f64[0] = Width;
  nullsub_2(v9, v8);
  if (v4)
  {
    sub_10000F38C(v3, v5, v45);
    sub_10001D23C();
    sub_10001CE6C();
    v10 = v45[11];
    *(v0 + 176) = v45[10];
    *(v0 + 192) = v10;
    *(v0 + 208) = v45[12];
    *(v0 + 224) = v46;
    v11 = v45[7];
    *(v0 + 112) = v45[6];
    *(v0 + 128) = v11;
    v12 = v45[9];
    *(v0 + 144) = v45[8];
    *(v0 + 160) = v12;
    v13 = v45[3];
    *(v0 + 48) = v45[2];
    *(v0 + 64) = v13;
    v14 = v45[5];
    *(v0 + 80) = v45[4];
    *(v0 + 96) = v14;
    v15 = v45[1];
    *(v0 + 16) = v45[0];
    *(v0 + 32) = v15;
    v16 = &unk_10002E058;
    v17 = &unk_10001E790;
  }

  else
  {
    v18 = qword_10002D8A0;
    v19 = v3;
    if (v18 != -1)
    {
      v44 = v19;
      swift_once();
      v19 = v44;
    }

    v20 = qword_10002E548;
    v21 = v19;
    v22 = v5;
    sub_10001D23C();
    sub_10001CE6C();
    *(v0 + 16) = v21;
    *(v0 + 24) = v22;
    *(v0 + 32) = v21;
    *(v0 + 40) = 0x4044800000000000;
    *(v0 + 48) = v20;
    *(v0 + 56) = v20;
    *(v0 + 64) = xmmword_10001E6D0;
    *(v0 + 80) = xmmword_10001E6E0;
    *(v0 + 96) = xmmword_10001E6F0;
    *(v0 + 112) = xmmword_10001E700;
    *(v0 + 128) = xmmword_10001E710;
    *(v0 + 144) = 0x401E000000000000;
    v16 = &unk_10002E050;
    v17 = &unk_10001E788;
  }

  v23 = sub_100002EFC(v16, v17);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_10001CEAC();
  [v5 displayScale];
  sub_10001CE9C();
  v26 = sub_10001CE7C();
  v27 = v26;
  sub_10001CE8C();

  v28 = qword_10002D8B0;
  if (v26)
  {
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_10001CE1C();
    sub_1000023A4(v30, qword_10002E558);
    v31 = sub_10001CDFC();
    v32 = sub_10001D4CC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "#ContactsButton cgImage created! ", v33, 2u);
    }

    v34 = *(v0 + 264);
    v36 = *(v0 + 248);
    v35 = *(v0 + 256);
    v37 = *(v0 + 232);
    v38 = *(v0 + 240);

    sub_10000E8EC(v38);
    v3[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_renderedSuccessfully] = 1;
    swift_beginAccess();
    dispatch_group_leave(*(v34 + 16));
  }

  else
  {
    if (qword_10002D8B0 != -1)
    {
      swift_once();
    }

    v39 = sub_10001CE1C();
    sub_1000023A4(v39, qword_10002E558);
    v29 = sub_10001CDFC();
    v40 = sub_10001D4EC();
    if (os_log_type_enabled(v29, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v29, v40, "#ContactsButton Can't render image", v41, 2u);
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

void sub_10000E8EC(CGContext *a1)
{
  CGContextSaveGState(a1);
  v3 = (*&v1[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_tag] + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame);
  Width = CGRectGetWidth(*v3);
  v5.n128_u64[0] = CGRectGetHeight(*v3);
  v6.n128_f64[0] = Width;
  nullsub_2(v6, v5);
  CGContextTranslateCTM(a1, 0.0, v7);
  CGContextScaleCTM(a1, 1.0, -1.0);
  v8 = CGRectGetWidth(*v3);
  v9.n128_u64[0] = CGRectGetHeight(*v3);
  v10.n128_f64[0] = v8;
  nullsub_2(v10, v9);
  v11 = CGRectGetWidth(*v3);
  v12.n128_u64[0] = CGRectGetHeight(*v3);
  v13.n128_f64[0] = v11;
  nullsub_2(v13, v12);
  sub_10001D4BC();
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v14 = sub_10001CE1C();
  sub_1000023A4(v14, qword_10002E558);
  v15 = v1;
  v16 = sub_10001CDFC();
  v17 = sub_10001D4CC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    v19 = CGRectGetWidth(*v3);
    v20.n128_u64[0] = CGRectGetHeight(*v3);
    v21.n128_f64[0] = v19;
    *(v18 + 4) = nullsub_2(v21, v20);
    *(v18 + 12) = 2048;
    v22 = CGRectGetWidth(*v3);
    v23.n128_u64[0] = CGRectGetHeight(*v3);
    v24.n128_f64[0] = v22;
    nullsub_2(v24, v23);
    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "#ContactsButton will drawing Size (%f, %f)", v18, 0x16u);
  }

  CGContextRestoreGState(a1);
}

id sub_10000EB98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000EC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

id sub_10000ED30(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v12 = sub_10001CC2C();
  if (v13)
  {
    if (qword_10002D890 != -1)
    {
      swift_once();
    }

    v14 = *&dword_10002E538;
    v15 = sub_10001CBFC();
    if ((v16 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = *&v12;
    v15 = sub_10001CBFC();
    if ((v18 & 1) == 0)
    {
LABEL_5:
      v17 = v15;
      goto LABEL_10;
    }
  }

  if (qword_10002D8A0 != -1)
  {
    swift_once();
  }

  v17 = qword_10002E548;
LABEL_10:
  v19 = sub_10001CC4C();
  v20 = sub_10001CC3C();
  v21 = sub_10001CC5C();
  v22 = sub_10001CC1C();
  v23 = sub_10001CC6C();
  if (!v23)
  {
    v23 = [objc_opt_self() systemBlueColor];
  }

  v24 = v23;
  v25 = type metadata accessor for ContactsButtonSlotTag();
  v26 = objc_allocWithZone(v25);
  v27 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarBackgroundColor;
  if (qword_10002D898 != -1)
  {
    swift_once();
  }

  v28 = qword_10002E540;
  *&v26[v27] = qword_10002E540;
  v29 = &v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = &v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatar] = 0;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData] = xmmword_10001E720;
  v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_renderedSuccessfully] = 0;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_buttonHeight] = 0xBFF0000000000000;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_buttonWidth] = 0xBFF0000000000000;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_contactBadge] = 0;
  v31 = &v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame];
  *v31 = a4;
  v31[1] = a5;
  v31[2] = a6;
  v31[3] = a7;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bgColor] = v19;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont] = v20;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFontColor] = v21;
  v32 = &v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_rightSideText];
  *v32 = a2;
  v32[1] = a3;
  v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] = 0;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_trailingEdgeFromAvatar] = v14;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth] = v17;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_contentSizeCategory] = v22;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_tintColor] = v24;
  v43.receiver = v26;
  v43.super_class = v25;
  v33 = v28;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v24;
  v39 = objc_msgSendSuper2(&v43, "init");

  return v39;
}

double sub_10000F040(double a1, double a2, double a3)
{
  if (a1 > 0.03928)
  {
    v5 = pow((a1 + 0.055) / 1.055, 2.4);
    if (a2 <= 0.03928)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = pow((a2 + 0.055) / 1.055, 2.4);
    if (a3 <= 0.03928)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = pow((a3 + 0.055) / 1.055, 2.4);
    return v5 * 0.2126 + v6 * 0.7152 + v7 * 0.0722;
  }

  v5 = a1 / 12.92;
  if (a2 > 0.03928)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = a2 / 12.92;
  if (a3 > 0.03928)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = a3 / 12.92;
  return v5 * 0.2126 + v6 * 0.7152 + v7 * 0.0722;
}

void sub_10000F168(void *a1, void *a2, double a3)
{
  v12 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0;
  [a1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0;
  v6 = 0.0;
  [a2 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  sub_10000F040(v12 * a3 + (1.0 - a3) * v8, v11 * a3 + (1.0 - a3) * v7, v10 * a3 + (1.0 - a3) * v6);
}

void sub_10000F258()
{
  if (qword_10002D8A0 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(ISImageDescriptor) initWithSize:*&qword_10002E548 scale:{*&qword_10002E548, 1.0}];
  v1 = objc_allocWithZone(ISIcon);
  v2 = sub_10001D2DC();
  v3 = [v1 initWithBundleIdentifier:v2];

  v4 = [v3 prepareImageForDescriptor:v0];
  if (v4)
  {
    v5 = [v4 CGImage];

    if (v5)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_10000F38C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10001CDAC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10001D2CC();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_10001D2BC();
  sub_10001CD6C();
  v10 = sub_10001D32C();
  v12 = v11;
  sub_10001D2BC();
  sub_10001CD6C();
  v13 = sub_10001D32C();
  v15 = v14;
  v16 = qword_10002D8A0;
  v17 = a1;
  if (v16 != -1)
  {
    v20 = v17;
    swift_once();
    v17 = v20;
  }

  v18 = qword_10002E548;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  *(a3 + 40) = a2;
  *(a3 + 48) = v17;
  *(a3 + 56) = 0x4044800000000000;
  *(a3 + 64) = v18;
  *(a3 + 72) = v18;
  *(a3 + 80) = xmmword_10001E6D0;
  *(a3 + 96) = xmmword_10001E6E0;
  *(a3 + 112) = xmmword_10001E6F0;
  *(a3 + 128) = xmmword_10001E700;
  result = 6.0;
  *(a3 + 144) = xmmword_10001E710;
  *(a3 + 160) = 0x401E000000000000;
  return result;
}

uint64_t sub_10000F5AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000F5E4()
{
  result = qword_10002E4E0;
  if (!qword_10002E4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002E4E0);
  }

  return result;
}

uint64_t sub_10000F630()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000F688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F6A0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000F6E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000F738(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000F814;

  return sub_10000E354(v8, v9, a1, v4, v5, v6, v7, v10);
}

uint64_t sub_10000F814()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000F908(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004798(a1, a2);
  }

  return a1;
}

__n128 sub_10000F91C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10000F958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_10000F9A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000FA18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10000FA4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000FB3C()
{
  result = qword_10002E090;
  if (!qword_10002E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E090);
  }

  return result;
}

unint64_t sub_10000FBF4()
{
  result = qword_10002E0A8;
  if (!qword_10002E0A8)
  {
    sub_10000F6A0(&qword_10002E070, &qword_10001E8F8);
    sub_1000112AC(&qword_10002E0B0, &qword_10002E0B8, &qword_10001E958);
    sub_1000112AC(&qword_10002E0C0, &qword_10002E0A0, &qword_10001E950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E0A8);
  }

  return result;
}

unint64_t sub_10000FDA4()
{
  result = qword_10002E0E0;
  if (!qword_10002E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E0E0);
  }

  return result;
}

uint64_t sub_10000FDF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000FE08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001CF3C();
  *a1 = result;
  return result;
}

uint64_t sub_10000FE5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CF5C();
  *a1 = result;
  return result;
}

uint64_t sub_10000FE88(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001CF6C();
}

unint64_t sub_10000FEB4()
{
  result = qword_10002E0F0;
  if (!qword_10002E0F0)
  {
    sub_10000F6A0(&qword_10002E0E8, &qword_10001EA08);
    sub_10000FF6C();
    sub_1000112AC(&qword_10002E118, &qword_10002E120, &qword_10001EA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E0F0);
  }

  return result;
}

unint64_t sub_10000FF6C()
{
  result = qword_10002E0F8;
  if (!qword_10002E0F8)
  {
    sub_10000F6A0(&qword_10002E100, &qword_10001EA10);
    sub_1000112AC(&qword_10002E108, &qword_10002E110, &qword_10001EA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E0F8);
  }

  return result;
}

uint64_t sub_100010024(uint64_t a1, uint64_t a2, char a3)
{
  sub_10001006C(a1, a2, a3 & 1);
}

uint64_t sub_10001006C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001007C(uint64_t a1, uint64_t a2, char a3)
{
  sub_10000FDF8(a1, a2, a3 & 1);
}

uint64_t sub_1000100C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EFC(&qword_10002E140, &qword_10001EA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100010134()
{
  result = qword_10002E168;
  if (!qword_10002E168)
  {
    sub_10000F6A0(&qword_10002E148, &qword_10001EA48);
    sub_1000112AC(&qword_10002E170, &qword_10002E140, &qword_10001EA40);
    sub_1000112AC(&qword_10002E0C0, &qword_10002E0A0, &qword_10001E950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E168);
  }

  return result;
}

uint64_t sub_100010218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000102E8()
{
  result = qword_10002E1C0;
  if (!qword_10002E1C0)
  {
    sub_10000F6A0(&qword_10002E1B8, &qword_10001EAA8);
    sub_1000103A0();
    sub_1000112AC(&qword_10002E208, &qword_10002E210, &qword_10001EAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1C0);
  }

  return result;
}

unint64_t sub_1000103A0()
{
  result = qword_10002E1C8;
  if (!qword_10002E1C8)
  {
    sub_10000F6A0(&qword_10002E1D0, &qword_10001EAB0);
    sub_100010458();
    sub_1000112AC(&qword_10002E1F8, &qword_10002E200, &qword_10001EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1C8);
  }

  return result;
}

unint64_t sub_100010458()
{
  result = qword_10002E1D8;
  if (!qword_10002E1D8)
  {
    sub_10000F6A0(&qword_10002E1E0, &qword_10001EAB8);
    sub_1000104E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1D8);
  }

  return result;
}

unint64_t sub_1000104E4()
{
  result = qword_10002E1E8;
  if (!qword_10002E1E8)
  {
    sub_10000F6A0(&qword_10002E1F0, &qword_10001EAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1E8);
  }

  return result;
}

uint64_t sub_100010568(uint64_t a1, uint64_t a2, char a3)
{
  sub_10001006C(a1, a2, a3 & 1);
}

uint64_t sub_1000105A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001006C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000105E8(uint64_t a1, uint64_t a2, char a3)
{
  sub_10000FDF8(a1, a2, a3 & 1);
}

uint64_t sub_100010624(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000FDF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100010668(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CEEC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000106CC(uint64_t a1)
{
  v2 = sub_10001CEEC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100010728()
{
  result = qword_10002E290;
  if (!qword_10002E290)
  {
    sub_10000F6A0(&qword_10002E288, &qword_10001EB48);
    sub_1000107E0();
    sub_1000112AC(&qword_10002E2E8, &qword_10002E280, &qword_10001EB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E290);
  }

  return result;
}

unint64_t sub_1000107E0()
{
  result = qword_10002E298;
  if (!qword_10002E298)
  {
    sub_10000F6A0(&qword_10002E2A0, &qword_10001EB50);
    sub_10001086C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E298);
  }

  return result;
}

unint64_t sub_10001086C()
{
  result = qword_10002E2A8;
  if (!qword_10002E2A8)
  {
    sub_10000F6A0(&qword_10002E2B0, &qword_10001EB58);
    sub_1000108F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2A8);
  }

  return result;
}

unint64_t sub_1000108F8()
{
  result = qword_10002E2B8;
  if (!qword_10002E2B8)
  {
    sub_10000F6A0(&qword_10002E2C0, &qword_10001EB60);
    sub_1000109B0();
    sub_1000112AC(&qword_10002E2D8, &qword_10002E2E0, &qword_10001EB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2B8);
  }

  return result;
}

unint64_t sub_1000109B0()
{
  result = qword_10002E2C8;
  if (!qword_10002E2C8)
  {
    sub_10000F6A0(&qword_10002E2D0, &qword_10001EB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2C8);
  }

  return result;
}

unint64_t sub_100010A34()
{
  result = qword_10002E2F0;
  if (!qword_10002E2F0)
  {
    sub_10000F6A0(&qword_10002E218, &qword_10001EAD8);
    sub_100010AEC();
    sub_1000112AC(&qword_10002E2E8, &qword_10002E280, &qword_10001EB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2F0);
  }

  return result;
}

unint64_t sub_100010AEC()
{
  result = qword_10002E2F8;
  if (!qword_10002E2F8)
  {
    sub_10000F6A0(&qword_10002E278, &qword_10001EB38);
    sub_100010B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2F8);
  }

  return result;
}

unint64_t sub_100010B78()
{
  result = qword_10002E300;
  if (!qword_10002E300)
  {
    sub_10000F6A0(&qword_10002E270, &qword_10001EB30);
    sub_100010C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E300);
  }

  return result;
}

unint64_t sub_100010C04()
{
  result = qword_10002E308;
  if (!qword_10002E308)
  {
    sub_10000F6A0(&qword_10002E268, &qword_10001EB28);
    sub_100010C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E308);
  }

  return result;
}

unint64_t sub_100010C90()
{
  result = qword_10002E310;
  if (!qword_10002E310)
  {
    sub_10000F6A0(&qword_10002E260, &qword_10001EB20);
    sub_100010D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E310);
  }

  return result;
}

unint64_t sub_100010D1C()
{
  result = qword_10002E318;
  if (!qword_10002E318)
  {
    sub_10000F6A0(&qword_10002E258, &qword_10001EB18);
    sub_100010DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E318);
  }

  return result;
}

unint64_t sub_100010DA8()
{
  result = qword_10002E320;
  if (!qword_10002E320)
  {
    sub_10000F6A0(&qword_10002E228, &qword_10001EAE8);
    sub_1000112AC(&qword_10002E328, &qword_10002E250, &qword_10001EB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E320);
  }

  return result;
}

uint64_t sub_100010E60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100010EC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002EFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100010F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CF0C();
  *a1 = result;
  return result;
}

uint64_t sub_100010F54(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001CF1C();
}

uint64_t sub_100010F80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100010FD4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10001101C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100011048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100011090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100011100()
{
  result = qword_10002E348;
  if (!qword_10002E348)
  {
    sub_10000F6A0(&qword_10002E0D0, &qword_10001E998);
    sub_1000111B8();
    sub_1000112AC(&qword_10002E1F8, &qword_10002E200, &qword_10001EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E348);
  }

  return result;
}

unint64_t sub_1000111B8()
{
  result = qword_10002E350;
  if (!qword_10002E350)
  {
    sub_10000F6A0(&qword_10002E080, &qword_10001E908);
    sub_10000F6A0(&qword_10002E070, &qword_10001E8F8);
    sub_10000FBF4();
    swift_getOpaqueTypeConformance2();
    sub_1000112AC(&qword_10002E358, &qword_10002E0C8, &qword_10001E990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E350);
  }

  return result;
}

uint64_t sub_1000112AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000F6A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000112F8()
{
  result = qword_10002E360;
  if (!qword_10002E360)
  {
    sub_10000F6A0(&qword_10002E178, &qword_10001EA68);
    sub_1000113B0();
    sub_1000112AC(&qword_10002E1F8, &qword_10002E200, &qword_10001EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E360);
  }

  return result;
}

unint64_t sub_1000113B0()
{
  result = qword_10002E368;
  if (!qword_10002E368)
  {
    sub_10000F6A0(&qword_10002E158, &qword_10001EA58);
    sub_10000F6A0(&qword_10002E148, &qword_10001EA48);
    sub_100010134();
    swift_getOpaqueTypeConformance2();
    sub_1000112AC(&qword_10002E358, &qword_10002E0C8, &qword_10001E990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E368);
  }

  return result;
}

uint64_t sub_1000114B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002EFC(&qword_10002E048, &qword_10001E770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100010E60(a3, v27 - v11, &qword_10002E048, &qword_10001E770);
  v13 = sub_10001D47C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100010EC8(v12, &qword_10002E048, &qword_10001E770);
  }

  else
  {
    sub_10001D46C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10001D43C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10001D34C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100010EC8(a3, &qword_10002E048, &qword_10001E770);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100010EC8(a3, &qword_10002E048, &qword_10001E770);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000117B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000117FC()
{
  result = sub_10001D21C();
  v1 = 41.0;
  if (result)
  {
    v1 = 32.0;
  }

  qword_10002E550 = *&v1;
  return result;
}

uint64_t sub_100011838()
{
  v0 = sub_10001CE1C();
  sub_10001CB68(v0, qword_10002E558);
  sub_1000023A4(v0, qword_10002E558);
  return sub_10001CE0C();
}

void sub_1000118B8(void *a1)
{
  v3 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_logger;
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v4 = sub_10001CE1C();
  v5 = sub_1000023A4(v4, qword_10002E558);
  (*(*(v4 - 8) + 16))(&v1[v3], v5, v4);
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotMachine] = 0;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotID] = -1;
  v6 = &v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_credential] = 0;
  v7 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_layerGrader;
  *&v1[v7] = [objc_allocWithZone(UISTransform3DGrader) init];
  v8 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_contentsGrader;
  *&v1[v8] = [objc_allocWithZone(UISTransform3DGrader) init];
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag] = 0;
  v9 = &v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName];
  *v11 = 7368769;
  *(v11 + 1) = 0xE300000000000000;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cnAuditToken] = 0;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext] = 0;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches] = 0;
  v12 = &v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedQueryString];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails] = 0;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones] = 0;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTraits] = 0;
  v13 = &v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedFrame];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTag] = 0;
  *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle] = 0;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for ContactsButtonServiceProvider();
  v14 = objc_msgSendSuper2(&v34, "init");
  v15 = objc_allocWithZone(UISSlotMachine);
  v16 = v14;
  v17 = [v15 initWithSlotDrawer:v16 options:3];
  v18 = *&v16[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotMachine];
  *&v16[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotMachine] = v17;

  [a1 auditToken];
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v23 = &v16[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken];
  *v23 = v30;
  *(v23 + 1) = v20;
  *(v23 + 2) = v21;
  *(v23 + 3) = v22;
  v23[32] = 0;
  v24 = objc_opt_self();
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v25 = [v24 auditToken:&v30];
  v26 = *&v16[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cnAuditToken];
  *&v16[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cnAuditToken] = v25;
  v27 = v25;

  if (v27)
  {
    v28 = [objc_allocWithZone(CNAuthorizationContext) initWithAuditToken:v27 assumedIdentity:0];

    v29 = *&v16[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext];
    *&v16[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext] = v28;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100011C10(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v31 = a6;
  v15 = sub_100002EFC(&qword_10002E048, &qword_10001E770);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - v17;
  v19 = sub_10001D47C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_10001D45C();
  v20 = a5;

  v21 = a8;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = sub_10001D44C();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v22;
  v27[5] = v23;
  v27[6] = a3;
  v27[7] = v25;
  v28 = v31;
  v27[8] = a5;
  v27[9] = v28;
  v27[10] = a7;
  v27[11] = v21;
  sub_1000114B8(0, 0, v18, &unk_10001EDA0, v27);
}

uint64_t sub_100011DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v14;
  *(v8 + 272) = v13;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  sub_10001D45C();
  *(v8 + 296) = sub_10001D44C();
  v10 = sub_10001D43C();

  return _swift_task_switch(sub_100011E5C, v10, v9);
}

int64_t sub_100011E5C()
{
  v75 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = v2[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton];
  if (!v1)
  {
    if ((v2[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v4 = *(v0 + 240);
    v5 = v2;
    v6 = v4;
    sub_10000F38C(v5, v6, &v61);
    sub_10001D23C();
    sub_10001CE6C();
    v7 = v72;
    *(v0 + 176) = v71;
    *(v0 + 192) = v7;
    *(v0 + 208) = v73;
    *(v0 + 224) = v74;
    v8 = v68;
    *(v0 + 112) = v67;
    *(v0 + 128) = v8;
    v9 = v70;
    *(v0 + 144) = v69;
    *(v0 + 160) = v9;
    v10 = v64;
    *(v0 + 48) = v63;
    *(v0 + 64) = v10;
    v11 = v66;
    *(v0 + 80) = v65;
    *(v0 + 96) = v11;
    v12 = v62;
    *(v0 + 16) = v61;
    *(v0 + 32) = v12;
    v13 = &unk_10002E058;
    v14 = &unk_10001E790;
    goto LABEL_8;
  }

  [*(v0 + 248) floatValue];
  v2 = *(v0 + 232);
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = qword_10002D8A0;
  v16 = v2;
  if (v15 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v17 = *(v0 + 240);
    v18 = qword_10002E548;
    v19 = v16;
    v6 = v17;
    sub_10001D23C();
    sub_10001CE6C();
    *(v0 + 48) = v18;
    *(v0 + 56) = v18;
    *(v0 + 64) = xmmword_10001E6D0;
    *(v0 + 80) = xmmword_10001E6E0;
    *(v0 + 96) = xmmword_10001E6F0;
    *(v0 + 112) = xmmword_10001E700;
    *(v0 + 128) = xmmword_10001E710;
    v20 = v62;
    *(v0 + 152) = v61;
    *(v0 + 16) = v19;
    *(v0 + 24) = v6;
    *(v0 + 32) = v19;
    *(v0 + 40) = 0x4044800000000000;
    *(v0 + 144) = 0x401E000000000000;
    *(v0 + 168) = v20;
    *(v0 + 184) = v63;
    v13 = &unk_10002E050;
    v14 = &unk_10001E788;
LABEL_8:
    v21 = sub_100002EFC(v13, v14);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_10001CEAC();
    [v6 displayScale];
    sub_10001CE9C();
    v24 = sub_10001CE7C();
    v25 = v24;
    sub_10001CE8C();
    v27 = v26;

    if (!v24)
    {
      v53 = *(v0 + 296);
      v54 = *(v0 + 256);

      v55 = sub_10001CDFC();
      v56 = sub_10001D4EC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "#ContactsButton #size imageRenderer could not render cgImage so returning default values for sizeThatFits", v57, 2u);
      }

      v59 = *(v0 + 272);
      v58 = *(v0 + 280);

      sub_1000072F8(0, &qword_10002E500, NSNumber_ptr);
      isa = sub_10001D56C(300).super.super.isa;
      v44 = sub_10001D56C(50).super.super.isa;
      v59(isa, v44);
      v29 = 0;
      goto LABEL_31;
    }

    v28 = *(v0 + 256);
    v29 = v24;
    v30 = sub_10001CDFC();
    v31 = sub_10001D50C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = CGImageGetWidth(v29);
      *(v32 + 12) = 2048;
      *(v32 + 14) = CGImageGetHeight(v29);
      _os_log_impl(&_mh_execute_header, v30, v31, "#ContactsButton #size renderer Scaled image: %ld x %ld", v32, 0x16u);
    }

    result = CGImageGetWidth(v29);
    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v27 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v27 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v34 = v27;
    if (v27)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
    v16 = *(v0 + 232);
  }

  if (v34 == -1 && result == 0x8000000000000000)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  v35 = [objc_allocWithZone(NSNumber) initWithInteger:result / v34];
  result = CGImageGetHeight(v29);
  if (v34 == -1 && result == 0x8000000000000000)
  {
    goto LABEL_40;
  }

  v36 = [objc_allocWithZone(NSNumber) initWithInteger:result / v34];
  if (v1)
  {
    v37 = *(v0 + 248);
    [v37 floatValue];
    if (v38 > 0.0)
    {
      v39 = v37;

      v35 = v39;
    }
  }

  v40 = *(v0 + 264);
  if (v40)
  {
    [*(v0 + 264) floatValue];
    if (v41 > 0.0)
    {
      v42 = v40;

      v36 = v42;
    }
  }

  v43 = *(v0 + 296);

  v44 = v35;
  isa = v36;
  v46 = sub_10001CDFC();
  v47 = sub_10001D50C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412546;
    *(v48 + 4) = v44;
    *(v48 + 12) = 2112;
    *(v48 + 14) = isa;
    *v49 = v44;
    v49[1] = isa;
    v50 = v44;
    v51 = isa;
    _os_log_impl(&_mh_execute_header, v46, v47, "#ContactsButton #size provider resolved width: %@ height: %@", v48, 0x16u);
    sub_100002EFC(&qword_10002DA60, &qword_10001ECF0);
    swift_arrayDestroy();
  }

  v52 = *(v0 + 280);
  (*(v0 + 272))(v44, isa);

LABEL_31:
  dispatch_group_leave(*(v0 + 288));

  v60 = *(v0 + 8);

  return v60();
}

unint64_t sub_10001259C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002EFC(&qword_10002E488, &qword_10001ED38);
    v2 = sub_10001D67C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1000199A4(&v27, v29);
        sub_1000199A4(v29, v30);
        sub_1000199A4(v30, &v28);
        result = sub_100017EE0(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100002F44(v12);
          result = sub_1000199A4(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1000199A4(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000129A0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_10001D3CC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[29] = a4;
  sub_10001D45C();
  v8[34] = sub_10001D44C();
  v10 = sub_10001D43C();

  return _swift_task_switch(sub_100012B14, v10, v9);
}

uint64_t sub_100012B14()
{
  v33 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);

  v3 = *(v2 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton);
  CGRectGetWidth(*(v2 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame));
  if (v3)
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 240);
    v6 = v4;
    sub_10000F38C(v5, v6, v31);
    sub_10001D23C();
    sub_10001CE6C();
    v7 = v31[11];
    *(v0 + 176) = v31[10];
    *(v0 + 192) = v7;
    *(v0 + 208) = v31[12];
    *(v0 + 224) = v32;
    v8 = v31[7];
    *(v0 + 112) = v31[6];
    *(v0 + 128) = v8;
    v9 = v31[9];
    *(v0 + 144) = v31[8];
    *(v0 + 160) = v9;
    v10 = v31[3];
    *(v0 + 48) = v31[2];
    *(v0 + 64) = v10;
    v11 = v31[5];
    *(v0 + 80) = v31[4];
    *(v0 + 96) = v11;
    v12 = v31[1];
    *(v0 + 16) = v31[0];
    *(v0 + 32) = v12;
    v13 = &unk_10002E058;
    v14 = &unk_10001E790;
  }

  else
  {
    v15 = qword_10002D8A0;
    v16 = *(v0 + 240);
    if (v15 != -1)
    {
      swift_once();
      v16 = *(v0 + 240);
    }

    v17 = *(v0 + 248);
    v18 = qword_10002E548;
    v19 = v16;
    v6 = v17;
    sub_10001D23C();
    sub_10001CE6C();
    *(v0 + 16) = v19;
    *(v0 + 24) = v6;
    *(v0 + 32) = v19;
    *(v0 + 40) = 0x4044800000000000;
    *(v0 + 48) = v18;
    *(v0 + 56) = v18;
    *(v0 + 64) = xmmword_10001E6D0;
    *(v0 + 80) = xmmword_10001E6E0;
    *(v0 + 96) = xmmword_10001E6F0;
    *(v0 + 112) = xmmword_10001E700;
    *(v0 + 128) = xmmword_10001E710;
    *(v0 + 144) = 0x401E000000000000;
    v13 = &unk_10002E050;
    v14 = &unk_10001E788;
  }

  v20 = sub_100002EFC(v13, v14);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_10001CEAC();
  [v6 displayScale];
  sub_10001CE9C();
  v23 = sub_10001CE7C();
  v24 = v23;
  sub_10001CE8C();

  v25 = *(v0 + 256);
  v26 = *(v0 + 232);
  swift_beginAccess();
  v27 = *(v26 + 16);
  *(v26 + 16) = v23;

  v28 = *(v25 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag);
  if (v28)
  {
    *(v28 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_renderedSuccessfully) = 1;
  }

  dispatch_group_leave(*(v0 + 264));
  v29 = *(v0 + 8);

  return v29();
}

id sub_100012E68(void *a1)
{
  v3 = sub_10001CC9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag];
  if (!v8 || v8[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_renderedSuccessfully] != 1)
  {
    v18 = sub_10001CDFC();
    v19 = sub_10001D4EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "#ContactsButton rendering did not succeed", v20, 2u);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType._failedRendering(_:), v3);
    v21 = sub_10001CC8C();
    (*(v4 + 8))(v7, v3);
    v22 = objc_allocWithZone(NSError);
    v23 = sub_10001D2DC();

    v24 = [v22 initWithDomain:v23 code:v21 userInfo:0];
    goto LABEL_16;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 sharedInstance];
  v12 = [v11 authenticateMessage:a1];

  if (v12 != 2)
  {
    v25 = sub_10001CDFC();
    v26 = sub_10001D4EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v25, v26, "#ContactsButton authentication status is invalid: %ld", v27, 0xCu);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = &enum case for ContactButtonServiceErrorType._invalidAuthMessage(_:);
    goto LABEL_14;
  }

  v13 = &v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken];
  if (v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken + 32])
  {
    v14 = sub_10001CDFC();
    v15 = sub_10001D4EC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "#ContactsButton no audit token found", v16, 2u);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = &enum case for ContactButtonServiceErrorType._invalidAuditToken(_:);
    goto LABEL_14;
  }

  v32 = v13[2];
  v31 = v13[3];
  v33 = *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken + 8];
  *&v222 = *v13;
  *(&v222 + 1) = v33;
  *&v223 = v32;
  *(&v223 + 1) = v31;
  v34 = BSVersionedPIDForAuditToken();
  if (v34 != [a1 versionedPID])
  {
    v41 = a1;
    v42 = sub_10001CDFC();
    v43 = sub_10001D4EC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v204 = v10;
      v45 = v44;
      *v44 = 134218240;
      *(v44 + 4) = [v41 versionedPID];

      *(v45 + 12) = 2048;
      *(v45 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v42, v43, "#ContactsButton authMessage vpid: %lld does not matches auditToken vpid: %lld", v45, 0x16u);
      v10 = v204;
    }

    else
    {

      v42 = v41;
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = &enum case for ContactButtonServiceErrorType._mismatchedTokenPid(_:);
    goto LABEL_14;
  }

  v35 = mach_continuous_time();
  if (v35 < [a1 timestamp])
  {
    v36 = a1;
    v37 = sub_10001CDFC();
    v38 = sub_10001D4EC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v10;
      v40 = swift_slowAlloc();
      *v40 = 134218240;
      *(v40 + 4) = v35;
      *(v40 + 12) = 2048;
      *(v40 + 14) = [v36 timestamp];

      _os_log_impl(&_mh_execute_header, v37, v38, "#ContactsButton authentication message came from the future? currentTime: %llu  messageTime: %llu", v40, 0x16u);
      v10 = v39;
    }

    else
    {

      v37 = v36;
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = &enum case for ContactButtonServiceErrorType._invalidTimestamp(_:);
LABEL_14:
    (*(v4 + 104))(v7, *v17, v3);
    v28 = sub_10001CC8C();
    (*(v4 + 8))(v7, v3);
    v29 = objc_allocWithZone(NSError);
    v23 = sub_10001D2DC();

    v24 = [v29 initWithDomain:v23 code:v28 userInfo:0];
LABEL_15:

LABEL_16:
    return v24;
  }

  v46 = [a1 timestamp];
  v48 = v35 - v46;
  if (v35 < v46)
  {
    __break(1u);
  }

  else if (qword_10002D8B8 == -1)
  {
    goto LABEL_26;
  }

  swift_once();
LABEL_26:
  if (!is_mul_ok(v48, qword_10002E370))
  {
    __break(1u);
    goto LABEL_119;
  }

  LODWORD(v47) = HIDWORD(qword_10002E370);
  v49 = (v48 * qword_10002E370) / v47 / 1000000000.0;
  if (v49 >= 3.0)
  {
    v99 = a1;
    v100 = sub_10001CDFC();
    v101 = sub_10001D4EC();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = v10;
      v103 = swift_slowAlloc();
      *v103 = 134218496;
      *(v103 + 4) = v49;
      *(v103 + 12) = 2048;
      *(v103 + 14) = v35;
      *(v103 + 22) = 2048;
      *(v103 + 24) = [v99 timestamp];

      _os_log_impl(&_mh_execute_header, v100, v101, "#ContactsButton message is too old: %f  currentTime: %llu  messageTime: %llu", v103, 0x20u);
      v10 = v102;
    }

    else
    {

      v100 = v99;
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = &enum case for ContactButtonServiceErrorType._oldTimestamp(_:);
    goto LABEL_14;
  }

  v204 = v10;
  v50 = [a1 targetSlotID];
  v51 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotID;
  if (v50 != *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotID])
  {
    v203 = v1;
    v104 = a1;
    v105 = v1;
    v106 = sub_10001CDFC();
    v107 = sub_10001D4EC();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 67109376;
      *(v108 + 4) = *&v105[v51];

      *(v108 + 8) = 1024;
      *(v108 + 10) = [v104 targetSlotID];

      _os_log_impl(&_mh_execute_header, v106, v107, "#ContactsButton invalid slot ID, expected %u but got %u", v108, 0xEu);
    }

    else
    {

      v106 = v104;
    }

    v109 = v204;

    sub_10001CC7C();
    sub_10001CBDC();
    (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType._slotIDMismatch(_:), v3);
    v110 = sub_10001CC8C();
    (*(v4 + 8))(v7, v3);
    v111 = objc_allocWithZone(NSError);
    v23 = sub_10001D2DC();

    v24 = [v111 initWithDomain:v23 code:v110 userInfo:0];

    goto LABEL_16;
  }

  v52 = [a1 hitTestInformationFromStartEvent];
  if (!v52)
  {
    v112 = sub_10001CDFC();
    v113 = sub_10001D4EC();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v112, v113, "#ContactsButton message didn't have starting hit test info?", v114, 2u);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType._missingHitTest(_:), v3);
    v115 = sub_10001CC8C();
    (*(v4 + 8))(v7, v3);
    v116 = objc_allocWithZone(NSError);
    v23 = sub_10001D2DC();

    v24 = [v116 initWithDomain:v23 code:v115 userInfo:0];

    goto LABEL_16;
  }

  v10 = v52;
  v53 = [a1 hitTestInformationFromEndEvent];
  if (!v53)
  {
    v117 = sub_10001CDFC();
    v118 = sub_10001D4EC();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "#ContactsButton message didn't have ending hit test info?", v119, 2u);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType._missingHitTest(_:), v3);
    v120 = sub_10001CC8C();
    (*(v4 + 8))(v7, v3);
    v121 = objc_allocWithZone(NSError);
    v23 = sub_10001D2DC();

    v24 = [v121 initWithDomain:v23 code:v120 userInfo:0];

    goto LABEL_15;
  }

  v54 = v53;
  v201 = v1;
  v203 = v10;
  [v10 cumulativeOpacity];
  v56 = sub_100009314(0, v55);
  [v54 cumulativeOpacity];
  v58 = sub_100009314(0, v57);
  v59 = v58;
  v202 = v54;
  if ((v56 & 1) == 0 || (v58 & 1) == 0)
  {
    v122 = sub_10001CDFC();
    v123 = sub_10001D4EC();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      *&v222 = v201;
      *v124 = 136315394;
      if (v56)
      {
        v125 = 0;
      }

      else
      {
        v125 = 7630702;
      }

      if (v56)
      {
        v126 = 0xE000000000000000;
      }

      else
      {
        v126 = 0xE300000000000000;
      }

      v127 = sub_100017934(v125, v126, &v222);
      v200 = v123;
      v128 = v127;

      *(v124 + 4) = v128;
      *(v124 + 12) = 2080;
      if (v59)
      {
        v129 = 0;
      }

      else
      {
        v129 = 7630702;
      }

      if (v59)
      {
        v130 = 0xE000000000000000;
      }

      else
      {
        v130 = 0xE300000000000000;
      }

      v131 = sub_100017934(v129, v130, &v222);

      *(v124 + 14) = v131;
      _os_log_impl(&_mh_execute_header, v122, v200, "#ContactsButton invalid contrast for FG font color, start %s ok, end %s ok", v124, 0x16u);
      swift_arrayDestroy();
    }

    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(inited + 32) = sub_10001CBEC();
    *(inited + 40) = v133;
    *(inited + 48) = 0xD00000000000006CLL;
    *(inited + 56) = 0x8000000100021AA0;
    v134 = sub_100018F10(inited);
    swift_setDeallocating();
    sub_100010EC8(inited + 32, &qword_10002E480, &qword_10001ED30);
    sub_10001CBDC();
    (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType.invalidContrast(_:), v3);
    v135 = sub_10001CC8C();
    (*(v4 + 8))(v7, v3);
    sub_10001259C(v134);

    v136 = objc_allocWithZone(NSError);
    v137 = sub_10001D2DC();

    goto LABEL_100;
  }

  [v203 cumulativeOpacity];
  v61 = sub_100009314(1, v60);
  [v54 cumulativeOpacity];
  v63 = sub_100009314(1, v62);
  v64 = v63;
  if ((v61 & 1) == 0 || (v63 & 1) == 0)
  {
    v138 = sub_10001CDFC();
    v139 = sub_10001D4EC();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      *&v222 = v201;
      *v140 = 136315394;
      if (v61)
      {
        v141 = 0;
      }

      else
      {
        v141 = 7630702;
      }

      v200 = v139;
      if (v61)
      {
        v142 = 0xE000000000000000;
      }

      else
      {
        v142 = 0xE300000000000000;
      }

      v143 = sub_100017934(v141, v142, &v222);

      *(v140 + 4) = v143;
      *(v140 + 12) = 2080;
      if (v64)
      {
        v144 = 0;
      }

      else
      {
        v144 = 7630702;
      }

      if (v64)
      {
        v145 = 0xE000000000000000;
      }

      else
      {
        v145 = 0xE300000000000000;
      }

      v146 = sub_100017934(v144, v145, &v222);

      *(v140 + 14) = v146;
      _os_log_impl(&_mh_execute_header, v138, v200, "#ContactsButton invalid contrast for tint color, start %s ok, end %s ok", v140, 0x16u);
      swift_arrayDestroy();
    }

    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    v147 = swift_initStackObject();
    *(v147 + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(v147 + 32) = sub_10001CBEC();
    *(v147 + 40) = v148;
    *(v147 + 48) = 0xD000000000000062;
    *(v147 + 56) = 0x8000000100021B10;
    v149 = sub_100018F10(v147);
    swift_setDeallocating();
    sub_100010EC8(v147 + 32, &qword_10002E480, &qword_10001ED30);
    sub_10001CBDC();
    v150 = &enum case for ContactButtonServiceErrorType.invalidContrast(_:);
LABEL_99:
    (*(v4 + 104))(v7, *v150, v3);
    v135 = sub_10001CC8C();
    (*(v4 + 8))(v7, v3);
    sub_10001259C(v149);

    v136 = objc_allocWithZone(NSError);
    v137 = sub_10001D2DC();

LABEL_100:
    v151.super.isa = sub_10001D28C().super.isa;

    v24 = [v136 initWithDomain:v137 code:v135 userInfo:v151.super.isa];

LABEL_101:
    return v24;
  }

  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v65 = sub_10001CE1C();
  sub_1000023A4(v65, qword_10002E558);
  v66 = v204;
  v67 = sub_10001CDFC();
  v68 = sub_10001D4CC();

  v69 = &ServiceDelegate;
  if (os_log_type_enabled(v67, v68))
  {
    v70 = v66;
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    [*&v70[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont] pointSize];
    *(v71 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v67, v68, "#ContactsButton is font size %f too small?", v71, 0xCu);
    v66 = v70;
    v69 = &ServiceDelegate;
  }

  v73 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont;
  [*&v66[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont] v69[451].count];
  if (v74 > 6.0)
  {
    v75 = v66;
    v76 = sub_10001CDFC();
    v77 = sub_10001D4CC();

    v78 = os_log_type_enabled(v76, v77);
    v204 = v75;
    if (v78)
    {
      v79 = v69;
      v80 = v66;
      v81 = swift_slowAlloc();
      *v81 = 134217984;
      [*&v80[v73] v79[451].count];
      *(v81 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "#ContactsButton is font size %f too big?", v81, 0xCu);
      v66 = v80;
      v69 = v79;
      v75 = v204;
    }

    [*&v66[v73] v69[451].count];
    if (v83 >= 64.0)
    {
      v165 = sub_10001CDFC();
      v166 = sub_10001D4EC();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&_mh_execute_header, v165, v166, "#ContactsButton font size is too large to be useful", v167, 2u);
      }

      sub_100002EFC(&qword_10002E478, &qword_10001ED28);
      v168 = swift_allocObject();
      *(v168 + 16) = xmmword_10001E6C0;
      sub_10001CC7C();
      *(v168 + 32) = sub_10001CBEC();
      *(v168 + 40) = v169;
      *(v168 + 48) = 0xD000000000000034;
      *(v168 + 56) = 0x8000000100021C10;
      v170 = sub_100018F10(v168);
      swift_setDeallocating();
      sub_100010EC8(v168 + 32, &qword_10002E480, &qword_10001ED30);
      swift_deallocClassInstance();
      sub_10001CBDC();
      (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType.fontTooBig(_:), v3);
      v171 = sub_10001CC8C();
      (*(v4 + 8))(v7, v3);
      sub_10001259C(v170);

      v172 = objc_allocWithZone(NSError);
      v137 = sub_10001D2DC();

      v151.super.isa = sub_10001D28C().super.isa;

      v24 = [v172 initWithDomain:v137 code:v171 userInfo:v151.super.isa];

      goto LABEL_101;
    }

    if (sub_100009018())
    {
      v84 = v201;
      v85 = *(v201 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_layerGrader);
      v86 = v203;
      [v203 cumulativeLayerTransform];
      v87 = v202;
      [v202 cumulativeLayerTransform];
      v210 = v218;
      v211 = v219;
      v212 = v220;
      v213 = v221;
      v206 = v214;
      v207 = v215;
      v208 = v216;
      v209 = v217;
      v88 = [v85 gradeStartTransform3D:&v206 endTransform3D:v205];
      v89 = *(v84 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_contentsGrader);
      [v86 cumulativeContentsTransform];
      [v87 cumulativeContentsTransform];
      v210 = v226;
      v211 = v227;
      v212 = v228;
      v213 = v229;
      v206 = v222;
      v207 = v223;
      v208 = v224;
      v209 = v225;
      v90 = [v89 gradeStartTransform3D:&v206 endTransform3D:v205];
      v91 = sub_10001CDFC();
      v92 = sub_10001D4DC();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 134218240;
        *(v93 + 4) = v88;
        *(v93 + 12) = 2048;
        *(v93 + 14) = v90;
        _os_log_impl(&_mh_execute_header, v91, v92, "#ContactsButton layerStatus: %lu  contentsStatus: %lu", v93, 0x16u);
      }

      if (v88 | v90)
      {
        v178 = sub_10001CDFC();
        v179 = sub_10001D4EC();
        if (os_log_type_enabled(v178, v179))
        {
          v180 = swift_slowAlloc();
          *v180 = 0;
          _os_log_impl(&_mh_execute_header, v178, v179, "#ContactsButton invalid transform", v180, 2u);
        }

        sub_100002EFC(&qword_10002E478, &qword_10001ED28);
        v181 = swift_allocObject();
        *(v181 + 16) = xmmword_10001E6C0;
        sub_10001CC7C();
        *(v181 + 32) = sub_10001CBEC();
        *(v181 + 40) = v182;
        *(v181 + 48) = 0xD000000000000018;
        *(v181 + 56) = 0x8000000100021BD0;
        sub_100018F10(v181);
        swift_setDeallocating();
        sub_100010EC8(v181 + 32, &qword_10002E480, &qword_10001ED30);
        swift_deallocClassInstance();

        sub_10001CBDC();
        (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType.invalidTransform(_:), v3);
        v183 = sub_10001CC8C();
        (*(v4 + 8))(v7, v3);
        v184 = objc_allocWithZone(NSError);
        v23 = sub_10001D2DC();

        v24 = [v184 initWithDomain:v23 code:v183 userInfo:0];

        goto LABEL_16;
      }

      if (([v203 detectedOcclusion] & 1) != 0 || objc_msgSend(v202, "detectedOcclusion"))
      {
        v203 = v203;
        v94 = v202;
        v95 = sub_10001CDFC();
        v96 = sub_10001D4EC();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 67109376;
          v98 = v203;
          *(v97 + 4) = [v203 detectedOcclusion];

          *(v97 + 8) = 1024;
          *(v97 + 10) = [v94 detectedOcclusion];

          _os_log_impl(&_mh_execute_header, v95, v96, "#ContactsButton occlusion detected start=%{BOOL}d end=%{BOOL}d", v97, 0xEu);
        }

        else
        {

          v95 = v94;
        }

        sub_100002EFC(&qword_10002E478, &qword_10001ED28);
        v185 = swift_allocObject();
        *(v185 + 16) = xmmword_10001E6C0;
        sub_10001CC7C();
        *(v185 + 32) = sub_10001CBEC();
        *(v185 + 40) = v186;
        *(v185 + 48) = 0xD000000000000012;
        *(v185 + 56) = 0x8000000100021BF0;
        v187 = sub_100018F10(v185);
        swift_setDeallocating();
        sub_100010EC8(v185 + 32, &qword_10002E480, &qword_10001ED30);
        swift_deallocClassInstance();
        sub_10001CBDC();
        (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType.buttonOccluded(_:), v3);
        v188 = sub_10001CC8C();
        (*(v4 + 8))(v7, v3);
        sub_10001259C(v187);

        v189 = objc_allocWithZone(NSError);
        v190 = sub_10001D2DC();

        isa = sub_10001D28C().super.isa;

        v24 = [v189 initWithDomain:v190 code:v188 userInfo:isa];

        return v24;
      }

LABEL_119:
      if (([v203 hasInsecureFilter] & 1) == 0 && !objc_msgSend(v202, "hasInsecureFilter"))
      {

        return 0;
      }

      v203 = v203;
      v192 = v202;
      v193 = sub_10001CDFC();
      v194 = sub_10001D4EC();
      if (os_log_type_enabled(v193, v194))
      {
        v195 = swift_slowAlloc();
        *v195 = 67109376;
        v196 = v203;
        *(v195 + 4) = [v203 hasInsecureFilter];

        *(v195 + 8) = 1024;
        *(v195 + 10) = [v192 hasInsecureFilter];

        _os_log_impl(&_mh_execute_header, v193, v194, "#ContactsButton insecure filter start=%{BOOL}d end=%{BOOL}d", v195, 0xEu);
      }

      else
      {

        v193 = v192;
      }

      sub_10001CC7C();
      sub_10001CBDC();
      (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType._insecureFilter(_:), v3);
      v197 = sub_10001CC8C();
      (*(v4 + 8))(v7, v3);
      v198 = objc_allocWithZone(NSError);
      v23 = sub_10001D2DC();

      v24 = [v198 initWithDomain:v23 code:v197 userInfo:0];

      goto LABEL_16;
    }

    v173 = sub_10001CDFC();
    v174 = sub_10001D4EC();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&_mh_execute_header, v173, v174, "#ContactsButton avatar is too large", v175, 2u);
    }

    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    v176 = swift_allocObject();
    *(v176 + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(v176 + 32) = sub_10001CBEC();
    *(v176 + 40) = v177;
    *(v176 + 48) = 0xD000000000000047;
    *(v176 + 56) = 0x8000000100021B80;
    v149 = sub_100018F10(v176);
    swift_setDeallocating();
    sub_100010EC8(v176 + 32, &qword_10002E480, &qword_10001ED30);
    swift_deallocClassInstance();
    sub_10001CBDC();
    v150 = &enum case for ContactButtonServiceErrorType.avatarTooLarge(_:);
    goto LABEL_99;
  }

  v152 = v66;
  v153 = sub_10001CDFC();
  v154 = sub_10001D4EC();
  v155 = os_log_type_enabled(v153, v154);
  v156 = v203;
  if (v155)
  {
    v157 = swift_slowAlloc();
    *v157 = 0;
    _os_log_impl(&_mh_execute_header, v153, v154, "#ContactsButton font size is too small to be legible", v157, 2u);
  }

  sub_100002EFC(&qword_10002E478, &qword_10001ED28);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_10001E6C0;
  sub_10001CC7C();
  *(v158 + 32) = sub_10001CBEC();
  *(v158 + 40) = v159;
  *(v158 + 48) = 0xD000000000000034;
  *(v158 + 56) = 0x8000000100021C50;
  v160 = sub_100018F10(v158);
  swift_setDeallocating();
  sub_100010EC8(v158 + 32, &qword_10002E480, &qword_10001ED30);
  swift_deallocClassInstance();
  sub_10001CBDC();
  (*(v4 + 104))(v7, enum case for ContactButtonServiceErrorType.fontTooSmall(_:), v3);
  v161 = sub_10001CC8C();
  (*(v4 + 8))(v7, v3);
  sub_10001259C(v160);

  v162 = objc_allocWithZone(NSError);
  v163 = sub_10001D2DC();

  v164 = sub_10001D28C().super.isa;

  v24 = [v162 initWithDomain:v163 code:v161 userInfo:v164];

  return v24;
}

double sub_10001507C()
{
  v1 = 0.0;
  mach_timebase_info(&v1);
  result = v1;
  qword_10002E370 = *&v1;
  return result;
}

uint64_t sub_1000150E0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_10001CDAC();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v131 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001D2CC();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v130 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_10001CD9C();
  v121 = *(v122 - 8);
  v20 = *(v121 + 64);
  __chkstk_darwin(v122);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10001CCEC();
  v129 = *(v23 - 8);
  v24 = *(v129 + 64);
  __chkstk_darwin(v23);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CCDC();
  v27 = [a1 givenName];
  sub_10001D30C();

  sub_10001CCAC();
  v28 = [a1 familyName];
  sub_10001D30C();

  sub_10001CCBC();
  v29 = objc_opt_self();
  v128 = v26;
  v30 = sub_10001CCCC();
  v31 = [v29 localizedStringFromPersonNameComponents:v30 style:0 options:0];

  v32 = sub_10001D30C();
  v34 = v33;

  if (sub_10001CC0C() == 0x6C69616D65 && v35 == 0xE500000000000000)
  {

    goto LABEL_5;
  }

  v36 = sub_10001D6BC();

  if (v36)
  {
LABEL_5:
    v37 = [a1 emailAddresses];
    sub_100002EFC(&qword_10002DDF0, &qword_10001E5E0);
    v38 = sub_10001D3FC();

    if (v38 >> 62)
    {
      if (sub_10001D64C())
      {
        goto LABEL_7;
      }
    }

    else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = sub_10001D5DC();
LABEL_10:
        v40 = v39;

        v41 = [v40 value];

        if (v41)
        {
          v124 = sub_10001D30C();
          v123 = v42;

          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v39 = *(v38 + 32);
        goto LABEL_10;
      }

      __break(1u);
LABEL_52:
      result = sub_10001D64C();
      if (!result)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (sub_10001CC0C() == 0x656E6F6870 && v43 == 0xE500000000000000)
  {
  }

  else
  {
    v44 = sub_10001D6BC();

    if ((v44 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v45 = [a1 phoneNumbers];
  sub_100002EFC(&qword_10002DDF0, &qword_10001E5E0);
  v38 = sub_10001D3FC();

  if (v38 >> 62)
  {
    goto LABEL_52;
  }

  result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v47 = sub_10001D5DC();
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v47 = *(v38 + 32);
  }

  v48 = v47;

  v49 = [v48 value];

  if (v49)
  {
    v50 = [v49 stringValue];
    v124 = sub_10001D30C();
    v123 = v51;

    goto LABEL_26;
  }

LABEL_25:
  v124 = 0;
  v123 = 0xE000000000000000;
LABEL_26:
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10001E720;
  v53 = [a1 imageDataAvailable];
  v126 = v32;
  v127 = v23;
  v125 = v34;
  if (v53)
  {
    v54 = [a1 thumbnailImageData];
    if (v54)
    {
      v55 = v54;
      v56 = sub_10001CD5C();
      v57 = v7;
      v59 = v58;

      v60 = *(v52 + 16);
      v61 = *(v52 + 24);
      *(v52 + 16) = v56;
      *(v52 + 24) = v59;
      v7 = v57;
      sub_10000F908(v60, v61);
    }
  }

  else
  {
    v62 = dispatch_group_create();
    dispatch_group_enter(v62);
    v63 = [objc_allocWithZone(CNAvatarImageRenderer) init];
    v64 = *(v7 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag);
    v118 = v63;
    v117 = v62;
    if (v64)
    {
      v65 = (v64 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth);
    }

    else
    {
      if (qword_10002D8A8 != -1)
      {
        swift_once();
      }

      v65 = &qword_10002E550;
    }

    v66 = *v65;
    v67 = [objc_opt_self() mainScreen];
    [v67 scale];
    v69 = v68;

    v70 = *(v7 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle);
    v120 = a2;
    v119 = v7;
    if (v70)
    {
      v71 = [v70 localization];
      sub_10001D30C();

      sub_10001CD7C();
      v72 = sub_10001CD8C();
      (*(v121 + 8))(v22, v122);
      v73 = v72 != 1;
    }

    else
    {
      v73 = 1;
    }

    v74 = [objc_opt_self() scopeWithPointSize:v73 scale:0 rightToLeft:v66 style:{v66, v69}];
    v75 = [a1 givenName];
    v76 = sub_10001D30C();
    v78 = v77;

    v79 = sub_1000129A0(v76, v78);
    v81 = v80;

    if (v81)
    {
      v82 = v79;
    }

    else
    {
      v82 = 32;
    }

    if (!v81)
    {
      v81 = 0xE100000000000000;
    }

    v83 = [a1 familyName];
    v84 = sub_10001D30C();
    v86 = v85;

    v87 = sub_1000129A0(v84, v86);
    v89 = v88;

    if (v89)
    {
      v90 = v87;
    }

    else
    {
      v90 = 32;
    }

    if (!v89)
    {
      v89 = 0xE100000000000000;
    }

    aBlock = v82;
    v133 = v81;

    v138._countAndFlagsBits = v90;
    v138._object = v89;
    sub_10001D38C(v138);

    v91 = sub_10001D2DC();

    v92 = swift_allocObject();
    v93 = v117;
    *(v92 + 16) = v52;
    *(v92 + 24) = v93;
    v136 = sub_100019970;
    v137 = v92;
    aBlock = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_1000091DC;
    v135 = &unk_1000297E0;
    v94 = _Block_copy(&aBlock);

    v95 = v93;

    v96 = v118;
    v97 = [v118 renderMonogramForString:v91 scope:v74 imageHandler:v94];
    _Block_release(v94);
    swift_unknownObjectRelease();

    sub_10001D52C();
    swift_unknownObjectRelease();
    a2 = v120;
    v7 = v119;
  }

  sub_10001D2BC();
  sub_10001CD6C();
  v98 = sub_10001D32C();
  v100 = v99;
  result = swift_beginAccess();
  v101 = *(v7 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext);
  if (v101)
  {
    v103 = *(v52 + 16);
    v102 = *(v52 + 24);
    sub_100019990(v103, v102);
    v104 = [v101 isAccessDenied];
    v105 = sub_10000ED30(a2, v98, v100, a3, a4, a5, a6);
    (*(v129 + 8))(v128, v127);
    v106 = &v105[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
    v107 = *&v105[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
    v108 = v125;
    *v106 = v126;
    v106[1] = v108;
    v109 = v105;

    v110 = &v109[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
    v111 = *&v109[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent + 8];
    v112 = v123;
    *v110 = v124;
    v110[1] = v112;

    v113 = &v109[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData];
    v114 = *&v109[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData];
    v115 = *&v109[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData + 8];
    *v113 = v103;
    v113[1] = v102;
    sub_100019990(v103, v102);
    sub_10000F908(v114, v115);
    sub_10000F908(v103, v102);
    v109[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] = v104;

    return v109;
  }

LABEL_56:
  __break(1u);
  return result;
}

void sub_100015C30(UIImage *a1, uint64_t a2, NSObject *a3)
{
  v5 = UIImagePNGRepresentation(a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_10001CD5C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  sub_10000F908(v10, v11);
  dispatch_group_leave(a3);
}

char *sub_100015CC4(unint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = sub_10001CCEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001CDAC();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001D2CC();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v143 = v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v6 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext);
  if (!v25)
  {
    goto LABEL_61;
  }

  if ([v25 isAccessDenied])
  {
    sub_10001D2BC();
    sub_10001CD6C();
    sub_10001D32C();
    sub_100002EFC(&qword_10002E088, &qword_10001E910);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10001E6C0;
    v28 = *(v6 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName);
    v27 = *(v6 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName + 8);
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_10000FB3C();
    *(v26 + 32) = v28;
    *(v26 + 40) = v27;

    v29 = sub_10001D31C();
    v31 = v30;

    sub_10001D2BC();
    sub_10001CD6C();
    v32 = sub_10001D32C();
    v34 = v33;
    sub_10001D2BC();
    sub_10001CD6C();
    v35 = sub_10001D32C();
    v37 = sub_10000ED30(a2, v35, v36, a3, a4, a5, a6);
    v38 = &v37[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
    v39 = *&v37[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
    *v38 = v29;
    v38[1] = v31;
    v40 = v37;

    v41 = &v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
    v42 = *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent + 8];
    *v41 = v32;
    v41[1] = v34;

    v43 = *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData];
    v44 = *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData + 8];
    *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData] = xmmword_10001E720;
    sub_10000F908(v43, v44);
    v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] = 1;
LABEL_4:

    return v40;
  }

  if (!a1)
  {
    if (sub_10001D36C())
    {
      v49 = sub_10001CDFC();
      v50 = sub_10001D4FC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "#ContactsButton had contacts in it, but is somehow null??", v51, 2u);
      }

      return 0;
    }

    goto LABEL_21;
  }

  v138[2] = v21;
  if (a1 >> 62)
  {
    if (!sub_10001D64C())
    {
      goto LABEL_21;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  if (sub_10001D36C())
  {
    if (!(a1 >> 62))
    {
      v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46 == 1)
      {
LABEL_12:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v47 = sub_10001D5DC();
          goto LABEL_15;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v47 = *(a1 + 32);
LABEL_15:
          v48 = v47;
          v40 = sub_1000150E0(v47, a2, a3, a4, a5, a6);

          return v40;
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_29:
      if (v46 < 2)
      {
        sub_10001D2BC();
        sub_10001CD6C();
        v55 = sub_10001D32C();
        v57 = sub_10000ED30(a2, v55, v56, a3, a4, a5, a6);
        v58 = &v57[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
        v59 = *&v57[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
        *v58 = 0;
        *(v58 + 1) = 0xE000000000000000;
        v40 = v57;

        v60 = &v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
        v61 = *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent + 8];
        *v60 = 0;
        *(v60 + 1) = 0xE000000000000000;
LABEL_53:

        v125 = *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData];
        v126 = *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData + 8];
        *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData] = xmmword_10001E720;
        sub_10000F908(v125, v126);
        v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] = 0;
        goto LABEL_4;
      }

      v138[0] = a2;
      v138[1] = v6;
      v144 = _swiftEmptyArrayStorage;
      sub_1000181D0(0, v46, 0);
      v62 = v144;
      v63 = objc_opt_self();
      v64 = 0;
      v139 = a1 & 0xC000000000000001;
      v140 = v63;
      v65 = (v14 + 8);
      v141 = v46;
      v142 = a1;
      do
      {
        if (v139)
        {
          v66 = sub_10001D5DC();
        }

        else
        {
          v66 = *(a1 + 8 * v64 + 32);
        }

        v67 = v66;
        sub_10001CCDC();
        v68 = [v67 givenName];
        sub_10001D30C();

        sub_10001CCAC();
        v69 = [v67 familyName];
        sub_10001D30C();

        sub_10001CCBC();
        v70 = sub_10001CCCC();
        v71 = v13;
        (*v65)(v17, v13);
        v72 = [v140 localizedStringFromPersonNameComponents:v70 style:0 options:0];

        v73 = sub_10001D30C();
        v75 = v74;

        v144 = v62;
        v77 = *(v62 + 2);
        v76 = *(v62 + 3);
        if (v77 >= v76 >> 1)
        {
          sub_1000181D0((v76 > 1), v77 + 1, 1);
          v62 = v144;
        }

        v64 = (v64 + 1);
        *(v62 + 2) = v77 + 1;
        v78 = &v62[16 * v77];
        *(v78 + 4) = v73;
        *(v78 + 5) = v75;
        v79 = v141;
        v13 = v71;
        a1 = v142;
      }

      while (v141 != v64);
      v144 = v62;

      sub_1000182FC(&v144);

      v80 = v144;
      if (v79 >= 10)
      {
        sub_10001D2BC();
        sub_10001CD6C();
        v83 = sub_10001D32C();
        v96 = *(v80 + 2);
        v95 = v138[0];
        v142 = v97;
        if (v96)
        {
          v99 = *(v80 + 4);
          v98 = *(v80 + 5);
        }

        else
        {
          v109 = sub_10001CDFC();
          v110 = sub_10001D4FC();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v145 = 0;
            v146[0] = v141;
            *v111 = 136315138;
            v144 = 0;
            sub_100002EFC(&qword_10002E458, &qword_10001ED08);
            v112 = sub_10001D33C();
            v114 = v83;
            v115 = sub_100017934(v112, v113, v146);

            *(v111 + 4) = v115;
            v83 = v114;
            _os_log_impl(&_mh_execute_header, v109, v110, "#ContactsButton many matches, first one is nil? %s", v111, 0xCu);
            sub_100002F44(v141);
          }

          v99 = 0;
          v98 = 0xE000000000000000;
        }

        sub_10001D2BC();
        sub_10001CD6C();
        sub_10001D32C();
        sub_100002EFC(&qword_10002E088, &qword_10001E910);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_10001E6C0;
        *(v116 + 56) = &type metadata for String;
        *(v116 + 64) = sub_10000FB3C();
        *(v116 + 32) = v99;
        *(v116 + 40) = v98;
        v92 = sub_10001D31C();
        v94 = v117;
      }

      else
      {
        v146[0] = v79;
        v144 = sub_10001D6AC();
        v145 = v81;
        v148._countAndFlagsBits = 0x7365686374616D20;
        v148._object = 0xE800000000000000;
        sub_10001D38C(v148);
        v83 = v144;
        v82 = v145;
        v84 = *(v80 + 2);
        if (v79 == 2)
        {
          if (v84)
          {
            v85 = *(v80 + 4);
            v86 = *(v80 + 5);
            v87 = &v80[16 * v84 + 32];
            v141 = v144;
            v88 = *(v87 - 16);
            v142 = *(v87 - 8);

            sub_10001D2BC();
            sub_10001CD6C();
            sub_10001D32C();
            sub_100002EFC(&qword_10002E088, &qword_10001E910);
            v89 = v82;
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_10001EC10;
            *(v90 + 56) = &type metadata for String;
            v91 = sub_10000FB3C();
            *(v90 + 32) = v85;
            *(v90 + 40) = v86;
            *(v90 + 96) = &type metadata for String;
            *(v90 + 104) = v91;
            *(v90 + 64) = v91;
            *(v90 + 72) = v88;
            v83 = v141;
            *(v90 + 80) = v142;
            v82 = v89;
            v92 = sub_10001D31C();
            v94 = v93;

            v95 = v138[0];
          }

          else
          {

            v127 = sub_10001CDFC();
            v128 = sub_10001D4FC();

            if (os_log_type_enabled(v127, v128))
            {
              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v142 = v82;
              v145 = 0;
              v146[0] = v130;
              *v129 = 136315394;
              v144 = 0;
              sub_100002EFC(&qword_10002E458, &qword_10001ED08);
              v131 = sub_10001D33C();
              v132 = v83;
              v134 = sub_100017934(v131, v133, v146);

              *(v129 + 4) = v134;
              *(v129 + 12) = 2080;
              v144 = 0;
              v145 = 0;
              v135 = sub_10001D33C();
              v137 = sub_100017934(v135, v136, v146);

              *(v129 + 14) = v137;
              v83 = v132;
              _os_log_impl(&_mh_execute_header, v127, v128, "#ContactsButton two matches, but one was missing a name? first %s  second %s", v129, 0x16u);
              swift_arrayDestroy();
              v82 = v142;
            }

            v92 = 0;
            v94 = 0xE000000000000000;
            v95 = v138[0];
          }

          goto LABEL_52;
        }

        if (!v84)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v141 = v144;
        v142 = v145;
        if (v84 == 1)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);

          __break(1u);
          return result;
        }

        v101 = *(v80 + 4);
        v100 = *(v80 + 5);
        v102 = *(v80 + 7);
        v140 = *(v80 + 6);

        sub_10001D2BC();
        sub_10001CD6C();
        sub_10001D32C();
        sub_100002EFC(&qword_10002E088, &qword_10001E910);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_10001E6B0;
        *(v103 + 56) = &type metadata for String;
        v104 = sub_10000FB3C();
        *(v103 + 32) = v101;
        *(v103 + 40) = v100;
        *(v103 + 96) = &type metadata for String;
        *(v103 + 104) = v104;
        v105 = v140;
        *(v103 + 64) = v104;
        *(v103 + 72) = v105;
        *(v103 + 80) = v102;
        v144 = (v84 - 2);
        v106 = sub_10001D6AC();
        *(v103 + 136) = &type metadata for String;
        *(v103 + 144) = v104;
        *(v103 + 112) = v106;
        *(v103 + 120) = v107;
        v92 = sub_10001D31C();
        v94 = v108;

        v95 = v138[0];
        v83 = v141;
      }

      v82 = v142;
LABEL_52:
      sub_10001D2BC();
      sub_10001CD6C();
      v118 = sub_10001D32C();
      v120 = sub_10000ED30(v95, v118, v119, a3, a4, a5, a6);
      v121 = &v120[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
      v122 = *&v120[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
      *v121 = v83;
      v121[1] = v82;
      v40 = v120;

      v123 = &v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
      v124 = *&v40[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent + 8];
      *v123 = v92;
      v123[1] = v94;
      goto LABEL_53;
    }

    v46 = sub_10001D64C();
    if (v46 != 1)
    {
      goto LABEL_29;
    }

    if (sub_10001D64C())
    {
      goto LABEL_12;
    }

    v52 = sub_10001CDFC();
    v53 = sub_10001D4FC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "#ContactsButton we have exactly one match, but unexpectedly the only item is nil", v54, 2u);
    }
  }

LABEL_21:

  return sub_100019660(a2, a3, a4, a5, a6);
}

uint64_t sub_100016CD4(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_10001721C(a1, a2, 0);
  v6 = [v5 localizedName];
  v7 = sub_10001D30C();

  return v7;
}

id sub_100016F10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactsButtonServiceProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactsButtonServiceProvider()
{
  result = qword_10002E438;
  if (!qword_10002E438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017128()
{
  result = sub_10001CE1C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_10001721C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10001D2DC();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10001CCFC();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000172F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_10001D6FC();

    sub_10001D35C();
    v17 = sub_10001D70C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_10001D6BC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000174B0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000175A8;

  return v7(a1);
}

uint64_t sub_1000175A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_1000176A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&unk_10002E468, &unk_10001ED18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000177AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_10002E460, &qword_10001ED10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000178B0(uint64_t a1, uint64_t a2)
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

  sub_100002EFC(&unk_10002E468, &unk_10001ED18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_100017934(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100017A00(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000047EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002F44(v11);
  return v7;
}

unint64_t sub_100017A00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100017B0C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001D5EC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100017B0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100017B58(a1, a2);
  sub_100017C88(&off_100029100);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100017B58(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100017D74(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001D5EC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001D3AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100017D74(v10, 0);
        result = sub_10001D5CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}