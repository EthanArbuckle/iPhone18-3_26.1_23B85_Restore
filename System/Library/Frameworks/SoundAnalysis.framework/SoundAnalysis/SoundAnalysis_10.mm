uint64_t sub_1C985F048()
{
  sub_1C97AA884();
  sub_1C979B054((v0 + 1824), *(v0 + 2184));
  sub_1C98719B0();

  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C985F0B4()
{
  sub_1C97AA884();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v6 + 2256) = v0;

  if (v0)
  {
    v7 = sub_1C985F2A0;
  }

  else
  {
    v7 = sub_1C985F1BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C985F1BC()
{
  sub_1C97AA884();
  sub_1C979B054((v0 + 1864), *(v0 + 2184));
  sub_1C98719B0();

  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C985F228()
{
  sub_1C97AA884();
  sub_1C9866824(v0 + 16);
  sub_1C97C26F0(v0 + 1824);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C985F2A0()
{
  sub_1C97AA884();
  sub_1C97C26F0(v0 + 1864);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C985F310()
{

  v0 = sub_1C97DB310();

  return v0;
}

uint64_t sub_1C985F378(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  v7 = v2[3];
  v5[3] = v2[2];
  v5[4] = v7;
  v15 = a1;
  v16 = a2;
  sub_1C97E82EC(v2, v14, &qword_1EC3C78E8);
  v8 = sub_1C9871794();
  v12 = sub_1C97E3200(v8, v9, v10, v11);

  return v12;
}

uint64_t sub_1C985F4A4()
{

  v0 = sub_1C97DB258();

  return v0;
}

uint64_t sub_1C985F50C(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = v1[1];
  v3[1] = *v1;
  v3[2] = v4;
  v5 = v1[3];
  v3[3] = v1[2];
  v3[4] = v5;
  v10 = a1;
  v8[2] = sub_1C9870268;
  v8[3] = v3;
  v8[4] = &v10;
  sub_1C97E82EC(v1, v9, &qword_1EC3C78E8);
  v6 = sub_1C97E3228(a1, sub_1C983E04C, v8);

  return v6;
}

uint64_t sub_1C985F5F0(__int128 *a1, _OWORD *a2)
{
  v13[3] = &type metadata for RuntimeFeatureFlags.SoundAnalysis;
  v13[4] = sub_1C986EDCC();
  LOBYTE(v13[0]) = 0;
  v4 = sub_1C9A917C8();
  sub_1C97A592C(v13);
  if (v4)
  {
    v5 = a1[1];
    v15 = *a1;
    v16[0] = v5;
    *(v16 + 9) = *(a1 + 25);
    memcpy(__dst, a1 + 3, 0x41uLL);
    type metadata accessor for SNDetectSoundRequest();

    sub_1C97A6BCC(&v15, v13);
    sub_1C97A6264(__dst, v13);
    v6 = sub_1C9860AFC(&v15, __dst, a2);
    sub_1C97E8084(__dst);
    sub_1C97F91D8(&v15);
  }

  else
  {
    memcpy(v13, a1, 0x71uLL);
    v12[3] = &unk_1F492E308;
    v12[4] = &off_1F492E340;
    v8 = swift_allocObject();
    v12[0] = v8;
    v9 = *(a2 + 4);
    v10 = a2[1];
    *(v8 + 16) = *a2;
    *(v8 + 32) = v10;
    *(v8 + 48) = v9;

    sub_1C97F4D20();
    v6 = v11;
    sub_1C97A592C(v12);
  }

  return v6;
}

uint64_t sub_1C985F7B4()
{
  sub_1C987198C();
  v195 = v1;
  v194 = v2;
  v193 = v3;
  v5 = v4;
  v6 = sub_1C97A2CEC(&qword_1EC3C8240);
  sub_1C97ABF78(v6, &v202 + 8);
  v178 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AC02C();
  sub_1C97ABFB4(v9);
  v10 = sub_1C97A2CEC(&qword_1EC3C99D8);
  sub_1C97ABF78(v10, &v203);
  v179 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  sub_1C97ABFB4(v13);
  v14 = sub_1C97A2CEC(&qword_1EC3C99E0);
  sub_1C97ABF78(v14, v199);
  v172 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AC02C();
  sub_1C97ABFB4(v17);
  v177 = sub_1C97A2CEC(&qword_1EC3C99E8);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AC02C();
  sub_1C97ABFB4(v19);
  v20 = sub_1C97A2CEC(&qword_1EC3C99F0);
  sub_1C97ABF78(v20, v204);
  v182 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AC02C();
  sub_1C97ABFB4(v23);
  v24 = sub_1C97A2CEC(&qword_1EC3C99F8);
  sub_1C97ABF78(v24, v204 + 8);
  v189 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AC02C();
  sub_1C97ABFB4(v27);
  v190 = sub_1C97A2CEC(&unk_1EC3C9A00);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  sub_1C97ABFB4(v29);
  v30 = sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97ABF78(v30, &v205 + 8);
  v192 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C9871A4C();
  v33 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v191 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AEAD8();
  v38 = (v37 - v36);
  v39 = sub_1C97A2CEC(&unk_1EC3CD670);
  sub_1C97AE9C8();
  v186 = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v152 - v42;
  v44 = sub_1C97A2CEC(&unk_1EC3C9A10);
  sub_1C97AE9C8();
  v46 = v45;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v152 - v48;
  v50 = v5[1];
  v197 = *v5;
  *v198 = v50;
  *&v198[9] = *(v5 + 25);
  v51 = v195;
  v52 = v196;
  sub_1C97F5B0C(&v197, v200);
  if (v52)
  {
    return v51;
  }

  v165 = v43;
  v166 = v49;
  v167 = v39;
  v168 = v46;
  v169 = v44;
  v195 = v38;
  v170 = v0;
  v171 = v33;
  type metadata accessor for SNSoundDetector();
  v53 = v200[0];
  sub_1C97F7238();
  sub_1C987198C();
  type metadata accessor for SNUtils();
  ObjectType = swift_getObjectType();
  v56 = *(*(&v53 + 1) + 16);
  v57 = v56(ObjectType, *(&v53 + 1));
  v58 = sub_1C9A18E9C(v57, 0);

  if (v58[2])
  {
    v59 = v58[5];
    v161 = v58[4];
    v164 = v59;

    v163 = v53;
    v60 = v56(ObjectType, *(&v53 + 1));
    v61 = sub_1C9A18E9C(v60, 1);

    v62 = v61[2];
    if (v62 == 1)
    {
      v63 = v61[5];
      v159[1] = v61[4];

      v159[0] = 0;
      v162 = 0;
    }

    else
    {

      if (v62 != 2)
      {

        v51 = type metadata accessor for SNError();
        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001DLL, 0x80000001C9AD54C0);
        goto LABEL_23;
      }

      v63 = 0xEA00000000006563;
      v162 = 0xE800000000000000;
      qmemcpy(v159, "DetectedConfiden", sizeof(v159));
    }

    v64 = *(&v202 + 1);
    if ((~*(&v202 + 1) & 0xF000000000000007) != 0)
    {
      (*(&v202 + 1) & 0x7FFFFFFFFFFFFFFFLL);

      if (v64 < 0)
      {
        sub_1C98718E0();
        sub_1C9869C74(v90, v91);
        sub_1C987198C();
        v183 = v64;
        v160 = v63;
        sub_1C98716A0();
        sub_1C9871AC8();
      }

      else
      {
        v160 = v63;
        sub_1C98718E0();
        sub_1C98698A0(v87, v88);
        sub_1C9871AC8();
        sub_1C987198C();
        v183 = v64;
        sub_1C98716A0();
      }

      *&v197 = v56;
      v120 = v191;
      v121 = v195;
      (*(v191 + 104))(v195, *MEMORY[0x1E695BD20]);
      v122 = v170;
      *v170 = sub_1C97FB0A0;
      v122[1] = 0;
      (*(ObjectType + 104))(v122, *MEMORY[0x1E695BD48], v188);
      v192 = sub_1C97A2CEC(&unk_1EC3CC280);
      sub_1C97DA9B0();
      sub_1C9813064(v123, v124);
      sub_1C9871888();
      sub_1C9871998();
      sub_1C9A92018();
      v125 = sub_1C9871A74();
      v126(v125);
      (*(v120 + 8))(v121, v171);
      sub_1C97A2CEC(&qword_1EC3C8A38);
      sub_1C9871800(&qword_1EC3CD6A0, &unk_1EC3CD670);
      v127 = v166;
      v128 = v167;
      sub_1C9A91F68();
      sub_1C97DAA58();
      v129(v56, v128);
      sub_1C98717DC(&unk_1EC3C9A50, &unk_1EC3C9A10);
      sub_1C98717C4(v198);
      sub_1C9A91F28();

      sub_1C97F9C90(v183);
      sub_1C97DAA58();
      v118 = v127;
      v119 = v128;
      goto LABEL_27;
    }

    v160 = v63;
    v65 = v56(ObjectType, *(&v53 + 1));
    v66 = [v65 inputDescriptionsByName];

    sub_1C97BD318(0, &qword_1EC3C54D0);
    v67 = sub_1C9A92328();

    v51 = sub_1C98782A4(v161, v164, v67);

    if (v51)
    {
      v68 = [v51 multiArrayConstraint];

      if (v68)
      {
        v69 = [v68 shape];

        sub_1C97BD318(0, &qword_1EC3C54B0);
        sub_1C97FB318();
        sub_1C9A92798();

        sub_1C9A16824();
        v71 = v70;

        v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
        sub_1C9A180B0(v72);
        v74 = v73;

        v75 = *(&v201 + 1);
        if ((*(&v201 + 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v76 = v191;
        v77 = v170;
        v78 = v195;
        if (*(&v201 + 1) <= -2147483650.0)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (*(&v201 + 1) >= 2147483650.0)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v79 = v74;
        v158 = sub_1C9A93168();
        v157 = v80;
        v186 = DWORD1(v202);
        v81 = sub_1C9A93168();
        v193 = v83;
        if (v75 <= -9.22337204e18)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v155 = v82;
        v156 = v81;
        if (v75 >= 9.22337204e18)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v84 = v194[1];
        v203 = *v194;
        v204[0] = v84;
        v85 = v194[3];
        v204[1] = v194[2];
        v205 = v85;
        v51 = &v203;
        v86 = v196;
        sub_1C97DD3BC(1, v75);
        sub_1C987198C();
        if (v86)
        {

          sub_1C9871B28();
          sub_1C97F9780(v200);
          return v51;
        }

        v161 = *(&v53 + 1);
        v164 = v53;
        v154 = DWORD1(v53);
        v153 = HIDWORD(v193);
        v92 = sub_1C98BF080();
        v168 = v92;

        *&v197 = v92;
        v93 = v76;
        v94 = v171;
        (*(v76 + 104))(v78, *MEMORY[0x1E695BD20], v171);
        *v77 = sub_1C97FB0A0;
        v77[1] = 0;
        v95 = v78;
        v96 = v192;
        v97 = v188;
        (*(v192 + 104))(v77, *MEMORY[0x1E695BD48], v188);
        sub_1C97A2CEC(&unk_1EC3C7390);
        v169 = v79;
        sub_1C97DA9B0();
        sub_1C9813064(v98, v99);
        v100 = v173;
        sub_1C9A92018();
        (*(v96 + 8))(v77, v97);
        (*(v93 + 8))(v95, v94);

        sub_1C97A2CEC(&unk_1EC3C9A20);
        sub_1C9871800(&unk_1EC3C9950, &qword_1EC3C8240);
        v101 = v174;
        v102 = v180;
        sub_1C9A91F68();
        sub_1C97DAA58();
        v103(v100, v102);
        v104 = sub_1C97A2CEC(&qword_1EC3C7C80);
        v105 = v181;
        sub_1C9A91C48();
        sub_1C97DAA58();
        v106(v101, v105);
        v107 = v175;
        v108 = sub_1C9871734();
        v109(v108);
        v110 = v177;
        *(v107 + *(v177 + 60)) = v169;
        *(v107 + *(v110 + 64)) = v186;
        *(v107 + *(v110 + 68)) = v104;
        sub_1C97A2CEC(&qword_1EC3C8A38);
        sub_1C9871998();
        sub_1C9813064(v111, v112);
        v113 = v176;
        sub_1C9A91F68();
        v114 = sub_1C9871734();
        sub_1C97DA1E0(v114, v115);
        sub_1C98717DC(&qword_1EC3C9A38, &qword_1EC3C99F0);
        v116 = v183;
        sub_1C9A91F28();
        sub_1C97DAA58();
        v118 = v113;
        v119 = v116;
LABEL_27:
        v117(v118, v119);
        v130 = v160;
        v131 = *(v194 + 1);
        v132 = v190;
        v133 = v189;
        if ((v131 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v134 = v164;
          if (!HIDWORD(v131))
          {
            v135 = *(v194 + 2);
            v136 = swift_allocObject();
            *(v136 + 16) = v135;
            type metadata accessor for RecursiveMLModel();
            sub_1C98137F8();
            swift_allocObject();
            v137 = swift_unknownObjectRetain();
            v51 = sub_1C999B034(v137, v161);
            v138 = v187;
            v139 = v196;
            sub_1C98B3130(v51, &off_1F49465D8);

            v196 = v139;
            if (v139)
            {
              sub_1C97F9780(v200);

              sub_1C9871B28();
            }

            else
            {
              v140 = swift_allocObject();
              *(v140 + 16) = v156;
              v141 = v153;
              *(v140 + 24) = v193;
              *(v140 + 28) = v141;
              v142 = v159[1];
              *(v140 + 32) = v155;
              *(v140 + 40) = v142;
              v143 = v159[0];
              *(v140 + 48) = v130;
              *(v140 + 56) = v143;
              v144 = v158;
              *(v140 + 64) = v162;
              *(v140 + 72) = v144;
              LODWORD(v144) = v154;
              *(v140 + 80) = v134;
              *(v140 + 84) = v144;
              *(v140 + 88) = v157;
              *(v140 + 96) = sub_1C98714C8;
              *(v140 + 104) = v136;
              v145 = v200[0];
              v146 = v200[1];
              v147 = v202;
              *(v140 + 144) = v201;
              *(v140 + 160) = v147;
              *(v140 + 112) = v145;
              *(v140 + 128) = v146;
              v148 = *(v133 + 32);
              v149 = v185;
              v148(v185, v138, v184);
              v150 = (v149 + *(v132 + 52));
              *v150 = sub_1C979B154;
              v150[1] = 0;
              v151 = (v149 + *(v132 + 56));
              *v151 = sub_1C98714A0;
              v151[1] = v140;

              sub_1C97F9724(v200, &v197);
              sub_1C9813064(&unk_1EC3C9A40, &unk_1EC3C9A00);
              sub_1C97FB318();
              v51 = sub_1C9A91F28();

              sub_1C97F9780(v200);

              sub_1C97DA1E0(v149, &unk_1EC3C9A00);
            }

            return v51;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    sub_1C9871B28();
    sub_1C97A8E8C();
    sub_1C97AA928();
    swift_allocError();
    *v89 = 0;
LABEL_23:
    swift_willThrow();
    sub_1C97F9780(v200);
    return v51;
  }

LABEL_39:

  __break(1u);
  return result;
}

uint64_t sub_1C9860AFC(__int128 *a1, void *a2, void *a3)
{
  v165 = a2;
  v166 = a3;
  v153 = sub_1C97A2CEC(&qword_1EC3C8240);
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v146 = &v122 - v4;
  v154 = sub_1C97A2CEC(&qword_1EC3C99D8);
  v152 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v147 = &v122 - v5;
  v145 = sub_1C97A2CEC(&qword_1EC3C99E0);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v122 - v6;
  v150 = sub_1C97A2CEC(&qword_1EC3C99E8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v122 - v7;
  v142 = sub_1C97A2CEC(&qword_1EC3C99F0);
  v155 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v149 = &v122 - v8;
  v159 = sub_1C97A2CEC(&qword_1EC3C99F8);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v156 = &v122 - v9;
  v160 = sub_1C97A2CEC(&unk_1EC3C9A00);
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v122 - v10;
  v11 = sub_1C97A2CEC(&unk_1EC3C9910);
  v12 = *(v11 - 8);
  v163 = v11;
  v164 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v122 - v13;
  v15 = sub_1C9A91C28();
  v162 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C97A2CEC(&unk_1EC3CD670);
  v157 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v122 - v19;
  v21 = sub_1C97A2CEC(&unk_1EC3C9A10);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v122 - v23;
  v25 = a1[1];
  v169 = *a1;
  *v170 = v25;
  *&v170[9] = *(a1 + 25);
  v26 = v167;
  v27 = v168;
  sub_1C97F5B0C(&v169, v173);
  if (v27)
  {
    return v26;
  }

  v135 = v20;
  v136 = v24;
  v137 = v18;
  v138 = v22;
  v139 = v21;
  v140 = v17;
  v167 = v14;
  v141 = v15;
  type metadata accessor for SNSoundDetector();
  v28 = *(&v173[0] + 1);
  v29 = *&v173[0];
  sub_1C97F7238();
  v168 = 0;
  v30 = type metadata accessor for SNUtils();
  ObjectType = swift_getObjectType();
  v32 = *(v28 + 16);
  v33 = v32(ObjectType, v28);
  v34 = sub_1C9A18E9C(v33, 0);

  if (v34[2])
  {
    v35 = v34[5];
    v132 = v34[4];

    v134 = v32;
    v36 = v32(ObjectType, v28);
    v37 = sub_1C9A18E9C(v36, 1);

    v38 = v37[2];
    if (v38 == 1)
    {
      v39 = v35;
      v130 = v30;
      v40 = v37[5];
      v129[1] = v37[4];
      v133 = v40;

      v129[0] = 0;
      v41 = 0;
    }

    else
    {

      if (v38 != 2)
      {

        v26 = type metadata accessor for SNError();
        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001DLL, 0x80000001C9AD54C0);
LABEL_22:
        swift_willThrow();
LABEL_25:
        sub_1C97F9780(v173);
        return v26;
      }

      v39 = v35;
      v130 = v30;
      v133 = 0xEA00000000006563;
      v41 = 0xE800000000000000;
      qmemcpy(v129, "DetectedConfiden", sizeof(v129));
    }

    v42 = *(&v175 + 1);
    if ((~*(&v175 + 1) & 0xF000000000000007) == 0)
    {
      v131 = v41;
      v157 = v28;
      v43 = (v134)(ObjectType, v28);
      v44 = [v43 inputDescriptionsByName];

      sub_1C97BD318(0, &qword_1EC3C54D0);
      v45 = sub_1C9A92328();

      v26 = sub_1C98782A4(v132, v39, v45);

      if (v26)
      {
        v46 = [v26 multiArrayConstraint];

        if (v46)
        {
          v132 = v29;
          v47 = [v46 shape];

          sub_1C97BD318(0, &qword_1EC3C54B0);
          sub_1C9A92798();

          sub_1C9A16824();
          v49 = v48;

          v50 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
          sub_1C9A180B0(v50);
          v52 = v51;

          v53 = *(&v174 + 1);
          if ((*(&v174 + 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else
          {
            v26 = v166;
            v54 = v163;
            v55 = v162;
            if (*(&v174 + 1) > -2147483650.0)
            {
              v56 = v167;
              if (*(&v174 + 1) < 2147483650.0)
              {
                v139 = v52;
                v57 = sub_1C9A93168();
                v59 = v58;
                v130 = v60;
                v138 = DWORD1(v175);
                v61 = sub_1C9A93168();
                v134 = v63;
                if (v53 > -9.22337204e18)
                {
                  v127 = v62;
                  v128 = v61;
                  v64 = v140;
                  if (v53 < 9.22337204e18)
                  {
                    v65 = v168;
                    sub_1C990D6C8();
                    v168 = v65;
                    if (v65)
                    {

                      sub_1C97F9780(v173);
                      return v26;
                    }

                    v126 = v57;
                    v125 = v59;
                    v124 = HIDWORD(v59);
                    v123 = HIDWORD(v134);
                    v74 = sub_1C98BF080();
                    v137 = v74;

                    *&v169 = v74;
                    (*(v55 + 104))(v64, *MEMORY[0x1E695BD20], v141);
                    *v56 = sub_1C97FB0A0;
                    v56[1] = 0;
                    v75 = v164;
                    (*(v164 + 104))(v56, *MEMORY[0x1E695BD48], v54);
                    sub_1C97A2CEC(&unk_1EC3C7390);
                    sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390);
                    v76 = v54;
                    v77 = v146;
                    sub_1C9A92018();
                    (*(v75 + 8))(v56, v76);
                    (*(v55 + 8))(v64, v141);

                    sub_1C97A2CEC(&unk_1EC3C9A20);
                    sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240);
                    v78 = v147;
                    v79 = v153;
                    sub_1C9A91F68();
                    (*(v151 + 8))(v77, v79);
                    v80 = sub_1C97A2CEC(&qword_1EC3C7C80);
                    v81 = v143;
                    v82 = v154;
                    sub_1C9A91C48();
                    (*(v152 + 8))(v78, v82);
                    v83 = v148;
                    (*(v144 + 32))(v148, v81, v145);
                    v84 = v150;
                    *(v83 + *(v150 + 60)) = v139;
                    *(v83 + *(v84 + 64)) = v138;
                    *(v83 + *(v84 + 68)) = v80;
                    sub_1C97A2CEC(&qword_1EC3C8A38);
                    sub_1C9813064(&qword_1EC3C9A30, &qword_1EC3C99E8);
                    v85 = v149;
                    sub_1C9A91F68();
                    sub_1C97DA1E0(v83, &qword_1EC3C99E8);
                    sub_1C9813064(&qword_1EC3C9A38, &qword_1EC3C99F0);
                    v86 = v142;
                    sub_1C9A91F28();
                    (*(v155 + 8))(v85, v86);
                    v28 = v157;
LABEL_30:
                    v26 = v166;
                    v101 = v168;
                    sub_1C990D4F4(v165, v87, v88, v89, v90, v91, v92, v93);
                    v103 = v161;
                    v104 = v160;
                    v105 = v159;
                    v106 = v158;
                    if (v101)
                    {

                      sub_1C97F9780(v173);
                    }

                    else
                    {
                      v107 = v102;
                      v108 = swift_allocObject();
                      *(v108 + 16) = v107;
                      type metadata accessor for RecursiveMLModel();
                      swift_allocObject();
                      v109 = swift_unknownObjectRetain();
                      v110 = sub_1C999B034(v109, v28);
                      v111 = v156;
                      sub_1C98B3130(v110, &off_1F49465D8);

                      v168 = 0;
                      v112 = swift_allocObject();
                      *(v112 + 16) = v128;
                      v113 = v123;
                      *(v112 + 24) = v134;
                      *(v112 + 28) = v113;
                      v114 = v129[1];
                      *(v112 + 32) = v127;
                      *(v112 + 40) = v114;
                      v115 = v129[0];
                      *(v112 + 48) = v133;
                      *(v112 + 56) = v115;
                      v116 = v126;
                      *(v112 + 64) = v131;
                      *(v112 + 72) = v116;
                      LODWORD(v116) = v124;
                      *(v112 + 80) = v125;
                      *(v112 + 84) = v116;
                      *(v112 + 88) = v130;
                      *(v112 + 96) = sub_1C986EE20;
                      *(v112 + 104) = v108;
                      v117 = v173[0];
                      v118 = v173[1];
                      v119 = v175;
                      *(v112 + 144) = v174;
                      *(v112 + 160) = v119;
                      *(v112 + 112) = v117;
                      *(v112 + 128) = v118;
                      (*(v106 + 32))(v103, v111, v105);
                      v120 = (v103 + *(v104 + 52));
                      *v120 = sub_1C979B154;
                      v120[1] = 0;
                      v121 = (v103 + *(v104 + 56));
                      *v121 = sub_1C986EE3C;
                      v121[1] = v112;
                      sub_1C9813064(&unk_1EC3C9A40, &unk_1EC3C9A00);
                      v26 = sub_1C9A91F28();

                      sub_1C97DA1E0(v103, &unk_1EC3C9A00);
                    }

                    return v26;
                  }

                  goto LABEL_37;
                }

LABEL_36:
                __break(1u);
LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_35;
        }
      }

      sub_1C97A8E8C();
      swift_allocError();
      *v71 = 0;
      goto LABEL_22;
    }

    v26 = (*(&v175 + 1) & 0x7FFFFFFFFFFFFFFFLL);

    if (v42 < 0)
    {
      v72 = v168;
      sub_1C9869E24(v26, v165, &v169);
      v69 = v167;
      if (!v72)
      {
        v155 = v42;
        v168 = 0;
        v131 = v41;
        v132 = v29;
        v126 = *(&v169 + 1);
        v70 = v169;
        v125 = *v170;
        v124 = *&v170[4];
        v130 = *&v170[8];
        v128 = *&v170[16];
        v134 = *&v170[24];
        v123 = v171;
        v127 = v172;
        v67 = v164;
        v68 = v141;
        goto LABEL_29;
      }
    }

    else
    {
      v66 = v168;
      sub_1C9869A5C(v165, v42, &v169);
      v67 = v164;
      v68 = v141;
      v69 = v167;
      if (!v66)
      {
        v155 = v42;
        v168 = 0;
        v131 = v41;
        v132 = v29;
        v126 = *(&v169 + 1);
        v70 = v169;
        v125 = *v170;
        v124 = *&v170[4];
        v130 = *&v170[8];
        v128 = *&v170[16];
        v134 = *&v170[24];
        v123 = v171;
        v127 = v172;
LABEL_29:
        v167 = v70;
        *&v169 = v70;
        v94 = v162;
        v95 = v140;
        (*(v162 + 104))(v140, *MEMORY[0x1E695BD20], v68);
        *v69 = sub_1C97FB0A0;
        v69[1] = 0;
        v96 = v163;
        (*(v67 + 104))(v69, *MEMORY[0x1E695BD48], v163);
        v164 = sub_1C97A2CEC(&unk_1EC3CC280);
        sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
        v97 = v135;
        sub_1C9A92018();
        (*(v67 + 8))(v69, v96);
        (*(v94 + 8))(v95, v141);
        sub_1C97A2CEC(&qword_1EC3C8A38);
        sub_1C9813064(&qword_1EC3CD6A0, &unk_1EC3CD670);
        v98 = v136;
        v99 = v137;
        sub_1C9A91F68();
        (*(v157 + 8))(v97, v99);
        sub_1C9813064(&unk_1EC3C9A50, &unk_1EC3C9A10);
        v100 = v139;
        sub_1C9A91F28();

        sub_1C97F9C90(v155);
        (*(v138 + 8))(v98, v100);
        goto LABEL_30;
      }
    }

    sub_1C97F9C90(v42);
    goto LABEL_25;
  }

LABEL_38:

  __break(1u);
  return result;
}

uint64_t sub_1C98620F8(uint64_t a1, uint64_t a2)
{
  v3[110] = v2;
  v3[109] = a2;
  v3[108] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9862120, 0, 0);
}

uint64_t sub_1C9862428(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9862448, 0, 0);
}

uint64_t sub_1C9862448()
{
  if (sub_1C98F44F4())
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844();
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();

    sub_1C987190C();
    if (v1)
    {
    }

    else
    {
      v4 = v2;

      if ((v4 & 1) == 0)
      {
LABEL_11:
        if (sub_1C98F47E0())
        {
          v0[5] = &unk_1F492E308;
          v0[6] = &off_1F492E480;
          v0[7] = &off_1F492E500;
          sub_1C98137F8();
          v6 = swift_allocObject();
          v0[2] = v6;
          sub_1C9871934(v6);

          sub_1C98F6980();
          sub_1C97A592C((v0 + 2));
        }

        else
        {
          sub_1C9868088(v0[9], v0[8]);
        }

        sub_1C97DA8DC();
        goto LABEL_15;
      }
    }

    v5 = MGGetProductType();
    if (qword_1EC3C5D98 != -1)
    {
      sub_1C9871824();
    }

    if (sub_1C98F4044(v5, qword_1EC3D31E8))
    {
      goto LABEL_11;
    }

    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  sub_1C986F098();
  sub_1C97AA928();
  swift_allocError();
  *v7 = v3;
  swift_willThrow();
  sub_1C97DA91C();
LABEL_15:

  return v8();
}

uint64_t sub_1C986266C(uint64_t a1, char *a2)
{
  v98 = a1;
  v99 = a2;
  v6 = type metadata accessor for AOPClassificationDemo.Request();
  v7 = sub_1C97DACE4(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v92 = v9 - v8;
  LOBYTE(v10) = type metadata accessor for RemoteRequest();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97ABF90();
  v97 = v12;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98435C8();
  v95 = v14;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98435C8();
  v93 = v16;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C98435C8();
  v96 = v18;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C98435C8();
  v94 = v20;
  sub_1C98435B0();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v92 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v92 - v26;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C9871A38();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C9871A60();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v92 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v92 - v33;
  v35 = sub_1C97A2CEC(&qword_1EC3C9B58);
  sub_1C97DACE4(v35);
  sub_1C97ABFF0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v92 - v38;
  v40 = &v92 + *(v37 + 56) - v38;
  sub_1C981CE50(v98, &v92 - v38);
  v41 = v99;
  v99 = v40;
  sub_1C981CE50(v41, v40);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v64 = sub_1C9871794();
      sub_1C981CE50(v64, v65);
      memcpy(v106, v32, 0x49uLL);
      if (sub_1C987175C() != 1)
      {
        sub_1C986EB48(v106);
        goto LABEL_40;
      }

      v66 = sub_1C9871A18();
      memcpy(v66, v67, 0x49uLL);
      if (v106[0] == v105[0])
      {
        memcpy(v101, v32 + 8, 0x41uLL);
        memcpy(v100, v24 + 8, 0x41uLL);
        v68 = static AudioConfiguration.== infix(_:_:)(v101, v100);
        memcpy(v102, v100, 0x41uLL);
        sub_1C9801940(v106, v104);
        sub_1C9801940(v105, v104);
        sub_1C97E8084(v102);
        memcpy(v103, v101, 0x41uLL);
        sub_1C97E8084(v103);
        sub_1C986EB48(v105);
        sub_1C986EB48(v106);
        if (v68)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1C986EB48(v105);
        sub_1C986EB48(v106);
      }

      sub_1C9871638();
      goto LABEL_41;
    case 2u:
      v50 = sub_1C9871A74();
      sub_1C981CE50(v50, v51);
      memcpy(v106, v3, 0x41uLL);
      if (sub_1C987175C() == 2)
      {
        v52 = sub_1C98718B8();
        memcpy(v52, v53, 0x41uLL);
        memcpy(v102, v3, 0x41uLL);
        sub_1C98719DC(v101);
        static AudioConfiguration.== infix(_:_:)(v102, v101);
        v54 = sub_1C98718FC();
        memcpy(v54, v55, 0x41uLL);
        sub_1C986F240(v106, v105);
        sub_1C986F240(v103, v105);
        sub_1C97E8084(v104);
        memcpy(v105, v102, 0x41uLL);
        sub_1C97E8084(v105);
        sub_1C986EAF4(v103);
        sub_1C986EAF4(v106);
        goto LABEL_43;
      }

      sub_1C986EAF4(v106);
      goto LABEL_40;
    case 3u:
      sub_1C981CE50(v39, v2);
      memcpy(v106, v2, 0x41uLL);
      if (sub_1C987175C() == 3)
      {
        v56 = sub_1C98718B8();
        memcpy(v56, v57, 0x41uLL);
        memcpy(v102, v2, 0x41uLL);
        sub_1C98719DC(v101);
        static AudioConfiguration.== infix(_:_:)(v102, v101);
        v58 = sub_1C98718FC();
        memcpy(v58, v59, 0x41uLL);
        sub_1C986EA44(v106, v105);
        sub_1C986EA44(v103, v105);
        sub_1C97E8084(v104);
        memcpy(v105, v102, 0x41uLL);
        sub_1C97E8084(v105);
        sub_1C986EAA0(v103);
        sub_1C986EAA0(v106);
        goto LABEL_43;
      }

      sub_1C986EAA0(v106);
      goto LABEL_40;
    case 4u:
      sub_1C981CE50(v39, v27);
      memcpy(v106, v27, 0x79uLL);
      if (sub_1C987175C() == 4)
      {
        v42 = sub_1C9871A18();
        memcpy(v42, v43, 0x79uLL);
        memcpy(v104, v27, 0x79uLL);
        v44 = sub_1C98718B8();
        memcpy(v44, v45, 0x79uLL);
        v46 = sub_1C9871A0C();
        sub_1C9992C14(v46, v47);
        v48 = sub_1C9871A00();
        sub_1C986E9F0(v48);
        sub_1C986E9F0(v106);
        goto LABEL_43;
      }

      sub_1C986E9F0(v106);
      goto LABEL_40;
    case 5u:
      sub_1C981CE50(v39, v24);
      memcpy(v106, v24, 0x71uLL);
      v10 = v99;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        memcpy(v105, v10, 0x71uLL);
        memcpy(v104, v24, 0x71uLL);
        memcpy(v103, v10, 0x71uLL);
        v69 = sub_1C9871A0C();
        sub_1C97F3908(v69, v70);
        v71 = sub_1C9871A00();
        sub_1C97F9A64(v71);
        sub_1C97F9A64(v106);
        goto LABEL_43;
      }

      sub_1C97F9A64(v106);
      goto LABEL_40;
    case 6u:
      v10 = v94;
      sub_1C981CE50(v39, v94);
      memcpy(v106, v10, 0x51uLL);
      if (sub_1C987175C() == 6)
      {
        v72 = sub_1C9871A18();
        memcpy(v72, v73, 0x51uLL);
        memcpy(v104, v10, 0x51uLL);
        v74 = sub_1C98718B8();
        memcpy(v74, v75, 0x51uLL);
        sub_1C9871A0C();
        sub_1C98AA76C();
        v76 = sub_1C9871A00();
        sub_1C986E99C(v76);
        sub_1C986E99C(v106);
        goto LABEL_43;
      }

      sub_1C986E99C(v106);
      goto LABEL_40;
    case 7u:
      v10 = v96;
      sub_1C981CE50(v39, v96);
      memcpy(v106, v10, 0xD1uLL);
      if (sub_1C987175C() == 7)
      {
        v60 = sub_1C98718B8();
        memcpy(v60, v61, 0xD1uLL);
        memcpy(v102, v10, 0xD1uLL);
        memcpy(v101, v24, 0xD1uLL);
        sub_1C986EFE8(v106, v105);
        sub_1C986EFE8(v103, v105);
        sub_1C995CA78();
        v62 = sub_1C98718FC();
        memcpy(v62, v63, 0xD1uLL);
        sub_1C986F194(v104);
        memcpy(v105, v102, 0xD1uLL);
        sub_1C986F194(v105);
        sub_1C9866824(v103);
        sub_1C9866824(v106);
        goto LABEL_43;
      }

      sub_1C9866824(v106);
      goto LABEL_40;
    case 8u:
      sub_1C981CE50(v39, v93);
      if (sub_1C9871AE8() != 8)
      {
        goto LABEL_31;
      }

      v80 = sub_1C9871974();
      v49 = sub_1C9809168(v80, v81);
      goto LABEL_30;
    case 9u:
      sub_1C981CE50(v39, v95);
      if (sub_1C9871AE8() != 9)
      {
LABEL_31:

        goto LABEL_40;
      }

      sub_1C9871974();
      v49 = sub_1C9808F7C();
LABEL_30:
      v82 = v49;

      LOBYTE(v10) = v82 & (v4 == v5);
      goto LABEL_43;
    case 0xAu:
      v77 = v97;
      sub_1C981CE50(v39, v97);
      if (sub_1C987175C() == 10)
      {
        sub_1C9871600();
        v78 = v92;
        sub_1C986FB68(v24, v92, v79);
        LOBYTE(v10) = static AOPClassificationDemo.Request.== infix(_:_:)(v77, v78);
        sub_1C986F1E8(v78, type metadata accessor for AOPClassificationDemo.Request);
        sub_1C986F1E8(v77, type metadata accessor for AOPClassificationDemo.Request);
        goto LABEL_43;
      }

      sub_1C987154C();
      sub_1C986F1E8(v77, v83);
      goto LABEL_40;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_40;
      }

      goto LABEL_9;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_40;
      }

LABEL_9:
      sub_1C9871638();
      LOBYTE(v10) = 1;
      return v10 & 1;
    default:
      sub_1C981CE50(v39, v34);
      memcpy(v106, v34, 0xB9uLL);
      if (sub_1C987175C())
      {
        sub_1C986EB9C(v106);
LABEL_40:
        sub_1C97DA1E0(v39, &qword_1EC3C9B58);
LABEL_41:
        LOBYTE(v10) = 0;
      }

      else
      {
        v84 = sub_1C9871A18();
        memcpy(v84, v85, 0xB9uLL);
        memcpy(v104, v34, 0xB9uLL);
        v86 = sub_1C98718B8();
        memcpy(v86, v87, 0xB9uLL);
        v88 = sub_1C9871A0C();
        sub_1C992E530(v88, v89);
        v90 = sub_1C9871A00();
        sub_1C986EB9C(v90);
        sub_1C986EB9C(v106);
LABEL_43:
        sub_1C9871638();
      }

      return v10 & 1;
  }
}

uint64_t sub_1C9862F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C706D617865 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C9AD7160 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7455686365657073 && a2 == 0xEF65636E61726574;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D45686365657073 && a2 == 0xED00006E6F69746FLL;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x76654C6F69647561 && a2 == 0xEA00000000006C65;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D617A616873 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746544646E756F73 && a2 == 0xEE006E6F69746365;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C9AD7180 == a2;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001DLL && 0x80000001C9AD71A0 == a2;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x80000001C9AD71C0 == a2;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7865745F50414C43 && a2 == 0xE900000000000074;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6475615F50414C43 && a2 == 0xEA00000000006F69;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000015 && 0x80000001C9AD71E0 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C9A93B18();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1C9863370(char a1)
{
  result = 0x656C706D617865;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x7455686365657073;
      break;
    case 3:
      result = 0x6D45686365657073;
      break;
    case 4:
      result = 0x76654C6F69647561;
      break;
    case 5:
      result = 0x6D617A616873;
      break;
    case 6:
      result = 0x746544646E756F73;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0x7865745F50414C43;
      break;
    case 11:
      result = 0x6475615F50414C43;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9863520(void *a1)
{
  v175 = sub_1C97A2CEC(&qword_1EC3C9B60);
  sub_1C97AE9C8();
  v147 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AC02C();
  v174 = v4;
  v172 = type metadata accessor for AOPClassificationDemo.Request();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v173 = v7 - v6;
  v171 = sub_1C97A2CEC(&qword_1EC3C9B68);
  sub_1C97AE9C8();
  v146 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v170 = v10;
  v169 = sub_1C97A2CEC(&qword_1EC3C9B70);
  sub_1C97AE9C8();
  v145 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v168 = v13;
  v167 = sub_1C97A2CEC(&qword_1EC3C9B78);
  sub_1C97AE9C8();
  v144[8] = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AC02C();
  v165 = v16;
  v166 = sub_1C97A2CEC(&qword_1EC3C9B80);
  sub_1C97AE9C8();
  v144[7] = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AC02C();
  v164 = v19;
  v163 = sub_1C97A2CEC(&qword_1EC3C9B88);
  sub_1C97AE9C8();
  v144[6] = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  v162 = v22;
  v161 = sub_1C97A2CEC(&qword_1EC3C9B90);
  sub_1C97AE9C8();
  v144[5] = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AC02C();
  v160 = v25;
  v159 = sub_1C97A2CEC(&qword_1EC3C9B98);
  sub_1C97AE9C8();
  v144[4] = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v158 = v28;
  v157 = sub_1C97A2CEC(&qword_1EC3C9BA0);
  sub_1C97AE9C8();
  v144[3] = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v156 = v31;
  v155 = sub_1C97A2CEC(&qword_1EC3C9BA8);
  sub_1C97AE9C8();
  v144[2] = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v154 = v34;
  sub_1C97A2CEC(&qword_1EC3C9BB0);
  sub_1C97AE9C8();
  v152 = v36;
  v153 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v151 = v38;
  sub_1C97A2CEC(&qword_1EC3C9BB8);
  sub_1C97AE9C8();
  v149 = v40;
  v150 = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97AC02C();
  v148 = v42;
  sub_1C97A2CEC(&qword_1EC3C9BC0);
  sub_1C97AE9C8();
  v144[1] = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v144 - v45;
  type metadata accessor for RemoteRequest();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AEAD8();
  v50 = (v49 - v48);
  v179 = sub_1C97A2CEC(&qword_1EC3C9BC8);
  sub_1C97AE9C8();
  v176 = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v144 - v53;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C986F29C();
  v178 = v54;
  sub_1C9A93DD8();
  sub_1C981CE50(v177, v50);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v111 = sub_1C98718A0();
      memcpy(v111, v112, 0x49uLL);
      v180 = 2;
      sub_1C986F92C();
      sub_1C98715B4();
      v113 = sub_1C9871894();
      memcpy(v113, v114, 0x49uLL);
      sub_1C986F980();
      sub_1C9871778();
      v115 = sub_1C98715A4();
      v116(v115);
      v117 = sub_1C9871590();
      v118(v117);
      return sub_1C986EB48(&v181);
    case 2u:
      v87 = sub_1C98718A0();
      memcpy(v87, v88, 0x41uLL);
      v180 = 3;
      sub_1C986F884();
      sub_1C98715B4();
      v89 = sub_1C9871894();
      memcpy(v89, v90, 0x41uLL);
      sub_1C986F8D8();
      sub_1C9871778();
      v91 = sub_1C98715A4();
      v92(v91);
      v93 = sub_1C9871590();
      v94(v93);
      return sub_1C986EAF4(&v181);
    case 3u:
      v95 = sub_1C98718A0();
      memcpy(v95, v96, 0x41uLL);
      v180 = 4;
      sub_1C986F7DC();
      sub_1C98715B4();
      v97 = sub_1C9871894();
      memcpy(v97, v98, 0x41uLL);
      sub_1C986F830();
      sub_1C9871778();
      v99 = sub_1C98715A4();
      v100(v99);
      v101 = sub_1C9871590();
      v102(v101);
      return sub_1C986EAA0(&v181);
    case 4u:
      v70 = sub_1C98718A0();
      memcpy(v70, v71, 0x79uLL);
      v180 = 5;
      sub_1C986F734();
      sub_1C98715B4();
      v72 = sub_1C9871894();
      memcpy(v72, v73, 0x79uLL);
      sub_1C986F788();
      sub_1C9871778();
      v74 = sub_1C98715A4();
      v75(v74);
      v76 = sub_1C9871590();
      v77(v76);
      return sub_1C986E9F0(&v181);
    case 5u:
      v119 = sub_1C98718A0();
      memcpy(v119, v120, 0x71uLL);
      v180 = 6;
      sub_1C986F68C();
      sub_1C98715B4();
      v121 = sub_1C9871894();
      memcpy(v121, v122, 0x71uLL);
      sub_1C986F6E0();
      sub_1C9871778();
      v123 = sub_1C98715A4();
      v124(v123);
      v125 = sub_1C9871590();
      v126(v125);
      return sub_1C97F9A64(&v181);
    case 6u:
      v127 = sub_1C98718A0();
      memcpy(v127, v128, 0x51uLL);
      v180 = 7;
      sub_1C986F5E4();
      sub_1C98715B4();
      v129 = sub_1C9871894();
      memcpy(v129, v130, 0x51uLL);
      sub_1C986F638();
      sub_1C9871778();
      v131 = sub_1C98715A4();
      v132(v131);
      v133 = sub_1C9871590();
      v134(v133);
      return sub_1C986E99C(&v181);
    case 7u:
      v103 = sub_1C98718A0();
      memcpy(v103, v104, 0xD1uLL);
      v180 = 8;
      sub_1C986F53C();
      sub_1C98715B4();
      v105 = sub_1C9871894();
      memcpy(v105, v106, 0xD1uLL);
      sub_1C986F590();
      sub_1C9871778();
      v107 = sub_1C98715A4();
      v108(v107);
      v109 = sub_1C9871590();
      v110(v109);
      return sub_1C9866824(&v181);
    case 8u:
      v141 = *v50;
      v142 = v50[1];
      LOBYTE(v181) = 10;
      sub_1C986F3EC();
      v82 = v168;
      v84 = v178;
      v83 = v179;
      sub_1C9871628();
      sub_1C9A93988();
      v181 = v141;
      v182 = v142;
      sub_1C986F440();
      v85 = v169;
      sub_1C9A93A18();
      v86 = v145;
      goto LABEL_17;
    case 9u:
      v80 = *v50;
      v81 = v50[1];
      LOBYTE(v181) = 11;
      sub_1C986F344();
      v82 = v170;
      v84 = v178;
      v83 = v179;
      sub_1C9871628();
      sub_1C9A93988();
      v181 = v80;
      v182 = v81;
      sub_1C986F398();
      v85 = v171;
      sub_1C9A93A18();
      v86 = v146;
LABEL_17:
      (*(v86 + 8))(v82, v85);
      sub_1C98717B8();
      v143(v84, v83);

    case 0xAu:
      v135 = v173;
      sub_1C986FB68(v50, v173, type metadata accessor for AOPClassificationDemo.Request);
      LOBYTE(v181) = 12;
      sub_1C986F2F0();
      sub_1C98715B4();
      sub_1C98717A0();
      sub_1C986FB24(v136, v137);
      sub_1C9A93A18();
      v138 = sub_1C98715A4();
      v139(v138);
      sub_1C987154C();
      sub_1C986F1E8(v135, v140);
      goto LABEL_14;
    case 0xBu:
      LOBYTE(v181) = 0;
      sub_1C986FA7C();
      v65 = v178;
      v54 = v179;
      sub_1C9A93988();
      sub_1C986FAD0();
      sub_1C9A93A18();
      v66 = sub_1C9871A74();
      v67(v66);
      sub_1C98717B8();
      v69 = v65;
      goto LABEL_15;
    case 0xCu:
      LOBYTE(v181) = 9;
      sub_1C986F494();
      sub_1C98715B4();
      sub_1C986F4E8();
      sub_1C9A93A18();
      v78 = sub_1C98715A4();
      v79(v78);
LABEL_14:
      sub_1C98717B8();
      v69 = v46;
LABEL_15:
      result = v68(v69, v54);
      break;
    default:
      v55 = sub_1C98718A0();
      memcpy(v55, v56, 0xB9uLL);
      v180 = 1;
      sub_1C986F9D4();
      v57 = v178;
      v58 = v179;
      sub_1C9A93988();
      v59 = sub_1C9871894();
      memcpy(v59, v60, 0xB9uLL);
      sub_1C986FA28();
      sub_1C9871778();
      v61 = sub_1C98715A4();
      v62(v61);
      sub_1C98717B8();
      v63(v57, v58);
      result = sub_1C986EB9C(&v181);
      break;
  }

  return result;
}

uint64_t sub_1C98643CC(uint64_t a1)
{
  v3 = sub_1C9A91558();
  sub_1C97AE9C8();
  v53[1] = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v6 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v6);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v53 - v8;
  type metadata accessor for AOPClassificationDemo.Request();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v13 = v12 - v11;
  type metadata accessor for RemoteRequest();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = (v16 - v15);
  sub_1C981CE50(v1, v16 - v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = sub_1C98718AC();
      memcpy(v39, v40, 0x49uLL);
      MEMORY[0x1CCA91980](2);
      MEMORY[0x1CCA91980](*v55);
      memcpy(v54, &v55[8], 0x41uLL);
      sub_1C98717D0();
      AudioConfiguration.hash(into:)();
      return sub_1C986EB48(v55);
    case 2u:
      v30 = sub_1C98718AC();
      memcpy(v30, v31, 0x41uLL);
      MEMORY[0x1CCA91980](3);
      v32 = sub_1C9871ADC();
      memcpy(v32, v33, 0x41uLL);
      sub_1C98717D0();
      AudioConfiguration.hash(into:)();
      return sub_1C986EAF4(v55);
    case 3u:
      v34 = sub_1C98718AC();
      memcpy(v34, v35, 0x41uLL);
      MEMORY[0x1CCA91980](4);
      v36 = sub_1C9871ADC();
      memcpy(v36, v37, 0x41uLL);
      sub_1C98717D0();
      AudioConfiguration.hash(into:)();
      return sub_1C986EAA0(v55);
    case 4u:
      v24 = sub_1C98718AC();
      memcpy(v24, v25, 0x79uLL);
      MEMORY[0x1CCA91980](5);
      v26 = sub_1C9871ADC();
      memcpy(v26, v27, 0x79uLL);
      sub_1C98717D0();
      sub_1C9992EBC();
      return sub_1C986E9F0(v55);
    case 5u:
      v41 = sub_1C98718AC();
      memcpy(v41, v42, 0x71uLL);
      MEMORY[0x1CCA91980](6);
      v54[0] = *v55;
      LOBYTE(v54[1]) = v55[16];
      sub_1C98717D0();
      sub_1C97F1884();
      sub_1C9871998();
      sub_1C9A92528();
      sub_1C9A92528();

      memcpy(v54, &v55[48], 0x41uLL);
      sub_1C98717D0();
      AudioConfiguration.hash(into:)();
      return sub_1C97F9A64(v55);
    case 6u:
      v43 = sub_1C98718AC();
      memcpy(v43, v44, 0x51uLL);
      MEMORY[0x1CCA91980](7);
      sub_1C9A92528();
      memcpy(v54, &v55[16], 0x41uLL);
      sub_1C98717D0();
      AudioConfiguration.hash(into:)();
      return sub_1C986E99C(v55);
    case 7u:
      memcpy(v54, v17, 0xD1uLL);
      MEMORY[0x1CCA91980](8);
      memcpy(v55, v54, sizeof(v55));
      if (sub_1C986EFE0(v55) != 1)
      {
        v47 = *nullsub_1(v55);
        MEMORY[0x1CCA91980](0);
        v23 = v47;
        goto LABEL_6;
      }

      v38 = nullsub_1(v55);
      memcpy(v56, (v38 + 16), sizeof(v56));
      MEMORY[0x1CCA91980](1);
      sub_1C9871998();
      sub_1C9A92528();
      sub_1C99632D4();
      return sub_1C986F194(v54);
    case 8u:
      v29 = v17[1];
      MEMORY[0x1CCA91980](10);
      sub_1C97C8244();
      goto LABEL_18;
    case 9u:
      v28 = *v17;
      v29 = v17[1];
      MEMORY[0x1CCA91980](11);
      sub_1C97C8128(a1, v28);
LABEL_18:
      v46 = 0.0;
      if (v29 != 0.0)
      {
        v46 = v29;
      }

      MEMORY[0x1CCA919B0](*&v46);

    case 0xAu:
      sub_1C9871600();
      sub_1C986FB68(v17, v13, v45);
      MEMORY[0x1CCA91980](12);
      sub_1C97E82EC(v13, v9, &qword_1EC3C7FE0);
      if (sub_1C97ABF20(v9, 1, v3) == 1)
      {
        sub_1C9A93CE8();
      }

      else
      {
        v48 = sub_1C9871A74();
        v49(v48);
        sub_1C9A93CE8();
        sub_1C986FB24(&qword_1EC3C6BA0, MEMORY[0x1E6968FB0]);
        sub_1C9A92398();
        v50 = sub_1C9871794();
        v51(v50);
      }

      sub_1C9A93CE8();
      sub_1C987154C();
      return sub_1C986F1E8(v13, v52);
    case 0xBu:
      v23 = 0;
      goto LABEL_6;
    case 0xCu:
      v23 = 9;
LABEL_6:
      result = MEMORY[0x1CCA91980](v23);
      break;
    default:
      v18 = sub_1C98718AC();
      memcpy(v18, v19, 0xB9uLL);
      MEMORY[0x1CCA91980](1);
      v20 = sub_1C9871ADC();
      memcpy(v20, v21, 0x78uLL);
      sub_1C98717D0();
      sub_1C992DEB4();
      memcpy(v54, &v55[120], 0x41uLL);
      sub_1C98717D0();
      AudioConfiguration.hash(into:)();
      result = sub_1C986EB9C(v55);
      break;
  }

  return result;
}

uint64_t sub_1C9864A00()
{
  sub_1C9A93CC8();
  sub_1C98643CC(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9864A40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v218 = a2;
  v6 = sub_1C97A2CEC(&qword_1EC3C9CA8);
  sub_1C97ABF78(v6, v231);
  v211 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AC02C();
  sub_1C97ABFB4(v9);
  v10 = sub_1C97A2CEC(&qword_1EC3C9CB0);
  sub_1C97ABF78(v10, v230);
  v219 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  sub_1C97ABFB4(v13);
  v14 = sub_1C97A2CEC(&qword_1EC3C9CB8);
  sub_1C97ABF78(v14, v229);
  v208 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AC02C();
  sub_1C97ABFB4(v17);
  v18 = sub_1C97A2CEC(&qword_1EC3C9CC0);
  sub_1C97ABF78(v18, v228);
  v207 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AC02C();
  sub_1C97ABFB4(v21);
  v22 = sub_1C97A2CEC(&qword_1EC3C9CC8);
  sub_1C97ABF78(v22, v227);
  v206 = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AC02C();
  sub_1C97ABFB4(v25);
  v26 = sub_1C97A2CEC(&qword_1EC3C9CD0);
  sub_1C97ABF78(v26, v226);
  v205 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  sub_1C97ABFB4(v29);
  v30 = sub_1C97A2CEC(&qword_1EC3C9CD8);
  sub_1C97ABF78(v30, v225);
  v204 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  sub_1C97ABFB4(v33);
  v34 = sub_1C97A2CEC(&qword_1EC3C9CE0);
  sub_1C97ABF78(v34, &v223);
  v203 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  sub_1C97ABFB4(v37);
  v38 = sub_1C97A2CEC(&qword_1EC3C9CE8);
  sub_1C97ABF78(v38, v222);
  v202 = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  sub_1C97ABFB4(v41);
  v42 = sub_1C97A2CEC(&qword_1EC3C9CF0);
  sub_1C97ABF78(v42, v221);
  v200 = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  sub_1C97ABFB4(v45);
  v46 = sub_1C97A2CEC(&qword_1EC3C9CF8);
  sub_1C97ABF78(v46, v220);
  v199 = v47;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97AC02C();
  sub_1C97ABFB4(v49);
  v50 = sub_1C97A2CEC(&qword_1EC3C9D00);
  sub_1C97ABF78(v50, &v218);
  v198 = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C97AC02C();
  sub_1C97ABFB4(v53);
  v54 = sub_1C97A2CEC(&qword_1EC3C9D08);
  sub_1C97ABF78(v54, v216);
  v197 = v55;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  sub_1C97ABFB4(v57);
  v58 = sub_1C97A2CEC(&unk_1EC3C9D10);
  sub_1C97ABF78(v58, &v233);
  v220[1] = v59;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C9871A4C();
  v220[0] = type metadata accessor for RemoteRequest();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C9871A60();
  v72 = MEMORY[0x1EEE9AC00](v71);
  v74 = &v187 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72);
  v77 = &v187 - v76;
  MEMORY[0x1EEE9AC00](v75);
  sub_1C9871A38();
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v187 - v79;
  v81 = a1[3];
  v223 = a1;
  sub_1C97A5A8C(a1, v81);
  sub_1C986F29C();
  v221[0] = v2;
  v82 = v232;
  sub_1C9A93DB8();
  if (v82)
  {
LABEL_8:
    v105 = sub_1C9871AA8();
    return sub_1C97A592C(v105);
  }

  v189 = v3;
  v190 = v77;
  v191 = v74;
  v192 = v4;
  v83 = v221[1];
  v84 = v222[0];
  v232 = v80;
  v85 = sub_1C9A93958();
  result = sub_1C98EE524(v85, 0);
  if (v88 == v89 >> 1)
  {
    goto LABEL_7;
  }

  v188 = 0;
  if (v88 >= (v89 >> 1))
  {
    __break(1u);
    return result;
  }

  v90 = *(v87 + v88);
  v91 = sub_1C98EE520(v88 + 1);
  v93 = v92;
  v95 = v94;
  swift_unknownObjectRelease();
  v96 = v219;
  if (v93 != v95 >> 1)
  {
LABEL_7:
    v98 = v220[0];
    v99 = sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v101 = v100;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v101 = v98;
    v102 = v222[1];
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v99 - 8) + 104))(v101, *MEMORY[0x1E69E6AF8], v99);
    swift_willThrow();
    swift_unknownObjectRelease();
    v103 = sub_1C9871674();
    v104(v103, v102);
    goto LABEL_8;
  }

  v97 = v218;
  switch(v90)
  {
    case 1:
      sub_1C9871750(1);
      sub_1C986F9D4();
      sub_1C9871564();
      v162 = 0;
      sub_1C986FF10();
      sub_1C9871618();
      sub_1C9A938F8();
      sub_1C987152C();
      swift_unknownObjectRelease();
      (*v83)(v83, v84);
      v163 = sub_1C9871724();
      v164(v163);
      v165 = sub_1C98717C4(&v208);
      memcpy(v165, v166, 0xB9uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 2:
      sub_1C9871750(2);
      sub_1C986F92C();
      sub_1C9871888();
      sub_1C9871618();
      v117 = v188;
      sub_1C9A93858();
      if (v117)
      {
        goto LABEL_16;
      }

      sub_1C986FEBC();
      v162 = v201;
      sub_1C9A938F8();
      v138 = (v199 + 8);
      v188 = 0;
      swift_unknownObjectRelease();
      (*v138)(v96, v162);
      v154 = sub_1C97E8884();
      v155(v154);
      v156 = sub_1C98717C4(v209);
      memcpy(v156, v157, 0x49uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 3:
      sub_1C9871750(3);
      sub_1C986F884();
      sub_1C9871564();
      v162 = 0;
      sub_1C986FE68();
      sub_1C9871618();
      sub_1C987195C();
      sub_1C987152C();
      swift_unknownObjectRelease();
      v120 = sub_1C9871740();
      v121(v120);
      v122 = sub_1C9871724();
      v123(v122);
      v124 = sub_1C98717C4(v210);
      memcpy(v124, v125, 0x41uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 4:
      sub_1C9871750(4);
      sub_1C986F7DC();
      sub_1C9871888();
      sub_1C9871564();
      v162 = 0;
      sub_1C986FE14();
      sub_1C9871618();
      sub_1C987195C();
      sub_1C987152C();
      swift_unknownObjectRelease();
      v107 = sub_1C9871740();
      v108(v107);
      v109 = sub_1C9871724();
      v110(v109);
      v111 = sub_1C98717C4(&v211);
      memcpy(v111, v112, 0x41uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 5:
      sub_1C9871750(5);
      sub_1C986F734();
      sub_1C9871564();
      v162 = 0;
      sub_1C986FDC0();
      sub_1C9A938F8();
      sub_1C987152C();
      swift_unknownObjectRelease();
      v167 = sub_1C9871794();
      v168(v167);
      v169 = sub_1C9871A94();
      v170(v169);
      v171 = sub_1C98717C4(v212);
      memcpy(v171, v172, 0x79uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 6:
      sub_1C9871750(6);
      sub_1C986F68C();
      sub_1C9871888();
      sub_1C9871564();
      v162 = 0;
      sub_1C986FD6C();
      sub_1C9871618();
      sub_1C987195C();
      sub_1C987152C();
      swift_unknownObjectRelease();
      v132 = sub_1C9871740();
      v133(v132);
      v134 = sub_1C9871724();
      v135(v134);
      v136 = sub_1C98717C4(v213);
      memcpy(v136, v137, 0x71uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 7:
      sub_1C9871750(7);
      sub_1C986F5E4();
      sub_1C9871888();
      sub_1C9871564();
      v162 = 0;
      sub_1C986FD18();
      sub_1C9871618();
      sub_1C987195C();
      sub_1C987152C();
      swift_unknownObjectRelease();
      v126 = sub_1C9871740();
      v127(v126);
      v128 = sub_1C9871724();
      v129(v128);
      v130 = sub_1C98717C4(v214);
      memcpy(v130, v131, 0x51uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 8:
      sub_1C9871750(8);
      sub_1C986F53C();
      sub_1C9871888();
      sub_1C9871564();
      v162 = 0;
      sub_1C986FCC4();
      sub_1C9871618();
      sub_1C987195C();
      sub_1C987152C();
      swift_unknownObjectRelease();
      v179 = sub_1C9871740();
      v180(v179);
      v181 = sub_1C9871724();
      v182(v181);
      v183 = sub_1C98717C4(v215);
      memcpy(v183, v184, 0xD1uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 9:
      sub_1C9871750(9);
      sub_1C986F494();
      sub_1C9871888();
      sub_1C9871564();
      sub_1C986FC70();
      sub_1C9871628();
      sub_1C9A938F8();
      sub_1C9871688();
      swift_unknownObjectRelease();
      v150 = sub_1C9871660();
      v151(v150);
      v152 = sub_1C9871734();
      v153(v152);
      v162 = v193;
      sub_1C98715D8();
      goto LABEL_25;
    case 10:
      sub_1C9871750(10);
      sub_1C986F3EC();
      sub_1C9871888();
      sub_1C9871564();
      sub_1C986FC1C();
      sub_1C9871618();
      sub_1C987195C();
      sub_1C9871688();
      swift_unknownObjectRelease();
      v173 = sub_1C9871660();
      v174(v173);
      v175 = sub_1C9871734();
      v176(v175);
      v177 = sub_1C9871AB4();
      v162 = v194;
      *v194 = v178;
      *(v162 + 8) = v177;
      sub_1C98715D8();
      goto LABEL_25;
    case 11:
      sub_1C9871750(11);
      sub_1C986F344();
      v106 = v217;
      sub_1C9871564();
      sub_1C986FBC8();
      sub_1C9871618();
      sub_1C9A938F8();
      sub_1C9871688();
      swift_unknownObjectRelease();
      (*(v96 + 8))(v106, v84);
      v139 = sub_1C9871734();
      v140(v139);
      v141 = sub_1C9871AB4();
      v162 = v195;
      *v195 = v142;
      *(v162 + 8) = v141;
      sub_1C98715D8();
      goto LABEL_25;
    case 12:
      sub_1C9871750(12);
      sub_1C986F2F0();
      sub_1C9871618();
      v113 = v188;
      sub_1C9A93858();
      if (v113)
      {
LABEL_16:
        v118 = sub_1C9871674();
        v119(v118, v84);
        swift_unknownObjectRelease();
        v105 = sub_1C9871AA8();
        return sub_1C97A592C(v105);
      }

      type metadata accessor for AOPClassificationDemo.Request();
      sub_1C98717A0();
      sub_1C986FB24(v114, v115);
      v116 = v196;
      sub_1C9A938F8();
      sub_1C9871688();
      swift_unknownObjectRelease();
      v143 = sub_1C98715A4();
      v144(v143);
      v145 = sub_1C97E8884();
      v146(v145);
      swift_storeEnumTagMultiPayload();
      sub_1C98715E8();
      v147 = v232;
      sub_1C986FB68(v116, v232, v148);
      v149 = v223;
      v97 = v218;
LABEL_26:
      sub_1C98715E8();
      sub_1C986FB68(v147, v97, v186);
      result = sub_1C97A592C(v149);
      break;
    default:
      v224 = 0;
      sub_1C986FA7C();
      sub_1C9871888();
      sub_1C9871564();
      sub_1C986FF64();
      sub_1C9871628();
      sub_1C9A938F8();
      v188 = 0;
      swift_unknownObjectRelease();
      v158 = sub_1C9871660();
      v159(v158);
      v160 = sub_1C9871674();
      v161(v160, v91);
      v162 = v189;
      sub_1C98715D8();
LABEL_25:
      swift_storeEnumTagMultiPayload();
      sub_1C98715E8();
      v147 = v232;
      sub_1C986FB68(v162, v232, v185);
      v149 = v223;
      goto LABEL_26;
  }

  return result;
}

uint64_t sub_1C9865FCC(uint64_t a1)
{
  v2 = sub_1C986F494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866008(uint64_t a1)
{
  v2 = sub_1C986F494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9866044(uint64_t a1)
{
  v2 = sub_1C986F53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866080(uint64_t a1)
{
  v2 = sub_1C986F53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98660BC(uint64_t a1)
{
  v2 = sub_1C986F2F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98660F8(uint64_t a1)
{
  v2 = sub_1C986F2F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9866134(uint64_t a1)
{
  v2 = sub_1C986F7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866170(uint64_t a1)
{
  v2 = sub_1C986F7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98661AC(uint64_t a1)
{
  v2 = sub_1C986F344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98661E8(uint64_t a1)
{
  v2 = sub_1C986F344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9866224(uint64_t a1)
{
  v2 = sub_1C986F3EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866260(uint64_t a1)
{
  v2 = sub_1C986F3EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98662A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9862F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98662CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9863368();
  *a1 = result;
  return result;
}

uint64_t sub_1C98662F4(uint64_t a1)
{
  v2 = sub_1C986F29C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866330(uint64_t a1)
{
  v2 = sub_1C986F29C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C986636C(uint64_t a1)
{
  v2 = sub_1C986F5E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98663A8(uint64_t a1)
{
  v2 = sub_1C986F5E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98663E4(uint64_t a1)
{
  v2 = sub_1C986FA7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866420(uint64_t a1)
{
  v2 = sub_1C986FA7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C986645C(uint64_t a1)
{
  v2 = sub_1C986F734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866498(uint64_t a1)
{
  v2 = sub_1C986F734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98664D4(uint64_t a1)
{
  v2 = sub_1C986F9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866510(uint64_t a1)
{
  v2 = sub_1C986F9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C986654C(uint64_t a1)
{
  v2 = sub_1C986F68C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866588(uint64_t a1)
{
  v2 = sub_1C986F68C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98665C4(uint64_t a1)
{
  v2 = sub_1C986F884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866600(uint64_t a1)
{
  v2 = sub_1C986F884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C986663C(uint64_t a1)
{
  v2 = sub_1C986F92C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866678(uint64_t a1)
{
  v2 = sub_1C986F92C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98666BC()
{
  sub_1C9A93CC8();
  sub_1C98643CC(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C986672C(uint64_t a1)
{
  result = sub_1C986FB24(&qword_1EC3CBB40, type metadata accessor for RemoteRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C9866784(uint64_t a1)
{
  result = sub_1C986FB24(&qword_1EC3C98F0, type metadata accessor for RemoteRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C9866878(uint64_t a1, uint64_t a2, int a3, void *__src)
{
  memcpy(__dst, __src, 0x41uLL);
  v11 = a1;
  v12 = a2;
  sub_1C97A6264(__src, &v9);
  v7 = sub_1C97DD36C(__dst);
  sub_1C97DA1E0(__dst, &unk_1EC3C9940);
  return v7;
}

void sub_1C98669D4(const void *a1, uint64_t (*a2)(_BYTE *), void *a3)
{
  v77 = a3;
  v78 = a2;
  v70 = sub_1C97A2CEC(&unk_1EC3CE960);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v59 - v4;
  v76 = sub_1C97A2CEC(&unk_1EC3C9A60);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v59 - v5;
  v74 = sub_1C97A2CEC(&unk_1EC3CE970);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v59 - v6;
  v7 = sub_1C97A2CEC(&qword_1EC3C9A70);
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  v10 = sub_1C97A2CEC(&qword_1EC3C9A78);
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v13 = sub_1C97A2CEC(&unk_1EC3C9A80);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - v15;
  memcpy(__dst, a1, 0x41uLL);
  *&__dst[68] = 0x40467A0000;
  *&__dst[76] = 0x45EA600042FA0000;
  *&__dst[84] = 0x3C23D70A00000002;
  __dst[92] = 0;
  *&__dst[96] = xmmword_1C9AA7B00;
  *&__dst[112] = 0;
  sub_1C97E82EC(a1, v80, &qword_1EC3C7690);
  v17 = v82;
  v18 = v78(__dst);
  if (v17)
  {
    memcpy(v80, __dst, sizeof(v80));
    sub_1C97DA1E0(v80, &qword_1EC3C7360);
    return;
  }

  v77 = a1;
  v62 = v12;
  v78 = v9;
  v63 = v16;
  v64 = v14;
  v82 = v18;
  v65 = v7;
  v66 = v13;
  memcpy(v80, __dst, sizeof(v80));
  sub_1C97DA1E0(v80, &qword_1EC3C7360);
  v19 = objc_autoreleasePoolPush();
  v20 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
    swift_once();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = 21;
  LOWORD(v79) = 21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  *(&v59 - 4) = sub_1C9834EC4;
  *(&v59 - 3) = v22;
  *(&v59 - 2) = &v79;

  v23 = sub_1C97E2E88();
  v24 = v10;

  objc_autoreleasePoolPop(v20);
  objc_autoreleasePoolPop(v19);
  v25 = v23;
  v26 = *(v23 + 24);
  ObjectType = swift_getObjectType();
  v28 = (*(v26 + 16))(ObjectType, v26);
  sub_1C999AF90();
  v30 = v29;

  v31 = *(v30 + 16);

  if (v31 != 1 || (v32 = *(v25 + 24), v33 = swift_getObjectType(), v34 = (*(v32 + 16))(v33, v32), sub_1C999AF90(), v61 = 0, v36 = v35, v34, v37 = sub_1C98BBD24(v36), v39 = v38, , !v39))
  {
    sub_1C986EEEC();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v59 = v37;
  v60 = v39;
  v40 = sub_1C97AC6A0();
  v41 = v77[9];
  v79 = v40;
  sub_1C97A2CEC(&unk_1EC3CC280);
  v42 = sub_1C97A2CEC(&unk_1EC3CC290);
  sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
  v43 = v69;
  sub_1C9A91F68();

  v44 = v70;
  *(v43 + *(v70 + 60)) = 96;
  *(v43 + *(v44 + 64)) = v41;
  *(v43 + *(v44 + 68)) = v42;
  v45 = sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C9813064(&qword_1EC3C4FB0, &unk_1EC3CE960);
  v46 = v72;
  v77 = v45;
  sub_1C9A91F68();
  sub_1C97DA1E0(v43, &unk_1EC3CE960);
  *(swift_allocObject() + 16) = &unk_1F492A138;
  sub_1C97A2CEC(&qword_1EC3C8A38);
  v47 = v71;
  v48 = v76;
  sub_1C9A91C48();

  (*(v75 + 8))(v46, v48);
  v49 = v78;
  v50 = v61;
  sub_1C98B2FA8();
  (*(v73 + 8))(v47, v74);
  if (v50)
  {

LABEL_10:

    return;
  }

  v52 = swift_allocObject();
  v53 = v60;
  *(v52 + 16) = v59;
  *(v52 + 24) = v53;
  sub_1C9813064(&unk_1EC3C4AD0, &qword_1EC3C9A70);
  v54 = v62;
  v55 = v65;
  v61 = 0;
  sub_1C9A92048();

  (*(v68 + 8))(v49, v55);
  v56 = v63;
  sub_1C9A91CA8();
  (*(v67 + 8))(v54, v24);
  sub_1C9813064(&qword_1EC3C9AA8, &unk_1EC3C9A80);
  v57 = v66;
  v58 = sub_1C9A91F28();

  (*(v64 + 8))(v56, v57);
  type metadata accessor for SharedVGGish.Instance();
  *(swift_allocObject() + 16) = v58;
}

void sub_1C9867544(uint64_t a1, uint64_t (*a2)(void *))
{
  v79 = a2;
  v71 = a1;
  v73 = sub_1C97A2CEC(&unk_1EC3CE960);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v58 - v2;
  v3 = sub_1C97A2CEC(&unk_1EC3C9A60);
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v58 - v4;
  v5 = sub_1C97A2CEC(&unk_1EC3CE970);
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3C9A70);
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3C9A78);
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3C9A80);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - v16;
  v80[0] = 0x40467A0000;
  v80[1] = 0x45EA600042FA0000;
  v80[2] = 0x3C23D70A00000002;
  v81 = 0;
  v82 = xmmword_1C9AA7B00;
  v83 = 0;
  v18 = v84;
  v19 = v79(v80);
  if (!v18)
  {
    v66 = v7;
    v67 = v10;
    v68 = v13;
    v84 = 0;
    v62 = v17;
    v61 = v11;
    v63 = v15;
    v64 = v8;
    v65 = v14;
    v79 = v19;
    v20 = objc_autoreleasePoolPush();
    v21 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      swift_once();
    }

    v22 = swift_allocObject();
    *(v22 + 16) = 21;
    LOWORD(v80[0]) = 21;
    v23 = MEMORY[0x1EEE9AC00](v22);
    *(&v58 - 4) = sub_1C98351CC;
    *(&v58 - 3) = v23;
    *(&v58 - 2) = v80;

    v24 = v84;
    v25 = sub_1C97E2E88();
    v26 = v68;
    v27 = v78;
    if (v24)
    {

      objc_autoreleasePoolPop(v21);
      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v28 = v25;

      objc_autoreleasePoolPop(v21);
      objc_autoreleasePoolPop(v20);
      v29 = *(v28 + 24);
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 16))(ObjectType, v29);
      sub_1C999AF90();
      v33 = v32;

      v34 = *(v33 + 16);

      if (v34 == 1 && (v35 = *(v28 + 24), v36 = swift_getObjectType(), v37 = (*(v35 + 16))(v36, v35), sub_1C999AF90(), v39 = v38, v37, v40 = sub_1C98BBD24(v39), v42 = v41, , v42))
      {
        v59 = v40;
        v84 = v42;
        v80[0] = sub_1C97AC6A0();
        v60 = v28;
        sub_1C97A2CEC(&unk_1EC3CC280);
        v43 = sub_1C97A2CEC(&unk_1EC3CC290);
        sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
        v44 = v72;
        sub_1C9A91F68();

        v45 = v73;
        *(v44 + *(v73 + 60)) = 96;
        *(v44 + *(v45 + 64)) = v71;
        *(v44 + *(v45 + 68)) = v43;
        v46 = sub_1C97A2CEC(&qword_1EC3C9AA0);
        sub_1C9813064(&qword_1EC3C4FB0, &unk_1EC3CE960);
        v47 = v74;
        v73 = v46;
        sub_1C9A91F68();
        sub_1C97DA1E0(v44, &unk_1EC3CE960);
        *(swift_allocObject() + 16) = &unk_1F492A690;
        sub_1C97A2CEC(&qword_1EC3C8A38);
        v48 = v66;
        sub_1C9A91C48();

        (*(v77 + 8))(v47, v27);
        v49 = v67;
        sub_1C98B2FA8();
        (*(v75 + 8))(v48, v76);
        v51 = swift_allocObject();
        v52 = v84;
        *(v51 + 16) = v59;
        *(v51 + 24) = v52;
        v84 = 0;
        sub_1C9813064(&unk_1EC3C4AD0, &qword_1EC3C9A70);
        v53 = v64;
        sub_1C9A92048();

        (*(v70 + 8))(v49, v53);
        v54 = v62;
        v55 = v61;
        sub_1C9A91CA8();
        (*(v69 + 8))(v26, v55);
        sub_1C9813064(&qword_1EC3C9AA8, &unk_1EC3C9A80);
        v56 = v65;
        v57 = sub_1C9A91F28();

        (*(v63 + 8))(v54, v56);
        type metadata accessor for SharedVGGish.Instance();
        *(swift_allocObject() + 16) = v57;
      }

      else
      {
        sub_1C986EEEC();
        swift_allocError();
        *v50 = 1;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1C9867F7C(uint64_t a1)
{
  sub_1C97A2CEC(&unk_1EC3C73F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C9A9EDD0;
  *(v2 + 32) = a1;

  return v2;
}

double sub_1C9867FDC(double a1)
{
  sub_1C97A2CEC(&qword_1EC3C6CD0);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_1C9A9EDD0;
  *(v2 + 32) = a1;
  return result;
}

uint64_t sub_1C986802C(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3C68F0);
  sub_1C98719F4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C9A9EDD0;
  sub_1C97BD360(a1, v2 + 32);
  return v2;
}

uint64_t sub_1C9868088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v105 = type metadata accessor for AccessibilitySoundActions.Session();
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C97A2CEC(&qword_1EC3C9AE8);
  v96 = *(v97 - 8);
  v4 = MEMORY[0x1EEE9AC00](v97);
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v87 - v6;
  v103 = sub_1C97A2CEC(&qword_1EC3C7810);
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v87 - v7;
  v104 = sub_1C97A2CEC(&qword_1EC3CC200);
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v99 = &v87 - v8;
  v107 = sub_1C97A2CEC(&unk_1EC3C9AF0);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v121 = &v87 - v9;
  v115 = sub_1C97A2CEC(&unk_1EC3C9910);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v111 = (&v87 - v10);
  v123 = sub_1C9A91C28();
  v110 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v109 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1C97A2CEC(&unk_1EC3CD670);
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v87 - v12;
  v118 = sub_1C97A2CEC(&unk_1EC3CC270);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v87 - v13;
  v120 = sub_1C97A2CEC(&qword_1EC3C9B00);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v87 - v14;
  v15 = sub_1C9A91748();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v87 - v23;
  v25 = *(a1 + 16);
  v129[0] = *a1;
  v129[1] = v25;
  v124 = a1;
  v130 = *(a1 + 32);
  sub_1C9A91738();
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v26 = sub_1C9A91B58();
  v27 = sub_1C97BFF6C(v26, qword_1EC3D3108);
  v28 = *(v16 + 16);
  v90 = v16 + 16;
  v89 = v28;
  v28(v22, v24, v15);
  v91 = v27;
  v29 = sub_1C9A91B38();
  v30 = sub_1C9A92FC8();
  v31 = os_log_type_enabled(v29, v30);
  v125 = v15;
  v93 = v19;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v126 = v16;
    v127 = v33;
    v34 = v33;
    *v32 = 136446210;
    sub_1C986FB24(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v35 = sub_1C9A93A98();
    v36 = v15;
    v38 = v37;
    v39 = *(v126 + 8);
    v39(v22, v36);
    v40 = sub_1C9849140(v35, v38, &v127);
    v41 = v39;

    *(v32 + 4) = v40;
    _os_log_impl(&dword_1C9788000, v29, v30, "Started Creating Accessibility Sound Actions Session %{public}s", v32, 0xCu);
    sub_1C97A592C(v34);
    v42 = v34;
    v16 = v126;
    MEMORY[0x1CCA93280](v42, -1, -1);
    MEMORY[0x1CCA93280](v32, -1, -1);
  }

  else
  {

    v41 = *(v16 + 8);
    v41(v22, v15);
  }

  if (qword_1EC3C5E00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  v43 = v132;
  sub_1C98F40F8(__dst);
  v132 = v43;
  if (v43)
  {
    return (v41)(v24, v125);
  }

  v124 = v41;
  v126 = v16;
  v88 = v24;
  v45 = sub_1C97AC6A0();
  v87 = v45;

  v127 = v45;
  v46 = v110;
  v47 = v109;
  (*(v110 + 104))(v109, *MEMORY[0x1E695BD20], v123);
  v48 = v111;
  *v111 = sub_1C98F63E0;
  v48[1] = 0;
  v49 = v113;
  v50 = v115;
  (*(v113 + 104))(v48, *MEMORY[0x1E695BD48], v115);
  sub_1C97A2CEC(&unk_1EC3CC280);
  sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
  v51 = v112;
  sub_1C9A92018();
  (*(v49 + 8))(v48, v50);
  (*(v46 + 8))(v47, v123);

  v52 = sub_1C97A2CEC(&unk_1EC3CC290);
  sub_1C9813064(&qword_1EC3CD6A0, &unk_1EC3CD670);
  v53 = v117;
  v54 = v116;
  sub_1C9A91F68();
  (*(v114 + 8))(v51, v54);
  v55 = v118;
  *(v53 + *(v118 + 60)) = 96;
  *(v53 + *(v55 + 64)) = 2;
  *(v53 + *(v55 + 68)) = v52;
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C9813064(&qword_1EC3C9B08, &unk_1EC3CC270);
  v56 = v122;
  sub_1C9A91F68();
  v57 = sub_1C97DA1E0(v53, &unk_1EC3CC270);
  MEMORY[0x1EEE9AC00](v57);
  *(&v87 - 2) = v56;
  *(&v87 - 1) = v129;
  v58 = v121;
  v59 = v132;
  sub_1C993B85C();
  v132 = v59;
  if (v59)
  {
    v124(v88, v125);
    return (*(v119 + 8))(v56, v120);
  }

  else
  {
    sub_1C9813064(&qword_1EC3C9B10, &unk_1EC3C9AF0);
    v60 = v95;
    sub_1C9A91F68();
    v61 = v96;
    v62 = v94;
    v63 = v97;
    (*(v96 + 16))(v94, v60, v97);
    v64 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1C98FA208;
    *(v65 + 24) = 0;
    (*(v61 + 32))(v65 + v64, v62, v63);
    sub_1C97A2CEC(&qword_1EC3C9B18);
    sub_1C9813064(&unk_1EC3C9B20, &qword_1EC3C9B18);
    v66 = v98;
    sub_1C9A91EF8();
    (*(v61 + 8))(v60, v63);
    v127 = 0;
    v128 = 0xE000000000000000;
    sub_1C9A935B8();

    v127 = 0xD000000000000022;
    v128 = 0x80000001C9AD7130;
    sub_1C986FB24(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v67 = v88;
    v68 = v125;
    v69 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v69);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v70 = v99;
    sub_1C993B1BC();

    (*(v101 + 8))(v66, v103);
    sub_1C9813064(&unk_1EC3C9B30, &qword_1EC3CC200);
    v71 = v104;
    v72 = sub_1C9A91F28();
    (*(v102 + 8))(v70, v71);
    v73 = v108;
    v74 = v89;
    v89(v108, v67, v68);
    *(v73 + *(v105 + 20)) = v72;
    v75 = v93;
    v74(v93, v67, v68);
    v76 = sub_1C9A91B38();
    v77 = sub_1C9A92FC8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v127 = v79;
      *v78 = 136446210;
      v80 = sub_1C9A93A98();
      v82 = v81;
      v83 = v75;
      v84 = v124;
      v124(v83, v68);
      v85 = sub_1C9849140(v80, v82, &v127);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_1C9788000, v76, v77, "Finished Creating Accessibility Sound Actions Session %{public}s", v78, 0xCu);
      sub_1C97A592C(v79);
      MEMORY[0x1CCA93280](v79, -1, -1);
      MEMORY[0x1CCA93280](v78, -1, -1);

      (*(v106 + 8))(v121, v107);
      v84(v88, v68);
    }

    else
    {

      v86 = v124;
      v124(v75, v68);
      (*(v106 + 8))(v58, v107);
      v86(v67, v68);
    }

    sub_1C986FB68(v108, v100, type metadata accessor for AccessibilitySoundActions.Session);
    return (*(v119 + 8))(v122, v120);
  }
}

uint64_t sub_1C9869238@<X0>(uint64_t a1@<X8>)
{
  v32[2] = a1;
  v1 = sub_1C9A91408();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C97A2CEC(&unk_1EC3CC2A0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v32 - v4;
  v6 = sub_1C9A91558();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v32 - v11);
  sub_1C97A2CEC(&qword_1EC3C9B00);
  sub_1C9813064(&qword_1EC3C9B40, &qword_1EC3C9B00);
  v13 = sub_1C9A91F28();
  v14 = v40;
  sub_1C98C73E0(20, v12);
  if (!v14)
  {
    v40 = v7;
    v15 = v6;
    v32[1] = v13;
    v38 = v13;
    sub_1C97A2CEC(&unk_1EC3CC280);
    sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
    sub_1C9A91F68();
    sub_1C9813064(&qword_1EC3C9B48, &unk_1EC3CC2A0);
    v16 = v34;
    v17 = sub_1C9A91F28();
    (*(v33 + 8))(v5, v16);
    v38 = 0x6A2E657069636572;
    v39 = 0xEB000000006E6F73;
    v19 = v35;
    v18 = v36;
    v20 = v37;
    (v36[13])(v35, *MEMORY[0x1E6968F70], v37);
    sub_1C98449A8();
    sub_1C9A91538();
    v18[1](v19, v20);
    v21 = sub_1C9A915A8();
    v23 = v22;
    v24 = v17;
    v25 = sub_1C98DB63C();
    v26 = v40;
    v27 = v25;
    v37 = v10;
    MEMORY[0x1EEE9AC00](v25);
    v32[-2] = v12;
    v28 = sub_1C99F437C(v24, sub_1C986F178, &v32[-4], v27);
    v36 = v12;
    v30 = v28;
    sub_1C97A5978(v21, v23);

    v31 = *(v26 + 8);
    v31(v37, v15);
    v38 = v30;
    sub_1C97A2CEC(&unk_1EC3CC2B0);
    sub_1C9813064(&qword_1EC3C9B50, &unk_1EC3CC2B0);
    sub_1C9A92048();

    v31(v36, v15);
  }
}

uint64_t sub_1C9869804(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x41uLL);
  v10 = a2;
  v11 = a3;
  sub_1C97A6264(__src, &v8);
  v6 = sub_1C985F310();
  sub_1C97DA1E0(__dst, &qword_1EC3C76A0);
  return v6;
}

uint64_t sub_1C98698A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((sub_1C98568F8() & 0x3F) != 0)
  {
    sub_1C986EE54();
    swift_allocError();
    *v5 = 2;
    return swift_willThrow();
  }

  else
  {
    v7 = sub_1C9A93168();
    v9 = v8;
    v11 = v10;
    v12 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames) / 0xA0u;
    v17 = sub_1C9A93168();
    v18 = v13;
    v15 = v14;
    result = sub_1C985F50C(v12);
    if (!v2)
    {
      sub_1C98BD404();

      sub_1C97A2CEC(&unk_1EC3CC280);
      sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
      v16 = sub_1C9A91F28();

      *a2 = v16;
      a2[1] = v7;
      a2[2] = v9;
      a2[3] = v11;
      a2[4] = v17;
      a2[5] = v15;
      a2[6] = v18;
    }
  }

  return result;
}

uint64_t sub_1C9869A5C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if ((sub_1C98568F8() & 0x3F) != 0)
  {
    sub_1C986EE54();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }

  else
  {
    v20 = sub_1C9A93168();
    v10 = v9;
    v25 = v11;
    v12 = *(a2 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames) / 0xA0u;
    v13 = sub_1C9A93168();
    v15 = v14;
    v19 = v16;
    memcpy(v22, __dst, 0x41uLL);
    v23 = v12;
    sub_1C97A6264(__src, v21);
    sub_1C985F4A4();
    if (v3)
    {
      return sub_1C97DA1E0(v22, &qword_1EC3C7690);
    }

    else
    {
      sub_1C97DA1E0(v22, &qword_1EC3C7690);
      v17 = sub_1C98BD404();

      v21[0] = v17;
      sub_1C97A2CEC(&unk_1EC3CC280);
      sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
      v18 = sub_1C9A91F28();

      *a3 = v18;
      a3[1] = v20;
      a3[2] = v10;
      a3[3] = v25;
      a3[4] = v13;
      a3[5] = v15;
      a3[6] = v19;
    }
  }

  return result;
}

uint64_t sub_1C9869C74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames);
  if (v5 >= 0x200)
  {
    v6 = (v5 - 512) / 0xA0 + 1;
  }

  else
  {
    v6 = 0;
  }

  v18 = sub_1C9A93168();
  v19 = v7;
  v9 = v8;
  v10 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames) / 0xA0u;
  v11 = sub_1C9A93168();
  v13 = v12;
  v15 = v14;
  result = sub_1C985F378(v6, v10);
  if (!v2)
  {
    sub_1C9832398();

    sub_1C97A2CEC(&unk_1EC3CC280);
    sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
    v17 = sub_1C9A91F28();

    *a2 = v17;
    a2[1] = v18;
    a2[2] = v9;
    a2[3] = v19;
    a2[4] = v11;
    a2[5] = v13;
    a2[6] = v15;
  }

  return result;
}

uint64_t sub_1C9869E24@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames);
  if (v7 >= 0x200)
  {
    v8 = (v7 - 512) / 0xA0 + 1;
  }

  else
  {
    v8 = 0;
  }

  v20 = sub_1C9A93168();
  v21 = v9;
  v11 = v10;
  v12 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames) / 0xA0u;
  v13 = sub_1C9A93168();
  v15 = v14;
  v19 = v16;
  result = sub_1C9869804(a2, v8, v12);
  if (!v3)
  {
    sub_1C9832398();

    sub_1C97A2CEC(&unk_1EC3CC280);
    sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280);
    v18 = sub_1C9A91F28();

    *a3 = v18;
    a3[1] = v20;
    a3[2] = v11;
    a3[3] = v21;
    a3[4] = v13;
    a3[5] = v15;
    a3[6] = v19;
  }

  return result;
}

uint64_t sub_1C9869FC4(__int128 *a1, void *a2, CMTimeValue a3)
{
  v20 = *a1;
  v21 = *(a1 + 16);
  v18 = *a1;
  v19 = *(a1 + 16);
  sub_1C986EBF0(&v20, v17);
  v8 = sub_1C99316D0(&v18);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1C97A6368(v18, *(&v18 + 1), v19);
  if (!v4)
  {
    if (v10 < 0)
    {
      v15 = sub_1C986BA9C(v8, v10 & 0x7FFFFFFFFFFFFFFFLL, v12, v14, a1, a2, a3);
    }

    else
    {
      v15 = sub_1C986A204(v8, v10, a1, a2, a3);
    }

    v3 = v15;
    sub_1C986EC4C(v8, v10);
  }

  return v3;
}

uint64_t sub_1C986A0E4(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v20 = *a1;
  v21 = *(a1 + 16);
  v18 = *a1;
  v19 = *(a1 + 16);
  sub_1C986EBF0(&v20, v17);
  v8 = sub_1C99316D0(&v18);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1C97A6368(v18, *(&v18 + 1), v19);
  if (!v4)
  {
    if (v10 < 0)
    {
      v15 = sub_1C986C960(v8, v10 & 0x7FFFFFFFFFFFFFFFLL, v12, v14, a1, a2, a3);
    }

    else
    {
      v15 = sub_1C986ADD8(v8, v10, a1, a2, a3);
    }

    v3 = v15;
    sub_1C986EC4C(v8, v10);
  }

  return v3;
}

uint64_t sub_1C986A204(uint64_t a1, CMTimeValue a2, __int128 *a3, void *__src, uint64_t a5)
{
  v98 = __src;
  v97 = a5;
  memcpy(__dst, __src, sizeof(__dst));
  v92 = sub_1C97A2CEC(&unk_1EC3C9910);
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v88 = (&v76 - v8);
  v95 = sub_1C9A91C28();
  v87 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1C97A2CEC(&qword_1EC3C8240);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v76 - v10;
  v82 = sub_1C97A2CEC(&qword_1EC3C9920);
  MEMORY[0x1EEE9AC00](v82);
  v94 = &v76 - v11;
  v12 = sub_1C97A2CEC(&qword_1EC3C9928);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  v15 = sub_1C97A2CEC(&qword_1EC3C9930);
  v77 = *(v15 - 8);
  v78 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v79 = sub_1C97A2CEC(&qword_1EC3C9938);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v76 - v18;
  v108 = *a3;
  v109 = *(a3 + 16);
  *&v106[0].value = *a3;
  v114 = *&a3;
  LOBYTE(v106[0].epoch) = *(a3 + 16);
  sub_1C986EBF0(&v108, &v107);
  v19 = sub_1C99317B0(v106);
  sub_1C97A6368(v106[0].value, *&v106[0].timescale, v106[0].epoch);
  v85 = v14;
  v81 = v17;
  if (v19)
  {
    v76 = sub_1C9A924A8();
    v101 = v20;
  }

  else
  {
    v76 = 0;
    v101 = 0xE000000000000000;
  }

  v21 = v114;
  v22 = *(*&v114 + 40);
  v102 = *(*&v114 + 24);
  v103 = v22;
  v23 = type metadata accessor for SNModelMetadataUtils();
  ObjectType = swift_getObjectType();
  v104 = *(a2 + 16);
  v25 = v104(ObjectType, a2);
  v26 = *(*&v21 + 32);
  v96 = v23;
  v27 = sub_1C9A3C4BC(v25, 16000);

  v105 = a1;
  v28 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v100 = v27;
  v29 = [v28 initWithUnsignedInt_];
  sub_1C97CDE50(v29);
  v31 = v30;

  v106[0].value = v102;
  *&v106[0].timescale = v26;
  v106[0].epoch = v103;
  CMTimeConvertScale(&v107, v106, v31, kCMTimeRoundingMethod_RoundTowardZero);
  v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v32);
  LODWORD(v103) = v33;

  v102 = a2;
  v34 = a2;
  v35 = v104;
  v36 = v104(ObjectType, v34);
  v37 = [v36 inputDescriptionsByName];

  sub_1C97BD318(0, &qword_1EC3C54D0);
  v38 = sub_1C9A92328();

  v39 = sub_1C98BBCAC(v38);

  if (v39)
  {
    v40 = [v39 multiArrayConstraint];

    if (v40)
    {
      v41 = [v40 shape];

      sub_1C97BD318(0, &qword_1EC3C54B0);
      sub_1C9A92798();
    }
  }

  v42 = *(*&v114 + 48);
  v43 = type metadata accessor for SNUtils();
  v44 = sub_1C9A16DC8();

  if (v42 < 0.0 || v42 >= 1.0)
  {

    sub_1C986ECA4();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();
    return v43;
  }

  v47 = round((1.0 - v42) * v103);
  if (v47 <= 1.0)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = v47;
  }

  v49 = v35(ObjectType, v102);
  v50 = sub_1C9A3C55C(v49, MEMORY[0x1E69E7CD0]);

  v43 = *(v97 + 32);
  memcpy(v110, __dst, 0x41uLL);
  v111 = v44;
  v112 = v100;
  sub_1C97A6264(v98, v106);
  v51 = v99;
  v52 = sub_1C97DD36C(v110);
  if (v51)
  {
    sub_1C97DA1E0(v110, &unk_1EC3C9940);

    return v43;
  }

  v53 = v52;
  v97 = v50;
  v114 = v47;
  sub_1C97DA1E0(v110, &unk_1EC3C9940);
  v98 = v53;
  v104 = sub_1C98BF080();
  v106[0].value = v104;
  v54 = v86;
  v55 = v87;
  (*(v87 + 104))(v86, *MEMORY[0x1E695BD20], v95);
  v56 = v88;
  *v88 = sub_1C993AC58;
  v56[1] = 0;
  v57 = v90;
  v58 = v92;
  (*(v90 + 104))(v56, *MEMORY[0x1E695BD48], v92);
  v99 = sub_1C97A2CEC(&unk_1EC3C7390);
  sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390);
  v59 = v89;
  sub_1C9A92018();
  (*(v57 + 8))(v56, v58);
  (*(v55 + 8))(v54, v95);

  v60 = sub_1C97A2CEC(&qword_1EC3C8260);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240);
  v61 = v93;
  v62 = v94;
  sub_1C9A91F68();
  result = (*(v91 + 8))(v59, v61);
  if (v47 > 1.0 && (*&v114 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v64 = v105;
  v65 = v85;
  if (v48 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v48 < 9.22337204e18)
  {
    v66 = v82;
    *(v62 + *(v82 + 60)) = v103;
    *(v62 + *(v66 + 64)) = v48;
    *(v62 + *(v66 + 68)) = v60;
    sub_1C97A2CEC(&qword_1EC3C8A38);
    sub_1C9813064(&qword_1EC3C9960, &qword_1EC3C9920);
    sub_1C9A91F68();
    sub_1C97DA1E0(v62, &qword_1EC3C9920);
    v67 = v81;
    v68 = v102;
    sub_1C98B2E20();
    (*(v83 + 8))(v65, v84);
    v69 = swift_allocObject();
    *(v69 + 16) = v48;
    *(v69 + 24) = v100;
    *(v69 + 32) = v64;
    *(v69 + 40) = v68;
    *(v69 + 48) = v97;
    *(v69 + 56) = v103;
    v70 = v77;
    v71 = v101;
    *(v69 + 64) = v76;
    *(v69 + 72) = v71;
    v72 = v80;
    (*(v70 + 32))(v80, v67, v78);
    v73 = v79;
    v74 = (v72 + *(v79 + 52));
    *v74 = sub_1C993AC5C;
    v74[1] = 0;
    v75 = (v72 + *(v73 + 56));
    *v75 = sub_1C986ECF8;
    v75[1] = v69;
    sub_1C9813064(&unk_1EC3C9968, &qword_1EC3C9938);
    swift_unknownObjectRetain();
    v43 = sub_1C9A91F28();

    sub_1C97DA1E0(v72, &qword_1EC3C9938);
    return v43;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C986ADD8(uint64_t a1, CMTimeEpoch a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v96 = a5;
  v91 = sub_1C97A2CEC(&unk_1EC3C9910);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = (&v74 - v8);
  v94 = sub_1C9A91C28();
  v86 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1C97A2CEC(&qword_1EC3C8240);
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v74 - v10;
  v81 = sub_1C97A2CEC(&qword_1EC3C9920);
  MEMORY[0x1EEE9AC00](v81);
  v93 = &v74 - v11;
  v84 = sub_1C97A2CEC(&qword_1EC3C9928);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v13 = &v74 - v12;
  v77 = sub_1C97A2CEC(&qword_1EC3C9930);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v74 - v14;
  v78 = sub_1C97A2CEC(&qword_1EC3C9938);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v74 - v15;
  v109 = *a3;
  v110 = *(a3 + 16);
  *&time.value = *a3;
  v111 = *&a3;
  LOBYTE(time.epoch) = *(a3 + 16);
  sub_1C986EBF0(&v109, &v103);
  v16 = sub_1C99317B0(&time);
  sub_1C97A6368(time.value, *&time.timescale, time.epoch);
  v82 = v13;
  if (v16)
  {
    v75 = sub_1C9A924A8();
    v99 = v17;
  }

  else
  {
    v75 = 0;
    v99 = 0xE000000000000000;
  }

  v18 = v111;
  v100 = *(*&v111 + 24);
  v101 = *(*&v111 + 40);
  v19 = type metadata accessor for SNModelMetadataUtils();
  ObjectType = swift_getObjectType();
  v22 = a2 + 16;
  v21 = *(a2 + 16);
  v23 = a2;
  v24 = v21(ObjectType, a2);
  v25 = *(*&v18 + 32);
  v95 = v19;
  v26 = sub_1C9A3C4BC(v24, 16000);

  v102 = a1;
  v27 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v98 = v26;
  v28 = [v27 initWithUnsignedInt_];
  sub_1C97CDE50(v28);
  LODWORD(v24) = v29;

  time.value = v100;
  *&time.timescale = v25;
  time.epoch = v101;
  CMTimeConvertScale(&v103, &time, v24, kCMTimeRoundingMethod_RoundTowardZero);
  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v30);
  v32 = v31;

  v101 = v23;
  v33 = v23;
  v34 = v22;
  v35 = v21(ObjectType, v33);
  v36 = [v35 inputDescriptionsByName];

  sub_1C97BD318(0, &qword_1EC3C54D0);
  v37 = sub_1C9A92328();

  v38 = sub_1C98BBCAC(v37);

  if (v38)
  {
    v39 = [v38 multiArrayConstraint];

    if (v39)
    {
      v40 = [v39 shape];

      sub_1C97BD318(0, &qword_1EC3C54B0);
      sub_1C9A92798();
    }
  }

  v41 = *(*&v111 + 48);
  type metadata accessor for SNUtils();
  v42 = sub_1C9A16DC8();

  if (v41 < 0.0 || v41 >= 1.0)
  {

    sub_1C986ECA4();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
    return v34;
  }

  v45 = round((1.0 - v41) * v32);
  if (v45 <= 1.0)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = v45;
  }

  v47 = v21(ObjectType, v101);
  v34 = sub_1C9A3C55C(v47, MEMORY[0x1E69E7CD0]);

  v48 = v96[1];
  v105 = *v96;
  v106 = v48;
  v49 = v96[3];
  v107 = v96[2];
  v108 = v49;
  v50 = v97;
  v51 = sub_1C97DD3BC(v42, v98);
  if (v50)
  {

    return v34;
  }

  v95 = v34;
  LODWORD(v97) = v32;
  v111 = v45;
  v96 = v51;
  v100 = sub_1C98BF080();
  time.value = v100;
  v52 = v86;
  v53 = v85;
  (*(v86 + 104))(v85, *MEMORY[0x1E695BD20], v94);
  v54 = v87;
  *v87 = sub_1C993AC58;
  v54[1] = 0;
  v55 = v89;
  v56 = v91;
  (*(v89 + 104))(v54, *MEMORY[0x1E695BD48], v91);
  sub_1C97A2CEC(&unk_1EC3C7390);
  sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390);
  v57 = v88;
  sub_1C9A92018();
  (*(v55 + 8))(v54, v56);
  (*(v52 + 8))(v53, v94);

  v58 = sub_1C97A2CEC(&qword_1EC3C8260);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240);
  v59 = v92;
  sub_1C9A91F68();
  result = (*(v90 + 8))(v57, v59);
  if (v45 > 1.0 && (*&v111 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v61 = v101;
  v62 = v97;
  if (v46 < 9.22337204e18)
  {
    v63 = v81;
    v64 = v93;
    *&v93[*(v81 + 60)] = v97;
    *(v64 + *(v63 + 64)) = v46;
    *(v64 + *(v63 + 68)) = v58;
    sub_1C97A2CEC(&qword_1EC3C8A38);
    sub_1C9813064(&qword_1EC3C9960, &qword_1EC3C9920);
    v65 = v82;
    sub_1C9A91F68();
    sub_1C97DA1E0(v64, &qword_1EC3C9920);
    v66 = v80;
    v67 = v102;
    sub_1C98B2E20();
    (*(v83 + 8))(v65, v84);
    v68 = swift_allocObject();
    *(v68 + 16) = v46;
    *(v68 + 24) = v98;
    *(v68 + 32) = v67;
    *(v68 + 40) = v61;
    *(v68 + 48) = v95;
    *(v68 + 56) = v62;
    v69 = v99;
    *(v68 + 64) = v75;
    *(v68 + 72) = v69;
    v70 = v79;
    (*(v76 + 32))(v79, v66, v77);
    v71 = v78;
    v72 = (v70 + *(v78 + 52));
    *v72 = sub_1C993AC5C;
    v72[1] = 0;
    v73 = (v70 + *(v71 + 56));
    *v73 = sub_1C9871470;
    v73[1] = v68;
    sub_1C9813064(&unk_1EC3C9968, &qword_1EC3C9938);
    swift_unknownObjectRetain();
    v34 = sub_1C9A91F28();

    sub_1C97DA1E0(v70, &qword_1EC3C9938);
    return v34;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C986BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *__src, CMTimeValue a7)
{
  v126 = a2;
  v123 = a7;
  v120 = a4;
  v133 = a1;
  v124 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v101 = sub_1C97A2CEC(&qword_1EC3C9978);
  MEMORY[0x1EEE9AC00](v101);
  v108 = &v92 - v9;
  v116 = sub_1C97A2CEC(&unk_1EC3C9910);
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = (&v92 - v10);
  v119 = sub_1C9A91C28();
  v111 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v110 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1C97A2CEC(&qword_1EC3C8240);
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v92 - v12;
  v109 = sub_1C97A2CEC(&qword_1EC3C9920);
  MEMORY[0x1EEE9AC00](v109);
  v118 = &v92 - v13;
  v14 = sub_1C97A2CEC(&qword_1EC3C9980);
  v103 = *(v14 - 8);
  v104 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v92 - v15;
  v16 = sub_1C97A2CEC(&qword_1EC3C9988);
  v105 = *(v16 - 8);
  v106 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v92 - v17;
  v19 = sub_1C97A2CEC(&unk_1EC3C9990);
  v107 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v92 - v20;
  v22 = a5[3];
  v23 = a5[5];
  v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v121 = a3;
  v25 = [v24 initWithInteger_];
  sub_1C97CDE50(v25);
  v27 = v26;

  v127[0].value = v22;
  v122 = a5;
  *&v127[0].timescale = a5[4];
  v127[0].epoch = v23;
  v28 = v126;
  CMTimeConvertScale(&v128, v127, v27, kCMTimeRoundingMethod_RoundTowardZero);
  v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v29);
  v31 = v30;

  v32 = v28;
  v33 = v125;
  sub_1C987E9B0();
  v35 = v33;
  if (v33)
  {

    return v32;
  }

  v32 = v34;
  v100 = v31;
  v125 = v18;
  v98 = v19;
  v99 = v21;
  if (!v34[2])
  {

LABEL_7:

    sub_1C986ECA4();
    swift_allocError();
    v41 = 8;
LABEL_8:
    *v40 = v41;
    swift_willThrow();
    return v32;
  }

  v38 = v34[4];
  v37 = v34[5];

  sub_1C987EA14();
  v32 = v39;
  if (!v39[2])
  {

    goto LABEL_7;
  }

  v42 = v38;
  v43 = v39[4];
  v44 = v39[5];

  v45 = sub_1C9881404();
  v94 = v42;
  v95 = v44;
  v96 = v37;
  v93 = v43;
  type metadata accessor for E5RTIOPort();
  *(swift_initStackObject() + 16) = v45;
  v46 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptor();
  *(swift_initStackObject() + 16) = v46;
  v47 = sub_1C9881B70();
  v49 = sub_1C9A0840C(v47, v48);
  swift_setDeallocating();
  sub_1C9881C7C();
  swift_deallocClassInstance();
  v50 = v49[2];
  if (v50)
  {
    v92 = 0;
    v127[0].value = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v51 = 4;
    v52 = v124;
    do
    {
      v97 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      ++v51;
      --v50;
    }

    while (v50);

    v35 = v92;
  }

  else
  {

    v52 = v124;
  }

  v53 = *(v122 + 48);
  type metadata accessor for SNUtils();
  v32 = sub_1C9A16DC8();

  if (v53 < 0.0 || v53 >= 1.0)
  {

    sub_1C986ECA4();
    swift_allocError();
    v41 = 1;
    goto LABEL_8;
  }

  v55 = round((1.0 - v53) * v100);
  if (v55 <= 1.0)
  {
    v56 = 1.0;
  }

  else
  {
    v56 = v55;
  }

  memcpy(v129, __dst, 0x41uLL);
  v130 = v32;
  v131 = v121;
  sub_1C97A6264(v52, v127);
  v32 = sub_1C97DD36C(v129);
  sub_1C97DA1E0(v129, &unk_1EC3C9940);
  if (v35)
  {

    return v32;
  }

  v92 = 0;
  v124 = *&v55;
  v97 = v32;
  v123 = sub_1C98BF080();
  v127[0].value = v123;
  v57 = v110;
  v58 = v111;
  (*(v111 + 104))(v110, *MEMORY[0x1E695BD20], v119);
  v59 = v112;
  *v112 = sub_1C993AC58;
  v59[1] = 0;
  v60 = v114;
  v61 = v116;
  (*(v114 + 104))(v59, *MEMORY[0x1E695BD48], v116);
  v122 = sub_1C97A2CEC(&unk_1EC3C7390);
  sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390);
  v62 = v59;
  v63 = v113;
  sub_1C9A92018();
  (*(v60 + 8))(v62, v61);
  (*(v58 + 8))(v57, v119);

  v64 = sub_1C97A2CEC(&qword_1EC3C8260);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240);
  v65 = v117;
  v66 = v118;
  sub_1C9A91F68();
  result = (*(v115 + 8))(v63, v65);
  if (v55 > 1.0 && (v124 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  v67 = v120;
  v68 = v109;
  v69 = v94;
  if (v56 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v56 < 9.22337204e18)
  {
    *(v66 + *(v109 + 60)) = v100;
    *(v66 + *(v68 + 64)) = v56;
    *(v66 + *(v68 + 68)) = v64;
    v70 = swift_allocObject();
    v71 = v133;
    v72 = v126;
    v70[2] = v133;
    v70[3] = v72;
    v70[4] = v121;
    v70[5] = v67;
    v70[6] = v69;
    v73 = v96;
    v70[7] = v96;
    sub_1C9813064(&qword_1EC3C9960, &qword_1EC3C9920);

    v74 = v102;
    sub_1C9A92048();

    sub_1C97DA1E0(v66, &qword_1EC3C9920);
    v75 = swift_allocObject();
    *(v75 + 16) = v94;
    *(v75 + 24) = v73;
    sub_1C97A2CEC(qword_1EC3C9850);
    v76 = v125;
    v77 = v104;
    sub_1C9A91CA8();

    (*(v103 + 8))(v74, v77);
    v78 = swift_allocObject();
    *(v78 + 16) = v71;
    *(v78 + 24) = v72;
    v79 = v72;
    sub_1C9813064(&qword_1EC3C99A0, &qword_1EC3C9988);
    v80 = v99;
    v81 = v106;
    sub_1C9A92048();

    (*(v105 + 8))(v76, v81);
    v82 = swift_allocObject();
    *(v82 + 16) = v100;
    v83 = v120;
    v84 = v121;
    *(v82 + 24) = v121;
    *(v82 + 32) = v56;
    *(v82 + 40) = v71;
    *(v82 + 48) = v79;
    *(v82 + 56) = v84;
    *(v82 + 64) = v83;
    v85 = v95;
    *(v82 + 72) = v93;
    *(v82 + 80) = v85;
    v86 = v107;
    v87 = v108;
    v88 = v98;
    (*(v107 + 16))(v108, v80, v98);
    v89 = v101;
    v90 = (v87 + *(v101 + 52));
    *v90 = sub_1C993AC5C;
    v90[1] = 0;
    v91 = (v87 + *(v89 + 56));
    *v91 = sub_1C986ED4C;
    v91[1] = v82;
    sub_1C9813064(&qword_1EC3C99A8, &qword_1EC3C9978);

    v32 = sub_1C9A91F28();

    sub_1C97DA1E0(v87, &qword_1EC3C9978);
    (*(v86 + 8))(v80, v88);
    return v32;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C986C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, __int128 *a7)
{
  v119 = a7;
  v123 = a4;
  v132 = a2;
  v125 = a1;
  v107 = sub_1C97A2CEC(&qword_1EC3C9978);
  MEMORY[0x1EEE9AC00](v107);
  v101 = &v92 - v9;
  v118 = sub_1C97A2CEC(&unk_1EC3C9910);
  v122 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v111 = (&v92 - v10);
  v116 = sub_1C9A91C28();
  v110 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1C97A2CEC(&qword_1EC3C8240);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v117 = &v92 - v12;
  v109 = sub_1C97A2CEC(&qword_1EC3C9920);
  MEMORY[0x1EEE9AC00](v109);
  v114 = &v92 - v13;
  v105 = sub_1C97A2CEC(&qword_1EC3C9980);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v92 - v14;
  v102 = sub_1C97A2CEC(&qword_1EC3C9988);
  v106 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v16 = &v92 - v15;
  v17 = sub_1C97A2CEC(&unk_1EC3C9990);
  v108 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v20 = a5[3];
  v21 = a5[5];
  v22 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v120 = a3;
  v23 = [v22 initWithInteger_];
  sub_1C97CDE50(v23);
  v25 = v24;

  time.value = v20;
  v26 = v132;
  v121 = *&a5;
  *&time.timescale = a5[4];
  time.epoch = v21;
  v27 = v125;
  CMTimeConvertScale(&v126, &time, v25, kCMTimeRoundingMethod_RoundTowardZero);
  v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v28);
  v30 = v29;

  v31 = v124;
  sub_1C987E9B0();
  if (v31)
  {

    return v26;
  }

  LODWORD(v124) = v30;
  v98 = v16;
  v99 = v19;
  v100 = v17;
  v26 = v123;
  if (!v32[2])
  {

LABEL_7:

    sub_1C986ECA4();
    swift_allocError();
    v39 = 8;
LABEL_8:
    *v38 = v39;
    swift_willThrow();
    return v26;
  }

  v34 = v32[4];
  v33 = v32[5];

  sub_1C987EA14();
  v36 = v27;
  v97 = v34;
  if (!v35[2])
  {

    goto LABEL_7;
  }

  v40 = v35[4];
  v41 = v35[5];

  v42 = v33;
  v43 = sub_1C9881404();
  v95 = v42;
  v94 = v40;
  type metadata accessor for E5RTIOPort();
  *(swift_initStackObject() + 16) = v43;
  v44 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptor();
  *(swift_initStackObject() + 16) = v44;
  v45 = sub_1C9881B70();
  v47 = sub_1C9A0840C(v45, v46);
  swift_setDeallocating();
  sub_1C9881C7C();
  swift_deallocClassInstance();
  v48 = v47[2];
  if (v48)
  {
    v93 = v41;
    time.value = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v49 = 4;
    do
    {
      v96 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      ++v49;
      --v48;
    }

    while (v48);

    v36 = v125;
    v41 = v93;
  }

  else
  {
  }

  v50 = *(*&v121 + 48);
  type metadata accessor for SNUtils();
  v51 = sub_1C9A16DC8();

  v52 = v50 >= 0.0 && v50 < 1.0;
  v53 = v122;
  if (!v52)
  {

    sub_1C986ECA4();
    swift_allocError();
    v39 = 1;
    goto LABEL_8;
  }

  v54 = round((1.0 - v50) * v124);
  if (v54 <= 1.0)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = v54;
  }

  v56 = v119[1];
  v128 = *v119;
  v129 = v56;
  v57 = v119[3];
  v130 = v119[2];
  v131 = v57;
  v58 = sub_1C97DD3BC(v51, v120);
  v121 = v54;
  v92 = v58;
  v119 = sub_1C98BF080();
  time.value = v119;
  v59 = v110;
  (*(v110 + 104))(v115, *MEMORY[0x1E695BD20], v116);
  v60 = v111;
  *v111 = sub_1C993AC58;
  v60[1] = 0;
  (*(v53 + 104))(v60, *MEMORY[0x1E695BD48], v118);
  v96 = sub_1C97A2CEC(&unk_1EC3C7390);
  sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390);
  v61 = v115;
  sub_1C9A92018();
  (*(v53 + 8))(v60, v118);
  (*(v59 + 8))(v61, v116);

  v62 = sub_1C97A2CEC(&qword_1EC3C8260);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240);
  v63 = v113;
  v122 = v62;
  v64 = v117;
  sub_1C9A91F68();
  result = (*(v112 + 8))(v64, v63);
  if (v54 > 1.0 && (*&v121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  v65 = v97;
  if (v55 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v93 = v41;
  v66 = v109;
  v67 = v114;
  if (v55 < 9.22337204e18)
  {
    *&v114[*(v109 + 60)] = v124;
    *(v67 + *(v66 + 64)) = v55;
    *(v67 + *(v66 + 68)) = v122;
    v68 = swift_allocObject();
    v68[2] = v36;
    v69 = v132;
    v70 = v120;
    v68[3] = v132;
    v68[4] = v70;
    v68[5] = v26;
    v68[6] = v65;
    v71 = v95;
    v68[7] = v95;
    sub_1C9813064(&qword_1EC3C9960, &qword_1EC3C9920);

    v72 = v65;
    v73 = v103;
    sub_1C9A92048();

    sub_1C97DA1E0(v67, &qword_1EC3C9920);
    v74 = swift_allocObject();
    *(v74 + 16) = v72;
    *(v74 + 24) = v71;
    sub_1C97A2CEC(qword_1EC3C9850);
    v75 = v98;
    v76 = v105;
    sub_1C9A91CA8();

    (*(v104 + 8))(v73, v76);
    v77 = swift_allocObject();
    v78 = v125;
    *(v77 + 16) = v125;
    *(v77 + 24) = v69;
    v79 = v69;
    sub_1C9813064(&qword_1EC3C99A0, &qword_1EC3C9988);
    v80 = v99;
    v81 = v102;
    sub_1C9A92048();

    (*(v106 + 8))(v75, v81);
    v82 = swift_allocObject();
    *(v82 + 16) = v124;
    v83 = v120;
    *(v82 + 24) = v120;
    *(v82 + 32) = v55;
    *(v82 + 40) = v78;
    *(v82 + 48) = v79;
    v84 = v123;
    *(v82 + 56) = v83;
    *(v82 + 64) = v84;
    v85 = v93;
    *(v82 + 72) = v94;
    *(v82 + 80) = v85;
    v86 = v108;
    v87 = v101;
    v88 = v100;
    (*(v108 + 16))(v101, v80, v100);
    v89 = v107;
    v90 = (v87 + *(v107 + 52));
    *v90 = sub_1C993AC5C;
    v90[1] = 0;
    v91 = (v87 + *(v89 + 56));
    *v91 = sub_1C9871488;
    v91[1] = v82;
    sub_1C9813064(&qword_1EC3C99A8, &qword_1EC3C9978);

    v26 = sub_1C9A91F28();

    sub_1C97DA1E0(v87, &qword_1EC3C9978);
    (*(v86 + 8))(v80, v88);
    return v26;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C986D964@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3C9AB8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = type metadata accessor for SoundRecognition.Session();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v20[0]) = a2;
  sub_1C979B2A0(v20);
  v20[3] = &unk_1F492E308;
  v20[4] = &off_1F492E480;
  v20[5] = &off_1F492E500;
  v13 = swift_allocObject();
  v20[0] = v13;
  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  *(v13 + 48) = v14;

  sub_1C993F83C();
  result = sub_1C97A592C(v20);
  if (!v3)
  {
    v20[0] = *&v12[*(v10 + 20)];

    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C9813064(&unk_1EC3CE310, &unk_1EC3C9AC0);
    sub_1C9A91F68();

    sub_1C9813064(&unk_1EC3C9AD0, &qword_1EC3C9AB8);
    v17 = sub_1C9A91F28();
    (*(v7 + 8))(v9, v6);
    v18 = sub_1C9A91748();
    v19 = v21;
    (*(*(v18 - 8) + 16))(v21, v12, v18);
    sub_1C986F1E8(v12, type metadata accessor for SoundRecognition.Session);
    result = type metadata accessor for AccessibilitySoundRecognition.Session(0);
    *(v19 + *(result + 20)) = v17;
  }

  return result;
}

uint64_t sub_1C986DC84@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, _BYTE *)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  *v8 = *a1;
  *&v8[16] = v4;
  *&v8[32] = *(a1 + 32);
  *&v8[48] = *(a1 + 48);
  a2(&v7, v8);
  v5 = v7;
  *a3 = *v8;
  *(a3 + 8) = *&v8[8];
  *(a3 + 24) = *&v8[24];
  *(a3 + 40) = *&v8[40];
  *(a3 + 56) = v5;
}

uint64_t sub_1C986DD10(uint64_t result, void *a2)
{
  v2 = *(result + 40);
  v3 = *(result + 48);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v5 < 0 != v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = *a2 + v5;
  if (!__OFADD__(*a2, v5))
  {
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

_OWORD *sub_1C986DD40(uint64_t a1, _OWORD *a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C99B0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3C99B8);
  sub_1C97AE9C8();
  v10 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = a2[1];
  v37[0] = *a2;
  v37[1] = v14;
  v15 = a2[3];
  v37[2] = a2[2];
  v37[3] = v15;
  v16 = v37;
  v17 = sub_1C97DD3BC(1, 16000);
  if (!v2)
  {
    v36 = v17;
    v38 = sub_1C98BF080();
    sub_1C97A2CEC(&unk_1EC3C7390);
    v35 = v10;
    v18 = sub_1C97A2CEC(&qword_1EC3C8260);
    v34 = v8;
    v19 = v18;
    sub_1C97DA9B0();
    sub_1C9813064(v20, v21);
    sub_1C9A91F68();

    v22 = sub_1C97A2CEC(&qword_1EC3C99C0);
    *&v7[v22[15]] = 9600;
    *&v7[v22[16]] = 9600;
    *&v7[v22[17]] = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    sub_1C97AA878();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1C986E634;
    *(v24 + 24) = 0;
    sub_1C97AA878();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1C9871454;
    *(v25 + 24) = v23;
    v26 = &v7[*(v4 + 52)];
    *v26 = sub_1C98714BC;
    v26[1] = v25;
    v27 = &v7[*(v4 + 56)];
    *v27 = sub_1C98714E0;
    v27[1] = v24;
    sub_1C97AA878();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C9AA7B10;
    sub_1C97AA878();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1C9871514;
    *(v29 + 24) = v28;
    sub_1C98719F4();
    v30 = swift_allocObject();
    v30[2] = sub_1C987141C;
    v30[3] = v29;
    v30[4] = sub_1C99DD048;
    v30[5] = 0;
    v30[6] = sub_1C99DD140;
    v30[7] = 0;

    sub_1C990E3A4(v13);

    sub_1C97DA1E0(v7, &qword_1EC3C99B0);
    sub_1C9813064(&qword_1EC3C99C8, &qword_1EC3C99B8);
    v31 = v34;
    v16 = sub_1C9A91F28();

    (*(v35 + 8))(v13, v31);
  }

  return v16;
}

uint64_t sub_1C986E158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C99B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = sub_1C97A2CEC(&qword_1EC3C99B8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = sub_1C990D6C8();
  if (!v2)
  {
    v28 = v11;
    v12 = sub_1C98BF080();
    v29 = v8;
    v30 = v12;
    sub_1C97A2CEC(&unk_1EC3C7390);
    v13 = sub_1C97A2CEC(&qword_1EC3C8260);
    v27 = v7;
    v14 = v13;
    sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390);
    sub_1C9A91F68();

    v15 = sub_1C97A2CEC(&qword_1EC3C99C0);
    *&v6[v15[15]] = 9600;
    *&v6[v15[16]] = 9600;
    *&v6[v15[17]] = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C986E634;
    *(v17 + 24) = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1C9806828;
    *(v18 + 24) = v16;
    v19 = &v6[*(v4 + 52)];
    *v19 = sub_1C986ED6C;
    v19[1] = v18;
    v20 = &v6[*(v4 + 56)];
    *v20 = sub_1C986ED64;
    v20[1] = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C9AA7B10;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1C986ED98;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    v23[2] = sub_1C98068D4;
    v23[3] = v22;
    v23[4] = sub_1C99DD048;
    v23[5] = 0;
    v23[6] = sub_1C99DD140;
    v23[7] = 0;

    sub_1C990E3A4(v10);

    sub_1C97DA1E0(v6, &qword_1EC3C99B0);
    sub_1C9813064(&qword_1EC3C99C8, &qword_1EC3C99B8);
    v24 = v27;
    a2 = sub_1C9A91F28();

    (*(v29 + 8))(v10, v24);
  }

  return a2;
}

unint64_t sub_1C986E5A8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1CCA932A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1CCA932A0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C986E634@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  result = sub_1C986DD10(v6, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C986E680@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, _BYTE *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_1C986DC84(v5, a2, a3);
}

void sub_1C986E6BC(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(v5, __src, sizeof(v5));
  sub_1C9866918(v5);
  if (!v2)
  {
    *a2 = v4;
  }
}

void sub_1C986E768(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9862084(__dst);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C986E7C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C0414();
  *a1 = result;
  return result;
}

void sub_1C986E824(void *a1@<X8>)
{
  sub_1C98620A8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C986E878@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C97E8488(*a1, a2, a3, *a4, a4[1]);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1C986E8B0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1C986693C(*a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C986E8FC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  v4 = a2[3];
  v10 = a2[2];
  v11 = v4;
  return sub_1C98669B0(v6);
}

uint64_t sub_1C986E94C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v7 = *(a3 + 32);
  return sub_1C9866878(a1, a2, v6, a4);
}

uint64_t sub_1C986EC4C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

unint64_t sub_1C986ECA4()
{
  result = qword_1EC3CD220;
  if (!qword_1EC3CD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD220);
  }

  return result;
}

uint64_t sub_1C986ED6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C978FF18(*(v1 + 16));
  *a1 = result;
  return result;
}

unint64_t sub_1C986EDCC()
{
  result = qword_1EC3C99D0;
  if (!qword_1EC3C99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C99D0);
  }

  return result;
}

unint64_t sub_1C986EE54()
{
  result = qword_1EC3CC4D0;
  if (!qword_1EC3CC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC4D0);
  }

  return result;
}

unint64_t sub_1C986EEEC()
{
  result = qword_1EC3C9A90;
  if (!qword_1EC3C9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9A90);
  }

  return result;
}

unint64_t sub_1C986EF8C()
{
  result = qword_1EC3C9AB0;
  if (!qword_1EC3C9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9AB0);
  }

  return result;
}

unint64_t sub_1C986F098()
{
  result = qword_1EC3C9AE0;
  if (!qword_1EC3C9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9AE0);
  }

  return result;
}

uint64_t sub_1C986F108@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C9AE8);
  sub_1C97DACE4(v2);
  result = sub_1C98C0414();
  *a1 = result;
  return result;
}

uint64_t sub_1C986F1E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C986F29C()
{
  result = qword_1EC3C9BD0;
  if (!qword_1EC3C9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BD0);
  }

  return result;
}

unint64_t sub_1C986F2F0()
{
  result = qword_1EC3C9BD8;
  if (!qword_1EC3C9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BD8);
  }

  return result;
}

unint64_t sub_1C986F344()
{
  result = qword_1EC3C9BE8;
  if (!qword_1EC3C9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BE8);
  }

  return result;
}

unint64_t sub_1C986F398()
{
  result = qword_1EC3C9BF0;
  if (!qword_1EC3C9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BF0);
  }

  return result;
}

unint64_t sub_1C986F3EC()
{
  result = qword_1EC3C9BF8;
  if (!qword_1EC3C9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BF8);
  }

  return result;
}

unint64_t sub_1C986F440()
{
  result = qword_1EC3C9C00;
  if (!qword_1EC3C9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C00);
  }

  return result;
}

unint64_t sub_1C986F494()
{
  result = qword_1EC3C9C08;
  if (!qword_1EC3C9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C08);
  }

  return result;
}

unint64_t sub_1C986F4E8()
{
  result = qword_1EC3C9C10;
  if (!qword_1EC3C9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C10);
  }

  return result;
}

unint64_t sub_1C986F53C()
{
  result = qword_1EC3C9C18;
  if (!qword_1EC3C9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C18);
  }

  return result;
}

unint64_t sub_1C986F590()
{
  result = qword_1EC3C9C20;
  if (!qword_1EC3C9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C20);
  }

  return result;
}

unint64_t sub_1C986F5E4()
{
  result = qword_1EC3C9C28;
  if (!qword_1EC3C9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C28);
  }

  return result;
}

unint64_t sub_1C986F638()
{
  result = qword_1EC3C9C30;
  if (!qword_1EC3C9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C30);
  }

  return result;
}

unint64_t sub_1C986F68C()
{
  result = qword_1EC3C9C38;
  if (!qword_1EC3C9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C38);
  }

  return result;
}

unint64_t sub_1C986F6E0()
{
  result = qword_1EC3C9C40;
  if (!qword_1EC3C9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C40);
  }

  return result;
}

unint64_t sub_1C986F734()
{
  result = qword_1EC3C9C48;
  if (!qword_1EC3C9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C48);
  }

  return result;
}

unint64_t sub_1C986F788()
{
  result = qword_1EC3C9C50;
  if (!qword_1EC3C9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C50);
  }

  return result;
}

unint64_t sub_1C986F7DC()
{
  result = qword_1EC3C9C58;
  if (!qword_1EC3C9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C58);
  }

  return result;
}

unint64_t sub_1C986F830()
{
  result = qword_1EC3C9C60;
  if (!qword_1EC3C9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C60);
  }

  return result;
}

unint64_t sub_1C986F884()
{
  result = qword_1EC3C9C68;
  if (!qword_1EC3C9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C68);
  }

  return result;
}

unint64_t sub_1C986F8D8()
{
  result = qword_1EC3C9C70;
  if (!qword_1EC3C9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C70);
  }

  return result;
}

unint64_t sub_1C986F92C()
{
  result = qword_1EC3C9C78;
  if (!qword_1EC3C9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C78);
  }

  return result;
}

unint64_t sub_1C986F980()
{
  result = qword_1EC3C9C80;
  if (!qword_1EC3C9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C80);
  }

  return result;
}

unint64_t sub_1C986F9D4()
{
  result = qword_1EC3C9C88;
  if (!qword_1EC3C9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C88);
  }

  return result;
}

unint64_t sub_1C986FA28()
{
  result = qword_1EC3C9C90;
  if (!qword_1EC3C9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C90);
  }

  return result;
}

unint64_t sub_1C986FA7C()
{
  result = qword_1EC3C9C98;
  if (!qword_1EC3C9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C98);
  }

  return result;
}

unint64_t sub_1C986FAD0()
{
  result = qword_1EC3C9CA0;
  if (!qword_1EC3C9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9CA0);
  }

  return result;
}

uint64_t sub_1C986FB24(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C986FB68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C97DA940();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C986FBC8()
{
  result = qword_1EC3C9D28;
  if (!qword_1EC3C9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D28);
  }

  return result;
}

unint64_t sub_1C986FC1C()
{
  result = qword_1EC3C9D30;
  if (!qword_1EC3C9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D30);
  }

  return result;
}

unint64_t sub_1C986FC70()
{
  result = qword_1EC3C9D38;
  if (!qword_1EC3C9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D38);
  }

  return result;
}

unint64_t sub_1C986FCC4()
{
  result = qword_1EC3C9D40;
  if (!qword_1EC3C9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D40);
  }

  return result;
}

unint64_t sub_1C986FD18()
{
  result = qword_1EC3C9D48;
  if (!qword_1EC3C9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D48);
  }

  return result;
}

unint64_t sub_1C986FD6C()
{
  result = qword_1EC3C9D50;
  if (!qword_1EC3C9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D50);
  }

  return result;
}

unint64_t sub_1C986FDC0()
{
  result = qword_1EC3C9D58;
  if (!qword_1EC3C9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D58);
  }

  return result;
}

unint64_t sub_1C986FE14()
{
  result = qword_1EC3C9D60;
  if (!qword_1EC3C9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D60);
  }

  return result;
}

unint64_t sub_1C986FE68()
{
  result = qword_1EC3C9D68;
  if (!qword_1EC3C9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D68);
  }

  return result;
}

unint64_t sub_1C986FEBC()
{
  result = qword_1EC3C9D70;
  if (!qword_1EC3C9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D70);
  }

  return result;
}

unint64_t sub_1C986FF10()
{
  result = qword_1EC3C9D78;
  if (!qword_1EC3C9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D78);
  }

  return result;
}

unint64_t sub_1C986FF64()
{
  result = qword_1EC3C9D80;
  if (!qword_1EC3C9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D80);
  }

  return result;
}

uint64_t sub_1C986FFB8()
{

  sub_1C98719F4();

  return swift_deallocObject();
}

uint64_t sub_1C987002C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C98700B0()
{

  sub_1C98719F4();

  return swift_deallocObject();
}

uint64_t sub_1C9870120()
{

  return swift_deallocObject();
}

uint64_t sub_1C98701AC()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 168);
  if ((~v1 & 0xF000000000000007) != 0)
  {
  }

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for RemoteRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9870500(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C98705B0()
{
  result = qword_1EC3C9D88;
  if (!qword_1EC3C9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D88);
  }

  return result;
}

unint64_t sub_1C9870608()
{
  result = qword_1EC3C9D90;
  if (!qword_1EC3C9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D90);
  }

  return result;
}

unint64_t sub_1C9870660()
{
  result = qword_1EC3C9D98;
  if (!qword_1EC3C9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D98);
  }

  return result;
}

unint64_t sub_1C98706B8()
{
  result = qword_1EC3C9DA0;
  if (!qword_1EC3C9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DA0);
  }

  return result;
}

unint64_t sub_1C9870710()
{
  result = qword_1EC3C9DA8;
  if (!qword_1EC3C9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DA8);
  }

  return result;
}

unint64_t sub_1C9870768()
{
  result = qword_1EC3C9DB0;
  if (!qword_1EC3C9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DB0);
  }

  return result;
}

unint64_t sub_1C98707C0()
{
  result = qword_1EC3C9DB8;
  if (!qword_1EC3C9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DB8);
  }

  return result;
}

unint64_t sub_1C9870818()
{
  result = qword_1EC3C9DC0;
  if (!qword_1EC3C9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DC0);
  }

  return result;
}

unint64_t sub_1C9870870()
{
  result = qword_1EC3C9DC8;
  if (!qword_1EC3C9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DC8);
  }

  return result;
}

unint64_t sub_1C98708C8()
{
  result = qword_1EC3C9DD0;
  if (!qword_1EC3C9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DD0);
  }

  return result;
}

unint64_t sub_1C9870920()
{
  result = qword_1EC3C9DD8;
  if (!qword_1EC3C9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DD8);
  }

  return result;
}

unint64_t sub_1C9870978()
{
  result = qword_1EC3C9DE0;
  if (!qword_1EC3C9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DE0);
  }

  return result;
}

unint64_t sub_1C98709D0()
{
  result = qword_1EC3C9DE8;
  if (!qword_1EC3C9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DE8);
  }

  return result;
}

unint64_t sub_1C9870A28()
{
  result = qword_1EC3C9DF0;
  if (!qword_1EC3C9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DF0);
  }

  return result;
}

unint64_t sub_1C9870A80()
{
  result = qword_1EC3C9DF8;
  if (!qword_1EC3C9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DF8);
  }

  return result;
}

unint64_t sub_1C9870AD8()
{
  result = qword_1EC3C9E00;
  if (!qword_1EC3C9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E00);
  }

  return result;
}

unint64_t sub_1C9870B30()
{
  result = qword_1EC3C9E08;
  if (!qword_1EC3C9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E08);
  }

  return result;
}

unint64_t sub_1C9870B88()
{
  result = qword_1EC3C9E10;
  if (!qword_1EC3C9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E10);
  }

  return result;
}

unint64_t sub_1C9870BE0()
{
  result = qword_1EC3C9E18;
  if (!qword_1EC3C9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E18);
  }

  return result;
}

unint64_t sub_1C9870C38()
{
  result = qword_1EC3C9E20;
  if (!qword_1EC3C9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E20);
  }

  return result;
}

unint64_t sub_1C9870C90()
{
  result = qword_1EC3C9E28;
  if (!qword_1EC3C9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E28);
  }

  return result;
}

unint64_t sub_1C9870CE8()
{
  result = qword_1EC3C9E30;
  if (!qword_1EC3C9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E30);
  }

  return result;
}

unint64_t sub_1C9870D40()
{
  result = qword_1EC3C9E38;
  if (!qword_1EC3C9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E38);
  }

  return result;
}

unint64_t sub_1C9870D98()
{
  result = qword_1EC3C9E40;
  if (!qword_1EC3C9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E40);
  }

  return result;
}

unint64_t sub_1C9870DF0()
{
  result = qword_1EC3C9E48;
  if (!qword_1EC3C9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E48);
  }

  return result;
}

unint64_t sub_1C9870E48()
{
  result = qword_1EC3C9E50;
  if (!qword_1EC3C9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E50);
  }

  return result;
}

unint64_t sub_1C9870EA0()
{
  result = qword_1EC3C9E58;
  if (!qword_1EC3C9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E58);
  }

  return result;
}

unint64_t sub_1C9870EF8()
{
  result = qword_1EC3C9E60;
  if (!qword_1EC3C9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E60);
  }

  return result;
}

unint64_t sub_1C9870F50()
{
  result = qword_1EC3C9E68;
  if (!qword_1EC3C9E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E68);
  }

  return result;
}

unint64_t sub_1C9870FA8()
{
  result = qword_1EC3C9E70;
  if (!qword_1EC3C9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E70);
  }

  return result;
}

unint64_t sub_1C9871000()
{
  result = qword_1EC3C9E78;
  if (!qword_1EC3C9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E78);
  }

  return result;
}

unint64_t sub_1C9871058()
{
  result = qword_1EC3C9E80;
  if (!qword_1EC3C9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E80);
  }

  return result;
}

unint64_t sub_1C98710B0()
{
  result = qword_1EC3C9E88;
  if (!qword_1EC3C9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E88);
  }

  return result;
}

unint64_t sub_1C9871108()
{
  result = qword_1EC3C9E90;
  if (!qword_1EC3C9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E90);
  }

  return result;
}

unint64_t sub_1C9871160()
{
  result = qword_1EC3C9E98;
  if (!qword_1EC3C9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E98);
  }

  return result;
}

unint64_t sub_1C98711B8()
{
  result = qword_1EC3C9EA0;
  if (!qword_1EC3C9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EA0);
  }

  return result;
}

unint64_t sub_1C9871210()
{
  result = qword_1EC3C9EA8;
  if (!qword_1EC3C9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EA8);
  }

  return result;
}

unint64_t sub_1C9871268()
{
  result = qword_1EC3C9EB0;
  if (!qword_1EC3C9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EB0);
  }

  return result;
}

unint64_t sub_1C98712C0()
{
  result = qword_1EC3C9EB8;
  if (!qword_1EC3C9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EB8);
  }

  return result;
}

unint64_t sub_1C9871318()
{
  result = qword_1EC3C9EC0;
  if (!qword_1EC3C9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EC0);
  }

  return result;
}

unint64_t sub_1C9871370()
{
  result = qword_1EC3C9EC8;
  if (!qword_1EC3C9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EC8);
  }

  return result;
}

unint64_t sub_1C98713C8()
{
  result = qword_1EC3C9ED0;
  if (!qword_1EC3C9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9ED0);
  }

  return result;
}

uint64_t sub_1C9871564()
{

  return sub_1C9A93858();
}

uint64_t sub_1C98715B4()
{

  return sub_1C9A93988();
}

uint64_t sub_1C9871638()
{

  return sub_1C986F1E8(v0, type metadata accessor for RemoteRequest);
}

void sub_1C98716A0()
{
  *(v1 - 592) = v0;
  *(v1 - 624) = *(v1 - 280);
  *(v1 - 568) = *(v1 - 272);
  *(v1 - 656) = *(v1 - 268);
  *(v1 - 632) = *(v1 - 264);
  *(v1 - 640) = *(v1 - 256);
  *(v1 - 320) = *(v1 - 248);
  *(v1 - 664) = *(v1 - 244);
  *(v1 - 648) = *(v1 - 240);
}

uint64_t sub_1C987175C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1C9871778()
{

  return sub_1C9A93A18();
}

uint64_t sub_1C98717DC(unint64_t *a1, uint64_t *a2)
{

  return sub_1C9813064(a1, a2);
}

uint64_t sub_1C9871800(unint64_t *a1, uint64_t *a2)
{

  return sub_1C9813064(a1, a2);
}

uint64_t sub_1C9871824()
{

  return swift_once();
}

uint64_t sub_1C9871844()
{

  return swift_once();
}

uint64_t sub_1C9871864(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

id sub_1C987190C()
{

  return sub_1C99B590C();
}

uint64_t sub_1C9871934(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

uint64_t sub_1C987195C()
{

  return sub_1C9A938F8();
}

void *sub_1C98719DC(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

__n128 sub_1C9871A80(uint64_t a1)
{
  v2 = *(v1 + 32);
  result = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_1C9871AE8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1C9871B08()
{

  return swift_task_alloc();
}

uint64_t sub_1C9871B28()
{
}

double SNSpeechDistanceResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNSpeechDistanceResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

BOOL sub_1C9871BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v6;
  v13[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = static TimeRange.== infix(_:_:)(v14, v13);
  result = 0;
  if (v10 && v3 == v7 && v4 == v8)
  {
    return v5 == v9;
  }

  return result;
}

uint64_t sub_1C9871C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C9AD7260 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756C61566E61656DLL && a2 == 0xE900000000000065;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001C9AD7290 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

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

unint64_t sub_1C9871DB4(char a1)
{
  result = 0x676E6152656D6974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x756C61566E61656DLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9871E38(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3C9F08);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9873240();
  sub_1C9A93DD8();
  v11 = v3[1];
  v13[0] = *v3;
  v13[1] = v11;
  v13[2] = v3[2];
  v14 = 0;
  sub_1C97BD12C();
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    sub_1C987349C();
    LOBYTE(v13[0]) = 2;
    sub_1C987349C();
    LOBYTE(v13[0]) = 3;
    sub_1C987349C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C9871FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1CCA919B0](*&v7);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1CCA919B0](*&v8);
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  return MEMORY[0x1CCA919B0](*&v9);
}

uint64_t sub_1C98720CC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1CCA919B0](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1CCA919B0](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1CCA919B0](*&v10);
  return sub_1C9A93D18();
}

uint64_t sub_1C98721F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3C9EF0);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9873240();
  sub_1C9A93DB8();
  if (!v2)
  {
    v19[15] = 0;
    sub_1C97BD0D8();
    sub_1C9A938F8();
    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_1C9873478(1);
    v12 = v11;
    sub_1C9873478(2);
    v15 = v14;
    sub_1C9873478(3);
    v17 = v16;
    (*(v7 + 8))(v10, v5);
    v18 = v24;
    *a2 = v23;
    *(a2 + 16) = v18;
    *(a2 + 32) = v25;
    *(a2 + 48) = v12;
    *(a2 + 56) = v15;
    *(a2 + 64) = v17;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C98723EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9871C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9872414(uint64_t a1)
{
  v2 = sub_1C9873240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9872450(uint64_t a1)
{
  v2 = sub_1C9873240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9872494()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1CCA919B0](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1CCA919B0](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1CCA919B0](*&v10);
  return sub_1C9A93D18();
}

double SNSpeechDistanceResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNSpeechDistanceResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNSpeechDistanceResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNSpeechDistanceResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C98726D4@<D0>(_OWORD *a1@<X8>)
{
  SNSpeechDistanceResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNSpeechDistanceResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNSpeechDistanceResult.timeRange.getter((v3 + 1));
  return sub_1C987277C;
}

void sub_1C987277C(void **a1)
{
  v1 = *a1;
  SNSpeechDistanceResult.timeRange.setter(*a1 + 8);

  free(v1);
}

id sub_1C98728D0()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNSpeechDistanceResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SNSpeechDistanceResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR___SNSpeechDistanceResult_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR___SNSpeechDistanceResult_impl], __dst, 0x48uLL);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNSpeechDistanceResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v11);
  if (v12)
  {
    sub_1C97A2D34(&v11, v10);
    sub_1C97BD360(v10, v9);
    if (swift_dynamicCast())
    {
      v3 = v8;
      memcpy(__dst, (v1 + OBJC_IVAR___SNSpeechDistanceResult_impl), sizeof(__dst));
      memcpy(v6, &v8[OBJC_IVAR___SNSpeechDistanceResult_impl], sizeof(v6));
      v4 = sub_1C9871BB4(__dst, v6);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v10);
  }

  else
  {
    return 0;
  }

  return v4;
}

id SNSpeechDistanceResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1A4C();
  v3 = objc_allocWithZone(ObjectType);
  memcpy(&v3[OBJC_IVAR___SNSpeechDistanceResult_impl], __src, 0x48uLL);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  swift_getObjectType();
  sub_1C98285C4();
  return v4;
}

uint64_t SNSpeechDistanceResult.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v15 = v16[0];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v14, sel_description);
  v3 = sub_1C9A924A8();
  v5 = v4;

  MEMORY[0x1CCA90230](v3, v5);

  MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD7200);
  sub_1C98734B8();
  MEMORY[0x1CCA90230](0xD000000000000016, 0x80000001C9AD7220);
  sub_1C98734B8();
  MEMORY[0x1CCA90230](0xD000000000000017, 0x80000001C9AD7240);
  sub_1C98734B8();
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNSpeechDistanceResult.timeRange.getter(v16);
  v6 = objc_opt_self();
  v13[0] = v16[0];
  v13[1] = v16[1];
  v13[2] = v16[2];
  v7 = [v6 valueWithCMTimeRange_];
  v8 = [v7 description];
  v9 = sub_1C9A924A8();
  v11 = v10;

  MEMORY[0x1CCA90230](v9, v11);

  return v15;
}

id SNSpeechDistanceResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C98730FC@<D0>(_OWORD *a1@<X8>)
{
  SNSpeechDistanceResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C987317C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C987319C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_1C98731EC()
{
  result = qword_1EC3C9EE8;
  if (!qword_1EC3C9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EE8);
  }

  return result;
}

unint64_t sub_1C9873240()
{
  result = qword_1EC3C9EF8;
  if (!qword_1EC3C9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechDistanceResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9873374()
{
  result = qword_1EC3C9F18;
  if (!qword_1EC3C9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9F18);
  }

  return result;
}

unint64_t sub_1C98733CC()
{
  result = qword_1EC3C9F20;
  if (!qword_1EC3C9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9F20);
  }

  return result;
}

unint64_t sub_1C9873424()
{
  result = qword_1EC3C9F28;
  if (!qword_1EC3C9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9F28);
  }

  return result;
}

uint64_t sub_1C9873478@<X0>(char a1@<W8>)
{
  *(v1 - 194) = a1;

  return sub_1C9A938C8();
}

uint64_t sub_1C987349C()
{

  return sub_1C9A939E8();
}

uint64_t sub_1C98734B8()
{

  return sub_1C9A92AF8();
}

void sub_1C98734D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_1C97A2CEC(&qword_1EC3C9FB8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  sub_1C988A58C(&v46);
  if (!v4)
  {
    v41 = v3;
    v42 = a1;
    v43 = a2;
    v11 = v48;
    v51 = v48;
    v12 = *(v48 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    v44 = a3;
    if (v12)
    {
      v38 = 0;
      v39 = v10;
      v40 = v8;
      v45[0] = MEMORY[0x1E69E7CC0];
      sub_1C97B7C5C(0, v12, 0);
      v13 = v45[0];
      v14 = (v11 + 56);
      do
      {
        v16 = *(v14 - 3);
        v15 = *(v14 - 2);
        v17 = *(v14 - 1);
        v18 = *v14;
        v45[0] = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1C97B7C5C((v19 > 1), v20 + 1, 1);
          v13 = v45[0];
        }

        *(v13 + 16) = v20 + 1;
        v21 = (v13 + 32 * v20);
        v21[4] = v16;
        v21[5] = v15;
        v21[6] = v17;
        v21[7] = v18;
        v14 += 4;
        --v12;
      }

      while (v12);
      v10 = v39;
      v8 = v40;
    }

    v40 = sub_1C992C280(v13);
    v49 = v47;
    v50 = v46;
    v22 = swift_allocObject();
    v23 = v47;
    *(v22 + 16) = v46;
    *(v22 + 32) = v23;
    *(v22 + 48) = v48;
    sub_1C97CE434(&v50, v45);
    sub_1C97CE434(&v49, v45);
    sub_1C97E82EC(&v51, v45, &qword_1EC3C9FC0);
    sub_1C97A2CEC(&qword_1EC3C9F98);
    sub_1C97A2CEC(qword_1EC3C9850);
    sub_1C97AE67C(&qword_1EC3C9FC8, &qword_1EC3C9F98);
    sub_1C9A91F68();

    v24 = swift_allocObject();
    v25 = v42;
    v26 = v43;
    *(v24 + 16) = v42;
    *(v24 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v40;
    *(v27 + 16) = v40;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1C9875D04;
    *(v29 + 24) = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1C9875D20;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1C9875CE8;
    *(v31 + 24) = v24;
    v32 = swift_allocObject();
    v32[2] = sub_1C9A01F34;
    v32[3] = 0;
    v32[4] = sub_1C9875D58;
    v32[5] = v31;
    v32[6] = sub_1C9875D3C;
    v32[7] = v30;
    v33 = swift_allocObject();
    *(v33 + 2) = v25;
    *(v33 + 3) = v26;
    *(v33 + 4) = v28;
    v34 = &v10[*(v8 + 52)];
    *v34 = sub_1C9875D98;
    v34[1] = v33;
    v35 = &v10[*(v8 + 56)];
    *v35 = sub_1C9875D74;
    *(v35 + 1) = v32;
    v36 = swift_allocObject();
    v37 = v47;
    *(v36 + 16) = v46;
    *(v36 + 32) = v37;
    *(v36 + 48) = v48;
    sub_1C97AE67C(&qword_1EC3C9FD0, &qword_1EC3C9FB8);
    swift_retain_n();
    swift_retain_n();

    sub_1C9A92048();

    sub_1C97DA1E0(v10, &qword_1EC3C9FB8);
  }
}

uint64_t sub_1C98739B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a1;
  v14 = a2;
  v12[1] = a3;
  v3 = sub_1C97A2CEC(&qword_1EC3C9F98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = sub_1C97A2CEC(&qword_1EC3C9FA0);
  v12[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1C97A2CEC(&qword_1EC3C9F40);
  sub_1C97AE67C(&qword_1EC3C9FA8, &qword_1EC3C9F40);
  sub_1C9A91F68();
  v10 = v15;
  sub_1C98734D4(v13, v14, v9);
  result = (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0);
    sub_1C97AE67C(&qword_1EC3C9FB0, &qword_1EC3C9FA0);
    sub_1C9A91F68();
    return (*(v12[0] + 8))(v9, v7);
  }

  return result;
}

char *sub_1C9873C44(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = v4;
      return sub_1C9875B60(a1, v5);
    case 2uLL:
      v6 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v6;
      return sub_1C9875B60(a1, v5);
    case 3uLL:
      return v2;
    default:
      v8 = a1;
      v9 = a2;
      v10 = BYTE2(a2);
      v11 = BYTE3(a2);
      v12 = BYTE4(a2);
      v13 = BYTE5(a2);
      return sub_1C9873DC0(&v8, (a2 >> 50) & 0x3F);
  }
}

void *sub_1C9873D8C(const void *a1, uint64_t a2)
{
  if (a1)
  {
    return sub_1C9873DC0(a1, (a2 - a1) / 4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1C9873DC0(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C6938);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_1C9873E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v75 = a2;
  v69 = sub_1C97A2CEC(&qword_1EC3C9F38);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v54 - v5;
  v70 = sub_1C97A2CEC(&qword_1EC3C9F40);
  sub_1C97AE9C8();
  v68 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v54 - v8;
  v72 = sub_1C97A2CEC(&qword_1EC3C9F48);
  sub_1C97AE9C8();
  v63 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v54 - v11;
  v12 = sub_1C97A2CEC(&qword_1EC3C9F50);
  sub_1C97AE9C8();
  v64 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C9F58);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = sub_1C97A2CEC(&qword_1EC3C9F60);
  sub_1C97AE9C8();
  v23 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v27 = v74;
  v28 = sub_1C9874628();
  if (!v27)
  {
    v74 = a1;
    v31 = v72;
    v58 = v16;
    v59 = v20;
    v60 = v17;
    v61 = v26;
    v62 = v23;
    v57 = v21;
    if (*(v73 + 16) == v29)
    {
      if (v28 >= 1)
      {
        v55 = v30;
        v56 = v29;
        v32 = v28;
        sub_1C97A2CEC(&qword_1EC3C99E0);
        sub_1C97DA940();
        v34 = v67;
        (*(v33 + 16))(v67, v65);
        v35 = sub_1C97A2CEC(&qword_1EC3C9F68);
        v36 = (v34 + *(v35 + 52));
        *v36 = sub_1C991B428;
        v36[1] = 0;
        v37 = (v34 + *(v35 + 56));
        *v37 = sub_1C9875C74;
        v37[1] = 0;
        v38 = sub_1C97A2CEC(&unk_1EC3CC290);
        v39 = v69;
        *(v34 + *(v69 + 60)) = v32;
        *(v34 + *(v39 + 64)) = v32;
        v40 = *(v39 + 68);
        v54 = v38;
        *(v34 + v40) = v38;
        v65 = sub_1C97A2CEC(&qword_1EC3CD680);
        sub_1C97AE67C(&qword_1EC3C9F70, &qword_1EC3C9F38);
        v41 = v66;
        sub_1C9A91F68();
        sub_1C97DA1E0(v34, &qword_1EC3C9F38);
        v42 = v71;
        sub_1C98739B0(v74, v75, v71);
        (*(v68 + 8))(v41, v70);
        v75 = 0;
        v43 = swift_allocObject();
        v44 = v55;
        v45 = v56;
        v43[2] = v32;
        v43[3] = v45;
        v46 = v73;
        v43[4] = v44;
        v43[5] = v46;
        v74 = MEMORY[0x1E695BD60];
        sub_1C97AE67C(&qword_1EC3C9F78, &qword_1EC3C9F48);

        v47 = v58;
        sub_1C9A92048();

        (*(v63 + 8))(v42, v31);
        v48 = swift_allocObject();
        *(v48 + 16) = sub_1C9874F84;
        *(v48 + 24) = 0;
        sub_1C97A2CEC(&unk_1EC3C73A0);
        sub_1C97AE67C(&qword_1EC3C9F80, &qword_1EC3C9F50);
        sub_1C97AE67C(&unk_1EC3C4AE0, &unk_1EC3C73A0);
        v49 = v59;
        sub_1C9A92078();

        (*(v64 + 8))(v47, v12);
        sub_1C97F07FC();
        *(swift_allocObject() + 16) = v46;

        sub_1C97A2CEC(&qword_1EC3C82B8);
        sub_1C97AE67C(&qword_1EC3C9F88, &qword_1EC3C9F58);
        v50 = v61;
        sub_1C9A91F68();

        sub_1C97DA1E0(v49, &qword_1EC3C9F58);
        sub_1C97AE67C(&qword_1EC3C9F90, &qword_1EC3C9F60);
        v51 = v57;
        a1 = sub_1C9A91F28();
        (*(v62 + 8))(v50, v51);
        return a1;
      }

      a1 = 5;
    }

    else
    {
      a1 = 6;
    }

    sub_1C9875B0C();
    sub_1C97A7A80();
    *v52 = a1;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1C9874628()
{
  sub_1C988A58C(v72);
  if (v0)
  {
    return v1;
  }

  v2 = sub_1C9881404();
  type metadata accessor for E5RTIOPort();
  *(swift_initStackObject() + 16) = v2;
  v1 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  sub_1C97F07FC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptor();
  *(swift_initStackObject() + 16) = v1;
  v4 = sub_1C98813B4();

  *(swift_initStackObject() + 16) = v4;
  v73 = v72[4];
  sub_1C97DA1E0(&v73, &qword_1EC3C9FC0);
  v5 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  sub_1C97F07FC();
  swift_deallocClassInstance();
  *(swift_initStackObject() + 16) = v5;
  v6 = sub_1C9881C2C();
  type metadata accessor for E5RTTensorDescriptorDataType();
  *(swift_initStackObject() + 16) = v6;
  v7 = sub_1C987ED10();
  if (v7 != 1 || sub_1C987EDA8() != 4)
  {
    sub_1C9875B0C();
    sub_1C97A7A80();
    *v10 = 0;
    swift_willThrow();
LABEL_13:
    swift_setDeallocating();
    sub_1C9881DCC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    swift_setDeallocating();
    sub_1C9881C7C();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    swift_setDeallocating();
    sub_1C9881C7C();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    return v1;
  }

  v8 = sub_1C9881C2C();
  *(swift_initStackObject() + 16) = v8;
  if (sub_1C987ED10() != 1 || sub_1C987EDA8() != 4)
  {
    sub_1C9875B0C();
    sub_1C97A7A80();
    v12 = 1;
LABEL_15:
    *v11 = v12;
    swift_willThrow();
    goto LABEL_16;
  }

  if (qword_1EC3C5DE8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3D32B8)
  {
    v9 = qword_1EC3D3290;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
LABEL_16:
    swift_setDeallocating();
    sub_1C9881DCC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    goto LABEL_13;
  }

  v13 = *(qword_1EC3D32B0 + 16);
  v65 = *(qword_1EC3D32A8 + 16);
  v68 = *(qword_1EC3D32A0 + 16);
  v74 = qword_1EC3D32A0;

  v69 = sub_1C992BBB4(v13, v68, v65);

  v14 = sub_1C9881B70();
  v16 = sub_1C9A0840C(v14, v15);
  v61 = sub_1C9A1692C(v16);
  if (v17 & 1) != 0 || (, v18 = sub_1C98751E8(1, v16), v1 = sub_1C9A16950(v18, v19, v20, v21), LODWORD(v74) = v22, swift_unknownObjectRelease(), (v74))
  {

LABEL_20:
    sub_1C9875B0C();
    sub_1C97A7A80();
    v12 = 2;
    goto LABEL_15;
  }

  result = sub_1C98751E8(2, v16);
  v60 = result;
  v26 = (v25 >> 1) - v24;
  if (v25 >> 1 == v24)
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if ((v25 >> 1) <= v24)
    {
      __break(1u);
      goto LABEL_55;
    }

    v74 = v23 + 8 * v24;
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      v37 = *v74;
      v74 += 8;
      v66 = v37;
      if (v37 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C9876068();
        }

        sub_1C987608C();
        if (v46)
        {
          sub_1C9876044();
        }

        sub_1C987602C(v38, v39, v40, v41, v42, v43, v44, v45, v59, v60, v61, v63, v64, v66);
      }

      --v26;
    }

    while (v26);
  }

  swift_unknownObjectRelease();
  v28 = *(v27 + 16);

  if (v28)
  {
    goto LABEL_20;
  }

  if (v61 != v69)
  {
    sub_1C9875B0C();
    sub_1C97A7A80();
    v12 = 4;
    goto LABEL_15;
  }

  v29 = sub_1C9881B70();
  v31 = sub_1C9A0840C(v29, v30);
  sub_1C9A1692C(v31);
  if (v32 & 1) != 0 || (, v74 = sub_1C98751E8(1, v31), sub_1C9A16950(v74, v33, v34, v35), v70 = v36, swift_unknownObjectRelease(), (v70))
  {

LABEL_28:
    sub_1C9875B0C();
    sub_1C97A7A80();
    v12 = 3;
    goto LABEL_15;
  }

  result = sub_1C98751E8(2, v31);
  v62 = result;
  v74 = (v49 >> 1) - v48;
  if (v49 >> 1 == v48)
  {
    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  if ((v49 >> 1) > v48)
  {
    v71 = (v47 + 8 * v48);
    v50 = MEMORY[0x1E69E7CC0];
    do
    {
      v67 = *v71++;
      if (v67 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C9876068();
        }

        sub_1C987608C();
        if (v46)
        {
          sub_1C9876044();
        }

        sub_1C987602C(v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v62, v63, v64, v67);
      }

      --v74;
    }

    while (v74);
LABEL_42:
    swift_unknownObjectRelease();
    v74 = *(v50 + 16);

    if (!v74)
    {
      swift_setDeallocating();
      sub_1C9881DCC();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      swift_setDeallocating();
      sub_1C9881DCC();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      swift_setDeallocating();
      sub_1C9881C7C();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      swift_setDeallocating();
      sub_1C9881C7C();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      return v1;
    }

    goto LABEL_28;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1C9874E28@<X0>(uint64_t *a1@<X8>)
{
  sub_1C97A2CEC(&unk_1EC3CC290);
  sub_1C97AE67C(&qword_1EC3C4A50, &unk_1EC3CC290);
  sub_1C97AE67C(&unk_1EC3C4A40, &qword_1EC3C9AA0);
  v2 = sub_1C9824E6C();
  result = sub_1C97A2CEC(&qword_1EC3C9AA0);
  a1[3] = result;
  a1[4] = &off_1F4948ED0;
  *a1 = v2;
  return result;
}

void sub_1C9874F14(uint64_t *a1@<X0>, int64_t a2@<X2>, int64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  sub_1C98253C8(*a1, a2, a3);
  if (!v5)
  {
    v9 = sub_1C97DDA50(v8, *(a4 + 16));

    *a5 = v9;
  }
}

uint64_t sub_1C9874F84(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C6750);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = *a1;
  sub_1C97A2CEC(&unk_1EC3CC290);
  sub_1C97AE67C(&qword_1EC3C4A50, &unk_1EC3CC290);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C98750F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C97B7EE8();
    v5 = (v3 + 32);
    v6 = *(v9 + 16);
    do
    {
      v7 = *v5;
      if (v6 >= *(v9 + 24) >> 1)
      {
        sub_1C97B7EE8();
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v7;
      ++v5;
      ++v6;
      --v4;
    }

    while (v4);
  }

  result = sub_1C992C2F8();
  *a2 = result;
  return result;
}

uint64_t sub_1C98751E8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1C9875BF0(*(a2 + 16), -result, 0);
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = result;
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = sub_1C97AE9C4(0);

      return v4;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_1C9875278(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v33 = a2;
  v34 = a3;
  v40 = a1;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - v8;
  v10 = sub_1C9A91C28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C97A2CEC(&qword_1EC3C8240);
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v35 = v28 - v15;
  v16 = sub_1C97A2CEC(&qword_1EC3C99E0);
  v36 = *(v16 - 8);
  v37 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v32 = v28 - v17;
  v18 = a4[1];
  v41[0] = *a4;
  v41[1] = v18;
  v19 = a4[3];
  v41[2] = a4[2];
  v41[3] = v19;
  v20 = v41;
  v21 = sub_1C97DD3BC(1, 16000);
  if (!v4)
  {
    v31 = v21;
    v30 = sub_1C98BF080();
    v42 = v30;
    v22 = *MEMORY[0x1E695BD28];
    v23 = *(v11 + 104);
    v29 = v10;
    v23(v13, v22, v10);
    (*(v7 + 104))(v9, *MEMORY[0x1E695BD40], v6);
    v28[1] = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v24 = v35;
    sub_1C9A92018();
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v29);

    sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v25 = v32;
    v26 = v39;
    sub_1C9A91F68();
    (*(v38 + 8))(v24, v26);
    v20 = sub_1C9873E78(v40, v33, v34);
    (*(v36 + 8))(v25, v37);
  }

  sub_1C97DA1E0(a4, &qword_1EC3CE010);
  return v20;
}

uint64_t *sub_1C9875720(_OWORD *a1)
{
  v3 = sub_1C9A91558();
  sub_1C97AE9C8();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  sub_1C97E82EC(a1, v21, &qword_1EC3CE010);
  sub_1C98C73E0(43, v11);
  if (v1)
  {
    v18 = &qword_1EC3CE010;
  }

  else
  {
    v12 = sub_1C9880658();
    type metadata accessor for E5RTExecutionStream();
    swift_allocObject();
    v22 = sub_1C9880798(v12);
    v20[1] = type metadata accessor for E5RTExecutionStreamOperation();
    sub_1C9A913F8();
    sub_1C9A91508();
    v13 = *(v5 + 8);
    v13(v9, v3);
    sub_1C98817E8();
    v15 = v14;
    v16 = v22;

    sub_1C9882AF4(v15);
    sub_1C9880DE8();
    sub_1C97E82EC(a1, v21, &qword_1EC3CE010);
    v18 = sub_1C9875278(v16, v15, &unk_1F492A050, a1);
    v19 = sub_1C97E89F0();
    (v13)(v19);
  }

  sub_1C97DA1E0(a1, &qword_1EC3CE010);
  sub_1C97DA1E0(a1, &qword_1EC3CE010);
  return v18;
}

unint64_t sub_1C9875A88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (result = sub_1C9A32230(a2, a3), (v7 & 1) != 0))
  {
    *a4 = *(*(v5 + 56) + 8 * result);
  }

  else
  {
    sub_1C9875B0C();
    sub_1C97A7A80();
    *v8 = 7;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C9875B0C()
{
  result = qword_1EC3C9F30;
  if (!qword_1EC3C9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9F30);
  }

  return result;
}

char *sub_1C9875B60(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1C9A91328();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1C9873D8C(v5, v11);
}

uint64_t sub_1C9875BF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

char *sub_1C9875C44@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_1C9873C44(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1C9875C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C99F5198(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C9875DB8()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for MicroSoundPrintUtils.DomainError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MicroSoundPrintUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9875FD8()
{
  result = qword_1EC3C9FD8;
  if (!qword_1EC3C9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9FD8);
  }

  return result;
}

void sub_1C9876044()
{

  sub_1C97B7C28();
}

void sub_1C9876068()
{

  sub_1C97B7C28();
}

uint64_t sub_1C98760A0(uint64_t a1, uint64_t a2)
{
  if (sub_1C9808C60(*a1, *a2) & 1) != 0 && (*(a1 + 8) == *(a2 + 8) ? (v4 = *(a1 + 16) == *(a2 + 16)) : (v4 = 0), v4 || (sub_1C9A93B18()))
  {
    v5 = *(a1 + 40);
    v12[0] = *(a1 + 24);
    v12[1] = v5;
    v6 = *(a1 + 72);
    v12[2] = *(a1 + 56);
    v12[3] = v6;
    v7 = *(a2 + 40);
    v11[0] = *(a2 + 24);
    v11[1] = v7;
    v8 = *(a2 + 72);
    v11[2] = *(a2 + 56);
    v11[3] = v8;
    v9 = sub_1C99CEC08(v12, v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C9876144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C6966 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6142726576726573 && a2 == 0xEE00687461506573;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E49726576726573 && a2 == 0xEA00000000006F66)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C9876260(char a1)
{
  if (!a1)
  {
    return 0x73656C6966;
  }

  if (a1 == 1)
  {
    return 0x6142726576726573;
  }

  return 0x6E49726576726573;
}

uint64_t sub_1C98762C4(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3CA020);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9877A20();
  sub_1C9A93DD8();
  *&v17 = *v3;
  LOBYTE(v16[0]) = 0;
  sub_1C97A2CEC(&qword_1EC3C7BF0);
  sub_1C9877B30(&unk_1EC3D23D0);
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1C9A939C8();
    v11 = *(v3 + 40);
    v21[0] = *(v3 + 24);
    v21[1] = v11;
    v12 = *(v3 + 72);
    v21[2] = *(v3 + 56);
    v21[3] = v12;
    v13 = *(v3 + 40);
    v17 = *(v3 + 24);
    v18 = v13;
    v14 = *(v3 + 72);
    v19 = *(v3 + 56);
    v20 = v14;
    v22 = 2;
    sub_1C9840AC4(v21, v16);
    sub_1C9877B9C();
    sub_1C9A93A18();
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    v16[3] = v20;
    sub_1C9877BF0(v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C987652C()
{
  sub_1C97C7EF4();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t sub_1C98765CC()
{
  sub_1C9A93CC8();
  sub_1C97C7EF4();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void *sub_1C9876674@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v29 = sub_1C97A2CEC(&qword_1EC3C9FF8);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9877A20();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v13 = a2;
  sub_1C97A2CEC(&qword_1EC3C7BF0);
  LOBYTE(v14[0]) = 0;
  sub_1C9877B30(&qword_1EC3CA010);
  sub_1C9A938F8();
  v6 = v15[0];
  LOBYTE(v15[0]) = 1;
  v11 = sub_1C9A938A8();
  v12 = v7;
  v20 = 2;
  sub_1C9877A74();
  sub_1C9A938F8();
  v8 = sub_1C98780E8();
  v9(v8);
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v14[0] = v6;
  v14[1] = v11;
  v14[2] = v12;
  *&v14[3] = v21;
  *&v14[5] = v22;
  *&v14[7] = v23;
  *&v14[9] = v24;
  sub_1C9877AC8(v14, v15);
  sub_1C97A592C(a1);
  v15[0] = v6;
  v15[1] = v11;
  v15[2] = v12;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  sub_1C9877B00(v15);
  return memcpy(v13, v14, 0x58uLL);
}

uint64_t sub_1C9876960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9876144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9876988(uint64_t a1)
{
  v2 = sub_1C9877A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98769C4(uint64_t a1)
{
  v2 = sub_1C9877A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C9876A00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9876674(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x58uLL);
  }

  return result;
}

uint64_t sub_1C9876A6C()
{
  sub_1C9A93CC8();
  sub_1C987652C();
  return sub_1C9A93D18();
}

id sub_1C9876AAC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *&a4[OBJC_IVAR___SNFileServerInfo_impl + 16];
  v19[0] = *&a4[OBJC_IVAR___SNFileServerInfo_impl];
  v19[1] = v8;
  v9 = *&a4[OBJC_IVAR___SNFileServerInfo_impl + 48];
  v20 = *&a4[OBJC_IVAR___SNFileServerInfo_impl + 32];
  v21 = v9;
  v22 = v19[0];
  v23 = v8;
  v24 = v20;
  v25 = v9;
  v10 = type metadata accessor for SNDeleteFilesRequest();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___SNDeleteFilesRequest_impl];
  v13 = v23;
  *(v12 + 24) = v19[0];
  *(v12 + 40) = v13;
  v14 = v25;
  *(v12 + 56) = v24;
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  *(v12 + 72) = v14;
  sub_1C9840AC4(v19, v18);
  v17.receiver = v11;
  v17.super_class = v10;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t (*sub_1C9876C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  [v12 setDispatchQueue_];
  v13 = sub_1C9A92988();
  sub_1C97ACC50(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = v12;
  v14[6] = a4;
  v14[7] = a5;
  v15 = v5;
  v16 = v12;

  v17 = sub_1C9A1E148(0, 0, v11, &unk_1C9AA9498, v14);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  return sub_1C9877E08;
}

uint64_t sub_1C9876D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[48] = a6;
  v7[49] = a7;
  v7[46] = a4;
  v7[47] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C9876DA4, 0, 0);
}

uint64_t sub_1C9876DA4()
{
  v1 = (v0[46] + OBJC_IVAR___SNDeleteFilesRequest_impl);
  v2 = *v1;
  v0[50] = *v1;
  v3 = v2[2];
  v0[51] = v3;
  if (v3)
  {
    v0[52] = type metadata accessor for SNFileSharingUtils();
    v4 = v1[1];
    v0[53] = v4;
    v5 = v1[2];
    v0[54] = v5;
    v0[55] = v1[3];
    v0[56] = v1[4];
    v0[58] = 0;
    v6 = v2[4];
    v0[59] = v6;
    v7 = v2[5];
    v0[60] = v7;
    sub_1C97A2CEC(&qword_1EC3C6C58);
    inited = swift_initStackObject();
    v9 = sub_1C98780C8(inited, xmmword_1C9AA3B60);
    v9[3].n128_u64[0] = v4;
    v9[3].n128_u64[1] = v5;
    v10 = sub_1C98780A8(v9);
    *(v10 + 80) = v6;
    *(v10 + 88) = v7;
    swift_bridgeObjectRetain_n();

    sub_1C9A92348();
    sub_1C98789E0();
    sub_1C9878144(v11);
    v12 = swift_task_alloc();
    v0[62] = v12;
    *v12 = v0;
    sub_1C9878058();
    *(v13 + 8) = v14;
    v15 = v0[55];
    v16 = v0[56];
    v17 = v0[47];

    return sub_1C983F420(0xD000000000000016, 0x80000001C9AD7300, v7, v15, v16, v17);
  }

  else
  {
    v19 = v0[47];
    v0[2] = v0;
    sub_1C9878074();
    v20 = sub_1C97A2CEC(&qword_1EC3CA050);
    sub_1C9878038(v20);
    v0[23] = 1107296256;
    sub_1C9878020();
    [v19 activateWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1C9876FC8()
{
  sub_1C97AA84C();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 456) = v4;
  if (v4)
  {
    v5 = sub_1C98776A0;
  }

  else
  {
    v5 = sub_1C981DFBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C98770D4()
{
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v2 + 504) = v0;

  if (v0)
  {
    v6 = sub_1C9877430;
  }

  else
  {

    v6 = sub_1C987720C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C987720C()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = type metadata accessor for SNFileDeletionResult();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___SNFileDeletionResult_impl];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v0 + 344) = v6;
  *(v0 + 352) = v5;
  v8 = objc_msgSendSuper2((v0 + 344), sel_init);
  *(v0 + 296) = v5;
  *(v0 + 272) = v8;
  v9 = v8;
  v4(v0 + 272);

  sub_1C97A592C(v0 + 272);
  v10 = *(v0 + 464) + 1;
  if (v10 == *(v0 + 408))
  {
    v11 = *(v0 + 376);
    *(v0 + 16) = v0;
    sub_1C9878074();
    v12 = sub_1C97A2CEC(&qword_1EC3CA050);
    sub_1C9878038(v12);
    *(v0 + 184) = 1107296256;
    sub_1C9878020();
    [v11 activateWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    sub_1C9878120(v10);
    sub_1C97A2CEC(&qword_1EC3C6C58);
    inited = swift_initStackObject();
    v14 = sub_1C98780C8(inited, xmmword_1C9AA3B60);
    v14[3].n128_u64[0] = v2;
    v14[3].n128_u64[1] = v3;
    v15 = sub_1C98780A8(v14);
    *(v15 + 80) = v4;
    *(v15 + 88) = v9;
    swift_bridgeObjectRetain_n();

    sub_1C9A92348();
    sub_1C98789E0();
    sub_1C9878144(v16);
    v17 = swift_task_alloc();
    *(v0 + 496) = v17;
    *v17 = v0;
    v18 = sub_1C9878058();
    *(v18 + 8) = v19;
    v20 = sub_1C98780F8();

    return sub_1C983F420(v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_1C9877430()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 472);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);

  swift_getErrorValue();
  v6 = sub_1C9A93C38();
  v8 = v7;
  v9 = type metadata accessor for SNFileDeletionResult();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___SNFileDeletionResult_impl];
  *v11 = v3;
  *(v11 + 1) = v2;
  *(v11 + 2) = v6;
  *(v11 + 3) = v8;
  *(v0 + 328) = v10;
  *(v0 + 336) = v9;
  v12 = objc_msgSendSuper2((v0 + 328), sel_init);
  *(v0 + 240) = v12;
  *(v0 + 264) = v9;
  v13 = v12;
  v5(v0 + 240);

  sub_1C97A592C(v0 + 240);
  v14 = *(v0 + 464) + 1;
  if (v14 == *(v0 + 408))
  {
    v15 = *(v0 + 376);
    *(v0 + 16) = v0;
    sub_1C9878074();
    v16 = sub_1C97A2CEC(&qword_1EC3CA050);
    sub_1C9878038(v16);
    *(v0 + 184) = 1107296256;
    sub_1C9878020();
    [v15 activateWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    sub_1C9878120(v14);
    sub_1C97A2CEC(&qword_1EC3C6C58);
    inited = swift_initStackObject();
    v18 = sub_1C98780C8(inited, xmmword_1C9AA3B60);
    v18[3].n128_u64[0] = v0 + 240;
    v18[3].n128_u64[1] = v4;
    v19 = sub_1C98780A8(v18);
    *(v19 + 80) = v13;
    *(v19 + 88) = v1;
    swift_bridgeObjectRetain_n();

    sub_1C9A92348();
    sub_1C98789E0();
    sub_1C9878144(v20);
    v21 = swift_task_alloc();
    *(v0 + 496) = v21;
    *v21 = v0;
    v22 = sub_1C9878058();
    *(v22 + 8) = v23;
    v24 = sub_1C98780F8();

    return sub_1C983F420(v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C98776A0()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C987770C(void *a1)
{
  [a1 invalidate];
  sub_1C97A2CEC(&unk_1EC3CA040);

  return sub_1C9A92A28();
}

id SNDeleteFilesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNDeleteFilesRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNDeleteFilesRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C9877924(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C9877964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C98779CC()
{
  result = qword_1EC3C9FF0;
  if (!qword_1EC3C9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9FF0);
  }

  return result;
}

unint64_t sub_1C9877A20()
{
  result = qword_1EC3CA000;
  if (!qword_1EC3CA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA000);
  }

  return result;
}

unint64_t sub_1C9877A74()
{
  result = qword_1EC3CA018;
  if (!qword_1EC3CA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA018);
  }

  return result;
}

uint64_t sub_1C9877B30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C7BF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9877B9C()
{
  result = qword_1EC3CA030;
  if (!qword_1EC3CA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA030);
  }

  return result;
}

uint64_t sub_1C9877C44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C9877D18;

  return sub_1C9876D80(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C9877D18()
{
  v1 = *v0;
  sub_1C97AA84C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

_BYTE *storeEnumTagSinglePayload for DeleteFilesRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9877F1C()
{
  result = qword_1EC3CA058;
  if (!qword_1EC3CA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA058);
  }

  return result;
}

unint64_t sub_1C9877F74()
{
  result = qword_1EC3CA060;
  if (!qword_1EC3CA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA060);
  }

  return result;
}

unint64_t sub_1C9877FCC()
{
  result = qword_1EC3CA068;
  if (!qword_1EC3CA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA068);
  }

  return result;
}

void sub_1C9878020()
{
  v1[24] = sub_1C9A1E374;
  v1[25] = v0;
  v1[26] = v2;
}

uint64_t sub_1C9878038(uint64_t result)
{
  *(v1 + 232) = result;
  *(v1 + 176) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t sub_1C9878074()
{
  *(v0 + 24) = sub_1C9876FC8;

  return swift_continuation_init();
}

uint64_t sub_1C98780A8(uint64_t result)
{
  *(result + 64) = 0x68746150656C6966;
  *(result + 72) = 0xE900000000000073;
  return result;
}

__n128 *sub_1C98780C8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6874615065736162;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

void sub_1C9878120(uint64_t a1@<X8>)
{
  v1[58] = a1;
  v2 = v1[50] + 16 * a1;
  v1[59] = *(v2 + 32);
  v1[60] = *(v2 + 40);
}

uint64_t sub_1C9878144(uint64_t a1)
{
  *(v1 + 488) = a1;
}

double sub_1C9878160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_1C9A32230(a1, a2), (v6 & 1) != 0))
  {
    v7 = sub_1C987B3B8(v5);

    sub_1C97BD360(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1C98781BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1C9A32230(a1, a2), (v4 & 1) != 0))
  {
    sub_1C987B364(v3);
  }

  else
  {
    sub_1C987B3F4();
  }

  return sub_1C97CB094();
}

double sub_1C9878200@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1C9A32310(), (v4 & 1) != 0))
  {
    v5 = sub_1C987B3B8(v3);

    sub_1C97BD360(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C987825C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1C9A323A0(a1 & 1), (v3 & 1) != 0))
  {
    sub_1C987B364(v2);
  }

  else
  {
    sub_1C987B3F4();
  }

  return sub_1C97CB094();
}

void *sub_1C98782A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C9A32230(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1C98782EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1C9A323E4(), (v2 & 1) != 0))
  {
  }

  else
  {
    sub_1C987B3F4();
  }

  return sub_1C97CB094();
}

uint64_t sub_1C9878364(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C9A323E4();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98783B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_1C9A32424(result), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 48 * result;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = *(v6 + 40);
    result = sub_1C987AD48(*v6, v7, v9, v10, v11);
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v8 = 1;
  }

  *a3 = v8;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  return result;
}

uint64_t sub_1C9878464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C9A32230(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double sub_1C98784BC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1C9A324EC(), (v4 & 1) != 0))
  {
    v5 = sub_1C987B3B8(v3);

    sub_1C97BD360(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C9878518(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1C9A32468(), (v3 & 1) != 0))
  {
    sub_1C987B364(v2);
  }

  else
  {
    sub_1C987B3F4();
  }

  return sub_1C97CB094();
}

uint64_t sub_1C987855C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C9A32468();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98785AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C9A32230(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 16 * v4);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C9878610()
{
  sub_1C987B3C8();
  if (v1)
  {
    sub_1C97A2CEC(&qword_1EC3CA090);
    v4 = sub_1C987B39C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  sub_1C987B300();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    sub_1C987B378();
    v15 = *(v14 + 8 * v13);
    sub_1C97BD318(0, &qword_1EC3C54F8);

    v16 = v15;
    swift_dynamicCast();
    sub_1C97A2D34(&v26, v28);
    sub_1C97A2D34(v28, v29);
    sub_1C97A2D34(v29, &v27);
    result = sub_1C9A32230(v3, v2);
    v17 = result;
    if (v18)
    {
      sub_1C987B3E8();
      *v19 = v3;
      v19[1] = v2;

      v2 = (v4[7] + 32 * v17);
      sub_1C97A592C(v2);
      result = sub_1C97A2D34(&v27, v2);
      v11 = v12;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      sub_1C987B3D4();
      *(v4 + v20 + 64) |= v21;
      sub_1C987B3E8();
      *v22 = v3;
      v22[1] = v2;
      result = sub_1C97A2D34(&v27, (v4[7] + 32 * v17));
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v4[2] = v25;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v4;
    }

    v7 = *(v0 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}