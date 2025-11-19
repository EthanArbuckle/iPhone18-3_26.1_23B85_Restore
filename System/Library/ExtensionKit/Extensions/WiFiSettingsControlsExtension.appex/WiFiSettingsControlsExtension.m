uint64_t sub_100001650()
{
  v0 = sub_10000175C(&qword_10002C4D8, &qword_10001D380);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000016DC();
  sub_10001CB14();
  return 0;
}

unint64_t sub_1000016DC()
{
  result = qword_10002C4D0;
  if (!qword_10002C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4D0);
  }

  return result;
}

uint64_t sub_10000175C(uint64_t *a1, uint64_t *a2)
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

void *sub_1000017A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_1000017E8(uint64_t a1, unint64_t *a2)
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

unint64_t sub_100001838()
{
  result = qword_10002C4F0;
  if (!qword_10002C4F0)
  {
    sub_10000189C(&qword_10002C4F8, qword_10001D3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4F0);
  }

  return result;
}

uint64_t sub_10000189C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000018E8()
{
  result = qword_10002C520;
  if (!qword_10002C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C520);
  }

  return result;
}

unint64_t sub_100001940()
{
  result = qword_10002C528;
  if (!qword_10002C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C528);
  }

  return result;
}

unint64_t sub_100001998()
{
  result = qword_10002C530;
  if (!qword_10002C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C530);
  }

  return result;
}

uint64_t sub_1000019EC()
{
  v0 = (*(*(sub_10000175C(&qword_10002C608, "NH") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_10001CA44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_10001C9A4();
  sub_100005690(v6, qword_1000327E0);
  sub_100005658(v6, qword_1000327E0);
  sub_10001CA14();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10001C994();
}

id sub_100001B64@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v124 = a1;
  v121 = a2;
  v2 = *(*(sub_10000175C(&qword_10002C630, &qword_10001DC30) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v116 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v114 = &v107 - v6;
  v7 = __chkstk_darwin(v5);
  v110 = &v107 - v8;
  __chkstk_darwin(v7);
  v109 = &v107 - v9;
  v10 = sub_10000175C(&qword_10002C608, "NH");
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v113 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v111 = &v107 - v15;
  v16 = __chkstk_darwin(v14);
  v108 = &v107 - v17;
  __chkstk_darwin(v16);
  v115 = &v107 - v18;
  v19 = sub_10001CA44();
  v20 = *(v19 - 8);
  v122 = v19;
  v123 = v20;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v118 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v117 = &v107 - v25;
  v26 = __chkstk_darwin(v24);
  v112 = &v107 - v27;
  v28 = __chkstk_darwin(v26);
  v120 = &v107 - v29;
  __chkstk_darwin(v28);
  v119 = &v107 - v30;
  v31 = sub_10001CBE4();
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v34 = __chkstk_darwin(v33);
  v35 = __chkstk_darwin(v34);
  v36 = __chkstk_darwin(v35);
  v37 = __chkstk_darwin(v36);
  v38 = __chkstk_darwin(v37);
  v39 = __chkstk_darwin(v38);
  v40 = __chkstk_darwin(v39);
  v41 = __chkstk_darwin(v40);
  __chkstk_darwin(v41);
  if (v124 > 1u)
  {
    if (v124 != 2)
    {
      sub_10001CA14();
      sub_10001CBD4();
      v141._countAndFlagsBits = 0;
      v141._object = 0xE000000000000000;
      sub_10001CBC4(v141);
      result = MobileGestalt_get_current_device();
      if (result)
      {
        v93 = result;
        wapiCapability = MobileGestalt_get_wapiCapability();

        if (wapiCapability)
        {
          v95._countAndFlagsBits = 1312902231;
        }

        else
        {
          v95._countAndFlagsBits = 0x69462D6957;
        }

        if (wapiCapability)
        {
          v96 = 0xE400000000000000;
        }

        else
        {
          v96 = 0xE500000000000000;
        }

        v95._object = v96;
        sub_10001CBB4(v95);

        v142._countAndFlagsBits = 0;
        v142._object = 0xE000000000000000;
        sub_10001CBC4(v142);
        v97 = v113;
        sub_10001CA34();
        v98 = v123 + 56;
        (*(v123 + 56))(v97, 0, 1, v122);
        v99 = v116;
        sub_10001C864();
        v100 = sub_10001C874();
        (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
        sub_10000175C(&qword_10002C638, &qword_10001DC38);
        v101 = *(v98 + 16);
        v102 = (*(v98 + 24) + 32) & ~*(v98 + 24);
        *(swift_allocObject() + 16) = xmmword_10001D410;
        sub_10001CA14();
        sub_10001CA14();
        sub_10001CBD4();
        v143._countAndFlagsBits = 0xD000000000000060;
        v143._object = 0x8000000100020E80;
        sub_10001CBC4(v143);
        result = MobileGestalt_get_current_device();
        if (result)
        {
          v103 = result;
          v104 = MobileGestalt_get_wapiCapability();

          if (v104)
          {
            v105._countAndFlagsBits = 1312902231;
          }

          else
          {
            v105._countAndFlagsBits = 0x656E2069462D6957;
          }

          if (v104)
          {
            v106 = 0xE400000000000000;
          }

          else
          {
            v106 = 0xED00006B726F7774;
          }

          v105._object = v106;
          sub_10001CBB4(v105);

          v144._countAndFlagsBits = 0x6961766120736920;
          v144._object = 0xEE002E656C62616CLL;
          sub_10001CBC4(v144);
          sub_10001CA34();
          return sub_10001C884();
        }

        goto LABEL_86;
      }

      goto LABEL_82;
    }

    sub_10001CA14();
    sub_10001CBD4();
    v131._countAndFlagsBits = 0;
    v131._object = 0xE000000000000000;
    sub_10001CBC4(v131);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v61 = result;
      v62 = MobileGestalt_get_wapiCapability();

      if (v62)
      {
        v63._countAndFlagsBits = 1312902231;
      }

      else
      {
        v63._countAndFlagsBits = 0x69462D6957;
      }

      if (v62)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      v63._object = v64;
      sub_10001CBB4(v63);

      v132._countAndFlagsBits = 0;
      v132._object = 0xE000000000000000;
      sub_10001CBC4(v132);
      v65 = v111;
      sub_10001CA34();
      v66 = v123 + 56;
      (*(v123 + 56))(v65, 0, 1, v122);
      v67 = v114;
      sub_10001C864();
      v68 = sub_10001C874();
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      sub_10000175C(&qword_10002C638, &qword_10001DC38);
      v69 = *(v66 + 16);
      v70 = (*(v66 + 24) + 32) & ~*(v66 + 24);
      *(swift_allocObject() + 16) = xmmword_10001D410;
      sub_10001CA14();
      sub_10001CA14();
      sub_10001CBD4();
      v133._countAndFlagsBits = 0xD00000000000002ALL;
      v133._object = 0x8000000100020EF0;
      sub_10001CBC4(v133);
      result = MobileGestalt_get_current_device();
      if (result)
      {
        v71 = result;
        v72 = MobileGestalt_get_wapiCapability();

        if (v72)
        {
          v73._countAndFlagsBits = 1312902231;
        }

        else
        {
          v73._countAndFlagsBits = 0x656E2069462D6957;
        }

        if (v72)
        {
          v74 = 0xE400000000000000;
        }

        else
        {
          v74 = 0xED00006B726F7774;
        }

        v73._object = v74;
        sub_10001CBB4(v73);

        v134._countAndFlagsBits = 0xD00000000000006ALL;
        v134._object = 0x8000000100020F20;
        sub_10001CBC4(v134);
        sub_10001CA34();
        return sub_10001C884();
      }

      goto LABEL_84;
    }

    goto LABEL_80;
  }

  if (!v124)
  {
    sub_10001CBD4();
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    sub_10001CBC4(v125);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v43 = result;
      v44 = MobileGestalt_get_wapiCapability();

      if (v44)
      {
        v45._countAndFlagsBits = 1312902231;
      }

      else
      {
        v45._countAndFlagsBits = 0x69462D6957;
      }

      if (v44)
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      v45._object = v46;
      sub_10001CBB4(v45);

      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      sub_10001CBC4(v126);
      sub_10001CA34();
      sub_10001CBD4();
      v127._countAndFlagsBits = 0;
      v127._object = 0xE000000000000000;
      sub_10001CBC4(v127);
      result = MobileGestalt_get_current_device();
      v47 = v115;
      if (result)
      {
        v48 = result;
        v49 = MobileGestalt_get_wapiCapability();

        if (v49)
        {
          v50._countAndFlagsBits = 1312902231;
        }

        else
        {
          v50._countAndFlagsBits = 0x69462D6957;
        }

        if (v49)
        {
          v51 = 0xE400000000000000;
        }

        else
        {
          v51 = 0xE500000000000000;
        }

        v50._object = v51;
        sub_10001CBB4(v50);

        v128._countAndFlagsBits = 0;
        v128._object = 0xE000000000000000;
        sub_10001CBC4(v128);
        sub_10001CA34();
        v52 = v123 + 56;
        (*(v123 + 56))(v47, 0, 1, v122);
        v53 = v109;
        sub_10001C864();
        v54 = sub_10001C874();
        (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
        sub_10000175C(&qword_10002C638, &qword_10001DC38);
        v55 = *(v52 + 16);
        v56 = (*(v52 + 24) + 32) & ~*(v52 + 24);
        *(swift_allocObject() + 16) = xmmword_10001D420;
        sub_10001CA14();
        sub_10001CA14();
        sub_10001CA14();
        sub_10001CBD4();
        v129._countAndFlagsBits = 0x207463656E6E6F43;
        v129._object = 0xEB00000000206F74;
        sub_10001CBC4(v129);
        result = MobileGestalt_get_current_device();
        if (result)
        {
          v57 = result;
          v58 = MobileGestalt_get_wapiCapability();

          if (v58)
          {
            v59._countAndFlagsBits = 1312902231;
          }

          else
          {
            v59._countAndFlagsBits = 0x69462D6957;
          }

          if (v58)
          {
            v60 = 0xE400000000000000;
          }

          else
          {
            v60 = 0xE500000000000000;
          }

          v59._object = v60;
          sub_10001CBB4(v59);

          v130._countAndFlagsBits = 0xD000000000000058;
          v130._object = 0x8000000100020FE0;
          sub_10001CBC4(v130);
          sub_10001CA34();
          return sub_10001C884();
        }

        goto LABEL_87;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_10001CBD4();
  v135._countAndFlagsBits = 0;
  v135._object = 0xE000000000000000;
  sub_10001CBC4(v135);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v75 = result;
  v76 = MobileGestalt_get_wapiCapability();

  if (v76)
  {
    v77._countAndFlagsBits = 1312902231;
  }

  else
  {
    v77._countAndFlagsBits = 0x69462D6957;
  }

  if (v76)
  {
    v78 = 0xE400000000000000;
  }

  else
  {
    v78 = 0xE500000000000000;
  }

  v77._object = v78;
  sub_10001CBB4(v77);

  v136._countAndFlagsBits = 0x7265776F5020;
  v136._object = 0xE600000000000000;
  sub_10001CBC4(v136);
  sub_10001CA34();
  sub_10001CBD4();
  v137._countAndFlagsBits = 0;
  v137._object = 0xE000000000000000;
  sub_10001CBC4(v137);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_85;
  }

  v79 = result;
  v80 = MobileGestalt_get_wapiCapability();

  if (v80)
  {
    v81._countAndFlagsBits = 1312902231;
  }

  else
  {
    v81._countAndFlagsBits = 0x69462D6957;
  }

  if (v80)
  {
    v82 = 0xE400000000000000;
  }

  else
  {
    v82 = 0xE500000000000000;
  }

  v81._object = v82;
  sub_10001CBB4(v81);

  v138._countAndFlagsBits = 0;
  v138._object = 0xE000000000000000;
  sub_10001CBC4(v138);
  v83 = v108;
  sub_10001CA34();
  v84 = v123 + 56;
  (*(v123 + 56))(v83, 0, 1, v122);
  v85 = v110;
  sub_10001C864();
  v86 = sub_10001C874();
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  sub_10000175C(&qword_10002C638, &qword_10001DC38);
  v87 = *(v84 + 16);
  v88 = (*(v84 + 24) + 32) & ~*(v84 + 24);
  *(swift_allocObject() + 16) = xmmword_10001D420;
  sub_10001CA14();
  sub_10001CA14();
  sub_10001CA14();
  sub_10001CBD4();
  v139._countAndFlagsBits = 0xD00000000000004ELL;
  v139._object = 0x8000000100020F90;
  sub_10001CBC4(v139);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v89 = result;
    v90 = MobileGestalt_get_wapiCapability();

    if (v90)
    {
      v91._countAndFlagsBits = 1312902231;
    }

    else
    {
      v91._countAndFlagsBits = 0x656E2069462D6957;
    }

    if (v90)
    {
      v92 = 0xE400000000000000;
    }

    else
    {
      v92 = 0xED00006B726F7774;
    }

    v91._object = v92;
    sub_10001CBB4(v91);

    v140._countAndFlagsBits = 46;
    v140._object = 0xE100000000000000;
    sub_10001CBC4(v140);
    sub_10001CA34();
    return sub_10001C884();
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_100002B04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005720;

  return sub_100004CC4(a1);
}

uint64_t sub_100002BAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000056F8;

  return sub_100004A80();
}

uint64_t sub_100002C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002D10;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002D10(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100002E14()
{
  result = qword_10002C538;
  if (!qword_10002C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C538);
  }

  return result;
}

uint64_t sub_100002E68(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002F0C;

  return sub_100005058();
}

uint64_t sub_100002F0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100003024()
{
  result = qword_10002C540;
  if (!qword_10002C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C540);
  }

  return result;
}

unint64_t sub_10000307C()
{
  result = qword_10002C548;
  if (!qword_10002C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C548);
  }

  return result;
}

unint64_t sub_1000030D4()
{
  result = qword_10002C550;
  if (!qword_10002C550)
  {
    sub_10000189C(&qword_10002C558, qword_10001D4E8);
    sub_10000307C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C550);
  }

  return result;
}

uint64_t sub_100003158(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100002E14();
  *v6 = v2;
  v6[1] = sub_10000320C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000320C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003300(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000033A4;

  return sub_100004E9C();
}

uint64_t sub_1000033A4(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_1000034C0()
{
  result = qword_10002C560;
  if (!qword_10002C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C560);
  }

  return result;
}

uint64_t sub_100003514()
{
  v0 = sub_10000175C(&qword_10002C640, &qword_10001DC40);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_10000175C(&qword_10002C648, &qword_10001DC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_100001998();
  sub_10001C964();
  v8._object = 0x8000000100021040;
  v8._countAndFlagsBits = 0xD000000000000010;
  sub_10001C954(v8);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10001C944();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10001C954(v9);
  return sub_10001C974();
}

uint64_t sub_1000036D8()
{
  v0 = qword_10002C500;

  return v0;
}

unint64_t sub_100003710()
{
  result = qword_10002C568;
  if (!qword_10002C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C568);
  }

  return result;
}

unint64_t sub_100003768()
{
  result = qword_10002C570;
  if (!qword_10002C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C570);
  }

  return result;
}

unint64_t sub_1000037C0()
{
  result = qword_10002C578;
  if (!qword_10002C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C578);
  }

  return result;
}

unint64_t sub_100003818()
{
  result = qword_10002C580;
  if (!qword_10002C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C580);
  }

  return result;
}

uint64_t sub_10000386C()
{
  sub_100005604();
  v1 = sub_10001C8F4();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000038DC()
{
  result = qword_10002C588;
  if (!qword_10002C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C588);
  }

  return result;
}

unint64_t sub_100003934()
{
  result = qword_10002C590;
  if (!qword_10002C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C590);
  }

  return result;
}

unint64_t sub_10000398C()
{
  result = qword_10002C598;
  if (!qword_10002C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C598);
  }

  return result;
}

unint64_t sub_1000039E4()
{
  result = qword_10002C5A0;
  if (!qword_10002C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5A0);
  }

  return result;
}

uint64_t sub_100003AC0(uint64_t a1)
{
  v2 = sub_100001998();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003B10()
{
  result = qword_10002C5B8;
  if (!qword_10002C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5B8);
  }

  return result;
}

uint64_t sub_100003B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000320C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003C30(uint64_t a1)
{
  v2 = sub_10000398C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003C8C()
{
  result = qword_10002C5C0;
  if (!qword_10002C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5C0);
  }

  return result;
}

Swift::Int sub_100003CE0()
{
  v1 = *v0;
  sub_10001CD04();
  sub_10001CC24();

  return sub_10001CD14();
}

uint64_t sub_100003DAC()
{
  *v0;
  *v0;
  sub_10001CC24();
}

Swift::Int sub_100003E64()
{
  v1 = *v0;
  sub_10001CD04();
  sub_10001CC24();

  return sub_10001CD14();
}

uint64_t sub_100003F2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000520C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100003F5C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1953460082;
  v4 = 0x696F4A6F546B7341;
  v5 = 0xEF746F7073746F48;
  if (*v1 == 2)
  {
    v5 = 0xE90000000000006ELL;
  }

  else
  {
    v4 = 0x6E696F4A6F747541;
  }

  if (*v1)
  {
    v3 = 0x65776F5069466957;
    v2 = 0xE900000000000072;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100004028(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000189C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004080()
{
  v1 = 1953460082;
  v2 = 0x696F4A6F546B7341;
  if (*v0 != 2)
  {
    v2 = 0x6E696F4A6F747541;
  }

  if (*v0)
  {
    v1 = 0x65776F5069466957;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100004104@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000520C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100004150()
{
  result = qword_10002C5D8;
  if (!qword_10002C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5D8);
  }

  return result;
}

uint64_t sub_1000041A8()
{
  v0 = sub_10001CA44();
  sub_100005690(v0, qword_1000327F8);
  sub_100005658(v0, qword_1000327F8);
  return sub_10001CA14();
}

uint64_t sub_10000420C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001C664();
  *a1 = v5;
  return result;
}

uint64_t sub_100004248(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_10001C674();
}

void (*sub_100004280(uint64_t *a1))(void *a1)
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C654();
  return sub_1000042F4;
}

void sub_1000042F4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004340()
{
  result = qword_10002C5E0;
  if (!qword_10002C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5E0);
  }

  return result;
}

unint64_t sub_100004394()
{
  result = qword_10002C5E8;
  if (!qword_10002C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5E8);
  }

  return result;
}

uint64_t sub_1000043E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000555C();
  v5 = sub_100005604();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100004458()
{
  v0 = qword_10002C510;

  return v0;
}

unint64_t sub_100004498()
{
  result = qword_10002C5F0;
  if (!qword_10002C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5F0);
  }

  return result;
}

unint64_t sub_1000044F0()
{
  result = qword_10002C5F8;
  if (!qword_10002C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5F8);
  }

  return result;
}

uint64_t sub_1000045D0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100005658(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100004698(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000555C();
  v8 = sub_1000055B0();
  v9 = sub_100005604();
  *v6 = v2;
  v6[1] = sub_10000476C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000476C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100004874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005258();
  *a1 = result;
  return result;
}

uint64_t sub_10000489C(uint64_t a1)
{
  v2 = sub_100004340();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004920(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000049B0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004A9C()
{
  sub_100016FDC(0, 1, 1);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100016FDC((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_100016FDC((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_100016FDC((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  v8 = v2 + 4;
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_100016FDC((v7 > 1), v2 + 4, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v8;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  sub_100016FAC(0, v2 + 4, 0);
  v9 = *(&_swiftEmptyArrayStorage + 2);
  v10 = 32;
  do
  {
    v11 = *(&_swiftEmptyArrayStorage + v10);
    v12 = *(&_swiftEmptyArrayStorage + 3);
    if (v9 >= v12 >> 1)
    {
      sub_100016FAC((v12 > 1), v9 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
    *(&_swiftEmptyArrayStorage + v9 + 32) = v11;
    ++v10;
    ++v9;
    --v8;
  }

  while (v8);

  v13 = *(v0 + 8);

  return v13(&_swiftEmptyArrayStorage);
}

uint64_t sub_100004CE4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100016FDC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v7 = *(&_swiftEmptyArrayStorage + 2);
      v6 = *(&_swiftEmptyArrayStorage + 3);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        sub_100016FDC((v6 > 1), v7 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v8;
      *(&_swiftEmptyArrayStorage + v7 + 32) = v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = *(&_swiftEmptyArrayStorage + 2);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  sub_100016FAC(0, v8, 0);
  v9 = *(&_swiftEmptyArrayStorage + 2);
  v10 = 32;
  do
  {
    v11 = *(&_swiftEmptyArrayStorage + v10);
    v12 = *(&_swiftEmptyArrayStorage + 3);
    if (v9 >= v12 >> 1)
    {
      sub_100016FAC((v12 > 1), v9 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
    *(&_swiftEmptyArrayStorage + v9 + 32) = v11;
    ++v10;
    ++v9;
    --v8;
  }

  while (v8);
LABEL_14:

  v13 = *(v0 + 8);

  return v13(&_swiftEmptyArrayStorage);
}

uint64_t sub_100004EB8()
{
  sub_100016FDC(0, 1, 1);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100016FDC((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_100016FDC((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_100016FDC((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_100016FDC((v7 > 1), v2 + 4, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 4;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  v8 = *(&_swiftEmptyArrayStorage + 32);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_100005074()
{
  sub_100016FAC(0, 4, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100016FAC((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_100016FAC((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_100016FAC((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_100016FAC((v7 > 1), v2 + 4, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 4;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10000520C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100029090;
  v6._object = a2;
  v4 = sub_10001CCE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100005258()
{
  v21 = sub_10001C8E4();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000175C(&qword_10002C600, &unk_10001F450);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_10000175C(&qword_10002C608, "NH");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10001CA44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000175C(&qword_10002C610, "0H");
  sub_10001CA14();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 4;
  v18 = sub_10001C614();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100001998();
  return sub_10001C694();
}

unint64_t sub_10000555C()
{
  result = qword_10002C618;
  if (!qword_10002C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C618);
  }

  return result;
}

unint64_t sub_1000055B0()
{
  result = qword_10002C620;
  if (!qword_10002C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C620);
  }

  return result;
}

unint64_t sub_100005604()
{
  result = qword_10002C628;
  if (!qword_10002C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C628);
  }

  return result;
}

uint64_t sub_100005658(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005690(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100005728()
{
  result = qword_10002C650;
  if (!qword_10002C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C650);
  }

  return result;
}

uint64_t sub_1000057C0()
{
  v0 = sub_10000175C(&qword_10002C608, "NH");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10001CA24();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001CA84();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10001CBF4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001CA44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10001C9A4();
  sub_100005690(v15, qword_100032810);
  sub_100005658(v15, qword_100032810);
  sub_10001CBA4();
  sub_10001CA74();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10001CA54();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10001C994();
}

uint64_t sub_100005ABC()
{
  v0 = sub_10001CA44();
  sub_100005690(v0, qword_100032828);
  sub_100005658(v0, qword_100032828);
  return sub_10001CA14();
}

uint64_t sub_100005B20()
{
  v0 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  sub_100005690(v0, qword_100032840);
  v1 = sub_100005658(v0, qword_100032840);
  sub_10001C7E4();
  v2 = sub_10001C7F4();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100005BE0()
{
  result = swift_getKeyPath();
  qword_100032858 = result;
  return result;
}

uint64_t sub_100005C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_10000175C(&qword_10002C760, &qword_10001E380) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_10000175C(&qword_10002C768, &qword_10001E388) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_10000175C(&qword_10002C770, &qword_10001E390) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10001C614();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_10000175C(&qword_10002C778, &qword_10001E398);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100005E2C, 0, 0);
}

uint64_t sub_100005E2C()
{
  v1 = v0[8];
  sub_10001C664();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000072C4();
  *v3 = v0;
  v3[1] = sub_100005EFC;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000083C8, 0, &type metadata for AutoJoinEntity, v4);
}

uint64_t sub_100005EFC()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100005FF8, 0, 0);
}

uint64_t sub_100005FF8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10001C664();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10001C664();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10002C420 != -1)
  {
    swift_once();
  }

  v4 = qword_100032858;
  *(v0 + 176) = qword_100032858;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100004028(&qword_10002C748, &qword_10002C750, qword_10001E338);
  *v6 = v0;
  v6[1] = sub_100006158;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100006158()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100006514;
  }

  else
  {
    v5 = sub_1000062AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000062AC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10001C664();
  v0[6] = v0[5];
  v8 = sub_10001C984();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10001C9B4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100005728();
  sub_1000074D8();
  sub_10001C5E4();
  (*(v2 + 16))(v12, v1, v3);
  sub_10001C604();
  sub_10001C624();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100006514()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[17] + 8))(v0[19], v0[16]);

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_1000065DC()
{
  v0 = sub_10000175C(&qword_10002C780, &qword_10001E3A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10002C420 != -1)
  {
    swift_once();
  }

  sub_10001C854();

  sub_1000074D8();
  sub_100004028(&qword_10002C788, &qword_10002C780, &qword_10001E3A0);
  sub_10001C844();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100006750@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001C664();
  *a1 = v5;
  return result;
}

uint64_t sub_10000678C(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_10001C674();
}

void (*sub_1000067D4(uint64_t *a1))(void *)
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C654();
  return sub_100006848;
}

uint64_t sub_10000684C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_10001C664();
  *a1 = v5;
  return result;
}

uint64_t sub_100006888(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_10001C674();
}

void (*sub_1000068C0(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C654();
  return sub_1000083CC;
}

uint64_t sub_100006934()
{
  if (qword_10002C420 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000069B0()
{
  result = qword_10002C668;
  if (!qword_10002C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C668);
  }

  return result;
}

unint64_t sub_100006A08()
{
  result = qword_10002C670;
  if (!qword_10002C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C670);
  }

  return result;
}

uint64_t sub_100006B20@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C418 != -1)
  {
    swift_once();
  }

  v2 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  v3 = sub_100005658(v2, qword_100032840);

  return sub_100008354(v3, a1);
}

uint64_t sub_100006BA4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000083C4;

  return sub_100005C4C(a1, v5, v4);
}

uint64_t sub_100006C50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007E64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100006C98()
{
  result = qword_10002C678;
  if (!qword_10002C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C678);
  }

  return result;
}

unint64_t sub_100006CF0()
{
  result = qword_10002C680;
  if (!qword_10002C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C680);
  }

  return result;
}

uint64_t sub_100006D64()
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_100010848() & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100006E2C()
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = qword_100032928;
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 16) = v2;
  sub_1000082F0();
  sub_10001CA94();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100006F58(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001CA44() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100006FE8, 0, 0);
}

uint64_t sub_100006FE8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000175C(&qword_10002C660, qword_10001DC80);
  sub_10001CA14();
  sub_100004028(&qword_10002C748, &qword_10002C750, qword_10001E338);
  *v2 = sub_10001C9F4();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10000710C()
{
  result = qword_10002C688;
  if (!qword_10002C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C688);
  }

  return result;
}

uint64_t sub_100007160(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100007720();
  *v5 = v2;
  v5[1] = sub_100002F0C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100007214()
{
  result = qword_10002C690;
  if (!qword_10002C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C690);
  }

  return result;
}

unint64_t sub_10000726C()
{
  result = qword_10002C698;
  if (!qword_10002C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C698);
  }

  return result;
}

unint64_t sub_1000072C4()
{
  result = qword_10002C6A0;
  if (!qword_10002C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6A0);
  }

  return result;
}

uint64_t sub_100007318(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100007720();
  *v6 = v2;
  v6[1] = sub_100005720;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000073CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100007720();
  *v5 = v2;
  v5[1] = sub_1000056F8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100007480()
{
  result = qword_10002C6A8;
  if (!qword_10002C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6A8);
  }

  return result;
}

unint64_t sub_1000074D8()
{
  result = qword_10002C6B0;
  if (!qword_10002C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6B0);
  }

  return result;
}

unint64_t sub_100007530()
{
  result = qword_10002C6B8;
  if (!qword_10002C6B8)
  {
    sub_10000189C(&qword_10002C6C0, qword_10001DF20);
    sub_1000074D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6B8);
  }

  return result;
}

uint64_t sub_1000075B4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000710C();
  *v6 = v2;
  v6[1] = sub_10000320C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100007668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000320C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100007720()
{
  result = qword_10002C6C8;
  if (!qword_10002C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6C8);
  }

  return result;
}

unint64_t sub_100007794()
{
  result = qword_10002C6D0;
  if (!qword_10002C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6D0);
  }

  return result;
}

unint64_t sub_1000077EC()
{
  result = qword_10002C6D8;
  if (!qword_10002C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6D8);
  }

  return result;
}

unint64_t sub_100007844()
{
  result = qword_10002C6E0;
  if (!qword_10002C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6E0);
  }

  return result;
}

unint64_t sub_1000078A8()
{
  result = qword_10002C6E8;
  if (!qword_10002C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6E8);
  }

  return result;
}

unint64_t sub_100007900()
{
  result = qword_10002C6F0;
  if (!qword_10002C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6F0);
  }

  return result;
}

unint64_t sub_100007958()
{
  result = qword_10002C6F8;
  if (!qword_10002C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6F8);
  }

  return result;
}

uint64_t sub_1000079B8@<X0>(uint64_t *a1@<X8>)
{
  sub_100006CF0();
  result = sub_10001C644();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100007A30@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100005658(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100007B1C(uint64_t a1)
{
  v2 = sub_1000072C4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007B6C()
{
  result = qword_10002C710;
  if (!qword_10002C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C710);
  }

  return result;
}

uint64_t sub_100007BC0(uint64_t a1)
{
  v2 = sub_100006CF0();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100007C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000083C4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007CD0(uint64_t a1)
{
  v2 = sub_100007958();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100007D3C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007D48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100007D90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100007E64()
{
  v0 = sub_10000175C(&qword_10002C730, &qword_10001E310);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_10001C8E4();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000175C(&qword_10002C600, &unk_10001F450);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_10000175C(&qword_10002C608, "NH");
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001CA44();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_10000175C(&qword_10002C738, &qword_10001E318);
  sub_10001CA14();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10001C614();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_1000072C4();
  v28 = sub_10001C694();
  sub_10000175C(&qword_10002C740, &qword_10001E320);
  sub_10001CA14();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_10001CC34();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001C6A4();
  return v28;
}

unint64_t sub_1000082F0()
{
  result = qword_10002C758;
  if (!qword_10002C758)
  {
    type metadata accessor for WiFiSharedSettingsState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C758);
  }

  return result;
}

uint64_t sub_100008354(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000083E8()
{
  result = qword_10002C798;
  if (!qword_10002C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C798);
  }

  return result;
}

uint64_t sub_100008480()
{
  v0 = sub_10000175C(&qword_10002C608, "NH");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10001CA24();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001CA84();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10001CBF4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001CA44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10001C9A4();
  sub_100005690(v15, qword_100032860);
  sub_100005658(v15, qword_100032860);
  sub_10001CBA4();
  sub_10001CA74();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10001CA54();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10001C994();
}

uint64_t sub_100008780()
{
  v0 = sub_10001CA44();
  sub_100005690(v0, qword_100032878);
  sub_100005658(v0, qword_100032878);
  return sub_10001CA14();
}

uint64_t sub_1000087E4()
{
  v0 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  sub_100005690(v0, qword_100032890);
  v1 = sub_100005658(v0, qword_100032890);
  sub_10001C7E4();
  v2 = sub_10001C7F4();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000088A4()
{
  result = swift_getKeyPath();
  qword_1000328A8 = result;
  return result;
}

uint64_t sub_1000088CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_10000175C(&qword_10002C760, &qword_10001E380) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_10000175C(&qword_10002C768, &qword_10001E388) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_10000175C(&qword_10002C890, &qword_10001EAE0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10001C614();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_10000175C(&qword_10002C898, &qword_10001EAE8);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100008AAC, 0, 0);
}

uint64_t sub_100008AAC()
{
  v1 = v0[8];
  sub_10001C664();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100009D64();
  *v3 = v0;
  v3[1] = sub_100008B7C;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000AAB8, 0, &type metadata for WiFiPowerEntity, v4);
}

uint64_t sub_100008B7C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100008C78, 0, 0);
}

uint64_t sub_100008C78()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10001C664();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10001C664();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10002C440 != -1)
  {
    swift_once();
  }

  v4 = qword_1000328A8;
  *(v0 + 176) = qword_1000328A8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100004028(&qword_10002C880, &qword_10002C888, qword_10001EA98);
  *v6 = v0;
  v6[1] = sub_100008DD8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100008DD8()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100006514;
  }

  else
  {
    v5 = sub_100008F2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100008F2C()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10001C664();
  v0[6] = v0[5];
  v8 = sub_10001C984();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10001C9B4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000083E8();
  sub_100009F78();
  sub_10001C5E4();
  (*(v2 + 16))(v12, v1, v3);
  sub_10001C604();
  sub_10001C624();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100009198()
{
  v0 = sub_10000175C(&qword_10002C8A0, &qword_10001EAF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10002C440 != -1)
  {
    swift_once();
  }

  sub_10001C854();

  sub_100009F78();
  sub_100004028(&qword_10002C8A8, &qword_10002C8A0, &qword_10001EAF0);
  sub_10001C844();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10000930C(uint64_t *a1))(void *)
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C654();
  return sub_100006848;
}

void (*sub_100009380(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C654();
  return sub_1000083CC;
}

uint64_t sub_1000093F4()
{
  if (qword_10002C440 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100009454()
{
  result = qword_10002C7B0;
  if (!qword_10002C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7B0);
  }

  return result;
}

unint64_t sub_1000094AC()
{
  result = qword_10002C7B8;
  if (!qword_10002C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7B8);
  }

  return result;
}

uint64_t sub_1000095BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C438 != -1)
  {
    swift_once();
  }

  v2 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  v3 = sub_100005658(v2, qword_100032890);

  return sub_100008354(v3, a1);
}

uint64_t sub_100009640(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000083C4;

  return sub_1000088CC(a1, v5, v4);
}

uint64_t sub_1000096EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A620();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100009734()
{
  result = qword_10002C7C0;
  if (!qword_10002C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7C0);
  }

  return result;
}

unint64_t sub_10000978C()
{
  result = qword_10002C7C8;
  if (!qword_10002C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7C8);
  }

  return result;
}

uint64_t sub_100009800()
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_1000109C0() & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000098C8()
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = qword_100032928;
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 16) = v2;
  sub_1000082F0();
  sub_10001CA94();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000099F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001CA44() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100009A84, 0, 0);
}

uint64_t sub_100009A84()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000175C(&qword_10002C7A8, qword_10001E3E0);
  sub_10001CA14();
  sub_100004028(&qword_10002C880, &qword_10002C888, qword_10001EA98);
  *v2 = sub_10001C9F4();

  v3 = v0[1];

  return v3();
}

unint64_t sub_100009BAC()
{
  result = qword_10002C7D0;
  if (!qword_10002C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7D0);
  }

  return result;
}

uint64_t sub_100009C00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000A10C();
  *v5 = v2;
  v5[1] = sub_100002F0C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100009CB4()
{
  result = qword_10002C7D8;
  if (!qword_10002C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7D8);
  }

  return result;
}

unint64_t sub_100009D0C()
{
  result = qword_10002C7E0;
  if (!qword_10002C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7E0);
  }

  return result;
}

unint64_t sub_100009D64()
{
  result = qword_10002C7E8;
  if (!qword_10002C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7E8);
  }

  return result;
}

uint64_t sub_100009DB8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000A10C();
  *v6 = v2;
  v6[1] = sub_100005720;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100009E6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000A10C();
  *v5 = v2;
  v5[1] = sub_1000056F8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100009F20()
{
  result = qword_10002C7F0;
  if (!qword_10002C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7F0);
  }

  return result;
}

unint64_t sub_100009F78()
{
  result = qword_10002C7F8;
  if (!qword_10002C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7F8);
  }

  return result;
}

unint64_t sub_100009FD0()
{
  result = qword_10002C800;
  if (!qword_10002C800)
  {
    sub_10000189C(&qword_10002C808, qword_10001E680);
    sub_100009F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C800);
  }

  return result;
}

uint64_t sub_10000A054(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100009BAC();
  *v6 = v2;
  v6[1] = sub_10000320C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10000A10C()
{
  result = qword_10002C810;
  if (!qword_10002C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C810);
  }

  return result;
}

unint64_t sub_10000A164()
{
  result = qword_10002C818;
  if (!qword_10002C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C818);
  }

  return result;
}

unint64_t sub_10000A1BC()
{
  result = qword_10002C820;
  if (!qword_10002C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C820);
  }

  return result;
}

unint64_t sub_10000A214()
{
  result = qword_10002C828;
  if (!qword_10002C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C828);
  }

  return result;
}

unint64_t sub_10000A26C()
{
  result = qword_10002C830;
  if (!qword_10002C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C830);
  }

  return result;
}

unint64_t sub_10000A2C4()
{
  result = qword_10002C838;
  if (!qword_10002C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C838);
  }

  return result;
}

unint64_t sub_10000A31C()
{
  result = qword_10002C840;
  if (!qword_10002C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C840);
  }

  return result;
}

uint64_t sub_10000A370@<X0>(uint64_t *a1@<X8>)
{
  sub_10000978C();
  result = sub_10001C644();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000A42C(uint64_t a1)
{
  v2 = sub_100009D64();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000A47C()
{
  result = qword_10002C858;
  if (!qword_10002C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C858);
  }

  return result;
}

uint64_t sub_10000A4D0(uint64_t a1)
{
  v2 = sub_10000978C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10000A51C(uint64_t a1)
{
  v2 = sub_10000A31C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000A620()
{
  v0 = sub_10000175C(&qword_10002C730, &qword_10001E310);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_10001C8E4();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000175C(&qword_10002C600, &unk_10001F450);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_10000175C(&qword_10002C608, "NH");
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001CA44();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_10000175C(&qword_10002C878, &unk_10001EA78);
  sub_10001CA14();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10001C614();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_100009D64();
  v28 = sub_10001C694();
  sub_10000175C(&qword_10002C740, &qword_10001E320);
  sub_10001CA14();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_10001CC34();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001C6A4();
  return v28;
}

uint64_t sub_10000AAD0()
{
  v0 = sub_10000175C(&qword_10002C608, "NH");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10001CA24();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001CA84();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10001CBF4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001CA44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10001C9A4();
  sub_100005690(v15, qword_1000328B0);
  sub_100005658(v15, qword_1000328B0);
  sub_10001CBA4();
  sub_10001CA74();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10001CA54();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10001C994();
}

uint64_t sub_10000ADD0()
{
  v0 = sub_10001CA44();
  sub_100005690(v0, qword_1000328C8);
  sub_100005658(v0, qword_1000328C8);
  return sub_10001CA14();
}

uint64_t sub_10000AE34()
{
  v0 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  sub_100005690(v0, qword_1000328E0);
  v1 = sub_100005658(v0, qword_1000328E0);
  sub_10001C7E4();
  v2 = sub_10001C7F4();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000AEF4()
{
  result = swift_getKeyPath();
  qword_1000328F8 = result;
  return result;
}

uint64_t sub_10000AF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_10000175C(&qword_10002C760, &qword_10001E380) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_10000175C(&qword_10002C768, &qword_10001E388) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_10000175C(&qword_10002CA28, &qword_10001F4D0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10001C614();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_10000175C(&qword_10002CA30, &qword_10001F4D8);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000B0FC, 0, 0);
}

uint64_t sub_10000B0FC()
{
  v1 = v0[8];
  sub_10001C664();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10000DED8();
  *v3 = v0;
  v3[1] = sub_10000B1CC;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000EAC8, 0, &type metadata for AskToJoinEntity, v4);
}

uint64_t sub_10000B1CC()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10000B2C8, 0, 0);
}

uint64_t sub_10000B2C8()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_10001C664();
  v3 = v0[3];
  v0[4] = v3;
  v0[21] = v3;
  sub_10001C664();
  if (qword_10002C460 != -1)
  {
    swift_once();
  }

  v4 = qword_1000328F8;
  v0[22] = qword_1000328F8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = sub_100004028(&qword_10002CA10, &qword_10002CA18, &qword_10001F480);
  *v6 = v0;
  v6[1] = sub_10000B41C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 25, v4, &type metadata for AskToJoinMode, v7);
}

uint64_t sub_10000B41C()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100006514;
  }

  else
  {
    v5 = sub_10000B570;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000B570()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10001C664();
  v0[6] = v0[5];
  v8 = sub_10001C984();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10001C9B4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10000DB74();
  sub_10000DF88();
  sub_10001C5E4();
  (*(v2 + 16))(v12, v1, v3);
  sub_10001C604();
  sub_10001C624();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000B7DC()
{
  v0 = sub_10000175C(&qword_10002CA38, &qword_10001F4E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10002C460 != -1)
  {
    swift_once();
  }

  sub_10001C854();

  sub_10000DF88();
  sub_100004028(&qword_10002CA40, &qword_10002CA38, &qword_10001F4E0);
  sub_10001C844();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10000B950(uint64_t *a1))(void *)
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C654();
  return sub_100006848;
}

void (*sub_10000B9C4(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C654();
  return sub_1000083CC;
}

uint64_t sub_10000BA38()
{
  if (qword_10002C460 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000BACC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C458 != -1)
  {
    swift_once();
  }

  v2 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  v3 = sub_100005658(v2, qword_1000328E0);

  return sub_100008354(v3, a1);
}

uint64_t sub_10000BB50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000083C4;

  return sub_10000AF1C(a1, v5, v4);
}

uint64_t sub_10000BBFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D5A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000BC60()
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v1 = sub_100010B04() - 1;
  if (v1 >= 3)
  {
    sub_10001C4F4();
    sub_10000EA74(&qword_10002CA20, &type metadata accessor for _PrebuiltAppIntentError);
    swift_allocError();
    sub_10001C834();
    swift_willThrow();
  }

  else
  {
    **(v0 + 16) = v1;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000BD88(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000083C4;

  return sub_10000D9A8(v3);
}

uint64_t sub_10000BE1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001CA44() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000BEAC, 0, 0);
}

uint64_t sub_10000BEAC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000175C(&qword_10002C8C0, qword_10001EB20);
  sub_10001CA14();
  sub_100004028(&qword_10002CA10, &qword_10002CA18, &qword_10001F480);
  sub_10000E6A8();
  *v2 = sub_10001C9E4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000BFDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000E068();
  *v5 = v2;
  v5[1] = sub_100002F0C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_10000C08C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000E068();
  *v6 = v2;
  v6[1] = sub_100005720;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000C140(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000E068();
  *v5 = v2;
  v5[1] = sub_1000056F8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_10000C1F0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000DDD0();
  *v6 = v2;
  v6[1] = sub_10000320C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000C2A4@<X0>(uint64_t *a1@<X8>)
{
  sub_10000DD78();
  result = sub_10001C644();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000C31C(uint64_t a1)
{
  v2 = sub_10000DED8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000C368(uint64_t a1)
{
  v2 = sub_10000DD78();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10000C3B4(uint64_t a1)
{
  v2 = sub_10000E278();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000C400()
{
  v0 = sub_10000175C(&qword_10002C608, "NH");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10001CA24();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001CA84();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10001CBF4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001CA44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10001C9A4();
  sub_100005690(v15, static AskToJoinMode.typeDisplayRepresentation);
  sub_100005658(v15, static AskToJoinMode.typeDisplayRepresentation);
  sub_10001CBA4();
  sub_10001CA74();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10001CA64();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10001C994();
}

uint64_t AskToJoinMode.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10002C468 != -1)
  {
    swift_once();
  }

  v0 = sub_10001C9A4();

  return sub_100005658(v0, static AskToJoinMode.typeDisplayRepresentation);
}

uint64_t static AskToJoinMode.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C468 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A4();
  v3 = sub_100005658(v2, static AskToJoinMode.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AskToJoinMode.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10002C468 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A4();
  v3 = sub_100005658(v2, static AskToJoinMode.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AskToJoinMode.typeDisplayRepresentation.modify())()
{
  if (qword_10002C468 != -1)
  {
    swift_once();
  }

  v0 = sub_10001C9A4();
  sub_100005658(v0, static AskToJoinMode.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10000C98C()
{
  v0 = sub_10000175C(&qword_10002C630, &qword_10001DC30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v48 = v40 - v2;
  v3 = sub_10000175C(&qword_10002C608, "NH");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = v40 - v5;
  v56 = sub_10001CA24();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v56);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001CA84();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001CBF4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v57 = sub_10001CA44();
  v15 = *(v57 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v57);
  sub_10000175C(&qword_10002CA48, &qword_10001F510);
  v17 = sub_10000175C(&qword_10002CA50, &qword_10001F518);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v45 = 2 * v18;
  v20 = swift_allocObject();
  v47 = v20;
  *(v20 + 16) = xmmword_10001D420;
  v21 = (v20 + v19);
  v58 = v20 + v19;
  v41 = *(v17 + 48);
  v22 = v17;
  v54 = v17;
  *v21 = 0;
  sub_10001CBA4();
  v40[1] = v12;
  sub_10001CA74();
  v55 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v6 + 104);
  v42 = v6 + 104;
  v43 = v23;
  v24 = v44;
  v23(v44);
  v25 = v24;
  sub_10001CA64();
  v26 = *(v15 + 56);
  v52 = v15 + 56;
  v53 = v26;
  v27 = v46;
  v26(v46, 1, 1, v57);
  v50 = sub_10001C874();
  v28 = *(v50 - 8);
  v49 = *(v28 + 56);
  v51 = v28 + 56;
  v29 = v48;
  v49(v48, 1, 1, v50);
  v30 = v58;
  v31 = v27;
  v32 = v29;
  sub_10001C894();
  v41 = *(v22 + 48);
  *(v30 + v18) = 1;
  sub_10001CBA4();
  sub_10001CA74();
  v33 = v43;
  v43(v25, v55, v56);
  sub_10001CA64();
  v34 = v31;
  v35 = v31;
  v36 = v57;
  v53(v35, 1, 1, v57);
  v49(v32, 1, 1, v50);
  sub_10001C894();
  v37 = (v58 + v45);
  v45 = *(v54 + 48);
  *v37 = 2;
  sub_10001CBA4();
  sub_10001CA74();
  v33(v25, v55, v56);
  sub_10001CA64();
  v53(v34, 1, 1, v36);
  v49(v32, 1, 1, v50);
  sub_10001C894();
  v38 = sub_10001AD74(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static AskToJoinMode.caseDisplayRepresentations = v38;
  return result;
}

uint64_t *AskToJoinMode.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10002C470 != -1)
  {
    swift_once();
  }

  return &static AskToJoinMode.caseDisplayRepresentations;
}

uint64_t static AskToJoinMode.caseDisplayRepresentations.getter()
{
  if (qword_10002C470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AskToJoinMode.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_10002C470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AskToJoinMode.caseDisplayRepresentations = a1;
}

uint64_t (*static AskToJoinMode.caseDisplayRepresentations.modify())()
{
  if (qword_10002C470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t AskToJoinMode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 6710895;
  }

  if (a1 == 1)
  {
    return 0x796669746F6ELL;
  }

  return 7041889;
}

uint64_t sub_10000D208(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x796669746F6ELL;
  if (v2 != 1)
  {
    v4 = 7041889;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6710895;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x796669746F6ELL;
  if (*a2 != 1)
  {
    v8 = 7041889;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6710895;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10001CCF4();
  }

  return v11 & 1;
}

Swift::Int sub_10000D2EC()
{
  v1 = *v0;
  sub_10001CD04();
  sub_10001CC24();

  return sub_10001CD14();
}

uint64_t sub_10000D37C()
{
  *v0;
  *v0;
  sub_10001CC24();
}

Swift::Int sub_10000D3F8()
{
  v1 = *v0;
  sub_10001CD04();
  sub_10001CC24();

  return sub_10001CD14();
}

uint64_t sub_10000D484@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s29WiFiSettingsControlsExtension13AskToJoinModeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000D4B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x796669746F6ELL;
  if (v2 != 1)
  {
    v5 = 7041889;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6710895;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10000D500(uint64_t a1)
{
  v2 = sub_10000E6A8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000D54C(uint64_t a1)
{
  v2 = sub_10000E5E0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000D5A8()
{
  v31 = sub_10001C8E4();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000175C(&qword_10002C600, &unk_10001F450);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_10000175C(&qword_10002C608, "NH");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  v14 = sub_10001CA44();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000175C(&qword_10002CA00, &qword_10001F460);
  sub_10001CA14();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v33 = 0;
  v18 = sub_10001C614();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10000DED8();
  v26 = sub_10001C694();
  sub_10000175C(&qword_10002CA08, &qword_10001F468);
  sub_10001CA14();
  v28(v13, 1, 1, v29);
  v32 = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000E6A8();
  sub_10001C684();
  return v26;
}

uint64_t sub_10000D9C8()
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v1 = qword_100032928;
  v2 = *(v0 + 24) + 1;
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v0 + 16) = v1;
  sub_10000EA74(&qword_10002C758, type metadata accessor for WiFiSharedSettingsState);
  sub_10001CA94();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t _s29WiFiSettingsControlsExtension13AskToJoinModeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100029160;
  v6._object = a2;
  v4 = sub_10001CCE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000DB74()
{
  result = qword_10002C8B0;
  if (!qword_10002C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8B0);
  }

  return result;
}

unint64_t sub_10000DC10()
{
  result = qword_10002C8C8;
  if (!qword_10002C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8C8);
  }

  return result;
}

unint64_t sub_10000DC68()
{
  result = qword_10002C8D0;
  if (!qword_10002C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8D0);
  }

  return result;
}

unint64_t sub_10000DD20()
{
  result = qword_10002C8D8;
  if (!qword_10002C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8D8);
  }

  return result;
}

unint64_t sub_10000DD78()
{
  result = qword_10002C8E0;
  if (!qword_10002C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8E0);
  }

  return result;
}

unint64_t sub_10000DDD0()
{
  result = qword_10002C8E8;
  if (!qword_10002C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8E8);
  }

  return result;
}

unint64_t sub_10000DE28()
{
  result = qword_10002C8F0;
  if (!qword_10002C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8F0);
  }

  return result;
}

unint64_t sub_10000DE80()
{
  result = qword_10002C8F8;
  if (!qword_10002C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8F8);
  }

  return result;
}

unint64_t sub_10000DED8()
{
  result = qword_10002C900;
  if (!qword_10002C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C900);
  }

  return result;
}

unint64_t sub_10000DF30()
{
  result = qword_10002C908;
  if (!qword_10002C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C908);
  }

  return result;
}

unint64_t sub_10000DF88()
{
  result = qword_10002C910;
  if (!qword_10002C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C910);
  }

  return result;
}

unint64_t sub_10000DFE0()
{
  result = qword_10002C918;
  if (!qword_10002C918)
  {
    sub_10000189C(&qword_10002C920, qword_10001EDC0);
    sub_10000DF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C918);
  }

  return result;
}

unint64_t sub_10000E068()
{
  result = qword_10002C928;
  if (!qword_10002C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C928);
  }

  return result;
}

unint64_t sub_10000E0C0()
{
  result = qword_10002C930;
  if (!qword_10002C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C930);
  }

  return result;
}

unint64_t sub_10000E118()
{
  result = qword_10002C938;
  if (!qword_10002C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C938);
  }

  return result;
}

unint64_t sub_10000E170()
{
  result = qword_10002C940;
  if (!qword_10002C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C940);
  }

  return result;
}

unint64_t sub_10000E1C8()
{
  result = qword_10002C948;
  if (!qword_10002C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C948);
  }

  return result;
}

unint64_t sub_10000E220()
{
  result = qword_10002C950;
  if (!qword_10002C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C950);
  }

  return result;
}

unint64_t sub_10000E278()
{
  result = qword_10002C958;
  if (!qword_10002C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C958);
  }

  return result;
}

unint64_t sub_10000E314()
{
  result = qword_10002C970;
  if (!qword_10002C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C970);
  }

  return result;
}

unint64_t sub_10000E36C()
{
  result = qword_10002C978;
  if (!qword_10002C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C978);
  }

  return result;
}

unint64_t sub_10000E3C4()
{
  result = qword_10002C980;
  if (!qword_10002C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C980);
  }

  return result;
}

unint64_t sub_10000E41C()
{
  result = qword_10002C988;
  if (!qword_10002C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C988);
  }

  return result;
}

unint64_t sub_10000E474()
{
  result = qword_10002C990;
  if (!qword_10002C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C990);
  }

  return result;
}

unint64_t sub_10000E4D8()
{
  result = qword_10002C998;
  if (!qword_10002C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C998);
  }

  return result;
}

unint64_t sub_10000E530()
{
  result = qword_10002C9A0;
  if (!qword_10002C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9A0);
  }

  return result;
}

unint64_t sub_10000E588()
{
  result = qword_10002C9A8;
  if (!qword_10002C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9A8);
  }

  return result;
}

unint64_t sub_10000E5E0()
{
  result = qword_10002C9B0;
  if (!qword_10002C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9B0);
  }

  return result;
}

unint64_t sub_10000E6A8()
{
  result = qword_10002C9B8;
  if (!qword_10002C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9B8);
  }

  return result;
}

unint64_t sub_10000E700()
{
  result = qword_10002C9C0;
  if (!qword_10002C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9C0);
  }

  return result;
}

unint64_t sub_10000E758()
{
  result = qword_10002C9C8;
  if (!qword_10002C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9C8);
  }

  return result;
}

unint64_t sub_10000E7B0()
{
  result = qword_10002C9D0;
  if (!qword_10002C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AskToJoinMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskToJoinMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000EA74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EAEC(uint64_t a1)
{
  v30 = a1;
  v1 = sub_10001C6C4();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000175C(&qword_10002CAD0, &qword_10001F6D0);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v23);
  v7 = &v21 - v6;
  v8 = sub_10000175C(&qword_10002CAD8, &qword_10001F6D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_1000083E8();
  sub_10001C784();
  v31._countAndFlagsBits = 0x206E727554;
  v31._object = 0xE500000000000000;
  sub_10001C774(v31);
  swift_getKeyPath();
  v29 = sub_1000107D8();
  sub_10001C6B4();

  sub_10001C764();

  v32._countAndFlagsBits = 0x2E6946695720;
  v32._object = 0xE600000000000000;
  sub_10001C774(v32);
  sub_10001C794();
  v25 = sub_10001C6E4();
  v10 = *(v4 + 8);
  v11 = v23;
  v10(v7, v23);
  v22 = v10;
  sub_10001C784();
  v33._countAndFlagsBits = 0x6946695720746553;
  v33._object = 0xEC000000206F7420;
  sub_10001C774(v33);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  sub_10001C774(v34);
  sub_10001C794();
  v24 = sub_10001C6E4();
  v12 = v11;
  v10(v7, v11);
  sub_10001C784();
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10001C774(v35);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v36._countAndFlagsBits = 0x6E69206946695720;
  v36._object = 0xE900000000000020;
  sub_10001C774(v36);
  v14 = v26;
  v13 = v27;
  v15 = v28;
  (*(v27 + 104))(v26, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v28);
  sub_10001C754();
  (*(v13 + 8))(v14, v15);
  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  sub_10001C774(v37);
  sub_10001C794();
  v16 = sub_10001C6E4();
  v22(v7, v12);
  sub_10000175C(&qword_10002CAE0, &unk_10001F6E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10001D420;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_10001C6D4();

  return v19;
}

uint64_t sub_10000F024(uint64_t a1)
{
  v41 = a1;
  v39 = sub_10001C6C4();
  v44 = *(v39 - 8);
  v1 = *(v44 + 64);
  __chkstk_darwin(v39);
  v38 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000175C(&qword_10002CAB8, &qword_10001F690);
  v43 = v3;
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = sub_10000175C(&qword_10002CAC0, &qword_10001F698);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  sub_100005728();
  sub_10001C784();
  v46._countAndFlagsBits = 0x206E727554;
  v46._object = 0xE500000000000000;
  sub_10001C774(v46);
  swift_getKeyPath();
  v40 = sub_1000107D8();
  sub_10001C6B4();

  sub_10001C764();

  v47._countAndFlagsBits = 0x6F4A206F74754120;
  v47._object = 0xEB000000002E6E69;
  sub_10001C774(v47);
  sub_10001C794();
  v37 = sub_10001C6E4();
  v9 = *(v45 + 8);
  v45 += 8;
  v9(v6, v3);
  v42 = v9;
  sub_10001C784();
  v48._object = 0x8000000100021480;
  v48._countAndFlagsBits = 0xD000000000000011;
  sub_10001C774(v48);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  sub_10001C774(v49);
  sub_10001C794();
  v36 = sub_10001C6E4();
  v9(v6, v43);
  sub_10001C784();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_10001C774(v50);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v51._object = 0xEE00206E69206E69;
  v51._countAndFlagsBits = 0x6F4A206F74754120;
  sub_10001C774(v51);
  v34 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = v44;
  v11 = *(v44 + 104);
  v32 = v44 + 104;
  v33 = v11;
  v13 = v38;
  v12 = v39;
  v11(v38);
  sub_10001C754();
  v14 = *(v10 + 8);
  v44 = v10 + 8;
  v31 = v14;
  v14(v13, v12);
  v52._countAndFlagsBits = 46;
  v52._object = 0xE100000000000000;
  sub_10001C774(v52);
  sub_10001C794();
  v35 = sub_10001C6E4();
  v15 = v43;
  v42(v6, v43);
  sub_10001C784();
  v53._countAndFlagsBits = 0x206E727554;
  v53._object = 0xE500000000000000;
  sub_10001C774(v53);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v54._countAndFlagsBits = 0xD00000000000001FLL;
  v54._object = 0x80000001000214A0;
  sub_10001C774(v54);
  sub_10001C794();
  v30 = sub_10001C6E4();
  v16 = v15;
  v17 = v42;
  v42(v6, v16);
  sub_10001C784();
  v55._countAndFlagsBits = 0xD000000000000025;
  v55._object = 0x80000001000214C0;
  sub_10001C774(v55);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v56._countAndFlagsBits = 46;
  v56._object = 0xE100000000000000;
  sub_10001C774(v56);
  sub_10001C794();
  v29 = sub_10001C6E4();
  v18 = v43;
  v17(v6, v43);
  sub_10001C784();
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_10001C774(v57);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v58._countAndFlagsBits = 0xD000000000000022;
  v58._object = 0x80000001000214F0;
  sub_10001C774(v58);
  v20 = v38;
  v19 = v39;
  v33(v38, v34, v39);
  sub_10001C754();
  v31(v20, v19);
  v59._countAndFlagsBits = 46;
  v59._object = 0xE100000000000000;
  sub_10001C774(v59);
  sub_10001C794();
  v21 = sub_10001C6E4();
  v42(v6, v18);
  sub_10000175C(&qword_10002CAC8, &qword_10001F6A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10001F520;
  v23 = v36;
  *(v22 + 32) = v37;
  *(v22 + 40) = v23;
  v24 = v29;
  v25 = v30;
  *(v22 + 48) = v35;
  *(v22 + 56) = v25;
  *(v22 + 64) = v24;
  *(v22 + 72) = v21;
  v26 = sub_10001C6D4();

  return v26;
}

uint64_t sub_10000F88C()
{
  v0 = sub_10001C704();
  v1 = sub_10001C704();
  v2 = sub_10001C704();
  v3 = sub_10001C704();
  sub_10000175C(&qword_10002CA78, &qword_10001F608);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001F530;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_10001C6F4();

  return v5;
}

uint64_t sub_10000F95C(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_10000175C(&qword_10002CA98, &qword_10001F650);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_10000175C(&qword_10002CAA0, &qword_10001F658);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000DB74();
  sub_10001C784();
  v16._object = 0x8000000100021440;
  v16._countAndFlagsBits = 0xD000000000000013;
  sub_10001C774(v16);
  swift_getKeyPath();
  sub_10000E588();
  sub_10001C6B4();

  sub_10001C764();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10001C774(v17);
  sub_10001C794();
  v14 = sub_10001C6E4();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_10001C784();
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  v18._object = 0x8000000100021460;
  sub_10001C774(v18);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_10001C774(v19);
  sub_10001C794();
  v9 = sub_10001C6E4();
  v7(v4, v8);
  sub_10000175C(&qword_10002CAA8, &qword_10001F660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001D410;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_10001C6D4();

  return v11;
}

uint64_t sub_10000FCDC()
{
  v0 = sub_10001C704();
  v1 = sub_10001C704();
  v2 = sub_10001C704();
  sub_10000175C(&qword_10002CA78, &qword_10001F608);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001D420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10001C6F4();

  return v4;
}

uint64_t sub_10000FD8C(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_10000175C(&qword_10002CA80, &qword_10001F610);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_10000175C(&qword_10002CA88, &qword_10001F618);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000106B4();
  sub_10001C784();
  v16._object = 0x80000001000213F0;
  v16._countAndFlagsBits = 0xD000000000000019;
  sub_10001C774(v16);
  swift_getKeyPath();
  sub_100010710();
  sub_10001C6B4();

  sub_10001C764();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10001C774(v17);
  sub_10001C794();
  v14 = sub_10001C6E4();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_10001C784();
  v18._countAndFlagsBits = 0xD000000000000024;
  v18._object = 0x8000000100021410;
  sub_10001C774(v18);
  swift_getKeyPath();
  sub_10001C6B4();

  sub_10001C764();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_10001C774(v19);
  sub_10001C794();
  v9 = sub_10001C6E4();
  v7(v4, v8);
  sub_10000175C(&qword_10002CA90, &qword_10001F620);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001D410;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_10001C6D4();

  return v11;
}

uint64_t sub_10001010C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_10001C744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10001C6B4();

  a4(v11);
  sub_10001C734();
  v12 = sub_10001C724();
  (*(v7 + 8))(v10, v6);
  sub_10000175C(&qword_10002CA70, &qword_10001F600);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10001F540;
  *(v13 + 32) = v12;
  v14 = sub_10001C714();

  return v14;
}

uint64_t sub_10001028C()
{
  v0 = sub_10001C704();
  v1 = sub_10001C704();
  v2 = sub_10001C704();
  sub_10000175C(&qword_10002CA78, &qword_10001F608);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001D420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10001C6F4();

  return v4;
}

uint64_t sub_100010374()
{
  if (qword_10002C478 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000103E0()
{
  v0 = sub_10001C7C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A620();
  v18 = v5;
  sub_1000083E8();
  sub_10001C7D4();
  v6 = sub_10001C7B4();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v17 = sub_100007E64();
  v18 = v8;
  sub_100005728();
  sub_10001C7D4();
  v9 = sub_10001C7B4();
  v7(v4, v0);
  v17 = sub_10000D5A8();
  v18 = v10;
  sub_10000DB74();
  sub_10001C7D4();
  v11 = sub_10001C7B4();
  v7(v4, v0);
  v17 = sub_10001B144();
  v18 = v12;
  sub_1000106B4();
  sub_10001C7D4();
  v13 = sub_10001C7B4();
  v7(v4, v0);
  sub_10000175C(&qword_10002CA60, &qword_10001F5D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10001F530;
  *(v14 + 32) = v6;
  *(v14 + 40) = v9;
  *(v14 + 48) = v11;
  *(v14 + 56) = v13;
  v15 = sub_10001C7A4();

  return v15;
}

unint64_t sub_1000106B4()
{
  result = qword_10002CA58;
  if (!qword_10002CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA58);
  }

  return result;
}

unint64_t sub_100010710()
{
  result = qword_10002CA68;
  if (!qword_10002CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA68);
  }

  return result;
}

uint64_t sub_100010764@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10001C664();
  *a2 = v5;
  return result;
}

uint64_t sub_1000107A0(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001C674();
}

unint64_t sub_1000107D8()
{
  result = qword_10002CAB0;
  if (!qword_10002CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAB0);
  }

  return result;
}

uint64_t sub_100010848()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  if (qword_10002C488 != -1)
  {
    swift_once();
  }

  v2 = sub_10001CAF4();
  sub_100005658(v2, qword_100032930);
  v3 = sub_10001CAD4();
  v4 = sub_10001CC54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Getting auto join disabled", v5, 2u);
  }

  swift_getKeyPath();
  sub_10001CAA4();

  return [*(v1 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile) isAutoJoinDisabled] ^ 1;
}

id sub_1000109C0()
{
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  if (qword_10002C488 != -1)
  {
    swift_once();
  }

  v0 = sub_10001CAF4();
  sub_100005658(v0, qword_100032930);
  v1 = sub_10001CAD4();
  v2 = sub_10001CC54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Getting power state", v3, 2u);
  }

  v4 = sub_100010CA8();
  v5 = [v4 powerOn];

  return v5;
}

id sub_100010B20()
{
  result = [objc_allocWithZone(type metadata accessor for WiFiSharedSettingsState()) init];
  qword_100032928 = result;
  return result;
}

uint64_t sub_100010BB0()
{
  v0 = sub_10001CAF4();
  sub_100005690(v0, qword_100032930);
  sub_100005658(v0, qword_100032930);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_10001CC14();
  }

  return sub_10001CAE4();
}

id sub_100010CA8()
{
  v1 = OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState____lazy_storage___wifiCWFInterface;
  v2 = *(v0 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState____lazy_storage___wifiCWFInterface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState____lazy_storage___wifiCWFInterface);
  }

  else
  {
    v4 = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
    [v4 activate];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100010D30()
{
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  v1 = *(v0 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile);

  return v1;
}

id sub_100010DB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  v4 = *(v3 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile);
  *a2 = v4;

  return v4;
}

void sub_100010E48(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile;
  v5 = *(v1 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile);
  sub_1000132C8(0, &qword_10002CB68, CWFNetworkProfile_ptr);
  v6 = v5;
  v7 = sub_10001CC94();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000082F0();
    sub_10001CA94();
  }
}

unint64_t sub_100010F8C()
{
  if (qword_10002C488 != -1)
  {
    swift_once();
  }

  v0 = sub_10001CAF4();
  sub_100005658(v0, qword_100032930);
  v1 = sub_10001CAD4();
  v2 = sub_10001CC54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "bundle id is com.apple.Preferences", v3, 2u);
  }

  return 0xD000000000000015;
}

uint64_t sub_1000111F4()
{
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  v1 = *(v0 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier + 8);

  return v1;
}

uint64_t sub_1000112F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier) == a1 && *(v2 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier + 8), (sub_10001CCF4() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000082F0();
    sub_10001CA94();
  }
}

uint64_t sub_10001142C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  v4 = *(v3 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier);
  a2[1] = v4;
}

id sub_100011508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000109C0();
  *a2 = result & 1;
  return result;
}

void sub_100011558(uint64_t a1, char a2)
{
  v3 = sub_100010CA8();
  v11 = 0;
  v4 = [v3 setPower:a2 & 1 error:&v11];

  if (v4)
  {
    v5 = v11;
  }

  else
  {
    v6 = v11;
    sub_10001CA04();

    swift_willThrow();
    if (qword_10002C488 != -1)
    {
      swift_once();
    }

    v7 = sub_10001CAF4();
    sub_100005658(v7, qword_100032930);
    v8 = sub_10001CAD4();
    v9 = sub_10001CC64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to set power on wifiCWFInterface", v10, 2u);
    }
  }
}

id sub_100011744@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100010B04();
  *a2 = result;
  return result;
}

id sub_100011848(uint64_t a1, const char *a2, SEL *a3)
{
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  if (qword_10002C488 != -1)
  {
    swift_once();
  }

  v5 = sub_10001CAF4();
  sub_100005658(v5, qword_100032930);
  v6 = sub_10001CAD4();
  v7 = sub_10001CC54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 2u);
  }

  v9 = sub_100010CA8();
  v10 = [v9 userSettings];

  if (v10)
  {
    v11 = [v10 *a3];
  }

  else
  {
    v10 = sub_10001CAD4();
    v12 = sub_10001CC64();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, v12, "failed to get user settings from CWFInterface", v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

uint64_t sub_100011A50(void *a1)
{
  swift_getKeyPath();
  sub_1000082F0();
  v2 = a1;
  sub_10001CA94();
}

id sub_100011AF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001182C();
  *a2 = result;
  return result;
}

uint64_t sub_100011B40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CA94();
}

void sub_100011C34(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4, Swift::Int a5, char *a6)
{
  format = a6;
  v11 = sub_100010CA8();
  v12 = [v11 userSettings];

  if (v12)
  {
    v13 = [v12 *a3];
  }

  else
  {
    v13 = 0;
  }

  [v12 *a4];
  sub_10000175C(&qword_10002CB48, &qword_10001F868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001F6F0;
  sub_1000132C8(0, &qword_10002CB50, NSNumber_ptr);
  *(inited + 32) = sub_10001CC74(a5);
  sub_100012F70(inited);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  if (!v12)
  {
    __break(1u);
  }

  v16 = *(a1 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState____lazy_storage___wifiCWFInterface);
  sub_100013260();
  v17 = v16;
  v18 = v12;
  isa = sub_10001CC44().super.isa;
  v30 = 0;
  v20 = [v17 applyUserSettings:v18 properties:isa error:&v30];

  if (v20)
  {
    v21 = v30;
  }

  else
  {
    v22 = v30;
    sub_10001CA04();

    swift_willThrow();
    if (qword_10002C488 != -1)
    {
      swift_once();
    }

    v23 = sub_10001CAF4();
    sub_100005658(v23, qword_100032930);
    v24 = sub_10001CAD4();
    v25 = sub_10001CC64();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, formata, v26, 2u);
    }

    v27 = v18;

    [v27 *a4];
  }
}

id sub_100011F5C()
{
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  if (qword_10002C488 != -1)
  {
    swift_once();
  }

  v0 = sub_10001CAF4();
  sub_100005658(v0, qword_100032930);
  v1 = sub_10001CAD4();
  v2 = sub_10001CC54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Getting ask to join networks", v3, 2u);
  }

  return sub_100010B04();
}

void sub_1000120A4(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CWFUserSettings) init];
  [v4 setAskToJoinMode:a1];
  sub_10000175C(&qword_10002CB48, &qword_10001F868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001F6F0;
  sub_1000132C8(0, &qword_10002CB50, NSNumber_ptr);
  *(inited + 32) = sub_10001CC74(1);
  sub_100012F70(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  sub_100013260();
  isa = sub_10001CC44().super.isa;

  v14 = 0;
  LODWORD(v2) = [v2 applyUserSettings:v4 properties:isa error:&v14];

  if (v2)
  {
    v8 = v14;
  }

  else
  {
    v9 = v14;
    sub_10001CA04();

    swift_willThrow();
    if (qword_10002C488 != -1)
    {
      swift_once();
    }

    v10 = sub_10001CAF4();
    sub_100005658(v10, qword_100032930);
    v11 = sub_10001CAD4();
    v12 = sub_10001CC64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to set ask to join mode on user settings", v13, 2u);
    }

    v4 = v11;
  }
}

BOOL sub_10001232C()
{
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CAA4();

  if (qword_10002C488 != -1)
  {
    swift_once();
  }

  v0 = sub_10001CAF4();
  sub_100005658(v0, qword_100032930);
  v1 = sub_10001CAD4();
  v2 = sub_10001CC54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Getting ask to join hotspot", v3, 2u);
  }

  return sub_10001182C() == 2;
}

uint64_t sub_10001247C(void *a1)
{
  swift_getKeyPath();
  sub_1000082F0();
  v2 = a1;
  sub_10001CA94();
}

uint64_t sub_100012524(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000082F0();
  sub_10001CA94();
}

void sub_1000125B4(char a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CWFUserSettings) init];
  v5 = v4;
  if (a1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v4 setAutoHotspotMode:v6];
  sub_10000175C(&qword_10002CB48, &qword_10001F868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001F6F0;
  sub_1000132C8(0, &qword_10002CB50, NSNumber_ptr);
  *(inited + 32) = sub_10001CC74(2);
  sub_100012F70(inited);
  swift_setDeallocating();
  v8 = *(inited + 16);
  swift_arrayDestroy();
  sub_100013260();
  isa = sub_10001CC44().super.isa;

  v17 = 0;
  v10 = [v2 applyUserSettings:v5 properties:isa error:&v17];

  if (v10)
  {
    v11 = v17;
  }

  else
  {
    v12 = v17;
    sub_10001CA04();

    swift_willThrow();
    if (qword_10002C488 != -1)
    {
      swift_once();
    }

    v13 = sub_10001CAF4();
    sub_100005658(v13, qword_100032930);
    v14 = sub_10001CAD4();
    v15 = sub_10001CC64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to set auto hotspot mode on user settings", v16, 2u);
    }

    v5 = v14;
  }
}

uint64_t sub_100012864@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100010848();
  *a2 = result & 1;
  return result;
}

id sub_1000128B4(char *a1, char a2)
{
  swift_getKeyPath();
  v18 = a1;
  sub_1000082F0();
  sub_10001CAA4();

  v4 = OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile;
  v17 = a2;
  [*&a1[OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile] setAutoJoinDisabled:(a2 & 1) == 0];
  v5 = sub_100010CA8();
  swift_getKeyPath();
  v18 = a1;
  sub_10001CAA4();

  v6 = *&a1[v4];
  sub_10000175C(&qword_10002CB48, &qword_10001F868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001F6F0;
  sub_1000132C8(0, &qword_10002CB50, NSNumber_ptr);
  v8 = v6;
  *(inited + 32) = sub_10001CC74(7);
  sub_100012F70(inited);
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  sub_100013260();
  isa = sub_10001CC44().super.isa;

  v18 = 0;
  LODWORD(v6) = [v5 updateKnownNetworkProfile:v8 properties:isa error:&v18];

  if (v6)
  {
    return v18;
  }

  v12 = v18;
  sub_10001CA04();

  swift_willThrow();
  if (qword_10002C488 != -1)
  {
    swift_once();
  }

  v13 = sub_10001CAF4();
  sub_100005658(v13, qword_100032930);
  v14 = sub_10001CAD4();
  v15 = sub_10001CC64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unable to set auto join on wifiCWFInterface", v16, 2u);
  }

  swift_getKeyPath();
  v18 = a1;
  sub_10001CAA4();

  [*&a1[v4] setAutoJoinDisabled:v17 & 1];
}

id sub_100012C0C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState____lazy_storage___wifiCWFInterface] = 0;
  v2 = [objc_allocWithZone(CWFNetworkProfile) init];
  *&v0[OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile] = v2;
  v3 = [objc_allocWithZone(CWFUserSettings) init];
  *&v0[OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFUserSettings] = v3;
  v4 = sub_100010F8C();
  v5 = &v0[OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier];
  *v5 = v4;
  v5[1] = v6;
  sub_10001CAB4();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

id sub_100012CEC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WiFiSharedSettingsState()
{
  result = qword_10002CB38;
  if (!qword_10002CB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012E28()
{
  result = sub_10001CAC4();
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

uint64_t sub_100012EDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100010848();
  *a2 = result & 1;
  return result;
}

void sub_100012F70(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10001CCC4())
    {
LABEL_3:
      sub_10000175C(&qword_10002CB60, &qword_10001F870);
      v3 = sub_10001CCA4();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10001CCC4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10001CCB4();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10001CC84(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000132C8(0, &qword_10002CB50, NSNumber_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10001CC94();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_10001CC84(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000132C8(0, &qword_10002CB50, NSNumber_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10001CC94();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_100013260()
{
  result = qword_10002CB58;
  if (!qword_10002CB58)
  {
    sub_1000132C8(255, &qword_10002CB50, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB58);
  }

  return result;
}

uint64_t sub_1000132C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100013310()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile);
  *(v1 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiCWFNetworkProfile) = v2;
  v4 = v2;
}

id sub_100013350@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100011F5C();
  *a2 = result;
  return result;
}

id sub_1000133C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100010B04();
  *a2 = result;
  return result;
}

BOOL sub_100013478@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001232C();
  *a2 = result;
  return result;
}

id sub_1000134DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10001182C();
  *a2 = result;
  return result;
}

void sub_100013574()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = sub_100010CA8();
  sub_1000125B4(v1);
}

void sub_1000135C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = sub_100010CA8();
  sub_1000120A4(v1);
}

id sub_100013608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000109C0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100013670(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000112F0(v2, v3);
}

uint64_t sub_1000136B0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

id sub_1000137C8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_10000175C(&qword_10002CB70, &qword_10001FA48);
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v27 = sub_10000175C(&qword_10002CB78, &qword_10001FA50);
  v24 = *(v27 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v27);
  v7 = &v22 - v6;
  v29 = sub_10000175C(&qword_10002CB80, &qword_10001FA58);
  v25 = *(v29 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v29);
  v10 = &v22 - v9;
  v28 = sub_10000175C(&qword_10002CB88, &qword_10001FA60);
  v26 = *(v28 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v28);
  v23 = &v22 - v12;
  swift_getKeyPath();
  sub_10000175C(&qword_10002CB90, &qword_10001FA90);
  sub_10000978C();
  sub_100004028(&qword_10002CB98, &qword_10002CB90, &qword_10001FA90);
  sub_10001CB94();
  sub_10001CB24();
  v13 = sub_100004028(&qword_10002CBA0, &qword_10002CB70, &qword_10001FA48);
  sub_10001CB54();

  (*(v31 + 8))(v4, v1);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    MobileGestalt_get_wapiCapability();

    sub_10001CB24();
    v32 = v1;
    v33 = v13;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v17 = v27;
    sub_10001CB34();

    (*(v24 + 8))(v7, v17);
    v32 = v17;
    v33 = OpaqueTypeConformance2;
    v18 = swift_getOpaqueTypeConformance2();
    v19 = v23;
    v20 = v29;
    sub_10001CB64();
    (*(v25 + 8))(v10, v20);
    v32 = v20;
    v33 = v18;
    swift_getOpaqueTypeConformance2();
    v21 = v28;
    sub_10001CB44();
    return (*(v26 + 8))(v19, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013D58()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    MobileGestalt_get_wapiCapability();

    v0 = sub_10001CB24();
  }

  else
  {
    __break(1u);
  }

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100013E5C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_10000175C(&qword_10002CB70, &qword_10001FA48);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_10000175C(&qword_10002CB78, &qword_10001FA50);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_10000175C(&qword_10002CB80, &qword_10001FA58);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_10000175C(&qword_10002CB88, &qword_10001FA60);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v28 = &v27 - v18;
  swift_getKeyPath();
  sub_10000175C(&qword_10002CB90, &qword_10001FA90);
  sub_100006CF0();
  sub_100004028(&qword_10002CB98, &qword_10002CB90, &qword_10001FA90);
  sub_10001CB94();
  sub_10001CB24();
  v19 = sub_100004028(&qword_10002CBA0, &qword_10002CB70, &qword_10001FA48);
  sub_10001CB54();

  (*(v29 + 8))(v4, v1);
  sub_10001CB24();
  v37 = v1;
  v38 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_10001CB34();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_10001CB64();
  (*(v33 + 8))(v14, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_10001CB44();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_1000143A4()
{
  v0 = sub_10001CB24();

  return Label<>.init(_:systemImage:)(v0);
}

id sub_100014404@<X0>(uint64_t a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    MobileGestalt_get_wapiCapability();

    sub_10001CB24();
    result = sub_10001CB74();
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000144B8@<X0>(uint64_t a1@<X8>)
{
  sub_10001CB24();
  result = sub_10001CB74();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100014540()
{
  sub_10000189C(&qword_10002CB88, &qword_10001FA60);
  sub_10000189C(&qword_10002CB80, &qword_10001FA58);
  sub_10000189C(&qword_10002CB78, &qword_10001FA50);
  sub_10000189C(&qword_10002CB70, &qword_10001FA48);
  sub_100004028(&qword_10002CBA0, &qword_10002CB70, &qword_10001FA48);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000146A0()
{
  result = qword_10002CBC8;
  if (!qword_10002CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBC8);
  }

  return result;
}

unint64_t sub_1000146F8()
{
  result = qword_10002CBD0;
  if (!qword_10002CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBD0);
  }

  return result;
}

unint64_t sub_100014750()
{
  result = qword_10002CBD8;
  if (!qword_10002CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBD8);
  }

  return result;
}

uint64_t sub_1000147A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E696F4A6F747541;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x41504974696D694CLL;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000100020DC0;
    }

    else
    {
      v5 = 0xEE00737365726464;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4D61746144776F4CLL;
    }

    else
    {
      v4 = 0x6E696F4A6F747541;
    }

    if (v3)
    {
      v5 = 0xEB0000000065646FLL;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xD000000000000012;
  v8 = 0x8000000100020DC0;
  if (a2 != 2)
  {
    v7 = 0x41504974696D694CLL;
    v8 = 0xEE00737365726464;
  }

  if (a2)
  {
    v2 = 0x4D61746144776F4CLL;
    v6 = 0xEB0000000065646FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10001CCF4();
  }

  return v11 & 1;
}

uint64_t sub_100014910(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1953460082;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE90000000000006ELL;
    v4 = 0xEF746F7073746F48;
    if (a1 == 2)
    {
      v6 = 0x696F4A6F546B7341;
    }

    else
    {
      v6 = 0x6E696F4A6F747541;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE900000000000072;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x65776F5069466957;
    }

    else
    {
      v6 = 1953460082;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x696F4A6F546B7341;
  if (a2 == 2)
  {
    v10 = 0xE90000000000006ELL;
  }

  else
  {
    v9 = 0x6E696F4A6F747541;
    v10 = 0xEF746F7073746F48;
  }

  if (a2)
  {
    v2 = 0x65776F5069466957;
    v8 = 0xE900000000000072;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_10001CCF4();
  }

  return v13 & 1;
}

uint64_t sub_100014A70()
{
  v0 = sub_10000175C(&qword_10002C608, "NH");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10001CA44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10001C9A4();
  sub_100005690(v7, qword_100032948);
  sub_100005658(v7, qword_100032948);
  sub_10001CA14();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_10001C994();
}

id sub_100014BE8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_10000175C(&qword_10002C630, &qword_10001DC30);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v95 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v98 = &v94 - v8;
  __chkstk_darwin(v7);
  v101 = &v94 - v9;
  v10 = sub_10001CBE4();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v13 = __chkstk_darwin(v12);
  v99 = &v94 - v14;
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v97 = &v94 - v18;
  v19 = __chkstk_darwin(v17);
  __chkstk_darwin(v19);
  v20 = sub_10000175C(&qword_10002C608, "NH");
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v100 = &v94 - v26;
  v27 = __chkstk_darwin(v25);
  v96 = &v94 - v28;
  __chkstk_darwin(v27);
  v30 = &v94 - v29;
  v31 = sub_10001CA44();
  v32 = *(v31 - 8);
  v104 = v31;
  v105 = v32;
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v35 = __chkstk_darwin(v34);
  v36 = __chkstk_darwin(v35);
  v37 = __chkstk_darwin(v36);
  v102 = &v94 - v38;
  __chkstk_darwin(v37);
  if (a1 <= 1u)
  {
    if (a1)
    {
      sub_10001CA14();
      sub_10001CBD4();
      v115._countAndFlagsBits = 0;
      v115._object = 0xE000000000000000;
      sub_10001CBC4(v115);
      result = MobileGestalt_get_current_device();
      if (result)
      {
        v71 = result;
        wapiCapability = MobileGestalt_get_wapiCapability();

        if (wapiCapability)
        {
          v73._countAndFlagsBits = 1312902231;
        }

        else
        {
          v73._countAndFlagsBits = 0x69462D6957;
        }

        if (wapiCapability)
        {
          v74 = 0xE400000000000000;
        }

        else
        {
          v74 = 0xE500000000000000;
        }

        v73._object = v74;
        sub_10001CBB4(v73);

        v116._countAndFlagsBits = 0;
        v116._object = 0xE000000000000000;
        sub_10001CBC4(v116);
        v75 = v96;
        sub_10001CA34();
        v76 = v105 + 56;
        (*(v105 + 56))(v75, 0, 1, v104);
        v77 = v98;
        sub_10001C864();
        v78 = sub_10001C874();
        (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
        sub_10000175C(&qword_10002C638, &qword_10001DC38);
        v79 = *(v76 + 16);
        v80 = (*(v76 + 24) + 32) & ~*(v76 + 24);
        *(swift_allocObject() + 16) = xmmword_10001F540;
        sub_10001CA14();
        sub_10001CBD4();
        v117._countAndFlagsBits = 0xD000000000000059;
        v117._object = 0x8000000100021900;
        sub_10001CBC4(v117);
        result = MobileGestalt_get_current_device();
        if (result)
        {
          v81 = result;
          v82 = MobileGestalt_get_wapiCapability();

          if (v82)
          {
            v83._countAndFlagsBits = 0x734E414C57;
          }

          else
          {
            v83._countAndFlagsBits = 0x656E2069462D6957;
          }

          if (v82)
          {
            v84 = 0xE500000000000000;
          }

          else
          {
            v84 = 0xEE00736B726F7774;
          }

          v83._object = v84;
          sub_10001CBB4(v83);

          v118._countAndFlagsBits = 0x6C657320756F7920;
          v118._object = 0xEC0000002E746365;
          sub_10001CBC4(v118);
          sub_10001CA34();
          return sub_10001C884();
        }

        goto LABEL_70;
      }

      goto LABEL_67;
    }

    sub_10001CA14();
    sub_10001CBD4();
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    sub_10001CBC4(v106);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v40 = result;
      v41 = MobileGestalt_get_wapiCapability();

      if (v41)
      {
        v42._countAndFlagsBits = 1312902231;
      }

      else
      {
        v42._countAndFlagsBits = 0x69462D6957;
      }

      if (v41)
      {
        v43 = 0xE400000000000000;
      }

      else
      {
        v43 = 0xE500000000000000;
      }

      v42._object = v43;
      sub_10001CBB4(v42);

      v107._countAndFlagsBits = 0;
      v107._object = 0xE000000000000000;
      sub_10001CBC4(v107);
      sub_10001CA34();
      v44 = v105 + 56;
      (*(v105 + 56))(v30, 0, 1, v104);
      v45 = v101;
      sub_10001C864();
      v46 = sub_10001C874();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_10000175C(&qword_10002C638, &qword_10001DC38);
      v47 = *(v44 + 16);
      v48 = (*(v44 + 24) + 32) & ~*(v44 + 24);
      *(swift_allocObject() + 16) = xmmword_10001D410;
      sub_10001CA14();
      sub_10001CA14();
      sub_10001CA14();
      return sub_10001C884();
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (a1 != 2)
  {
    sub_10001CA14();
    sub_10001CBD4();
    v119._countAndFlagsBits = 0;
    v119._object = 0xE000000000000000;
    sub_10001CBC4(v119);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v85 = result;
      v86 = MobileGestalt_get_wapiCapability();

      if (v86)
      {
        v87._countAndFlagsBits = 1312902231;
      }

      else
      {
        v87._countAndFlagsBits = 0x69462D6957;
      }

      if (v86)
      {
        v88 = 0xE400000000000000;
      }

      else
      {
        v88 = 0xE500000000000000;
      }

      v87._object = v88;
      sub_10001CBB4(v87);

      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      sub_10001CBC4(v120);
      sub_10001CA34();
      v89 = v105 + 56;
      (*(v105 + 56))(v24, 0, 1, v104);
      v90 = v101;
      sub_10001C864();
      v91 = sub_10001C874();
      (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
      sub_10000175C(&qword_10002C638, &qword_10001DC38);
      v92 = *(v89 + 16);
      v93 = (*(v89 + 24) + 32) & ~*(v89 + 24);
      *(swift_allocObject() + 16) = xmmword_10001F530;
      sub_10001CA14();
      sub_10001CA14();
      sub_10001CA14();
      sub_10001CA14();
      sub_10001CA14();
      return sub_10001C884();
    }

    goto LABEL_68;
  }

  sub_10001CBD4();
  v108._countAndFlagsBits = 0x2065746176697250;
  v108._object = 0xE800000000000000;
  sub_10001CBC4(v108);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_66;
  }

  v49 = result;
  v50 = MobileGestalt_get_wapiCapability();

  if (v50)
  {
    v51._countAndFlagsBits = 1312902231;
  }

  else
  {
    v51._countAndFlagsBits = 0x69462D6957;
  }

  if (v50)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  v51._object = v52;
  sub_10001CBB4(v51);

  v109._countAndFlagsBits = 0x7373657264644120;
  v109._object = 0xE800000000000000;
  sub_10001CBC4(v109);
  sub_10001CA34();
  sub_10001CBD4();
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  sub_10001CBC4(v110);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_69;
  }

  v53 = result;
  v54 = MobileGestalt_get_wapiCapability();

  if (v54)
  {
    v55._countAndFlagsBits = 1312902231;
  }

  else
  {
    v55._countAndFlagsBits = 0x69462D6957;
  }

  if (v54)
  {
    v56 = 0xE400000000000000;
  }

  else
  {
    v56 = 0xE500000000000000;
  }

  v55._object = v56;
  sub_10001CBB4(v55);

  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  sub_10001CBC4(v111);
  v57 = v100;
  sub_10001CA34();
  v58 = v105 + 56;
  (*(v105 + 56))(v57, 0, 1, v104);
  v59 = v95;
  sub_10001C864();
  v60 = sub_10001C874();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  sub_10000175C(&qword_10002C638, &qword_10001DC38);
  v61 = *(v58 + 16);
  v62 = (*(v58 + 24) + 32) & ~*(v58 + 24);
  *(swift_allocObject() + 16) = xmmword_10001D420;
  sub_10001CA14();
  sub_10001CA14();
  sub_10001CA14();
  sub_10001CBD4();
  v112._countAndFlagsBits = 0x697461746F722041;
  v112._object = 0xEB0000000020676ELL;
  sub_10001CBC4(v112);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_71;
  }

  v63 = result;
  v64 = MobileGestalt_get_wapiCapability();

  if (v64)
  {
    v65._countAndFlagsBits = 1312902231;
  }

  else
  {
    v65._countAndFlagsBits = 0x69462D6957;
  }

  if (v64)
  {
    v66 = 0xE400000000000000;
  }

  else
  {
    v66 = 0xE500000000000000;
  }

  v65._object = v66;
  sub_10001CBB4(v65);

  v113._countAndFlagsBits = 0xD000000000000030;
  v113._object = 0x80000001000218A0;
  sub_10001CBC4(v113);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v67 = result;
    v68 = MobileGestalt_get_wapiCapability();

    if (v68)
    {
      v69._countAndFlagsBits = 1312902231;
    }

    else
    {
      v69._countAndFlagsBits = 0x69462D6957;
    }

    if (v68)
    {
      v70 = 0xE400000000000000;
    }

    else
    {
      v70 = 0xE500000000000000;
    }

    v69._object = v70;
    sub_10001CBB4(v69);

    v114._countAndFlagsBits = 0xD00000000000001ALL;
    v114._object = 0x80000001000218E0;
    sub_10001CBC4(v114);
    sub_10001CA34();
    return sub_10001C884();
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_100015A30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005720;

  return sub_10001739C(a1);
}

uint64_t sub_100015AD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000056F8;

  return sub_100017158();
}

unint64_t sub_100015B80()
{
  result = qword_10002CBE0;
  if (!qword_10002CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBE0);
  }

  return result;
}

uint64_t sub_100015BD4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002F0C;

  return sub_100017730();
}

unint64_t sub_100015C7C()
{
  result = qword_10002CBE8;
  if (!qword_10002CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBE8);
  }

  return result;
}

unint64_t sub_100015CD4()
{
  result = qword_10002CBF0;
  if (!qword_10002CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBF0);
  }

  return result;
}

unint64_t sub_100015D2C()
{
  result = qword_10002CBF8;
  if (!qword_10002CBF8)
  {
    sub_10000189C(&qword_10002CC00, qword_10001FB78);
    sub_100015CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBF8);
  }

  return result;
}

uint64_t sub_100015DB0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100015B80();
  *v6 = v2;
  v6[1] = sub_10000320C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100015E64(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000033A4;

  return sub_100017574();
}

unint64_t sub_100015F0C()
{
  result = qword_10002CC08;
  if (!qword_10002CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC08);
  }

  return result;
}

uint64_t sub_100015F60()
{
  v0 = sub_10000175C(&qword_10002CCC0, &qword_1000202C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000175C(&qword_10002CCC8, &qword_1000202C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100014750();
  sub_10001C964();
  v9._object = 0x80000001000219F0;
  v9._countAndFlagsBits = 0xD000000000000024;
  sub_10001C954(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10001C944();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_10001C954(v10);
  return sub_10001C974();
}

uint64_t sub_100016124()
{
  v0 = qword_10002CBA8;

  return v0;
}

unint64_t sub_100016160()
{
  result = qword_10002CC10;
  if (!qword_10002CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC10);
  }

  return result;
}

unint64_t sub_1000161B8()
{
  result = qword_10002CC18;
  if (!qword_10002CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC18);
  }

  return result;
}

unint64_t sub_100016210()
{
  result = qword_10002CC20;
  if (!qword_10002CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC20);
  }

  return result;
}

unint64_t sub_100016268()
{
  result = qword_10002CC28;
  if (!qword_10002CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC28);
  }

  return result;
}

uint64_t sub_1000162BC()
{
  sub_100017CDC();
  v1 = sub_10001C8F4();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10001632C()
{
  result = qword_10002CC30;
  if (!qword_10002CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC30);
  }

  return result;
}

unint64_t sub_100016384()
{
  result = qword_10002CC38;
  if (!qword_10002CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC38);
  }

  return result;
}

unint64_t sub_1000163DC()
{
  result = qword_10002CC40;
  if (!qword_10002CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC40);
  }

  return result;
}

unint64_t sub_100016434()
{
  result = qword_10002CC48;
  if (!qword_10002CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC48);
  }

  return result;
}

uint64_t sub_100016504(uint64_t a1)
{
  v2 = sub_100014750();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100016554()
{
  result = qword_10002CC60;
  if (!qword_10002CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC60);
  }

  return result;
}

uint64_t sub_1000165B0(uint64_t a1)
{
  v2 = sub_1000163DC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001660C()
{
  result = qword_10002CC68;
  if (!qword_10002CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC68);
  }

  return result;
}

Swift::Int sub_100016660()
{
  v1 = *v0;
  sub_10001CD04();
  sub_10001CC24();

  return sub_10001CD14();
}

uint64_t sub_10001673C()
{
  *v0;
  *v0;
  *v0;
  sub_10001CC24();
}

Swift::Int sub_100016804()
{
  v1 = *v0;
  sub_10001CD04();
  sub_10001CC24();

  return sub_10001CD14();
}

uint64_t sub_1000168DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000178E4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001690C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E696F4A6F747541;
  v4 = 0x8000000100020DC0;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x41504974696D694CLL;
    v4 = 0xEE00737365726464;
  }

  if (*v1)
  {
    v3 = 0x4D61746144776F4CLL;
    v2 = 0xEB0000000065646FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000169F8()
{
  v1 = 0x6E696F4A6F747541;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x41504974696D694CLL;
  }

  if (*v0)
  {
    v1 = 0x4D61746144776F4CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100016A8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000178E4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100016AD8()
{
  result = qword_10002CC80;
  if (!qword_10002CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC80);
  }

  return result;
}

uint64_t sub_100016B2C()
{
  v0 = sub_10001CA44();
  sub_100005690(v0, qword_100032960);
  sub_100005658(v0, qword_100032960);
  return sub_10001CA14();
}

void (*sub_100016B90(uint64_t *a1))(void *a1)
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C654();
  return sub_1000042F4;
}

unint64_t sub_100016C04()
{
  result = qword_10002CC88;
  if (!qword_10002CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC88);
  }

  return result;
}

uint64_t sub_100016C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017C34();
  v5 = sub_100017CDC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100016CC4()
{
  v0 = qword_10002CBB8;

  return v0;
}

unint64_t sub_100016D00()
{
  result = qword_10002CC90;
  if (!qword_10002CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC90);
  }

  return result;
}

unint64_t sub_100016D58()
{
  result = qword_10002CC98;
  if (!qword_10002CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC98);
  }

  return result;
}

uint64_t sub_100016E34(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100017C34();
  v8 = sub_100017C88();
  v9 = sub_100017CDC();
  *v6 = v2;
  v6[1] = sub_10000476C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100016F08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100017930();
  *a1 = result;
  return result;
}

uint64_t sub_100016F30(uint64_t a1)
{
  v2 = sub_100016C04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

char *sub_100016FAC(char *a1, int64_t a2, char a3)
{
  result = sub_10001706C(a1, a2, a3, *v3, &qword_10002CCE8, &qword_100020308);
  *v3 = result;
  return result;
}

char *sub_100016FDC(char *a1, int64_t a2, char a3)
{
  result = sub_10001706C(a1, a2, a3, *v3, &qword_10002CCE0, &qword_100020300);
  *v3 = result;
  return result;
}

char *sub_10001700C(char *a1, int64_t a2, char a3)
{
  result = sub_10001706C(a1, a2, a3, *v3, &qword_10002CCD8, &qword_1000202E8);
  *v3 = result;
  return result;
}

char *sub_10001703C(char *a1, int64_t a2, char a3)
{
  result = sub_10001706C(a1, a2, a3, *v3, &qword_10002CCD0, &qword_1000202D8);
  *v3 = result;
  return result;
}

char *sub_10001706C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000175C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_100017174()
{
  sub_10001703C(0, 1, 1);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10001703C((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_10001703C((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_10001703C((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  v8 = v2 + 4;
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_10001703C((v7 > 1), v2 + 4, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v8;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  sub_10001700C(0, v2 + 4, 0);
  v9 = *(&_swiftEmptyArrayStorage + 2);
  v10 = 32;
  do
  {
    v11 = *(&_swiftEmptyArrayStorage + v10);
    v12 = *(&_swiftEmptyArrayStorage + 3);
    if (v9 >= v12 >> 1)
    {
      sub_10001700C((v12 > 1), v9 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
    *(&_swiftEmptyArrayStorage + v9 + 32) = v11;
    ++v10;
    ++v9;
    --v8;
  }

  while (v8);

  v13 = *(v0 + 8);

  return v13(&_swiftEmptyArrayStorage);
}

uint64_t sub_1000173BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001703C(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v7 = *(&_swiftEmptyArrayStorage + 2);
      v6 = *(&_swiftEmptyArrayStorage + 3);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        sub_10001703C((v6 > 1), v7 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v8;
      *(&_swiftEmptyArrayStorage + v7 + 32) = v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = *(&_swiftEmptyArrayStorage + 2);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  sub_10001700C(0, v8, 0);
  v9 = *(&_swiftEmptyArrayStorage + 2);
  v10 = 32;
  do
  {
    v11 = *(&_swiftEmptyArrayStorage + v10);
    v12 = *(&_swiftEmptyArrayStorage + 3);
    if (v9 >= v12 >> 1)
    {
      sub_10001700C((v12 > 1), v9 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
    *(&_swiftEmptyArrayStorage + v9 + 32) = v11;
    ++v10;
    ++v9;
    --v8;
  }

  while (v8);
LABEL_14:

  v13 = *(v0 + 8);

  return v13(&_swiftEmptyArrayStorage);
}

uint64_t sub_100017590()
{
  sub_10001703C(0, 1, 1);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10001703C((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_10001703C((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_10001703C((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_10001703C((v7 > 1), v2 + 4, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 4;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  v8 = *(&_swiftEmptyArrayStorage + 32);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_10001774C()
{
  sub_10001700C(0, 4, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10001700C((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_10001700C((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_10001700C((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_10001700C((v7 > 1), v2 + 4, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 4;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000178E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100029240;
  v6._object = a2;
  v4 = sub_10001CCE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100017930()
{
  v21 = sub_10001C8E4();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000175C(&qword_10002C600, &unk_10001F450);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_10000175C(&qword_10002C608, "NH");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10001CA44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000175C(&qword_10002CCA0, &qword_1000202B8);
  sub_10001CA14();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 4;
  v18 = sub_10001C614();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100014750();
  return sub_10001C694();
}

unint64_t sub_100017C34()
{
  result = qword_10002CCA8;
  if (!qword_10002CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCA8);
  }

  return result;
}

unint64_t sub_100017C88()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

unint64_t sub_100017CDC()
{
  result = qword_10002CCB8;
  if (!qword_10002CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB8);
  }

  return result;
}

uint64_t sub_100017D54()
{
  v0 = sub_10000175C(&qword_10002C608, "NH");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10001CA24();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001CA84();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10001CBF4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001CA44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10001C9A4();
  sub_100005690(v15, qword_100032978);
  sub_100005658(v15, qword_100032978);
  sub_10001CBA4();
  sub_10001CA74();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10001CA54();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10001C994();
}

uint64_t sub_10001804C()
{
  v0 = sub_10001CA44();
  sub_100005690(v0, qword_100032990);
  sub_100005658(v0, qword_100032990);
  return sub_10001CA14();
}

uint64_t sub_1000180B0()
{
  v0 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  sub_100005690(v0, qword_1000329A8);
  v1 = sub_100005658(v0, qword_1000329A8);
  sub_10001C7E4();
  v2 = sub_10001C7F4();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100018170()
{
  result = swift_getKeyPath();
  qword_1000329C0 = result;
  return result;
}

uint64_t sub_100018198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_10000175C(&qword_10002C760, &qword_10001E380) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_10000175C(&qword_10002C768, &qword_10001E388) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_10000175C(&qword_10002CE50, &qword_100020CE0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10001C614();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_10000175C(&qword_10002CE58, &qword_100020CE8);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100018378, 0, 0);
}

uint64_t sub_100018378()
{
  v1 = v0[8];
  sub_10001C664();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10001BA20();
  *v3 = v0;
  v3[1] = sub_100018448;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10001C490, 0, &type metadata for AutoJoinHotspotEntity, v4);
}

uint64_t sub_100018448()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100018544, 0, 0);
}

uint64_t sub_100018544()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_10001C664();
  v3 = v0[3];
  v0[4] = v3;
  v0[21] = v3;
  sub_10001C664();
  if (qword_10002C4B8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000329C0;
  v0[22] = qword_1000329C0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = sub_100004028(&qword_10002CE30, &qword_10002CE38, &qword_100020C78);
  *v6 = v0;
  v6[1] = sub_100018698;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 25, v4, &type metadata for AutoJoinHotspotMode, v7);
}

uint64_t sub_100018698()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100006514;
  }

  else
  {
    v5 = sub_1000187EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000187EC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10001C664();
  v0[6] = v0[5];
  v8 = sub_10001C984();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10001C9B4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000106B4();
  sub_10001BAD0();
  sub_10001C5E4();
  (*(v2 + 16))(v12, v1, v3);
  sub_10001C604();
  sub_10001C624();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100018A58()
{
  v0 = sub_10000175C(&qword_10002CE60, &qword_100020CF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10002C4B8 != -1)
  {
    swift_once();
  }

  sub_10001C854();

  sub_10001BAD0();
  sub_100004028(&qword_10002CE68, &qword_10002CE60, &qword_100020CF0);
  sub_10001C844();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100018BCC(uint64_t *a1))(void *)
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
  v4 = *v1;
  *(v3 + 32) = sub_10001C654();
  return sub_100006848;
}

void (*sub_100018C40(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001C654();
  return sub_1000083CC;
}

uint64_t sub_100018CB4()
{
  if (qword_10002C4B8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100018D48@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000175C(&qword_10002C790, &unk_10001E3D0);
  v3 = sub_100005658(v2, qword_1000329A8);
  return sub_10001C428(v3, a1, &qword_10002C790, &unk_10001E3D0);
}

uint64_t sub_100018DD8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000083C4;

  return sub_100018198(a1, v5, v4);
}

uint64_t sub_100018E84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001B144();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100018EE8()
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v1 = sub_10001182C() - 1;
  if (v1 >= 3)
  {
    sub_10001C4F4();
    sub_10000EA74(&qword_10002CA20, &type metadata accessor for _PrebuiltAppIntentError);
    swift_allocError();
    sub_10001C834();
    swift_willThrow();
  }

  else
  {
    **(v0 + 16) = v1;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100019010(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000083C4;

  return sub_10001B544(v3);
}

uint64_t sub_1000190A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001CA44() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100019134, 0, 0);
}

uint64_t sub_100019134()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000175C(&qword_10002CCF8, qword_100020310);
  sub_10001CA14();
  sub_100004028(&qword_10002CE30, &qword_10002CE38, &qword_100020C78);
  sub_10001C190();
  *v2 = sub_10001C9E4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100019260(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001BBB0();
  *v5 = v2;
  v5[1] = sub_100002F0C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100019310(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001BBB0();
  *v6 = v2;
  v6[1] = sub_100005720;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000193C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001BBB0();
  *v5 = v2;
  v5[1] = sub_1000056F8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100019474(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001B918();
  *v6 = v2;
  v6[1] = sub_10000320C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100019528@<X0>(uint64_t *a1@<X8>)
{
  sub_10001B8C0();
  result = sub_10001C644();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000195A0(uint64_t a1)
{
  v2 = sub_10001BA20();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000195EC(uint64_t a1)
{
  v2 = sub_10001B8C0();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100019638(uint64_t a1)
{
  v2 = sub_10001BDC0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100019684()
{
  v0 = sub_10000175C(&qword_10002C608, "NH");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10001CA24();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001CA84();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10001CBF4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001CA44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10001C9A4();
  sub_100005690(v15, static AutoJoinHotspotMode.typeDisplayRepresentation);
  sub_100005658(v15, static AutoJoinHotspotMode.typeDisplayRepresentation);
  sub_10001CBA4();
  sub_10001CA74();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10001CA64();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10001C994();
}

uint64_t AutoJoinHotspotMode.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10002C4C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10001C9A4();

  return sub_100005658(v0, static AutoJoinHotspotMode.typeDisplayRepresentation);
}

uint64_t static AutoJoinHotspotMode.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A4();
  v3 = sub_100005658(v2, static AutoJoinHotspotMode.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AutoJoinHotspotMode.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10002C4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C9A4();
  v3 = sub_100005658(v2, static AutoJoinHotspotMode.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AutoJoinHotspotMode.typeDisplayRepresentation.modify())()
{
  if (qword_10002C4C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10001C9A4();
  sub_100005658(v0, static AutoJoinHotspotMode.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100019C0C()
{
  v0 = sub_10000175C(&qword_10002C630, &qword_10001DC30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v48 = &v33 - v2;
  v3 = sub_10000175C(&qword_10002C608, "NH");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = &v33 - v5;
  v41 = sub_10001CA24();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v41);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001CA84();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10001CBF4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v35 = sub_10001CA44();
  v49 = *(v35 - 8);
  v14 = *(v49 + 64);
  __chkstk_darwin(v35);
  sub_10000175C(&qword_10002CE70, &qword_100020D20);
  v15 = sub_10000175C(&qword_10002CE78, &qword_100020D28);
  v38 = v15;
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v36 = 2 * v16;
  v18 = swift_allocObject();
  v37 = v18;
  *(v18 + 16) = xmmword_10001D420;
  v34 = *(v15 + 48);
  *(v18 + v17) = 0;
  v19 = v18 + v17;
  sub_10001CBA4();
  sub_10001CA74();
  v45 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v6 + 104);
  v46 = v6 + 104;
  v33 = v9;
  v20(v9);
  sub_10001CA64();
  v21 = *(v49 + 56);
  v49 += 56;
  v43 = v21;
  v22 = v35;
  v21(v47, 1, 1, v35);
  v40 = sub_10001C874();
  v23 = *(v40 - 8);
  v39 = *(v23 + 56);
  v42 = v23 + 56;
  v39(v48, 1, 1, v40);
  v44 = v19;
  sub_10001C894();
  v24 = v38;
  v34 = *(v38 + 48);
  *(v19 + v16) = 1;
  sub_10001CBA4();
  sub_10001CA74();
  v25 = v33;
  v26 = v20;
  (v20)(v33, v45, v41);
  v27 = v25;
  sub_10001CA64();
  v28 = v47;
  v43(v47, 1, 1, v22);
  v29 = v48;
  v39(v48, 1, 1, v40);
  sub_10001C894();
  v30 = (v44 + v36);
  v36 = *(v24 + 48);
  *v30 = 2;
  sub_10001CBA4();
  sub_10001CA74();
  (v26)(v27, v45, v41);
  sub_10001CA64();
  v43(v28, 1, 1, v22);
  v39(v29, 1, 1, v40);
  sub_10001C894();
  v31 = sub_10001AF5C(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static AutoJoinHotspotMode.caseDisplayRepresentations = v31;
  return result;
}

uint64_t *AutoJoinHotspotMode.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10002C4C8 != -1)
  {
    swift_once();
  }

  return &static AutoJoinHotspotMode.caseDisplayRepresentations;
}

uint64_t static AutoJoinHotspotMode.caseDisplayRepresentations.getter()
{
  if (qword_10002C4C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AutoJoinHotspotMode.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_10002C4C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AutoJoinHotspotMode.caseDisplayRepresentations = a1;
}

uint64_t (*static AutoJoinHotspotMode.caseDisplayRepresentations.modify())()
{
  if (qword_10002C4C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t AutoJoinHotspotMode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x726576656ELL;
  }

  if (a1 == 1)
  {
    return 0x696F6A6F746B7361;
  }

  return 0x6974616D6F747561;
}

uint64_t sub_10001A4B4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000063;
  v3 = *a1;
  v4 = 0x696F6A6F746B7361;
  if (v3 == 1)
  {
    v5 = 0xE90000000000006ELL;
  }

  else
  {
    v4 = 0x6974616D6F747561;
    v5 = 0xE900000000000063;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x726576656ELL;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x696F6A6F746B7361;
  if (*a2 == 1)
  {
    v2 = 0xE90000000000006ELL;
  }

  else
  {
    v8 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726576656ELL;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10001CCF4();
  }

  return v11 & 1;
}

Swift::Int sub_10001A5B0()
{
  v1 = *v0;
  sub_10001CD04();
  sub_10001CC24();

  return sub_10001CD14();
}

uint64_t sub_10001A65C()
{
  *v0;
  *v0;
  sub_10001CC24();
}

Swift::Int sub_10001A6F4()
{
  v1 = *v0;
  sub_10001CD04();
  sub_10001CC24();

  return sub_10001CD14();
}

uint64_t sub_10001A79C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s29WiFiSettingsControlsExtension19AutoJoinHotspotModeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001A7CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE90000000000006ELL;
  v5 = 0x696F6A6F746B7361;
  if (v2 != 1)
  {
    v5 = 0x6974616D6F747561;
    v4 = 0xE900000000000063;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726576656ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10001A834(uint64_t a1)
{
  v2 = sub_10001C190();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001A880(uint64_t a1)
{
  v2 = sub_10001C0C8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001A8DC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10001CD04();
  sub_10001CC24();

  v4 = sub_10001CD14();

  return sub_10001AA60(a1, v4);
}

unint64_t sub_10001A990(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10001CD04();
  sub_10001CC24();

  v4 = sub_10001CD14();

  return sub_10001ABD8(a1, v4);
}

unint64_t sub_10001AA60(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x796669746F6ELL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE300000000000000;
          v8 = 7041889;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE300000000000000;
            if (v8 != 6710895)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE300000000000000;
        v8 = 6710895;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x796669746F6ELL;
      }

      else
      {
        v10 = 7041889;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_10001CCF4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001ABD8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE90000000000006ELL;
          v8 = 0x696F6A6F746B7361;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x6974616D6F747561;
          v7 = 0xE900000000000063;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE500000000000000;
            if (v8 != 0x726576656ELL)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x726576656ELL;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x696F6A6F746B7361;
      }

      else
      {
        v10 = 0x6974616D6F747561;
      }

      if (v9 == 1)
      {
        v11 = 0xE90000000000006ELL;
      }

      else
      {
        v11 = 0xE900000000000063;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_10001CCF4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001AD74(uint64_t a1)
{
  v2 = sub_10000175C(&qword_10002CA50, &qword_10001F518);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000175C(&qword_10002CE88, qword_100020D40);
    v8 = sub_10001CCD4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001C428(v10, v6, &qword_10002CA50, &qword_10001F518);
      v12 = *v6;
      result = sub_10001A8DC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10001C8A4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001AF5C(uint64_t a1)
{
  v2 = sub_10000175C(&qword_10002CE78, &qword_100020D28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000175C(&qword_10002CE80, &unk_100020D30);
    v8 = sub_10001CCD4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001C428(v10, v6, &qword_10002CE78, &qword_100020D28);
      v12 = *v6;
      result = sub_10001A990(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10001C8A4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001B144()
{
  v31 = sub_10001C8E4();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000175C(&qword_10002C600, &unk_10001F450);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_10000175C(&qword_10002C608, "NH");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  v14 = sub_10001CA44();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000175C(&qword_10002CE40, &qword_100020CC8);
  sub_10001CA14();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v33 = 0;
  v18 = sub_10001C614();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10001BA20();
  v26 = sub_10001C694();
  sub_10000175C(&qword_10002CE48, &qword_100020CD0);
  sub_10001CA14();
  v28(v13, 1, 1, v29);
  v32 = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10001C190();
  sub_10001C684();
  return v26;
}

uint64_t sub_10001B564()
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v1 = qword_100032928;
  v2 = *(v0 + 24) + 1;
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v0 + 16) = v1;
  sub_10000EA74(&qword_10002C758, type metadata accessor for WiFiSharedSettingsState);
  sub_10001CA94();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t _s29WiFiSettingsControlsExtension19AutoJoinHotspotModeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000292E8;
  v6._object = a2;
  v4 = sub_10001CCE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001B758()
{
  result = qword_10002CD00;
  if (!qword_10002CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD00);
  }

  return result;
}

unint64_t sub_10001B7B0()
{
  result = qword_10002CD08;
  if (!qword_10002CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD08);
  }

  return result;
}

unint64_t sub_10001B868()
{
  result = qword_10002CD10;
  if (!qword_10002CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD10);
  }

  return result;
}

unint64_t sub_10001B8C0()
{
  result = qword_10002CD18;
  if (!qword_10002CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD18);
  }

  return result;
}

unint64_t sub_10001B918()
{
  result = qword_10002CD20;
  if (!qword_10002CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD20);
  }

  return result;
}

unint64_t sub_10001B970()
{
  result = qword_10002CD28;
  if (!qword_10002CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD28);
  }

  return result;
}

unint64_t sub_10001B9C8()
{
  result = qword_10002CD30;
  if (!qword_10002CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD30);
  }

  return result;
}

unint64_t sub_10001BA20()
{
  result = qword_10002CD38;
  if (!qword_10002CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD38);
  }

  return result;
}

unint64_t sub_10001BA78()
{
  result = qword_10002CD40;
  if (!qword_10002CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD40);
  }

  return result;
}

unint64_t sub_10001BAD0()
{
  result = qword_10002CD48;
  if (!qword_10002CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD48);
  }

  return result;
}

unint64_t sub_10001BB28()
{
  result = qword_10002CD50;
  if (!qword_10002CD50)
  {
    sub_10000189C(&qword_10002CD58, qword_1000205B0);
    sub_10001BAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD50);
  }

  return result;
}

unint64_t sub_10001BBB0()
{
  result = qword_10002CD60;
  if (!qword_10002CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD60);
  }

  return result;
}

unint64_t sub_10001BC08()
{
  result = qword_10002CD68;
  if (!qword_10002CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD68);
  }

  return result;
}

unint64_t sub_10001BC60()
{
  result = qword_10002CD70;
  if (!qword_10002CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD70);
  }

  return result;
}

unint64_t sub_10001BCB8()
{
  result = qword_10002CD78;
  if (!qword_10002CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD78);
  }

  return result;
}

unint64_t sub_10001BD10()
{
  result = qword_10002CD80;
  if (!qword_10002CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD80);
  }

  return result;
}

unint64_t sub_10001BD68()
{
  result = qword_10002CD88;
  if (!qword_10002CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD88);
  }

  return result;
}

unint64_t sub_10001BDC0()
{
  result = qword_10002CD90;
  if (!qword_10002CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD90);
  }

  return result;
}

unint64_t sub_10001BE5C()
{
  result = qword_10002CDA8;
  if (!qword_10002CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDA8);
  }

  return result;
}

unint64_t sub_10001BEB4()
{
  result = qword_10002CDB0;
  if (!qword_10002CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDB0);
  }

  return result;
}

unint64_t sub_10001BF0C()
{
  result = qword_10002CDB8;
  if (!qword_10002CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDB8);
  }

  return result;
}

unint64_t sub_10001BF64()
{
  result = qword_10002CDC0;
  if (!qword_10002CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDC0);
  }

  return result;
}

unint64_t sub_10001BFBC()
{
  result = qword_10002CDC8;
  if (!qword_10002CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDC8);
  }

  return result;
}

unint64_t sub_10001C014()
{
  result = qword_10002CDD0;
  if (!qword_10002CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDD0);
  }

  return result;
}

unint64_t sub_10001C06C()
{
  result = qword_10002CDD8;
  if (!qword_10002CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDD8);
  }

  return result;
}

unint64_t sub_10001C0C8()
{
  result = qword_10002CDE0;
  if (!qword_10002CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDE0);
  }

  return result;
}

unint64_t sub_10001C190()
{
  result = qword_10002CDE8;
  if (!qword_10002CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDE8);
  }

  return result;
}

unint64_t sub_10001C1E8()
{
  result = qword_10002CDF0;
  if (!qword_10002CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDF0);
  }

  return result;
}

unint64_t sub_10001C240()
{
  result = qword_10002CDF8;
  if (!qword_10002CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDF8);
  }

  return result;
}

unint64_t sub_10001C298()
{
  result = qword_10002CE00;
  if (!qword_10002CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE00);
  }

  return result;
}

uint64_t sub_10001C428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000175C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}