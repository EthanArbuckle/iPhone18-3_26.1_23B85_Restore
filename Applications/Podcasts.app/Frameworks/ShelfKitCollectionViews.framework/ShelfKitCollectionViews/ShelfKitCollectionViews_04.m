uint64_t sub_79CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_79D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_79DC0()
{
  result = qword_3FEC80;
  if (!qword_3FEC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FEC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEC80);
  }

  return result;
}

uint64_t sub_79E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_305478();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_79EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_305478();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_79F40()
{
  result = sub_305478();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_7A018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_7A0F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for HeroBorder()
{
  result = qword_3FEDC8;
  if (!qword_3FEDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7A1F0()
{
  sub_45558();
  if (v0 <= 0x3F)
  {
    sub_7A338(319, &qword_3FEDD8, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_7A2DC();
      if (v2 <= 0x3F)
      {
        sub_7A338(319, &unk_3FEDE8, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_7A2DC()
{
  if (!qword_3FEDE0)
  {
    sub_70648();
    v0 = sub_305178();
    if (!v1)
    {
      atomic_store(v0, &qword_3FEDE0);
    }
  }
}

void sub_7A338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGSize(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_7A3B4()
{
  result = sub_3061C8();
  qword_3FED28 = v1;
  return result;
}

uint64_t sub_7A3D4()
{
  sub_306878();
  v0 = sub_306888();

  qword_3FED30 = v0;
  return result;
}

uint64_t sub_7A418()
{
  v0 = sub_306CB8();
  __swift_allocate_value_buffer(v0, qword_3FED38);
  v1 = __swift_project_value_buffer(v0, qword_3FED38);
  v2 = enum case for BlendMode.plusLighter(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_7A4A0()
{
  v0 = sub_3055F8();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_305EF8();
  __swift_allocate_value_buffer(v7, qword_3FED50);
  v8 = __swift_project_value_buffer(v7, qword_3FED50);
  sub_3082A8();
  sub_70840(v6);
  sub_3082A8();
  v9 = *(v1 + 28);
  sub_305D88();
  *v8 = v10;
  *(v8 + 1) = v11;
  *(v8 + 2) = v12;
  *(v8 + 3) = v13;
  v14 = *(v7 + 20);
  v15 = sub_305B68();
  return (*(*(v15 - 8) + 32))(&v8[v14], &v3[v9], v15);
}

uint64_t sub_7A5E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE20);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE28);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = v1[1];
  if (v9 && ((v9 & 0x2000000000000000) != 0 ? (v10 = HIBYTE(v9) & 0xF) : (v10 = *v1 & 0xFFFFFFFFFFFFLL), v10))
  {
    v11 = sub_306C58();
    v13 = v12;
    v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE48) + 36)];
    *v14 = v11;
    v14[1] = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE78);
    sub_7A948(v1, v14 + *(v15 + 44));
    v16 = sub_306C58();
    v18 = v17;
    v19 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE60) + 36));
    *v19 = v16;
    v19[1] = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE30);
    (*(*(v20 - 8) + 16))(v8, a1, v20);
    v21 = sub_306C08();
    v23 = v22;
    v24 = &v8[*(v6 + 36)];
    sub_7B4E8(v24);
    v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE70) + 36));
    *v25 = v21;
    v25[1] = v23;
    sub_EB00(v8, v5, &qword_3FEE28);
    swift_storeEnumTagMultiPayload();
    sub_7BA74();
    sub_EC8C(&qword_3FEE50, &qword_3FEE30);
    sub_305D48();
    return sub_EB68(v8, &qword_3FEE28);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE30);
    (*(*(v27 - 8) + 16))(v5, a1, v27);
    swift_storeEnumTagMultiPayload();
    sub_7BA74();
    sub_EC8C(&qword_3FEE50, &qword_3FEE30);
    return sub_305D48();
  }
}

uint64_t sub_7A948@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE98);
  __chkstk_darwin(v99);
  v102 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = (&v87 - v5);
  v6 = sub_302DE8();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEA0);
  __chkstk_darwin(v91);
  v92 = &v87 - v8;
  *&v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEA8);
  v96 = *(v103 - 8);
  __chkstk_darwin(v103);
  v94 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEB0);
  __chkstk_darwin(v12 - 8);
  v95 = &v87 - v13;
  v14 = sub_305A08();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEB8);
  __chkstk_darwin(v18 - 8);
  v98 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v97 = &v87 - v21;
  v22 = a1[2];
  v23 = a1[3];
  v24 = a1[4];
  *&v123 = v22;
  *(&v123 + 1) = v23;
  *&v124 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE90);
  sub_306A18();
  v25 = v114;
  v26 = v115;
  v27 = a1 + *(type metadata accessor for HeroBorder() + 28);
  v29 = *v27;
  v28 = *(v27 + 1);
  if (v27[16] == 1)
  {
    v30 = *v27;
    v31 = *(v27 + 1);
  }

  else
  {

    sub_30C7A8();
    v32 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_7BD8C(v29, v28, 0);
    (*(v15 + 8))(v17, v14);
    v31 = *(&v123 + 1);
    v30 = *&v123;
  }

  *&v123 = v22;
  *(&v123 + 1) = v23;
  *&v124 = v24;
  sub_306A18();
  v33 = 1;
  v34 = v95;
  if (v31 > 0.0 && v30 > 0.0)
  {
    v35 = v115;
    if (v115 > 10.0)
    {
      v36 = v115 + 10.0;
      if (v115 + 10.0 < v31 && v36 > 0.0)
      {
        sub_124C4(0, &qword_3FEEE0);
        v37 = v92;
        sub_3051E8();
        sub_7BE6C(v120, 0.0, 0.0, v30, v31);
        v38 = sub_3062D8();
        sub_7C1BC(v120);
        v133.size.height = v31 - v36;
        v133.origin.x = 0.0;
        v133.origin.y = v35 + 10.0;
        v133.size.width = v31;
        v39 = CGPathCreateWithRect(v133, 0);
        v40 = v88;
        v41 = v89;
        v42 = v90;
        (*(v89 + 104))(v88, enum case for CGPathFillRule.winding(_:), v90);
        v43 = sub_30D308();

        (*(v41 + 8))(v40, v42);
        v44 = v43;
        sub_3062F8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEC0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_318FC0;
        sub_306878();
        *(v45 + 32) = sub_306BC8();
        *(v45 + 40) = v46;
        sub_306878();
        *(v45 + 48) = sub_306BC8();
        *(v45 + 56) = v47;
        sub_306868();
        *(v45 + 64) = sub_306BC8();
        *(v45 + 72) = v48;
        sub_306BD8();
        sub_3053A8();

        v49 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEE8) + 36);
        v50 = v107;
        *(v49 + 32) = v106;
        *(v49 + 48) = v50;
        *(v49 + 64) = v108;
        v51 = v105;
        *v49 = v104;
        *(v49 + 16) = v51;
        *(v49 + 80) = 256;
        sub_306C58();
        sub_3051F8();
        v52 = (v37 + *(v91 + 36));
        v53 = v121;
        *v52 = *&v120[40];
        v52[1] = v53;
        v52[2] = v122;
        sub_306C08();
        sub_305638();
        v54 = v94;
        sub_34804(v37, v94, &qword_3FEEA0);
        v55 = (v54 + *(v103 + 36));
        v56 = v128;
        v55[4] = v127;
        v55[5] = v56;
        v55[6] = v129;
        v57 = v124;
        *v55 = v123;
        v55[1] = v57;
        v58 = v126;
        v55[2] = v125;
        v55[3] = v58;
        v59 = v54;
        v60 = v93;
        sub_34804(v59, v93, &qword_3FEEA8);
        sub_34804(v60, v34, &qword_3FEEA8);
        v33 = 0;
      }
    }
  }

  (*(v96 + 56))(v34, v33, 1, v103);
  v61 = v34;
  v62 = v97;
  sub_34804(v61, v97, &qword_3FEEB0);
  sub_306878();
  sub_306888();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEC0);
  v63 = swift_allocObject();
  v103 = xmmword_318FC0;
  *(v63 + 16) = xmmword_318FC0;

  *(v63 + 32) = sub_306BC8();
  *(v63 + 40) = v64;

  *(v63 + 48) = sub_306BC8();
  *(v63 + 56) = v65;
  sub_306888();
  *(v63 + 64) = sub_306BC8();
  *(v63 + 72) = v66;
  sub_306BD8();
  sub_3053A8();

  sub_306858();
  sub_306888();

  v67 = swift_allocObject();
  *(v67 + 16) = v103;

  *(v67 + 32) = sub_306BC8();
  *(v67 + 40) = v68;

  *(v67 + 48) = sub_306BC8();
  *(v67 + 56) = v69;
  sub_306888();
  *(v67 + 64) = sub_306BC8();
  *(v67 + 72) = v70;
  sub_306BD8();
  sub_3053A8();

  v71 = v99;
  v72 = v100;
  v73 = v100 + *(v99 + 52);
  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEC8) + 36);
  v75 = enum case for BlendMode.plusDarker(_:);
  v76 = sub_306CB8();
  (*(*(v76 - 8) + 104))(&v73[v74], v75, v76);
  v77 = v131;
  *v73 = v130;
  *(v73 + 1) = v77;
  *(v73 + 4) = v132;
  *v72 = v25;
  v72[1] = v26;
  *(v72 + *(v71 + 56)) = 256;
  v78 = v62;
  v79 = v98;
  sub_EB00(v62, v98, &qword_3FEEB8);
  v80 = v102;
  sub_EB00(v72, v102, &qword_3FEE98);
  v81 = v101;
  sub_EB00(v79, v101, &qword_3FEEB8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEED0);
  v83 = (v81 + *(v82 + 48));
  *&v112[0] = v25;
  *(v112 + 1) = v26;
  *&v113[1] = v111;
  v85 = v109;
  v84 = v110;
  v112[1] = v109;
  v113[0] = v110;
  WORD4(v113[1]) = 256;
  *v83 = v112[0];
  v83[1] = v85;
  v83[2] = v84;
  *(v83 + 42) = *(v113 + 10);
  sub_EB00(v80, v81 + *(v82 + 64), &qword_3FEE98);
  sub_EB00(v112, &v114, &qword_3FEED8);
  sub_EB68(v72, &qword_3FEE98);
  sub_EB68(v78, &qword_3FEEB8);
  sub_EB68(v80, &qword_3FEE98);
  v114 = v25;
  v115 = v26;
  v116 = v109;
  v117 = v110;
  v118 = v111;
  v119 = 256;
  sub_EB68(&v114, &qword_3FEED8);
  return sub_EB68(v79, &qword_3FEEB8);
}

double sub_7B4E8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for HeroBorder();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE80);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  if (v2[1])
  {
    v9 = *v2;
    v10 = v2[1];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v37 = v9;
  v38 = v10;
  sub_E504();

  v11 = sub_3063C8();
  v13 = v12;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
  sub_305168();
  if (qword_3FA9A0 != -1)
  {
    swift_once();
  }

  v16 = sub_306188();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_3061D8();
  sub_EB68(v8, &qword_3FEE80);
  v17 = sub_306388();
  v34 = v18;
  v35 = v17;
  v20 = v19;
  v33 = v21;

  sub_EBC8(v11, v13, v15 & 1);

  v22 = sub_3060C8();
  v23 = v20 & 1;
  LOBYTE(v37) = v23;
  v39 = 0;
  if (qword_3FA9A8 != -1)
  {
    swift_once();
  }

  v24 = qword_3FED30;
  sub_7BC10(v2, &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v26 = swift_allocObject();
  sub_7BD98(&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v27 = qword_3FA9B0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_306CB8();
  v29 = __swift_project_value_buffer(v28, qword_3FED38);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE88);
  (*(*(v28 - 8) + 16))(a1 + *(v30 + 36), v29, v28);
  v31 = v34;
  *a1 = v35;
  *(a1 + 8) = v31;
  *(a1 + 16) = v23;
  *(a1 + 24) = v33;
  *(a1 + 32) = v22;
  *(a1 + 40) = xmmword_31C2E0;
  result = 3.0;
  *(a1 + 56) = xmmword_31C2F0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v24;
  *(a1 + 88) = sub_7B8F4;
  *(a1 + 96) = 0;
  *(a1 + 104) = sub_7BDFC;
  *(a1 + 112) = v26;
  return result;
}

uint64_t sub_7B8F4@<X0>(void *a1@<X8>)
{
  result = sub_305248();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_7B97C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_315430;
  v3 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterAverageColor];
  *(v2 + 56) = sub_124C4(0, &qword_3FC4A0);
  *(v2 + 32) = v3;
  isa = sub_30C358().super.isa;

  [a1 setFilters:isa];
}

unint64_t sub_7BA74()
{
  result = qword_3FEE38;
  if (!qword_3FEE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FEE28);
    sub_7BB2C();
    sub_EC8C(&qword_3FEE68, &qword_3FEE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEE38);
  }

  return result;
}

unint64_t sub_7BB2C()
{
  result = qword_3FEE40;
  if (!qword_3FEE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FEE48);
    sub_EC8C(&qword_3FEE50, &qword_3FEE30);
    sub_EC8C(&qword_3FEE58, &qword_3FEE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEE40);
  }

  return result;
}

uint64_t sub_7BC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroBorder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7BC74()
{
  v1 = (type metadata accessor for HeroBorder() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_7BD8C(*(v0 + v3 + v1[9]), *(v0 + v3 + v1[9] + 8), *(v0 + v3 + v1[9] + 16));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_7BD8C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_7BD98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroBorder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7BDFC()
{
  type metadata accessor for HeroBorder();

  return sub_7B920();
}

double sub_7BE6C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = sub_302DE8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEEF0);
  __chkstk_darwin(v14);
  v16 = &v24[-v15];
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetMaxX(v32);
  if (qword_3FA9B8 != -1)
  {
    swift_once();
  }

  v17 = sub_305EF8();
  __swift_project_value_buffer(v17, qword_3FED50);
  sub_305EE8();
  v18 = sub_3062D8();
  sub_7C1BC(v24);
  sub_3082A8();
  *&v16[*(sub_3055E8() + 20)] = 0x4000000000000000;
  sub_3050F8();
  v19 = &v16[*(v14 + 36)];
  v20 = v26;
  *v19 = v25;
  *(v19 + 1) = v20;
  *(v19 + 4) = v27;
  sub_305308();
  sub_EB68(v16, &qword_3FEEF0);
  v21 = sub_3062D8();
  sub_7C1BC(v28);
  (*(v11 + 104))(v13, enum case for CGPathFillRule.winding(_:), v10);
  sub_30D328();
  (*(v11 + 8))(v13, v10);
  sub_3062F8();

  result = *&v29;
  v23 = v30;
  *a1 = v29;
  *(a1 + 16) = v23;
  *(a1 + 32) = v31;
  return result;
}

double sub_7C174@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_7BE6C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_7C224()
{
  result = qword_3FEEF8;
  if (!qword_3FEEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FEF00);
    sub_7BA74();
    sub_EC8C(&qword_3FEE50, &qword_3FEE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEEF8);
  }

  return result;
}

void (*sub_7C340(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_304F88();
  return sub_2E9BC;
}

uint64_t sub_7C3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7C58C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7C42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7C58C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7C490(uint64_t a1)
{
  v2 = sub_7C58C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_7C4E0()
{
  result = qword_3FEF18;
  if (!qword_3FEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEF18);
  }

  return result;
}

unint64_t sub_7C538()
{
  result = qword_3FEF20;
  if (!qword_3FEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEF20);
  }

  return result;
}

unint64_t sub_7C58C()
{
  result = qword_3FEF28;
  if (!qword_3FEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEF28);
  }

  return result;
}

uint64_t sub_7C600(uint64_t a1, char a2, uint64_t a3, int a4, void (**a5)(char *, double), CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  LODWORD(v145) = a4;
  v143 = a3;
  v152 = *&a1;
  *&v17 = COERCE_DOUBLE(sub_3052B8());
  v137 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v140 = &v128 - v21;
  __chkstk_darwin(v22);
  v151 = &v128 - v23;
  __chkstk_darwin(v24);
  v147 = &v128 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38);
  v148 = *(v26 - 8);
  v149 = v26;
  __chkstk_darwin(v26);
  v142 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = &v128 - v29;
  __chkstk_darwin(v30);
  v150 = &v128 - v31;
  __chkstk_darwin(v32);
  v146 = &v128 - v33;
  __chkstk_darwin(v34);
  v144 = &v128 - v35;
  __chkstk_darwin(v36);
  v38 = &v128 - v37;
  __chkstk_darwin(v39);
  v135 = &v128 - v40;
  v41 = sub_305388();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_7DCDC(&qword_3FD040);
  sub_30C598();
  sub_30C5D8();
  v136 = v45;
  result = sub_30C5C8();
  if (result < 1)
  {
    return result;
  }

  v132 = a8;
  v133 = a9;
  (*(v42 + 16))(v44, a5, v41);
  sub_7DCDC(&qword_3FEF40);
  v155 = sub_30C308();
  sub_7DC34(&v155);
  v47 = v155;
  v48 = 10.0;
  if ((a2 & 1) == 0)
  {
    v48 = v152;
    if (v152 <= 0.0)
    {
    }
  }

  v131 = v41;
  v129 = v19;
  v49 = v155[2];
  v152 = *&v17;
  v138 = v38;
  v134 = a5;
  if (v49)
  {
    v155 = _swiftEmptyArrayStorage;
    sub_175330(0, v49, 0);
    v50 = v155;
    v51 = *(v137 + 16);
    v52 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v130 = v47;
    v53 = v47 + v52;
    v141 = *(v137 + 72);
    v54 = (v137 + 8);
    v55 = v135;
    do
    {
      v56 = v147;
      v51(v147, v53, v17);
      v57 = v17;
      v58 = (v55 + *(v149 + 48));
      v51(v55, v56, v57);
      v154 = 0;
      v153 = v145 & 1;
      sub_305268();
      v60 = v59;
      v62 = v61;
      (*v54)(v56, v57);
      *v58 = v60;
      v58[1] = v62;
      v155 = v50;
      v64 = v50[2];
      v63 = v50[3];
      if (v64 >= v63 >> 1)
      {
        sub_175330(v63 > 1, v64 + 1, 1);
        v50 = v155;
      }

      v50[2] = v64 + 1;
      sub_7DD20(v55, v50 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v64);
      v53 += v141;
      --v49;
      *&v17 = v152;
    }

    while (v49);
    v147 = v50;

    v38 = v138;
    a5 = v134;
  }

  else
  {

    v147 = _swiftEmptyArrayStorage;
  }

  sub_30C598();
  sub_30C5D8();
  v65 = sub_30C5C8();
  if (__OFSUB__(v65, 1))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    v91 = _swiftEmptyArrayStorage;
LABEL_72:

    sub_7D428(v134, v91, a6, a7, v132, v133, a10);
  }

  v66 = (v65 - 1) * a10;
  v67 = *(v147 + 2);
  if (v67)
  {
    v155 = _swiftEmptyArrayStorage;
    v68 = v147;
    sub_1752AC(0, v67, 0);
    v69 = v155;
    v70 = &v68[(*(v148 + 80) + 32) & ~*(v148 + 80)];
    v71 = *(v148 + 72);
    v72 = v137;
    v73 = (v137 + 8);
    do
    {
      v74 = v69;
      sub_7DD90(v70, v38);
      v75 = v144;
      sub_7DD20(v38, v144);
      v76 = *(v75 + *(v149 + 48));
      (*v73)(v75, v17);
      v69 = v74;
      v155 = v74;
      v77 = v74[2];
      v78 = v69[3];
      v79 = v77 + 1;
      if (v77 >= v78 >> 1)
      {
        v141 = v77 + 1;
        sub_1752AC((v78 > 1), v77 + 1, 1);
        v79 = v141;
        v69 = v155;
      }

      v69[2] = v79;
      v69[v77 + 4] = v76;
      v70 += v71;
      --v67;
    }

    while (v67);
  }

  else
  {
    v69 = _swiftEmptyArrayStorage;
    v79 = _swiftEmptyArrayStorage[2];
    v72 = v137;
    if (!v79)
    {
      goto LABEL_42;
    }
  }

  if (v79 <= 3)
  {
    v80 = 0;
    a9 = 0.0;
LABEL_24:
    v83 = v79 - v80;
    v84 = &v69[v80 + 4];
    do
    {
      v85 = *v84++;
      a9 = a9 + v85;
      --v83;
    }

    while (v83);
    goto LABEL_26;
  }

  v80 = v79 & 0xFFFFFFFFFFFFFFFCLL;
  v81 = (v69 + 6);
  a9 = 0.0;
  v82 = v79 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    a9 = a9 + *(v81 - 2) + *(v81 - 1) + *v81 + v81[1];
    v81 += 4;
    v82 -= 4;
  }

  while (v82);
  if (v79 != v80)
  {
    goto LABEL_24;
  }

LABEL_26:

  v86 = v66 + a9;
  if (v48 < v66 + a9)
  {
    do
    {
      v87 = v147;
      v17 = *(v147 + 2);
      if (*&v17 == 0.0)
      {
        goto LABEL_71;
      }

      v88 = v146 + *(v149 + 48);
      v145 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v144 = &v147[v145];
      v89 = (v72 + 32);
      v90 = (v72 + 16);
      a5 = (v72 + 8);
      v91 = _swiftEmptyArrayStorage;
      v66 = 0.0;
      while (v17 <= *(v87 + 2))
      {
        --v17;
        v92 = *(v148 + 72);
        v93 = v146;
        sub_7DD90(&v144[v92 * v17], v146);
        a9 = *v88;
        v94 = *(v88 + 8);
        (*v89)(v151, v93, COERCE_DOUBLE(*&v152));
        v95 = v86 - (v86 - v48);
        v96 = a9 - (v86 - v48);
        if (a9 < v86 - v48)
        {
          v96 = 0.0;
          v95 = v86 - (a9 + a10);
        }

        if (v86 - v48 > 0.0)
        {
          a9 = v96;
          v86 = v95;
        }

        v97 = v150 + *(v149 + 48);
        (*v90)();
        *v97 = a9;
        *(v97 + 8) = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_CAB7C(0, v91[2] + 1, 1, v91);
        }

        v72 = v91[2];
        v98 = v91[3];
        if (v72 >= v98 >> 1)
        {
          v91 = sub_CAB7C(v98 > 1, v72 + 1, 1, v91);
        }

        (*a5)(v151, COERCE_DOUBLE(*&v152));
        v91[2] = v72 + 1;
        sub_7DD20(v150, v91 + v145 + v72 * v92);
        v87 = v147;
        if (*&v17 == 0.0)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_42:

      v86 = v66 + 0.0;
    }

    while (v48 < v66);
  }

  v99 = *(v147 + 2);
  if (v99)
  {
    v151 = (v139 + *(v149 + 48));
    v150 = (*(v148 + 80) + 32) & ~*(v148 + 80);
    v100 = &v147[v150];
    v146 = *(v148 + 72);
    v141 = v72 + 32;
    v101 = _swiftEmptyArrayStorage;
    v102 = v140;
    do
    {
      v103 = v139;
      sub_7DD90(v100, v139);
      a9 = *v151;
      v104 = *(v151 + 1);
      (*v141)(v102, v103, v17);
      v105.n128_f64[0] = v48 - v86;
      if (v48 - v86 > 0.0)
      {
        v106 = v105.n128_f64[0] + a9;
        LOBYTE(v155) = 1;
        v107 = v145 & 1;
        v154 = v145 & 1;
        sub_305268();
        if (v106 < v105.n128_f64[0])
        {
          LOBYTE(v155) = 0;
          v154 = v107;
          sub_305268();
        }

        v104 = v108;
        v86 = v86 + v105.n128_f64[0] - a9;
        a9 = v105.n128_f64[0];
        *&v17 = v152;
      }

      v109 = v142 + *(v149 + 48);
      (*(v72 + 16))(v105);
      *v109 = a9;
      *(v109 + 8) = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_CAB7C(0, *(v101 + 2) + 1, 1, v101);
      }

      v111 = *(v101 + 2);
      v110 = *(v101 + 3);
      if (v111 >= v110 >> 1)
      {
        v101 = sub_CAB7C(v110 > 1, v111 + 1, 1, v101);
      }

      v102 = v140;
      (*(v72 + 8))(v140, v17);
      *(v101 + 2) = v111 + 1;
      v112 = v146;
      sub_7DD20(v142, &v101[v150 + v111 * v146]);
      v100 += v112;
      --v99;
    }

    while (v99);

    a5 = v134;
  }

  else
  {

    v101 = _swiftEmptyArrayStorage;
  }

  v113 = v48 - v86;
  if (v48 - v86 <= 0.0)
  {
    v115 = v133;
    goto LABEL_68;
  }

  v114 = *(v101 + 2);
  v115 = v133;
  if (!v114)
  {
LABEL_68:
    sub_7D428(a5, v101, a6, a7, v132, v115, a10);
  }

  v116 = 0;
  a5 = (v137 + 8);
  while (1)
  {
    if (v116 >= *(v101 + 2))
    {
      __break(1u);
      goto LABEL_70;
    }

    v117 = v17;
    v118 = (*(v148 + 80) + 32) & ~*(v148 + 80);
    v119 = &v101[v118];
    v120 = *(v148 + 72) * v116;
    v121 = v138;
    sub_7DD90(&v101[v118 + v120], v138);
    v122 = v144;
    sub_7DD90(v121, v144);
    sub_7DE00();
    sub_3052C8();
    sub_EB68(v121, &qword_3FEF38);
    v123 = v155;
    (*a5)(v122, v117);
    if (v123)
    {
      break;
    }

    ++v116;
    *&v17 = v152;
    if (v114 == v116)
    {
      a5 = v134;
      goto LABEL_68;
    }
  }

  if (v116 >= *(v101 + 2))
  {
    __break(1u);
    goto LABEL_76;
  }

  v124 = v138;
  sub_7DD90(&v119[v120], v138);
  v125 = (v124 + *(v149 + 48));
  v86 = *v125;
  a9 = v125[1];
  v123 = v137;
  v119 = v129;
  (*(v137 + 32))(v129, v124, COERCE_DOUBLE(*&v152));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a5 = v134;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_76:
    v101 = sub_17EE58(v101);
  }

  if (v116 < *(v101 + 2))
  {
    (*(v123 + 40))(&v101[v118 + v120], v119, COERCE_DOUBLE(*&v152));
    v127 = &v101[v118 + v120 + *(v149 + 48)];
    *v127 = v113 + v86;
    v127[1] = a9;
    goto LABEL_68;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_7D428(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v42 = a7;
  v51 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF50);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_3052B8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v50 = &v41 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF58);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = &v41 - v23;
  v54.origin.x = a3;
  v54.origin.y = a4;
  v54.size.width = a5;
  v54.size.height = a6;
  MinX = CGRectGetMinX(v54);
  v26 = sub_305388();
  (*(*(v26 - 8) + 16))(v24, a1, v26);
  v27 = *(v22 + 44);
  v28 = sub_7DCDC(&qword_3FD040);
  sub_30C598();
  sub_30C5D8();
  if (*&v24[v27] != v53[0])
  {
    v45 = (v16 + 16);
    v44 = (v16 + 32);
    v43 = (v16 + 8);
    v48 = v15;
    v49 = v14;
    v46 = v28;
    v47 = v26;
    v30 = v50;
    do
    {
      v32 = sub_30C5F8();
      (*v45)(v30);
      v32(v53, 0);
      v33 = v27;
      sub_30C5E8();
      v34 = (*v44)(v18, v30, v15);
      v35 = v15;
      __chkstk_darwin(v34);
      *(&v41 - 2) = v18;
      sub_7D934(sub_7DE54, v51, v14);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38);
      v37 = (*(*(v36 - 8) + 48))(v14, 1, v36);
      v38 = v43;
      if (v37 == 1)
      {
        sub_EB68(v14, &qword_3FEF50);
        v31 = *v38;
      }

      else
      {
        v39 = *&v14[*(v36 + 48)];
        v40 = v14;
        v31 = *v43;
        (*v43)(v40, v35);
        v55.origin.x = a3;
        v55.origin.y = a4;
        v55.size.width = a5;
        v55.size.height = a6;
        CGRectGetHeight(v55);
        v56.origin.x = a3;
        v56.origin.y = a4;
        v56.size.width = a5;
        v56.size.height = a6;
        CGRectGetMinY(v56);
        sub_306D28();
        LOBYTE(v53[0]) = 0;
        v52 = 0;
        sub_305288();
        if (v39 > 0.0)
        {
          MinX = MinX + v39 + v42;
        }
      }

      v27 = v33;
      v15 = v48;
      v31(v18, v48);
      sub_30C5D8();
      v14 = v49;
    }

    while (*&v24[v33] != v53[0]);
  }

  return sub_EB68(v24, &qword_3FEF58);
}

uint64_t sub_7D934@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38);
  v10.n128_f64[0] = __chkstk_darwin(v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v9;
    v20 = v8;
    v21 = a3;
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      sub_7DD90(v14, v12);
      v16 = a1(v12);
      if (v3)
      {
        return sub_EB68(v12, &qword_3FEF38);
      }

      if (v16)
      {
        break;
      }

      sub_EB68(v12, &qword_3FEF38);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_7DD20(v12, v21);
    v17 = 0;
LABEL_10:
    v9 = v19;
    v8 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a3, v17, 1, v8, v10);
}

void (*sub_7DB4C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_304F88();
  return sub_2E9BC;
}

unint64_t sub_7DBD8()
{
  result = qword_3FEF30;
  if (!qword_3FEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEF30);
  }

  return result;
}

void sub_7DC34(void **a1)
{
  v2 = *(sub_3052B8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AF85C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_7DE84(v5);
  *a1 = v3;
}

uint64_t sub_7DCDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_305388();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7DD20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7DD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_7DE00()
{
  result = qword_3FEF48;
  if (!qword_3FEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEF48);
  }

  return result;
}

void sub_7DE84(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_30D6C8(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_3052B8();
        v6 = sub_30C3B8();
        v6[2] = v5;
      }

      v7 = *(sub_3052B8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_7E250(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_7DFB0(0, v2, 1, a1);
  }
}

void sub_7DFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_3052B8();
  __chkstk_darwin(v8);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v35 - v11;
  v14.n128_f64[0] = __chkstk_darwin(v12);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v13 + 16);
    v47 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v43 = (v13 + 32);
    v44 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      (v46)(v48, v21, v8, v14);
      v26 = v49;
      v25(v49, v23, v8);
      sub_3052A8();
      v28 = v27;
      sub_3052A8();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      v31(v24, v8);
      if (v30 >= v28)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = &v40[v36];
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v32(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_7E250(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_3052B8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v127 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v138 = &v122 - v13;
  __chkstk_darwin(v14);
  v144 = &v122 - v15;
  v17.n128_f64[0] = __chkstk_darwin(v16);
  v143 = &v122 - v18;
  v135 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v117 = a3;
    }

    else
    {
LABEL_128:
      v117 = sub_1B0B98(a3);
    }

    v145 = v117;
    a3 = *(v117 + 2);
    if (a3 >= 2)
    {
      while (*v135)
      {
        v118 = *&v117[16 * a3];
        v119 = v117;
        v120 = *&v117[16 * a3 + 24];
        sub_7EC60(&(*v135)[v10[9] * v118], &(*v135)[v10[9] * *&v117[16 * a3 + 16]], &(*v135)[v10[9] * v120], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_1B0B98(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        sub_1B0B0C(a3 - 1);
        v117 = v145;
        a3 = *(v145 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v141 = (v10 + 1);
  v142 = v10 + 2;
  v140 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v134 = v10;
  v124 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v136 = v19;
      v129 = v6;
      v24 = v10[9];
      v5 = &(*v135)[v24 * v23];
      v132 = *v135;
      v25 = v132;
      v26 = v10[2];
      v27 = v143;
      v26(v143, &v132[v24 * v23], v9, v17);
      v28 = &v25[v24 * v22];
      v29 = v144;
      v137 = v26;
      (v26)(v144, v28, v9);
      sub_3052A8();
      v31 = v30;
      sub_3052A8();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v141;
      v35(v29, v9);
      v133 = v35;
      v35(v27, v9);
      v123 = v34;
      v36 = v34 + 2;
      v139 = v24;
      v37 = &v132[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        a3 = v143;
        v39 = v137;
        v137(v143, v37, v9);
        v40 = v144;
        v39(v144, v5, v9);
        sub_3052A8();
        v42 = v41;
        sub_3052A8();
        v44 = v43;
        v45 = v133;
        (v133)(v40, v9);
        v45(a3, v9);
        v10 = v134;
        ++v36;
        v37 += v139;
        v5 += v139;
        if (v33 < v31 == v44 >= v42)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v128;
      v6 = v129;
      a4 = v124;
      v22 = v123;
      if (v33 < v31)
      {
        if (v38 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v38)
        {
          v47 = v38;
          a3 = v139 * (v38 - 1);
          v5 = v38 * v139;
          v136 = v38;
          v48 = v123 * v139;
          do
          {
            if (v22 != --v47)
            {
              v129 = v6;
              v49 = *v135;
              if (!*v135)
              {
                goto LABEL_131;
              }

              v50 = *v140;
              (*v140)(v127, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v50(&v49[a3], v127, v9);
              v46 = v128;
              v6 = v129;
            }

            ++v22;
            a3 -= v139;
            v5 -= v139;
            v48 += v139;
          }

          while (v22 < v47);
          v10 = v134;
          a4 = v124;
          v22 = v123;
          v38 = v136;
        }
      }
    }

    v51 = v135[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v135[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v128;
    }

    else
    {
      v21 = sub_CA96C(0, *(v128 + 2) + 1, 1, v128);
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      v21 = sub_CA96C((v52 > 1), a3 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v130 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_127;
        }

        if (!*v135)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_7EC60(&(*v135)[v10[9] * v94], &(*v135)[v10[9] * *&v21[16 * v5 + 32]], &(*v135)[v10[9] * v95], v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1B0B98(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v145 = v93;
        sub_1B0B0C(v5);
        v21 = v145;
        v53 = *(v145 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v135[1];
    v20 = v130;
    a4 = v124;
    if (v130 >= v19)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v97 = *v135;
  v98 = v10[9];
  v139 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = (v100 - v38);
  v137 = v97;
  v126 = v98;
  v103 = &v97[v38 * v98];
  v130 = v5;
LABEL_85:
  v136 = v38;
  v131 = v103;
  v132 = v102;
  v104 = v103;
  v133 = v99;
  while (1)
  {
    v105 = v143;
    v106 = v139;
    (v139)(v143, v104, v9, v17);
    v107 = v144;
    v106(v144, v99, v9);
    sub_3052A8();
    v109 = v108;
    sub_3052A8();
    v111 = v110;
    v112 = *v141;
    (*v141)(v107, v9);
    v113 = v105;
    a3 = v9;
    v112(v113, v9);
    if (v111 >= v109)
    {
LABEL_84:
      v38 = v136 + 1;
      v99 = &v133[v126];
      v102 = v132 - 1;
      v5 = v130;
      v103 = &v131[v126];
      if (v136 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v129;
      v10 = v134;
      v22 = v123;
      if (v130 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v114 = *v140;
    v115 = v138;
    (*v140)(v138, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_7EC60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = sub_3052B8();
  v8 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v52 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v67 = a1;
  v66 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v17;
    if (v17 >= 1)
    {
      v34 = -v13;
      v56 = a4;
      v57 = (v8 + 16);
      v54 = (v8 + 8);
      v55 = a1;
      v35 = v33;
      v58 = -v13;
      do
      {
        v53 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v60 = v36;
        v61 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v67 = v36;
            v65 = v53;
            goto LABEL_58;
          }

          v39 = a3;
          v59 = v33;
          v40 = a3 + v34;
          v41 = v35 + v34;
          v42 = *v57;
          v43 = v62;
          v44 = v64;
          (*v57)(v62, v41, v64);
          v45 = v37;
          v46 = v63;
          (v42)(v63, v45, v44);
          sub_3052A8();
          v48 = v47;
          sub_3052A8();
          v50 = v49;
          v51 = *v54;
          (*v54)(v46, v44);
          v51(v43, v44);
          if (v50 < v48)
          {
            break;
          }

          v33 = v41;
          a3 = v40;
          if (v39 < v35 || v40 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v61;
            a1 = v55;
          }

          else
          {
            v37 = v61;
            a1 = v55;
            if (v39 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v41;
          v38 = v41 > v56;
          v34 = v58;
          v36 = v60;
          if (!v38)
          {
            a2 = v60;
            goto LABEL_57;
          }
        }

        a3 = v40;
        if (v39 < v60 || v40 >= v60)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v55;
          v34 = v58;
          v33 = v59;
        }

        else
        {
          a2 = v61;
          a1 = v55;
          v34 = v58;
          v33 = v59;
          if (v39 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v56);
    }

LABEL_57:
    v67 = a2;
    v65 = v33;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4 + v16;
    v65 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v59 = a3;
      v60 = v8 + 16;
      v57 = (v8 + 8);
      v58 = v19;
      v20 = v63;
      do
      {
        v21 = a1;
        v22 = v62;
        v23 = a2;
        v24 = v64;
        v25 = a2;
        v26 = v58;
        (v58)(v62, v23, v64);
        v26(v20, a4, v24);
        sub_3052A8();
        v28 = v27;
        sub_3052A8();
        v30 = v29;
        v31 = *v57;
        (*v57)(v20, v24);
        v31(v22, v24);
        if (v30 >= v28)
        {
          v32 = v21;
          if (v21 < a4 || v21 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v21 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = a4 + v13;
          a4 += v13;
        }

        else
        {
          a2 = v25 + v13;
          v32 = v21;
          if (v21 < v25 || v21 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v21 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v32 + v13;
        v67 = a1;
      }

      while (a4 < v61 && a2 < v59);
    }
  }

LABEL_58:
  sub_27A6C4(&v67, &v66, &v65);
}

uint64_t sub_7F200(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5)
{
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v25 = sub_3052B8();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_305388();
  sub_7DCDC(&qword_3FD040);
  v10 = sub_30C5B8();
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
LABEL_7:
    sub_8B67C(v11);
  }

  v12 = v10;
  v31 = _swiftEmptyArrayStorage;
  sub_1752AC(0, v10 & ~(v10 >> 63), 0);
  v11 = v31;
  result = sub_30C598();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v24 = (v7 + 16);
    v14 = (v7 + 8);
    v23 = a4 & 1;
    do
    {
      v15 = a5;
      v16 = sub_30C5F8();
      v17 = v25;
      (*v24)(v9);
      v16(v30, 0);
      v30[0] = v28 & 1;
      v29 = v23;
      sub_305268();
      v19 = v18;
      (*v14)(v9, v17);
      v31 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_1752AC((v20 > 1), v21 + 1, 1);
        v11 = v31;
      }

      v11[2] = v21 + 1;
      v11[v21 + 4] = v19;
      sub_30C5E8();
      --v12;
      a5 = v15;
    }

    while (v12);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_7F4C8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v32 = sub_306008();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3055F8();
  __chkstk_darwin(v4 - 8);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF80);
  __chkstk_darwin(v36);
  v7 = (&v31 - v6);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF88);
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v31 - v9;
  v10 = sub_305A08();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(type metadata accessor for ShowHeroCell(0) + 24);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = v15;
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_30C7A8();
  v17 = sub_306088();
  v31 = v8;
  v18 = v1;
  v19 = v17;
  sub_304108();

  v1 = v18;
  v8 = v31;
  sub_3059F8();
  swift_getAtKeyPath();
  sub_703E4(v15, 0);
  (*(v11 + 8))(v13, v10);
  v15 = v39;
  if (v39)
  {
LABEL_5:
    v20 = sub_306CC8();
    v21 = &v15[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace];
    *v21 = v20;
    v21[8] = 0;
  }

LABEL_6:
  *v7 = sub_306C18();
  v7[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF90);
  sub_7F950(v1, v7 + *(v23 + 44));
  v24 = v36;
  sub_309DF8();
  sub_306CC8();
  v25 = v33;
  sub_3082A8();
  v26 = sub_85B2C();
  v27 = v35;
  sub_306428();
  sub_861A8(v25, &type metadata accessor for RoundedRectangle);
  sub_EB68(v7, &qword_3FEF80);
  v28 = v38;
  sub_305FE8();
  v39 = v24;
  v40 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v37;
  sub_306738();
  (*(v2 + 8))(v28, v32);
  return (*(v8 + 8))(v27, v29);
}

uint64_t sub_7F950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for ShowHeroCell(0);
  v61 = *(v3 - 8);
  v60 = *(v61 + 64);
  __chkstk_darwin(v3 - 8);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEFB0);
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v63 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v49 - v8;
  v56 = sub_306008();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_308588();
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE960);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE968);
  __chkstk_darwin(v16 - 8);
  v58 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v67 = &v49 - v19;
  v20 = sub_30B498();
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_309DE8();
  v57 = *(v23 - 8);
  v24 = v57;
  __chkstk_darwin(v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v49 - v28;
  sub_85C14(a1, v22, &type metadata accessor for ShowHero);
  sub_309DC8();
  v49 = *(v24 + 16);
  v50 = v29;
  v51 = v23;
  v49(v26, v29, v23);
  sub_308578();
  sub_305FD8();
  v30 = sub_8054C(&qword_3FE970, &type metadata accessor for HeroBackground);
  sub_306738();
  (*(v54 + 8))(v10, v56);
  (*(v52 + 8))(v13, v11);
  v31 = *(a1 + 32);
  v70 = *(a1 + 24);
  v71 = v31;
  v68 = v11;
  v69 = v30;
  swift_getOpaqueTypeConformance2();
  sub_E504();
  v32 = v67;
  v33 = v53;
  sub_3066C8();
  (*(v55 + 8))(v15, v33);
  v49(v26, v29, v23);
  v34 = a1;
  v35 = v59;
  sub_85C14(v34, v59, type metadata accessor for ShowHeroCell);
  v36 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v37 = swift_allocObject();
  sub_860F4(v35, v37 + v36, type metadata accessor for ShowHeroCell);
  type metadata accessor for ShowHeroChin(0);
  sub_8054C(&qword_3FEFD0, type metadata accessor for ShowHeroChin);
  v38 = v62;
  sub_30B408();
  v39 = v32;
  v40 = v58;
  sub_EB00(v39, v58, &qword_3FE968);
  v41 = v63;
  v42 = v64;
  v43 = *(v64 + 16);
  v44 = v65;
  v43(v63, v38, v65);
  v45 = v66;
  sub_EB00(v40, v66, &qword_3FE968);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEFD8);
  v43((v45 + *(v46 + 48)), v41, v44);
  v47 = *(v42 + 8);
  v47(v38, v44);
  sub_EB68(v67, &qword_3FE968);
  (*(v57 + 8))(v50, v51);
  v47(v41, v44);
  return sub_EB68(v40, &qword_3FE968);
}

uint64_t sub_800FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_30B498();
  __chkstk_darwin(v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_305A08();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(type metadata accessor for ShowHeroCell(0) + 20) + 8);

  if ((v11 & 1) == 0)
  {
    sub_30C7A8();
    v12 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  sub_85C14(a1, v6, &type metadata accessor for ShowHero);
  sub_85C14(v6, a2, &type metadata accessor for ShowHero);
  sub_303B48();
  sub_30B8E8();
  v15[1] = 0;
  v15[2] = 0;
  v15[4] = 0;
  v15[5] = 0;
  v15[3] = 2;
  v13 = sub_303B38();

  sub_861A8(v6, &type metadata accessor for ShowHero);
  result = type metadata accessor for ShowHeroChin(0);
  *(a2 + *(result + 20)) = v13;
  return result;
}

uint64_t sub_80354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_307048();
  (*(*(v8 - 8) + 8))(a1, v8);
  v9 = a4 + a3[5];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a4 + a3[6];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(a4 + a3[7]) = 0;
  return sub_860F4(a2, a4, &type metadata accessor for ShowHero);
}

uint64_t sub_80428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8054C(&qword_3FEFE0, type metadata accessor for ShowHeroCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_8054C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_80648()
{
  v1 = sub_306008();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF120);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_305BE8();
  sub_308278();
  *v7 = v8;
  *(v7 + 1) = v9;
  v7[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF128);
  sub_80858(v0, &v7[*(v10 + 44)]);
  v11 = *(v0 + *(type metadata accessor for ShowHeroChin(0) + 20));
  sub_3039F8();
  sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
  v12 = sub_304D28();
  v13 = &v7[*(v5 + 36)];
  *v13 = v12;
  v13[1] = v11;

  sub_305FE8();
  sub_86770();
  sub_306738();
  (*(v2 + 8))(v4, v1);
  return sub_EB68(v7, &qword_3FF120);
}

uint64_t sub_80858@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v39 = type metadata accessor for ShowHeroButtonGroup(0);
  __chkstk_darwin(v39);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v7 = sub_306008();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_30B498();
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF160);
  v17 = *(v40 - 8);
  __chkstk_darwin(v40);
  v42 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  sub_85C14(a1, v16, &type metadata accessor for ShowHero);
  sub_86998(v16, v45);
  sub_305FE8();
  sub_86B30();
  v41 = v21;
  sub_306738();
  (*(v8 + 8))(v10, v7);
  v47[4] = v45[4];
  v47[5] = v45[5];
  v48 = v46;
  v47[0] = v45[0];
  v47[1] = v45[1];
  v47[2] = v45[2];
  v47[3] = v45[3];
  sub_86B84(v47);
  sub_85C14(a1, v13, &type metadata accessor for ShowHero);
  v22 = v39;
  v23 = &v6[*(v39 + 28)];
  sub_3039F8();
  sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
  *v23 = sub_3056B8();
  v23[1] = v24;
  v25 = &v6[v22[8]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  sub_85C14(v13, v6, &type metadata accessor for ShowHero);
  v26 = sub_30B478();
  if (v26)
  {
    sub_3077E8();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {

      v26 = 0;
    }
  }

  *&v6[v22[5]] = v26;
  v27 = sub_30B488();
  sub_861A8(v13, &type metadata accessor for ShowHero);
  if (!v27)
  {
    goto LABEL_7;
  }

  sub_3077E8();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

LABEL_7:
    v28 = 0;
  }

  *&v6[v22[6]] = v28;
  v29 = *(v17 + 16);
  v30 = v42;
  v31 = v41;
  v32 = v40;
  v29(v42, v41, v40);
  v33 = v44;
  sub_85C14(v6, v44, type metadata accessor for ShowHeroButtonGroup);
  v34 = v43;
  v29(v43, v30, v32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF170);
  sub_85C14(v33, &v34[*(v35 + 48)], type metadata accessor for ShowHeroButtonGroup);
  sub_861A8(v6, type metadata accessor for ShowHeroButtonGroup);
  v36 = *(v17 + 8);
  v36(v31, v32);
  sub_861A8(v33, type metadata accessor for ShowHeroButtonGroup);
  return (v36)(v30, v32);
}

uint64_t sub_80DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF228);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF230);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v19[-v8];
  *v5 = sub_305BD8();
  *(v5 + 1) = 0x4010000000000000;
  v5[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF238);
  sub_8104C(v1, &v5[*(v10 + 44)]);
  sub_306C18();
  sub_305638();
  sub_34804(v5, v9, &qword_3FF228);
  v11 = &v9[*(v7 + 44)];
  v12 = v24;
  v11[4] = v23;
  v11[5] = v12;
  v11[6] = v25;
  v13 = v20;
  *v11 = *&v19[8];
  v11[1] = v13;
  v14 = v22;
  v11[2] = v21;
  v11[3] = v14;
  sub_306C98();
  v15 = sub_306C88();

  if (*(v1 + 48))
  {

    sub_3039E8();

    v16 = sub_303218();
    sub_289D8(v26);
    sub_34804(v9, a1, &qword_3FF230);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF240);
    v18 = a1 + *(result + 36);
    *v18 = v15;
    *(v18 + 8) = v16 & 1;
  }

  else
  {
    sub_3039F8();
    sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
    result = sub_3056A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_8104C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF248);
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v67 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF250);
  __chkstk_darwin(v6 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v64 - v10;
  v12 = sub_305A08();
  v65 = *(v12 - 8);
  v66 = v12;
  __chkstk_darwin(v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3020D8();
  v70 = *(v15 - 8);
  v71 = v15;
  __chkstk_darwin(v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_301A78();
  __chkstk_darwin(v18 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF258);
  v74 = *(v19 - 8);
  v75 = v19;
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF260);
  __chkstk_darwin(v69);
  v73 = &v64 - v22;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF268);
  __chkstk_darwin(v72);
  v77 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  __chkstk_darwin(v27);
  v76 = &v64 - v28;
  v83 = a1;
  if (*(a1 + 48))
  {

    sub_3039E8();

    v29 = sub_303218();
    sub_289D8(v95);
    v81 = v11;
    v82 = a2;
    v78 = v8;
    if (v29)
    {
      v68 = 0;
    }

    else
    {
      v30 = sub_81DC0();
      if (v33)
      {
        sub_4A290(v30, v31, v32, v33);
        v68 = 0;
      }

      else
      {
        v68 = 1;
      }
    }

    v34 = v83;
    v35 = *v83;
    sub_301AA8();
    v36 = sub_3063B8();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_306C18();
    sub_305638();
    v94 = v40 & 1;
    *&v85 = v36;
    *(&v85 + 1) = v38;
    LOBYTE(v86) = v40 & 1;
    *(&v86 + 1) = v42;
    v96 = *(v34 + 4);
    v97 = *(v34 + 80);
    if (v97)
    {
      v43 = *&v96;
    }

    else
    {

      sub_30C7A8();
      v44 = sub_306088();
      sub_304108();

      sub_3059F8();
      swift_getAtKeyPath();
      sub_EB68(&v96, &qword_3FF270);
      (*(v65 + 8))(v14, v66);
      v43 = *v84;
    }

    v45 = v78;
    if (v43 >= 280.0)
    {
      sub_3020A8();
    }

    else
    {
      sub_3020C8();
    }

    v46 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC818);
    sub_351A4();
    sub_3063F8();
    (*(v70 + 8))(v17, v71);
    v84[6] = v91;
    v84[7] = v92;
    v84[8] = v93;
    v84[2] = v87;
    v84[3] = v88;
    v84[4] = v89;
    v84[5] = v90;
    v84[0] = v85;
    v84[1] = v86;
    sub_EB68(v84, &qword_3FC818);
    sub_306878();
    v47 = sub_306888();

    v48 = v73;
    v49 = &v73[*(v69 + 36)];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC700) + 36);
    v51 = enum case for BlendMode.plusLighter(_:);
    v52 = sub_306CB8();
    (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
    *v49 = v47;
    (*(v74 + 32))(v48, v21, v75);
    v53 = v68;
    if (v68)
    {
      v54 = 4;
    }

    else
    {
      v54 = 3;
    }

    KeyPath = swift_getKeyPath();
    sub_34804(v48, v26, &qword_3FF260);
    v56 = &v26[*(v72 + 36)];
    *v56 = KeyPath;
    *(v56 + 1) = v54;
    v56[16] = 0;
    v57 = v76;
    sub_34804(v26, v76, &qword_3FF268);
    if (v53)
    {
      v58 = 1;
    }

    else
    {
      v59 = v67;
      sub_81944(v67);
      sub_34804(v59, v46, &qword_3FF248);
      v58 = 0;
    }

    v60 = v82;
    (*(v79 + 56))(v46, v58, 1, v80);
    v61 = v77;
    sub_EB00(v57, v77, &qword_3FF268);
    sub_EB00(v46, v45, &qword_3FF250);
    sub_EB00(v61, v60, &qword_3FF268);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF278);
    sub_EB00(v45, v60 + *(v62 + 48), &qword_3FF250);
    sub_EB68(v46, &qword_3FF250);
    sub_EB68(v57, &qword_3FF268);
    sub_EB68(v45, &qword_3FF250);
    return sub_EB68(v61, &qword_3FF268);
  }

  else
  {
    sub_3039F8();
    sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
    result = sub_3056A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_81944@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_3020D8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF280);
  __chkstk_darwin(v8 - 8);
  v10 = (&v37 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF288);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF290);
  v38 = *(v14 - 8);
  v39 = v14;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF298);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  *v10 = sub_306C18();
  v10[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2A0);
  sub_82048(v37, v10 + *(v22 + 44));
  sub_306C18();
  sub_305638();
  sub_34804(v10, v13, &qword_3FF280);
  v23 = &v13[*(v11 + 36)];
  v24 = v46;
  *(v23 + 4) = v45;
  *(v23 + 5) = v24;
  *(v23 + 6) = v47;
  v25 = v42;
  *v23 = v41;
  *(v23 + 1) = v25;
  v26 = v44;
  *(v23 + 2) = v43;
  *(v23 + 3) = v26;
  sub_3020B8();
  sub_302058();
  v27 = *(v2 + 8);
  v27(v4, v1);
  sub_8709C();
  sub_3063F8();
  v27(v7, v1);
  sub_EB68(v13, &qword_3FF288);
  sub_306878();
  v28 = sub_306888();

  v29 = &v20[*(v18 + 44)];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC700) + 36);
  v31 = enum case for BlendMode.plusLighter(_:);
  v32 = sub_306CB8();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = v28;
  (*(v38 + 32))(v20, v16, v39);
  KeyPath = swift_getKeyPath();
  v34 = v40;
  sub_34804(v20, v40, &qword_3FF298);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF248);
  v36 = v34 + *(result + 36);
  *v36 = KeyPath;
  *(v36 + 8) = 1;
  *(v36 + 16) = 0;
  return result;
}

uint64_t sub_81DC0()
{
  if (v0[2])
  {
    sub_E504();

    v1 = sub_3063C8();
    v5 = v4 & 1;
  }

  else
  {
    v1 = 0;
    v2 = 0;
    v5 = 0;
    v3 = 0;
  }

  v28 = v1;
  v29 = v2;
  v30 = v5;
  v31 = v3;
  v6 = v0[4];
  if (v6)
  {
    v7 = v0[3];
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v32 = v7;
  v33 = v6;
  v34 = 0;
  v35 = v8;

  result = sub_825EC();
  v10 = 0;
  v36 = result;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v14 = _swiftEmptyArrayStorage;
LABEL_8:
  if (v10 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15 + 1;
  v17 = 32 * v10 + 56;
  while (1)
  {
    if (v10 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB680);
      swift_arrayDestroy();
      sub_30C1A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2D8);
      sub_EC8C(&qword_3FF2E0, &qword_3FF2D8);
      v26 = sub_30C318();

      return v26;
    }

    if (v16 == ++v10)
    {
      break;
    }

    v18 = v17 + 32;
    v19 = *&v27[v17];
    v17 += 32;
    if (v19)
    {
      v20 = *&v27[v18 - 56];
      v21 = *&v27[v18 - 48];
      v22 = *&v27[v18 - 40];
      sub_EBD8(v20, v21, v22 & 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_CAD6C(0, *(v14 + 2) + 1, 1, v14);
        v14 = result;
      }

      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_CAD6C((v23 > 1), v24 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 2) = v24 + 1;
      v25 = &v14[32 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v21;
      v25[48] = v22 & 1;
      *(v25 + 7) = v19;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_82048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2C0);
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2C8);
  __chkstk_darwin(v9);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  __chkstk_darwin(v14);
  v57 = &v52 - v15;
  v16 = [objc_opt_self() mainBundle];
  v51._countAndFlagsBits = 0xE000000000000000;
  v60._object = 0x8000000000337A30;
  v60._countAndFlagsBits = 0xD000000000000013;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v17.super.isa = v16;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v18 = sub_301AB8(v60, v61, v17, v62, v51);
  v20 = v19;

  if (_UISolariumEnabled())
  {
    v21 = sub_306358();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  }

  else
  {
    v22 = enum case for Text.Case.uppercase(_:);
    v23 = sub_306358();
    v54 = v20;
    v24 = v6;
    v25 = v23;
    v26 = v9;
    v27 = a1;
    v28 = *(v23 - 8);
    (*(v28 + 104))(v5, v22, v23);
    v29 = v25;
    v6 = v24;
    v20 = v54;
    (*(v28 + 56))(v5, 0, 1, v29);
    a1 = v27;
    v9 = v26;
  }

  KeyPath = swift_getKeyPath();
  v31 = &v8[*(v6 + 36)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7B8);
  sub_34804(v5, v31 + *(v32 + 28), &qword_3FF2B8);
  *v31 = KeyPath;
  *v8 = v18;
  *(v8 + 1) = v20;
  v8[16] = 0;
  *(v8 + 3) = _swiftEmptyArrayStorage;
  if (*(a1 + 48))
  {

    sub_3039E8();
    v33 = sub_303218();
    sub_289D8(v58);
    if (v33)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 0.0;
    }

    sub_34804(v8, v13, &qword_3FF2C0);
    *&v13[*(v9 + 36)] = v34;
    sub_34804(v13, v57, &qword_3FF2C8);
    v35 = sub_81DC0();
    v39 = v38;
    v53 = v35;
    v54 = v37;
    v52 = v36;
    if (v38)
    {
      v40 = v35;
      v41 = v36;
      v42 = v37;
      sub_3039E8();

      v43 = sub_303218();
      sub_289D8(v59);
      v44 = v42 & 1;
      if (v43)
      {
        v45 = 0;
      }

      else
      {
        v45 = 0x3FF0000000000000;
      }

      sub_EBD8(v40, v41, v42 & 1);
    }

    else
    {

      v40 = 0;
      v41 = 0;
      v44 = 0;
      v45 = 0;
    }

    v46 = v57;
    v47 = v55;
    sub_EB00(v57, v55, &qword_3FF2C8);
    v48 = v56;
    sub_EB00(v47, v56, &qword_3FF2C8);
    v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2D0) + 48));
    sub_4A24C(v40, v41, v44, v39);
    sub_4A290(v53, v52, v54, v39);
    *v49 = v40;
    v49[1] = v41;
    v49[2] = v44;
    v49[3] = v39;
    v49[4] = v45;
    sub_EB68(v46, &qword_3FF2C8);
    sub_4A290(v40, v41, v44, v39);
    return sub_EB68(v47, &qword_3FF2C8);
  }

  else
  {
    sub_3039F8();
    sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
    result = sub_3056A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_825EC()
{
  v1 = sub_305A08();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40) == 2)
  {
    return 0;
  }

  v7 = v3;
  v8 = sub_3032D8();
  v10 = v9;
  if (v8 == sub_3032D8() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_30D728();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = *(v0 + 96);
  v19 = *(v0 + 88);
  v14 = v20;

  if ((v14 & 1) == 0)
  {
    sub_30C7A8();
    v15 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v19, &qword_3FCA88);
    (*(v2 + 8))(v5, v7);
  }

  sub_3026B8();
  sub_30B8E8();

  v18[0] = sub_302698();
  v18[1] = v16;
  sub_E504();
  v17 = sub_3063C8();

  return v17;
}

__n128 sub_8288C@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2E8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (v12 - v5);
  sub_308298();
  *v6 = v7;
  sub_829D4(v1, v6 + *(v4 + 52));
  sub_306C48();
  sub_305638();
  sub_34804(v6, a1, &qword_3FF2E8);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2F0) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_829D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2F8);
  __chkstk_darwin(v81);
  v83 = (&v73 - v3);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF300);
  __chkstk_darwin(v82);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v73 - v7;
  v75 = sub_305A08();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF308);
  __chkstk_darwin(v78);
  v10 = &v73 - v9;
  v76 = sub_307CF8();
  v11 = *(v76 - 8);
  __chkstk_darwin(v76);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_309778();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF310);
  __chkstk_darwin(v77);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF318);
  __chkstk_darwin(v17 - 8);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v79 = &v73 - v21;
  v22 = type metadata accessor for ShowHeroButtonGroup(0);
  if (*(a1 + *(v22 + 28)))
  {
    v23 = v22;
    v24 = a1;
    v80 = v19;

    sub_3039E8();

    v25 = sub_303218();
    sub_289D8(v90);
    v85 = v5;
    if (v25)
    {
      v26 = v24;
      v27 = *(v24 + v23[5]);
      if (v27)
      {
        goto LABEL_8;
      }

      v28 = 6;
    }

    else
    {
      v26 = v24;
      v27 = *(v24 + v23[6]);
      if (v27)
      {
        goto LABEL_8;
      }

      v28 = 5;
    }

    v26 = v24;
    v27 = *(v24 + v23[v28]);
    if (!v27)
    {
      *v16 = 0;
      *(v16 + 4) = 257;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF320);
      sub_8717C();
      sub_872F0();
      v57 = v79;
      sub_305D48();
LABEL_11:
      v58 = sub_306C58();
      v59 = v83;
      *v83 = v58;
      *(v59 + 8) = v60;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF360);
      sub_83430(v26, v59 + *(v61 + 44));
      sub_306C78();
      sub_3051F8();
      v62 = (v59 + *(v81 + 36));
      v63 = v92;
      *v62 = v91;
      v62[1] = v63;
      v62[2] = v93;
      sub_306C98();
      v64 = sub_306C88();

      sub_3039E8();

      v65 = sub_303218();
      sub_289D8(v94);
      v66 = v85;
      sub_34804(v59, v85, &qword_3FF2F8);
      v67 = v66 + *(v82 + 36);
      *v67 = v64;
      *(v67 + 8) = v65 & 1;
      v68 = v84;
      sub_34804(v66, v84, &qword_3FF300);
      v69 = v80;
      sub_EB00(v57, v80, &qword_3FF318);
      sub_EB00(v68, v66, &qword_3FF300);
      v70 = v86;
      sub_EB00(v69, v86, &qword_3FF318);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF368);
      sub_EB00(v66, v70 + *(v71 + 48), &qword_3FF300);
      sub_EB68(v68, &qword_3FF300);
      sub_EB68(v57, &qword_3FF318);
      sub_EB68(v66, &qword_3FF300);
      return sub_EB68(v69, &qword_3FF318);
    }

LABEL_8:

    *(&v92 + 1) = sub_3077E8();
    *&v93 = sub_8054C(&qword_3FBDC8, &type metadata accessor for PlayAction);
    *&v91 = v27;

    sub_3077A8();
    sub_873A8();
    (*(v11 + 8))(v13, v76);
    v29 = v87;
    sub_309748();
    v30 = v88;
    v31 = v89;
    (*(v88 + 16))(v10, v29, v89);
    (*(v30 + 56))(v10, 0, 1, v31);
    v32 = v26 + v23[8];
    v33 = *v32;
    LOBYTE(v31) = *(v32 + 8);

    if ((v31 & 1) == 0)
    {
      sub_30C7A8();
      v34 = sub_306088();
      sub_304108();

      v35 = v73;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v74 + 8))(v35, v75);
      v33 = v91;
    }

    sub_308258();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = type metadata accessor for PlayButtonWrapper();
    v45 = &v10[v44[5]];
    *v45 = 1;
    v45[8] = 1;
    *&v10[v44[6]] = v33;
    v46 = &v10[v44[7]];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    v46[32] = 0;
    sub_308258();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = sub_3060C8();
    v56 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF338) + 36)];
    *v56 = v55;
    *(v56 + 1) = v48;
    *(v56 + 2) = v50;
    *(v56 + 3) = v52;
    *(v56 + 4) = v54;
    v56[40] = 0;
    v10[*(v78 + 36)] = 1;
    sub_EB00(v10, v16, &qword_3FF308);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF320);
    sub_8717C();
    sub_872F0();
    v57 = v79;
    sub_305D48();

    sub_EB68(v10, &qword_3FF308);
    (*(v88 + 8))(v87, v89);
    goto LABEL_11;
  }

  sub_3039F8();
  sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
  result = sub_3056A8();
  __break(1u);
  return result;
}

uint64_t sub_83430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v42 = type metadata accessor for ShowHeroContextMenuButton(0);
  __chkstk_darwin(v42);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF370);
  __chkstk_darwin(v44);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF378);
  __chkstk_darwin(v7 - 8);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v41 - v10;
  v11 = type metadata accessor for ShowHeroFollowButton(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF380);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF388);
  __chkstk_darwin(v18 - 8);
  v43 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v41 = &v41 - v21;
  sub_85C14(a1, v14, &type metadata accessor for ShowHero);
  v22 = &v14[v12[7]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v14[v12[8]];
  sub_3039F8();
  sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
  *v23 = sub_3056B8();
  v23[1] = v24;
  v25 = &v14[v12[9]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = a1;
  v27 = v12[10];
  *&v14[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC898);
  swift_storeEnumTagMultiPayload();
  if (*(a1 + *(type metadata accessor for ShowHeroButtonGroup(0) + 28)))
  {

    sub_3039E8();

    v28 = sub_303218();
    sub_289D8(v48);
    v29 = 1.0;
    if (v28)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }

    sub_860F4(v14, v17, type metadata accessor for ShowHeroFollowButton);
    *&v17[*(v15 + 36)] = v30;

    sub_3039E8();

    sub_303218();
    sub_289D8(v49);
    sub_879E8();
    v31 = v41;
    sub_3066F8();
    sub_EB68(v17, &qword_3FF380);
    v32 = v42;
    sub_85C14(v26, &v4[*(v42 + 20)], &type metadata accessor for ShowHero);
    v50[0] = 0;
    sub_306A08();
    v33 = v52;
    *v4 = v51[0];
    *(v4 + 1) = v33;
    v34 = &v4[*(v32 + 24)];
    *v34 = swift_getKeyPath();
    v34[8] = 0;

    sub_3039E8();

    LOBYTE(v34) = sub_303218();
    sub_289D8(v50);
    if ((v34 & 1) == 0)
    {
      v29 = 0.0;
    }

    sub_860F4(v4, v6, type metadata accessor for ShowHeroContextMenuButton);
    *&v6[*(v44 + 36)] = v29;

    sub_3039E8();

    sub_303218();
    sub_289D8(v51);
    sub_87AA4();
    v35 = v45;
    sub_3066F8();
    sub_EB68(v6, &qword_3FF370);
    v36 = v43;
    sub_EB00(v31, v43, &qword_3FF388);
    v37 = v46;
    sub_EB00(v35, v46, &qword_3FF378);
    v38 = v47;
    sub_EB00(v36, v47, &qword_3FF388);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF3B0);
    sub_EB00(v37, v38 + *(v39 + 48), &qword_3FF378);
    sub_EB68(v35, &qword_3FF378);
    sub_EB68(v31, &qword_3FF388);
    sub_EB68(v37, &qword_3FF378);
    return sub_EB68(v36, &qword_3FF388);
  }

  else
  {
    result = sub_3056A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_83AF4@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v66 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC700);
  __chkstk_darwin(v7);
  v60 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v52 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF670);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF678);
  __chkstk_darwin(v53);
  v69 = &v52 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF680);
  __chkstk_darwin(v54);
  v59 = &v52 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF688);
  __chkstk_darwin(v56);
  v58 = &v52 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF690);
  __chkstk_darwin(v57);
  v64 = &v52 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF698);
  __chkstk_darwin(v61);
  v65 = &v52 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF6A0);
  __chkstk_darwin(v63);
  v62 = &v52 - v21;
  sub_305F78();
  v22 = sub_3060C8();
  v23 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF6A8) + 36)];
  *v23 = v22;
  *(v23 + 8) = xmmword_31C710;
  *(v23 + 24) = xmmword_31C710;
  v23[40] = 0;
  KeyPath = swift_getKeyPath();
  v25 = &v15[*(v13 + 44)];
  *v25 = KeyPath;
  v25[1] = a3;
  v67 = a3;

  sub_306878();
  v26 = sub_305F88();
  v68 = a2;
  v55 = a1;
  if ((v26 & 1) == 0)
  {
    LOBYTE(v70) = a1 & 1;
    v71 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
    sub_306A18();
  }

  v27 = sub_306888();

  v28 = *(v7 + 36);
  v29 = enum case for BlendMode.plusLighter(_:);
  v30 = sub_306CB8();
  v31 = *(*(v30 - 8) + 104);
  v31(v11 + v28, v29, v30);
  *v11 = v27;
  v32 = v69;
  sub_34804(v11, v69 + *(v53 + 36), &qword_3FC700);
  sub_34804(v15, v32, &qword_3FF670);
  sub_306878();
  if (sub_305F88())
  {
    v55 &= 1u;
  }

  else
  {
    v55 &= 1u;
    LOBYTE(v70) = v55;
    v71 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
    sub_306A18();
  }

  v33 = sub_306888();

  v34 = v60;
  v31(v60 + *(v7 + 36), v29, v30);
  *v34 = v33;
  LOBYTE(v33) = sub_3060C8();
  v35 = v59;
  v36 = &v59[*(v54 + 36)];
  sub_34804(v34, v36, &qword_3FC700);
  *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF6B0) + 36)) = v33;
  sub_34804(v69, v35, &qword_3FF678);
  v37 = swift_getKeyPath();
  v38 = v58;
  v39 = &v58[*(v56 + 36)];
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE38) + 28);
  v41 = enum case for ColorScheme.dark(_:);
  v42 = sub_3050A8();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = v37;
  sub_34804(v35, v38, &qword_3FF680);
  v43 = v64;
  sub_34804(v38, v64, &qword_3FF688);
  *(v43 + *(v57 + 36)) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF6B8);
  sub_305678();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_315420;
  sub_305658();
  sub_305648();
  v70 = v44;
  v45 = v65;
  v46 = &v65[*(v61 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF6C0);
  sub_8054C(&qword_3FF6C8, &type metadata accessor for ContentShapeKinds);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF6D0);
  sub_EC8C(&qword_3FF6D8, &qword_3FF6D0);
  sub_30D488();
  *v46 = 0;
  sub_34804(v43, v45, &qword_3FF690);
  v47 = swift_allocObject();
  *(v47 + 16) = v55;
  v48 = v67;
  *(v47 + 24) = v68;
  *(v47 + 32) = v48;
  v49 = v62;
  sub_34804(v45, v62, &qword_3FF698);
  v50 = (v49 + *(v63 + 36));
  *v50 = sub_8971C;
  v50[1] = v47;
  sub_34804(v49, v66, &qword_3FF6A0);
}

uint64_t sub_843D0()
{
  sub_306C98();
  sub_305348();
}

uint64_t sub_84450@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE80);
  __chkstk_darwin(v2 - 8);
  v4 = v73 - v3;
  v91 = sub_309DB8();
  v93 = *(v91 - 8);
  __chkstk_darwin(v91);
  v6 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_309D48();
  __chkstk_darwin(v80);
  v92 = sub_305A08();
  v7 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF558);
  __chkstk_darwin(v81);
  v96 = v73 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF560);
  __chkstk_darwin(v82);
  v86 = v73 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF568);
  __chkstk_darwin(v84);
  v87 = v73 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF570);
  __chkstk_darwin(v83);
  v88 = v73 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF578);
  __chkstk_darwin(v85);
  v89 = v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF580);
  __chkstk_darwin(v14);
  v16 = v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF588);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v95 = v73 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF590);
  v98 = *(v20 - 8);
  __chkstk_darwin(v20);
  v94 = v73 - v21;
  v22 = sub_30B448();
  if (v22)
  {
    v77 = v7;
    v78 = v18;
    v23 = v22;
    sub_309B28();
    if (swift_dynamicCastClass())
    {
      v73[1] = v23;
      v74 = v17;
      v75 = v20;
      v76 = v6;
      v24 = type metadata accessor for ShowHeroFollowButton(0);
      v25 = *(v24 + 20);
      v79 = v1;
      v26 = *(v1 + v25 + 8);

      if ((v26 & 1) == 0)
      {
        sub_30C7A8();
        v27 = sub_306088();
        sub_304108();

        v28 = v90;
        sub_3059F8();
        swift_getAtKeyPath();

        (*(v77 + 8))(v28, v92);
      }

      sub_309B18();
      swift_storeEnumTagMultiPayload();
      sub_308B78();
      v29 = v24;
      v30 = v79;
      v31 = *(v79 + *(v24 + 24));
      if (v31)
      {

        sub_3039E8();

        v32 = sub_303218();
        sub_289D8(v103);
        v33 = v16;
        v34 = v86;
        if (v32)
        {
          v35 = 1;
        }

        else
        {

          sub_3039E8();

          v105 = 0;
          v106 = 0;
          v108 = 0;
          v109 = 0;
          v107 = 1;
          v35 = sub_303228();
          sub_289D8(v104);
        }

        KeyPath = swift_getKeyPath();
        v40 = swift_allocObject();
        *(v40 + 16) = v35 & 1;
        v41 = v96;
        v42 = &v96[*(v81 + 36)];
        *v42 = KeyPath;
        v42[1] = sub_3CEE8;
        v42[2] = v40;
        sub_3039F8();
        sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);

        v43 = sub_304D28();
        sub_34804(v41, v34, &qword_3FF558);
        v44 = (v34 + *(v82 + 36));
        *v44 = v43;
        v44[1] = v31;
        v45 = swift_getKeyPath();
        v46 = v30 + *(v29 + 28);
        v47 = *v46;
        LOBYTE(v43) = *(v46 + 8);

        if ((v43 & 1) == 0)
        {
          sub_30C7A8();
          v48 = sub_306088();
          sub_304108();

          v49 = v90;
          sub_3059F8();
          swift_getAtKeyPath();

          (*(v77 + 8))(v49, v92);
          v47 = v101;
        }

        v50 = v34;
        v51 = v87;
        sub_34804(v50, v87, &qword_3FF560);
        v52 = (v51 + *(v84 + 36));
        *v52 = v45;
        v52[1] = v47;
        v53 = swift_getKeyPath();
        v54 = v88;
        v55 = &v88[*(v83 + 36)];
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406C00);
        sub_30B468();
        *v55 = v53;
        sub_34804(v51, v54, &qword_3FF568);
        v57 = swift_getKeyPath();
        v58 = v89;
        v59 = &v89[*(v85 + 36)];
        sub_33CD0(v59 + *(v56 + 28));
        *v59 = v57;
        sub_34804(v54, v58, &qword_3FF570);
        sub_306878();
        v60 = sub_306888();

        v61 = swift_getKeyPath();
        sub_34804(v58, v33, &qword_3FF578);
        v62 = (v33 + *(v14 + 36));
        *v62 = v61;
        v62[1] = v60;
        v63 = v76;
        sub_309DA8();
        v64 = sub_88630();
        v65 = v14;
        v66 = v95;
        sub_306488();
        (*(v93 + 8))(v63, v91);
        sub_EB68(v33, &qword_3FF580);
        v67 = sub_306188();
        (*(*(v67 - 8) + 56))(v4, 1, 1, v67);
        sub_3061D8();
        sub_EB68(v4, &qword_3FEE80);
        v68 = sub_306178();

        LOBYTE(v99) = 0;
        sub_306A08();
        v102 = v68;
        v99 = v65;
        v100 = v64;
        swift_getOpaqueTypeConformance2();
        sub_88AB0();
        v69 = v94;
        v70 = v74;
        sub_3064F8();

        (*(v78 + 8))(v66, v70);
        v71 = v97;
        v72 = v75;
        (*(v98 + 32))(v97, v69, v75);
        return (*(v98 + 56))(v71, 0, 1, v72);
      }

      else
      {
        sub_3039F8();
        sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
        result = sub_3056A8();
        __break(1u);
      }

      return result;
    }
  }

  v36 = *(v98 + 56);
  v37 = v97;

  return v36(v37, 1, 1, v20);
}

uint64_t sub_85154@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShowHeroContextMenuButton(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_305A08();
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + *(v3 + 24) + 8);

  if ((v10 & 1) == 0)
  {
    sub_30C7A8();
    v19 = v7;
    v11 = sub_306088();
    v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v20 + 8))(v9, v19);
  }

  v12 = *(v3 + 20);
  v21[3] = sub_30B498();
  v21[4] = sub_8054C(&qword_3FF5E8, &type metadata accessor for ShowHero);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v21);
  sub_85C14(v1 + v12, boxed_opaque_existential_0Tm, &type metadata accessor for ShowHero);
  v22[3] = sub_30ACB8();
  v22[4] = sub_8054C(&qword_3FF5F0, &type metadata accessor for PodcastsContextMenuProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(v22);
  sub_30ACA8();
  sub_85C14(v1, v6, type metadata accessor for ShowHeroContextMenuButton);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_860F4(v6, v15 + v14, type metadata accessor for ShowHeroContextMenuButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF5F8);
  sub_88BC0();
  sub_309178();
  sub_85C14(v1, v6, type metadata accessor for ShowHeroContextMenuButton);
  v16 = swift_allocObject();
  sub_860F4(v6, v16 + v14, type metadata accessor for ShowHeroContextMenuButton);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF638);
  v18 = (a1 + *(result + 36));
  *v18 = sub_892F4;
  v18[1] = v16;
  return result;
}

uint64_t sub_8554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = sub_305BA8();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC700);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v41 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF630);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (&v41 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF620);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF610);
  __chkstk_darwin(v41);
  v17 = &v41 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF5F8);
  __chkstk_darwin(v43);
  v42 = &v41 - v18;
  v19 = sub_306928();
  sub_306878();
  v20 = *(a1 + 8);
  LOBYTE(v48) = *a1;
  v49 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  sub_306A18();
  v21 = sub_306888();

  v22 = *(v5 + 44);
  v23 = enum case for BlendMode.plusLighter(_:);
  v24 = sub_306CB8();
  (*(*(v24 - 8) + 104))(v7 + v22, v23, v24);
  *v7 = v21;
  sub_34804(v7, v11 + *(v9 + 44), &qword_3FC700);
  *v11 = v19;
  sub_306208();
  v25 = sub_306178();

  KeyPath = swift_getKeyPath();
  sub_34804(v11, v15, &qword_3FF630);
  v27 = &v15[*(v13 + 44)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = &v17[*(v41 + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v30 = enum case for Image.Scale.medium(_:);
  v31 = sub_306958();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  sub_34804(v15, v17, &qword_3FF620);
  v32 = [objc_opt_self() mainBundle];
  v40._countAndFlagsBits = 0xE000000000000000;
  v50._object = 0x80000000003376B0;
  v50._countAndFlagsBits = 0xD00000000000001CLL;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v33.super.isa = v32;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v34 = sub_301AB8(v50, v51, v33, v52, v40);
  v36 = v35;

  v48 = v34;
  v49 = v36;
  sub_88C7C();
  sub_E504();
  v37 = v42;
  sub_3066C8();

  sub_EB68(v17, &qword_3FF610);
  v38 = v44;
  sub_305B88();
  sub_305508();
  (*(v45 + 8))(v38, v47);
  return sub_EB68(v37, &qword_3FF5F8);
}

uint64_t sub_85AB0()
{
  sub_306C98();
  sub_305348();
}

unint64_t sub_85B2C()
{
  result = qword_3FEF98;
  if (!qword_3FEF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FEF80);
    sub_EC8C(&qword_3FEFA0, &qword_3FEFA8);
    sub_8054C(&qword_3FE948, &type metadata accessor for HeroContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FEF98);
  }

  return result;
}

uint64_t sub_85C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_85C7C()
{
  v1 = type metadata accessor for ShowHeroCell(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v34 = *(*(v1 - 8) + 64);
  v35 = v0;
  v4 = v0 + v3;

  v5 = sub_30B498();
  v6 = v0 + v3 + v5[8];
  v7 = sub_3031C8();
  v8 = *(*(v7 - 8) + 48);
  if (!v8(v6, 1, v7))
  {

    v9 = *(v6 + 32);
    if (v9 != 255)
    {
      sub_860C8(*(v6 + 16), *(v6 + 24), v9);
    }

    v10 = *(v6 + 64);
    if (v10 != 255)
    {
      sub_860E0(*(v6 + 56), v10);
    }

    v11 = *(v6 + 80);
    if (v11 != 255)
    {
      sub_860E0(*(v6 + 72), v11);
    }

    v12 = *(v6 + 96);
    if (v12 != 255)
    {
      sub_860E0(*(v6 + 88), v12);
    }

    v13 = *(v6 + 112);
    if (v13 != 255)
    {
      sub_860E0(*(v6 + 104), v13);
    }

    v14 = *(v6 + 128);
    if (v14 != 255)
    {
      sub_860E0(*(v6 + 120), v14);
    }

    v15 = *(v7 + 44);
    v16 = sub_3030F8();
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
  }

  v17 = v4 + v5[9];
  if (!v8(v17, 1, v7))
  {

    v18 = *(v17 + 32);
    if (v18 != 255)
    {
      sub_860C8(*(v17 + 16), *(v17 + 24), v18);
    }

    v19 = *(v17 + 64);
    if (v19 != 255)
    {
      sub_860E0(*(v17 + 56), v19);
    }

    v20 = *(v17 + 80);
    if (v20 != 255)
    {
      sub_860E0(*(v17 + 72), v20);
    }

    v21 = *(v17 + 96);
    if (v21 != 255)
    {
      sub_860E0(*(v17 + 88), v21);
    }

    v22 = *(v17 + 112);
    if (v22 != 255)
    {
      sub_860E0(*(v17 + 104), v22);
    }

    v23 = *(v17 + 128);
    if (v23 != 255)
    {
      sub_860E0(*(v17 + 120), v23);
    }

    v24 = *(v7 + 44);
    v25 = sub_3030F8();
    (*(*(v25 - 8) + 8))(v17 + v24, v25);
  }

  v26 = v5[14];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEFB8);
  (*(*(v27 - 8) + 8))(v4 + v26, v27);
  v28 = v5[15];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEFC0);
  v30 = *(*(v29 - 8) + 8);
  v30(v4 + v28, v29);
  v30(v4 + v5[16], v29);
  v30(v4 + v5[17], v29);
  v31 = v5[18];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEFC8);
  (*(*(v32 - 8) + 8))(v4 + v31, v32);

  sub_703E4(*(v4 + *(v1 + 24)), *(v4 + *(v1 + 24) + 8));

  return _swift_deallocObject(v35, v3 + v34, v2 | 7);
}

uint64_t sub_860C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_860E0(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_860F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_861A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_30B498();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_862EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_30B498();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_863A4()
{
  result = sub_30B498();
  if (v1 <= 0x3F)
  {
    result = sub_3039F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_8643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_30B498();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_8650C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_30B498();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_865C8()
{
  sub_30B498();
  if (v0 <= 0x3F)
  {
    sub_881D8(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_8823C(319, &qword_3FF0E0, &unk_3FF0E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_866B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FEF88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FEF80);
  sub_85B2C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_86770()
{
  result = qword_3FF138;
  if (!qword_3FF138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF120);
    sub_EC8C(&qword_3FF140, &qword_3FF148);
    sub_EC8C(&qword_3FF150, &qword_3FF158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF138);
  }

  return result;
}

uint64_t sub_86898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2B8);
  __chkstk_darwin(v2 - 8);
  sub_EB00(a1, &v5 - v3, &qword_3FF2B8);
  return sub_305988();
}

uint64_t sub_86940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3059D8();
  *a1 = result;
  return result;
}

uint64_t sub_86998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3039F8();
  sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
  v4 = sub_3056B8();
  v20 = v5;
  v21 = v4;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = sub_304238();
  v8 = sub_30B458();
  v10 = v9;
  v11 = _UISolariumEnabled();
  v12 = sub_30B498();
  v13 = (a1 + *(v12 + 48));
  v14 = *v13;
  v15 = v13[1];
  if (v11)
  {
  }

  else if (v15)
  {
    sub_E504();
    v14 = sub_30D3D8();
    v15 = v16;
  }

  sub_30B498();
  v17 = *(a1 + *(v12 + 52));
  result = sub_861A8(a1, &type metadata accessor for ShowHero);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v21;
  *(a2 + 56) = v20;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = v6;
  *(a2 + 96) = 0;
  return result;
}

unint64_t sub_86B30()
{
  result = qword_3FF168;
  if (!qword_3FF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF168);
  }

  return result;
}

uint64_t sub_86BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_30B498();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_86CAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_30B498();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_86D64()
{
  sub_30B498();
  if (v0 <= 0x3F)
  {
    sub_881D8(319, &qword_3FF1E0, &type metadata accessor for PlayAction, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_86E78();
      if (v2 <= 0x3F)
      {
        sub_881D8(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_86E78()
{
  if (!qword_3FF1E8)
  {
    sub_3039F8();
    sub_8054C(&qword_3FF130, &type metadata accessor for PodcastStateMachine);
    v0 = sub_3056C8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FF1E8);
    }
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_86F44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_86F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_86FF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF120);
  sub_86770();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_8709C()
{
  result = qword_3FF2A8;
  if (!qword_3FF2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF288);
    sub_EC8C(&qword_3FF2B0, &qword_3FF280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF2A8);
  }

  return result;
}

unint64_t sub_8717C()
{
  result = qword_3FF328;
  if (!qword_3FF328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF308);
    sub_87234();
    sub_EC8C(&qword_3FF348, &qword_3FF350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF328);
  }

  return result;
}

unint64_t sub_87234()
{
  result = qword_3FF330;
  if (!qword_3FF330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF338);
    sub_8054C(&qword_3FF340, type metadata accessor for PlayButtonWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF330);
  }

  return result;
}

unint64_t sub_872F0()
{
  result = qword_3FF358;
  if (!qword_3FF358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF320);
    sub_EC8C(&qword_3FF348, &qword_3FF350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF358);
  }

  return result;
}

uint64_t sub_873A8()
{
  v0 = sub_30B628();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_307C68();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = [objc_opt_self() mainBundle];
      v34._countAndFlagsBits = 0xE000000000000000;
      v6._countAndFlagsBits = 0x5F52454C49415254;
      v6._object = 0xEF45444F53495045;
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    v5 = [objc_opt_self() mainBundle];
    v34._countAndFlagsBits = 0xE000000000000000;
    v6._object = 0x8000000000337A50;
    v6._countAndFlagsBits = 0xD000000000000010;
LABEL_6:
    v39.value._countAndFlagsBits = 0;
    v39.value._object = 0;
    v7.super.isa = v5;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v8 = sub_301AB8(v6, v39, v7, v44, v34);

    return v8;
  }

  sub_307C58();
  sub_30B618();
  (*(v1 + 8))(v3, v0);
  v10 = sub_303E48();
  v12 = v11;
  if (v10 == sub_303E48() && v12 == v13)
  {

    goto LABEL_20;
  }

  v15 = sub_30D728();

  if (v15)
  {
LABEL_20:
    v22 = [objc_opt_self() mainBundle];
    v34._countAndFlagsBits = 0xE000000000000000;
    v23._countAndFlagsBits = 0xD000000000000022;
    v23._object = 0x8000000000337AF0;
    goto LABEL_21;
  }

  v16 = sub_307C88();
  if ((v17 & 1) != 0 || (v18 = v16, v16 < 1))
  {
    v22 = [objc_opt_self() mainBundle];
    v34._countAndFlagsBits = 0xE000000000000000;
    v23._object = 0x8000000000337A50;
    v23._countAndFlagsBits = 0xD000000000000010;
    goto LABEL_21;
  }

  v19 = sub_307C98();
  if ((v20 & 1) != 0 || (v21 = v19, v19 < 1))
  {
    v26 = [objc_opt_self() mainBundle];
    v34._countAndFlagsBits = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000014;
    v36._object = 0x8000000000337A70;
    v41.value._countAndFlagsBits = 0;
    v41.value._object = 0;
    v27.super.isa = v26;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    sub_301AB8(v36, v41, v27, v46, v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_315430;
    *(v28 + 56) = &type metadata for Int64;
    *(v28 + 64) = &protocol witness table for Int64;
    *(v28 + 32) = v18;
    v25 = sub_30C0A8();

    return v25;
  }

  if (v18 != 1)
  {
    v29 = [objc_opt_self() mainBundle];
    v34._countAndFlagsBits = 0xE000000000000000;
    v37._countAndFlagsBits = 0xD000000000000017;
    v37._object = 0x8000000000337A90;
    v42.value._countAndFlagsBits = 0;
    v42.value._object = 0;
    v30.super.isa = v29;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    sub_301AB8(v37, v42, v30, v47, v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_315420;
    *(v31 + 56) = &type metadata for Int64;
    *(v31 + 64) = &protocol witness table for Int64;
    *(v31 + 32) = v18;
    *(v31 + 96) = &type metadata for Int64;
    *(v31 + 104) = &protocol witness table for Int64;
    *(v31 + 72) = v21;
    v25 = sub_30C0A8();
LABEL_28:

    return v25;
  }

  v22 = [objc_opt_self() mainBundle];
  if (v21 != 1)
  {
    v34._countAndFlagsBits = 0xE000000000000000;
    v38._countAndFlagsBits = 0xD000000000000015;
    v38._object = 0x8000000000337AB0;
    v43.value._countAndFlagsBits = 0;
    v43.value._object = 0;
    v32.super.isa = v22;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    sub_301AB8(v38, v43, v32, v48, v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_315430;
    *(v33 + 56) = &type metadata for Int64;
    *(v33 + 64) = &protocol witness table for Int64;
    *(v33 + 32) = v21;
    v25 = sub_30C0A8();
    goto LABEL_28;
  }

  v34._countAndFlagsBits = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000019;
  v23._object = 0x8000000000337AD0;
LABEL_21:
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v24.super.isa = v22;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v25 = sub_301AB8(v23, v40, v24, v45, v34);

  return v25;
}

unint64_t sub_879E8()
{
  result = qword_3FF390;
  if (!qword_3FF390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF380);
    sub_8054C(&qword_3FF398, type metadata accessor for ShowHeroFollowButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF390);
  }

  return result;
}

unint64_t sub_87AA4()
{
  result = qword_3FF3A0;
  if (!qword_3FF3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF370);
    sub_8054C(&qword_3FF3A8, type metadata accessor for ShowHeroContextMenuButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF3A0);
  }

  return result;
}

uint64_t sub_87B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_30B498();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_87C40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_30B498();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_87CE4()
{
  sub_87DB0();
  if (v0 <= 0x3F)
  {
    sub_30B498();
    if (v1 <= 0x3F)
    {
      sub_881D8(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_87DB0()
{
  if (!qword_3FF420)
  {
    v0 = sub_306A48();
    if (!v1)
    {
      atomic_store(v0, &qword_3FF420);
    }
  }
}

uint64_t sub_87E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_30B498();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF458);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_87F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_30B498();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF458);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_88094()
{
  sub_30B498();
  if (v0 <= 0x3F)
  {
    sub_881D8(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_86E78();
      if (v2 <= 0x3F)
      {
        sub_881D8(319, &qword_3FF4C8, &type metadata accessor for InteractionContextAction, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_8823C(319, &qword_3FF4D0, &unk_400440);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_881D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_8823C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_3050B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_88294()
{
  result = qword_3FF510;
  if (!qword_3FF510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF240);
    sub_8834C();
    sub_EC8C(&qword_3FE418, &qword_3FE420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF510);
  }

  return result;
}

unint64_t sub_8834C()
{
  result = qword_3FF518;
  if (!qword_3FF518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF230);
    sub_EC8C(&qword_3FF520, &qword_3FF228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF518);
  }

  return result;
}

unint64_t sub_88408()
{
  result = qword_3FF528;
  if (!qword_3FF528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF2F0);
    sub_88494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF528);
  }

  return result;
}

unint64_t sub_88494()
{
  result = qword_3FF530;
  if (!qword_3FF530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF2E8);
    sub_EC8C(&qword_3FF538, &qword_3FF540);
    sub_EC8C(&qword_3FF548, &qword_3FF550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF530);
  }

  return result;
}

uint64_t sub_885D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3059D8();
  *a1 = result;
  return result;
}

unint64_t sub_88630()
{
  result = qword_3FF598;
  if (!qword_3FF598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF580);
    sub_886E8();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF598);
  }

  return result;
}

unint64_t sub_886E8()
{
  result = qword_3FF5A0;
  if (!qword_3FF5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF578);
    sub_887A0();
    sub_EC8C(&unk_406C50, &unk_406C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF5A0);
  }

  return result;
}

unint64_t sub_887A0()
{
  result = qword_3FF5A8;
  if (!qword_3FF5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF570);
    sub_88858();
    sub_EC8C(&unk_406C50, &unk_406C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF5A8);
  }

  return result;
}

unint64_t sub_88858()
{
  result = qword_3FF5B0;
  if (!qword_3FF5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF568);
    sub_88910();
    sub_EC8C(&qword_406C70, &qword_406C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF5B0);
  }

  return result;
}

unint64_t sub_88910()
{
  result = qword_3FF5B8;
  if (!qword_3FF5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF560);
    sub_889C8();
    sub_EC8C(&qword_3FF150, &qword_3FF158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF5B8);
  }

  return result;
}

unint64_t sub_889C8()
{
  result = qword_3FF5C0;
  if (!qword_3FF5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF558);
    sub_8054C(&qword_3FF5C8, &type metadata accessor for FollowShowButton);
    sub_EC8C(&qword_3FF5D0, &qword_3FF5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF5C0);
  }

  return result;
}

unint64_t sub_88AB0()
{
  result = qword_3FF5E0;
  if (!qword_3FF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF5E0);
  }

  return result;
}

uint64_t sub_88B34(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_88BC0()
{
  result = qword_3FF600;
  if (!qword_3FF600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF5F8);
    sub_88C7C();
    sub_8054C(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF600);
  }

  return result;
}

unint64_t sub_88C7C()
{
  result = qword_3FF608;
  if (!qword_3FF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF610);
    sub_88D34();
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF608);
  }

  return result;
}

unint64_t sub_88D34()
{
  result = qword_3FF618;
  if (!qword_3FF618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF620);
    sub_88DEC();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF618);
  }

  return result;
}

unint64_t sub_88DEC()
{
  result = qword_3FF628;
  if (!qword_3FF628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF630);
    sub_EC8C(&qword_3FCD00, &qword_3FCD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF628);
  }

  return result;
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for ShowHeroContextMenuButton(0);
  v2 = *(*(v1 - 8) + 80);
  v33 = *(*(v1 - 8) + 64);
  v34 = (v2 + 16) & ~v2;
  v35 = v0;

  v3 = v0 + v34 + *(v1 + 20);

  v4 = sub_30B498();
  v5 = v3 + v4[8];
  v6 = sub_3031C8();
  v7 = *(*(v6 - 8) + 48);
  if (!v7(v5, 1, v6))
  {

    v8 = *(v5 + 32);
    if (v8 != 255)
    {
      sub_860C8(*(v5 + 16), *(v5 + 24), v8);
    }

    v9 = *(v5 + 64);
    if (v9 != 255)
    {
      sub_860E0(*(v5 + 56), v9);
    }

    v10 = *(v5 + 80);
    if (v10 != 255)
    {
      sub_860E0(*(v5 + 72), v10);
    }

    v11 = *(v5 + 96);
    if (v11 != 255)
    {
      sub_860E0(*(v5 + 88), v11);
    }

    v12 = *(v5 + 112);
    if (v12 != 255)
    {
      sub_860E0(*(v5 + 104), v12);
    }

    v13 = *(v5 + 128);
    if (v13 != 255)
    {
      sub_860E0(*(v5 + 120), v13);
    }

    v14 = *(v6 + 44);
    v15 = sub_3030F8();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  v16 = v3 + v4[9];
  if (!v7(v16, 1, v6))
  {

    v17 = *(v16 + 32);
    if (v17 != 255)
    {
      sub_860C8(*(v16 + 16), *(v16 + 24), v17);
    }

    v18 = *(v16 + 64);
    if (v18 != 255)
    {
      sub_860E0(*(v16 + 56), v18);
    }

    v19 = *(v16 + 80);
    if (v19 != 255)
    {
      sub_860E0(*(v16 + 72), v19);
    }

    v20 = *(v16 + 96);
    if (v20 != 255)
    {
      sub_860E0(*(v16 + 88), v20);
    }

    v21 = *(v16 + 112);
    if (v21 != 255)
    {
      sub_860E0(*(v16 + 104), v21);
    }

    v22 = *(v16 + 128);
    if (v22 != 255)
    {
      sub_860E0(*(v16 + 120), v22);
    }

    v23 = *(v6 + 44);
    v24 = sub_3030F8();
    (*(*(v24 - 8) + 8))(v16 + v23, v24);
  }

  v25 = v4[14];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEFB8);
  (*(*(v26 - 8) + 8))(v3 + v25, v26);
  v27 = v4[15];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEFC0);
  v29 = *(*(v28 - 8) + 8);
  v29(v3 + v27, v28);
  v29(v3 + v4[16], v28);
  v29(v3 + v4[17], v28);
  v30 = v4[18];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEFC8);
  (*(*(v31 - 8) + 8))(v3 + v30, v31);

  return _swift_deallocObject(v35, v34 + v33, v2 | 7);
}

uint64_t sub_892F4()
{
  type metadata accessor for ShowHeroContextMenuButton(0);

  return sub_85AB0();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_893F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_8943C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_89490()
{
  result = qword_3FF640;
  if (!qword_3FF640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF580);
    sub_88630();
    swift_getOpaqueTypeConformance2();
    sub_88AB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF640);
  }

  return result;
}

unint64_t sub_895AC()
{
  result = qword_3FF650;
  if (!qword_3FF650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF638);
    sub_EC8C(&qword_3FF658, &qword_3FF660);
    sub_89664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF650);
  }

  return result;
}

unint64_t sub_89664()
{
  result = qword_3FF668;
  if (!qword_3FF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF668);
  }

  return result;
}

uint64_t sub_896DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_89794()
{
  result = qword_3FF6E0;
  if (!qword_3FF6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF6A0);
    sub_89820();
    sub_89664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF6E0);
  }

  return result;
}

unint64_t sub_89820()
{
  result = qword_3FF6E8;
  if (!qword_3FF6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF698);
    sub_898D8();
    sub_EC8C(&qword_3FF740, &qword_3FF6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF6E8);
  }

  return result;
}

unint64_t sub_898D8()
{
  result = qword_3FF6F0;
  if (!qword_3FF6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF690);
    sub_89990();
    sub_EC8C(&qword_3FF730, &qword_3FF738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF6F0);
  }

  return result;
}

unint64_t sub_89990()
{
  result = qword_3FF6F8;
  if (!qword_3FF6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF688);
    sub_89A48();
    sub_EC8C(&qword_3FCE70, &qword_3FCE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF6F8);
  }

  return result;
}

unint64_t sub_89A48()
{
  result = qword_3FF700;
  if (!qword_3FF700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF680);
    sub_89B00();
    sub_EC8C(&qword_3FF728, &qword_3FF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF700);
  }

  return result;
}

unint64_t sub_89B00()
{
  result = qword_3FF708;
  if (!qword_3FF708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF678);
    sub_89BB8();
    sub_EC8C(&qword_3FCD00, &qword_3FCD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF708);
  }

  return result;
}

unint64_t sub_89BB8()
{
  result = qword_3FF710;
  if (!qword_3FF710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF670);
    sub_89C70();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF710);
  }

  return result;
}

unint64_t sub_89C70()
{
  result = qword_3FF718;
  if (!qword_3FF718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF6A8);
    sub_8054C(&qword_3FF720, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF718);
  }

  return result;
}

uint64_t type metadata accessor for UpNextAffinityEpisodeHero()
{
  result = qword_3FF840;
  if (!qword_3FF840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_89DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF760);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  v16[15] = 0;
  sub_306A08();
  v7 = v17;
  *(a2 + 40) = v16[16];
  *(a2 + 48) = v7;
  v8 = *(type metadata accessor for UpNextAffinityEpisodeHero() + 32);
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC510);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  sub_309A78();
  result = swift_dynamicCastClass();
  if (result)
  {

    sub_309478();
    v10 = sub_303AD8();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      result = sub_8AC08(v6);
    }

    else
    {
      if ((*(v11 + 88))(v6, v10) == enum case for EpisodeListenNowReason.prototypedUpNextScore(_:))
      {
        (*(v11 + 96))(v6, v10);
        *(a2 + 8) = sub_309A58();
        *(a2 + 16) = v12;
        v13 = sub_30C4B8();
        v15 = v14;

        *(a2 + 24) = v13;
        *(a2 + 32) = v15;
        return result;
      }

      result = (*(v11 + 8))(v6, v10);
    }
  }

  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  return result;
}

uint64_t sub_8A010()
{
  v0 = sub_306838();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3050A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  type metadata accessor for UpNextAffinityEpisodeHero();
  sub_33A80(v10);
  (*(v5 + 104))(v7, enum case for ColorScheme.dark(_:), v4);
  sub_305098();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  sub_303E08();
  (*(v1 + 104))(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  return sub_3068B8();
}

void sub_8A264(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AffinityEpisodeHero = type metadata accessor for UpNextAffinityEpisodeHero();
  v34 = *(AffinityEpisodeHero - 8);
  v5 = v34[8];
  __chkstk_darwin(AffinityEpisodeHero - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF770);
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v38 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF778);
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF780);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = *a1;
  KeyPath = swift_getKeyPath();
  v18 = *(a1 + 16);
  if (v18 && *(a1 + 32))
  {
    v19 = *(a1 + 8);
    v32 = *(a1 + 24);
    v33 = v19;
    sub_8AD50(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = *(v34 + 80);
    v34 = KeyPath;
    v21 = (v20 + 16) & ~v20;
    v22 = swift_allocObject();
    v23 = sub_8AEE8(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    __chkstk_darwin(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF790);
    sub_8AFB8();
    sub_306A68();
    KeyPath = v34;
    v24 = *(a1 + 48);
    v41 = *(a1 + 40);
    v42 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
    sub_306A38();
    v32 = a2;
    v25 = swift_allocObject();
    *(v25 + 16) = v33;
    *(v25 + 24) = v18;
    sub_EC8C(&qword_3FF7D0, &qword_3FF770);
    sub_8B278();
    v26 = v35;
    v28 = v37;
    v27 = v38;
    sub_3067A8();
    a2 = v32;

    (*(v36 + 8))(v27, v28);
    v30 = v39;
    v29 = v40;
    (*(v39 + 32))(v15, v26, v40);
    (*(v30 + 56))(v15, 0, 1, v29);
  }

  else
  {
    (*(v39 + 56))(v15, 1, 1, v40);
  }

  sub_8AC78(v15, v12);
  *a2 = v16;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF788);
  sub_8AC78(v12, a2 + *(v31 + 48));

  sub_70940(KeyPath, 0);
  sub_8ACE8(v15);
  sub_8ACE8(v12);

  sub_703E4(KeyPath, 0);
}

uint64_t sub_8A810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v20 = a1;
  *(&v20 + 1) = a2;
  sub_E504();

  v4 = sub_3063C8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_306C58();
  sub_3051F8();
  v11 = v8 & 1;
  v12 = sub_8A010();
  v13 = sub_3060C8();
  v14 = sub_3060C8();
  result = sub_304FD8();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  *(a3 + 64) = v22;
  *(a3 + 80) = v12;
  *(a3 + 88) = v13;
  *(a3 + 89) = 256;
  *(a3 + 96) = v14;
  *(a3 + 104) = v16;
  *(a3 + 112) = v17;
  *(a3 + 120) = v18;
  *(a3 + 128) = v19;
  *(a3 + 136) = 0;
  return result;
}

uint64_t sub_8A924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = sub_19DBA8(a1, a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  a3[3] = &type metadata for PrototypeUpNextSingleShowController;
  a3[4] = &off_3BD3B0;
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = v6;
  *(result + 24) = v8;
  *(result + 32) = v10 & 1;
  *(result + 40) = v12;
  return result;
}

void sub_8A9BC(uint64_t *a1@<X8>)
{
  *a1 = sub_306C08();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF768);
  sub_8A264(v1, a1 + *(v4 + 44));
}

uint64_t sub_8AA08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_89DC8(*a2, a3);
  v4 = sub_307048();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t sub_8AA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8B30C(&qword_3FF7E0, type metadata accessor for UpNextAffinityEpisodeHero);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_8AC08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8AC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8ACE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8AD50(uint64_t a1, uint64_t a2)
{
  AffinityEpisodeHero = type metadata accessor for UpNextAffinityEpisodeHero();
  (*(*(AffinityEpisodeHero - 8) + 16))(a2, a1, AffinityEpisodeHero);
  return a2;
}

uint64_t sub_8ADB4()
{
  v1 = (type metadata accessor for UpNextAffinityEpisodeHero() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_3050A8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_8AEE8(uint64_t a1, uint64_t a2)
{
  AffinityEpisodeHero = type metadata accessor for UpNextAffinityEpisodeHero();
  (*(*(AffinityEpisodeHero - 8) + 32))(a2, a1, AffinityEpisodeHero);
  return a2;
}

uint64_t sub_8AF4C()
{
  type metadata accessor for UpNextAffinityEpisodeHero();

  return sub_8A7B0();
}

unint64_t sub_8AFB8()
{
  result = qword_3FF798;
  if (!qword_3FF798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF790);
    sub_8B044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF798);
  }

  return result;
}

unint64_t sub_8B044()
{
  result = qword_3FF7A0;
  if (!qword_3FF7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF7A8);
    sub_8B0FC();
    sub_EC8C(&qword_3FF730, &qword_3FF738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF7A0);
  }

  return result;
}

unint64_t sub_8B0FC()
{
  result = qword_3FF7B0;
  if (!qword_3FF7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF7B8);
    sub_8B1B4();
    sub_EC8C(&qword_3FC9D8, &qword_3FC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF7B0);
  }

  return result;
}

unint64_t sub_8B1B4()
{
  result = qword_3FF7C0;
  if (!qword_3FF7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FF7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF7C0);
  }

  return result;
}

uint64_t sub_8B238()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_8B278()
{
  result = qword_3FF7D8;
  if (!qword_3FF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FF7D8);
  }

  return result;
}

uint64_t sub_8B2CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8B30C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8B368(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCD58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_8B438(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCD58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8B4E8()
{
  sub_309548();
  if (v0 <= 0x3F)
  {
    sub_8B5E4(319, &qword_3FD228, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_8B5E4(319, &qword_3FF420, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_3DAA0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_8B5E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_8B67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double sub_8B6C0()
{
  result = -1.79769313e308;
  xmmword_3FF8A0 = xmmword_31D440;
  *&qword_3FF8B0 = xmmword_31D450;
  return result;
}

double sub_8B6E0()
{
  result = -1.79769313e308;
  xmmword_3FF8C0 = xmmword_31D450;
  *&qword_3FF8D0 = xmmword_31D450;
  return result;
}

uint64_t sub_8B6F8()
{
  if (qword_3FAD98 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A470 + 10);
  v2[2] = xmmword_42A450;
  v2[3] = unk_42A460;
  *v3 = xmmword_42A470;
  v2[0] = xmmword_42A430;
  v2[1] = unk_42A440;
  *&algn_3FF8F1[7] = xmmword_42A430;
  *(&xmmword_3FF900 + 8) = unk_42A440;
  *(&xmmword_3FF910 + 8) = xmmword_42A450;
  xmmword_3FF8E0 = 0uLL;
  byte_3FF8F0 = 0;
  *(&xmmword_3FF920 + 8) = unk_42A460;
  *(&xmmword_3FF930 + 8) = xmmword_42A470;
  qword_3FF948 = *(&xmmword_42A470 + 10) >> 48;
  word_3FF950 = unk_42A488 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_8B7C0()
{
  if (qword_3FAD98 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A470 + 10);
  v2[0] = xmmword_42A430;
  v2[1] = unk_42A440;
  v2[2] = xmmword_42A450;
  v2[3] = unk_42A460;
  *v3 = xmmword_42A470;
  xmmword_3FF958 = xmmword_31D460;
  unk_3FF970 = xmmword_42A430;
  *(&xmmword_3FF978 + 8) = unk_42A440;
  *(&xmmword_3FF988 + 8) = xmmword_42A450;
  byte_3FF968 = 0;
  *(&xmmword_3FF998 + 8) = unk_42A460;
  *(&xmmword_3FF9A8 + 8) = xmmword_42A470;
  qword_3FF9C0 = *(&xmmword_42A470 + 10) >> 48;
  word_3FF9C8 = unk_42A488 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_8B890()
{

  return swift_deallocClassInstance();
}

char *sub_8B8D0(__int16 a1)
{
  v2 = v1;
  LOWORD(v3) = a1;
  v4 = &v90;
  v5 = &v84;
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_axis] = 2;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_artworkViewWithPlayback;
  *(v7 + v1) = sub_26FC0C();
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_captionLabel;
  type metadata accessor for EpisodeCaptionLabel();
  if (qword_3FAD88 != -1)
  {
LABEL_43:
    swift_once();
  }

  v9 = v3 & 0x100;
  v10 = xmmword_42A390;
  v11 = unk_42A3A0;
  v89[2] = xmmword_42A390;
  v89[3] = unk_42A3A0;
  v12 = xmmword_42A3B0;
  v89[4] = xmmword_42A3B0;
  v13 = *(&xmmword_42A3B0 + 10);
  *(v5 + 170) = *(&xmmword_42A3B0 + 10);
  v14 = xmmword_42A370;
  v15 = unk_42A380;
  v89[0] = xmmword_42A370;
  v89[1] = unk_42A380;
  v92 = v10;
  v93 = v11;
  v94 = v12;
  *(v4 + 74) = v13;
  v90 = v14;
  v91 = v15;
  sub_8FC54(v89, &v84);
  *(v8 + v2) = sub_235C3C(&v90, 1, 0, 1);
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FADA0 != -1)
  {
    swift_once();
  }

  v17 = xmmword_42A4B0;
  v18 = xmmword_42A4C0;
  v92 = xmmword_42A4B0;
  v93 = xmmword_42A4C0;
  v19 = xmmword_42A4D0;
  v94 = xmmword_42A4D0;
  v20 = *(&xmmword_42A4D0 + 10);
  *(v4 + 74) = *(&xmmword_42A4D0 + 10);
  v21 = xmmword_42A490;
  v22 = xmmword_42A4A0;
  v90 = xmmword_42A490;
  v91 = xmmword_42A4A0;
  v86 = v17;
  v87 = v18;
  v88 = v19;
  *(v5 + 74) = v20;
  v84 = v21;
  v85 = v22;
  sub_8FC54(&v90, v82);
  *&v2[v16] = sub_235C3C(&v84, 1, 0, 1);
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_viewStylings] = _swiftEmptyArrayStorage;
  v23 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_contentSizeChangeHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleAction] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHovering] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isInContextMenu] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_objectGraph] = 0;
  v24 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style];
  *v24 = v3 & 1;
  v24[1] = BYTE1(v9);
  v25 = *(v7 + v2);
  v26 = objc_allocWithZone(type metadata accessor for ArtworkContainer());
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_artworkContainer] = sub_29C44(3u, v25, 0, 0, 0, 0);
  sub_124C4(0, &qword_4019C0);
  if ((sub_30C978() & 1) != 0 && v9)
  {
    type metadata accessor for GradientView();
    v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v28 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_labelContainerMask;
    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_labelContainerMask] = v27;
    [v27 setAlpha:0.0];
    v29 = *&v2[v28];
    v30 = &off_3FF000;
    if (v29)
    {
      [v29 setUserInteractionEnabled:0];
    }
  }

  else
  {
    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_labelContainerMask] = 0;
    v30 = &off_3FF000;
  }

  if (qword_3FAD90 != -1)
  {
    swift_once();
  }

  v82[2] = xmmword_42A3F0;
  v82[3] = unk_42A400;
  v83[0] = xmmword_42A410;
  *(v83 + 10) = *(&xmmword_42A410 + 10);
  v31 = xmmword_42A3D0;
  v32 = unk_42A3E0;
  v82[0] = xmmword_42A3D0;
  v82[1] = unk_42A3E0;
  v86 = xmmword_42A3F0;
  v87 = unk_42A400;
  v88 = xmmword_42A410;
  *(v5 + 74) = *(&xmmword_42A410 + 10);
  v84 = v31;
  v85 = v32;
  sub_8FC54(v82, v80);
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel] = sub_235C3C(&v84, 3, 0, 1);
  if (qword_3FAD98 != -1)
  {
    swift_once();
  }

  v33 = xmmword_42A450;
  v34 = unk_42A460;
  v86 = xmmword_42A450;
  v87 = unk_42A460;
  v35 = xmmword_42A470;
  v88 = xmmword_42A470;
  v36 = *(&xmmword_42A470 + 10);
  *(v5 + 74) = *(&xmmword_42A470 + 10);
  v84 = xmmword_42A430;
  v85 = unk_42A440;
  v80[2] = v33;
  v80[3] = v34;
  v81[0] = v35;
  *(v81 + 10) = v36;
  v80[0] = xmmword_42A430;
  v80[1] = unk_42A440;
  sub_8FC54(&v84, v79);
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_summaryLabel] = sub_235C3C(v80, 3, 0, 1);
  v37 = 0;
  if ((sub_30C978() & 1) != 0 && !v9)
  {
    v37 = [objc_allocWithZone(UIView) init];
    [v37 _setContinuousCornerRadius:0.0];
    [v37 _setCornerRadius:6.0];
    [v37 setClipsToBounds:1];
  }

  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_backgroundView] = v37;
  v78.receiver = v2;
  v78.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v75 = v30[320];
  v39 = *&v75[v38];
  v40 = qword_3FB020;
  v76 = v38;
  v2 = v38;
  v41 = v39;
  if (v40 != -1)
  {
    swift_once();
  }

  v4 = qword_42B060;
  v42 = objc_opt_self();
  v43 = v4;
  v44 = [v42 whiteColor];
  v8 = v43;
  [v41 setTextColor:v8];
  v77[0] = v41;
  v77[1] = v4;
  v77[2] = v44;
  v73 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_summaryLabel;
  v45 = qword_3FB030;
  v46 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_summaryLabel];
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = qword_42B070;
  v48 = qword_42B070;
  v49 = [v42 whiteColor];
  [v46 setTextColor:v48];
  v77[3] = v46;
  v77[4] = v47;
  v77[5] = v49;
  v74 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel;
  v50 = qword_3FB028;
  v51 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel];
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = qword_42B068;
  v5 = qword_42B068;
  v53 = [v42 whiteColor];
  [v51 setTextColor:v5];
  v77[6] = v51;
  v77[7] = v52;
  v77[8] = v53;
  v54 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel;
  v55 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel];
  v56 = [v42 whiteColor];
  [v55 setTextColor:v8];
  v3 = 0;
  v77[9] = v55;
  v77[10] = v4;
  v77[11] = v56;
  v7 = v77;
  ObjectType = _swiftEmptyArrayStorage;
  v57 = 4;
LABEL_23:
  if (v3 > 4)
  {
    v57 = v3;
  }

  v58 = v57 + 1;
  v59 = &v77[3 * v3];
  while (v3 != 4)
  {
    if (v58 == ++v3)
    {
      __break(1u);
      goto LABEL_43;
    }

    v60 = v59 + 3;
    v61 = *v59;
    v59 += 3;
    if (v61)
    {
      v4 = *(v60 - 2);
      v62 = *(v60 - 1);
      v63 = v4;
      v8 = v62;
      v64 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        ObjectType = sub_CAE78(0, *(ObjectType + 2) + 1, 1, ObjectType);
      }

      v66 = *(ObjectType + 2);
      v65 = *(ObjectType + 3);
      v5 = (v66 + 1);
      if (v66 >= v65 >> 1)
      {
        ObjectType = sub_CAE78((v65 > 1), v66 + 1, 1, ObjectType);
      }

      *(ObjectType + 2) = v5;
      v67 = (ObjectType + 24 * v66);
      v67[4] = v64;
      v67[5] = v4;
      v67[6] = v8;
      v57 = 4;
      goto LABEL_23;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD90);
  swift_arrayDestroy();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_viewStylings] = ObjectType;

  if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_backgroundView])
  {
    [v2 addSubview:?];
  }

  [v2 addSubview:*&v75[v76]];
  [v2 addSubview:*&v2[v73]];
  [v2 addSubview:*&v2[v74]];
  [v2 addSubview:*&v2[v54]];
  [v2 addSubview:*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_artworkContainer]];
  if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_labelContainerMask])
  {
    [v2 addSubview:?];
  }

  [v2 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v2 setInsetsLayoutMarginsFromSafeArea:0];
  [v2 setPreservesSuperviewLayoutMargins:0];

  if (sub_30C978())
  {
    sub_E8C48();
    if (sub_30C978())
    {
      v68 = *&v2[v74];
      v69 = objc_allocWithZone(UITapGestureRecognizer);
      v70 = v68;
      v71 = [v69 initWithTarget:v2 action:"titleTapped"];
      [v70 addGestureRecognizer:v71];
    }
  }

  return v2;
}

void sub_8C290()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleAction);
  if (v1)
  {
    swift_getObjectType();
    v6[3] = sub_30B038();
    v6[4] = sub_90934(&qword_3FBDA0, 255, &type metadata accessor for Action);
    v6[0] = v1;
    v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel);
    v5[3] = type metadata accessor for DynamicTypeLabel();
    v5[0] = v2;
    sub_90934(&unk_3FFD80, v3, type metadata accessor for EpisodeView);
    swift_retain_n();
    v4 = v2;
    sub_3025C8();

    sub_9097C(v5);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }
}

id sub_8C40C(char a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHovering) = a1;
  if (a1)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style + 1);
  sub_124C4(0, &qword_4019C0);
  if (sub_30C978())
  {
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_labelContainerMask);
      if (v4)
      {
        [v4 setAlpha:v2];
      }
    }
  }

  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel);

  return [v5 setAlpha:1.0];
}

void sub_8C4D4(char a1, void *a2)
{
  if (a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel);
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [a2 locationInView:v4];
    v19.x = v13;
    v19.y = v14;
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    v15 = CGRectContainsPoint(v20, v19);
    v16 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle);
    *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle) = v15;
    if (v15 == v16)
    {
      return;
    }
  }

  else
  {
    v17 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle);
    *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle) = 0;
    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  sub_8C5C0();
}

void sub_8C5C0()
{
  v1 = v0;
  sub_124C4(0, &qword_4019C0);
  if (sub_30C978())
  {
    if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle] == 1 && *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleAction])
    {
      v2 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel] textColor];
      v3 = 1;
    }

    else
    {
      v2 = [v0 backgroundColor];
      v3 = 0;
    }

    v4 = v2;
    if (!v4)
    {
      v4 = [objc_opt_self() clearColor];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315420;
    *(inited + 32) = NSUnderlineStyleAttributeName;
    *(inited + 40) = 1;
    *(inited + 64) = &type metadata for Int;
    *(inited + 72) = NSUnderlineColorAttributeName;
    *(inited + 104) = sub_124C4(0, &qword_3FFD48);
    *(inited + 80) = v4;
    v6 = NSUnderlineStyleAttributeName;
    v7 = NSUnderlineColorAttributeName;
    v8 = v4;
    sub_2D6CB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
    swift_arrayDestroy();
    v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel];
    v10 = [v9 text];
    if (v10)
    {
      v11 = v10;
      sub_30C0D8();
    }

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = sub_30C098();

    type metadata accessor for Key(0);
    sub_90934(&qword_3FB410, 255, type metadata accessor for Key);
    isa = sub_30BF88().super.isa;

    v15 = [v12 initWithString:v13 attributes:isa];

    [v9 setAttributedText:v15];
    [v9 setUserInteractionEnabled:v3];
  }
}

uint64_t sub_8C8A0()
{

  return swift_deallocClassInstance();
}

double sub_8C8D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31D470;
  v2 = *(v0 + 56);
  *(inited + 32) = v2;
  *(inited + 40) = *(v0 + 64);
  *(inited + 48) = *(v0 + 72);
  v3 = inited & 0xC000000000000001;

  if ((inited & 0xC000000000000001) != 0)
  {
    if (*(sub_30D578() + 24))
    {
LABEL_4:
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
      goto LABEL_7;
    }
  }

  else
  {
    if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

    if (*(v2 + 24))
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  if (v3)
  {
    if (*(sub_30D578() + 24))
    {
LABEL_10:
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
      goto LABEL_13;
    }
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_17;
    }

    v4 = *(inited + 40);

    if (*(v4 + 24))
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  if (v3)
  {
    goto LABEL_18;
  }

  if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    if (*(sub_30D578() + 24))
    {
      goto LABEL_16;
    }

LABEL_19:

    goto LABEL_20;
  }

  v5 = *(inited + 48);

  if ((*(v5 + 24) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  sub_30D5A8();
  sub_30D5E8();
  sub_30D5F8();
  sub_30D5B8();
LABEL_20:
  swift_setDeallocating();
  swift_arrayDestroy();
  MinY = CGRectGetMinY(*(v0 + 16));
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_36:
    v7 = sub_30D668();
    if (v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage[2];
    if (v7)
    {
LABEL_23:
      v8 = 0;
      do
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v9 = sub_30D578();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_33:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= _swiftEmptyArrayStorage[2])
          {
            __break(1u);
            goto LABEL_36;
          }

          v9 = _swiftEmptyArrayStorage[v8 + 4];

          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_33;
          }
        }

        if (*(v9 + 24))
        {
          sub_30D5A8();
          sub_30D5E8();
          sub_30D5F8();
          sub_30D5B8();
        }

        else
        {
        }

        ++v8;
      }

      while (v10 != v7);
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
LABEL_40:
    v12 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v13 = sub_30D578();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v12 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_51;
        }

        v13 = _swiftEmptyArrayStorage[v12 + 4];

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v11 = sub_30D668();
          if (!v11)
          {
            break;
          }

          goto LABEL_40;
        }
      }

      MaxY = CGRectGetMaxY(v13[1]);

      if (MinY <= MaxY)
      {
        MinY = MaxY;
      }

      ++v12;
    }

    while (v14 != v11);
  }

  return MinY;
}

uint64_t sub_8CCD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31D480;
  v2 = v0[6];
  *(inited + 32) = v2;
  v3 = v0[7];
  *(inited + 40) = v3;
  v4 = v0[8];
  *(inited + 48) = v4;
  v5 = v0[9];
  *(inited + 56) = v5;
  aBlock[0] = _swiftEmptyArrayStorage;
  v6 = inited & 0xC000000000000001;

  v42 = v3;

  v41 = v4;

  v40 = v5;

  if ((inited & 0xC000000000000001) != 0)
  {
    if (*(sub_30D578() + 24))
    {
LABEL_4:
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
      goto LABEL_7;
    }
  }

  else
  {
    if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_23;
    }

    if (*(v2 + 24))
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  if (v6)
  {
    if (*(sub_30D578() + 24))
    {
LABEL_10:
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
      goto LABEL_13;
    }
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_23;
    }

    v7 = *(inited + 40);

    if (*(v7 + 24))
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  if (v6)
  {
    if (*(sub_30D578() + 24))
    {
LABEL_16:
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
      goto LABEL_19;
    }
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
    {
      goto LABEL_23;
    }

    v8 = *(inited + 48);

    if (*(v8 + 24))
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  if (v6)
  {
    goto LABEL_24;
  }

  if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 4uLL)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    if (*(sub_30D578() + 24))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v9 = *(inited + 56);

  if (*(v9 + 24))
  {
LABEL_22:
    sub_30D5A8();
    sub_30D5E8();
    sub_30D5F8();
    sub_30D5B8();
    goto LABEL_26;
  }

LABEL_25:

LABEL_26:
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = aBlock[0];
  if ((aBlock[0] & 0x8000000000000000) != 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_84;
  }

  v11 = *(aBlock[0] + 16);
  if (!v11)
  {
LABEL_85:
    v37 = 0;
    v38 = 0;
    goto LABEL_86;
  }

LABEL_29:
  v37 = 0;
  v38 = 0;
  v12 = 0;
  v39 = v11;
  while (1)
  {
LABEL_30:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = sub_30D578();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_83;
      }

      v13 = *(v10 + 32 + 8 * v12);

      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        goto LABEL_82;
      }
    }

    v15 = swift_initStackObject();
    *(v15 + 32) = v42;
    *(v15 + 16) = xmmword_31D470;
    *(v15 + 40) = v41;
    *(v15 + 48) = v40;
    aBlock[0] = _swiftEmptyArrayStorage;
    v16 = v15 & 0xC000000000000001;

    if ((v15 & 0xC000000000000001) != 0)
    {
      if (*(sub_30D578() + 24))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_81;
      }

      if (*(v42 + 24))
      {
LABEL_39:
        sub_30D5A8();
        sub_30D5E8();
        sub_30D5F8();
        sub_30D5B8();
        goto LABEL_42;
      }
    }

LABEL_42:
    if (v16)
    {
      if (*(sub_30D578() + 24))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_81;
      }

      v17 = *(v15 + 40);

      if (*(v17 + 24))
      {
LABEL_45:
        sub_30D5A8();
        sub_30D5E8();
        sub_30D5F8();
        sub_30D5B8();
        goto LABEL_48;
      }
    }

LABEL_48:
    if (v16)
    {
      if ((*(sub_30D578() + 24) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) < 3uLL)
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        v11 = sub_30D668();
        if (!v11)
        {
          goto LABEL_85;
        }

        goto LABEL_29;
      }

      v18 = *(v15 + 48);

      if ((*(v18 + 24) & 1) == 0)
      {
LABEL_53:

        goto LABEL_54;
      }
    }

    sub_30D5A8();
    sub_30D5E8();
    sub_30D5F8();
    sub_30D5B8();
LABEL_54:
    swift_setDeallocating();
    swift_arrayDestroy();
    v19 = aBlock[0];
    if ((aBlock[0] & 0x8000000000000000) != 0 || (aBlock[0] & 0x4000000000000000) != 0)
    {
      v35 = aBlock[0];
      v20 = sub_30D668();
      v19 = v35;
      if (!v20)
      {
LABEL_74:

        goto LABEL_75;
      }
    }

    else
    {
      v20 = *(aBlock[0] + 16);
      if (!v20)
      {
        goto LABEL_74;
      }
    }

    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    v23 = v19 + 32;
    while (!v22)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if (v21 >= *(v19 + 16))
      {
        goto LABEL_80;
      }

      if (*(v23 + 8 * v21) == v13)
      {
        goto LABEL_67;
      }

      ++v21;
LABEL_63:
      if (v21 == v20)
      {
        goto LABEL_74;
      }
    }

    v24 = v19;
    result = sub_30D578();
    v14 = __OFADD__(v21++, 1);
    if (v14)
    {
      goto LABEL_88;
    }

    v26 = result;
    swift_unknownObjectRelease();
    v19 = v24;
    if (v26 != v13)
    {
      goto LABEL_63;
    }

LABEL_67:

    v27 = *(v13 + 16);
    if (v27)
    {
      if (*(v13 + 24))
      {
        v28 = v27;
        [v28 frame];
        v30 = v29;
        Height = CGRectGetHeight(*(v13 + 32));

        if (v30 != Height)
        {
          break;
        }
      }
    }

LABEL_75:
    v36 = *(v13 + 16);
    if (v36)
    {
      [v36 setFrame:{*(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56)}];
    }

    if (v12 == v39)
    {
      goto LABEL_86;
    }
  }

  v32 = objc_opt_self();

  sub_2B8D4(v38, v37);
  v33 = swift_allocObject();
  v38 = sub_8FC0C;
  *(v33 + 16) = sub_8FC0C;
  *(v33 + 24) = v13;
  aBlock[4] = sub_293C0;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D688;
  aBlock[3] = &block_descriptor_9;
  v34 = _Block_copy(aBlock);

  [v32 performWithoutAnimation:v34];

  _Block_release(v34);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  v37 = v13;
  if (v12 != v39)
  {
    goto LABEL_30;
  }

LABEL_86:

  return sub_2B8D4(v38, v37);
}

uint64_t sub_8D4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31D470;
  v2 = *(v0 + 56);
  *(inited + 32) = v2;
  *(inited + 40) = *(v0 + 64);
  *(inited + 48) = *(v0 + 72);
  v3 = inited & 0xC000000000000001;

  if ((inited & 0xC000000000000001) != 0)
  {
    if (*(sub_30D578() + 24))
    {
LABEL_4:
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
      goto LABEL_7;
    }
  }

  else
  {
    if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

    if (*(v2 + 24))
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  if (v3)
  {
    if (*(sub_30D578() + 24))
    {
LABEL_10:
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
      goto LABEL_13;
    }
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_17;
    }

    v4 = *(inited + 40);

    if (*(v4 + 24))
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  if (v3)
  {
    goto LABEL_18;
  }

  if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    if (*(sub_30D578() + 24))
    {
      goto LABEL_16;
    }

LABEL_19:

    goto LABEL_20;
  }

  v5 = *(inited + 48);

  if ((*(v5 + 24) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  sub_30D5A8();
  sub_30D5E8();
  sub_30D5F8();
  sub_30D5B8();
LABEL_20:
  swift_setDeallocating();
  swift_arrayDestroy();
  MaxY = CGRectGetMaxY(*(*(v0 + 48) + 32));
  MinY = CGRectGetMinY(*(v0 + 16));
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_37:
    v8 = sub_30D668();
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_38:
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_39;
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (!v8)
  {
    goto LABEL_38;
  }

LABEL_23:
  v9 = 0;
  while ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v10 = sub_30D578();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_33;
    }

LABEL_29:
    if (*(v10 + 24))
    {
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
    }

    else
    {
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_34;
    }
  }

  if (v9 >= _swiftEmptyArrayStorage[2])
  {
    __break(1u);
    goto LABEL_37;
  }

  v10 = _swiftEmptyArrayStorage[v9 + 4];

  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_29;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

LABEL_39:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_53;
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (!v12)
  {
    goto LABEL_54;
  }

  while (2)
  {
    v13 = 0;
    while (2)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v14 = sub_30D578();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        goto LABEL_45;
      }

      if (v13 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_52;
      }

      v14 = _swiftEmptyArrayStorage[v13 + 4];

      v15 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
LABEL_45:
        v16 = CGRectGetMaxY(v14[1]);

        if (MinY <= v16)
        {
          MinY = v16;
        }

        ++v13;
        if (v15 == v12)
        {
          goto LABEL_54;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v12 = sub_30D668();
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_54:

  if ((MaxY - MinY) * 0.5 <= 0.0 || v8 == 0)
  {
  }

  v19 = 0;
  v20.f64[0] = 0.0;
  v20.f64[1] = (MaxY - MinY) * 0.5;
  v23 = v20;
  while (2)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      result = sub_30D578();
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      goto LABEL_63;
    }

    if (v19 >= _swiftEmptyArrayStorage[2])
    {
      goto LABEL_68;
    }

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
LABEL_63:
      v22 = vaddq_f64(*(result + 48), 0);
      *(result + 32) = vaddq_f64(v23, *(result + 32));
      *(result + 48) = v22;
      *(result + 24) = 1;

      ++v19;
      if (v21 == v8)
      {
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_8D96C()
{

  return swift_deallocClassInstance();
}

id sub_8D9C8()
{
  ObjectType = swift_getObjectType();
  v170 = sub_30D6F8();
  v2 = *(v170 - 8);
  v3 = __chkstk_darwin(v170);
  v167 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201.receiver = v0;
  v201.super_class = ObjectType;
  objc_msgSendSuper2(&v201, "layoutSubviews", v3);
  LODWORD(v5) = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style];
  v6 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style + 1];
  type metadata accessor for EpisodeView.Layout();
  swift_allocObject();
  v7 = v0;
  v8 = sub_8FEF0(v7);

  v9 = [v7 layoutMarginsGuide];
  [v9 layoutFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v176 = [v7 effectiveUserInterfaceLayoutDirection];
  v18 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_backgroundView];
  v175 = v17;
  if (v18)
  {
    if (v5)
    {
      if (qword_3FA9C8 != -1)
      {
        swift_once();
      }

      v19 = &xmmword_3FF8C0;
    }

    else
    {
      if (qword_3FA9C0 != -1)
      {
        swift_once();
      }

      v19 = &xmmword_3FF8A0;
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    v23 = *v19;
    v22 = *(v19 + 1);
    [v7 bounds];
    v25 = v24;
    v26 = v22;
    v17 = v175;
    [v18 setFrame:{sub_24C744(v23, v26, v21, v20, v27, v25, v28, v29, v11, v13, v15, v175)}];
  }

  sub_8ED04();
  v31 = v30;
  v32 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_labelContainerMask];
  if (v32)
  {
    LODWORD(v171) = v6;
    v33 = v2;
    v34 = v8;
    v35 = v5;
    v36 = v32;
    [v36 setFrame:{v11, v13, v15, v17}];
    [v36 frame];
    Width = CGRectGetWidth(v202);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_317F20;
    sub_302AD8();
    v39 = sub_302AC8();
    if (v176 == &dword_0 + 1)
    {
      *(v38 + 32) = v39;
      v40 = sub_302AC8();
      v41 = [v40 colorWithAlphaComponent:0.0];

      *(v38 + 40) = v41;
      v42 = v31 + 30.0;
      v43 = v31;
    }

    else
    {
      v44 = v39;
      v45 = [v39 colorWithAlphaComponent:0.0];

      *(v38 + 32) = v45;
      *(v38 + 40) = sub_302AC8();
      v42 = Width - v31;
      v43 = Width - v31 + -30.0;
    }

    *&v194 = 0;
    v193 = v38;
    *(&v194 + 1) = v43 / Width;
    *&v195 = 0;
    *(&v195 + 1) = v42 / Width;
    *&v196 = 0;
    *(&v196 + 1) = kCAGradientLayerAxial;
    v46 = kCAGradientLayerAxial;
    sub_254AD8(&v193);

    LODWORD(v5) = v35;
    v8 = v34;
    v2 = v33;
    v6 = LODWORD(v171);
  }

  v47 = 114.0;
  if (!v5)
  {
    v47 = 0.0;
  }

  v171 = v47;
  v48 = v15 - v47;
  sub_124C4(0, &qword_4019C0);
  v49 = sub_30C978();
  v172 = v31;
  v166 = v48;
  if (v49 & v6)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_30C978();
    if (v50)
    {
      v48 = v48 - v31;
    }
  }

  v203.origin.x = v11;
  v203.origin.y = v13;
  v203.size.width = v15;
  v203.size.height = v17;
  MinX = CGRectGetMinX(v203);
  v204.origin.x = v11;
  v204.origin.y = v13;
  v204.size.width = v15;
  v204.size.height = v17;
  MinY = CGRectGetMinY(v204);
  v205.origin.x = v11;
  v205.origin.y = v13;
  v205.size.width = v15;
  v205.size.height = v17;
  Height = CGRectGetHeight(v205);
  v173 = v15;
  v174 = v11;
  v54 = v11;
  v55 = v13;
  v56 = v15;
  v57 = v17;
  if (v176 == &dword_0 + 1)
  {
    v58 = v13;
    MaxX = CGRectGetMaxX(*&v54);
    v206.origin.x = MinX;
    v206.origin.y = MinY;
    v206.size.width = v48;
    v206.size.height = Height;
    v60 = MaxX - CGRectGetWidth(v206);
    v13 = v58;
    v17 = v175;
    v61 = v60 - v171;
  }

  else
  {
    v61 = v171 + CGRectGetMinX(*&v54);
  }

  v171 = v61;
  v207.origin.x = MinX;
  v207.origin.y = MinY;
  v207.size.width = v48;
  v207.size.height = Height;
  v169 = CGRectGetMinY(v207);
  v208.origin.x = MinX;
  v208.origin.y = MinY;
  v208.size.width = v48;
  v208.size.height = Height;
  v168 = CGRectGetWidth(v208);
  v209.origin.x = MinX;
  v209.origin.y = MinY;
  v209.size.width = v48;
  v209.size.height = Height;
  v62 = CGRectGetHeight(v209);
  if ((v50 & (v172 > 0.0)) != 0)
  {
    v48 = v48 + -10.0;
  }

  v63 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_captionLabel];
  v64 = &selRef_registerImage_withTraitCollection_;
  v65 = [v63 text];
  v66 = v174;
  if (v65)
  {
    v67 = v65;
    v68 = sub_30C0D8();
    v70 = v69;

    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v71 && ([v63 isHidden] & 1) == 0)
    {
      v172 = v13;
      MinX = v166;
      [v63 sizeThatFits:{v166, 1.79769313e308}];
      v72 = v167;
      v73 = v170;
      (*(v2 + 104))(v167, enum case for FloatingPointRoundingRule.up(_:), v170);
      sub_302E78();
      sub_302E78();
      v75 = v74;
      (*(v2 + 8))(v72, v73);
      v76 = sub_8C8D8();
      v77 = v8[7];

      v165 = v48;
      v78 = v171;
      v80 = v168;
      v79 = v169;
      v81 = v62;
      if (v176 == &dword_0 + 1)
      {
        v82 = CGRectGetMaxX(*&v78);
        v210.origin.x = 0.0;
        v210.origin.y = v76;
        v210.size.width = MinX;
        v210.size.height = v75;
        v83 = v82 - CGRectGetWidth(v210);
      }

      else
      {
        v83 = CGRectGetMinX(*&v78) + 0.0;
      }

      v211.origin.x = 0.0;
      v211.origin.y = v76;
      v211.size.width = MinX;
      v211.size.height = v75;
      v84 = CGRectGetMinY(v211);
      v212.origin.x = 0.0;
      v212.origin.y = v76;
      v212.size.width = MinX;
      v212.size.height = v75;
      v85 = CGRectGetWidth(v212);
      v213.origin.x = 0.0;
      v213.origin.y = v76;
      v213.size.width = MinX;
      v213.size.height = v75;
      v86 = CGRectGetHeight(v213);
      *(v77 + 32) = v83;
      *(v77 + 40) = v84;
      *(v77 + 48) = v85;
      *(v77 + 56) = v86;
      *(v77 + 24) = 1;

      v13 = v172;
      v66 = v174;
      v17 = v175;
      v48 = v165;
    }
  }

  v87 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel];
  v88 = [v87 text];
  if (!v88)
  {
    inited = 0;
    v94 = v173;
    goto LABEL_77;
  }

  v89 = v88;
  v90 = sub_30C0D8();
  v92 = v91;

  v93 = HIBYTE(v92) & 0xF;
  if ((v92 & 0x2000000000000000) == 0)
  {
    v93 = v90 & 0xFFFFFFFFFFFFLL;
  }

  v94 = v173;
  if (v93 && ([v87 isHidden] & 1) == 0)
  {
    LODWORD(v166) = v5;
    v172 = v13;
    v96 = [v87 numberOfLines];
    result = [v87 font];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v98 = result;
    if (v96 >= 4)
    {
      v99 = 4;
    }

    else
    {
      v99 = v96;
    }

    sub_900FC(v90, v92, v99, result, v48, 1.79769313e308);
    v164 = v100;
    v102 = v101;
    v104 = v103;

    v105 = v167;
    v106 = v170;
    (*(v2 + 104))(v167, enum case for FloatingPointRoundingRule.up(_:), v170);
    v17 = sub_221FA0(v105, v102, v104);
    MinX = v107;
    (*(v2 + 8))(v105, v106);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_31D470;
    v109 = v8[7];
    *(v108 + 32) = v109;
    *(v108 + 40) = v8[8];
    *(v108 + 48) = v8[9];
    *&v193 = _swiftEmptyArrayStorage;
    v110 = v108 & 0xC000000000000001;

    if ((v108 & 0xC000000000000001) != 0)
    {
      if (*(sub_30D578() + 24))
      {
LABEL_49:
        sub_30D5A8();
        sub_30D5E8();
        sub_30D5F8();
        sub_30D5B8();
LABEL_52:
        if (v110)
        {
          if (*(sub_30D578() + 24))
          {
            goto LABEL_55;
          }

          goto LABEL_57;
        }

        if (*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
        {
          v111 = *(v108 + 40);

          if (*(v111 + 24))
          {
LABEL_55:
            sub_30D5A8();
            sub_30D5E8();
            sub_30D5F8();
            sub_30D5B8();
LABEL_58:
            if (v110)
            {
              goto LABEL_90;
            }

            if (*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
            {
              v112 = *(v108 + 48);

              goto LABEL_61;
            }

            goto LABEL_88;
          }

LABEL_57:

          goto LABEL_58;
        }

LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    else
    {
      if (!*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_88;
      }

      if (*(v109 + 24))
      {
        goto LABEL_49;
      }
    }

    goto LABEL_52;
  }

  inited = 0;
LABEL_77:
  while (1)
  {
    v129 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_summaryLabel];
    v130 = [v129 v64[238]];
    if (!v130)
    {
      break;
    }

    v131 = v130;
    v132 = sub_30C0D8();
    v134 = v133;

    v135 = HIBYTE(v134) & 0xF;
    if ((v134 & 0x2000000000000000) == 0)
    {
      v135 = v132 & 0xFFFFFFFFFFFFLL;
    }

    if (!v135 || ([v129 isHidden] & 1) != 0)
    {
      break;
    }

    if (!__OFSUB__(4, inited))
    {
      if (4 - inited < 1)
      {
        break;
      }

      *&v175 = 4 - inited;
      LODWORD(v166) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_31D470;
      v5 = v8[7];
      *(inited + 32) = v5;
      *&v172 = inited + 32;
      *(inited + 40) = v8[8];
      *(inited + 48) = v8[9];
      *&v193 = _swiftEmptyArrayStorage;
      v136 = inited & 0xC000000000000001;
      v64 = (inited & 0xFFFFFFFFFFFFFF8);

      if ((inited & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
        {

          if (*(v5 + 24))
          {
            goto LABEL_87;
          }

LABEL_93:

          goto LABEL_94;
        }

LABEL_104:
        __break(1u);
LABEL_105:
        swift_once();
        goto LABEL_69;
      }

      v137 = sub_30D578();
      LODWORD(v5) = v137;
      if ((*(v137 + 24) & 1) == 0)
      {
        goto LABEL_93;
      }

LABEL_87:
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
LABEL_94:
      if (v136)
      {
        v138 = sub_30D578();
        LODWORD(v5) = v138;
        if (*(v138 + 24))
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
        {
          goto LABEL_104;
        }

        v5 = *(inited + 40);

        if (*(v5 + 24))
        {
LABEL_97:
          sub_30D5A8();
          sub_30D5E8();
          sub_30D5F8();
          sub_30D5B8();
LABEL_100:
          if (v136)
          {
            if ((*(sub_30D578() + 24) & 1) == 0)
            {
              goto LABEL_107;
            }

LABEL_103:
            sub_30D5A8();
            sub_30D5E8();
            sub_30D5F8();
            sub_30D5B8();
LABEL_108:
            v140 = *&v175;
            swift_setDeallocating();
            swift_arrayDestroy();
            LODWORD(v5) = LODWORD(v166);
            if ((v193 & 0x8000000000000000) != 0 || (v193 & 0x4000000000000000) != 0)
            {
              v141 = sub_30D668();
            }

            else
            {
              v141 = *(v193 + 16);
            }

            if (v141 <= 0)
            {
              v143 = v13;
              v146 = 0.0;
            }

            else
            {
              if (qword_3FA9D8 != -1)
              {
                swift_once();
              }

              v189 = xmmword_3FF998;
              v190 = xmmword_3FF9A8;
              v191 = unk_3FF9B8;
              v185 = xmmword_3FF958;
              v186 = *&byte_3FF968;
              v187 = xmmword_3FF978;
              v188 = xmmword_3FF988;
              v181 = xmmword_3FF998;
              v182 = xmmword_3FF9A8;
              v183 = unk_3FF9B8;
              v177 = xmmword_3FF958;
              v178 = *&byte_3FF968;
              v192 = word_3FF9C8;
              v184 = word_3FF9C8;
              v179 = xmmword_3FF978;
              v180 = xmmword_3FF988;
              sub_9004C(&v185, &v193);
              v142 = [v7 traitCollection];
              if (qword_3FAC38 != -1)
              {
                swift_once();
              }

              v143 = v13;
              v144 = __swift_project_value_buffer(v170, qword_4295D8);
              sub_231F6C(v142, v144, 0);
              v146 = v145;

              v197 = v181;
              v198 = v182;
              v199 = v183;
              v200 = v184;
              v193 = v177;
              v194 = v178;
              v195 = v179;
              v196 = v180;
              sub_900A8(&v193);
            }

            v147 = v146 + sub_8C8D8();
            if (v140 >= 3)
            {
              v148 = 3;
            }

            else
            {
              v148 = v140;
            }

            [v129 setNumberOfLines:v148];
            [v129 sizeThatFits:{v48, 1.79769313e308}];
            v150 = v149;
            v151 = v8[9];

            v218.origin.x = v171;
            v218.size.width = v168;
            v218.origin.y = v169;
            v218.size.height = v62;
            *(v151 + 32) = CGRectGetMinX(v218);
            *(v151 + 40) = v147;
            *(v151 + 48) = v48;
            *(v151 + 56) = v150;
            *(v151 + 24) = 1;

            v13 = v143;
            break;
          }

          if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
          {
            v139 = *(inited + 48);

            if (*(v139 + 24))
            {
              goto LABEL_103;
            }

LABEL_107:

            goto LABEL_108;
          }

          goto LABEL_104;
        }
      }

      goto LABEL_100;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    v112 = sub_30D578();
LABEL_61:
    v64 = &selRef_registerImage_withTraitCollection_;
    inited = v164;
    if (*(v112 + 24))
    {
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
    }

    else
    {
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    LODWORD(v5) = LODWORD(v166);
    if ((v193 & 0x8000000000000000) != 0 || (v193 & 0x4000000000000000) != 0)
    {
      v113 = sub_30D668();
    }

    else
    {
      v113 = *(v193 + 16);
    }

    if (v113 <= 0)
    {
      v117 = 0.0;
      goto LABEL_73;
    }

    if (qword_3FA9D0 != -1)
    {
      goto LABEL_105;
    }

LABEL_69:
    v189 = xmmword_3FF920;
    v190 = xmmword_3FF930;
    v191 = unk_3FF940;
    v185 = xmmword_3FF8E0;
    v186 = *&byte_3FF8F0;
    v187 = xmmword_3FF900;
    v188 = xmmword_3FF910;
    v181 = xmmword_3FF920;
    v182 = xmmword_3FF930;
    v183 = unk_3FF940;
    v177 = xmmword_3FF8E0;
    v178 = *&byte_3FF8F0;
    v192 = word_3FF950;
    v184 = word_3FF950;
    v179 = xmmword_3FF900;
    v180 = xmmword_3FF910;
    sub_9004C(&v185, &v193);
    v114 = [v7 traitCollection];
    if (qword_3FAC38 != -1)
    {
      swift_once();
    }

    v115 = __swift_project_value_buffer(v170, qword_4295D8);
    sub_231F6C(v114, v115, 0);
    v117 = v116;

    v197 = v181;
    v198 = v182;
    v199 = v183;
    v200 = v184;
    v193 = v177;
    v194 = v178;
    v195 = v179;
    v196 = v180;
    sub_900A8(&v193);
LABEL_73:
    v165 = v48;
    v118 = v117 + sub_8C8D8();
    v119 = v8[8];

    v120 = v171;
    v122 = v168;
    v121 = v169;
    v123 = v62;
    if (v176 == &dword_0 + 1)
    {
      v124 = CGRectGetMaxX(*&v120);
      v214.origin.x = 0.0;
      v214.origin.y = v118;
      v214.size.width = v17;
      v214.size.height = MinX;
      v125 = v124 - CGRectGetWidth(v214);
    }

    else
    {
      v125 = CGRectGetMinX(*&v120) + 0.0;
    }

    v215.origin.x = 0.0;
    v215.origin.y = v118;
    v215.size.width = v17;
    v215.size.height = MinX;
    v126 = CGRectGetMinY(v215);
    v216.origin.x = 0.0;
    v216.origin.y = v118;
    v216.size.width = v17;
    v216.size.height = MinX;
    v127 = CGRectGetWidth(v216);
    v217.origin.x = 0.0;
    v217.origin.y = v118;
    v217.size.width = v17;
    v217.size.height = MinX;
    v128 = CGRectGetHeight(v217);
    *(v119 + 32) = v125;
    *(v119 + 40) = v126;
    *(v119 + 48) = v127;
    *(v119 + 56) = v128;
    *(v119 + 24) = 1;

    v13 = v172;
    v94 = v173;
    v66 = v174;
    v17 = v175;
    v48 = v165;
  }

  if ((*(v8[9] + 24) & 1) == 0)
  {
    [v129 setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  if (v5)
  {
    v152 = v8[6];

    v153 = v66;
    v154 = v13;
    v155 = v94;
    v156 = v17;
    if (v176 == &dword_0 + 1)
    {
      v157 = v13;
      v158 = CGRectGetMaxX(*&v153);
      v219.size.width = 102.0;
      v219.origin.x = 0.0;
      v219.origin.y = 0.0;
      v219.size.height = 102.0;
      v159 = v158 - CGRectGetWidth(v219);
    }

    else
    {
      v159 = CGRectGetMinX(*&v153) + 0.0;
      v157 = v13;
    }

    v220.origin.x = 0.0;
    v220.origin.y = 0.0;
    v220.size.width = 102.0;
    v220.size.height = 102.0;
    v160 = CGRectGetMinY(v220);
    v221.origin.x = 0.0;
    v221.origin.y = 0.0;
    v221.size.width = 102.0;
    v221.size.height = 102.0;
    v161 = CGRectGetWidth(v221);
    v222.origin.x = 0.0;
    v222.origin.y = 0.0;
    v222.size.width = 102.0;
    v222.size.height = 102.0;
    v162 = CGRectGetHeight(v222);
    *(v152 + 32) = v159;
    *(v152 + 40) = v157 + v160;
    *(v152 + 48) = v161;
    *(v152 + 56) = v162;
    *(v152 + 24) = 1;
  }

  if (*(v8[6] + 24) == 1)
  {
    sub_8D4B8();
  }

  sub_8CCD0();
}

void sub_8ED04()
{
  v1 = v0;
  v2 = sub_30D6F8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 layoutMarginsGuide];
  [v7 layoutFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style + 1];
  sub_124C4(0, &qword_4019C0);
  if ((sub_30C978() & 1) != 0 && (v16 & 1) == 0)
  {
    v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel];
    if (([v17 isHidden] & 1) == 0)
    {
      [v17 sizeThatFits:{v13, v15}];
      v19 = v18;
      v21 = v20;
      v45.origin.x = v9;
      v45.origin.y = v11;
      v45.size.width = v13;
      v45.size.height = v15;
      v22 = CGRectGetMinY(v45) + (v15 - v21) * 0.5;
      v23 = [v1 effectiveUserInterfaceLayoutDirection];
      v24 = v9;
      v25 = v11;
      v26 = v13;
      v27 = v15;
      if (v23 == &dword_0 + 1)
      {
        v28 = CGRectGetMinX(*&v24) + 0.0;
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v24);
        v46.origin.x = 0.0;
        v46.origin.y = v22;
        v46.size.width = v19;
        v46.size.height = v21;
        v28 = MaxX - CGRectGetWidth(v46);
      }

      v47.origin.x = 0.0;
      v47.origin.y = v22;
      v47.size.width = v19;
      v47.size.height = v21;
      MinY = CGRectGetMinY(v47);
      v48.origin.x = 0.0;
      v48.origin.y = v22;
      v48.size.width = v19;
      v48.size.height = v21;
      Width = CGRectGetWidth(v48);
      v49.origin.x = 0.0;
      v49.origin.y = v22;
      v49.size.width = v19;
      v49.size.height = v21;
      Height = CGRectGetHeight(v49);
      v33 = [v1 traitCollection];
      (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v2);
      [v33 displayScale];
      if (v34 < COERCE_DOUBLE(1))
      {
        v35 = [objc_opt_self() mainScreen];
        [v35 scale];
      }

      v50.origin.x = v28;
      v50.origin.y = MinY;
      v50.size.width = Width;
      v50.size.height = Height;
      CGRectGetMinX(v50);
      sub_302E58();
      v44 = v36;
      v51.origin.x = v28;
      v51.origin.y = MinY;
      v51.size.width = Width;
      v51.size.height = Height;
      CGRectGetMinY(v51);
      sub_302E58();
      v38 = v37;
      v52.origin.x = v28;
      v52.origin.y = MinY;
      v52.size.width = Width;
      v52.size.height = Height;
      CGRectGetWidth(v52);
      sub_302E58();
      v40 = v39;
      v53.origin.x = v28;
      v53.origin.y = MinY;
      v53.size.width = Width;
      v53.size.height = Height;
      CGRectGetHeight(v53);
      sub_302E58();
      v42 = v41;

      (*(v3 + 8))(v6, v2);
      [v17 setFrame:{v44, v38, v40, v42}];
    }

    sub_904C8(v1);
  }
}

uint64_t sub_8F4CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_8F514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EpisodeView.Style(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for EpisodeView.Style(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_8F6F4()
{
  v1 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style];

  result = 102.0;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_8F778@<X0>(uint64_t a1@<X8>)
{
  if ((*(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_axis) == 2) | *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_axis) & 1)
  {
    v3 = &enum case for ContextMenuPreviewMargins.provide(_:);
  }

  else
  {
    v3 = &enum case for ContextMenuPreviewMargins.none(_:);
  }

  v4 = *v3;
  v5 = sub_302728();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

void sub_8F82C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_objectGraph) = a1;

  sub_2AE20(v2);
}

void sub_8F890(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  sub_2A088();
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_axis] = v5;
  v6 = sub_307D88();
  if (v7)
  {
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel];
      v10 = sub_30C098();

      [v9 setText:v10];

      [v9 setHidden:0];
      goto LABEL_8;
    }
  }

  v11 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel];
  [*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel] setHidden:1];
  [v11 setText:0];
LABEL_8:
  v12 = sub_3094E8();
  if (v12)
  {
    v13 = v12;
    if ((sub_304288() & 1) == 0)
    {
      v15 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_summaryLabel];
      v16 = sub_304238();
      [v15 setAttributedText:v16];

      [v15 setLineBreakMode:4];
      [v15 setHidden:0];

      goto LABEL_13;
    }
  }

  v14 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_summaryLabel];
  [v14 setText:0];
  [v14 setHidden:1];
LABEL_13:
  sub_239014(a1);
  v17 = v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style + 1];
  sub_124C4(0, &qword_4019C0);
  if (sub_30C978() & 1) == 0 || (v17 & 1) != 0 || (v18 = COERCE_DOUBLE(sub_309508()), (v19) || v18 <= 2.22044605e-16)
  {
    v24 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel];
    [v24 setHidden:1];
    [v24 setText:0];
  }

  else
  {
    v20 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel];
    [v20 setHidden:0];
    v21 = sub_307E08();
    if (v22)
    {
      v27 = v21;
      v28 = v22;
      sub_E504();
      sub_30D3D8();

      v23 = sub_30C098();
    }

    else
    {
      v23 = 0;
    }

    [v20 setText:{v23, v27, v28}];
  }

  (*&stru_3D8.sectname[swift_isaMask & **&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_artworkViewWithPlayback]])(a1);
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleAction] = sub_309468();

  v25 = sub_3094F8();
  v26 = 1.0;
  if (v25)
  {
    UIInterfaceGetContentDisabledAlpha();
  }

  [v3 setAlpha:v26];
  [v3 setNeedsLayout];
  sub_8C5C0();
}

id sub_8FC0C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setFrame:{*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56)}];
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8FC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_8FCC4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_axis) = 2;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_artworkViewWithPlayback;
  *(v1 + v2) = sub_26FC0C();
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_captionLabel;
  type metadata accessor for EpisodeCaptionLabel();
  if (qword_3FAD88 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_42A390;
  v9[3] = unk_42A3A0;
  v10[0] = xmmword_42A3B0;
  *(v10 + 10) = *(&xmmword_42A3B0 + 10);
  v9[0] = xmmword_42A370;
  v9[1] = unk_42A380;
  v13 = xmmword_42A390;
  v14 = unk_42A3A0;
  v15[0] = xmmword_42A3B0;
  *(v15 + 10) = *(&xmmword_42A3B0 + 10);
  v11 = xmmword_42A370;
  v12 = unk_42A380;
  sub_8FC54(v9, v7);
  *(v1 + v3) = sub_235C3C(&v11, 1, 0, 1);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FADA0 != -1)
  {
    swift_once();
  }

  v13 = xmmword_42A4B0;
  v14 = xmmword_42A4C0;
  v15[0] = xmmword_42A4D0;
  *(v15 + 10) = *(&xmmword_42A4D0 + 10);
  v11 = xmmword_42A490;
  v12 = xmmword_42A4A0;
  v7[2] = xmmword_42A4B0;
  v7[3] = xmmword_42A4C0;
  v8[0] = xmmword_42A4D0;
  *(v8 + 10) = *(&xmmword_42A4D0 + 10);
  v7[0] = xmmword_42A490;
  v7[1] = xmmword_42A4A0;
  sub_8FC54(&v11, v6);
  *(v1 + v4) = sub_235C3C(v7, 1, 0, 1);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_viewStylings) = _swiftEmptyArrayStorage;
  v5 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_contentSizeChangeHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleAction) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHovering) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isInContextMenu) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void *sub_8FEF0(char *a1)
{
  v3 = [a1 layoutMarginsGuide];
  [v3 layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v1[2] = v5;
  v1[3] = v7;
  v1[4] = v9;
  v1[5] = v11;
  v12 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_artworkContainer];
  type metadata accessor for EpisodeView.LayoutItem();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 16) = v12;
  v1[6] = v13;
  v14 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_captionLabel];
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 16) = v14;
  v1[7] = v15;
  v16 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel];
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 16) = v16;
  v1[8] = v17;
  v18 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_summaryLabel];
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 16) = v18;
  v1[9] = v19;
  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v18;
  return v1;
}

void sub_900FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  v12 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v12 setMaximumNumberOfLines:a3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70);
  inited = swift_initStackObject();
  *(inited + 32) = NSFontAttributeName;
  *(inited + 16) = xmmword_315420;
  *(inited + 40) = a4;
  *(inited + 48) = NSParagraphStyleAttributeName;
  v14 = qword_3FAE78;
  v15 = NSFontAttributeName;
  v16 = a4;
  v17 = NSParagraphStyleAttributeName;
  if (v14 != -1)
  {
    swift_once();
  }

  v18 = qword_42AB90;
  *(inited + 56) = qword_42AB90;
  v19 = v18;
  v20 = sub_2D6EEC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A140);
  swift_arrayDestroy();
  v21 = v12;
  v22 = sub_2D618C(v20);
  v23 = sub_268E60(a5, a6, a1, a2, 1uLL, v22, v12);

  if (qword_3FAE40 != -1)
  {
    swift_once();
  }

  sub_303D28();

  if (v36)
  {
    v24 = sub_30C098();
    sub_2D618C(v20);
    type metadata accessor for Key(0);
    sub_90934(&qword_3FB410, 255, type metadata accessor for Key);
    isa = sub_30BF88().super.isa;

    [v24 boundingRectWithSize:1 options:isa attributes:v21 context:{a5, a6, v23}];
    v27 = v26;

    sub_303D38();
  }

  else
  {
    v27 = v35;
  }

  [v16 lineHeight];
  v29 = v27 - v28;
  if (v27 - v28 <= 0.0)
  {
    goto LABEL_15;
  }

  [v16 lineHeight];
  v31 = v30;
  [v16 leading];
  v33 = v32;

  v34 = round(v29 / (v31 + v33));
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (__OFADD__(v34, 1))
  {
    __break(1u);
LABEL_15:
  }
}

double sub_904C8(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (qword_3FA9E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_3FF9D0[0];
  if (*(off_3FF9D0[0] + &dword_10) && (v5 = sub_1977EC(v3), (v6 & 1) != 0))
  {
    v7 = *(*&stru_20.segname[v4 + 16] + 8 * v5);
  }

  else
  {
    swift_endAccess();
    v42 = _swiftEmptyArrayStorage;
    sub_1752AC(0, 2, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = objc_opt_self();
    if (qword_3FADA0 != -1)
    {
      swift_once();
    }

    v45 = xmmword_42A4B0;
    v46 = xmmword_42A4C0;
    v47[0] = xmmword_42A4D0;
    *(v47 + 10) = *(&xmmword_42A4D0 + 10);
    v43 = xmmword_42A490;
    v44 = xmmword_42A4A0;
    v10 = [a1 traitCollection];
    v40[2] = v45;
    v40[3] = v46;
    v41[0] = v47[0];
    *(v41 + 10) = *(v47 + 10);
    v40[0] = v43;
    v40[1] = v44;
    v11 = sub_2DAA3C(v40, v10);
    v12 = [v9 fontWithDescriptor:v11 size:0.0];

    v13 = sub_307E08();
    if (v14)
    {
      *&v40[0] = v13;
      *(&v40[0] + 1) = v14;
      sub_E504();
      v15 = sub_30D3D8();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    sub_900FC(v15, v17, 1, v12, 1.79769313e308, 1.79769313e308);
    v19 = v18;

    v42 = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyArrayStorage[2];
    v20 = _swiftEmptyArrayStorage[3];
    if (v21 >= v20 >> 1)
    {
      sub_1752AC((v20 > 1), v21 + 1, 1);
      v8 = v42;
    }

    *(v8 + 2) = v21 + 1;
    *&v8[2 * v21 + 8] = v19;
    v22 = [a1 traitCollection];
    v23 = sub_2DAA3C(&v43, v22);
    v24 = [v9 fontWithDescriptor:v23 size:0.0];

    v25 = sub_307E08();
    if (v26)
    {
      *&v40[0] = v25;
      *(&v40[0] + 1) = v26;
      sub_E504();
      v27 = sub_30D3D8();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    sub_900FC(v27, v29, 1, v24, 1.79769313e308, 1.79769313e308);
    v31 = v30;

    v42 = v8;
    v33 = *(v8 + 2);
    v32 = *(v8 + 3);
    if (v33 >= v32 >> 1)
    {
      sub_1752AC((v32 > 1), v33 + 1, 1);
      v8 = v42;
    }

    *(v8 + 2) = v33 + 1;
    *&v8[2 * v33 + 8] = v31;
    v7 = *(v8 + 4);
    if (v33)
    {
      v34 = (v8 + 10);
      do
      {
        v35 = *v34++;
        v36 = v35;
        if (v7 < v35)
        {
          v7 = v36;
        }

        --v33;
      }

      while (v33);
    }

    swift_beginAccess();
    v37 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = off_3FF9D0[0];
    off_3FF9D0[0] = 0x8000000000000000;
    sub_2957BC(v37, isUniquelyReferenced_nonNull_native, v7);

    off_3FF9D0[0] = v42;
  }

  swift_endAccess();

  return v7;
}