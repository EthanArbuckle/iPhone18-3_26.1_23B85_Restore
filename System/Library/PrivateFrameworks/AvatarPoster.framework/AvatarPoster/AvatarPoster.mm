uint64_t PRPosterBoundingShape.contactsUIBoundingShape.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E550080, &qword_24197F018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v8 - v3;
  sub_24197EE24();
  v5 = sub_24197EE34();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_24197D568(v4);
  return (*(v6 + 104))(a1, *MEMORY[0x277CBDBC8], v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_24197D568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E550080, &qword_24197F018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AvatarPosterConfiguration.avatarRecord.getter()
{
  v0 = sub_24197EE64();
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = v0;
  v4 = v1;
  v5 = objc_opt_self();
  v6 = sub_24197EE94();
  v7 = [v5 avatarRecordFromData_];
  sub_24197D66C(v3, v4);

  return v7;
}

uint64_t sub_24197D66C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24197D680(a1, a2);
  }

  return a1;
}

uint64_t sub_24197D680(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AvatarPosterConfiguration.debugDescription.getter()
{
  v0 = 7104878;
  sub_24197EED4();
  MEMORY[0x245CF37B0](0xD000000000000038, 0x800000024197F310);
  sub_24197EE74();
  v1 = sub_24197EEA4();
  v3 = v2;

  MEMORY[0x245CF37B0](v1, v3);

  MEMORY[0x245CF37B0](0xD000000000000015, 0x800000024197F350);
  v4 = sub_24197EE64();
  if (v5 >> 60 == 15)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v10 = sub_24197EE84();
    v6 = v11;
    sub_24197D66C(v8, v9);
    v7 = v10;
  }

  MEMORY[0x245CF37B0](v7, v6);

  MEMORY[0x245CF37B0](0xD000000000000013, 0x800000024197F370);
  v12 = sub_24197EE44();
  if (v13 >> 60 == 15)
  {
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    v16 = v12;
    v17 = v13;
    v18 = sub_24197EE84();
    v14 = v19;
    sub_24197D66C(v16, v17);
    v15 = v18;
  }

  MEMORY[0x245CF37B0](v15, v14);

  MEMORY[0x245CF37B0](0xD000000000000014, 0x800000024197F390);
  v20 = sub_24197EE54();
  if (v21 >> 60 == 15)
  {
    v22 = 0xE300000000000000;
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v0 = sub_24197EE84();
    v22 = v25;
    sub_24197D66C(v23, v24);
  }

  MEMORY[0x245CF37B0](v0, v22);

  return 0;
}

AvatarPoster::AvatarPosterBackgroundColor __swiftcall AvatarPosterBackgroundColor.init(topColor:bottomColor:)(UIColor topColor, UIColor bottomColor)
{
  v2->super.isa = topColor.super.isa;
  v2[1].super.isa = bottomColor.super.isa;
  result.bottomColor = bottomColor;
  result.topColor = topColor;
  return result;
}

id sub_24197D92C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.658823529 green:0.678431373 blue:0.729411765 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.529411765 green:0.549019608 blue:0.588235294 alpha:1.0];
  qword_27E5500B0 = v0;
  *algn_27E5500B8 = result;
  return result;
}

id sub_24197D9C0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.839215686 green:0.803921569 blue:0.97254902 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.709803922 green:0.643137255 blue:0.949019608 alpha:1.0];
  qword_27E5500C0 = v0;
  *algn_27E5500C8 = result;
  return result;
}

id sub_24197DA58()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.701960784 green:0.835294118 blue:0.937254902 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.454901961 green:0.698039216 blue:0.88627451 alpha:1.0];
  qword_27E5500D0 = v0;
  *algn_27E5500D8 = result;
  return result;
}

id sub_24197DAEC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.964705882 green:0.721568627 blue:0.8 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.937254902 green:0.490196078 blue:0.639215686 alpha:1.0];
  qword_27E5500E0 = v0;
  *algn_27E5500E8 = result;
  return result;
}

id sub_24197DB80()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.960784314 green:0.850980392 blue:0.68627451 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.929411765 green:0.725490196 blue:0.431372549 alpha:1.0];
  qword_27E5500F0 = v0;
  *algn_27E5500F8 = result;
  return result;
}

id sub_24197DC14()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.792156863 green:0.949019608 blue:0.741176471 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.623529412 green:0.905882353 blue:0.529411765 alpha:1.0];
  qword_27E550100 = v0;
  *algn_27E550108 = result;
  return result;
}

id sub_24197DCA8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.882352941 green:0.776470588 blue:0.764705882 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.788235294 green:0.592156863 blue:0.57254902 alpha:1.0];
  qword_27E550110 = v0;
  *algn_27E550118 = result;
  return result;
}

id sub_24197DD44()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.941176471 green:0.764705882 blue:0.662745098 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.894117647 green:0.568627451 blue:0.388235294 alpha:1.0];
  qword_27E550120 = v0;
  *algn_27E550128 = result;
  return result;
}

id sub_24197DDE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.839215686 green:0.807843137 blue:0.870588235 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.705882353 green:0.647058824 blue:0.764705882 alpha:1.0];
  qword_27E550130 = v0;
  *algn_27E550138 = result;
  return result;
}

id sub_24197DE78()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.780392157 green:0.843137255 blue:0.905882353 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.603921569 green:0.717647059 blue:0.82745098 alpha:1.0];
  qword_27E550140 = v0;
  *algn_27E550148 = result;
  return result;
}

id sub_24197DF0C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.815686275 green:0.909803922 blue:0.917647059 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.666666667 green:0.835294118 blue:0.847058824 alpha:1.0];
  qword_27E550150 = v0;
  *algn_27E550158 = result;
  return result;
}

id sub_24197DFA4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.941176471 green:0.717647059 blue:0.925490196 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.890196078 green:0.48627451 blue:0.866666667 alpha:1.0];
  qword_27E550160 = v0;
  *algn_27E550168 = result;
  return result;
}

id sub_24197E044()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.666666667 green:0.941176471 blue:0.949019608 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.396078431 green:0.894117647 blue:0.905882353 alpha:1.0];
  qword_27E550170 = v0;
  *algn_27E550178 = result;
  return result;
}

id sub_24197E0E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.694117647 green:0.956862745 blue:0.764705882 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.443137255 green:0.921568627 blue:0.568627451 alpha:1.0];
  qword_27E550180 = v0;
  *algn_27E550188 = result;
  return result;
}

id sub_24197E178()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.850980392 green:0.831372549 blue:0.811764706 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.725490196 green:0.694117647 blue:0.654901961 alpha:1.0];
  qword_27E550190 = v0;
  *algn_27E550198 = result;
  return result;
}

id sub_24197E20C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.901960784 green:0.839215686 blue:0.749019608 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.819607843 green:0.705882353 blue:0.541176471 alpha:1.0];
  qword_27E5501A0 = v0;
  *algn_27E5501A8 = result;
  return result;
}

id sub_24197E2A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.831372549 green:0.866666667 blue:0.815686275 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.690196078 green:0.760784314 blue:0.666666667 alpha:1.0];
  qword_27E5501B0 = v0;
  *algn_27E5501B8 = result;
  return result;
}

id sub_24197E338()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.560784314 green:0.560784314 blue:0.560784314 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  qword_27E5501C0 = v0;
  *algn_27E5501C8 = result;
  return result;
}

id sub_24197E3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5500A8, "0");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24197F260;
  if (qword_27E54FFE0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E5500B0;
  v2 = *algn_27E5500B8;
  *(v0 + 32) = qword_27E5500B0;
  *(v0 + 40) = v2;
  v3 = qword_27E54FFF8;
  v4 = v1;
  v5 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v6 = qword_27E5500E0;
  v7 = *algn_27E5500E8;
  *(v0 + 48) = qword_27E5500E0;
  *(v0 + 56) = v7;
  v8 = qword_27E550010;
  v9 = v6;
  v10 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_27E550110;
  v12 = *algn_27E550118;
  *(v0 + 64) = qword_27E550110;
  *(v0 + 72) = v12;
  v13 = qword_27E550018;
  v14 = v11;
  v15 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v16 = qword_27E550120;
  v17 = *algn_27E550128;
  *(v0 + 80) = qword_27E550120;
  *(v0 + 88) = v17;
  v18 = qword_27E550000;
  v19 = v16;
  v20 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = qword_27E5500F0;
  v22 = *algn_27E5500F8;
  *(v0 + 96) = qword_27E5500F0;
  *(v0 + 104) = v22;
  v23 = qword_27E550008;
  v24 = v21;
  v25 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v26 = qword_27E550100;
  v27 = *algn_27E550108;
  *(v0 + 112) = qword_27E550100;
  *(v0 + 120) = v27;
  v28 = qword_27E54FFF0;
  v29 = v26;
  v30 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = qword_27E5500D0;
  v32 = *algn_27E5500D8;
  *(v0 + 128) = qword_27E5500D0;
  *(v0 + 136) = v32;
  v33 = qword_27E54FFE8;
  v34 = v31;
  v35 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v36 = qword_27E5500C0;
  v37 = *algn_27E5500C8;
  *(v0 + 144) = qword_27E5500C0;
  *(v0 + 152) = v37;
  v38 = qword_27E550020;
  v39 = v36;
  v40 = v37;
  if (v38 != -1)
  {
    swift_once();
  }

  v41 = qword_27E550130;
  v42 = *algn_27E550138;
  *(v0 + 160) = qword_27E550130;
  *(v0 + 168) = v42;
  v43 = qword_27E550028;
  v44 = v41;
  v45 = v42;
  if (v43 != -1)
  {
    swift_once();
  }

  v46 = qword_27E550140;
  v47 = *algn_27E550148;
  *(v0 + 176) = qword_27E550140;
  *(v0 + 184) = v47;
  v48 = qword_27E550030;
  v49 = v46;
  v50 = v47;
  if (v48 != -1)
  {
    swift_once();
  }

  v51 = qword_27E550150;
  v52 = *algn_27E550158;
  *(v0 + 192) = qword_27E550150;
  *(v0 + 200) = v52;
  v53 = qword_27E550038;
  v54 = v51;
  v55 = v52;
  if (v53 != -1)
  {
    swift_once();
  }

  v56 = qword_27E550160;
  v57 = *algn_27E550168;
  *(v0 + 208) = qword_27E550160;
  *(v0 + 216) = v57;
  v58 = qword_27E550040;
  v59 = v56;
  v60 = v57;
  if (v58 != -1)
  {
    swift_once();
  }

  v61 = qword_27E550170;
  v62 = *algn_27E550178;
  *(v0 + 224) = qword_27E550170;
  *(v0 + 232) = v62;
  v63 = qword_27E550048;
  v64 = v61;
  v65 = v62;
  if (v63 != -1)
  {
    swift_once();
  }

  v66 = qword_27E550180;
  v67 = *algn_27E550188;
  *(v0 + 240) = qword_27E550180;
  *(v0 + 248) = v67;
  v68 = qword_27E550050;
  v69 = v66;
  v70 = v67;
  if (v68 != -1)
  {
    swift_once();
  }

  v71 = qword_27E550190;
  v72 = *algn_27E550198;
  *(v0 + 256) = qword_27E550190;
  *(v0 + 264) = v72;
  v73 = qword_27E550058;
  v74 = v71;
  v75 = v72;
  if (v73 != -1)
  {
    swift_once();
  }

  v76 = qword_27E5501A0;
  v77 = *algn_27E5501A8;
  *(v0 + 272) = qword_27E5501A0;
  *(v0 + 280) = v77;
  v78 = qword_27E550060;
  v79 = v76;
  v80 = v77;
  if (v78 != -1)
  {
    swift_once();
  }

  v81 = qword_27E5501B0;
  v82 = *algn_27E5501B8;
  *(v0 + 288) = qword_27E5501B0;
  *(v0 + 296) = v82;
  v83 = qword_27E550068;
  v84 = v81;
  v85 = v82;
  if (v83 != -1)
  {
    swift_once();
  }

  v87 = qword_27E5501C0;
  v86 = *algn_27E5501C8;
  v90 = *algn_27E5501C8;
  *(v0 + 304) = qword_27E5501C0;
  *(v0 + 312) = v86;
  qword_27E550088 = v0;
  v88 = v87;

  return v90;
}

uint64_t sub_24197E968()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E550098, ",");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24197F270;
  sub_24197EDD8();
  *(v0 + 32) = sub_24197EEC4();
  *(v0 + 40) = sub_24197EEC4();
  *(v0 + 48) = sub_24197EEC4();
  *(v0 + 56) = sub_24197EEC4();
  *(v0 + 64) = sub_24197EEC4();
  *(v0 + 72) = sub_24197EEC4();
  *(v0 + 80) = sub_24197EEC4();
  *(v0 + 88) = sub_24197EEC4();
  *(v0 + 96) = sub_24197EEC4();
  *(v0 + 104) = sub_24197EEC4();
  *(v0 + 112) = sub_24197EEC4();
  *(v0 + 120) = sub_24197EEC4();
  *(v0 + 128) = sub_24197EEC4();
  *(v0 + 136) = sub_24197EEC4();
  *(v0 + 144) = sub_24197EEC4();
  result = sub_24197EEC4();
  *(v0 + 152) = result;
  qword_27E550090 = v0;
  return result;
}

uint64_t sub_24197ECD8(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return MEMORY[0x2821FE848](v3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24197ED44(uint64_t *a1, int a2)
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

uint64_t sub_24197ED8C(uint64_t result, int a2, int a3)
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

unint64_t sub_24197EDD8()
{
  result = qword_27E5500A0;
  if (!qword_27E5500A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5500A0);
  }

  return result;
}