unint64_t sub_23DEC86E0()
{
  result = qword_27E32D130;
  if (!qword_27E32D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D130);
  }

  return result;
}

id sub_23DEC87CC()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000023;
  *(inited + 48) = 0x800000023E24EBD0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v115 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  v114 = v3;
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v113 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v17;
  v19 = sub_23E1FDABC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  *&v110 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  v112 = xmmword_23E222370;
  *(v22 + 16) = xmmword_23E222370;
  v23 = *MEMORY[0x277D7CC10];
  *(v22 + 32) = *MEMORY[0x277D7CC10];
  v24 = v21;
  v25 = v23;
  sub_23E1FDCBC();
  v109 = v26;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v27 = v115;
  v28 = [v115 bundleURL];
  sub_23E1FBF9C();

  v29 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 40) = v30;
  v31 = *MEMORY[0x277D7CC30];
  v32 = v113;
  *(v22 + 64) = v113;
  *(v22 + 72) = v31;
  v33 = v31;
  sub_23E1FDCBC();
  v109 = v34;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v35 = [v27 bundleURL];
  sub_23E1FBF9C();

  v36 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 104) = v32;
  *(v22 + 80) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v38 = sub_23E1FDABC();
  v39 = v110;
  v40 = sub_23DF3BE54(v38);
  v41 = MEMORY[0x277D7CCC8];
  *(inited + 160) = v40;
  v42 = *v41;
  *(inited + 184) = v39;
  *(inited + 192) = v42;
  v43 = MEMORY[0x277D839B0];
  *(inited + 200) = 0;
  v44 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v43;
  *(inited + 232) = v44;
  v45 = v42;
  v46 = v44;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v47 = v115;
  v48 = [v115 bundleURL];
  sub_23E1FBF9C();

  v49 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 240) = v50;
  v51 = *MEMORY[0x277D7CDD0];
  v52 = v113;
  *(inited + 264) = v113;
  *(inited + 272) = v51;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v53 = swift_initStackObject();
  v110 = xmmword_23E222380;
  *(v53 + 16) = xmmword_23E222380;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  *(v53 + 48) = 0;
  *(v53 + 72) = MEMORY[0x277D839B0];
  *(v53 + 80) = 0x614E74757074754FLL;
  *(v53 + 88) = 0xEA0000000000656DLL;
  v54 = v51;
  v109 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v55 = [v47 bundleURL];
  sub_23E1FBF9C();

  v56 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v53 + 96) = v57;
  *(v53 + 120) = v52;
  *(v53 + 128) = 0x7365707954;
  *(v53 + 136) = 0xE500000000000000;
  *(v53 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v53 + 144) = &unk_2850245E0;
  v58 = MEMORY[0x277D837D0];
  v59 = sub_23E1FDABC();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v109 = v60;
  *(inited + 280) = v59;
  v61 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v60;
  *(inited + 312) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_23E2235B0;
  v104 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_23E224710;
  v63 = *MEMORY[0x277D7CDF8];
  *(v62 + 64) = v58;
  *(v62 + 32) = v63;
  *(v62 + 40) = 0xD000000000000013;
  *(v62 + 48) = 0x800000023E254230;
  v64 = v61;
  v65 = v63;
  v66 = sub_23E1FDBDC();
  *(v62 + 104) = v58;
  *(v62 + 72) = v66;
  strcpy((v62 + 80), "HundredMeters");
  *(v62 + 94) = -4864;
  v107 = 0xD000000000000018;
  *(v62 + 112) = sub_23E1FDBDC();
  *(v62 + 120) = 1;
  v67 = *MEMORY[0x277D7CE70];
  *(v62 + 144) = MEMORY[0x277D839B0];
  *(v62 + 152) = v67;
  v106 = 0x800000023E254290;
  *(v62 + 160) = 0xD000000000000017;
  *(v62 + 168) = 0x800000023E254290;
  v68 = *MEMORY[0x277D7CE80];
  *(v62 + 184) = v58;
  *(v62 + 192) = v68;
  v69 = v67;
  v70 = v68;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v71 = [v115 bundleURL];
  sub_23E1FBF9C();

  v72 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v62 + 224) = v113;
  *(v62 + 200) = v73;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v74 = sub_23E1FDABC();
  v75 = sub_23DF3BE9C(v74);
  v76 = v105;
  *(v105 + 32) = v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 320) = v76;
  v78 = *MEMORY[0x277D7CB98];
  *(inited + 344) = v77;
  *(inited + 352) = v78;
  v79 = v78;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v80 = [v115 bundleURL];
  sub_23E1FBF9C();

  v81 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v83 = v82;
  v84 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v85 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 360) = v84;
  v86 = *MEMORY[0x277D7CF20];
  *(inited + 384) = v85;
  *(inited + 392) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v87 = swift_allocObject();
  *(v87 + 16) = v112;
  v88 = swift_allocObject();
  *(v88 + 16) = v112;
  *(v88 + 32) = 0xD000000000000011;
  *(v88 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_23E222340;
  v90 = swift_allocObject();
  *(v90 + 16) = v110;
  strcpy((v90 + 32), "WFParameterKey");
  *(v90 + 47) = -18;
  v91 = v106;
  *(v90 + 48) = 0xD000000000000017;
  *(v90 + 56) = v91;
  v92 = MEMORY[0x277D837D0];
  *(v90 + 72) = MEMORY[0x277D837D0];
  *(v90 + 80) = 0xD000000000000010;
  *(v90 + 88) = 0x800000023E24D710;
  v93 = v86;
  v94 = sub_23E1FDABC();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF48, &qword_23E227258);
  *(v90 + 96) = v94;
  *(v90 + 120) = v95;
  *(v90 + 128) = 0x72756F7365524657;
  *(v90 + 168) = v92;
  *(v90 + 136) = 0xEF7373616C436563;
  *(v90 + 144) = 0xD00000000000001BLL;
  *(v90 + 152) = 0x800000023E24D730;
  *(v89 + 32) = sub_23E1FDABC();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v88 + 48) = v89;
  *(v88 + 72) = v96;
  *(v88 + 80) = 0x72756F7365524657;
  *(v88 + 120) = v92;
  v97 = v107;
  *(v88 + 88) = 0xEF7373616C436563;
  *(v88 + 96) = v97;
  *(v88 + 104) = 0x800000023E254420;
  *(v87 + 32) = sub_23E1FDABC();
  *(v87 + 88) = v92;
  *(v87 + 56) = v109;
  *(v87 + 64) = 0xD00000000000001CLL;
  *(v87 + 72) = 0x800000023E24D7B0;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v99 = MEMORY[0x277D7CB78];
  *(inited + 400) = v87;
  v100 = *v99;
  *(inited + 424) = v98;
  *(inited + 432) = v100;
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v101 = v100;
  v102 = sub_23E1FDABC();
  return sub_23DF3BF9C(v102);
}

id sub_23DEC9670()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v245 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v255 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E254970;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v273 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v272 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v17;
  v19 = sub_23E1FDABC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v254 = v20;
  *(inited + 120) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v270 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  v262 = xmmword_23E222370;
  *(v22 + 16) = xmmword_23E222370;
  v23 = *MEMORY[0x277D7CC28];
  *(v22 + 32) = *MEMORY[0x277D7CC28];
  v24 = v21;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v265 = inited;
  sub_23E1FC14C();
  v26 = v273;
  v27 = [v273 bundleURL];
  v271 = v3;
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 40) = v29;
  v30 = *MEMORY[0x277D7CC30];
  v31 = v272;
  *(v22 + 64) = v272;
  *(v22 + 72) = v30;
  v32 = v30;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v33 = [v26 bundleURL];
  sub_23E1FBF9C();

  v34 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 104) = v31;
  *(v22 + 80) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v36 = sub_23E1FDABC();
  v37 = v270;
  v38 = sub_23DF3BE54(v36);
  v39 = MEMORY[0x277D7CCC8];
  v40 = v265;
  v265[20] = v38;
  v41 = *v39;
  v40[23] = v37;
  v40[24] = v41;
  v42 = MEMORY[0x277D839B0];
  *(v40 + 200) = 0;
  v43 = *MEMORY[0x277D7CB90];
  v40[28] = v42;
  v40[29] = v43;
  v44 = v40;
  v45 = v41;
  v46 = v43;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v47 = [v273 bundleURL];
  sub_23E1FBF9C();

  v48 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v44[30] = v49;
  v50 = *MEMORY[0x277D7CDD0];
  v44[33] = v31;
  v44[34] = v50;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v51 = swift_initStackObject();
  v253 = xmmword_23E222380;
  *(v51 + 16) = xmmword_23E222380;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  *(v51 + 48) = 0;
  *(v51 + 72) = MEMORY[0x277D839B0];
  *(v51 + 80) = 0x614E74757074754FLL;
  *(v51 + 88) = 0xEA0000000000656DLL;
  v52 = v50;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v53 = [v273 bundleURL];
  sub_23E1FBF9C();

  v54 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v51 + 96) = v55;
  *(v51 + 120) = v31;
  *(v51 + 128) = 0x7365707954;
  *(v51 + 136) = 0xE500000000000000;
  *(v51 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v51 + 144) = &unk_285024688;
  v56 = MEMORY[0x277D837D0];
  v57 = sub_23E1FDABC();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v251 = v58;
  v59 = v265;
  v265[35] = v57;
  v60 = *MEMORY[0x277D7CBA0];
  v59[38] = v58;
  v59[39] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v269 = swift_allocObject();
  *(v269 + 16) = xmmword_23E224C50;
  v270 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v61 = swift_allocObject();
  v264 = xmmword_23E224C10;
  *(v61 + 16) = xmmword_23E224C10;
  v62 = *MEMORY[0x277D7CDF8];
  v263 = 0x800000023E24EAF0;
  *(v61 + 32) = v62;
  *(v61 + 40) = 0xD000000000000014;
  *(v61 + 48) = 0x800000023E24EAF0;
  v63 = *MEMORY[0x277D7CE08];
  *(v61 + 64) = v56;
  *(v61 + 72) = v63;
  v64 = v62;
  v65 = v63;
  v66 = v64;
  v67 = v65;
  v260 = v66;
  v261 = v67;
  v68 = v60;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v69 = v273;
  v70 = [v273 bundleURL];
  sub_23E1FBF9C();

  v71 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v61 + 80) = v72;
  v73 = *MEMORY[0x277D7CE70];
  *(v61 + 104) = v272;
  *(v61 + 112) = v73;
  *(v61 + 120) = 0xD000000000000012;
  *(v61 + 128) = 0x800000023E254AA0;
  v74 = *MEMORY[0x277D7CE80];
  *(v61 + 144) = MEMORY[0x277D837D0];
  *(v61 + 152) = v74;
  v75 = v73;
  v76 = v74;
  v77 = v75;
  v78 = v76;
  v257 = v77;
  *&v258 = v78;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v79 = [v69 bundleURL];
  sub_23E1FBF9C();

  v80 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v61 + 160) = v81;
  v82 = *MEMORY[0x277D7CEA8];
  v83 = v272;
  *(v61 + 184) = v272;
  *(v61 + 192) = v82;
  v256 = v82;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v84 = [v273 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v61 + 200) = v86;
  v87 = *MEMORY[0x277D7CF10];
  *(v61 + 224) = v83;
  *(v61 + 232) = v87;
  v88 = MEMORY[0x277D837D0];
  *(v61 + 264) = MEMORY[0x277D837D0];
  *(v61 + 240) = 0x7468676952;
  *(v61 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v266 = v89;
  v267 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v259 = v87;
  v90 = sub_23E1FDABC();
  v91 = sub_23DF3BE9C(v90);
  *(v269 + 32) = v91;
  v92 = swift_allocObject();
  *(v92 + 16) = v264;
  v93 = v260;
  v94 = v261;
  *(v92 + 32) = v260;
  *(v92 + 40) = 0xD000000000000014;
  *(v92 + 48) = v263;
  *(v92 + 64) = v88;
  *(v92 + 72) = v94;
  v250 = v93;
  v260 = v94;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v95 = v273;
  v96 = [v273 bundleURL];
  sub_23E1FBF9C();

  v97 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v92 + 80) = v98;
  v99 = v257;
  v100 = v258;
  *(v92 + 104) = v272;
  *(v92 + 112) = v99;
  v261 = 0xD000000000000011;
  *(v92 + 120) = 0xD000000000000011;
  *(v92 + 128) = 0x800000023E254B80;
  *(v92 + 144) = MEMORY[0x277D837D0];
  *(v92 + 152) = v100;
  v248 = v99;
  v249 = v100;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v101 = [v95 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v92 + 160) = v103;
  v104 = v272;
  v105 = v256;
  *(v92 + 184) = v272;
  *(v92 + 192) = v105;
  *&v258 = v105;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v106 = [v95 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v92 + 200) = v108;
  v109 = v259;
  *(v92 + 224) = v104;
  *(v92 + 232) = v109;
  v110 = MEMORY[0x277D837D0];
  *(v92 + 264) = MEMORY[0x277D837D0];
  *(v92 + 240) = 0x7468676952;
  *(v92 + 248) = 0xE500000000000000;
  v111 = sub_23E1FDABC();
  v112 = sub_23DF3BE9C(v111);
  *(v269 + 40) = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = v264;
  v114 = v250;
  *(v113 + 32) = v250;
  *(v113 + 40) = 0xD000000000000014;
  *(v113 + 48) = v263;
  v115 = v260;
  *(v113 + 64) = v110;
  *(v113 + 72) = v115;
  v257 = v114;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v116 = [v273 bundleURL];
  sub_23E1FBF9C();

  v117 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v113 + 80) = v118;
  v119 = v248;
  v120 = v249;
  *(v113 + 104) = v104;
  *(v113 + 112) = v119;
  v250 = 0xD000000000000010;
  *(v113 + 120) = 0xD000000000000010;
  *(v113 + 128) = 0x800000023E254C50;
  *(v113 + 144) = MEMORY[0x277D837D0];
  *(v113 + 152) = v120;
  v247 = v119;
  v248 = v120;
  v256 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v121 = v273;
  v122 = [v273 bundleURL];
  sub_23E1FBF9C();

  v123 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v113 + 160) = v124;
  v125 = v258;
  *(v113 + 184) = v104;
  *(v113 + 192) = v125;
  v256 = v125;
  sub_23E1FDCBC();
  *&v258 = v126;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v127 = [v121 bundleURL];
  sub_23E1FBF9C();

  v128 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v113 + 200) = v129;
  v130 = v259;
  *(v113 + 224) = v272;
  *(v113 + 232) = v130;
  v131 = MEMORY[0x277D837D0];
  *(v113 + 264) = MEMORY[0x277D837D0];
  *(v113 + 240) = 0x7468676952;
  *(v113 + 248) = 0xE500000000000000;
  v132 = sub_23E1FDABC();
  v133 = sub_23DF3BE9C(v132);
  *(v269 + 48) = v133;
  v134 = swift_initStackObject();
  v258 = xmmword_23E224710;
  *(v134 + 16) = xmmword_23E224710;
  v135 = *MEMORY[0x277D7CDE0];
  *(v134 + 32) = *MEMORY[0x277D7CDE0];
  *(v134 + 40) = 0;
  v136 = v257;
  *(v134 + 64) = MEMORY[0x277D839B0];
  *(v134 + 72) = v136;
  v249 = 0xD000000000000019;
  *(v134 + 80) = 0xD000000000000019;
  *(v134 + 88) = 0x800000023E24F180;
  v137 = v131;
  *(v134 + 104) = v131;
  v138 = v247;
  v139 = v248;
  *(v134 + 112) = v247;
  strcpy((v134 + 120), "WFContactPhoto");
  *(v134 + 135) = -18;
  *(v134 + 144) = v137;
  *(v134 + 152) = v139;
  v140 = v135;
  v245 = v136;
  v246 = v138;
  v247 = v139;
  v257 = v140;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v141 = v273;
  v142 = [v273 bundleURL];
  sub_23E1FBF9C();

  v143 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v134 + 160) = v144;
  v145 = v272;
  v146 = v256;
  *(v134 + 184) = v272;
  *(v134 + 192) = v146;
  v259 = v146;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v147 = [v141 bundleURL];
  sub_23E1FBF9C();

  v148 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v134 + 224) = v145;
  *(v134 + 200) = v149;
  v150 = sub_23E1FDABC();
  v151 = sub_23DF3BE9C(v150);
  *(v269 + 56) = v151;
  v152 = swift_allocObject();
  *(v152 + 16) = v258;
  *(v152 + 32) = v257;
  *(v152 + 40) = 1;
  v153 = v245;
  v154 = v246;
  *(v152 + 64) = MEMORY[0x277D839B0];
  *(v152 + 72) = v153;
  v248 = 0xD00000000000001BLL;
  *(v152 + 80) = 0xD00000000000001BLL;
  *(v152 + 88) = 0x800000023E254D00;
  v155 = MEMORY[0x277D837D0];
  *(v152 + 104) = MEMORY[0x277D837D0];
  *(v152 + 112) = v154;
  *(v152 + 120) = 0xD000000000000015;
  *(v152 + 128) = 0x800000023E254D20;
  v156 = v247;
  *(v152 + 144) = v155;
  *(v152 + 152) = v156;
  v256 = v153;
  v246 = v154;
  v247 = v156;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v157 = v273;
  v158 = [v273 bundleURL];
  sub_23E1FBF9C();

  v159 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v152 + 160) = v160;
  v161 = v272;
  v162 = v259;
  *(v152 + 184) = v272;
  *(v152 + 192) = v162;
  v259 = v162;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v163 = [v157 bundleURL];
  sub_23E1FBF9C();

  v164 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v152 + 224) = v161;
  *(v152 + 200) = v165;
  v166 = sub_23E1FDABC();
  v167 = sub_23DF3BE9C(v166);
  *(v269 + 64) = v167;
  v168 = swift_allocObject();
  *(v168 + 16) = v258;
  v169 = v256;
  *(v168 + 32) = v257;
  *(v168 + 40) = 1;
  *(v168 + 64) = MEMORY[0x277D839B0];
  *(v168 + 72) = v169;
  *(v168 + 80) = 0xD00000000000001CLL;
  *(v168 + 88) = 0x800000023E254DB0;
  v170 = MEMORY[0x277D837D0];
  v171 = v246;
  v172 = v247;
  *(v168 + 104) = MEMORY[0x277D837D0];
  *(v168 + 112) = v171;
  *(v168 + 120) = 0x6361746E6F434657;
  *(v168 + 128) = 0xEF736C69616D4574;
  *(v168 + 144) = v170;
  *(v168 + 152) = v172;
  v256 = v169;
  v257 = v171;
  *&v258 = v172;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v173 = v273;
  v174 = [v273 bundleURL];
  sub_23E1FBF9C();

  v175 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v168 + 160) = v176;
  v177 = v272;
  v178 = v259;
  *(v168 + 184) = v272;
  *(v168 + 192) = v178;
  sub_23E1FDCBC();
  v247 = v179;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v180 = [v173 bundleURL];
  sub_23E1FBF9C();

  v181 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v168 + 224) = v177;
  *(v168 + 200) = v182;
  v183 = sub_23E1FDABC();
  v184 = sub_23DF3BE9C(v183);
  *(v269 + 72) = v184;
  v185 = swift_allocObject();
  *(v185 + 16) = v264;
  *(v185 + 32) = v256;
  *(v185 + 40) = 0xD000000000000014;
  *(v185 + 48) = v263;
  v186 = v260;
  *(v185 + 64) = MEMORY[0x277D837D0];
  *(v185 + 72) = v186;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v187 = [v273 bundleURL];
  sub_23E1FBF9C();

  v188 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v185 + 80) = v189;
  v190 = v272;
  v191 = v257;
  *(v185 + 104) = v272;
  *(v185 + 112) = v191;
  strcpy((v185 + 120), "WFContactNotes");
  *(v185 + 135) = -18;
  v192 = v258;
  *(v185 + 144) = MEMORY[0x277D837D0];
  *(v185 + 152) = v192;
  sub_23E1FDCBC();
  *&v264 = v193;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v194 = v273;
  v195 = [v273 bundleURL];
  sub_23E1FBF9C();

  v196 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v185 + 160) = v197;
  v198 = *MEMORY[0x277D7CE98];
  *(v185 + 184) = v190;
  *(v185 + 192) = v198;
  *(v185 + 200) = 1;
  v199 = v259;
  *(v185 + 224) = MEMORY[0x277D839B0];
  *(v185 + 232) = v199;
  v200 = v198;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v201 = [v194 bundleURL];
  sub_23E1FBF9C();

  v202 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v185 + 264) = v190;
  *(v185 + 240) = v203;
  v204 = sub_23E1FDABC();
  v205 = sub_23DF3BE9C(v204);
  v206 = v269;
  *(v269 + 80) = v205;
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_23E222350;
  v208 = v261;
  *(v207 + 32) = v256;
  *(v207 + 40) = v208;
  *(v207 + 48) = 0x800000023E250E40;
  v209 = *MEMORY[0x277D7CE00];
  v210 = MEMORY[0x277D837D0];
  *(v207 + 64) = MEMORY[0x277D837D0];
  *(v207 + 72) = v209;
  *(v207 + 80) = 1;
  v211 = v257;
  *(v207 + 104) = MEMORY[0x277D839B0];
  *(v207 + 112) = v211;
  *(v207 + 120) = 0x6E656857776F6853;
  *(v207 + 128) = 0xEB000000006E7552;
  *(v207 + 144) = v210;
  *(v207 + 152) = v258;
  v212 = v209;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v213 = [v273 bundleURL];
  sub_23E1FBF9C();

  v214 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v207 + 184) = v272;
  *(v207 + 160) = v215;
  v216 = sub_23E1FDABC();
  *(v206 + 88) = sub_23DF3BE9C(v216);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v218 = v265;
  v265[40] = v206;
  v219 = *MEMORY[0x277D7CB98];
  v218[43] = v217;
  v218[44] = v219;
  v220 = v219;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v221 = [v273 bundleURL];
  sub_23E1FBF9C();

  v222 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v224 = v223;
  v225 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v226 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v218[45] = v225;
  v227 = *MEMORY[0x277D7CF20];
  v218[48] = v226;
  v218[49] = v227;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v228 = swift_allocObject();
  *(v228 + 16) = v262;
  v229 = MEMORY[0x277D837D0];
  *(v228 + 56) = MEMORY[0x277D837D0];
  *(v228 + 32) = 0xD000000000000017;
  *(v228 + 40) = 0x800000023E24DBE0;
  v230 = swift_allocObject();
  *(v230 + 16) = v262;
  *(v230 + 32) = v261;
  *(v230 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_23E222340;
  v232 = swift_allocObject();
  *(v232 + 16) = v253;
  strcpy((v232 + 32), "WFParameterKey");
  *(v232 + 47) = -18;
  *(v232 + 48) = 0x6E656857776F6853;
  *(v232 + 56) = 0xEB000000006E7552;
  v233 = v250;
  *(v232 + 72) = v229;
  *(v232 + 80) = v233;
  *(v232 + 88) = 0x800000023E24D710;
  *(v232 + 96) = 1;
  *(v232 + 120) = MEMORY[0x277D839B0];
  *(v232 + 128) = 0x72756F7365524657;
  *(v232 + 168) = v229;
  v234 = v248;
  *(v232 + 136) = 0xEF7373616C436563;
  *(v232 + 144) = v234;
  *(v232 + 152) = 0x800000023E24D730;
  v235 = v227;
  *(v231 + 32) = sub_23E1FDABC();
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v230 + 48) = v231;
  *(v230 + 72) = v236;
  *(v230 + 80) = 0x72756F7365524657;
  *(v230 + 120) = v229;
  v237 = v249;
  *(v230 + 88) = 0xEF7373616C436563;
  *(v230 + 96) = v237;
  *(v230 + 104) = 0x800000023E24D560;
  v238 = sub_23E1FDABC();
  *(v228 + 88) = v251;
  *(v228 + 64) = v238;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v218[50] = v228;
  v240 = *MEMORY[0x277D7D028];
  v218[53] = v239;
  v218[54] = v240;
  v241 = v240;
  v242 = sub_23E1FDABC();
  v218[58] = v254;
  v218[55] = v242;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v243 = sub_23E1FDABC();
  return sub_23DF3BF9C(v243);
}

uint64_t sub_23DECB778()
{
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DAE278;
  v1 = sub_23E1FDBDC();
  v2 = sub_23E1FDBDC();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = sub_23E1FDC1C();
  return v4;
}

uint64_t sub_23DECB8B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222370;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v2;
  v3 = sub_23DECB778();
  v4 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  v6 = *MEMORY[0x277CCA470];
  *(inited + 80) = sub_23E1FDC1C();
  *(inited + 88) = v7;
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v8 = qword_280DAE278;
  v9 = sub_23E1FDBDC();
  v10 = sub_23E1FDBDC();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = sub_23E1FDC1C();
  v14 = v13;

  *(inited + 120) = v4;
  *(inited + 96) = v12;
  *(inited + 104) = v14;
  return sub_23E1FDABC();
}

uint64_t sub_23DECBA68(uint64_t a1)
{
  v2 = sub_23DECD230();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23DECBAA4(uint64_t a1)
{
  v2 = sub_23DECD230();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23DECBB04()
{
  v1[8] = v0;
  v2 = sub_23E1FD03C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_23E1FDECC();
  v1[12] = sub_23E1FDEBC();
  v6 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DECBBF8, v6, v5);
}

uint64_t sub_23DECBBF8()
{
  v1 = *(v0 + 96);

  v2 = *MEMORY[0x277CBECE8];
  if (!WiFiManagerClientCreate())
  {
    v10 = *(v0 + 88);
    v11 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v12 = sub_23E1FD02C();
    v13 = sub_23E1FE1CC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23DE30000, v12, v13, "Cannot create WiFiManager", v14, 2u);
      MEMORY[0x23EF074C0](v14, -1, -1);
    }

    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 72);

    (*(v16 + 8))(v15, v17);
LABEL_11:
    v18 = *(v0 + 88);

    v19 = *(v0 + 8);
    goto LABEL_17;
  }

  v3 = [*(v0 + 64) input];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 items];

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v6 = sub_23E1FDDEC();

  if (!sub_23DE4D8B0(v6))
  {

LABEL_13:
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_14:
    sub_23DECD040(v0 + 16);
    goto LABEL_15;
  }

  sub_23DE59014(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EF04DD0](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v9 = [v8 objectForClass_];

  if (v9)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  *(v0 + 16) = v39;
  *(v0 + 32) = v40;
  if (!*(v0 + 40))
  {
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    v24 = *(v0 + 56);
    if ((v24 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v25 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v26 = *(v0 + 48);
      v27 = *(v0 + 56);
      if (sub_23E1FDCDC() >= 8 && sub_23E1FDCDC() < 65)
      {
        sub_23E1FB7BC();
        while (1)
        {
          v29 = sub_23E1FDD1C();
          if (!v30)
          {
            break;
          }

          v31 = v29;
          v32 = v30;
          if (sub_23E1FDAFC())
          {
            goto LABEL_55;
          }

          v33 = v31 == 2573 && v32 == 0xE200000000000000;
          if (v33 || (result = sub_23E1FE75C(), (result & 1) != 0))
          {
          }

          else
          {
            if ((v32 & 0x2000000000000000) != 0)
            {
              v34 = HIBYTE(v32) & 0xF;
            }

            else
            {
              v34 = v31 & 0xFFFFFFFFFFFFLL;
            }

            if (!v34)
            {
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              return result;
            }

            if ((v32 & 0x1000000000000000) != 0)
            {
              v35 = sub_23E1FDCAC();
            }

            else
            {
              v35 = sub_23E1FE5AC() << 16;
            }

            if (v35 >> 14 != 4 * v34)
            {
              goto LABEL_55;
            }

            result = sub_23DECCC04(v31, v32);
            if ((result & 0x100000000) != 0)
            {
              goto LABEL_59;
            }

            if ((result & 0xFFFFFF80) != 0)
            {
LABEL_55:

              v20 = 2;
              goto LABEL_16;
            }

            result = sub_23DECCC04(v31, v32);
            if ((result & 0x100000000) != 0)
            {
              goto LABEL_60;
            }

            v36 = result;

            if ((v36 & 0xFFFFFF00) != 0)
            {
              goto LABEL_58;
            }
          }
        }

        v37 = sub_23E1FDBDC();

        v38 = WiFiManagerClientSetMisPassword();

        if (v38)
        {
          goto LABEL_11;
        }

        v20 = 3;
      }

      else
      {

        v20 = 1;
      }

      goto LABEL_16;
    }

    v28 = *(v0 + 56);
  }

LABEL_15:
  v20 = 0;
LABEL_16:
  v21 = *(v0 + 88);
  sub_23DECD0A8();
  swift_allocError();
  *v22 = v20;
  swift_willThrow();

  v19 = *(v0 + 8);
LABEL_17:

  return v19();
}

uint64_t sub_23DECC14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DECC1E8, v5, v4);
}

uint64_t sub_23DECC1E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23DE7F680;
  v8 = v0[4];
  v9 = v0[2];

  return sub_23DECBB04();
}

uint64_t sub_23DECC2AC(void *a1)
{
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 hasCapability_];

  if (v7)
  {
    sub_23E1FDCBC();
    sub_23E1FDCBC();
    sub_23E1FC14C();
    if (qword_280DAE1D8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v8 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v9 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v11 = v10;
  v12 = [a1 localize_];

  v13 = sub_23E1FDC1C();
  return v13;
}

uint64_t sub_23DECC6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v8 = qword_280DAE278;
  v9 = sub_23E1FDBDC();
  v10 = sub_23E1FDBDC();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  sub_23E1FDC1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D140, &qword_23E227E40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23E222340;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_23DEADED0();
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  sub_23E1FB7BC();
  v13 = sub_23E1FDBEC();

  return v13;
}

id sub_23DECC91C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for SetHotspotPasswordAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DECCA98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetHotspotPasswordAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DECCAF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetHotspotPasswordAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DECCB50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE662F0;

  return sub_23DECC14C(v2, v3, v4);
}

unint64_t sub_23DECCC04(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_23DECCD98(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_23E1FE5BC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_23E1FE60C();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_23DECCD98(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23DECCE38(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_23DECCEA8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23DECCE38(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_23DECCFC4(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23DECCEA8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_23E1FE60C();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_23DECCFC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23E1FDD4C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EF04520](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_23DECD040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C320, &unk_23E224B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DECD0A8()
{
  result = qword_27E32D148;
  if (!qword_27E32D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D148);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetHotspotPasswordAction.ActionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DECD1DC()
{
  result = qword_27E32D150;
  if (!qword_27E32D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D150);
  }

  return result;
}

unint64_t sub_23DECD230()
{
  result = qword_27E32D158;
  if (!qword_27E32D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D158);
  }

  return result;
}

uint64_t sub_23DECD288(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 64) + 40);
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  return swift_continuation_resume();
}

uint64_t sub_23DECD2D0(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_23DEEC878(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_23DEE4C08(v9, a2);
  }
}

uint64_t sub_23DECD354()
{
  OUTLINED_FUNCTION_23();
  v1[23] = v0;
  sub_23E1FDECC();
  v1[24] = sub_23E1FDEBC();
  v3 = sub_23E1FDE6C();
  v1[25] = v3;
  v1[26] = v2;

  return MEMORY[0x2822009F8](sub_23DECD3E8, v3, v2);
}

uint64_t sub_23DECD3E8()
{
  v3 = *(v0 + 184);
  sub_23DE38DA8(0, &qword_27E32D1B8, 0x277CD3A58);
  OUTLINED_FUNCTION_32_2();
  v4 = sub_23E1FE3FC();
  *(v0 + 176) = v4;
  if (v4)
  {
    sub_23DED1DF8((v0 + 176));
    if (v5)
    {
      v6 = *(v0 + 184);
      v1 = "Toggle (WFLockAppOperation)";
      sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
      v7 = OUTLINED_FUNCTION_25_4();
      if (v7)
      {
        v8 = v7;
        sub_23E1FDC0C();
      }

      v9 = *(v0 + 192);

      v10 = *MEMORY[0x277D7CB30];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_174();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E222340;
      v12 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_23E1FDC1C();
      *(inited + 40) = v13;
      sub_23E1FDCBC();
      OUTLINED_FUNCTION_157();
      if (qword_280DAE1D8 == -1)
      {
LABEL_11:
        OUTLINED_FUNCTION_18_9();
        OUTLINED_FUNCTION_13_5();
        v23 = OUTLINED_FUNCTION_22_5();
        v24 = OUTLINED_FUNCTION_185_0(v23, sel_localizedStringForKey_value_table_);

        sub_23E1FDC1C();
        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_24_5(v25, MEMORY[0x277D837D0]);
        v26 = OUTLINED_FUNCTION_29_1();
        v27 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v28 = OUTLINED_FUNCTION_6_9();
        sub_23DE56A08(v28, v29, 5, v26);
        OUTLINED_FUNCTION_28_4();

        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_162();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
      v18 = *(v0 + 192);

      v19 = *MEMORY[0x277D7CB30];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_174();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_23E222340;
      v21 = *MEMORY[0x277CCA450];
      *(v20 + 32) = sub_23E1FDC1C();
      *(v20 + 40) = v22;
      sub_23E1FDCBC();
      OUTLINED_FUNCTION_157();
      if (qword_280DAE1D8 == -1)
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_0_13();
    goto LABEL_11;
  }

  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v14[1] = sub_23DECD8C4;
  v15 = *(v0 + 184);
  OUTLINED_FUNCTION_162();

  return sub_23DECE520();
}

uint64_t sub_23DECD8C4()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_58();
  *v6 = v5;
  v8 = *(v7 + 216);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[28] = v0;

  if (v0)
  {
    v11 = v5[25];
    v12 = v5[26];
    v13 = sub_23DECE32C;
  }

  else
  {
    v5[29] = v3;
    v11 = v5[25];
    v12 = v5[26];
    v13 = sub_23DECD9D4;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

void sub_23DECD9D4()
{
  v3 = *(v0 + 232);
  *(v0 + 176) = v3;
  if (v3 && (sub_23DED1DF8((v0 + 176)), v4))
  {
    v5 = *(v0 + 184);
    v1 = "Toggle (WFLockAppOperation)";
    sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
    v6 = OUTLINED_FUNCTION_25_4();
    if (v6)
    {
      v7 = v6;
      sub_23E1FDC0C();
    }

    v8 = *(v0 + 192);

    v9 = *MEMORY[0x277D7CB30];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    v11 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_23E1FDC1C();
    *(inited + 40) = v12;
    sub_23E1FDCBC();
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 == -1)
    {
LABEL_8:
      OUTLINED_FUNCTION_18_9();
      OUTLINED_FUNCTION_13_5();
      v18 = OUTLINED_FUNCTION_22_5();
      v19 = OUTLINED_FUNCTION_185_0(v18, sel_localizedStringForKey_value_table_);

      sub_23E1FDC1C();
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_24_5(v20, MEMORY[0x277D837D0]);
      v21 = OUTLINED_FUNCTION_29_1();
      v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v23 = OUTLINED_FUNCTION_6_9();
      sub_23DE56A08(v23, v24, 5, v21);
      OUTLINED_FUNCTION_28_4();

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_162();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {
    v13 = *(v0 + 192);

    v14 = *MEMORY[0x277D7CB30];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_23E222340;
    v16 = *MEMORY[0x277CCA450];
    *(v15 + 32) = sub_23E1FDC1C();
    *(v15 + 40) = v17;
    sub_23E1FDCBC();
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 == -1)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_0_13();
  goto LABEL_8;
}

uint64_t sub_23DECDE1C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *(v1 + 248);
  *v4 = *v2;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_24();
  v7 = *(v6 + 208);
  v8 = *(v1 + 200);
  if (v0)
  {
    v9 = sub_23DECE390;
  }

  else
  {
    v9 = sub_23DED1F48;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23DECDF44()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *(v1 + 264);
  *v4 = *v2;
  *(v3 + 272) = v0;

  OUTLINED_FUNCTION_24();
  v7 = *(v6 + 208);
  v8 = *(v1 + 200);
  if (v0)
  {
    v9 = sub_23DECE3F4;
  }

  else
  {
    v9 = sub_23DED1F48;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23DECE06C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *(v1 + 280);
  *v4 = *v2;
  *(v3 + 288) = v0;

  OUTLINED_FUNCTION_24();
  v7 = *(v6 + 208);
  v8 = *(v1 + 200);
  if (v0)
  {
    v9 = sub_23DECE458;
  }

  else
  {
    v9 = sub_23DED1F48;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23DECE194()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *(v1 + 296);
  *v4 = *v2;
  *(v3 + 304) = v0;

  OUTLINED_FUNCTION_24();
  v7 = *(v6 + 208);
  v8 = *(v1 + 200);
  if (v0)
  {
    v9 = sub_23DECE4BC;
  }

  else
  {
    v9 = sub_23DECE2BC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23DECE2BC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECE32C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 192);

  v2 = *(v0 + 224);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECE390()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_5();

  v2 = *(v1 + 256);
  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECE3F4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_5();

  v2 = *(v1 + 272);
  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECE458()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_5();

  v2 = *(v1 + 288);
  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECE4BC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_5();

  v2 = *(v1 + 304);
  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECE520()
{
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v1[5] = sub_23E1FDECC();
  v1[6] = sub_23E1FDEBC();
  v3 = sub_23E1FDE6C();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_23DECE5C8, v3, v2);
}

uint64_t sub_23DECE5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  v11 = *(v10 + 24);
  OUTLINED_FUNCTION_32_2();
  v12 = sub_23E1FDBDC();
  v13 = [v11 parameterForKey_];
  *(v10 + 72) = v13;

  if (v13)
  {
    v14 = [*(v10 + 24) workQueue];
    *(v10 + 80) = v14;
    if (v14)
    {
      v15 = v14;
      v17 = *(v10 + 32);
      v16 = *(v10 + 40);
      v18 = *(v10 + 24);
      *(v10 + 88) = sub_23E1FDEBC();
      v19 = swift_task_alloc();
      *(v10 + 96) = v19;
      v19[2] = v18;
      v19[3] = v13;
      v19[4] = v15;
      v19[5] = v17;
      v20 = *(MEMORY[0x277D85A40] + 4);
      v21 = swift_task_alloc();
      *(v10 + 104) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D0, &qword_23E227FF8);
      *v21 = v10;
      v21[1] = sub_23DECE794;
      OUTLINED_FUNCTION_90_2();

      return MEMORY[0x2822008A0](v22, v23, v24, v25, v26, v27, v28, v29);
    }

    v32 = *(v10 + 48);
  }

  else
  {
    v31 = *(v10 + 48);
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_90_2();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_23DECE794()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_23DECE910;
  }

  else
  {
    v12 = v3[11];
    v13 = v3[12];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_23DECE8A0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23DECE8A0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_12_1();

  return v4();
}

uint64_t sub_23DECE910()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  OUTLINED_FUNCTION_19();
  v7 = v0[14];

  return v6();
}

uint64_t sub_23DECE994()
{
  v0 = sub_23E1FE6EC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23DECE9E0(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  sub_23E1FDECC();
  v2[40] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v2[41] = v4;
  v2[42] = v3;

  return MEMORY[0x2822009F8](sub_23DECEA78, v4, v3);
}

uint64_t sub_23DECEA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  v13 = v10[38];
  v14 = objc_opt_self();
  v10[43] = v14;
  v15 = [v14 sharedManager];
  LODWORD(v13) = [v15 canChangeLockedStatusOfSubject_];

  if (!v13)
  {
    v17 = v10[40];

    v18 = *MEMORY[0x277D7CB30];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    v20 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_23E1FDC1C();
    *(inited + 40) = v21;
    sub_23E1FDCBC();
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_13_5();
    v22 = OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_185_0(v22, sel_localizedStringForKey_value_table_);

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_24_5(v23, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_29_1();
    v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v25 = OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_26_2(v25, v26);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_19();
    goto LABEL_7;
  }

  if ([v10[38] isLocked])
  {
    v16 = v10[40];

    OUTLINED_FUNCTION_19();
LABEL_7:
    OUTLINED_FUNCTION_90_2();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  v36 = swift_task_alloc();
  v10[44] = v36;
  *v36 = v10;
  v36[1] = sub_23DECECB8;
  v37 = v10[39];
  OUTLINED_FUNCTION_90_2();

  return sub_23DED01E4();
}

uint64_t sub_23DECECB8()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_58();
  *v6 = v5;
  v8 = *(v7 + 352);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 360) = v0;

  if (v0)
  {
    v11 = *(v5 + 328);
    v12 = *(v5 + 336);
    v13 = sub_23DECF1D4;
  }

  else
  {
    *(v5 + 385) = v3 & 1;
    v11 = *(v5 + 328);
    v12 = *(v5 + 336);
    v13 = sub_23DECEDCC;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_23DECEDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  if (*(v10 + 385) == 1)
  {
    v13 = *(v10 + 304);
    v14 = [*(v10 + 344) sharedManager];
    *(v10 + 368) = v14;
    *(v10 + 16) = v10;
    *(v10 + 56) = v10 + 384;
    *(v10 + 24) = sub_23DECF050;
    v15 = swift_continuation_init();
    *(v10 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C0, &unk_23E227208);
    *(v10 + 240) = MEMORY[0x277D85DD0];
    *(v10 + 248) = 1107296256;
    *(v10 + 256) = sub_23DECD2D0;
    *(v10 + 264) = &block_descriptor_21;
    *(v10 + 272) = v15;
    [v14 setSubject:v13 isLocked:1 completion:v10 + 240];
    OUTLINED_FUNCTION_90_2();

    return MEMORY[0x282200938](v16);
  }

  else
  {
    v18 = *(v10 + 320);

    v19 = *MEMORY[0x277D7CB30];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    v21 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_23E1FDC1C();
    *(inited + 40) = v22;
    sub_23E1FDCBC();
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_13_5();
    v23 = OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_185_0(v23, sel_localizedStringForKey_value_table_);

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_24_5(v24, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_29_1();
    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v26 = OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_26_2(v26, v27);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_90_2();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_23DECF050()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 376) = v4;
  v5 = v3[42];
  v6 = v3[41];
  if (v4)
  {
    v7 = sub_23DECF230;
  }

  else
  {
    v7 = sub_23DECF170;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DECF170()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECF1D4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 320);

  v2 = *(v0 + 360);
  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECF230()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[40];

  swift_willThrow();

  v4 = v0[47];
  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DECF2A0(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  sub_23E1FDECC();
  v2[30] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v2[31] = v4;
  v2[32] = v3;

  return MEMORY[0x2822009F8](sub_23DECF338, v4, v3);
}

uint64_t sub_23DECF338()
{
  OUTLINED_FUNCTION_23();
  if ([*(v0 + 224) isLocked])
  {
    v1 = swift_task_alloc();
    *(v0 + 264) = v1;
    *v1 = v0;
    v1[1] = sub_23DECF410;
    v2 = *(v0 + 232);

    return sub_23DED01E4();
  }

  else
  {
    v4 = *(v0 + 240);

    OUTLINED_FUNCTION_19();

    return v5();
  }
}

uint64_t sub_23DECF410()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_58();
  *v6 = v5;
  v8 = *(v7 + 264);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 272) = v0;

  if (v0)
  {
    v11 = *(v5 + 248);
    v12 = *(v5 + 256);
    v13 = sub_23DECF934;
  }

  else
  {
    *(v5 + 297) = v3 & 1;
    v11 = *(v5 + 248);
    v12 = *(v5 + 256);
    v13 = sub_23DECF524;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_23DECF524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  if (*(v10 + 297) == 1)
  {
    v13 = *(v10 + 224);
    v14 = [objc_opt_self() sharedManager];
    *(v10 + 280) = v14;
    *(v10 + 16) = v10;
    *(v10 + 56) = v10 + 296;
    *(v10 + 24) = sub_23DECF7B0;
    v15 = swift_continuation_init();
    *(v10 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C0, &unk_23E227208);
    *(v10 + 160) = MEMORY[0x277D85DD0];
    *(v10 + 168) = 1107296256;
    *(v10 + 176) = sub_23DECD2D0;
    *(v10 + 184) = &block_descriptor_12;
    *(v10 + 192) = v15;
    [v14 setSubject:v13 isLocked:0 completion:v10 + 160];
    OUTLINED_FUNCTION_90_2();

    return MEMORY[0x282200938](v16);
  }

  else
  {
    v18 = *(v10 + 240);

    v19 = *MEMORY[0x277D7CB30];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    v21 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_23E1FDC1C();
    *(inited + 40) = v22;
    sub_23E1FDCBC();
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_13_5();
    v23 = OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_185_0(v23, sel_localizedStringForKey_value_table_);

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_24_5(v24, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_29_1();
    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v26 = OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_26_2(v26, v27);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_90_2();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_23DECF7B0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 288) = v4;
  v5 = v3[32];
  v6 = v3[31];
  if (v4)
  {
    v7 = sub_23DECF990;
  }

  else
  {
    v7 = sub_23DECF8D0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DECF8D0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECF934()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 240);

  v2 = *(v0 + 272);
  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DECF990()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[30];

  swift_willThrow();

  v4 = v0[36];
  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DECFA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DECFB24, v5, v4);
}

uint64_t sub_23DECFB24()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23DEC7D20;
  v8 = v0[4];

  return sub_23DECD354();
}

void sub_23DECFBDC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v23 = a2;
  v24 = a4;
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  v26 = sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  aBlock[0] = a3;
  v10 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v11 = a3;
  v12 = sub_23DED1CDC(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C430, &qword_23E223978);
  sub_23E1FDABC();
  v13 = sub_23E1FDA9C();

  sub_23DE38DA8(0, &qword_27E32D1E0, 0x277D7C6E8);
  sub_23E1FDABC();
  v14 = sub_23E1FDA9C();

  v15 = v20;
  (*(v6 + 16))(v9, v21, v20);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v9, v15);
  *(v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v27 = sub_23DED1E48;
  v28 = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DED0100;
  v26 = &block_descriptor_31;
  v18 = _Block_copy(aBlock);

  [v23 askForValuesOfParameters:v12 withDefaultStates:v13 prompts:v14 input:0 workQueue:v24 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_23DECFEC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_23E1FD03C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_23DE4682C(0x7070414657, 0xE500000000000000, a1, &v19);
    if (v20)
    {
      sub_23DE38DA8(0, &qword_27E32D1B8, 0x277CD3A58);
      v10 = swift_dynamicCast();
      v11 = v18[1];
      if (!v10)
      {
        v11 = 0;
      }
    }

    else
    {
      sub_23DECD040(&v19);
      v11 = 0;
    }

    *&v19 = v11;
  }

  else
  {
    if (a3)
    {
      *&v19 = a3;
      v12 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);
      return sub_23E1FDE7C();
    }

    v14 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v15 = sub_23E1FD02C();
    v16 = sub_23E1FE1BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23DE30000, v15, v16, "askForValues failed with no error", v17, 2u);
      MEMORY[0x23EF074C0](v17, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    *&v19 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);
  return sub_23E1FDE8C();
}

uint64_t sub_23DED0100(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    v10 = sub_23E1FDAAC();
  }

  else
  {
    v10 = 0;
  }

  sub_23E1FB7CC();
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v9(v10, a3, a4, a5);
}

uint64_t sub_23DED01E4()
{
  sub_23E1FDECC();
  v0[26] = sub_23E1FDEBC();
  v2 = sub_23E1FDE6C();
  v0[27] = v2;
  v0[28] = v1;

  return MEMORY[0x2822009F8](sub_23DED0278, v2, v1);
}

uint64_t sub_23DED0278()
{
  OUTLINED_FUNCTION_4();
  v1 = v0 + 32;
  if ([objc_opt_self() isDeviceLocked])
  {
    v2 = v0 + 10;
    v3 = [objc_allocWithZone(MEMORY[0x277D7C278]) init];
    v0[29] = v3;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_23DED0468;
    v4 = swift_continuation_init();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C8, &qword_23E227FF0);
    OUTLINED_FUNCTION_8_5(v5);
    v0[19] = 1107296256;
    v0[20] = sub_23DED08BC;
    v0[21] = &block_descriptor_17_0;
    v0[22] = v4;
    [v3 requestUnlockIfNeeded_];
  }

  else
  {
    v2 = v0 + 2;
    v6 = [objc_opt_self() sharedGuard];
    v0[30] = v6;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_23DED05CC;
    v7 = swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C0, &unk_23E227208);
    OUTLINED_FUNCTION_8_5(v8);
    v0[19] = 1107296256;
    v0[20] = sub_23DECD2D0;
    v0[21] = &block_descriptor_13;
    v0[22] = v7;
    [v6 authenticateUnconditionallyWithCompletion_];
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23DED0468()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_58();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *(v4 + 216);

  return MEMORY[0x2822009F8](sub_23DED0560, v6, v5);
}

uint64_t sub_23DED0560()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 208);

  v2 = *(v0 + 256);
  OUTLINED_FUNCTION_12_1();

  return v3();
}

uint64_t sub_23DED05CC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 248) = v4;
  v5 = v3[28];
  v6 = v3[27];
  if (v4)
  {
    v7 = sub_23DED0758;
  }

  else
  {
    v7 = sub_23DED06EC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DED06EC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);

  v3 = *(v0 + 256);

  OUTLINED_FUNCTION_12_1();

  return v4(v3);
}

uint64_t sub_23DED0758()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[26];

  swift_willThrow();

  OUTLINED_FUNCTION_12_1();
  v5 = v0[31];

  return v4(0);
}

id sub_23DED07CC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    sub_23E1FDA9C();
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    a2 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_definition_serializedParameters_, v10, a3, a2);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_23DED08BC(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return sub_23DECD2AC(v3, a2);
}

id sub_23DED0998()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DED09F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DED0A88()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v161 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0x70416B636F4C4657;
  *(inited + 48) = 0xEF6E6F6974634170;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v14 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v172 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222340;
  v22 = *MEMORY[0x277D7CC30];
  *(v21 + 32) = *MEMORY[0x277D7CC30];
  v23 = v20;
  v24 = v22;
  v175 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v176 = v14;
  v25 = [v14 bundleURL];
  sub_23E1FBF9C();

  v26 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v173 = v7;
  v174 = v3;
  sub_23DE477A0();
  v175 = v19;
  *(v21 + 64) = v19;
  *(v21 + 40) = v27;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v28 = sub_23E1FDABC();
  v29 = v172;
  *(inited + 120) = sub_23DF3BE54(v28);
  v30 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v29;
  *(inited + 152) = v30;
  v177 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_23E222380;
  v32 = *MEMORY[0x277D7CC70];
  v33 = *MEMORY[0x277D7CC78];
  v34 = MEMORY[0x277D7CC80];
  *(v31 + 32) = *MEMORY[0x277D7CC70];
  *(v31 + 40) = v33;
  v35 = *v34;
  *(v31 + 48) = *v34;
  v178 = MEMORY[0x277D84F90];
  v36 = v30;
  v37 = v32;
  v38 = v33;
  v39 = v35;
  sub_23DE63E2C();
  v40 = v178;
  v41 = sub_23E1FDC1C();
  v43 = v42;
  v44 = *(v40 + 16);
  if (v44 >= *(v40 + 24) >> 1)
  {
    sub_23DE63E2C();
    v40 = v178;
  }

  *(v40 + 16) = v44 + 1;
  v45 = v40 + 16 * v44;
  *(v45 + 32) = v41;
  *(v45 + 40) = v43;
  v46 = sub_23E1FDC1C();
  v48 = v47;
  v49 = *(v40 + 16);
  if (v49 >= *(v40 + 24) >> 1)
  {
    sub_23DE63E2C();
    v40 = v178;
  }

  *(v40 + 16) = v49 + 1;
  v50 = v40 + 16 * v49;
  *(v50 + 32) = v46;
  *(v50 + 40) = v48;
  v51 = sub_23E1FDC1C();
  v53 = v52;
  v54 = *(v40 + 16);
  if (v54 >= *(v40 + 24) >> 1)
  {
    sub_23DE63E2C();
  }

  v55 = v178;
  *(v178 + 16) = v54 + 1;
  v56 = v55 + 16 * v54;
  *(v56 + 32) = v51;
  *(v56 + 40) = v53;
  swift_setDeallocating();
  sub_23DF032E0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v58 = v177;
  v177[20] = v55;
  v59 = *MEMORY[0x277D7CB70];
  v60 = MEMORY[0x277D839B0];
  v170 = v57;
  v58[23] = v57;
  v58[24] = v59;
  *(v58 + 200) = 0;
  v61 = *MEMORY[0x277D7CB48];
  v58[28] = v60;
  v58[29] = v61;
  v62 = MEMORY[0x277D7CB60];
  v58[30] = 1702194242;
  v58[31] = 0xE400000000000000;
  v63 = *v62;
  v64 = MEMORY[0x277D837D0];
  v58[33] = MEMORY[0x277D837D0];
  v58[34] = v63;
  v58[35] = 1801678700;
  v58[36] = 0xE400000000000000;
  v65 = *MEMORY[0x277D7CB90];
  v58[38] = v64;
  v58[39] = v65;
  v66 = v59;
  v67 = v61;
  v68 = v63;
  v69 = v65;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v70 = [v176 bundleURL];
  sub_23E1FBF9C();

  v71 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v58[40] = v72;
  v73 = *MEMORY[0x277D7CBA0];
  v58[43] = v175;
  v58[44] = v73;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_23E2246F0;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_23E224C10;
  v75 = *MEMORY[0x277D7CDF8];
  *(v74 + 32) = *MEMORY[0x277D7CDF8];
  *(v74 + 40) = 0xD000000000000016;
  v76 = MEMORY[0x277D7CE00];
  *(v74 + 48) = 0x800000023E24FDA0;
  v77 = *v76;
  *(v74 + 64) = v64;
  *(v74 + 72) = v77;
  *(v74 + 80) = 1801678668;
  *(v74 + 88) = 0xE400000000000000;
  v78 = *MEMORY[0x277D7CE38];
  *(v74 + 104) = v64;
  *(v74 + 112) = v78;
  v171 = v74;
  v178 = MEMORY[0x277D84F90];
  v166 = v75;
  v79 = v73;
  v80 = v77;
  v81 = v78;
  sub_23DE63E2C();
  v82 = 0;
  v83 = v178;
  do
  {
    if (byte_285024780[v82 + 32] == 1)
    {
      v84 = 0x6B636F6C6E55;
    }

    else
    {
      v84 = 0x656C67676F54;
    }

    if (byte_285024780[v82 + 32])
    {
      v85 = v84;
    }

    else
    {
      v85 = 1801678668;
    }

    if (byte_285024780[v82 + 32])
    {
      v86 = 0xE600000000000000;
    }

    else
    {
      v86 = 0xE400000000000000;
    }

    v178 = v83;
    v87 = *(v83 + 16);
    if (v87 >= *(v83 + 24) >> 1)
    {
      sub_23DE63E2C();
      v83 = v178;
    }

    ++v82;
    *(v83 + 16) = v87 + 1;
    v88 = v83 + 16 * v87;
    *(v88 + 32) = v85;
    *(v88 + 40) = v86;
  }

  while (v82 != 3);
  v90 = v170;
  v89 = v171;
  *(v171 + 120) = v83;
  v91 = *MEMORY[0x277D7CE30];
  *(v89 + 144) = v90;
  *(v89 + 152) = v91;
  v178 = MEMORY[0x277D84F90];
  v92 = v91;
  sub_23E1FE63C();
  v93 = 0;
  v94 = v176;
  do
  {
    if (byte_285024780[v93 + 32])
    {
      sub_23E1FDCBC();
      sub_23E1FDCBC();
      sub_23E1FC14C();
      v96 = [v94 bundleURL];
      sub_23E1FBF9C();
    }

    else
    {
      sub_23E1FDCBC();
      sub_23E1FDCBC();
      sub_23E1FC14C();
      v95 = [v94 bundleURL];
      sub_23E1FBF9C();
    }

    objc_allocWithZone(MEMORY[0x277CCAEB8]);
    sub_23DE477A0();
    ++v93;
    sub_23E1FE61C();
    v97 = *(v178 + 16);
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
  }

  while (v93 != 3);
  v168 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  v170 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v98 = v178;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v100 = v171;
  *(v171 + 160) = v98;
  v101 = *MEMORY[0x277D7CE70];
  v100[23] = v99;
  v100[24] = v101;
  v100[25] = 0xD000000000000012;
  v100[26] = 0x800000023E255490;
  v102 = *MEMORY[0x277D7CE80];
  v100[28] = MEMORY[0x277D837D0];
  v100[29] = v102;
  v103 = v101;
  v104 = v102;
  v162 = v103;
  v163 = v104;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v105 = [v94 bundleURL];
  sub_23E1FBF9C();

  v106 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v100[33] = v175;
  v100[30] = v107;
  _s3__C3KeyVMa_0(0);
  v165 = v108;
  v164 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v109 = sub_23E1FDABC();
  v110 = sub_23DF3BE9C(v109);
  *(v172 + 32) = v110;
  v111 = swift_allocObject();
  v112 = MEMORY[0x277D7CDE8];
  *(v111 + 16) = xmmword_23E224710;
  v113 = *v112;
  *(v111 + 32) = v113;
  *(v111 + 40) = 0x7070416E65704FLL;
  *(v111 + 48) = 0xE700000000000000;
  v114 = MEMORY[0x277D837D0];
  v115 = v166;
  *(v111 + 64) = MEMORY[0x277D837D0];
  *(v111 + 72) = v115;
  *(v111 + 80) = 0xD000000000000014;
  *(v111 + 88) = 0x800000023E2554E0;
  v116 = v162;
  *(v111 + 104) = v114;
  *(v111 + 112) = v116;
  *(v111 + 120) = 0x7070414657;
  *(v111 + 128) = 0xE500000000000000;
  v117 = v163;
  *(v111 + 144) = v114;
  *(v111 + 152) = v117;
  v118 = v113;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v119 = [v94 bundleURL];
  sub_23E1FBF9C();

  v120 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v111 + 160) = v121;
  v122 = *MEMORY[0x277D7CEA8];
  v123 = v175;
  *(v111 + 184) = v175;
  *(v111 + 192) = v122;
  v124 = v122;
  sub_23E1FDCBC();
  v171 = v125;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v126 = [v94 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v111 + 224) = v123;
  *(v111 + 200) = v128;
  v129 = sub_23E1FDABC();
  v130 = sub_23DF3BE9C(v129);
  v131 = v172;
  *(v172 + 40) = v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v133 = v177;
  v177[45] = v131;
  v134 = *MEMORY[0x277D7CB98];
  v133[48] = v132;
  v133[49] = v134;
  v172 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_23E224C00;
  v135 = v134;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v136 = [v94 bundleURL];
  sub_23E1FBF9C();

  v137 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v139 = v138;
  v140 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v141 = sub_23DF34C40(0xD00000000000001DLL, 0x800000023E255510, v139);
  v142 = v175;
  *(v175 + 32) = v141;
  v171 = "tion} lock for ${WFApp}";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v143 = [v94 bundleURL];
  sub_23E1FBF9C();

  v144 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v146 = v145;
  v147 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v142 + 40) = sub_23DF34C40(0xD00000000000001BLL, v171 | 0x8000000000000000, v146);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v148 = [v176 bundleURL];
  sub_23E1FBF9C();

  v149 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v151 = v150;
  v152 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v153 = sub_23DF34C40(0xD00000000000001DLL, 0x800000023E2555A0, v151);
  *(v175 + 48) = v153;
  v154 = v172;
  v155 = sub_23DF333E0();
  v156 = v177;
  v177[50] = v155;
  v157 = *MEMORY[0x277D7CF20];
  v156[53] = v154;
  v156[54] = v157;
  v156[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v156[55] = MEMORY[0x277D84F90];
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v158 = v157;
  v159 = sub_23E1FDABC();
  return sub_23DF3BF9C(v159);
}

id sub_23DED1CDC(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_23DED1D48()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;

  return sub_23DECFA88(v2, v3, v4);
}

uint64_t sub_23DED1DF8(id *a1)
{
  v1 = *a1;

  return sub_23DF05DD4(v1);
}

uint64_t sub_23DED1E48(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000) - 8);
  v8 = *(v3 + ((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23DECFEC4(a1, a2, a3);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_18_9()
{

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_22_5()
{
}

void OUTLINED_FUNCTION_24_5(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  v2[6] = v3;
  v2[7] = v4;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return sub_23E1FE3FC();
}

id OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2)
{

  return sub_23DE56A08(a1, a2, 6, v2);
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return sub_23E1FDABC();
}

uint64_t OUTLINED_FUNCTION_35_5()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 192);
}

uint64_t sub_23DED20F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D218, &qword_23E228038);
    v1 = sub_23E1FE6CC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_23E1FB7CC();
  result = sub_23E1FB7BC();
  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v4)) | (v8 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    sub_23DE48110(*(a1 + 56) + 32 * v10, v30 + 8);
    *&v30[0] = v11;
    v28[0] = v30[0];
    v28[1] = v30[1];
    v29 = v31;
    v12 = v11;
    sub_23DE36CA4((v28 + 8), &v26);
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D220, &qword_23E228040);
    swift_dynamicCast();
    sub_23DE36CA4((v27 + 8), v25);
    sub_23DE36CA4(v25, v27);
    v14 = *(v1 + 40);
    sub_23E1FDC1C();
    sub_23E1FE84C();
    sub_23E1FDCCC();
    v15 = sub_23E1FE87C();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v19) = v12;
    result = sub_23DE36CA4(v27, (*(v1 + 56) + 32 * v19));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_23DED23C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D210, &qword_23E228030);
    v1 = sub_23E1FE6CC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_23E1FB7CC();
  result = sub_23E1FB7BC();
  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v4)) | (v8 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_23DE36CA4((v26 + 8), v24);
    sub_23DE36CA4(v24, v26);
    v13 = *(v1 + 40);
    sub_23E1FDC1C();
    sub_23E1FE84C();
    sub_23E1FDCCC();
    v14 = sub_23E1FE87C();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v18) = v12;
    result = sub_23DE36CA4(v26, (*(v1 + 56) + 32 * v18));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_23DED2670(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 101;
  }

  else
  {
    return 100;
  }
}

uint64_t sub_23DED2680(uint64_t a1, uint64_t a2)
{
  sub_23E1FB7BC();
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v4 = qword_280DAE278;
  v5 = sub_23E1FDBDC();
  v6 = sub_23E1FDBDC();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  sub_23E1FDC1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D140, &qword_23E227E40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23E222340;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_23DEADED0();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v10 = sub_23E1FDC4C();
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v14 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v15;
  *(inited + 72) = v9;
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  return sub_23E1FDABC();
}

uint64_t sub_23DED2880(uint64_t a1)
{
  v2 = sub_23DED396C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23DED28BC(uint64_t a1)
{
  v2 = sub_23DED396C();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_23DED28F8(void *a1)
{
  v2 = v1;
  v4 = sub_23E1FCC8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
  sub_23E1FCC1C();
  v8 = sub_23DE8928C(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  aBlock[4] = sub_23DED3750;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DED30E0;
  aBlock[3] = &block_descriptor_13;
  v10 = _Block_copy(aBlock);
  v11 = v2;

  [a1 getFileRepresentations:v10 forType:v8];
  _Block_release(v10);
}

void sub_23DED2A5C(uint64_t a1, uint64_t a2, id a3)
{
  v6 = sub_23E1FBFBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v66 = &v57 - v14;
  if (a1)
  {
    v65 = sub_23DE4D8B0(a1);
    v15 = 0;
    v63 = a1 & 0xC000000000000001;
    v61 = (v7 + 32);
    v60 = *MEMORY[0x277CBF5D0];
    v57 = (v7 + 8);
    v59 = xmmword_23E222340;
    v58 = v6;
    v62 = a3;
    while (1)
    {
      if (v65 == v15)
      {
        [a3 finishRunningWithError_];
        return;
      }

      v16 = v63;
      sub_23DE59014(v15, v63 == 0, a1);
      v17 = v16 ? MEMORY[0x23EF04DD0](v15, a1) : *(a1 + 8 * v15 + 32);
      v18 = v17;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v67 = v15;
      sub_23DED31EC(v17);
      sub_23DE38DA8(0, &qword_27E32D1F0, 0x277CD93D0);
      v19 = [v18 fileURL];
      v20 = v66;
      sub_23E1FBF9C();

      v21 = sub_23DED3044(v20);
      if (!v21)
      {
        goto LABEL_23;
      }

      v22 = v21;
      v23 = objc_opt_self();
      v24 = sub_23E1FDBDC();
      v25 = [v23 proposedSharedTemporaryFileURLForFilename_];

      if (!v25)
      {

LABEL_23:

        v49 = [v18 filename];
        v50 = sub_23E1FDC1C();
        v52 = v51;

        sub_23DED3770();
        v53 = swift_allocError();
        *v54 = v50;
        *(v54 + 8) = v52;
        *(v54 + 16) = 0;
        v55 = sub_23E1FBEBC();
        v56 = sub_23E1FBEBC();

        [a3 finishRunningWithError_];
        return;
      }

      v26 = v64;
      sub_23E1FBF9C();

      (*v61)(v13, v26, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D200, "l~\a");
      inited = swift_initStackObject();
      *(inited + 16) = v59;
      v28 = v60;
      *(inited + 32) = v60;
      *(inited + 40) = 1;
      type metadata accessor for PDFDocumentWriteOption(0);
      sub_23DED37C4();
      v29 = v28;
      v30 = sub_23E1FDABC();
      v31 = sub_23E1FBF6C();
      v32 = sub_23DED23C0(v30);
      v33 = sub_23DED381C(v31, v32, v22);

      if ((v33 & 1) == 0 || (v34 = objc_opt_self(), v35 = sub_23E1FBF6C(), v36 = [v34 fileWithURL:v35 options:1], v35, !v36))
      {

        v40 = [v18 filename];
        v41 = sub_23E1FDC1C();
        v43 = v42;

        sub_23DED3770();
        v44 = swift_allocError();
        *v45 = v41;
        *(v45 + 8) = v43;
        *(v45 + 16) = 1;
        v46 = sub_23E1FBEBC();
        v47 = sub_23E1FBEBC();

        [v62 finishRunningWithError_];
        (*v57)(v13, v58);
        return;
      }

      a3 = v62;
      v37 = [v62 output];
      if (!v37)
      {
        goto LABEL_26;
      }

      v38 = v37;

      [v38 addFile_];

      v6 = v58;
      (*v57)(v13, v58);
      v15 = v67 + 1;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v39 = sub_23E1FBEBC();
    }

    else
    {
      v39 = 0;
    }

    v67 = v39;
    [a3 finishRunningWithError_];
    v48 = v67;
  }
}

id sub_23DED3044(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23E1FBF6C();
  v4 = [v2 initWithURL_];

  v5 = sub_23E1FBFBC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_23DED30E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_23DE38DA8(0, &qword_27E32D1E8, 0x277CFC3C8);
    v4 = sub_23E1FDDEC();
  }

  sub_23E1FB7CC();
  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_23DED31EC(void *a1)
{
  v2 = sub_23E1FBFBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v25 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  v13 = [a1 filename];
  sub_23E1FDC1C();

  sub_23E1FBF4C();

  sub_23E1FBF7C();
  sub_23E1FBF5C();
  v14 = *(v3 + 8);
  v26 = v2;
  v14(v10, v2);
  v25[1] = sub_23E1FBF2C();
  v25[2] = v15;
  v16 = sub_23E1FDBDC();

  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v17 = qword_280DAE278;
  v18 = sub_23E1FDBDC();
  v19 = sub_23E1FDBDC();

  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  if (!v20)
  {
    sub_23E1FDC1C();
    v20 = sub_23E1FDBDC();
  }

  v21 = [v16 wf:v20 filenameTruncatedToMaximumLengthWithFormat:?];

  sub_23E1FDC1C();
  sub_23E1FBF4C();

  sub_23E1FBF8C();

  v22 = v26;
  v14(v7, v26);
  v23 = sub_23E1FBF5C();
  v14(v10, v22);
  v14(v12, v22);
  return v23;
}

id sub_23DED351C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for CompressPDFAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DED3698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompressPDFAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DED36F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompressPDFAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

unint64_t sub_23DED3770()
{
  result = qword_27E32D1F8;
  if (!qword_27E32D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D1F8);
  }

  return result;
}

unint64_t sub_23DED37C4()
{
  result = qword_27E32BD80;
  if (!qword_27E32BD80)
  {
    type metadata accessor for PDFDocumentWriteOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32BD80);
  }

  return result;
}

id sub_23DED381C(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for PDFDocumentWriteOption(0);
  sub_23DED37C4();
  v5 = sub_23E1FDA9C();

  v6 = [a3 writeToURL:a1 withOptions:v5];

  return v6;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DED38C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DED3908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_23DED396C()
{
  result = qword_27E32D228;
  if (!qword_27E32D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D228);
  }

  return result;
}

id sub_23DED39FC()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D7CB18];
  *(inited + 16) = xmmword_23E2235A0;
  v6 = *v5;
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = v6;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v11 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v12 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v14 = v13;
  v15 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x277D7CB48];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 120) = 0xD000000000000014;
  *(inited + 128) = 0x800000023E2558B0;
  v17 = *MEMORY[0x277D7CB60];
  *(inited + 144) = v7;
  *(inited + 152) = v17;
  *(inited + 184) = v7;
  *(inited + 160) = 0x6D726F6674786574;
  *(inited + 168) = 0xEA00000000007461;
  v18 = v16;
  v19 = v17;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 224) = MEMORY[0x277D839B0];
  *(inited + 200) = 1;
  *(inited + 232) = sub_23E1FDBDC();
  *(inited + 240) = 0xD000000000000050;
  *(inited + 248) = 0x800000023E2558D0;
  v20 = *MEMORY[0x277D7CDD0];
  *(inited + 264) = v7;
  *(inited + 272) = v20;
  v21 = v20;
  v22 = sub_23E1FDABC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 304) = v23;
  *(inited + 280) = v22;
  *(inited + 312) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222340;
  *(v24 + 32) = 1701869940;
  *(v24 + 40) = 0xE400000000000000;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23E222370;
  v26 = *MEMORY[0x277D7CE58];
  *(v25 + 32) = *MEMORY[0x277D7CE58];
  v27 = v26;
  *(v25 + 40) = sub_23E1FDABC();
  v28 = *MEMORY[0x277D7CE70];
  *(v25 + 64) = v23;
  *(v25 + 72) = v28;
  *(v25 + 104) = v7;
  *(v25 + 80) = 0x7954657361434657;
  *(v25 + 88) = 0xEA00000000006570;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0);
  v29 = v28;
  v30 = sub_23E1FDABC();
  *(v24 + 48) = sub_23DF3BE9C(v30);
  v31 = sub_23E1FDABC();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  v33 = MEMORY[0x277D7CB78];
  *(inited + 320) = v31;
  v34 = *v33;
  *(inited + 344) = v32;
  *(inited + 352) = v34;
  *(inited + 384) = MEMORY[0x277D839B0];
  *(inited + 360) = 1;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key);
  v35 = v34;
  v36 = sub_23E1FDABC();
  return sub_23DF3BF9C(v36);
}

uint64_t WFAction.toolkitUnitType.getter()
{
  v1 = [v0 outputMeasurementUnitType];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = sub_23E1FE2BC();

  return v3;
}

id sub_23DED4074()
{
  v72 = sub_23E1FD89C();
  v69 = *(v72 - 8);
  v0 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E255980;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v74 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v73 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v17;
  v19 = sub_23E1FDABC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v68 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v24 = v21;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v26 = [v74 bundleURL];
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 64) = v73;
  *(v22 + 40) = v28;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v29 = sub_23E1FDABC();
  v30 = v68;
  *(inited + 160) = sub_23DF3BE54(v29);
  v31 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v30;
  *(inited + 192) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v68 = v32;
  *(inited + 200) = &unk_285024908;
  v33 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v32;
  *(inited + 232) = v33;
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v34 = *MEMORY[0x277D7CB60];
  v35 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = v34;
  *(inited + 280) = 0x6C616E6F73726570;
  *(inited + 288) = 0xEF746F7073746F68;
  v36 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v35;
  *(inited + 312) = v36;
  v37 = v31;
  v38 = v33;
  v39 = v34;
  v40 = v36;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v41 = v74;
  v42 = [v74 bundleURL];
  sub_23E1FBF9C();

  v43 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v44;
  v45 = *MEMORY[0x277D7CDD0];
  *(inited + 344) = v73;
  *(inited + 352) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_23E222350;
  *(v46 + 32) = 0x75736F6C63736944;
  *(v46 + 40) = 0xEF6C6576654C6572;
  *(v46 + 48) = 0x65746176697250;
  *(v46 + 56) = 0xE700000000000000;
  *(v46 + 72) = MEMORY[0x277D837D0];
  *(v46 + 80) = 0x656C7069746C754DLL;
  *(v46 + 88) = 0xE800000000000000;
  v47 = MEMORY[0x277D839B0];
  *(v46 + 96) = 0;
  *(v46 + 120) = v47;
  *(v46 + 128) = 0x614E74757074754FLL;
  *(v46 + 136) = 0xEA0000000000656DLL;
  v48 = v45;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v49 = [v41 bundleURL];
  sub_23E1FBF9C();

  v50 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v46 + 144) = v51;
  *(v46 + 168) = v73;
  *(v46 + 176) = 0x7365707954;
  *(v46 + 216) = v68;
  *(v46 + 184) = 0xE500000000000000;
  *(v46 + 192) = &unk_285024948;
  v52 = sub_23E1FDABC();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 360) = v52;
  v54 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v53;
  *(inited + 392) = v54;
  v55 = v54;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v56 = [v74 bundleURL];
  sub_23E1FBF9C();

  v57 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v59 = v58;
  v60 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v61 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 400) = v60;
  v62 = *MEMORY[0x277D7CF20];
  *(inited + 424) = v61;
  *(inited + 432) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_23E2235B0;
  (*(v69 + 104))(v71, *MEMORY[0x277D732F0], v72);
  v64 = objc_allocWithZone(sub_23E1FC85C());
  v65 = v62;
  *(v63 + 32) = sub_23E1FC84C();
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C480, &qword_23E224258);
  *(inited + 440) = v63;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key);
  v66 = sub_23E1FDABC();
  return sub_23DF3BF9C(v66);
}

unint64_t sub_23DED4A7C()
{
  result = qword_280DAEF60;
  if (!qword_280DAEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF60);
  }

  return result;
}

unint64_t sub_23DED4AD4()
{
  result = qword_280DAEF50;
  if (!qword_280DAEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF50);
  }

  return result;
}

unint64_t sub_23DED4B2C()
{
  result = qword_280DAEF28;
  if (!qword_280DAEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF28);
  }

  return result;
}

unint64_t sub_23DED4B80()
{
  result = qword_280DAE4B0;
  if (!qword_280DAE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE4B0);
  }

  return result;
}

uint64_t sub_23DED4BD4()
{
  v1 = *(v0 + 16);
  sub_23E1FB55C();
  return v3;
}

void sub_23DED4C08(void *a1)
{
  v2 = [objc_allocWithZone(WFCellularPlansManager) init];
  v3 = [v2 allPlans];

  sub_23DED9464();
  v4 = sub_23E1FDDEC();

  v5 = sub_23DE4D8B0(v4);
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v5 == v6)
    {
      for (i = 0; v5 != i; ++i)
      {
        if (v7)
        {
          v17 = MEMORY[0x23EF04DD0](i, v4);
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v17 = *(v4 + 8 * i + 32);
        }

        v18 = v17;
        if (__OFADD__(i, 1))
        {
          goto LABEL_34;
        }

        v19 = [v17 label];
        v20 = sub_23E1FDC1C();
        v22 = v21;

        v23 = a1[2];
        sub_23E1FB55C();
        if (v20 == v26 && v22 == v27)
        {

          goto LABEL_31;
        }

        v25 = sub_23E1FE75C();

        if (v25)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_31;
    }

    if (v7)
    {
      v8 = MEMORY[0x23EF04DD0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v10 = [v8 iccid];
    v11 = sub_23E1FDC1C();
    v13 = v12;

    if (v11 == *a1 && v13 == a1[1])
    {

LABEL_31:

      return;
    }

    v15 = sub_23E1FE75C();

    if (v15)
    {
      goto LABEL_31;
    }

    ++v6;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_23DED4E7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16_3();
  v4 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_3_5();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = *MEMORY[0x277D7A2B8];
  *v12 = sub_23E1FDC1C();
  v12[1] = v14;
  (*(v6 + 104))(v12, *MEMORY[0x277D7BF38], v4);
  OUTLINED_FUNCTION_27_5();
  sub_23E1FC82C();
  sub_23E1FC81C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v20 = *MEMORY[0x277D7CB10];
  *(inited + 32) = *MEMORY[0x277D7CB10];
  v21 = v20;
  v22 = sub_23E1FDABC();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 40) = v22;
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v23 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DED50AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E1FB7BC();
  return v1;
}

uint64_t sub_23DED5134()
{
  v1 = *(v0 + 24);
  sub_23E1FB55C();
  return v3;
}

uint64_t sub_23DED51C0()
{
  v1 = *(v0 + 32);
  sub_23E1FB55C();
  return v3;
}

void sub_23DED52DC()
{
  OUTLINED_FUNCTION_90();
  v48 = v0;
  v46 = sub_23E1FDB4C();
  OUTLINED_FUNCTION_3_5();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v44 = v7 - v6;
  OUTLINED_FUNCTION_15_6();
  v8 = sub_23E1FDBAC();
  v9 = OUTLINED_FUNCTION_25(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v15);
  v47 = &v42 - v16;
  OUTLINED_FUNCTION_15_6();
  v17 = sub_23E1FBEEC();
  v43 = v17;
  OUTLINED_FUNCTION_3_5();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  v25 = v24 - v23;
  v26 = sub_23E1FC1DC();
  v27 = OUTLINED_FUNCTION_25(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  v30 = sub_23E1FDBCC();
  v31 = OUTLINED_FUNCTION_25(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_3();
  v45 = sub_23E1FBF0C();
  v34 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v35 = *MEMORY[0x277CC9110];
  v36 = *(v19 + 104);
  v42 = v19 + 104;
  v36(v25, v35, v17);
  OUTLINED_FUNCTION_2_5();
  sub_23E1FBF1C();
  sub_23E1FDB9C();
  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  v37 = v44;
  v38 = v46;
  (*(v2 + 104))(v44, *MEMORY[0x277CC9BD8], v46);
  sub_23E1FDB6C();
  (*(v2 + 8))(v37, v38);
  sub_23E1FDB8C();
  sub_23E1FDBBC();
  sub_23E1FC19C();
  v36(v25, v35, v43);
  OUTLINED_FUNCTION_0_18();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v45);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void sub_23DED56A8()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v7);
  v56 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  v55 = &v51 - v13;
  OUTLINED_FUNCTION_15_6();
  v53 = sub_23E1FBF0C();
  v14 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_15();
  v54 = v16 - v15;
  OUTLINED_FUNCTION_15_6();
  v17 = sub_23E1FDBAC();
  v18 = OUTLINED_FUNCTION_25(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D338, &qword_23E2288B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222370;
  v25 = *(v0 + 24);
  sub_23E1FB55C();
  *(inited + 32) = v57;
  v26 = *(v1 + 32);
  sub_23E1FB55C();
  v27 = 0;
  v28 = *(&v57 + 1);
  *(inited + 48) = v57;
  *(inited + 56) = v28;
  v29 = MEMORY[0x277D84F90];
LABEL_2:
  v30 = (inited + 40 + 16 * v27);
  while (++v27 != 3)
  {
    v31 = v30 + 2;
    v32 = *v30;
    v30 += 2;
    if (v32)
    {
      v51 = v23;
      v52 = v3;
      v33 = *(v31 - 3);
      sub_23E1FB7BC();
      v34 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v29 + 16);
        sub_23DE4CB98();
        v29 = v38;
      }

      v35 = *(v29 + 16);
      if (v35 >= *(v29 + 24) >> 1)
      {
        sub_23DE4CB98();
        v29 = v39;
      }

      *(v29 + 16) = v35 + 1;
      v36 = v29 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      v23 = v51;
      v1 = v34;
      v3 = v52;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_23DF0332C();
  *&v57 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  sub_23DE66434(&qword_27E32C420, &unk_27E32BA60, &unk_23E222770);
  sub_23E1FDB0C();

  sub_23E1FDB9C();
  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  v40 = *(v1 + 16);
  sub_23E1FB55C();
  sub_23E1FDB7C();

  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  sub_23E1FDB9C();
  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  sub_23E1FDB7C();

  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v53);
  sub_23E1FB55C();
  sub_23DED5AF8(1);
  v44 = sub_23E1FE43C();
  v46 = v45;

  *&v57 = v44;
  *(&v57 + 1) = v46;
  MEMORY[0x23EF044F0](0x2E6572617571732ELL, 0xEC0000006C6C6966);
  sub_23E1FB71C();
  sub_23E1FB75C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  sub_23E1FB76C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DED5AF8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23E1FDCEC();
    v1 = sub_23E1FDD8C();

    return v1;
  }

  return result;
}

uint64_t sub_23DED5BB8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_23DE5CAB8(0, result, v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = sub_23DE58DB0(0);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_23DED5C4C()
{
  OUTLINED_FUNCTION_90();
  v41 = v0;
  v42 = v1;
  sub_23E1FBEEC();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v11 = sub_23E1FDBCC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_3();
  v15 = sub_23E1FBF0C();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D258, &qword_23E228650);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v3 + 104);
  v21 = OUTLINED_FUNCTION_4_12();
  v20(v21);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_2_14();
  sub_23E1FBF1C();
  v40 = sub_23E1FB58C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D260, &qword_23E228658);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v22 = OUTLINED_FUNCTION_4_12();
  v20(v22);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_8();
  v39 = sub_23E1FB58C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v23 = OUTLINED_FUNCTION_4_12();
  v20(v23);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_8();
  v38 = sub_23E1FB58C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D268, &qword_23E228660);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v24 = OUTLINED_FUNCTION_4_12();
  v20(v24);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_2_14();
  sub_23E1FBF1C();
  v36 = sub_23E1FB59C();
  OUTLINED_FUNCTION_27_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v25 = OUTLINED_FUNCTION_4_12();
  v20(v25);
  OUTLINED_FUNCTION_2_14();
  sub_23E1FBF1C();
  v37 = sub_23E1FB59C();
  OUTLINED_FUNCTION_27_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v26 = OUTLINED_FUNCTION_4_12();
  v20(v26);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_8();
  v35 = sub_23E1FB59C();
  OUTLINED_FUNCTION_27_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v27 = OUTLINED_FUNCTION_4_12();
  v20(v27);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_8();
  v28 = sub_23E1FB59C();
  v29 = [v41 iccid];
  v34 = sub_23E1FDC1C();
  v31 = v30;

  v32 = [v41 label];
  sub_23E1FDC1C();

  sub_23E1FB56C();
  sub_23DEDA434(v41);
  sub_23E1FB56C();
  v33 = [v41 carrierName];
  sub_23E1FDC1C();

  sub_23E1FB56C();
  OUTLINED_FUNCTION_21_7([v41 isActive]);
  sub_23E1FB56C();
  OUTLINED_FUNCTION_21_7([v41 isDefaultVoiceLine]);
  sub_23E1FB56C();
  OUTLINED_FUNCTION_21_7([v41 isDefaultDataLine]);
  sub_23E1FB56C();
  OUTLINED_FUNCTION_21_7([v41 dataRoamingEnabled]);
  sub_23E1FB56C();

  v44[0] = v34;
  v44[1] = v31;
  v44[2] = v40;
  v44[3] = v39;
  v44[4] = v38;
  v44[5] = v36;
  v44[6] = v37;
  v44[7] = v35;
  v44[8] = v28;
  v45[0] = v34;
  v45[1] = v31;
  v45[2] = v40;
  v45[3] = v39;
  v45[4] = v38;
  v45[5] = v36;
  v45[6] = v37;
  v45[7] = v35;
  v45[8] = v28;
  sub_23DE99F40(v44, &v43);
  sub_23DEDA498(v45);
  memcpy(v42, v44, 0x48uLL);
  OUTLINED_FUNCTION_76();
}

void sub_23DED6258()
{
  v0 = [objc_allocWithZone(WFCellularPlansManager) init];
  v1 = [v0 allPlans];

  sub_23DED9464();
  v2 = sub_23E1FDDEC();

  v3 = sub_23DE4D8B0(v2);
  if (v3)
  {
    v4 = v3;
    v10 = MEMORY[0x277D84F90];
    sub_23DE64094();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v10;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x23EF04DD0](v5, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v5 + 32);
        }

        sub_23DED5C4C();
        v10 = v6;
        v8 = *(v6 + 16);
        if (v8 >= *(v6 + 24) >> 1)
        {
          sub_23DE64094();
          v6 = v10;
        }

        ++v5;
        *(v6 + 16) = v8 + 1;
        memcpy((v6 + 72 * v8 + 32), __src, 0x48uLL);
      }

      while (v4 != v5);
    }
  }

  else
  {
  }
}

unint64_t sub_23DED63EC()
{
  result = qword_280DAEF48;
  if (!qword_280DAEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF48);
  }

  return result;
}

unint64_t sub_23DED6440()
{
  result = qword_280DAEF40;
  if (!qword_280DAEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF40);
  }

  return result;
}

unint64_t sub_23DED6494()
{
  result = qword_280DAEF58;
  if (!qword_280DAEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF58);
  }

  return result;
}

unint64_t sub_23DED64EC()
{
  result = qword_280DAEF38;
  if (!qword_280DAEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF38);
  }

  return result;
}

uint64_t sub_23DED6540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DED50AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DED65B0(uint64_t a1)
{
  v2 = sub_23DE99E98();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_23DED6600()
{
  result = qword_280DAEF30;
  if (!qword_280DAEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF30);
  }

  return result;
}

uint64_t sub_23DED6658(uint64_t a1)
{
  v2 = sub_23DED64EC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DED66A4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = v8;
  if (!*(v9 + 8))
  {
    OUTLINED_FUNCTION_12_10(a1, a2, a3, a4, a5, a6, a7, a8, v71, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    v31 = sub_23DE99F40(a1, &v78);
    v39 = OUTLINED_FUNCTION_19_3(v31, v32, v33, v34, v35, v36, v37, v38, v74, v78, v79, v80, v81, v82);
    OUTLINED_FUNCTION_18_10(v39, v40, v41, v42, v43, v44, v45, v46, v75, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    sub_23DEDA498(v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D258, &qword_23E228650);
    if (swift_dynamicCast())
    {
      sub_23DEDA590(v9 + 16, &v91);
      if (v93)
      {
        if (swift_dynamicCast())
        {
          sub_23E1FB55C();
          v47 = sub_23E1FDC8C();
          v49 = v48;

          v91 = v47;
          v92 = v49;
          v50 = sub_23E1FDC8C();
          v52 = v51;

          v78 = v50;
          v79 = v52;
          sub_23DE655BC();
          v30 = sub_23E1FE48C();

          return v30 & 1;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_22:
    v30 = 0;
    return v30 & 1;
  }

  if (*(v9 + 8) != 1)
  {
    OUTLINED_FUNCTION_12_10(a1, a2, a3, a4, a5, a6, a7, a8, v71, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    v53 = sub_23DE99F40(a1, &v78);
    v61 = OUTLINED_FUNCTION_19_3(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v79, v80, v81, v82);
    OUTLINED_FUNCTION_18_10(v61, v62, v63, v64, v65, v66, v67, v68, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    sub_23DEDA498(v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D268, &qword_23E228660);
    if (OUTLINED_FUNCTION_34_2())
    {
      sub_23E1FB55C();

      v69 = v78;
      sub_23DEDA590(v9 + 16, &v91);
      if (!v93)
      {
LABEL_20:
        sub_23DECD040(&v91);
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        v30 = v69 ^ v87 ^ 1;
        return v30 & 1;
      }
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_12_10(a1, a2, a3, a4, a5, a6, a7, a8, v71, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v11 = sub_23DE99F40(a1, &v78);
  v19 = OUTLINED_FUNCTION_19_3(v11, v12, v13, v14, v15, v16, v17, v18, v72, v78, v79, v80, v81, v82);
  OUTLINED_FUNCTION_18_10(v19, v20, v21, v22, v23, v24, v25, v26, v73, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  sub_23DEDA498(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D258, &qword_23E228650);
  if ((OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_23DEDA590(v9 + 16, &v91);
  if (!v93)
  {
LABEL_19:

    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v27 = v78;
  v28 = v79;
  sub_23E1FB55C();
  if (v91 == v27 && v92 == v28)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_23E1FE75C();
  }

  return v30 & 1;
}

uint64_t sub_23DED69CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2A0, &qword_23E228788);
  __swift_allocate_value_buffer(v0, qword_27E33E150);
  __swift_project_value_buffer(v0, qword_27E33E150);
  sub_23DE99E98();
  return sub_23E1FB78C();
}

uint64_t sub_23DED6A58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2A8, &qword_23E228790);
  swift_getKeyPath();
  sub_23E1FB6DC();
  sub_23DE99E98();
  v0 = sub_23E1FB7CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2B0, &qword_23E228798);
  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v1 = sub_23E1FB7CC();

  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v2 = sub_23E1FB7CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2B8, &qword_23E2287A0);
  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v3 = sub_23E1FB7CC();

  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v4 = sub_23E1FB7CC();

  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v5 = sub_23E1FB7CC();

  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v6 = sub_23E1FB7CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23E228180;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  sub_23E1FB7CC();
  v8 = sub_23E1FB92C();

  return v8;
}

uint64_t sub_23DED6E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D300, &qword_23E228888);
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D308, &qword_23E228890);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_23E1FB66C();
  sub_23DE99E98();
  sub_23E1FB98C();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D310, &qword_23E228898);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_23DE66434(&qword_27E32D318, &qword_27E32D320, &qword_23E2288A0);
  sub_23E1FB6BC();
  sub_23E1FB97C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D328, &qword_23E2288A8);
  v15 = *(v1 + 72);
  v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23E222370;
  v18 = v17 + v16;
  v19 = *(v2 + 16);
  v19(v18, v8, v0);
  v19(v18 + v15, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D260, &qword_23E228658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D320, &qword_23E2288A0);
  sub_23DEDA654();
  v20 = sub_23E1FB96C();

  v21 = *(v2 + 8);
  v21(v6, v0);
  v21(v8, v0);
  return v20;
}

uint64_t sub_23DED712C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  KeyPath = swift_getKeyPath();
  v6 = MEMORY[0x277D837D0];
  *a2 = KeyPath;
  if (!v3)
  {
    v6 = 0;
  }

  *(a2 + 8) = 1;
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 16) = v7;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = v6;

  return sub_23E1FB7BC();
}

void sub_23DED71D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_90();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2E0, &qword_23E228868);
  v23 = *(v22 - 8);
  v24 = v23;
  v25 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2E8, &qword_23E228870);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_30_4();
  sub_23DE99E98();
  OUTLINED_FUNCTION_31_4();

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2F0, &qword_23E228878);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_23E1FB6AC();
  OUTLINED_FUNCTION_31_4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2F8, &qword_23E228880);
  v37 = *(v23 + 72);
  v38 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23E222370;
  v40 = v39 + v38;
  v41 = *(v24 + 16);
  v41(v40, v30, v22);
  v41(v40 + v37, v28, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D258, &qword_23E228650);
  sub_23DE712E4();
  sub_23E1FB96C();

  v42 = *(v24 + 8);
  v42(v28, v22);
  v42(v30, v22);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DED746C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  KeyPath = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D837D0];
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *a2 = KeyPath;
  *(a2 + 8) = 1;

  return sub_23E1FB7BC();
}

uint64_t sub_23DED74DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a3 + 40) = MEMORY[0x277D837D0];
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *a3 = KeyPath;
  *(a3 + 8) = 0;

  return sub_23E1FB7BC();
}

uint64_t sub_23DED75C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2C0, &qword_23E228850);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2C8, &qword_23E228858);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_30_4();
  sub_23DE99E98();
  sub_23E1FB98C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2D0, &qword_23E228860);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23E222340;
  (*(v1 + 16))(v11 + v10, v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D268, &qword_23E228660);
  sub_23DEDA600();
  v12 = sub_23E1FB96C();

  (*(v1 + 8))(v5, v0);
  return v12;
}

uint64_t sub_23DED77CC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 40) = MEMORY[0x277D839B0];
  *(a2 + 16) = v3;
  *a2 = result;
  *(a2 + 8) = 2;
  return result;
}

uint64_t sub_23DED7814()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D278, &qword_23E2286F8);
  __swift_allocate_value_buffer(v0, qword_27E33E168);
  __swift_project_value_buffer(v0, qword_27E33E168);
  sub_23DE99E98();
  return sub_23E1FB8AC();
}

uint64_t sub_23DED7898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D280, &qword_23E228700);
  v34 = *(v0 - 8);
  v1 = v34;
  v32 = v34;
  v2 = *(v34 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v33 = &v27 - v12;
  swift_getKeyPath();
  sub_23DE99E98();
  v30 = sub_23DE66434(&qword_27E32D288, &qword_27E32D258, &qword_23E228650);
  sub_23E1FB99C();
  sub_23E1FB9DC();
  v13 = *(v1 + 8);
  v31 = v11;
  v13(v11, v0);
  swift_getKeyPath();
  sub_23DE66434(&qword_27E32D290, &qword_27E32D260, &qword_23E228658);
  sub_23E1FB99C();
  sub_23E1FB9DC();
  v28 = v8;
  v29 = v13;
  v13(v8, v0);
  swift_getKeyPath();
  sub_23E1FB99C();
  sub_23E1FB9DC();
  v13(v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D298, &qword_23E228780);
  v14 = *(v34 + 72);
  v15 = v32;
  v16 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23E222380;
  v18 = v17 + v16;
  v19 = *(v15 + 16);
  v20 = v33;
  v19(v18, v33, v0);
  v21 = v31;
  v19(v18 + v14, v31, v0);
  v22 = v18 + 2 * v14;
  v23 = v28;
  v19(v22, v28, v0);
  v24 = sub_23E1FB9CC();

  v25 = v29;
  v29(v23, v0);
  v25(v21, v0);
  v25(v20, v0);
  return v24;
}

void sub_23DED7C58()
{
  sub_23DED6258();
  v2 = v1;
  v3 = 0;
  v4 = *(v1 + 16);
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = 72 * v3 + 32;
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[22];
    memcpy(v0 + 2, (v2 + v5), 0x48uLL);
    v7 = v0[3];
    v0[20] = v0[2];
    v0[21] = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 20;
    sub_23DE99F40((v0 + 2), (v0 + 11));
    sub_23E1FB7BC();
    LOBYTE(v6) = sub_23DEDEAA0(sub_23DE482E4, v8, v6);

    if (v6)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = *(v14 + 16);
        sub_23DE64094();
        v10 = v14;
      }

      v12 = *(v10 + 16);
      if (v12 >= *(v10 + 24) >> 1)
      {
        sub_23DE64094();
        v10 = v14;
      }

      ++v3;
      *(v10 + 16) = v12 + 1;
      v14 = v10;
      memcpy((v10 + 72 * v12 + 32), v0 + 2, 0x48uLL);
      goto LABEL_2;
    }

    sub_23DEDA498((v0 + 2));
    v5 += 72;
    ++v3;
  }

  OUTLINED_FUNCTION_12_1();

  v13(v14);
}

uint64_t sub_23DED7EA0()
{
  sub_23DED6258();
  OUTLINED_FUNCTION_12_1();

  return v0();
}

uint64_t sub_23DED7F14()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 729) = v1;
  *(v0 + 696) = v2;
  *(v0 + 688) = v3;
  *(v0 + 728) = v4;
  *(v0 + 680) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D270, &qword_23E228678);
  *(v0 + 704) = v6;
  v7 = *(v6 - 8);
  *(v0 + 712) = v7;
  v8 = *(v7 + 64) + 15;
  *(v0 + 720) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DED7FEC, 0, 0);
}

void sub_23DED7FEC()
{
  v104 = v0;
  v1 = 0;
  sub_23DED6258();
  v6 = v5;
  v7 = 0;
  v8 = *(v0 + 680);
  v9 = *(v5 + 16);
  v10 = v5 + 32;
  for (i = MEMORY[0x277D84F90]; ; memcpy((i + 72 * v33 + 32), (v0 + 16), 0x48uLL))
  {
    v99 = i;
    while (1)
    {
      if (v7 == v9)
      {
        v34 = *(v0 + 688);

        v35 = *(v34 + 16);
        if (v35)
        {
          v36 = *(v0 + 712);
          v37 = *(v0 + 688);
          sub_23E1FE4BC();
          v38 = 0;
          v39 = *(v36 + 16);
          v36 += 16;
          v96 = v37 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
          v97 = v39;
          v94 = (v36 - 8);
          v95 = *(v36 + 56);
          v92 = v35;
          while (1)
          {
            v97(*(v0 + 720), v96 + v38 * v95, *(v0 + 704));
            sub_23E1FB5AC();
            swift_getKeyPath();
            OUTLINED_FUNCTION_11_7();
            v41 = v40;

            v42 = *(v0 + 720);
            if (v41)
            {
              v43 = swift_task_alloc();
              if ((OUTLINED_FUNCTION_17_8(v43) & 1) == 0)
              {
                sub_23DF31B20(v42);
                v42 = v81;
              }

              v93 = v38;
              v44 = *(v42 + 16);
              v99 = v42;
              v101[0] = v42 + 32;
              v101[1] = v44;
              v45 = sub_23E1FE70C();
              if (v45 < v44)
              {
                v46 = v45;
                v47 = MEMORY[0x277D84F90];
                if (v44 >= 2)
                {
                  v47 = sub_23E1FDE2C();
                  *(v47 + 16) = v44 >> 1;
                }

                __dst[0] = (v47 + 32);
                __dst[1] = (v44 >> 1);
                sub_23DED9748(__dst, v103, v101, sub_23DEDA570, v43, v46);
                *(v47 + 16) = 0;

                goto LABEL_57;
              }

              if (v44 < 2)
              {
                goto LABEL_57;
              }

              v58 = 0;
              v59 = (v42 + 104);
              v60 = 1;
              v98 = v44;
              while (1)
              {
                v100 = v58;
                for (j = v59; ; j -= 72)
                {
                  v62 = *(v0 + 720);
                  v63 = *(v0 + 704);
                  memcpy((v0 + 304), j, 0x48uLL);
                  memcpy((v0 + 232), j - 72, 0x48uLL);
                  v64 = *(v0 + 320);
                  v65 = *(v0 + 248);
                  sub_23DE99F40(v0 + 304, v0 + 376);
                  sub_23DE99F40(v0 + 232, v0 + 448);
                  if ((sub_23E1FB5BC() & 1) == 0)
                  {
                    break;
                  }

                  sub_23E1FB55C();
                  v66 = *(v0 + 616);
                  v67 = *(v0 + 624);
                  sub_23E1FB55C();
                  if (*(v0 + 632) == v66 && *(v0 + 640) == v67)
                  {
                    goto LABEL_55;
                  }

                  v69 = *(v0 + 640);
LABEL_52:
                  v74 = sub_23E1FE75C();

                  sub_23DEDA498(v0 + 232);
                  sub_23DEDA498(v0 + 304);
                  if ((v74 & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  memcpy(__dst, j, sizeof(__dst));
                  memcpy(j, j - 72, 0x48uLL);
                  memcpy(j - 72, __dst, 0x48uLL);
                  if (!v58)
                  {
                    goto LABEL_56;
                  }

                  ++v58;
                }

                sub_23E1FB55C();
                v70 = *(v0 + 648);
                v71 = *(v0 + 656);
                sub_23E1FB55C();
                if (v70 != *(v0 + 664) || v71 != *(v0 + 672))
                {
                  break;
                }

LABEL_55:

                sub_23DEDA498(v0 + 232);
                sub_23DEDA498(v0 + 304);
LABEL_56:
                ++v60;
                v59 += 72;
                v58 = v100 - 1;
                if (v60 == v98)
                {
LABEL_57:

                  v35 = v92;
                  v38 = v93;
                  goto LABEL_72;
                }
              }

              v73 = *(v0 + 672);
              goto LABEL_52;
            }

            v48 = *(v0 + 704);
            v49 = sub_23E1FB5AC();
            swift_getKeyPath();
            OUTLINED_FUNCTION_11_7();
            v51 = v50;

            v52 = *(v0 + 720);
            if (v51)
            {
              break;
            }

            v75 = *(v0 + 704);
            v49 = sub_23E1FB5AC();
            swift_getKeyPath();
            OUTLINED_FUNCTION_11_7();
            v77 = v76;

            if (v77)
            {
              v78 = *(v0 + 720);
              v53 = swift_task_alloc();
              if ((OUTLINED_FUNCTION_17_8(v53) & 1) == 0)
              {
                sub_23DF31B20(v78);
              }

              v79 = OUTLINED_FUNCTION_20_5();
              if (v79 < v49)
              {
                v55 = v79;
                v56 = MEMORY[0x277D84F90];
                if (v49 >= 2)
                {
                  v56 = sub_23E1FDE2C();
                  *(v56 + 16) = v49 >> 1;
                }

                __dst[0] = (v56 + 32);
                __dst[1] = (v49 >> 1);
                v57 = sub_23DEDA530;
LABEL_65:
                sub_23DED9748(__dst, v103, v101, v57, v53, v55);
                *(v56 + 16) = 0;

                goto LABEL_71;
              }

              if (!v49)
              {
                goto LABEL_71;
              }

              v80 = sub_23DEDA530;
LABEL_70:
              sub_23DED957C(0, v49, 1, v80);
              goto LABEL_71;
            }

LABEL_72:
            ++v38;
            (*v94)(*(v0 + 720), *(v0 + 704));
            if (v38 == v35)
            {
              goto LABEL_73;
            }
          }

          v53 = swift_task_alloc();
          if ((OUTLINED_FUNCTION_17_8(v53) & 1) == 0)
          {
            sub_23DF31B20(v52);
          }

          v54 = OUTLINED_FUNCTION_20_5();
          if (v54 < v49)
          {
            v55 = v54;
            v56 = MEMORY[0x277D84F90];
            if (v49 >= 2)
            {
              v56 = sub_23E1FDE2C();
              *(v56 + 16) = v49 >> 1;
            }

            __dst[0] = (v56 + 32);
            __dst[1] = (v49 >> 1);
            v57 = sub_23DEDA550;
            goto LABEL_65;
          }

          if (!v49)
          {
LABEL_71:

            goto LABEL_72;
          }

          v80 = sub_23DEDA550;
          goto LABEL_70;
        }

LABEL_73:
        if (!*(v99 + 16))
        {

          sub_23DE99EEC();
          swift_allocError();
          *v85 = 3;
          swift_willThrow();
          v2 = *(v0 + 720);

          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_29_2();

          __asm { BRAA            X1, X16 }
        }

        if (*(v0 + 729))
        {
          goto LABEL_84;
        }

        i = sub_23DED5BB8(*(v0 + 696), v99);
        v7 = v82;
        v1 = v83;
        v8 = v84;
        if ((v84 & 1) == 0)
        {
          goto LABEL_76;
        }

        sub_23E1FE77C();
        swift_unknownObjectRetain_n();
        v86 = swift_dynamicCastClass();
        if (!v86)
        {
          swift_unknownObjectRelease();
          v86 = MEMORY[0x277D84F90];
        }

        v87 = *(v86 + 16);

        if (__OFSUB__(v8 >> 1, v1))
        {
LABEL_88:
          __break(1u);
        }

        else if (v87 == (v8 >> 1) - v1)
        {
          v88 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v88)
          {
            goto LABEL_83;
          }

          goto LABEL_84;
        }

        swift_unknownObjectRelease();
LABEL_76:
        sub_23DED94A8(i, v7, v1, v8);
LABEL_83:
        swift_unknownObjectRelease();
LABEL_84:
        v89 = *(v0 + 720);

        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_29_2();

        __asm { BRAA            X2, X16 }
      }

      if (v7 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_88;
      }

      v12 = *(v0 + 728);
      memcpy((v0 + 16), (v10 + 72 * v7++), 0x48uLL);
      if ((v12 & 1) == 0)
      {
        break;
      }

      i = *(v8 + 16);
      sub_23DE99F40(v0 + 16, v0 + 88);
      v1 = i + 1;
      v13 = v8 + 32;
      while (--v1)
      {
        v14 = v13 + 48;
        sub_23DEDA4C8(v13, v0 + 520);
        i = sub_23DED66A4(v0 + 16, v15, v16, v17, v18, v19, v20, v21);
        sub_23DEDA500(v0 + 520);
        v13 = v14;
        if (i)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      sub_23DEDA498(v0 + 16);
    }

    v22 = *(v8 + 16);
    sub_23DE99F40(v0 + 16, v0 + 160);
    v1 = v22 + 1;
    v23 = v8 + 32;
    while (--v1)
    {
      v24 = v23 + 48;
      sub_23DEDA4C8(v23, v0 + 568);
      i = sub_23DED66A4(v0 + 16, v25, v26, v27, v28, v29, v30, v31);
      sub_23DEDA500(v0 + 568);
      v23 = v24;
      if ((i & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    i = v99;
    __dst[0] = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(v99 + 16);
      sub_23DE64094();
      i = __dst[0];
    }

    v33 = *(i + 16);
    v1 = v33 + 1;
    if (v33 >= *(i + 24) >> 1)
    {
      sub_23DE64094();
      i = __dst[0];
    }

    *(i + 16) = v1;
  }
}

uint64_t sub_23DED88C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23E1FB7BC();
  return sub_23DED50DC();
}

uint64_t sub_23DED8904(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D270, &qword_23E228678);
  sub_23E1FB5BC();
  sub_23E1FB55C();
  sub_23E1FB55C();

  return 0;
}

uint64_t sub_23DED89FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23E1FB7BC();
  return sub_23DED5168();
}

uint64_t sub_23DED8A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D270, &qword_23E228678);
  if ((sub_23E1FB5BC() & 1) == 0)
  {
    sub_23E1FB55C();
    if (v17)
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }

    if (v17)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    sub_23E1FB55C();
    if (v17)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    if (v17)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    if (v9 != v11 || v10 != v12)
    {
      goto LABEL_35;
    }

LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  sub_23E1FB55C();
  if (v17)
  {
    v4 = v16;
  }

  else
  {
    v4 = 0;
  }

  if (v17)
  {
    v5 = v17;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_23E1FB55C();
  if (v17)
  {
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  if (v17)
  {
    v7 = v17;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v6 == v4 && v7 == v5)
  {
    goto LABEL_36;
  }

LABEL_35:
  v14 = sub_23E1FE75C();
LABEL_37:

  return v14 & 1;
}

uint64_t sub_23DED8B6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23E1FB7BC();
  return sub_23DED51F4();
}

uint64_t sub_23DED8BAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D270, &qword_23E228678);
  sub_23E1FB5BC();
  sub_23E1FB55C();
  sub_23E1FB55C();

  return 0;
}

uint64_t sub_23DED8CA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B948 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2A0, &qword_23E228788);
  v3 = __swift_project_value_buffer(v2, qword_27E33E150);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23DED8D58@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B950 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D278, &qword_23E2286F8);
  v3 = __swift_project_value_buffer(v2, qword_27E33E168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23DED8E10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DED7F14();
}

unint64_t sub_23DED8EDC()
{
  result = qword_280DAEFA8;
  if (!qword_280DAEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEFA8);
  }

  return result;
}

unint64_t sub_23DED8F34()
{
  result = qword_280DAEFA0;
  if (!qword_280DAEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEFA0);
  }

  return result;
}

uint64_t sub_23DED8F8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE6B9E8;

  return sub_23DED7C40(a1);
}

uint64_t sub_23DED9020(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4D8B4;

  return sub_23DED7E8C();
}

uint64_t sub_23DED90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23DE6AECC;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

unint64_t sub_23DED9174()
{
  result = qword_280DAEFB0;
  if (!qword_280DAEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEFB0);
  }

  return result;
}

unint64_t sub_23DED91CC()
{
  result = qword_27E32D240;
  if (!qword_27E32D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D248, qword_23E228498);
    sub_23DED6494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D240);
  }

  return result;
}

uint64_t sub_23DED9250(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_23DED4B80();
  *v6 = v2;
  v6[1] = sub_23DE47040;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23DED931C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23DED935C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DED93C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_23DED9408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DED9464()
{
  result = qword_27E32D250;
  if (!qword_27E32D250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E32D250);
  }

  return result;
}

void sub_23DED94A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C2D0, &unk_23E22A390);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 72);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_23DED957C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = (*v4 + 72 * a3);
    v10 = result - a3 + 1;
    while (2)
    {
      v14 = v10;
      v22 = v9;
      while (1)
      {
        memcpy(__dst, v9, sizeof(__dst));
        memcpy(v19, v9, sizeof(v19));
        memcpy(v21, v9 - 72, 0x48uLL);
        memcpy(__src, v9 - 72, sizeof(__src));
        sub_23DE99F40(__dst, v17);
        sub_23DE99F40(v21, v17);
        v11 = a4(v19, __src);
        if (v5)
        {
          memcpy(v16, __src, sizeof(v16));
          sub_23DEDA498(v16);
          memcpy(v17, v19, sizeof(v17));
          return sub_23DEDA498(v17);
        }

        v12 = v11;
        memcpy(v16, __src, sizeof(v16));
        sub_23DEDA498(v16);
        memcpy(v17, v19, sizeof(v17));
        result = sub_23DEDA498(v17);
        if ((v12 & 1) == 0)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        memcpy(v15, v9, sizeof(v15));
        memcpy(v9, v9 - 72, 0x48uLL);
        result = memcpy(v9 - 72, v15, 0x48uLL);
        if (!v10)
        {
          break;
        }

        ++v10;
        v9 -= 72;
      }

      ++v7;
      v9 = v22 + 72;
      v10 = v14 - 1;
      if (v7 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23DED9748(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(_BYTE *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v117 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v102 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_95;
    }

    goto LABEL_137;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_24;
    }

    v102 = v10;
    v13 = *a3;
    v14 = v9 + 1;
    v15 = (*a3 + 72 * (v9 + 1));
    memcpy(__dst, v15, sizeof(__dst));
    memcpy(v114, v15, sizeof(v114));
    memcpy(v116, (v13 + 72 * v11), 0x48uLL);
    memcpy(__src, (v13 + 72 * v11), sizeof(__src));
    sub_23DE99F40(__dst, v112);
    sub_23DE99F40(v116, v112);
    v16 = a4(v114, __src);
    if (v7)
    {
LABEL_105:
      memcpy(v111, __src, sizeof(v111));
      sub_23DEDA498(v111);
      memcpy(v112, v114, sizeof(v112));
      sub_23DEDA498(v112);
      goto LABEL_106;
    }

    v17 = v16;
    memcpy(v111, __src, sizeof(v111));
    sub_23DEDA498(v111);
    memcpy(v112, v114, sizeof(v112));
    sub_23DEDA498(v112);
    v18 = v13 + 72 * v11;
    v19 = v11;
    v20 = 72 * v11;
    v21 = (v18 + 144);
    v99 = v19;
    v22 = v19 + 2;
    v12 = v14;
    while (1)
    {
      v23 = v12;
      v24 = v22;
      if (v12 + 1 >= v8)
      {
        break;
      }

      memcpy(v109, v21, sizeof(v109));
      memcpy(v108, v21, sizeof(v108));
      memcpy(v110, v21 - 72, sizeof(v110));
      memcpy(v107, v21 - 72, sizeof(v107));
      sub_23DE99F40(v109, v106);
      sub_23DE99F40(v110, v106);
      v25 = a4(v108, v107);
      memcpy(v105, v107, sizeof(v105));
      sub_23DEDA498(v105);
      memcpy(v106, v108, sizeof(v106));
      sub_23DEDA498(v106);
      v21 += 72;
      ++v12;
      v22 = v24 + 1;
      if ((v17 ^ v25))
      {
        if (v17)
        {
          goto LABEL_9;
        }

LABEL_13:
        v10 = v102;
LABEL_23:
        v11 = v99;
        goto LABEL_24;
      }
    }

    v12 = v8;
    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v12 < v99)
    {
      goto LABEL_131;
    }

    v10 = v102;
    if (v99 <= v23)
    {
      if (v8 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v8;
      }

      v27 = v12;
      v28 = 72 * v26 - 72;
      v29 = v27;
      v30 = v99;
      do
      {
        if (v30 != --v27)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          memcpy(v110, (v31 + v20), sizeof(v110));
          memmove((v31 + v20), (v31 + v28), 0x48uLL);
          memcpy((v31 + v28), v110, 0x48uLL);
        }

        ++v30;
        v28 -= 72;
        v20 += 72;
      }

      while (v30 < v27);
      v12 = v29;
      goto LABEL_23;
    }

    v11 = v99;
LABEL_24:
    v32 = a3[1];
    if (v12 < v32)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_127;
      }

      if (v12 - v11 < a6)
      {
        v33 = v11 + a6;
        if (!__OFADD__(v11, a6))
        {
          if (v33 >= v32)
          {
            v33 = a3[1];
          }

          if (v33 < v11)
          {
            goto LABEL_130;
          }

          if (v12 != v33)
          {
            v101 = v11;
            v102 = v10;
            v79 = *a3;
            v80 = (*a3 + 72 * v12);
            v81 = v11 - v12 + 1;
            v95 = v33;
            do
            {
              v82 = v12;
              v96 = v81;
              v83 = v80;
              while (1)
              {
                memcpy(__dst, v80, sizeof(__dst));
                memcpy(v114, v80, sizeof(v114));
                memcpy(v116, v80 - 72, 0x48uLL);
                memcpy(__src, v80 - 72, sizeof(__src));
                sub_23DE99F40(__dst, v112);
                sub_23DE99F40(v116, v112);
                v84 = a4(v114, __src);
                if (v7)
                {
                  goto LABEL_105;
                }

                v85 = v84;
                memcpy(v111, __src, sizeof(v111));
                sub_23DEDA498(v111);
                memcpy(v112, v114, sizeof(v112));
                sub_23DEDA498(v112);
                if ((v85 & 1) == 0)
                {
                  break;
                }

                if (!v79)
                {
                  goto LABEL_134;
                }

                memcpy(v110, v80, sizeof(v110));
                memcpy(v80, v80 - 72, 0x48uLL);
                memcpy(v80 - 72, v110, 0x48uLL);
                if (!v81)
                {
                  break;
                }

                ++v81;
                v80 -= 72;
              }

              ++v12;
              v80 = v83 + 72;
              v81 = v96 - 1;
            }

            while (v82 + 1 != v95);
            v12 = v95;
            v11 = v101;
            v10 = v102;
          }

          goto LABEL_32;
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
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        return;
      }
    }

LABEL_32:
    if (v12 < v11)
    {
      goto LABEL_126;
    }

    v100 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4CE18(0, *(v10 + 2) + 1, 1, v10);
      v10 = v86;
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      sub_23DE4CE18(v34 > 1, v35 + 1, 1, v10);
      v10 = v87;
    }

    *(v10 + 2) = v36;
    v37 = v10 + 32;
    v38 = &v10[16 * v35 + 32];
    *v38 = v11;
    *(v38 + 1) = v100;
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v35)
    {
      break;
    }

LABEL_81:
    v8 = a3[1];
    v9 = v100;
    if (v100 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    v40 = &v37[16 * v36 - 16];
    v41 = &v10[16 * v36];
    if (v36 >= 4)
    {
      v46 = &v37[16 * v36];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_114;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_115;
      }

      v53 = *(v41 + 1);
      v54 = v53 - *v41;
      if (__OFSUB__(v53, *v41))
      {
        goto LABEL_117;
      }

      v52 = __OFADD__(v44, v54);
      v55 = v44 + v54;
      if (v52)
      {
        goto LABEL_120;
      }

      if (v55 >= v49)
      {
        v69 = *v40;
        v68 = *(v40 + 1);
        v52 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v52)
        {
          goto LABEL_125;
        }

        if (v44 < v70)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v36 == 3)
    {
      v42 = *(v10 + 4);
      v43 = *(v10 + 5);
      v52 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      v45 = v52;
LABEL_52:
      if (v45)
      {
        goto LABEL_116;
      }

      v57 = *v41;
      v56 = *(v41 + 1);
      v58 = __OFSUB__(v56, v57);
      v59 = v56 - v57;
      v60 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v61 = *(v40 + 1);
      v62 = v61 - *v40;
      if (__OFSUB__(v61, *v40))
      {
        goto LABEL_122;
      }

      if (__OFADD__(v59, v62))
      {
        goto LABEL_124;
      }

      if (v59 + v62 >= v44)
      {
        if (v44 < v62)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v36 < 2)
    {
      goto LABEL_118;
    }

    v64 = *v41;
    v63 = *(v41 + 1);
    v52 = __OFSUB__(v63, v64);
    v59 = v63 - v64;
    v60 = v52;
LABEL_67:
    if (v60)
    {
      goto LABEL_121;
    }

    v66 = *v40;
    v65 = *(v40 + 1);
    v52 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v52)
    {
      goto LABEL_123;
    }

    if (v67 < v59)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_132;
    }

    v71 = &v37[16 * v39 - 16];
    v72 = *v71;
    v73 = v39;
    v74 = &v37[16 * v39];
    v75 = *(v74 + 1);
    sub_23DED9FEC((*a3 + 72 * *v71), (*a3 + 72 * *v74), *a3 + 72 * v75, v102, a4);
    if (v7)
    {
      goto LABEL_106;
    }

    if (v75 < v72)
    {
      goto LABEL_108;
    }

    v7 = v37;
    v76 = v10;
    v10 = *(v10 + 2);
    if (v73 > v10)
    {
      goto LABEL_109;
    }

    *v71 = v72;
    *(v71 + 1) = v75;
    if (v73 >= v10)
    {
      goto LABEL_110;
    }

    v77 = v73;
    v36 = (v10 - 1);
    sub_23DF20C0C(v74 + 16, &v10[-v77 - 1], v74);
    *(v76 + 2) = v10 - 1;
    v78 = v10 > 2;
    v10 = v76;
    v37 = v7;
    v7 = 0;
    if (!v78)
    {
      goto LABEL_81;
    }
  }

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
LABEL_127:
  __break(1u);
LABEL_128:
  v10 = sub_23DF20AE8(v10);
LABEL_95:
  v88 = v10 + 16;
  v89 = *(v10 + 2);
  while (v89 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_133;
    }

    v90 = v10;
    v10 += 16 * v89;
    v91 = *v10;
    v92 = &v88[2 * v89];
    v93 = *(v92 + 1);
    sub_23DED9FEC((*a3 + 72 * *v10), (*a3 + 72 * *v92), *a3 + 72 * v93, v102, a4);
    if (v7)
    {
      break;
    }

    if (v93 < v91)
    {
      goto LABEL_111;
    }

    if (v89 - 2 >= *v88)
    {
      goto LABEL_112;
    }

    *v10 = v91;
    *(v10 + 1) = v93;
    v94 = *v88 - v89;
    if (*v88 < v89)
    {
      goto LABEL_113;
    }

    v89 = *v88 - 1;
    sub_23DF20C0C(v92 + 16, v94, v92);
    *v88 = v89;
    v10 = v90;
  }

LABEL_106:
}

uint64_t sub_23DED9FEC(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(_BYTE *, _BYTE *))
{
  v46 = a5;
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 72;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    sub_23DF318CC(a1, (a2 - a1) / 72, a4);
    v12 = v6 + 72 * v9;
    while (1)
    {
      if (v6 >= v12 || v7 >= a3)
      {
        v28 = v8;
        goto LABEL_41;
      }

      memcpy(__dst, v7, sizeof(__dst));
      memmove(v43, v7, 0x48uLL);
      memcpy(v45, v6, 0x48uLL);
      memmove(__src, v6, 0x48uLL);
      sub_23DE99F40(__dst, v41);
      sub_23DE99F40(v45, v41);
      v14 = v46(v43, __src);
      if (v5)
      {
        memcpy(v40, __src, sizeof(v40));
        sub_23DEDA498(v40);
        memcpy(v41, v43, sizeof(v41));
        sub_23DEDA498(v41);
        v32 = (v12 - v6) / 72;
        v33 = v8 < v6 || v8 >= v6 + 72 * v32;
        if (v33 || v8 != v6)
        {
          v31 = 72 * v32;
          v28 = v8;
LABEL_53:
          v34 = v6;
LABEL_60:
          memmove(v28, v34, v31);
        }

        return 1;
      }

      v15 = v14;
      memcpy(v40, __src, sizeof(v40));
      sub_23DEDA498(v40);
      memcpy(v41, v43, sizeof(v41));
      sub_23DEDA498(v41);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v7;
      v17 = v8 == v7;
      v7 += 72;
      if (!v17)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 += 72;
    }

    v16 = v6;
    v17 = v8 == v6;
    v6 += 72;
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v8, v16, 0x48uLL);
    goto LABEL_14;
  }

  sub_23DF318CC(a2, (a3 - a2) / 72, a4);
  v12 = v6 + 72 * v11;
  v38 = v6;
  v18 = -v6;
  v19 = a3;
LABEL_16:
  v39 = v7;
  v37 = v7 - 72;
  v20 = v19 - 72;
  for (i = v18 + v12; ; i -= 72)
  {
    if (v12 <= v38 || v39 <= v8)
    {
      v6 = v38;
      v28 = v39;
LABEL_41:
      v29 = (v12 - v6) / 72;
      v30 = v28 < v6 || v28 >= v6 + 72 * v29;
      if (v30 || v28 != v6)
      {
        v31 = 72 * v29;
        goto LABEL_53;
      }

      return 1;
    }

    v23 = v20;
    memcpy(__dst, (v12 - 72), sizeof(__dst));
    memmove(v43, (v12 - 72), 0x48uLL);
    memcpy(v45, v37, 0x48uLL);
    memcpy(__src, v37, sizeof(__src));
    sub_23DE99F40(__dst, v41);
    sub_23DE99F40(v45, v41);
    v24 = v46(v43, __src);
    if (v5)
    {
      break;
    }

    v25 = v24;
    memcpy(v40, __src, sizeof(v40));
    sub_23DEDA498(v40);
    memcpy(v41, v43, sizeof(v41));
    sub_23DEDA498(v41);
    if (v25)
    {
      v19 = v23;
      v27 = (v23 + 72) < v39 || v23 >= v39;
      if (!v27 && v23 + 72 == v39)
      {
        v7 = v37;
      }

      else
      {
        v7 = v37;
        memmove(v23, v37, 0x48uLL);
      }

      goto LABEL_16;
    }

    v26 = (v23 + 72) < v12 || v23 >= v12;
    if (v26 || v12 != v23 + 72)
    {
      memmove(v23, (v12 - 72), 0x48uLL);
    }

    v20 = v23 - 72;
    v12 -= 72;
  }

  memcpy(v40, __src, sizeof(v40));
  sub_23DEDA498(v40);
  memcpy(v41, v43, sizeof(v41));
  sub_23DEDA498(v41);
  v34 = v38;
  v28 = v39;
  v35 = v39 < v38 || v39 >= v38 + 72 * (i / 72);
  if (v35 || v39 != v38)
  {
    v31 = 72 * (i / 72);
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_23DEDA434(void *a1)
{
  v1 = [a1 phoneNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E1FDC1C();

  return v3;
}

uint64_t sub_23DEDA590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C320, &unk_23E224B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DEDA600()
{
  result = qword_27E32D2D8;
  if (!qword_27E32D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D2D8);
  }

  return result;
}

unint64_t sub_23DEDA654()
{
  result = qword_27E32D330;
  if (!qword_27E32D330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D320, &qword_23E2288A0);
    sub_23DE712E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D330);
  }

  return result;
}

_BYTE *sub_23DEDA6D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DEDA7B4()
{
  result = qword_27E32D340;
  if (!qword_27E32D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D340);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_23E1FBF1C();
}

void OUTLINED_FUNCTION_11_7()
{

  JUMPOUT(0x23EF04C90);
}

void *OUTLINED_FUNCTION_12_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __dst)
{
  v26 = *v23;

  return memcpy(&__dst, v24, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_18_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __src)
{

  return memcpy((v23 - 136), &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return MEMORY[0x2821FE9A8](va, v14);
}

uint64_t OUTLINED_FUNCTION_20_5()
{
  v2 = *(v0 + 16);

  return sub_23E1FE70C();
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_23E1FB66C();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_23E1FB98C();
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return swift_dynamicCast();
}

uint64_t PersistableDynamicOptionsProvider.results()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v3[34] = a1;
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v3[37] = swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_19_4();
  v3[38] = v6;
  OUTLINED_FUNCTION_6_0(v6);
  v3[39] = v7;
  v9 = *(v8 + 64);
  v3[40] = OUTLINED_FUNCTION_42();
  v10 = *(*(sub_23E1FE42C() - 8) + 64);
  v3[41] = OUTLINED_FUNCTION_42();
  v11 = swift_checkMetadataState();
  v3[42] = v11;
  OUTLINED_FUNCTION_6_0(v11);
  v3[43] = v12;
  v14 = *(v13 + 64);
  v3[44] = OUTLINED_FUNCTION_42();
  v15 = OUTLINED_FUNCTION_19_4();
  v3[45] = v15;
  v16 = *(v15 - 8);
  v3[46] = v16;
  v17 = *(v16 + 64);
  v3[47] = OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_12_11(a3);
  v24 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v3[48] = v21;
  *v21 = v3;
  v21[1] = sub_23DEDAC94;
  OUTLINED_FUNCTION_9_7();

  return v22();
}

uint64_t sub_23DEDAC94()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[47];
    v10 = v3[44];
    v13 = v3 + 40;
    v11 = v3[40];
    v12 = v13[1];

    OUTLINED_FUNCTION_19();

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23DEDADE8, 0, 0);
  }
}

uint64_t sub_23DEDADE8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = objc_opt_self();
  v0[49] = v3;
  v4 = [v3 standardClient];
  v0[50] = v4;
  v5 = *(v2 + 32);
  v0[51] = v5;
  v0[52] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x98EB000000000000;
  v5(v1, v2);
  v6 = sub_23E1FDBDC();
  v0[53] = v6;

  v0[2] = v0;
  v0[3] = sub_23DEDAF78;
  v7 = swift_continuation_init();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  v0[54] = v8;
  v0[25] = v8;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23DEDB89C;
  v0[21] = &block_descriptor_14;
  v0[22] = v7;
  [v4 removeAllSerializedParametersForQueryName:v6 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DEDAF78()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 440) = v4;
  if (v4)
  {
    v5 = sub_23DEDB6A8;
  }

  else
  {
    v5 = sub_23DEDB080;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23DEDB080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v19 = *(v18 + 424);
  v20 = *(v18 + 376);
  v22 = *(v18 + 344);
  v21 = *(v18 + 352);
  v23 = *(v18 + 336);
  v24 = *(v18 + 296);
  v25 = *(v18 + 272);

  (*(v22 + 16))(v21, v25, v23);
  sub_23E1FDD9C();
  OUTLINED_FUNCTION_13_6();
  swift_getAssociatedConformanceWitness();
  sub_23E1FE44C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    v26 = OUTLINED_FUNCTION_7_8();
    v27(v26);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_26();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v55 = *(v18 + 432);
    OUTLINED_FUNCTION_5_9();
    (*(v37 + 32))(v25);
    v54 = [v21 standardClient];
    *(v18 + 448) = v54;
    v38 = OUTLINED_FUNCTION_16_9();
    v39 = v38[3];
    v40 = OUTLINED_FUNCTION_0_19();
    v41(v40);
    v42 = sub_23E1FBFCC();
    OUTLINED_FUNCTION_18_11(v42);
    v43 = v38[2];
    v44 = OUTLINED_FUNCTION_0_19();
    v45(v44);
    *(v18 + 464) = sub_23E1FDBDC();

    v46 = OUTLINED_FUNCTION_11_8();
    v47(v46);
    *(v18 + 472) = sub_23E1FDBDC();

    v48 = v38[4];
    v49 = OUTLINED_FUNCTION_0_19();
    v50(v49);
    *(v18 + 80) = v18;
    OUTLINED_FUNCTION_3_8();
    *(v18 + 264) = v55;
    OUTLINED_FUNCTION_2_15();
    *(v18 + 216) = 1107296256;
    OUTLINED_FUNCTION_1_15(v51, &block_descriptor_5);
    OUTLINED_FUNCTION_17_9(v54, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
    OUTLINED_FUNCTION_26();

    return MEMORY[0x282200938](v52);
  }
}

uint64_t sub_23DEDB320()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 480) = v4;
  if (v4)
  {
    v5 = sub_23DEDB778;
  }

  else
  {
    v5 = sub_23DEDB428;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23DEDB428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v20 = v18[58];
  v21 = v18[59];
  v23 = v18[56];
  v22 = v18[57];
  (*(v18[39] + 8))(v18[40], v18[38]);

  OUTLINED_FUNCTION_13_6();
  swift_getAssociatedConformanceWitness();
  sub_23E1FE44C();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v24 = OUTLINED_FUNCTION_7_8();
    v25(v24);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_26();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v53 = v18[54];
    OUTLINED_FUNCTION_5_9();
    (*(v35 + 32))(v19);
    v52 = [v21 standardClient];
    v18[56] = v52;
    v36 = OUTLINED_FUNCTION_16_9();
    v37 = v36[3];
    v38 = OUTLINED_FUNCTION_0_19();
    v39(v38);
    v40 = sub_23E1FBFCC();
    OUTLINED_FUNCTION_18_11(v40);
    v41 = v36[2];
    v42 = OUTLINED_FUNCTION_0_19();
    v43(v42);
    v18[58] = sub_23E1FDBDC();

    v44 = OUTLINED_FUNCTION_11_8();
    v45(v44);
    v18[59] = sub_23E1FDBDC();

    v46 = v36[4];
    v47 = OUTLINED_FUNCTION_0_19();
    v48(v47);
    v18[10] = v18;
    OUTLINED_FUNCTION_3_8();
    v18[33] = v53;
    OUTLINED_FUNCTION_2_15();
    v18[27] = 1107296256;
    OUTLINED_FUNCTION_1_15(v49, &block_descriptor_5);
    OUTLINED_FUNCTION_17_9(v52, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
    OUTLINED_FUNCTION_26();

    return MEMORY[0x282200938](v50);
  }
}

uint64_t sub_23DEDB6A8()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[42];
  v5 = v0[43];
  v6 = v0[34];
  swift_willThrow();
  (*(v5 + 8))(v6, v4);

  v7 = v0[55];
  v8 = v0[47];
  v9 = v0[44];
  v11 = v0[40];
  v10 = v0[41];

  OUTLINED_FUNCTION_19();

  return v12();
}

uint64_t sub_23DEDB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v19 = v18[60];
  v44 = v18[59];
  v45 = v18[58];
  v46 = v18[57];
  v21 = v18[46];
  v20 = v18[47];
  v22 = v18[45];
  v23 = v18[43];
  v42 = v18[42];
  v43 = v18[56];
  v24 = v18[39];
  v25 = v18[40];
  v26 = v18[38];
  v27 = v18[34];
  swift_willThrow();
  (*(v24 + 8))(v25, v26);
  (*(v21 + 8))(v20, v22);
  (*(v23 + 8))(v27, v42);

  v28 = v18[60];
  v29 = v18[47];
  v30 = v18[44];
  v32 = v18[40];
  v31 = v18[41];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, v44, v45, v46, a15, a16, a17, a18);
}

uint64_t sub_23DEDB89C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_23DEEC878(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t dispatch thunk of PersistableDynamicOptionsProvider.fetchResults()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_11(a3);
  v10 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23DEDBA88;
  OUTLINED_FUNCTION_9_7();

  return v8();
}

uint64_t sub_23DEDBA88()
{
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  *(v0 + 88) = sub_23DEDB320;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_5_9()
{
  v8 = v0[51];
  v9 = v0[52];
  v1 = v0[49];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[35];
  v6 = v0[36];
}

uint64_t OUTLINED_FUNCTION_7_8()
{
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[40];
  v3 = v0[41];
  v5 = *(v0[46] + 8);
  return v0[47];
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  v1 = v0[47];
  v2 = v0[45];
  v4 = v0[41];
  v3 = v0[42];
  result = v0[37];
  v6 = v0[38];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return swift_getAssociatedConformanceWitness();
}

id OUTLINED_FUNCTION_17_9(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{
  *(v3 + 456) = a1;

  return sub_23DE7E040(v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return swift_getAssociatedTypeWitness();
}

id sub_23DEDBD0C()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFAlertAction");
  *(inited + 54) = -4864;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v140 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v139 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v138 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = v3;
  v22 = v7;
  v23 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v24 = v19;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v26 = [v140 bundleURL];
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v28 = v22;
  v29 = v21;
  sub_23DE477A0();
  v30 = v139;
  *(v20 + 64) = v139;
  *(v20 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v32 = sub_23E1FDABC();
  v33 = v138;
  *(inited + 120) = sub_23DF3BE54(v32);
  v34 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v33;
  *(inited + 152) = v34;
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x800000023E2558B0;
  v35 = *MEMORY[0x277D7CB60];
  v36 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v35;
  *(inited + 200) = 0x6F646E697763616DLL;
  *(inited + 208) = 0xE900000000000077;
  v37 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v36;
  *(inited + 232) = v37;
  v38 = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  v39 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v38;
  *(inited + 272) = v39;
  v40 = v34;
  v41 = v35;
  v42 = v37;
  v43 = v39;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v122 = v28;
  sub_23E1FC14C();
  v44 = [v140 bundleURL];
  sub_23E1FBF9C();

  v45 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 280) = v46;
  v47 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v30;
  *(inited + 312) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_23E224C00;
  v137 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v48 = swift_initStackObject();
  v126 = xmmword_23E224710;
  *(v48 + 16) = xmmword_23E224710;
  v49 = *MEMORY[0x277D7CDF8];
  v125 = 0x800000023E24EAF0;
  *(v48 + 32) = v49;
  *(v48 + 40) = 0xD000000000000014;
  *(v48 + 48) = 0x800000023E24EAF0;
  v50 = *MEMORY[0x277D7CE20];
  v51 = MEMORY[0x277D837D0];
  *(v48 + 64) = MEMORY[0x277D837D0];
  *(v48 + 72) = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v138 = v52;
  *(v48 + 80) = &unk_2850249B8;
  v53 = *MEMORY[0x277D7CE70];
  *(v48 + 104) = v52;
  *(v48 + 112) = v53;
  *(v48 + 120) = 0xD000000000000012;
  *(v48 + 128) = 0x800000023E255D20;
  v54 = *MEMORY[0x277D7CE80];
  *(v48 + 144) = v51;
  *(v48 + 152) = v54;
  v55 = v49;
  v56 = v50;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  v62 = v58;
  v130 = v59;
  v132 = v60;
  v131 = v61;
  v133 = v62;
  v63 = v47;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v64 = [v140 bundleURL];
  sub_23E1FBF9C();

  v65 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v66 = v29;
  sub_23DE477A0();
  *(v48 + 160) = v67;
  v68 = *MEMORY[0x277D7CEA8];
  v69 = v139;
  *(v48 + 184) = v139;
  *(v48 + 192) = v68;
  v124 = v68;
  v129 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v70 = [v140 bundleURL];
  v136 = v66;
  sub_23E1FBF9C();

  v71 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v48 + 224) = v69;
  *(v48 + 200) = v72;
  _s3__C3KeyVMa_0(0);
  v129 = v73;
  v128 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v74 = sub_23E1FDABC();
  v75 = sub_23DF3BE9C(v74);
  *(v135 + 32) = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_23E224700;
  *(v76 + 32) = v130;
  *(v76 + 40) = 0xD000000000000014;
  *(v76 + 48) = v125;
  v77 = *MEMORY[0x277D7CE00];
  *(v76 + 64) = MEMORY[0x277D837D0];
  *(v76 + 72) = v77;
  v125 = v77;
  v123 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v78 = v140;
  v79 = [v140 bundleURL];
  sub_23E1FBF9C();

  v80 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v76 + 80) = v81;
  v82 = v132;
  *(v76 + 104) = v139;
  *(v76 + 112) = v82;
  *(v76 + 120) = &unk_2850249E8;
  v83 = v131;
  *(v76 + 144) = v138;
  *(v76 + 152) = v83;
  *(v76 + 160) = 0xD000000000000014;
  *(v76 + 168) = 0x800000023E255DD0;
  v84 = v133;
  *(v76 + 184) = MEMORY[0x277D837D0];
  *(v76 + 192) = v84;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v123 = inited;
  sub_23E1FC14C();
  v85 = [v78 bundleURL];
  sub_23E1FBF9C();

  v86 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v76 + 200) = v87;
  v88 = *MEMORY[0x277D7CE98];
  v89 = v139;
  *(v76 + 224) = v139;
  *(v76 + 232) = v88;
  *(v76 + 240) = 1;
  v90 = v124;
  *(v76 + 264) = MEMORY[0x277D839B0];
  *(v76 + 272) = v90;
  v91 = v88;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v92 = [v78 bundleURL];
  sub_23E1FBF9C();

  v93 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v76 + 304) = v89;
  *(v76 + 280) = v94;
  v95 = sub_23E1FDABC();
  v96 = sub_23DF3BE9C(v95);
  v97 = v135;
  *(v135 + 40) = v96;
  v98 = swift_initStackObject();
  *(v98 + 16) = v126;
  *(v98 + 32) = v130;
  *(v98 + 40) = 0xD000000000000011;
  *(v98 + 48) = 0x800000023E250E40;
  v99 = MEMORY[0x277D837D0];
  v100 = v125;
  *(v98 + 64) = MEMORY[0x277D837D0];
  *(v98 + 72) = v100;
  *(v98 + 80) = 1;
  v101 = v132;
  *(v98 + 104) = MEMORY[0x277D839B0];
  *(v98 + 112) = v101;
  *(v98 + 120) = &unk_285024A18;
  v102 = v131;
  *(v98 + 144) = v138;
  *(v98 + 152) = v102;
  *(v98 + 160) = 0xD00000000000001ELL;
  *(v98 + 168) = 0x800000023E255E60;
  v103 = v133;
  *(v98 + 184) = v99;
  *(v98 + 192) = v103;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v104 = [v140 bundleURL];
  sub_23E1FBF9C();

  v105 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v98 + 224) = v139;
  *(v98 + 200) = v106;
  v107 = sub_23E1FDABC();
  *(v97 + 48) = sub_23DF3BE9C(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v109 = v123;
  *(v123 + 320) = v97;
  v110 = *MEMORY[0x277D7CB98];
  v109[43] = v108;
  v109[44] = v110;
  v111 = v110;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v112 = [v140 bundleURL];
  sub_23E1FBF9C();

  v113 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v115 = v114;
  v116 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v117 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v109[45] = v116;
  v118 = *MEMORY[0x277D7CF20];
  v109[48] = v117;
  v109[49] = v118;
  v109[53] = v138;
  v109[50] = &unk_285024A48;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v119 = v118;
  v120 = sub_23E1FDABC();
  return sub_23DF3BF9C(v120);
}

ActionKit::PhysicalActivity __swiftcall PhysicalActivity.init(motionActivity:)(CMMotionActivity motionActivity)
{
  isa = motionActivity.super.super.isa;
  v3 = v1;
  v4 = sub_23E1FD03C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(objc_class *)isa walking])
  {

    v10 = 2;
  }

  else if ([(objc_class *)isa running])
  {

    v10 = 3;
  }

  else if ([(objc_class *)isa cycling])
  {

    v10 = 4;
  }

  else
  {
    v11 = [(objc_class *)isa automotive];
    v12 = [(objc_class *)isa stationary];
    v13 = v12;
    if (v11)
    {

      if (v13)
      {
        v10 = 5;
      }

      else
      {
        v10 = 6;
      }
    }

    else if (v12)
    {

      v10 = 1;
    }

    else if (CMMotionActivity.isEmpty.getter())
    {

      v10 = 7;
    }

    else
    {
      v14 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      v15 = isa;
      v16 = sub_23E1FD02C();
      v17 = sub_23E1FE1AC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        v20 = CMMotionActivity.debugString.getter();
        v22 = sub_23DE56B40(v20, v21, &v25);
        v24 = v15;
        v23 = v22;

        *(v18 + 4) = v23;
        _os_log_impl(&dword_23DE30000, v16, v17, "Received %s, returning .unknown", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x23EF074C0](v19, -1, -1);
        MEMORY[0x23EF074C0](v18, -1, -1);
      }

      else
      {
      }

      result = (*(v5 + 8))(v8, v4);
      v10 = 0;
    }
  }

  *v3 = v10;
  return result;
}

uint64_t sub_23DEDCEB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v70 = v57 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v57 - v5;
  v7 = sub_23E1FC1DC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E1FBEEC();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23E1FDBCC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_23E1FBF0C();
  v19 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D380, &qword_23E228C78);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D388, &unk_23E228C80);
  v21 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v69 = *(*(v20 - 8) + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23E224420;
  v23 = v22 + v21;
  v66 = v20;
  v58 = *(v20 + 48);
  v59 = v22;
  *(v22 + v21) = 0;
  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v11, qword_280DB7710);
  v65 = *(v72 + 16);
  v72 += 16;
  v65(v14, v24, v11);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v71);
  v68 = sub_23E1FB75C();
  v25 = v70;
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v68);
  sub_23E1FB76C();
  v26 = v23;
  v62 = v23;
  v64 = v11;
  v58 = *(v66 + 48);
  *(v23 + v69) = 1;
  sub_23E1FDB5C();
  v63 = v24;
  v27 = v11;
  v28 = v65;
  v65(v14, v24, v27);
  v67 = v10;
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v71);
  v29 = v68;
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v68);
  sub_23E1FB76C();
  v30 = v69;
  v31 = (v26 + 2 * v69);
  v32 = v66;
  v33 = *(v66 + 48);
  v57[1] = v31;
  v58 = v33;
  *v31 = 2;
  sub_23E1FDB5C();
  v34 = v24;
  v35 = v28;
  v28(v14, v34, v64);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v61 = v6;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v71);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v29);
  sub_23E1FB76C();
  v36 = v62;
  v58 = *(v32 + 48);
  *(v62 + 3 * v30) = 3;
  v60 = v18;
  sub_23E1FDB5C();
  v38 = v63;
  v37 = v64;
  v35(v14, v63, v64);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v39 = v71;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v71);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v68);
  sub_23E1FB76C();
  v40 = v66;
  v58 = *(v66 + 48);
  *(v36 + 4 * v69) = 4;
  sub_23E1FDB5C();
  v41 = v38;
  v42 = v37;
  v43 = v65;
  v65(v14, v41, v37);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v39);
  v44 = v68;
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v68);
  sub_23E1FB76C();
  v45 = v69;
  v46 = v62;
  v58 = *(v40 + 48);
  *(v62 + 5 * v69) = 5;
  sub_23E1FDB5C();
  v47 = v63;
  v43(v14, v63, v42);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v48 = v61;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v71);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v44);
  sub_23E1FB76C();
  v49 = (v46 + 6 * v45);
  v50 = v66;
  v58 = *(v66 + 48);
  *v49 = 6;
  sub_23E1FDB5C();
  v51 = v47;
  v52 = v64;
  v65(v14, v51, v64);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v53 = v71;
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v71);
  v54 = v70;
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v68);
  sub_23E1FB76C();
  v55 = *(v50 + 48);
  *(v62 - v69 + 8 * v69) = 7;
  sub_23E1FDB5C();
  v65(v14, v63, v52);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v53);
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v68);
  sub_23E1FB76C();
  sub_23E1FB77C();
  sub_23DEDE8A0();
  result = sub_23E1FDABC();
  qword_27E32D348 = result;
  return result;
}

uint64_t *sub_23DEDD9A4()
{
  if (qword_27E32B958 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  return &qword_27E32D348;
}

uint64_t static PhysicalActivity.caseDisplayRepresentations.getter()
{
  if (qword_27E32B958 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  swift_beginAccess();
  return sub_23E1FB7BC();
}

uint64_t static PhysicalActivity.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27E32B958 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  swift_beginAccess();
  qword_27E32D348 = a1;
}

uint64_t (*static PhysicalActivity.caseDisplayRepresentations.modify())()
{
  if (qword_27E32B958 != -1)
  {
    OUTLINED_FUNCTION_1_16();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_23DEDDB34@<X0>(void *a1@<X8>)
{
  sub_23DEDD9A4();
  swift_beginAccess();
  *a1 = qword_27E32D348;
  return sub_23E1FB7BC();
}

uint64_t sub_23DEDDB88(uint64_t *a1)
{
  v1 = *a1;
  sub_23E1FB7BC();
  sub_23DEDD9A4();
  swift_beginAccess();
  qword_27E32D348 = v1;
}

uint64_t sub_23DEDDBE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18[-v2];
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23E1FBEEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_23E1FDBCC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_23E1FBF0C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v15, qword_27E32D350);
  __swift_project_value_buffer(v15, qword_27E32D350);
  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280DB7710);
  (*(v7 + 16))(v10, v16, v6);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  return sub_23E1FB8EC();
}

uint64_t sub_23DEDDED0()
{
  if (qword_27E32B960 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v0 = sub_23E1FB8FC();

  return __swift_project_value_buffer(v0, qword_27E32D350);
}

uint64_t static PhysicalActivity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B960 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32D350);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static PhysicalActivity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27E32B960 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32D350);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PhysicalActivity.typeDisplayRepresentation.modify())()
{
  if (qword_27E32B960 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v0 = sub_23E1FB8FC();
  __swift_project_value_buffer(v0, qword_27E32D350);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23DEDE13C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DEDDED0();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEDE1B8(uint64_t a1)
{
  v2 = sub_23DEDDED0();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

ActionKit::PhysicalActivity_optional __swiftcall PhysicalActivity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E1FE6EC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PhysicalActivity.rawValue.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      return 0x616E6F6974617453;
    case 2:
      v2 = 1802264919;
      goto LABEL_6;
    case 3:
      v2 = 1852732754;
      goto LABEL_6;
    case 4:
      v2 = 1818458435;
LABEL_6:
      result = v2 | 0x676E6900000000;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x676E69766F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23DEDE3A4@<X0>(uint64_t *a1@<X8>)
{
  result = PhysicalActivity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEDE3E0(uint64_t a1)
{
  v2 = sub_23DEDE798();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_23DEDE430(uint64_t a1)
{
  v2 = sub_23DEDE6F4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DEDE480()
{
  result = qword_280DAE9C8;
  if (!qword_280DAE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9C8);
  }

  return result;
}

unint64_t sub_23DEDE4D8()
{
  result = qword_280DAEA08;
  if (!qword_280DAEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA08);
  }

  return result;
}

unint64_t sub_23DEDE530()
{
  result = qword_280DAE9E0;
  if (!qword_280DAE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9E0);
  }

  return result;
}

unint64_t sub_23DEDE588()
{
  result = qword_280DAE9C0;
  if (!qword_280DAE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9C0);
  }

  return result;
}

unint64_t sub_23DEDE5E0()
{
  result = qword_27E32D368;
  if (!qword_27E32D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D370, &qword_23E228A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D368);
  }

  return result;
}

unint64_t sub_23DEDE648()
{
  result = qword_280DAE9F0;
  if (!qword_280DAE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9F0);
  }

  return result;
}

unint64_t sub_23DEDE69C()
{
  result = qword_280DAE9E8;
  if (!qword_280DAE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9E8);
  }

  return result;
}

unint64_t sub_23DEDE6F4()
{
  result = qword_280DAE9F8;
  if (!qword_280DAE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9F8);
  }

  return result;
}

unint64_t sub_23DEDE798()
{
  result = qword_27E32D378;
  if (!qword_27E32D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D378);
  }

  return result;
}

unint64_t sub_23DEDE7F0()
{
  result = qword_280DAE9D8;
  if (!qword_280DAE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9D8);
  }

  return result;
}

unint64_t sub_23DEDE848()
{
  result = qword_280DAE9B8;
  if (!qword_280DAE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9B8);
  }

  return result;
}

unint64_t sub_23DEDE8A0()
{
  result = qword_280DAE9D0;
  if (!qword_280DAE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicalActivity(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PhysicalActivity(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return swift_once();
}

BOOL sub_23DEDEAA0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_23E1FB7BC();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_23DEDEB50()
{
  v30 = sub_23E1FDB4C();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FDBAC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v25 - v7;
  v8 = sub_23E1FBEEC();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23E1FC1DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_23E1FDBCC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v28 = sub_23E1FBF0C();
  v17 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v18 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v18, qword_27E32D390);
  v27 = __swift_project_value_buffer(v18, qword_27E32D390);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v9 + 104);
  v25 = v9 + 104;
  v20(v12, v19, v8);
  sub_23E1FBF1C();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v21 = v29;
  v22 = v30;
  (*(v0 + 104))(v29, *MEMORY[0x277CC9BD8], v30);
  sub_23E1FDB6C();
  (*(v0 + 8))(v21, v22);
  sub_23E1FDB8C();
  sub_23E1FDBBC();
  sub_23E1FC19C();
  v20(v12, v19, v26);
  v23 = v31;
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v28);
  return sub_23E1FB8EC();
}

uint64_t sub_23DEDEFD4()
{
  if (qword_27E32B968 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v0 = sub_23E1FB8FC();

  return __swift_project_value_buffer(v0, qword_27E32D390);
}

uint64_t static AppShortcutEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B968 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32D390);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AppShortcutEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27E32B968 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32D390);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AppShortcutEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27E32B968 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v0 = sub_23E1FB8FC();
  __swift_project_value_buffer(v0, qword_27E32D390);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23DEDF240@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DEDEFD4();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEDF2BC(uint64_t a1)
{
  v2 = sub_23DEDEFD4();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t AppShortcutEntity.id.getter()
{
  v1 = [*v0 id];
  v2 = sub_23E1FDC1C();

  return v2;
}

uint64_t AppShortcutEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v62 - v5;
  v70 = sub_23E1FBF0C();
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_15();
  v73 = v9 - v8;
  v10 = sub_23E1FDBAC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_15();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v72 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v62 - v16;
  v17 = sub_23E1FBFBC();
  v18 = OUTLINED_FUNCTION_6_0(v17);
  v65 = v19;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v62 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = sub_23E1FB75C();
  v31 = OUTLINED_FUNCTION_6_0(v30);
  v68 = v32;
  v69 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15();
  v37 = (v36 - v35);
  v38 = *v1;
  v39 = [*v1 shortTitle];
  v66 = sub_23E1FDC1C();
  v67 = v40;

  v41 = [v38 entityInfo];
  if (v41)
  {
    v42 = v41;
    v62 = v37;
    v63 = v6;
    v64 = a1;
    v37 = &off_278C24000;
    v43 = [v41 icon];
    v44 = [v43 imageURL];

    if (v44)
    {
      sub_23E1FBF9C();

      v45 = v65;
      (*(v65 + 32))(v29, v27, v17);
      (*(v45 + 16))(v24, v29, v17);
      OUTLINED_FUNCTION_9_8();
      sub_23E1FB72C();
      (*(v45 + 8))(v29, v17);
      v6 = v63;
    }

    else
    {
      sub_23DEE144C([v42 &selRef_JSONKeyPathsByPropertyKey], &selRef_systemName);
      if (v50)
      {
        OUTLINED_FUNCTION_9_8();
        sub_23E1FB71C();
        v6 = v63;
      }

      else
      {
        sub_23DEE1304([v42 &selRef_JSONKeyPathsByPropertyKey]);
        v6 = v63;
        if (v51 >> 60 == 15)
        {
          v52 = [v38 underlyingAutoShortcut];
          v53 = [v52 systemImageName];

          sub_23E1FDC1C();
          OUTLINED_FUNCTION_9_8();
          sub_23E1FB71C();
        }

        else
        {
          OUTLINED_FUNCTION_9_8();
          sub_23E1FB73C();
        }
      }
    }

    v54 = [v42 subtitle];
    if (!v54)
    {

      v58 = 1;
      v57 = v71;
      goto LABEL_16;
    }

    v55 = v54;
    sub_23E1FDC1C();
    v49 = v56;
  }

  else
  {
    v46 = [v38 underlyingAutoShortcut];
    v47 = [v46 systemImageName];

    sub_23E1FDC1C();
    sub_23E1FB71C();
    sub_23DEE144C([v38 underlyingAutoShortcut], &selRef_localizedAutoShortcutDescription);
    v49 = v48;
  }

  v57 = v71;
  if (v49)
  {
    sub_23E1FB7BC();
    sub_23E1FDB9C();
    OUTLINED_FUNCTION_11_9();
    sub_23E1FDB7C();
    OUTLINED_FUNCTION_11_9();
    sub_23E1FBEFC();
    swift_bridgeObjectRelease_n();
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

LABEL_16:
  __swift_storeEnumTagSinglePayload(v57, v58, 1, v70);
  sub_23E1FDB9C();
  OUTLINED_FUNCTION_11_9();
  sub_23E1FDB7C();

  OUTLINED_FUNCTION_11_9();
  sub_23E1FBEFC();
  sub_23DEE1374(v57, v72);
  v60 = v68;
  v59 = v69;
  (*(v68 + 16))(v6, v37, v69);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v59);
  sub_23E1FB76C();
  sub_23DEE13E4(v57);
  return (*(v60 + 8))(v37, v59);
}