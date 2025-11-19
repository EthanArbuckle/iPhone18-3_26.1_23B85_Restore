unint64_t sub_1C98B486C()
{
  result = qword_1EC3CB138;
  if (!qword_1EC3CB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB138);
  }

  return result;
}

void sub_1C98B48E4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v4 = a3[3];
  v6[2] = a3[2];
  v6[3] = v4;
  v5[2] = v6;
  sub_1C98B5494(a1, a2, sub_1C97E8400, v5);
}

void sub_1C98B4934(void *a1, uint64_t (*a2)(void *), void *a3)
{
  v63 = a3;
  v64 = a2;
  v59 = sub_1C97A2CEC(&qword_1EC3C6760);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v48 - v4;
  v58 = sub_1C97A2CEC(&qword_1EC3C8A20);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v48 - v5;
  v53 = sub_1C97A2CEC(&qword_1EC3CB140);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v48 - v6;
  v7 = sub_1C97A2CEC(&qword_1EC3C7528);
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = sub_1C97A2CEC(&qword_1EC3CB148);
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = sub_1C9A91748();
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  sub_1C97E82EC(a1, v67, &qword_1EC3CE610);
  LODWORD(v17) = 1182400512;
  v18 = [v16 initWithFloat_];
  v19 = v69;
  sub_1C999C710();
  if (v19)
  {
    sub_1C97DA1E0(a1, &qword_1EC3CE610);

    return;
  }

  v48 = v9;
  v49 = v7;
  v50 = v12;
  v51 = v10;
  v69 = v13;
  memcpy(__dst, a1, 0x41uLL);
  v20 = [v18 integerValue];

  __dst[9] = 1;
  __dst[10] = v20;
  v21 = v64(__dst);
  memcpy(v67, __dst, sizeof(v67));
  sub_1C97DA1E0(v67, &unk_1EC3C9940);
  v64 = v15;
  sub_1C9A91738();
  v65 = sub_1C98BF080();
  v22 = &unk_1C9A9C770;
  sub_1C97A2CEC(&unk_1EC3C7390);
  v23 = sub_1C97A2CEC(&qword_1EC3C7C80);
  sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
  v24 = v61;
  sub_1C9A91F68();

  v25 = a1[9];
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
    goto LABEL_10;
  }

  v28 = (v27 * 160) >> 64;
  v29 = 160 * v27;
  v22 = v60;
  v30 = v59;
  if (v28 != v29 >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = __OFADD__(v29, 512);
  v31 = v29 + 512;
  if (v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v32 = a1[10];
  v33 = (v32 * 160) >> 64;
  v34 = 160 * v32;
  if (v33 != v34 >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v63 = v21;
  *(v24 + *(v59 + 60)) = v31;
  *(v24 + *(v30 + 64)) = v34;
  *(v24 + *(v30 + 68)) = v23;
  sub_1C97A2CEC(&qword_1EC3C8A38);
  sub_1C97AE67C(&qword_1EC3C8A40, &qword_1EC3C6760);
  sub_1C9A91F68();
  sub_1C97DA1E0(v24, &qword_1EC3C6760);
  v23 = objc_autoreleasePoolPush();
  v21 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v35 = swift_allocObject();
  *(v35 + 16) = 34;
  LOWORD(v65) = 34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  *(&v48 - 4) = sub_1C9834EC4;
  *(&v48 - 3) = v36;
  *(&v48 - 2) = &v65;

  v37 = sub_1C97E2E88();

  objc_autoreleasePoolPop(v21);
  objc_autoreleasePoolPop(v23);
  v38 = v56;
  v39 = v62;
  sub_1C98B32F4(v37, &off_1F4937390);
  (*(v57 + 8))(v39, v58);

  sub_1C97AE67C(&qword_1EC3CB150, &qword_1EC3CB140);
  v40 = v48;
  v41 = v53;
  sub_1C9A91F68();
  (*(v52 + 8))(v38, v41);
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1C9A935B8();

  v65 = 0xD000000000000019;
  v66 = 0x80000001C9AD7EB0;
  sub_1C97AE3DC();
  v42 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v42);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v43 = v50;
  sub_1C97DCAC0();

  (*(v54 + 8))(v40, v49);
  sub_1C97AE67C(&qword_1EC3CB158, &qword_1EC3CB148);
  v44 = v51;
  v45 = sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CB160);
  swift_allocObject();
  v46 = sub_1C98E3778(v45);
  (*(v55 + 8))(v43, v44);
  v65 = v46;
  sub_1C97AE67C(&qword_1EC3CB168, &qword_1EC3CB160);
  v47 = sub_1C9A91F28();

  (v22)[1](v64, v69);
  type metadata accessor for SharedSoundPrintK.Instance();
  *(swift_allocObject() + 16) = v47;
}

void sub_1C98B5494(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v66 = a4;
  v69 = a3;
  v61 = a2;
  v63 = a1;
  v62 = sub_1C97A2CEC(&qword_1EC3C6760);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v48 - v5;
  v6 = sub_1C97A2CEC(&qword_1EC3C8A20);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v48 - v7;
  v8 = sub_1C97A2CEC(&qword_1EC3CB140);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v48 - v9;
  v10 = sub_1C97A2CEC(&qword_1EC3C7528);
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CB148);
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = sub_1C9A91748();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v21) = 1182400512;
  v22 = [v20 initWithFloat_];
  sub_1C999C710();
  if (v4)
  {

    return;
  }

  v48 = v12;
  v49 = v10;
  v50 = v15;
  v51 = v13;
  v52 = v17;
  v53 = v16;
  v23 = [v22 integerValue];

  v67 = 1;
  v68 = v23;
  v69(&v67);
  sub_1C9A91738();
  v67 = sub_1C98BF080();
  sub_1C97A2CEC(&unk_1EC3C7390);
  v24 = sub_1C97A2CEC(&qword_1EC3C7C80);
  sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
  v25 = v64;
  sub_1C9A91F68();

  v26 = v63 - 1;
  if (__OFSUB__(v63, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v27 = (v26 * 160) >> 64;
  v28 = 160 * v26;
  v29 = v61;
  v30 = v62;
  if (v27 != v28 >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v31 = __OFADD__(v28, 512);
  v32 = v28 + 512;
  if (v31)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v61 * 160) >> 64 != (160 * v61) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *&v25[*(v62 + 60)] = v32;
  *&v25[*(v30 + 64)] = 160 * v29;
  *&v25[*(v30 + 68)] = v24;
  sub_1C97A2CEC(&qword_1EC3C8A38);
  sub_1C97AE67C(&qword_1EC3C8A40, &qword_1EC3C6760);
  sub_1C9A91F68();
  sub_1C97DA1E0(v25, &qword_1EC3C6760);
  v69 = objc_autoreleasePoolPush();
  v25 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v33 = swift_allocObject();
  *(v33 + 16) = 34;
  LOWORD(v67) = 34;
  v34 = MEMORY[0x1EEE9AC00](v33);
  *(&v48 - 4) = sub_1C98351CC;
  *(&v48 - 3) = v34;
  *(&v48 - 2) = &v67;

  v35 = sub_1C97E2E88();
  v36 = v53;
  v37 = v35;

  objc_autoreleasePoolPop(v25);
  objc_autoreleasePoolPop(v69);
  v38 = v58;
  v39 = v65;
  sub_1C98B32F4(v37, &off_1F4937390);
  (*(v59 + 8))(v39, v60);

  sub_1C97AE67C(&qword_1EC3CB150, &qword_1EC3CB140);
  v40 = v48;
  v41 = v55;
  sub_1C9A91F68();
  (*(v54 + 8))(v38, v41);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1C9A935B8();

  v67 = 0xD000000000000019;
  v68 = 0x80000001C9AD7EB0;
  sub_1C97AE3DC();
  v42 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v42);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v43 = v50;
  sub_1C97DCAC0();

  (*(v56 + 8))(v40, v49);
  sub_1C97AE67C(&qword_1EC3CB158, &qword_1EC3CB148);
  v44 = v51;
  v45 = sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CB160);
  swift_allocObject();
  v46 = sub_1C98E3778(v45);
  (*(v57 + 8))(v43, v44);
  v67 = v46;
  sub_1C97AE67C(&qword_1EC3CB168, &qword_1EC3CB160);
  v47 = sub_1C9A91F28();

  (*(v52 + 8))(v19, v36);
  type metadata accessor for SharedSoundPrintK.Instance();
  *(swift_allocObject() + 16) = v47;
}

void sub_1C98B5E40()
{
  sub_1C97AEB94();
  v107 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v102 = v10;
  v103 = v9;
  v12 = v11;
  v98 = sub_1C97A2CEC(&qword_1EC3C6760);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v100 = v14;
  sub_1C97A2CEC(&qword_1EC3C8A20);
  sub_1C97AE9C8();
  v95 = v16;
  v96 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v101 = v18;
  v87 = sub_1C97A2CEC(&qword_1EC3CB140);
  sub_1C97AE9C8();
  v86 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AC02C();
  v94 = v21;
  v90 = sub_1C97A2CEC(&qword_1EC3C7528);
  sub_1C97AE9C8();
  v89 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97AC02C();
  v88 = v24;
  sub_1C97A2CEC(&qword_1EC3CB148);
  sub_1C97AE9C8();
  v92 = v26;
  v93 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v91 = v28;
  v97 = sub_1C9A91748();
  sub_1C97AE9C8();
  v99 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AEAD8();
  sub_1C97AE9DC();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AEAD8();
  v36 = v35 - v34;
  v108 = v8;
  v109 = v6;
  v104 = v6;
  v105 = v4;
  v110 = v4;
  v111 = v2;
  v106 = v2;
  v37 = type metadata accessor for SharedReformattedAudioSource.Configuration();
  sub_1C97AE9C8();
  v39 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v85 - v41;
  v43 = sub_1C98B7774();
  v112 = v8;
  v44(v43);
  v45 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v46) = 1182400512;
  v47 = [v45 initWithFloat_];
  v48 = v107;
  sub_1C999C710();
  if (v48)
  {

    (*(v32 + 8))(v36, v8);
    goto LABEL_11;
  }

  v107 = v12;
  v49 = [v47 integerValue];

  sub_1C98BEFD0(v36, 1, v49, v8, v42);
  v50 = v103(v42);
  v103 = 0;
  (*(v39 + 8))(v42, v37);
  sub_1C9A91738();
  v51 = sub_1C98BF080();
  v108 = v51;
  sub_1C97A2CEC(&unk_1EC3C7390);
  v52 = sub_1C97A2CEC(&qword_1EC3C7C80);
  sub_1C97AE9EC();
  sub_1C97AE67C(v53, &unk_1EC3C7390);
  v54 = v100;
  sub_1C9A91F68();

  v108 = v112;
  v109 = v104;
  v110 = v105;
  v111 = v106;
  v55 = type metadata accessor for SharedSoundPrintK.Configuration();
  v56 = *&v107[*(v55 + 52)];
  v57 = __OFSUB__(v56, 1);
  v58 = v56 - 1;
  if (v57)
  {
    __break(1u);
    goto LABEL_13;
  }

  v59 = (v58 * 160) >> 64;
  v60 = 160 * v58;
  v61 = v98;
  if (v59 != v60 >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v57 = __OFADD__(v60, 512);
  v62 = v60 + 512;
  if (v57)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v63 = *&v107[*(v55 + 56)];
  v64 = (v63 * 160) >> 64;
  v65 = 160 * v63;
  if (v64 == v65 >> 63)
  {
    v107 = v50;
    *(v54 + *(v98 + 60)) = v62;
    *(v54 + *(v61 + 64)) = v65;
    *(v54 + *(v61 + 68)) = v52;
    sub_1C97A2CEC(&qword_1EC3C8A38);
    sub_1C97AE67C(&qword_1EC3C8A40, &qword_1EC3C6760);
    sub_1C9A91F68();
    sub_1C97DA1E0(v54, &qword_1EC3C6760);
    v50 = objc_autoreleasePoolPush();
    v51 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  swift_once();
LABEL_8:
  v66 = swift_allocObject();
  *(v66 + 16) = 34;
  LOWORD(v108) = 34;
  v67 = MEMORY[0x1EEE9AC00](v66);
  *(&v85 - 4) = sub_1C98351CC;
  *(&v85 - 3) = v67;
  *(&v85 - 2) = &v108;

  v68 = v103;
  v69 = sub_1C97E2E88();
  if (v68)
  {

    (*(v95 + 8))(v101, v96);
    objc_autoreleasePoolPop(v51);
    objc_autoreleasePoolPop(v50);

    v70 = sub_1C98B7710();
    v71(v70);
  }

  else
  {
    v72 = v69;

    objc_autoreleasePoolPop(v51);
    objc_autoreleasePoolPop(v50);
    v73 = v94;
    v74 = v101;
    sub_1C98B32F4(v72, &off_1F4937390);
    (*(v95 + 8))(v74, v96);

    sub_1C97AE67C(&qword_1EC3CB150, &qword_1EC3CB140);
    v75 = v88;
    v76 = v87;
    v103 = 0;
    sub_1C9A91F68();
    (*(v86 + 8))(v73, v76);
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_1C9A935B8();

    v108 = 0xD000000000000019;
    v109 = 0x80000001C9AD7EB0;
    sub_1C97AE3DC();
    v77 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v77);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v78 = v91;
    sub_1C97DCAC0();

    (*(v89 + 8))(v75, v90);
    sub_1C97AE67C(&qword_1EC3CB158, &qword_1EC3CB148);
    v79 = v93;
    v80 = sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3CB160);
    sub_1C97AA878();
    swift_allocObject();
    v81 = sub_1C98E3778(v80);
    (*(v92 + 8))(v78, v79);
    v108 = v81;
    sub_1C97AE67C(&qword_1EC3CB168, &qword_1EC3CB160);
    v82 = sub_1C9A91F28();

    v83 = sub_1C98B7710();
    v84(v83);
    type metadata accessor for SharedSoundPrintK.Instance();
    *(swift_allocObject() + 16) = v82;
  }

LABEL_11:
  sub_1C97AEB5C();
}

void sub_1C98B6918(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C8A78);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = sub_1C9A92478();
  v12 = [v10 featureValueForName_];

  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1C9A92FD8();

  v13 = sub_1C97A2CEC(&qword_1EC3C8A38);
  if (sub_1C97ABF20(v9, 1, v13) == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1C97AE67C(&qword_1EC3C8A70, &qword_1EC3C8A38);
  v14 = sub_1C9A91BC8();
  v15 = *(*(v13 - 8) + 8);
  v15(v9, v13);
  v16 = sub_1C9A92478();
  v17 = [v10 featureValueForName_];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1C9A92FD8();

  if (sub_1C97ABF20(v7, 1, v13) != 1)
  {
    v18 = sub_1C9A91BC8();
    v15(v7, v13);
    *a2 = v14;
    a2[1] = v18;
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1C98B6BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C8A38);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  sub_1C97A2CEC(&qword_1EC3C69E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v13 = sub_1C989A598();
  (*(v8 + 16))(v11, a1, v6);

  v14 = sub_1C9A92FE8();
  *(inited + 72) = v13;
  *(inited + 48) = v14;
  sub_1C9A92348();
  v15 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  return sub_1C98B6EC8();
}

uint64_t sub_1C98B6D2C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  a4();
  if (!v5)
  {
    a5 = a2();
    swift_unknownObjectRelease();
  }

  return a5;
}

void sub_1C98B6DA4()
{
  sub_1C97AEB48();
  swift_getWitnessTable();
  sub_1C98B772C();
}

id sub_1C98B6EC8()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1C9A922F8();

  v6[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1C98B6FB0@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int16 *)@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C97E44B0(*a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1C98B6FE4(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C98B48C0(__dst);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C98B70A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 24))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C98B711C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C00FC();
  *a1 = result;
  return result;
}

unint64_t sub_1C98B7154()
{
  result = qword_1EC3CB1B0;
  if (!qword_1EC3CB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB1B0);
  }

  return result;
}

uint64_t sub_1C98B71A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C9AA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C98B722C(uint64_t *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v8 = a2[3];
  v10[2] = a2[2];
  v10[3] = v8;
  sub_1C98B48E4(v5, v6, v10);
  if (!v3)
  {
    *a3 = v9;
  }
}

_BYTE *sub_1C98B729C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SharedSoundPrintK.Output.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C98B7448()
{
  result = qword_1EC3CB240;
  if (!qword_1EC3CB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB240);
  }

  return result;
}

unint64_t sub_1C98B74F4()
{
  result = qword_1EC3CB248;
  if (!qword_1EC3CB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB248);
  }

  return result;
}

unint64_t sub_1C98B754C()
{
  result = qword_1EC3CB250;
  if (!qword_1EC3CB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB250);
  }

  return result;
}

uint64_t sub_1C98B7600(unint64_t *a1)
{

  return sub_1C97AE67C(a1, v1);
}

uint64_t sub_1C98B762C()
{

  return swift_getWitnessTable();
}

void *sub_1C98B7658(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, __src, 0x58uLL);
}

uint64_t sub_1C98B7678()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C98B76A8()
{

  return sub_1C9A93A18();
}

uint64_t sub_1C98B76D4()
{
  v3 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v3;
  *(v1 - 32) = *(v0 + 32);

  return sub_1C9791040();
}

void sub_1C98B772C()
{

  sub_1C98B299C();
}

uint64_t sub_1C98B7750()
{

  return swift_getObjectType();
}

void sub_1C98B7780(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v9 = v6;
  if (*(a1 + 16) && (v9 = *a1, v8 == 1))
  {
    v10 = sub_1C9A92478();
    v11 = sub_1C98B7BF4();
    v13 = v12;

    if (v3)
    {
      return;
    }
  }

  else
  {
    v11 = *(v9 + 16);

    ObjectType = swift_getObjectType();
    v13 = &off_1F4937390;
    off_1F4937398(ObjectType, &off_1F4937390);
  }

  *&v42 = v7;
  *(&v42 + 1) = v6;
  LOBYTE(v43) = v8;
  v15 = sub_1C98B83D4(&v42, a2);
  if (v3)
  {
    swift_unknownObjectRelease();

    return;
  }

  v16 = v15;
  if ((~v15 & 0xF000000000000007) != 0)
  {
    v36 = v15;
    v37 = a3;
    if ((v15 & 0x8000000000000000) != 0)
    {
      v19 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = type metadata accessor for SNSoundPrintFeatureExtractorConfiguration();
      v18 = &off_1F494E2E0;
    }

    else
    {
      v17 = type metadata accessor for SNLogMelBasedFeatureExtractorConfiguration();
      v18 = &off_1F4934D10;
      v19 = v16;
    }

    *(&v39 + 1) = v17;
    *&v40 = v18;
    *&v38 = v19;
    sub_1C979B054(&v38, &v42);
    v22 = *(&v43 + 1);
    v23 = v44;
    sub_1C97A5A8C(&v42, *(&v43 + 1));
    v24 = *(v23 + 8);
    v25 = v19;
    v26 = v24(v22, v23);
    v27 = *(&v43 + 1);
    v28 = v44;
    sub_1C97A5A8C(&v42, *(&v43 + 1));
    v20 = (*(v28 + 16))(v27, v28);
    v29 = *(&v43 + 1);
    v30 = v44;
    sub_1C97A5A8C(&v42, *(&v43 + 1));
    LODWORD(v31) = (*(v30 + 24))(v29, v30);
    sub_1C97A592C(&v42);
    v16 = v36;
    a3 = v37;
    goto LABEL_20;
  }

  *&v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C98B854C(&v38);
  type metadata accessor for SNModelMetadataUtils();
  sub_1C9A3C0B0(v11, v13);
  v38 = v42;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  if (BYTE8(v43))
  {
    goto LABEL_17;
  }

  v20 = v39;
  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (DWORD1(v39))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (BYTE8(v38) & 1) != 0 || (BYTE8(v40))
  {
LABEL_17:

    sub_1C97A8E8C();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    sub_1C97F9CA8(&v38);
    swift_unknownObjectRelease();
    return;
  }

  v35 = v38;
  v31 = v40;
  sub_1C97F9CA8(&v38);
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (HIDWORD(v31))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v26 = v35;
LABEL_20:
  v32 = sub_1C9A92478();

  v33 = sub_1C9A924A8();
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v32;
  *(a3 + 24) = v33;
  *(a3 + 32) = v34;
  *(a3 + 40) = v26;
  *(a3 + 48) = v20;
  *(a3 + 52) = v31;
  *(a3 + 56) = v16;
}

uint64_t sub_1C98B7AF4(uint64_t result, unsigned int a2, unsigned int a3, double a4)
{
  if (a4 < 0.0 || a4 >= 1.0)
  {
    v5 = 0;
LABEL_11:
    sub_1C98B8770();
    swift_allocError();
    *v6 = v5;
    return swift_willThrow();
  }

  if (a2 - 1 >= result)
  {
    v5 = 1;
    goto LABEL_11;
  }

  if (!a3 || a2 % a3)
  {
    v5 = 2;
    goto LABEL_11;
  }

  v7 = result * a4;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v7 <= -1.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 >= 4294967300.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = result - v7;
  if (result < v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = v8 >= v8 % a3;
  v10 = v8 - v8 % a3;
  if (!v9)
  {
    goto LABEL_25;
  }

  if (v10 <= a2)
  {
    return a2;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1C98B7BF4()
{
  v2 = sub_1C9A924A8();
  v4 = sub_1C98C751C(v2, v3);
  if (v1)
  {
  }

  else
  {
    v5 = v4;

    v6 = objc_autoreleasePoolPush();
    v7 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      sub_1C9835338();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    MEMORY[0x1EEE9AC00](v8);

    v0 = sub_1C97E2E88();

    objc_autoreleasePoolPop(v7);
    objc_autoreleasePoolPop(v6);
  }

  return v0;
}

void sub_1C98B7D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v4 = 15360;
  }

  else
  {
    v4 = *(a3 + 16);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v4))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(a3 + 32);
  v7 = *(a3 + 40);
  v8 = sub_1C98B7AF4(v4, 1u, 1u, 0.5);
  if (v3)
  {
    return;
  }

  if (v7)
  {
    v6 = v8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (HIDWORD(v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  objc_allocWithZone(type metadata accessor for SNSoundPrintFeatureExtractorConfiguration());
  v9 = swift_unknownObjectRetain();
  if (!sub_1C9A1601C(v9, a2, v4, v6))
  {
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_1C98B7E70()
{
  sub_1C97A2CEC(&qword_1EC3CB260);
  sub_1C98B86EC();
  v0 = sub_1C9A92348();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C97EE774(sub_1C98B8740, 0, 0);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C97EE774(sub_1C98B8758, 0, 1);
  return v0;
}

uint64_t sub_1C98B7F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  result = sub_1C98B7AF4(15360, 0x140u, 0xA0u, 0.5);
  if (!v3)
  {
    if (v7)
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v6))
    {
      objc_allocWithZone(type metadata accessor for SNLogMelBasedFeatureExtractorConfiguration());
      v9 = swift_unknownObjectRetain();
      result = sub_1C9856FE4(v9, v5, v6);
      if (result)
      {
        *a3 = result;
        return result;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_1C98B7FEC(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1C98B7D94(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = v5 | 0x8000000000000000;
  }
}

void *(*sub_1C98B8028(char a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v2 = sub_1C98B7E70();
  v3 = sub_1C987825C(a1 & 1, v2);
  v5 = v4;

  if (v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    return sub_1C98B86D0;
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000037, 0x80000001C9AD7F30);
    sub_1C9A93728();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);

    return swift_willThrow();
  }
}

void *sub_1C98B8180(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *, uint64_t))
{
  v6[1] = a2;
  v6[0] = a1;
  result = a4(&v7, v6, a3);
  if (!v4)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1C98B81CC(char a1, _OWORD *a2, uint64_t a3)
{
  v7 = sub_1C98B8028(a1 & 1);
  if (!v3)
  {
    v8 = v7;
    if (a1)
    {
      v9 = 33;
    }

    else
    {
      v9 = 21;
    }

    v17 = objc_autoreleasePoolPush();
    v15 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      sub_1C9835338();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    LOBYTE(v16[0]) = v9;
    BYTE1(v16[0]) = a3;
    MEMORY[0x1EEE9AC00](v10);

    v11 = sub_1C97E2E88();

    objc_autoreleasePoolPop(v15);
    objc_autoreleasePoolPop(v17);
    v12 = a2[1];
    v16[0] = *a2;
    v16[1] = v12;
    v13 = a2[3];
    v16[2] = a2[2];
    v16[3] = v13;
    a3 = v8(v11, &off_1F4937390, v16);
  }

  return a3;
}

unint64_t sub_1C98B83D4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!*(a1 + 16))
  {
    v8 = v4 & 1;
    v12 = *(*(a1 + 8) + 16);

LABEL_7:
    v14 = &off_1F4937390;
    goto LABEL_8;
  }

  if (*(a1 + 16) != 1)
  {
    v12 = *(v4 + 16);

    v8 = 2;
    goto LABEL_7;
  }

  v5 = sub_1C9A92478();
  v6 = sub_1C98C6F38(v5);
  v8 = v7;
  v10 = v9;

  if (v2)
  {
    return v4;
  }

  v11 = sub_1C9A92478();
  v12 = sub_1C98B7BF4();
  v14 = v13;

LABEL_8:
  v15 = type metadata accessor for SNModelMetadataUtils();
  v16 = v14;
  v4 = v15;
  sub_1C9A3C0B0(v12, v16);
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = swift_unknownObjectRelease();
    sub_1C98B88F8(v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v27, *(&v27 + 1), v28, v29, v30);
    if (v8 == 2)
    {
      sub_1C97F9CA8(v26);
      return 0xF000000000000007;
    }

    else
    {
      v4 = sub_1C98B81CC(v8 & 1, &v27, a2);
      sub_1C97F9CA8(v26);
    }
  }

  return v4;
}

uint64_t sub_1C98B854C(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CB258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C98B85B4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SNModelMetadataUtils();
  sub_1C9A3C0B0(a1, a2);
  if (!v2)
  {
    sub_1C98B88F8(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_1C97F9CA8(&v15);
    if (BYTE1(v16) == 2)
    {
      type metadata accessor for SNError();
      sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000003ALL, 0x80000001C9AD7F70);
      swift_willThrow();
    }

    else
    {
      v13 = type metadata accessor for SNMLModelHashableUncodableWrapper();
      ObjectType = swift_getObjectType();
      sub_1C9889FB4(a1, v13, ObjectType, a2);
      swift_unknownObjectRetain();
    }
  }
}

unint64_t sub_1C98B86EC()
{
  result = qword_1EC3C55B0;
  if (!qword_1EC3C55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C55B0);
  }

  return result;
}

unint64_t sub_1C98B8770()
{
  result = qword_1EC3CB268;
  if (!qword_1EC3CB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB268);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSoundDetectionUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C98B88A4()
{
  result = qword_1EC3CB270;
  if (!qword_1EC3CB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB270);
  }

  return result;
}

uint64_t sub_1C98B890C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C97A2CEC(&qword_1EC3CB2A8);
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = *(v6 + 56);
  v10 = sub_1C9A91978();
  v11 = *(v10 - 8);
  v12 = v11[2];
  v12(v8, v2, v10);
  v12(&v8[v9], a1, v10);
  v13 = v11[11];
  v14 = sub_1C97CB094();
  v15 = v13(v14);
  if (v15 == *MEMORY[0x1E69AD928] || v15 == *MEMORY[0x1E69AD8A8] || v15 == *MEMORY[0x1E69AD828] || v15 == *MEMORY[0x1E69AD820] || v15 == *MEMORY[0x1E69AD840] || v15 == *MEMORY[0x1E69AD8D0] || v15 == *MEMORY[0x1E69AD918] || v15 == *MEMORY[0x1E69AD940] || v15 == *MEMORY[0x1E69AD920] || v15 == *MEMORY[0x1E69AD868] || v15 == *MEMORY[0x1E69AD8F8] || v15 == *MEMORY[0x1E69AD900] || v15 == *MEMORY[0x1E69AD848] || v15 == *MEMORY[0x1E69AD898] || v15 == *MEMORY[0x1E69AD958] || v15 == *MEMORY[0x1E69AD8D8] || v15 == *MEMORY[0x1E69AD8F0] || v15 == *MEMORY[0x1E69AD930] || v15 == *MEMORY[0x1E69AD858] || v15 == *MEMORY[0x1E69AD908] || v15 == *MEMORY[0x1E69AD948] || v15 == *MEMORY[0x1E69AD870] || v15 == *MEMORY[0x1E69AD8C8] || v15 == *MEMORY[0x1E69AD838] || v15 == *MEMORY[0x1E69AD810] || v15 == *MEMORY[0x1E69AD8E0] || v15 == *MEMORY[0x1E69AD8B0] || v15 == *MEMORY[0x1E69AD8B8] || v15 == *MEMORY[0x1E69AD830] || v15 == *MEMORY[0x1E69AD8C0] || v15 == *MEMORY[0x1E69AD8A0] || v15 == *MEMORY[0x1E69AD938] || v15 == *MEMORY[0x1E69AD860] || v15 == *MEMORY[0x1E69AD888] || v15 == *MEMORY[0x1E69AD880] || v15 == *MEMORY[0x1E69AD878] || v15 == *MEMORY[0x1E69AD818] || v15 == *MEMORY[0x1E69AD850] || v15 == *MEMORY[0x1E69AD910] || v15 == *MEMORY[0x1E69AD950] || v15 == *MEMORY[0x1E69AD890] || v15 == *MEMORY[0x1E69AD8E8])
  {
    if ((v13)(&v8[v9], v10) == v15)
    {
      v16 = v11[1];
      v16(&v8[v9], v10);
      v17 = sub_1C97CB094();
      (v16)(v17);
      return 1;
    }

    v19 = v11[1];
    v20 = sub_1C97CB094();
    v19(v20);
    (v19)(&v8[v9], v10);
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v21 = sub_1C9A91B58();
    sub_1C97BFF6C(v21, qword_1EC3D3108);
    v22 = sub_1C9A92FA8();
    v23 = sub_1C9A91B38();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C9788000, v23, v22, "Unexpected neural network layer kind", v24, 2u);
      MEMORY[0x1CCA93280](v24, -1, -1);
    }

    sub_1C97DA1E0(v8, &qword_1EC3CB2A8);
  }

  return 0;
}

void sub_1C98B8EA8()
{
  sub_1C97AEB94();
  v3 = v2;
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  sub_1C98BBBF0();
  sub_1C9A91A68();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  (*(v6 + 16))(v1, v3, v4);
  sub_1C9A91A28();
  (*(v6 + 8))(v3, v4);
  if (!v0)
  {
    v9 = sub_1C98BBC00();
    v10(v9);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98B9028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v52 = sub_1C9A91838();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v8 = sub_1C97A2CEC(&qword_1EC3CB2C0);
  sub_1C97DACE4(v8);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = sub_1C9A919F8();
  sub_1C97AE9C8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AEAD8();
  v18 = v17 - v16;
  result = sub_1C9A91A58();
  v56 = *(result + 16);
  if (v56)
  {
    v47 = a3;
    v20 = 0;
    v54 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v53 = v14 + 16;
    v51 = v6 + 88;
    v50 = *MEMORY[0x1E69AD808];
    v48 = v6 + 96;
    v49 = v6 + 8;
    v55 = a2;
    while (1)
    {
      if (v20 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v21 = result;
      (*(v14 + 16))(v18, v54 + *(v14 + 72) * v20, v12);
      if (sub_1C9A919D8() == v57 && v22 == a2)
      {
      }

      else
      {
        v24 = sub_1C9A93B18();

        if ((v24 & 1) == 0)
        {
          v25 = sub_1C98BBC80();
          v26(v25);
          a2 = v55;
          goto LABEL_16;
        }
      }

      sub_1C9A919E8();
      v27 = sub_1C98BBC80();
      v28(v27);
      v29 = sub_1C98BBAF0();
      v31 = v30(v29);
      if (v31 == v50)
      {
        v32 = sub_1C98BBAF0();
        v33(v32);
        v34 = sub_1C9A91828();
        sub_1C97DA940();
        v35 = sub_1C97A7890();
        v36(v35);
        sub_1C9855128();
        sub_1C97ACC50(v37, v38, v39, v34);
      }

      else
      {
        v34 = sub_1C9A91828();
        sub_1C97ACC50(v11, 1, 1, v34);
        v40 = sub_1C98BBAF0();
        v41(v40);
      }

      a2 = v55;
      sub_1C9A91828();
      if (sub_1C97ABF20(v11, 1, v34) != 1)
      {

        (*(*(v34 - 8) + 32))(v47, v11, v34);
        sub_1C9855128();
        v42 = v34;
        return sub_1C97ACC50(v43, v44, v45, v42);
      }

      sub_1C97DA1E0(v11, &qword_1EC3CB2C0);
LABEL_16:
      ++v20;
      result = v21;
      if (v56 == v20)
      {

        a3 = v47;
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v42 = sub_1C9A91828();
  v43 = a3;
  v44 = 1;
  v45 = 1;
  return sub_1C97ACC50(v43, v44, v45, v42);
}

uint64_t sub_1C98B9418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v199 = a4;
  v202 = a2;
  v203 = a3;
  v170 = a5;
  v200 = sub_1C9A91A68();
  sub_1C97AE9C8();
  v190 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v197 = v10 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3CB290);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v185 = v13;
  v14 = sub_1C97A2CEC(&qword_1EC3CB298);
  v15 = sub_1C97DACE4(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98435A0();
  sub_1C98BBBD0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97ABFC0();
  v201 = v17;
  v18 = sub_1C97A2CEC(&qword_1EC3CB2A0);
  sub_1C97DACE4(v18);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AC02C();
  v169 = v20;
  sub_1C98BBB00();
  v180 = sub_1C9A919C8();
  sub_1C97AE9C8();
  v160 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97ABFC0();
  v178 = v24;
  sub_1C98BBB00();
  v171 = sub_1C9A91888();
  sub_1C97AE9C8();
  v172 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AEAD8();
  v179 = v28 - v27;
  sub_1C98BBB00();
  v192 = sub_1C9A91978();
  sub_1C97AE9C8();
  v176 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97ABF90();
  v191 = v31;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97ABFC0();
  v181 = v33;
  v34 = sub_1C97A2CEC(&unk_1EC3CE660);
  v35 = sub_1C97DACE4(v34);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97ABF90();
  v194 = v36;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97ABFC0();
  v193 = v40;
  sub_1C98BBB00();
  v41 = sub_1C9A919A8();
  sub_1C97AE9C8();
  v195 = v42;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v157 - v48;
  v167 = sub_1C9A91A18();
  sub_1C97AE9C8();
  v198 = v50;
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AEAD8();
  v54 = v53 - v52;
  v55 = sub_1C9A91A78();
  sub_1C97AE9C8();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  sub_1C98435A0();
  v61 = v59 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = v157 - v63;
  sub_1C9A91A48();
  v65 = *(v57 + 16);
  v166 = v64;
  v65(v61, v64, v55);
  v66 = sub_1C98BBB68();
  v77 = v67(v66) == *MEMORY[0x1E69AD960];
  v164 = v55;
  v163 = v57;
  if (!v77)
  {
    v123 = sub_1C98BBB68();
    v124(v123);
    sub_1C98BBC10();
    goto LABEL_29;
  }

  v157[1] = a1;
  v68 = sub_1C98BBB68();
  v69(v68);
  v70 = v198;
  (*(v198 + 32))(v54, v61, v167);
  result = sub_1C9A91A08();
  v72 = v171;
  v73 = v54;
  v74 = result;
  v189 = *(result + 16);
  if (!v189)
  {
LABEL_28:

    (*(v70 + 8))(v73, v167);
    sub_1C98BBC10();
    v55 = v164;
    v57 = v163;
LABEL_29:
    result = sub_1C9A91A38();
    v198 = result;
    v125 = *(result + 16);
    v126 = v201;
    if (v125 == 1)
    {
      (*(v57 + 8))(v166, v55);

      v127 = 1;
    }

    else
    {
      v128 = 0;
      v196 = (v190 + 16);
      v49 = (v190 + 32);
      v129 = (v190 + 8);
      while (1)
      {
        if (v128 == v125)
        {
          v130 = 1;
          v128 = v125;
        }

        else
        {
          if ((v128 & 0x8000000000000000) != 0)
          {
            goto LABEL_50;
          }

          if (v128 >= *(v198 + 16))
          {
            goto LABEL_51;
          }

          v131 = v190;
          v132 = v198 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v128;
          v133 = *(v11 + 48);
          v134 = v185;
          *v185 = v128;
          (*(v131 + 16))(&v134[v133], v132, v200);
          v135 = v134;
          v126 = v201;
          sub_1C98BB7B8(v135, v5, &qword_1EC3CB290);
          v130 = 0;
          ++v128;
        }

        sub_1C97ACC50(v5, v130, 1, v11);
        sub_1C98BB7B8(v5, v126, &qword_1EC3CB298);
        v136 = sub_1C98BBCA0();
        if (sub_1C97ABF20(v136, v137, v11) == 1)
        {
          break;
        }

        v138 = v5;
        v139 = *v126;
        v140 = v11;
        v141 = v126 + *(v11 + 48);
        v142 = v197;
        v143 = v200;
        (*v49)(v197, v141, v200);
        if (v139)
        {
          v144 = v194;
          sub_1C98B9418(v142, v202, v203, v199);
          (*v129)(v142, v143);
          sub_1C98BBB94(v144);
          if (!v77)
          {
            v147 = sub_1C98BBAD0();
            v148(v147);

            v149 = *(v195 + 32);
            (v149)(v157[2], v144, v41);
            sub_1C98BBC10();
            v150 = sub_1C97E89F0();
            v149(v150);
            goto LABEL_47;
          }

          result = sub_1C97DA1E0(v144, &unk_1EC3CE660);
        }

        else
        {
          result = (*v129)(v142, v143);
        }

        v11 = v140;
        v5 = v138;
        v126 = v201;
      }

      v145 = sub_1C98BBAD0();
      v146(v145);

      sub_1C98BBC10();
    }

    return sub_1C97ACC50(v49, v127, 1, v41);
  }

  v75 = 0;
  v187 = result + ((*(v195 + 80) + 32) & ~*(v195 + 80));
  v186 = v195 + 16;
  v196 = v176 + 1;
  v184 = v176 + 11;
  v183 = *MEMORY[0x1E69AD8E8];
  v182 = v195 + 8;
  v174 = v176 + 12;
  v173 = v172 + 32;
  v176 = (v160 + 8);
  v172 += 8;
  v165 = (v195 + 32);
  v160 += 32;
  v188 = v73;
  v175 = result;
  while (1)
  {
    if (v75 >= *(v74 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    (*(v195 + 16))(v49, v187 + *(v195 + 72) * v75, v41);
    v77 = sub_1C9A91998() == v202 && v76 == v203;
    if (v77)
    {
      break;
    }

    v78 = sub_1C9A93B18();

    if (v78)
    {
      goto LABEL_13;
    }

LABEL_14:
    sub_1C9A91988();
    v82 = sub_1C98BBB58();
    v84 = v83(v82);
    if (v84 != v183)
    {
      v101 = sub_1C98BBAB8();
      v102(v101);
      v103 = sub_1C98BBB58();
      v104(v103);
      v109 = v193;
      goto LABEL_26;
    }

    sub_1C98BBB0C();
    v85 = sub_1C98BBB68();
    v86(v85);
    sub_1C98BBB0C();
    v87 = v179;
    v88 = sub_1C98B7774();
    v89(v88);
    v90 = v72;
    v91 = v178;
    sub_1C9A91868();
    v72 = v177;
    sub_1C98BB3C0(v202, v203, v199, v177);
    v92 = *v176;
    (*v176)(v91, v180);
    sub_1C98BBB94(v72);
    if (v77)
    {
      sub_1C97DA1E0(v72, &unk_1EC3CE660);
      v93 = v169;
      sub_1C9A91878();
      v94 = v180;
      if (sub_1C97ABF20(v93, 1, v180) == 1)
      {
        sub_1C98BBB0C();
        v95 = sub_1C98BBC4C();
        v96(v95);
        v97 = sub_1C98BBAB8();
        v98(v97);
        v99 = v93;
        v100 = &qword_1EC3CB2A0;
        goto LABEL_25;
      }

      sub_1C98BBB0C();
      v114 = v162;
      v115(v162, v93, v94);
      v116 = v161;
      sub_1C98BB3C0(v202, v203, v199, v161);
      v92(v114, v94);
      sub_1C98BBB0C();
      v117 = sub_1C98BBC4C();
      v118(v117);
      v119 = sub_1C98BBAB8();
      v120(v119);
      sub_1C98BBB94(v116);
      if (v77)
      {
        v99 = v116;
        v100 = &unk_1EC3CE660;
LABEL_25:
        sub_1C97DA1E0(v99, v100);
        v109 = v193;
        v74 = v175;
LABEL_26:
        sub_1C97ACC50(v109, 1, 1, v41);
        v73 = v188;
        goto LABEL_27;
      }

      v121 = v116;
      v108 = *v165;
      (*v165)(v159, v121, v41);
      v109 = v193;
      v122 = sub_1C98B7774();
      (v108)(v122);
    }

    else
    {
      sub_1C98BBB0C();
      v105(v87, v90);
      v106 = sub_1C98BBAB8();
      v107(v106);
      v108 = *v165;
      (*v165)(v168, v72, v41);
      v109 = v193;
      v110 = sub_1C98B7774();
      (v108)(v110);
      v72 = v90;
    }

    sub_1C9855128();
    sub_1C97ACC50(v111, v112, v113, v41);
    sub_1C98BBB94(v109);
    v73 = v188;
    v74 = v175;
    if (!v77)
    {

      goto LABEL_46;
    }

LABEL_27:
    ++v75;
    result = sub_1C97DA1E0(v109, &unk_1EC3CE660);
    v70 = v198;
    if (v189 == v75)
    {
      goto LABEL_28;
    }
  }

LABEL_13:
  sub_1C9A91988();
  v79 = sub_1C98B890C(v199);
  v80 = sub_1C98BBB58();
  v81(v80);
  if ((v79 & 1) == 0)
  {
    goto LABEL_14;
  }

  v108 = *v165;
  v109 = v193;
  (*v165)(v193, v49, v41);
  sub_1C9855128();
  sub_1C97ACC50(v151, v152, v153, v41);
  v73 = v188;
LABEL_46:
  (*(v198 + 8))(v73, v167);
  v154 = sub_1C98BBAD0();
  v155(v154);
  v156 = v158;
  v108(v158, v109, v41);
  sub_1C98BBC10();
  v108(v49, v156, v41);
LABEL_47:
  v127 = 0;
  return sub_1C97ACC50(v49, v127, 1, v41);
}

void sub_1C98BA30C()
{
  sub_1C97AEB94();
  v1 = sub_1C97A2CEC(&qword_1EC3CB278);
  sub_1C97DACE4(v1);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AC02C();
  v31 = v3;
  sub_1C98BBB00();
  sub_1C9A91858();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  sub_1C98BBBF0();
  sub_1C9A91978();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98435A0();
  sub_1C98BBBD0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98BBB18();
  sub_1C9A91908();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEAD8();
  sub_1C98BBC64();
  v10 = sub_1C98BBB38();
  if (v11(v10) == *MEMORY[0x1E69AD830])
  {
    v12 = (v6 + 96);
    v13 = sub_1C98BBB4C();
    v14(v13);
    v15 = sub_1C98BBBE0();
    v16(v15);
    sub_1C9A918C8();
    sub_1C9A918E8();
    sub_1C9A91848();
    v17 = sub_1C98BBBB4();
    v12(v17);
    sub_1C9A918D8();
    v18 = sub_1C98BBCA0();
    if (sub_1C97ABF20(v18, v19, v0) == 1)
    {
      v20 = sub_1C98BBB28();
      v21(v20);
      sub_1C97DA1E0(v31, &qword_1EC3CB278);
    }

    else
    {
      sub_1C9A91848();
      v29 = sub_1C98BBB28();
      v30(v29);
      (v12)(v31, v0);
    }
  }

  else
  {
    v22 = *(v6 + 8);
    v23 = sub_1C98BBB4C();
    v22(v23);
    sub_1C9A918F8();
    v24 = sub_1C98BBC1C();
    v25(v24);
    type metadata accessor for ModelFeatureExtractorError(0);
    sub_1C98BA9C4();
    sub_1C98BBB74();
    sub_1C97A2CEC(&qword_1EC3CB288);
    v26 = sub_1C98BBC00();
    v27(v26);
    sub_1C9A91988();
    swift_willThrow();
    v28 = sub_1C97A7890();
    v22(v28);
  }

  sub_1C98BBC34();
  sub_1C97AEB5C();
}

void sub_1C98BA658()
{
  sub_1C97AEB94();
  v1 = sub_1C97A2CEC(&qword_1EC3CB278);
  sub_1C97DACE4(v1);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AC02C();
  v31 = v3;
  sub_1C98BBB00();
  sub_1C9A91858();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  sub_1C98BBBF0();
  sub_1C9A91978();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98435A0();
  sub_1C98BBBD0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98BBB18();
  sub_1C9A91958();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEAD8();
  sub_1C98BBC64();
  v10 = sub_1C98BBB38();
  if (v11(v10) == *MEMORY[0x1E69AD838])
  {
    v12 = (v6 + 96);
    v13 = sub_1C98BBB4C();
    v14(v13);
    v15 = sub_1C98BBBE0();
    v16(v15);
    sub_1C9A91918();
    sub_1C9A91938();
    sub_1C9A91848();
    v17 = sub_1C98BBBB4();
    v12(v17);
    sub_1C9A91928();
    v18 = sub_1C98BBCA0();
    if (sub_1C97ABF20(v18, v19, v0) == 1)
    {
      v20 = sub_1C98BBB28();
      v21(v20);
      sub_1C97DA1E0(v31, &qword_1EC3CB278);
    }

    else
    {
      sub_1C9A91848();
      v29 = sub_1C98BBB28();
      v30(v29);
      (v12)(v31, v0);
    }
  }

  else
  {
    v22 = *(v6 + 8);
    v23 = sub_1C98BBB4C();
    v22(v23);
    sub_1C9A91948();
    v24 = sub_1C98BBC1C();
    v25(v24);
    type metadata accessor for ModelFeatureExtractorError(0);
    sub_1C98BA9C4();
    sub_1C98BBB74();
    sub_1C97A2CEC(&qword_1EC3CB288);
    v26 = sub_1C98BBC00();
    v27(v26);
    sub_1C9A91988();
    swift_willThrow();
    v28 = sub_1C97A7890();
    v22(v28);
  }

  sub_1C98BBC34();
  sub_1C97AEB5C();
}

unint64_t sub_1C98BA9C4()
{
  result = qword_1EC3CB280;
  if (!qword_1EC3CB280)
  {
    type metadata accessor for ModelFeatureExtractorError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB280);
  }

  return result;
}

void sub_1C98BAA1C()
{
  sub_1C97AEB94();
  v0 = sub_1C97A2CEC(&qword_1EC3CB278);
  sub_1C97DACE4(v0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - v2;
  sub_1C9A91858();
  sub_1C97AE9C8();
  v38 = v5;
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v37 = v7 - v6;
  sub_1C98BBB00();
  v8 = sub_1C9A91978();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C98435A0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98BBB18();
  sub_1C9A918B8();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AEAD8();
  sub_1C98BBC64();
  v17 = sub_1C98BBB38();
  if (v18(v17) == *MEMORY[0x1E69AD928])
  {
    v19 = sub_1C98BBB4C();
    v20(v19);
    v21 = sub_1C98BBBE0();
    v22(v21);
    sub_1C9A918A8();
    v23 = sub_1C98BBCA0();
    v24 = v39;
    if (sub_1C97ABF20(v23, v25, v39) == 1)
    {
      v26 = sub_1C97DA1E0(v3, &qword_1EC3CB278);
      MEMORY[0x1CCA8F540](v26);
    }

    else
    {
      v34 = v37;
      v33 = v38;
      v35 = (*(v38 + 32))(v37, v3, v24);
      MEMORY[0x1CCA8F540](v35);
      sub_1C9A91848();
      (*(v33 + 8))(v34, v24);
    }

    v27 = sub_1C98BBC80();
    v28(v27);
  }

  else
  {
    v29 = *(v10 + 8);
    v30 = sub_1C98BBB4C();
    v29(v30);
    sub_1C9A91968();
    type metadata accessor for ModelFeatureExtractorError(0);
    sub_1C98BA9C4();
    sub_1C98BBB74();
    v32 = v31;
    sub_1C97A2CEC(&qword_1EC3CB288);
    (*(v10 + 16))(v32, v14, v8);
    sub_1C9A91988();
    swift_willThrow();
    (v29)(v14, v8);
  }

  sub_1C97CB094();
  sub_1C97AEB5C();
}

uint64_t sub_1C98BADA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v88 = a5;
  v89 = a4;
  v9 = sub_1C97A2CEC(&qword_1EC3CB2A0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  v79 = v11;
  sub_1C98BBB00();
  sub_1C9A919C8();
  sub_1C97AE9C8();
  v82 = v13;
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97ABF90();
  v76 = v14;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98BBB18();
  v16 = sub_1C97A2CEC(&unk_1EC3CE660);
  v17 = sub_1C97DACE4(v16);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97ABF90();
  v77 = v18;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97ABFC0();
  v80 = v20;
  sub_1C98BBB00();
  sub_1C9A919A8();
  sub_1C97AE9C8();
  v86 = v22;
  v87 = v21;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97ABF90();
  v75 = v23;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97ABFC0();
  v78 = v25;
  sub_1C98BBB00();
  v81 = sub_1C9A91888();
  sub_1C97AE9C8();
  v85 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AEAD8();
  v30 = v29 - v28;
  v31 = sub_1C9A91978();
  sub_1C97AE9C8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C98435A0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v74 - v36;
  v39 = sub_1C9A91998() == a2 && v38 == a3;
  v84 = a2;
  if (v39)
  {
    v40 = a3;
  }

  else
  {
    v40 = a3;
    v41 = sub_1C9A93B18();

    if ((v41 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1C9A91988();
  v42 = sub_1C98B890C(v89);
  (*(v33 + 8))(v37, v31);
  if (v42)
  {
    v43 = v87;
    v44 = v88;
    (*(v86 + 16))(v88, a1, v87);
LABEL_17:
    v60 = 0;
    return sub_1C97ACC50(v44, v60, 1, v43);
  }

LABEL_10:
  sub_1C9A91988();
  v45 = sub_1C97E89F0();
  if (v46(v45) != *MEMORY[0x1E69AD8E8])
  {
    v61 = sub_1C97E89F0();
    v62(v61);
    v60 = 1;
    v43 = v87;
    v44 = v88;
    return sub_1C97ACC50(v44, v60, 1, v43);
  }

  v47 = sub_1C97E89F0();
  v48(v47);
  v49 = v85;
  v50 = sub_1C97A7890();
  v51 = v81;
  v52(v50);
  sub_1C9A91868();
  v53 = v80;
  v54 = v40;
  sub_1C98BB3C0(v5, v84, v40, v89);
  v56 = v82;
  v55 = v83;
  v74 = *(v82 + 8);
  v74(v5, v83);
  v43 = v87;
  if (sub_1C97ABF20(v53, 1, v87) != 1)
  {
    (*(v49 + 8))(v30, v51);
    v63 = *(v86 + 32);
    v64 = v78;
    v63(v78, v53, v43);
    v44 = v88;
    v63(v88, v64, v43);
    goto LABEL_17;
  }

  sub_1C97DA1E0(v53, &unk_1EC3CE660);
  v57 = v79;
  sub_1C9A91878();
  if (sub_1C97ABF20(v57, 1, v55) != 1)
  {
    v66 = v76;
    (*(v56 + 32))(v76, v57, v55);
    v67 = v77;
    sub_1C98BB3C0(v66, v84, v54, v89);
    v68 = sub_1C98B7774();
    (v74)(v68);
    v69 = sub_1C98BBC8C();
    v70(v69);
    v71 = sub_1C97ABF20(v67, 1, v43);
    v44 = v88;
    if (v71 == 1)
    {
      sub_1C97DA1E0(v67, &unk_1EC3CE660);
      v60 = 1;
      return sub_1C97ACC50(v44, v60, 1, v43);
    }

    v72 = *(v86 + 32);
    v73 = v75;
    v72(v75, v67, v43);
    v72(v44, v73, v43);
    goto LABEL_17;
  }

  v58 = sub_1C98BBC8C();
  v59(v58);
  sub_1C97DA1E0(v57, &qword_1EC3CB2A0);
  v60 = 1;
  v44 = v88;
  return sub_1C97ACC50(v44, v60, 1, v43);
}

uint64_t sub_1C98BB3C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v39[0] = a4;
  v4 = sub_1C97A2CEC(&unk_1EC3CE660);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v39 - v5;
  v7 = sub_1C9A919A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3CB2B0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = (v39 - v12);
  v13 = &qword_1EC3CB2B8;
  v14 = &unk_1C9AAEFA0;
  v15 = sub_1C97A2CEC(&qword_1EC3CB2B8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v39 - v19;
  result = sub_1C9A919B8();
  v22 = 0;
  v41 = v8;
  v42 = result;
  v23 = *(result + 16);
  v39[1] = v8 + 16;
  v49 = (v8 + 32);
  v44 = v23;
  v45 = (v8 + 8);
  while (1)
  {
    if (v22 == v23)
    {
      v24 = 1;
      v22 = v23;
      goto LABEL_7;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v22 >= *(v42 + 16))
    {
      goto LABEL_14;
    }

    v43 = v22 + 1;
    v25 = v41;
    v26 = v42 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22;
    v27 = *(v11 + 48);
    v28 = v11;
    v29 = v18;
    v30 = v10;
    v31 = v14;
    v32 = v13;
    v33 = v6;
    v34 = v40;
    *v40 = v22;
    (*(v25 + 16))(&v34[v27], v26, v7);
    v35 = v34;
    v6 = v33;
    v13 = v32;
    v14 = v31;
    v10 = v30;
    v18 = v29;
    v11 = v28;
    sub_1C98BB7B8(v35, v18, &qword_1EC3CB2B0);
    v24 = 0;
    v22 = v43;
LABEL_7:
    sub_1C97ACC50(v18, v24, 1, v11);
    sub_1C98BB7B8(v18, v20, v13);
    if (sub_1C97ABF20(v20, 1, v11) == 1)
    {

      v37 = 1;
      v38 = v39[0];
      return sub_1C97ACC50(v38, v37, 1, v7);
    }

    v36 = *v49;
    (*v49)(v10, &v20[*(v11 + 48)], v7);
    sub_1C98BADA4(v10, v46, v47, v48, v6);
    (*v45)(v10, v7);
    if (sub_1C97ABF20(v6, 1, v7) != 1)
    {

      v38 = v39[0];
      v36(v39[0], v6, v7);
      v37 = 0;
      return sub_1C97ACC50(v38, v37, 1, v7);
    }

    result = sub_1C97DA1E0(v6, &unk_1EC3CE660);
    v23 = v44;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C98BB7B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C97A2CEC(a3);
  sub_1C97DA940();
  v4 = sub_1C97CB094();
  v5(v4);
  return a2;
}

uint64_t sub_1C98BB814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CB288);

  return sub_1C97ABF20(a1, a2, v4);
}

uint64_t sub_1C98BB868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CB288);

  return sub_1C97ACC50(a1, a2, a3, v6);
}

uint64_t sub_1C98BB8CC(uint64_t a1)
{
  sub_1C98BB99C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1C9A91978();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1C98BB99C()
{
  if (!qword_1EC3CB2D8)
  {
    sub_1C9A91978();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC3CB2D8);
    }
  }
}

uint64_t sub_1C98BBA4C()
{
  result = sub_1C9A91A68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C98BBB74()
{

  return swift_allocError();
}

uint64_t sub_1C98BBC64()
{

  return sub_1C9A91988();
}

uint64_t sub_1C98BBCC4(uint64_t a1)
{
  result = sub_1C9886CD8();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1C98BC898();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_1C98BC2B0(v5, v6, 0, a1);
  }
}

uint64_t sub_1C98BBD24(uint64_t a1)
{
  result = sub_1C98BC4BC();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1C98BC898();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_1C98BC6E8(v5, v6, 0, a1);
  }
}

void *sub_1C98BBD84(uint64_t a1)
{
  result = sub_1C9887A94();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1C98BC3CC(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_1C98BBE10(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C9A92618();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98BBE70(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_1C9886CD8();
  if (v6)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1C98BC898();
  if (v7)
  {
    return 0;
  }

  else
  {
    return a2();
  }
}

uint64_t sub_1C98BBED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1C9A91558();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1C97ACC50(a2, v7, 1, v6);
}

uint64_t sub_1C98BBFBC(void *a1, SEL *a2)
{
  v2 = a2;
  v4 = [a1 *a2];
  sub_1C97FD598();
  v5 = sub_1C9A92328();

  v6 = *(v5 + 16);

  if (v6 != 1)
  {
    sub_1C9834F94();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    return v2;
  }

  v7 = [a1 *v2];
  v8 = sub_1C9A92328();
  v9 = sub_1C98BBE70(v8, sub_1C98BC32C);

  if (v9)
  {

    if ([v9 type] != 5)
    {
      sub_1C9834F94();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();

      return v2;
    }

    v11 = [a1 *v2];
    v12 = sub_1C9A92328();
    v2 = sub_1C98BBCC4(v12);
    v14 = v13;

    if (v14)
    {

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98BC19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v8 = (*(a3 + 24))(a1, v7, ObjectType, a3);

  objc_autoreleasePoolPop(v5);
  return v8;
}

uint64_t sub_1C98BC27C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C98BC2B0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C98BC32C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C98BC37C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1C98BC3CC(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C98BC45C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C9A93478();
  }

  else
  {
    return sub_1C9A93438();
  }
}

void sub_1C98BC4FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1CCA91190](a1, a2, v7);
      type metadata accessor for SNModelFeatureConnection();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for SNModelFeatureConnection();
    if (sub_1C9A934A8() == *(a4 + 36))
    {
      sub_1C9A934B8();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_1C9A931D8();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_1C9A931E8();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

uint64_t sub_1C98BC6E8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for SNCoreMLError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C98BC844()
{
  result = qword_1EC3CB2F0[0];
  if (!qword_1EC3CB2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CB2F0);
  }

  return result;
}

void sub_1C98BC8A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_1C97E5448();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        v8 = *(v3 + 16);
        if ((*(v3 + 24) >> 1) - v8 < v5)
        {
          goto LABEL_16;
        }

        memcpy((v3 + 24 * v8 + 32), (v4 + 32), 24 * v5);

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_1C98BC9F0(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  for (result = MEMORY[0x1E69E7CC0]; v3; --v3)
  {
    v4 += 8;
    v7 = result;

    a2(v6);
    result = v7;
  }

  return result;
}

void sub_1C98BCA64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_1C97E5014();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        v8 = *(v3 + 16);
        if ((*(v3 + 24) >> 1) - v8 < v5)
        {
          goto LABEL_16;
        }

        memcpy((v3 + 4 * v8 + 32), (v4 + 32), 4 * v5);

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

BOOL sub_1C98BCB74(uint64_t a1, uint64_t a2)
{
  if ((sub_1C9A92438() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SharedVGGish.Configuration();
  return *(a1 + *(v4 + 52)) == *(a2 + *(v4 + 52));
}

uint64_t sub_1C98BCBFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C9AD41E0 == a2;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C9AD62D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

unint64_t sub_1C98BCCD0(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1C98BCD08(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = v3;
  v15 = v3;
  v16 = v13;
  type metadata accessor for SharedVGGish.Configuration.CodingKeys();
  sub_1C98BDFB0();
  swift_getWitnessTable();
  v4 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DD8();
  LOBYTE(v15) = 0;
  v10 = v17;
  sub_1C9A93A18();
  if (!v10)
  {
    LOBYTE(v15) = 1;
    sub_1C9A93A08();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C98BCEE8(uint64_t a1)
{
  sub_1C9A93CC8();
  sub_1C98BCEA0(v3, a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C98BCF30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v38 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v12;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  type metadata accessor for SharedVGGish.Configuration.CodingKeys();
  sub_1C98BDFB0();
  swift_getWitnessTable();
  v41 = sub_1C9A93978();
  sub_1C97AE9C8();
  v37 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v39 = a2;
  v40 = a3;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v18 = type metadata accessor for SharedVGGish.Configuration();
  sub_1C97AE9C8();
  v35 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  sub_1C97A5A8C(a1, a1[3]);
  v23 = v47;
  sub_1C9A93DB8();
  if (v23)
  {
    return sub_1C97A592C(a1);
  }

  v47 = v22;
  v34 = v18;
  v24 = v38;
  LOBYTE(v43) = 0;
  v25 = v39;
  sub_1C9A938F8();
  v26 = v47;
  (*(v24 + 32))(v47, v42, v25);
  LOBYTE(v43) = 1;
  v27 = sub_1C9A938E8();
  v28 = sub_1C98BDFC8();
  v29(v28);
  v30 = v34;
  *&v26[*(v34 + 52)] = v27;
  v31 = v35;
  (*(v35 + 16))(v36, v26, v30);
  sub_1C97A592C(a1);
  return (*(v31 + 8))(v26, v30);
}

uint64_t sub_1C98BD290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98BCBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98BD2C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C98BD318(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C98BD3B0(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C98BCEA0(v4, a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C98BD404()
{
  v1 = sub_1C97A2CEC(qword_1EC3C6788);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&unk_1EC3CC280);
  sub_1C97AE67C(&unk_1EC3C4A90, &unk_1EC3CC280);
  sub_1C9A91EF8();
  sub_1C97AE67C(&unk_1EC3C4A58, qword_1EC3C6788);
  v9 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v9;
}

uint64_t sub_1C98BD600()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C98BD678(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C98BD77C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98BD974()
{

  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C97AE67C(&unk_1EC3C4A40, &qword_1EC3C9AA0);
  return sub_1C9A91B88();
}

uint64_t sub_1C98BDA34@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C8A78);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = *a1;
  v11 = sub_1C9A92478();
  v12 = [v10 featureValueForName_];

  if (v12)
  {
    sub_1C9A92FD8();
  }

  else
  {
    v13 = sub_1C97A2CEC(&qword_1EC3C8A38);
    sub_1C97ACC50(v9, 1, 1, v13);
  }

  sub_1C98BDC6C(v9, v7);
  v14 = sub_1C97A2CEC(&qword_1EC3C8A38);
  if (sub_1C97ABF20(v7, 1, v14) == 1)
  {
    sub_1C98BDCDC(v7);
    sub_1C986EEEC();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    return sub_1C98BDCDC(v9);
  }

  else
  {
    sub_1C98BDCDC(v9);
    return (*(*(v14 - 8) + 32))(a2, v7, v14);
  }
}

uint64_t sub_1C98BDC34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98BFACC();
  *a1 = result;
  return result;
}

uint64_t sub_1C98BDC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C8A78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C98BDCDC(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C8A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1C98BDD5C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SharedVGGish.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C98BDF08()
{
  result = qword_1EC3CB378;
  if (!qword_1EC3CB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB378);
  }

  return result;
}

uint64_t sub_1C98BDFD8@<X0>(id a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  sub_1C97A2CEC(&unk_1EC3CA040);
  v4 = sub_1C9A924F8();
  v6 = v5;
  sub_1C98BE060();
  result = swift_allocError();
  *v8 = v4;
  v8[1] = v6;
  *a2 = result;
  return result;
}

unint64_t sub_1C98BE060()
{
  result = qword_1EC3CB380;
  if (!qword_1EC3CB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB380);
  }

  return result;
}

unint64_t sub_1C98BE0C8()
{
  result = qword_1EC3CB388[0];
  if (!qword_1EC3CB388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CB388);
  }

  return result;
}

uint64_t sub_1C98BE11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C97A83D4();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  sub_1C9803BB8(sub_1C98BECF8, v9, &unk_1C9AAF600, v10, a4);
}

uint64_t sub_1C98BE1FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97AA640;

  return v6(a1);
}

uint64_t sub_1C98BE31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C98BE340, 0, 0);
}

uint64_t sub_1C98BE340()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  type metadata accessor for XPCProxyDecoder.SingleValueContainer();
  v8 = swift_allocObject();
  v0[5] = v8;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  sub_1C97A8F30(v4);
  sub_1C98BE668(v8, v1, v2);
  v0[6] = v9;
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1C98BE454;

  return sub_1C98040B4();
}

uint64_t sub_1C98BE454(uint64_t a1, uint64_t a2)
{
  sub_1C97AA890();
  v7 = v6;
  v8 = *v3;
  sub_1C97AA83C();
  *v9 = v8;
  v7[8] = v2;

  if (v2)
  {
    v10 = sub_1C98BE5F4;
  }

  else
  {

    v7[9] = a2;
    v7[10] = a1;
    v10 = sub_1C98BE584;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1C98BE584()
{
  sub_1C97AA884();

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_1C98BE5F4()
{
  sub_1C97AA884();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1C98BE668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return &unk_1C9AAF620;
}

uint64_t sub_1C98BE6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  v3[6] = v5;
  type metadata accessor for XPCFunction();
  v3[4] = &off_1F494B9C0;
  v3[5] = a3;
  swift_getWitnessTable();
  *v5 = v3;
  v5[1] = sub_1C98BE7D8;

  return sub_1C987CBD8();
}

uint64_t sub_1C98BE7D8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_1C97A9A2C;
  }

  else
  {
    v5 = sub_1C98BE8DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C98BE8F8()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_1C98BE9A8;

  return sub_1C98BE31C(v6, v4, v2);
}

uint64_t sub_1C98BE9A8()
{
  sub_1C97AA95C();
  sub_1C98BEFBC();
  v4 = *v3;
  sub_1C97AA83C();
  *v5 = v4;

  v8 = *(v4 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1C98BEAA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98BEB50;

  return sub_1C98BE8F8();
}

uint64_t sub_1C98BEB50()
{
  sub_1C98BEFBC();
  v5 = v4;
  v6 = *v3;
  sub_1C97AA83C();
  *v7 = v6;

  if (!v1)
  {
    v8 = *(v5 + 16);
    *v8 = v2;
    v8[1] = v0;
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1C98BEC58(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C98BECA8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C98BED10(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97AA640;

  return sub_1C98BE1FC(a1, v4);
}

uint64_t sub_1C98BEDD0()
{
  sub_1C97AA95C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C98BEE74;

  return sub_1C98BE6DC(v4, v2, v3);
}

uint64_t sub_1C98BEE74()
{
  sub_1C97AA95C();
  sub_1C98BEFBC();
  v3 = *v2;
  sub_1C97AA83C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v1, v0);
}

uint64_t sub_1C98BEF68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C98BEFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for SharedReformattedAudioSource.Configuration();
  *(a5 + *(result + 52)) = a2;
  *(a5 + *(result + 56)) = a3;
  return result;
}

uint64_t sub_1C98BF080()
{
  v2 = sub_1C97A2CEC(&unk_1EC3CB410);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEA4C();
  v6 = *(v0 + 16);
  v7 = swift_allocObject();
  v7[2] = sub_1C97AE650;
  v7[3] = v0;
  v7[4] = v6;

  sub_1C97A2CEC(&unk_1EC3C7390);
  sub_1C97AE9EC();
  sub_1C97AE67C(v8, &unk_1EC3C7390);
  sub_1C9A91EF8();
  sub_1C97AE67C(&unk_1EC3C4A68, &unk_1EC3CB410);
  v9 = sub_1C98C6874();
  (*(v4 + 8))(v1, v2);
  return v9;
}

void sub_1C98BF250()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v11 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AEA4C();
  (*(v4 + 16))(v6, v4);
  (*(v2 + 40))(v8, AssociatedTypeWitness, v2);
  (*(v11 + 8))(v0, AssociatedTypeWitness);
  sub_1C97AEB5C();
}

void sub_1C98BF3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97F09E4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C97F09E4();
  v7 = swift_getAssociatedConformanceWitness();
  sub_1C97F09E4();
  v8 = swift_getAssociatedConformanceWitness();
  sub_1C98C5878(a1, sub_1C98C6548, v10, AssociatedTypeWitness, AssociatedConformanceWitness, v7, v8, v9, v10[0], v10[1], v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void sub_1C98BF4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C988EB84();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = (*(v35 + 16))(v36, v35);
  (*(v30 + 16))(v34, v20, v26);
  v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v24;
  (*(v30 + 32))(v39 + v38, v34, v26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_1C97AEA9C();
  v42 = sub_1C97AEA9C();
  v43 = sub_1C97AEA9C();
  v47[2] = AssociatedTypeWitness;
  v47[3] = v41;
  v47[4] = v42;
  v47[5] = v43;
  v44 = type metadata accessor for SharedReformattedAudioSource.Configuration();
  v45 = type metadata accessor for SharedReformattedAudioSource.Instance();
  WitnessTable = swift_getWitnessTable();
  sub_1C99D6B34(v28, v37, sub_1C98C6568, v39, v44, v45, WitnessTable, &a10);

  sub_1C97AEB5C();
}

void sub_1C98BF700()
{
  sub_1C97AEA3C();
  swift_getWitnessTable();
  _s21ServerEnvironmentImplVMa();
  swift_getWitnessTable();
  sub_1C98C69E0();
}

void sub_1C98BF780()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  sub_1C98C6984(WitnessTable);
}

uint64_t sub_1C98BF808()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4A0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C0B4C(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3C4A50);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB4A8);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BF910(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CB420);
  MEMORY[0x1EEE9AC00](v6);
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1C98C0EB4(a1, a2, a3);
  objc_autoreleasePoolPop(v7);
  return v8;
}

uint64_t sub_1C98BFACC()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4A0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C121C(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3C4A50);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB4A8);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFBD4()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4A0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C1584(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3C4A50);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB4A8);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFCDC()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB508);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C18EC(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3C7270);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB520);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFDE4()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4C0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C1C54(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB4D0);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB4D8);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFEEC()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4C0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2030(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB4D0);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB4D8);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFFF4()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB568);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2398(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CE470);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB580);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C00FC()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB5D0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2774(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB5E0);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB5E8);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0204()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB568);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2ADC(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CE470);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB580);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C030C()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB610);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2E44(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB620);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB628);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0414()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB610);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C3220(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB620);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB628);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C051C()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB700);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C35FC(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB710);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB718);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0624()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB6C0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C3964(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB6D0);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB6D8);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C072C()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB680);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C3CCC(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB690);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB698);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0834()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB680);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C4034(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB690);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB698);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C093C()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB460);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C439C(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB470);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB478);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0A44()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB420);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C4704(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    sub_1C98C67BC(&qword_1EC3CB430);
    sub_1C98C6854();
    sub_1C97F07FC();
    v6 = swift_allocObject();
    v7 = sub_1C98C6814(v6);
    *v8 = sub_1C98C677C;
    v8[1] = v7;
    sub_1C98C6790(&qword_1EC3CB438);
    sub_1C98C6874();
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0B4C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB4B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB4B8);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3C5040, &qword_1EC3CB4B8);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB4B8);
    sub_1C97AE67C(&qword_1EC3C4AB8, &qword_1EC3CB4B0);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C0EB4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB440);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97EFF90;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB448);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(qword_1EC3C5048, &qword_1EC3CB448);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB448);
    sub_1C97AE67C(&unk_1EC3C4AC0, &qword_1EC3CB440);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C121C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB4B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB4B8);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3C5040, &qword_1EC3CB4B8);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB4B8);
    sub_1C97AE67C(&qword_1EC3C4AB8, &qword_1EC3CB4B0);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C1584(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB4B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB4B8);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3C5040, &qword_1EC3CB4B8);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB4B8);
    sub_1C97AE67C(&qword_1EC3C4AB8, &qword_1EC3CB4B0);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C18EC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB528);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB530);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB538, &qword_1EC3CB530);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB530);
    sub_1C97AE67C(&qword_1EC3CB540, &qword_1EC3CB528);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C1C54(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = sub_1C97A2CEC(&qword_1EC3CB4E0);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v23 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CB4E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  type metadata accessor for SafeLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  v14 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    v24 = v8;
    *(v16 + 16) = sub_1C98C6784;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v25 = v9;
    v18 = v17;
    *(v17 + 16) = sub_1C98C6784;
    *(v17 + 24) = v15;
    v19 = sub_1C97A2CEC(&qword_1EC3CB4F0);
    (*(*(v19 - 8) + 16))(v7, v26, v19);
    v20 = &v7[*(v27 + 36)];
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 8) = sub_1C98C678C;
    *(v20 + 9) = v16;
    *(v20 + 5) = 0u;
    *(v20 + 6) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 16) = sub_1C97F075C;
    *(v20 + 17) = v18;
    *(v20 + 18) = 0;
    *(v20 + 19) = 0;
    swift_retain_n();

    sub_1C97A2CEC(&unk_1EC3CA040);
    sub_1C97AE67C(&qword_1EC3CB4F8, &qword_1EC3CB4E0);
    sub_1C9A920A8();
    sub_1C97DA1E0(v7, &qword_1EC3CB4E0);
    sub_1C97AE67C(&qword_1EC3CB500, &qword_1EC3CB4E8);
    v21 = v24;
    a2 = sub_1C9A91F28();

    (*(v25 + 8))(v11, v21);
  }

  return a2;
}

uint64_t sub_1C98C2030(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB548);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6784;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6784;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB550);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB558, &qword_1EC3CB550);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB550);
    sub_1C97AE67C(&qword_1EC3CB560, &qword_1EC3CB548);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C2398(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = sub_1C97A2CEC(&qword_1EC3CB588);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v23 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CB590);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  type metadata accessor for SafeLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  v14 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    v24 = v8;
    *(v16 + 16) = sub_1C98C6784;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v25 = v9;
    v18 = v17;
    *(v17 + 16) = sub_1C98C6784;
    *(v17 + 24) = v15;
    v19 = sub_1C97A2CEC(&qword_1EC3CB598);
    (*(*(v19 - 8) + 16))(v7, v26, v19);
    v20 = &v7[*(v27 + 36)];
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 8) = sub_1C98C678C;
    *(v20 + 9) = v16;
    *(v20 + 5) = 0u;
    *(v20 + 6) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 16) = sub_1C97F075C;
    *(v20 + 17) = v18;
    *(v20 + 18) = 0;
    *(v20 + 19) = 0;
    swift_retain_n();

    sub_1C97A2CEC(&unk_1EC3CA040);
    sub_1C97AE67C(&qword_1EC3CB5A0, &qword_1EC3CB588);
    sub_1C9A920A8();
    sub_1C97DA1E0(v7, &qword_1EC3CB588);
    sub_1C97AE67C(&qword_1EC3CB5A8, &qword_1EC3CB590);
    v21 = v24;
    a2 = sub_1C9A91F28();

    (*(v25 + 8))(v11, v21);
  }

  return a2;
}

uint64_t sub_1C98C2774(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB5F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C65DC;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C65DC;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB5F8);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB600, &qword_1EC3CB5F8);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB5F8);
    sub_1C97AE67C(&qword_1EC3CB608, &qword_1EC3CB5F0);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C2ADC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB5B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6784;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6784;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB5B8);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB5C0, &qword_1EC3CB5B8);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB5B8);
    sub_1C97AE67C(&qword_1EC3CB5C8, &qword_1EC3CB5B0);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C2E44(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = sub_1C97A2CEC(&qword_1EC3CB630);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v23 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CB638);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  type metadata accessor for SafeLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  v14 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    v24 = v8;
    *(v16 + 16) = sub_1C98C660C;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v25 = v9;
    v18 = v17;
    *(v17 + 16) = sub_1C98C660C;
    *(v17 + 24) = v15;
    v19 = sub_1C97A2CEC(&qword_1EC3CB640);
    (*(*(v19 - 8) + 16))(v7, v26, v19);
    v20 = &v7[*(v27 + 36)];
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 8) = sub_1C98C663C;
    *(v20 + 9) = v16;
    *(v20 + 5) = 0u;
    *(v20 + 6) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 16) = sub_1C97F075C;
    *(v20 + 17) = v18;
    *(v20 + 18) = 0;
    *(v20 + 19) = 0;
    swift_retain_n();

    sub_1C97A2CEC(&unk_1EC3CA040);
    sub_1C97AE67C(&qword_1EC3CB648, &qword_1EC3CB630);
    sub_1C9A920A8();
    sub_1C97DA1E0(v7, &qword_1EC3CB630);
    sub_1C97AE67C(&qword_1EC3CB650, &qword_1EC3CB638);
    v21 = v24;
    a2 = sub_1C9A91F28();

    (*(v25 + 8))(v11, v21);
  }

  return a2;
}

uint64_t sub_1C98C3220(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = sub_1C97A2CEC(&qword_1EC3CB658);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v23 - v6;
  v8 = sub_1C97A2CEC(&unk_1EC3CB660);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  type metadata accessor for SafeLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  v14 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    v24 = v8;
    *(v16 + 16) = sub_1C98C6784;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v25 = v9;
    v18 = v17;
    *(v17 + 16) = sub_1C98C6784;
    *(v17 + 24) = v15;
    v19 = sub_1C97A2CEC(&qword_1EC3C9AE8);
    (*(*(v19 - 8) + 16))(v7, v26, v19);
    v20 = &v7[*(v27 + 36)];
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 8) = sub_1C98C678C;
    *(v20 + 9) = v16;
    *(v20 + 5) = 0u;
    *(v20 + 6) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 16) = sub_1C97F075C;
    *(v20 + 17) = v18;
    *(v20 + 18) = 0;
    *(v20 + 19) = 0;
    swift_retain_n();

    sub_1C97A2CEC(&unk_1EC3CA040);
    sub_1C97AE67C(&qword_1EC3CB670, &qword_1EC3CB658);
    sub_1C9A920A8();
    sub_1C97DA1E0(v7, &qword_1EC3CB658);
    sub_1C97AE67C(&qword_1EC3CB678, &unk_1EC3CB660);
    v21 = v24;
    a2 = sub_1C9A91F28();

    (*(v25 + 8))(v11, v21);
  }

  return a2;
}

uint64_t sub_1C98C35FC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB720);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB728);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB730, &qword_1EC3CB728);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB728);
    sub_1C97AE67C(qword_1EC3CB738, &qword_1EC3CB720);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C3964(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB6E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB6E8);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB6F0, &qword_1EC3CB6E8);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB6E8);
    sub_1C97AE67C(&qword_1EC3CB6F8, &qword_1EC3CB6E0);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C3CCC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB6A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB6A8);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB6B0, &qword_1EC3CB6A8);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB6A8);
    sub_1C97AE67C(&qword_1EC3CB6B8, &qword_1EC3CB6A0);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C4034(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB6A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB6A8);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB6B0, &qword_1EC3CB6A8);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB6A8);
    sub_1C97AE67C(&qword_1EC3CB6B8, &qword_1EC3CB6A0);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C439C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB480);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6530;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6530;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB488);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(&qword_1EC3CB490, &qword_1EC3CB488);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB488);
    sub_1C97AE67C(&qword_1EC3CB498, &qword_1EC3CB480);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

uint64_t sub_1C98C4704(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB440);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  type metadata accessor for SafeLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    v19 = v7;
    *(v14 + 16) = sub_1C98C6780;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v13;
    v20[0] = v22;
    memset(&v20[1], 0, 64);
    v20[9] = sub_1C98C678C;
    v20[10] = v14;
    memset(&v20[11], 0, 48);
    v20[17] = sub_1C97F075C;
    v20[18] = v15;
    v20[19] = 0;
    v20[20] = 0;
    swift_retain_n();

    v18[1] = sub_1C97A2CEC(&qword_1EC3CB448);
    sub_1C97A2CEC(&unk_1EC3CA040);
    v22 = v6;
    sub_1C97AE67C(qword_1EC3C5048, &qword_1EC3CB448);
    sub_1C9A920A8();
    memcpy(v21, v20, 0xA8uLL);
    sub_1C97DA1E0(v21, &qword_1EC3CB448);
    sub_1C97AE67C(&unk_1EC3C4AC0, &qword_1EC3CB440);
    v16 = v22;
    a2 = sub_1C9A91F28();

    (*(v19 + 8))(v9, v16);
  }

  return a2;
}

void sub_1C98C4A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (os_unfair_lock_trylock(v3))
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    if (v4 != 1)
    {
      swift_beginAccess();
      *(a2 + 16) = 1;
      sub_1C98C6538(v4);
    }

    os_unfair_lock_unlock(v3);
  }
}

void sub_1C98C4AF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(a1 + 16);
  if (os_unfair_lock_trylock(v5))
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    if (v6)
    {
      swift_beginAccess();
      *(a2 + 16) = 0;
      a3(v6);
    }

    os_unfair_lock_unlock(v5);
  }
}

uint64_t sub_1C98C4B84(void *a1)
{
  v2 = a1;
  sub_1C97A2CEC(&unk_1EC3CA040);
  v3 = sub_1C9A93AE8();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = swift_allocError();
    *v5 = a1;
  }

  return v4;
}

BOOL sub_1C98C4C20(uint64_t a1, uint64_t a2)
{
  if ((sub_1C9A92438() & 1) != 0 && (v4 = type metadata accessor for SharedReformattedAudioSource.Configuration(), *(a1 + *(v4 + 52)) == *(a2 + *(v4 + 52))))
  {
    return *(a1 + *(v4 + 56)) == *(a2 + *(v4 + 56));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98C4CBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001C9AD41E0 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x436C656E6E616863 && a2 == 0xEC000000746E756FLL;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574)
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

uint64_t sub_1C98C4DE0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0x436C656E6E616863;
  }

  return 0x6152656C706D6173;
}

void sub_1C98C4E48()
{
  sub_1C97AEB94();
  v13 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v14 = *(v4 + 32);
  v15 = v5;
  v16 = v5;
  v17 = v14;
  type metadata accessor for SharedReformattedAudioSource.Configuration.CodingKeys();
  sub_1C98C689C();
  v6 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v12 - v10;
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9A93DD8();
  LOBYTE(v16) = 0;
  sub_1C9A93A18();
  if (!v1)
  {
    sub_1C98353B4(1);
    sub_1C98353B4(2);
  }

  (*(v8 + 8))(v11, v6);
  sub_1C97AEB5C();
}

void sub_1C98C4FC8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v37 = v11;
  sub_1C988EB84();
  v38 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v48 = v18;
  type metadata accessor for SharedReformattedAudioSource.Configuration.CodingKeys();
  sub_1C98C689C();
  sub_1C9A93978();
  sub_1C97AE9C8();
  v40 = v20;
  v41 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  v43 = v8;
  v45 = v8;
  v46 = v6;
  v39 = v6;
  v47 = v4;
  v48 = v2;
  v24 = type metadata accessor for SharedReformattedAudioSource.Configuration();
  sub_1C97AE9C8();
  v36 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v35 - v27;
  sub_1C97A5A8C(v10, v10[3]);
  v42 = v23;
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v10);
  }

  else
  {
    v29 = v28;
    v30 = v38;
    LOBYTE(v45) = 0;
    v31 = v43;
    v32 = v41;
    sub_1C9A938F8();
    (*(v30 + 32))(v29, v44, v31);
    *&v29[*(v24 + 52)] = sub_1C9835400(1);
    v33 = sub_1C9835400(2);
    (*(v40 + 8))(v42, v32);
    *&v29[*(v24 + 56)] = v33;
    v34 = v36;
    (*(v36 + 16))(v37, v29, v24);
    sub_1C97A592C(v10);
    (*(v34 + 8))(v29, v24);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98C532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98C4CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98C5360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C98C53B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C98C5454()
{

  sub_1C97F07FC();

  return swift_deallocClassInstance();
}

_DWORD *sub_1C98C54BC(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C98C55C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98C579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v9 = *(a3 + 56);
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  sub_1C981CDF0(a4);
  result = v9(a1, a2, a3);
  if (v4)
  {
    return sub_1C97C26F0(a4);
  }

  return result;
}

void sub_1C98C5878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v114 = v23;
  v113 = v24;
  v112 = v25;
  v111 = v26;
  v117 = v27;
  v29 = v28;
  v110 = sub_1C97A2CEC(&qword_1EC3C7418);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v115 = &v104 - v31;
  v32 = sub_1C97A2CEC(&qword_1EC3C7420);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v104 - v34;
  v36 = sub_1C97A2CEC(&qword_1EC3C7428);
  sub_1C97AE9C8();
  v109 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v104 - v39;
  v41 = sub_1C9A91748();
  sub_1C97AE9C8();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v104 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v29;
  v47 = a10;
  (v117)(&v122, v29);
  if (!v47)
  {
    v104 = v32;
    v105 = v35;
    v106 = v40;
    v107 = v36;
    v108 = 0;
    v117 = v43;
    a10 = v41;
    sub_1C9A91738();
    v49 = v125;
    v48 = v126;
    sub_1C97A5A8C(&v122, v125);
    v50 = (*(v48 + 24))(v49, v48);
    v118 = v111;
    v119 = v112;
    v120 = v113;
    v121 = v114;
    v51 = *(v116 + *(type metadata accessor for SharedReformattedAudioSource.Configuration() + 56));
    if (v50 == v51)
    {
      sub_1C98C68C8();
      v52 = sub_1C97FB324();
      v53(v52, v40);
      sub_1C98C6A04();
      if (v54 == v55)
      {
        v56 = v125;
        v57 = v126;
        sub_1C97A5A8C(&v122, v125);
        v58 = (*(v57 + 8))(v56, v57);
        (*(v117 + 8))(v46, a10);
LABEL_5:
        type metadata accessor for SharedReformattedAudioSource.Instance();
        sub_1C97F07FC();
        *(swift_allocObject() + 16) = v58;
        sub_1C97A592C(&v122);
        goto LABEL_14;
      }
    }

    v113 = v46;
    sub_1C98C68C8();
    v59 = sub_1C97FB324();
    v61 = v60(v59, v40);
    v118 = v61;
    sub_1C97AA878();
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1C98063A0;
    *(v62 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE9EC();
    sub_1C97AE67C(v63, &unk_1EC3C7390);
    v112 = v51;
    v64 = v115;
    sub_1C9A91F68();

    sub_1C97F07FC();
    v65 = swift_allocObject();
    *(v65 + 16) = 0x4000;
    v66 = v110;
    v67 = v64 + *(v110 + 84);
    *v67 = 0;
    *(v67 + 8) = 0;
    *(v67 + 16) = 2;
    v68 = (v64 + *(v66 + 88));
    *v68 = sub_1C97E79BC;
    v68[1] = v65;
    sub_1C98C68C8();
    v69 = sub_1C97FB324();
    v114 = v70(v69, v61);
    sub_1C98C68C8();
    v71 = sub_1C97FB324();
    v111 = v72(v71, v61);
    sub_1C98C6A04();
    v116 = v73;
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x206665645BLL, 0xE500000000000000);
    sub_1C98C6968();
    v74 = sub_1C97F09E4();
    MEMORY[0x1CCA90230](v74);
    MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD4E00);
    MEMORY[0x1CCA90230](0x6665645B0A5D3120, 0xE900000000000020);
    MEMORY[0x1CCA90230](0x615274757074756FLL, 0xEA00000000006574);
    v75 = sub_1C97F09E4();
    MEMORY[0x1CCA90230](v75);
    sub_1C98C69C4();
    MEMORY[0x1CCA90230](0xD00000000000005DLL, 0x80000001C9AD4E40);
    sub_1C98C6968();
    sub_1C98C69A8();
    MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD4E00);
    MEMORY[0x1CCA90230](0xD00000000000001CLL, 0x80000001C9AD4EA0);
    sub_1C98C6968();
    sub_1C98C69A8();
    sub_1C98C69C4();
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4EC0);
    MEMORY[0x1CCA90230](0x615274757074756FLL, 0xEA00000000006574);
    sub_1C98C69A8();
    sub_1C98C69C4();
    MEMORY[0x1CCA90230](10589, 0xE200000000000000);
    sub_1C97A2CEC(&qword_1EC3C6C58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9FB90;
    *(inited + 32) = 0x7461527475706E69;
    *(inited + 40) = 0xE900000000000065;
    v118 = v114;
    *(inited + 48) = sub_1C9A93A98();
    *(inited + 56) = v77;
    *(inited + 64) = 0xD000000000000011;
    *(inited + 72) = 0x80000001C9AD4E00;
    *(inited + 80) = sub_1C98C691C(&v123);
    *(inited + 88) = v78;
    *(inited + 96) = 0x615274757074756FLL;
    *(inited + 104) = 0xEA00000000006574;
    *(inited + 112) = sub_1C98C691C(&v124);
    *(inited + 120) = v79;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000001C9AD4E20;
    *(inited + 144) = sub_1C98C691C(&a9);
    *(inited + 152) = v80;
    v81 = MEMORY[0x1E69E6168];
    sub_1C9A92348();
    v82 = objc_opt_self();
    v83 = sub_1C9A92478();

    sub_1C9A922F8();
    sub_1C97FB324();

    v84 = sub_1C9A92768();
    v85 = sub_1C9A7A268(v82, v83, v81, v84);

    if (v85)
    {
      sub_1C9A695C8(v85);
      sub_1C9A69B8C(v85);
      v86 = sub_1C9A6B6A4(v85);
      v87 = a10;
      v88 = v117;
      v89 = v113;
      if (v86 == 1 && sub_1C9A6BA18(v85) == 1 && sub_1C9A69A24(v85))
      {
        sub_1C97F07FC();
        v90 = swift_allocObject();
        *(v90 + 16) = v85;
        sub_1C97F07FC();
        v91 = swift_allocObject();
        *(v91 + 16) = v85;
        v92 = v105;
        sub_1C97E7AA4(v115, v105);
        v93 = v104;
        v94 = (v92 + *(v104 + 52));
        *v94 = sub_1C97E7A88;
        v94[1] = v91;
        v95 = (v92 + *(v93 + 56));
        *v95 = sub_1C97E7A6C;
        v95[1] = v90;
        v118 = 0;
        v119 = 0xE000000000000000;
        v96 = v85;
        sub_1C9A935B8();

        v118 = 0xD000000000000026;
        v119 = 0x80000001C9AD4F10;
        sub_1C97AE3DC();
        v97 = sub_1C9A93A98();
        MEMORY[0x1CCA90230](v97);

        MEMORY[0x1CCA90230](8250, 0xE200000000000000);
        v98 = v106;
        sub_1C97DC6CC();

        sub_1C97DA1E0(v92, &qword_1EC3C7420);
        sub_1C97AE67C(&unk_1EC3C7450, &qword_1EC3C7428);
        v99 = v107;
        v100 = sub_1C9A92008();
        sub_1C97A2CEC(&unk_1EC3CB450);
        sub_1C97AA878();
        swift_allocObject();
        v101 = sub_1C98E3778(v100);
        (*(v109 + 8))(v98, v99);
        v118 = v101;
        sub_1C97AE67C(&qword_1EC3C7460, &unk_1EC3CB450);
        v58 = sub_1C9A91F28();

        (*(v88 + 8))(v89, v87);
        goto LABEL_5;
      }

      sub_1C97E7A18();
      swift_allocError();
      *v102 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1C97E79C4();
      swift_allocError();
      *v103 = 0xD000000000000020;
      v103[1] = 0x80000001C9AD4EE0;
      swift_willThrow();
      v87 = a10;
      v88 = v117;
      v89 = v113;
    }

    sub_1C97DA1E0(v115, &qword_1EC3C7418);
    (*(v88 + 8))(v89, v87);
    sub_1C97A592C(&v122);
  }

LABEL_14:
  sub_1C97AEB5C();
}

void sub_1C98C63E8()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  sub_1C98C6984(WitnessTable);
}

void sub_1C98C6470()
{
  sub_1C97AEA3C();
  swift_getWitnessTable();
  type metadata accessor for AudioStreamAnalyzerEnvironmentImpl();
  swift_getWitnessTable();
  sub_1C98C69E0();
}

uint64_t sub_1C98C64F0@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C98BF910(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_1C98C6538(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1C98C6568@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 24))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *sub_1C98C665C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C98C6790(unint64_t *a1)
{

  return sub_1C97AE67C(a1, v1);
}

uint64_t sub_1C98C67BC(unint64_t *a1)
{

  return sub_1C97AE67C(a1, v1);
}

uint64_t sub_1C98C6834()
{

  return sub_1C97DA1E0(v1, v0);
}

uint64_t sub_1C98C6854()
{

  return sub_1C9A92658();
}

uint64_t sub_1C98C6874()
{

  return sub_1C9A91F28();
}

uint64_t sub_1C98C689C()
{

  return swift_getWitnessTable();
}

void sub_1C98C68EC()
{

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1C98C6904()
{

  return sub_1C97A2CEC(v0);
}

uint64_t sub_1C98C691C@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = *(a1 - 256);

  return sub_1C9A93A98();
}

uint64_t sub_1C98C693C(uint64_t a1, ...)
{
  va_start(va, a1);
  v4 = *(v1 + 16);
  *(v2 - 64) = *v1;
  *(v2 - 48) = v4;
  *(v2 - 32) = *(v1 + 32);

  return sub_1C9791564(va);
}

void sub_1C98C6968()
{

  JUMPOUT(0x1CCA90230);
}

void sub_1C98C6984(uint64_t a1)
{

  sub_1C98BF3B0(v3, v2, v1, a1);
}

void sub_1C98C69A8()
{

  JUMPOUT(0x1CCA90230);
}

void sub_1C98C69C4()
{

  JUMPOUT(0x1CCA90230);
}

void sub_1C98C69E0()
{

  sub_1C98BF250();
}

void sub_1C98C6A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1C98BF4E8(v21, v20, a1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

id sub_1C98C6A38(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  v3 = v2;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    [v2 setComputeUnits_];
  }

  return v3;
}

uint64_t sub_1C98C6A9C(void *a1)
{
  result = sub_1C98C8854();
  if (result == 3)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v3 = sub_1C9A91B58();
    sub_1C97BFF6C(v3, qword_1EC3D3108);
    v4 = sub_1C9A91B38();
    v5 = sub_1C9A92FA8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C9788000, v4, v5, "Forgiving an unsupported model configuration.", v6, 2u);
      MEMORY[0x1CCA93280](v6, -1, -1);
    }

    if ([a1 computeUnits])
    {
      return 2 * ([a1 computeUnits] == 3);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__CFString *sub_1C98C6BB0()
{
  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  v3 = v3 && v0 == v2;
  if (v3)
  {

    goto LABEL_38;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v1)
  {
LABEL_38:
    v22 = SNDetectorIdentifierVGGishApplause;
    return *v22;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v3 && v0 == v4)
  {

    goto LABEL_41;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v1)
  {
LABEL_41:
    v22 = SNDetectorIdentifierVGGishBabble;
    return *v22;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v3 && v0 == v6)
  {

    goto LABEL_43;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v1)
  {
LABEL_43:
    v22 = SNDetectorIdentifierVGGishCheering;
    return *v22;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v3 && v0 == v8)
  {

    goto LABEL_45;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v1)
  {
LABEL_45:
    v22 = SNDetectorIdentifierVGGishLaughter;
    return *v22;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v3 && v0 == v10)
  {

    goto LABEL_47;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v1)
  {
LABEL_47:
    v22 = SNDetectorIdentifierVGGishMusic;
    return *v22;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v3 && v0 == v12)
  {

    goto LABEL_49;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v1)
  {
LABEL_49:
    v22 = SNDetectorIdentifierVGGishSpeech;
    return *v22;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v3 && v0 == v14)
  {
  }

  else
  {
    sub_1C98CA8E8();
    sub_1C98CA904();
    sub_1C9A93B18();
    sub_1C98CA938();

    if ((v1 & 1) == 0)
    {
      type metadata accessor for SNError();
      sub_1C98CA988();
      sub_1C9A935B8();
      MEMORY[0x1CCA90230](0xD00000000000001ELL, 0x80000001C9AD8150);
      type metadata accessor for SNSoundIdentifier(0);
      sub_1C9A93728();
      v16 = sub_1C97FB260();
      sub_1C9929478(v16, v17, v18, v19, v20, v23);

      return swift_willThrow();
    }
  }

  v22 = SNDetectorIdentifierSoundPrintASmokeAlarm;
  return *v22;
}

void *sub_1C98C6F38(void *a1)
{
  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  v5 = v5 && v1 == v4;
  if (v5)
  {

    goto LABEL_53;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_53:
    v29 = SNSoundIdentifierApplause;
LABEL_54:
    *v29;
LABEL_55:
    v30 = a1;
    return a1;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v6)
  {

    goto LABEL_58;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_58:
    v29 = SNSoundIdentifierBabble;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v8)
  {

    goto LABEL_60;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_60:
    v29 = SNSoundIdentifierCheering;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v10)
  {

    goto LABEL_62;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_62:
    v29 = SNSoundIdentifierLaughter;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v12)
  {

    goto LABEL_64;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_64:
    v29 = SNSoundIdentifierMusic;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v14)
  {

    goto LABEL_66;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_66:
    v29 = SNSoundIdentifierSpeech;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v16)
  {

    goto LABEL_68;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_68:
    v32 = SNSoundIdentifierLaughter;
LABEL_69:
    v33 = *v32;
    goto LABEL_55;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v18)
  {

    goto LABEL_71;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_71:
    v34 = sub_1C9A70EA8();
    goto LABEL_55;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v20)
  {

    goto LABEL_73;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_73:
    v32 = SNSoundIdentifierSpeech;
    goto LABEL_69;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v22)
  {

    goto LABEL_75;
  }

  sub_1C98CA8E8();
  sub_1C98CA970();
  sub_1C98CA938();

  if (v2)
  {
LABEL_75:
    v32 = SNSoundIdentifierSmokeAlarm;
    goto LABEL_69;
  }

  type metadata accessor for SNError();
  sub_1C98CA988();
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD000000000000021, 0x80000001C9AD8120);
  type metadata accessor for SNDetectorIdentifier(0);
  sub_1C9A93728();
  a1 = v35;
  v24 = sub_1C97FB260();
  sub_1C9929478(v24, v25, v26, v27, v28, v35);
  sub_1C97C926C();

  swift_willThrow();
  return a1;
}

void sub_1C98C73E0(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v5);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1C99B8AAC(a1);
  if (!v2)
  {
    v9 = sub_1C9A91558();
    if (sub_1C97ABF20(v8, 1, v9) == 1)
    {
      sub_1C97F9D3C(v8, &qword_1EC3C7FE0);
      sub_1C98C9D48();
      swift_allocError();
      *v10 = a1;
      swift_willThrow();
    }

    else
    {
      (*(*(v9 - 8) + 32))(a2, v8, v9);
    }
  }
}

uint64_t sub_1C98C751C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C98C9104();
  v6 = (v5 + 48);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v2 = *(v6 - 16);
    if (*(v6 - 1) != a1 || *v6 != a2)
    {
      v6 += 3;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    return v2;
  }

  type metadata accessor for SNError();
  sub_1C98CA988();
  sub_1C9A935B8();

  MEMORY[0x1CCA90230](a1, a2);
  v9 = sub_1C97FB260();
  sub_1C9929478(v9, v10, v11, v12, v13, 0x80000001C9AD8050);
  sub_1C97C926C();

  swift_willThrow();
  return v2;
}

uint64_t sub_1C98C7640()
{
  sub_1C9A93848();
  sub_1C97C926C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C98C7690(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1C98C76D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C98C7640();
  *a1 = result;
  return result;
}

unint64_t sub_1C98C7704@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C98C7690(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C98C7808(unsigned __int16 a1, __int16 a2)
{
  if (a2 != a1)
  {
    v2 = 0;
  }

  else
  {
    v3 = HIBYTE(a1);
    v4 = 0xE300000000000000;
    v5 = 0xE300000000000000;
    v6 = 7696483;
    if (v3 != 1)
    {
      v6 = 0x4E41646E41757063;
      v5 = 0xE900000000000045;
    }

    if (v3)
    {
      v7 = v6;
    }

    else
    {
      v7 = 7105633;
    }

    if (v3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v9 = 7696483;
    if (HIBYTE(a2) != 1)
    {
      v9 = 0x4E41646E41757063;
      v4 = 0xE900000000000045;
    }

    if (HIBYTE(a2))
    {
      v10 = v9;
    }

    else
    {
      v10 = 7105633;
    }

    if (HIBYTE(a2))
    {
      v11 = v4;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    if (v7 == v10 && v8 == v11)
    {
      v2 = 1;
    }

    else
    {
      sub_1C98CA904();
      v2 = sub_1C9A93B18();
    }
  }

  return v2 & 1;
}

uint64_t sub_1C98C7908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C98C79D4(char a1)
{
  if (a1)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1C98C7A14(void *a1, __int16 a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CB850);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C98CA9DC(a1);
  sub_1C98CA450();
  sub_1C9A93DD8();
  v12[15] = a2;
  v12[14] = 0;
  sub_1C98CA4F8();
  sub_1C9A93A18();
  if (!v2)
  {
    v12[13] = HIBYTE(a2);
    v12[12] = 1;
    sub_1C97F9C3C();
    sub_1C9A93A18();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C98C7B8C(uint64_t a1, unsigned __int8 a2)
{
  MEMORY[0x1CCA91980](a2);
  sub_1C9A92528();
}

uint64_t sub_1C98C7C20(unsigned __int8 a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a1);
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C98C7CD0(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CB838);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  sub_1C98CA9DC(a1);
  sub_1C98CA450();
  sub_1C98CA998();
  if (v1)
  {
    return sub_1C97A592C(a1);
  }

  sub_1C98CA4A4();
  sub_1C98CA950();
  sub_1C97F9B3C();
  sub_1C98CA950();
  v4 = sub_1C98CA91C();
  v5(v4);
  sub_1C97A592C(a1);
  return v8 | (v7 << 8);
}

uint64_t sub_1C98C7E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98C7908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98C7E70(uint64_t a1)
{
  v2 = sub_1C98CA450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98C7EAC(uint64_t a1)
{
  v2 = sub_1C98CA450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98C7EE8@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1C98C7CD0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C98C7F40()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C978C430(v3, v1);
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C98C7FF8()
{
  sub_1C97A2CEC(&qword_1EC3CB7C8);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&qword_1EC3CB7D0);
  swift_allocObject();
  v1 = sub_1C97C926C();
  result = sub_1C9A37FC8(v1);
  qword_1EC3C55D8 = result;
  return result;
}

uint64_t sub_1C98C8094()
{
  sub_1C9A93848();
  sub_1C97C926C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C98C80DC(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 7696483;
  }

  return 0x4E41646E41757063;
}

uint64_t sub_1C98C8134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C98C8094();
  *a1 = result;
  return result;
}

uint64_t sub_1C98C8164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C80DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C98C8258(unsigned __int8 a1, char a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7696483;
    }

    else
    {
      v4 = 0x4E41646E41757063;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE900000000000045;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7105633;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7696483;
    }

    else
    {
      v2 = 0x4E41646E41757063;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE900000000000045;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_1C98CA904();
    v8 = sub_1C9A93B18();
  }

  return v8 & 1;
}

uint64_t sub_1C98C8344(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x55657475706D6F63 && a2 == 0xEB0000000074696ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C98C83E0(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CB818);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C98CA9DC(a1);
  sub_1C98CA2AC();
  sub_1C9A93DD8();
  sub_1C98CA354();
  sub_1C9A93A18();
  v3 = sub_1C98CA91C();
  return v4(v3);
}

uint64_t sub_1C98C8500()
{
  sub_1C9A93CC8();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C98C8598(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CB800);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C98CA9DC(a1);
  sub_1C98CA2AC();
  sub_1C98CA998();
  if (v2)
  {
    sub_1C97A592C(a1);
  }

  else
  {
    sub_1C98CA300();
    sub_1C98CA950();
    v5 = sub_1C98CA91C();
    v6(v5);
    v1 = v8;
    sub_1C97A592C(a1);
  }

  return v1;
}

uint64_t sub_1C98C86C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98C8344(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C98C86EC(uint64_t a1)
{
  v2 = sub_1C98CA2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98C8728(uint64_t a1)
{
  v2 = sub_1C98CA2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98C8764@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C98C8598(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C98C87B4()
{
  sub_1C9A93CC8();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C98C8854()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C98C88A8(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

void sub_1C98C88A8(char *a1@<X8>)
{
  sub_1C97BD318(0, &qword_1EC3C54A0);
  v2 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  v3 = sub_1C9A931E8();

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    [v5 setComputeUnits_];
    v6 = sub_1C9A931E8();

    if (v6)
    {
      v4 = 1;
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
      [v7 setComputeUnits_];
      v8 = sub_1C9A931E8();

      if (v8)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }
    }
  }

  *a1 = v4;
}

id sub_1C98C89D4(char a1, void *a2)
{
  v3 = a2;
  v5 = a2;
  v6 = sub_1C9A91558();
  v7 = sub_1C97DACE4(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  if (v5 == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  v12 = sub_1C98C6A38(v11);
  sub_1C98C73E0(a1, v10);
  if (v2)
  {
  }

  else
  {
    sub_1C97BD318(0, &qword_1EC3C54C0);
    v13 = v12;
    v3 = sub_1C9A06DD8(v10, v13);
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v15 = sub_1C9A91B58();
    sub_1C97BFF6C(v15, qword_1EC3D3108);
    v16 = sub_1C9A91B38();
    v17 = sub_1C9A92FC8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v18 = 136315394;
      v19 = sub_1C9A924F8();
      v21 = sub_1C9849140(v19, v20, &v26);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = sub_1C9A924F8();
      v24 = sub_1C9849140(v22, v23, &v26);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_1C9788000, v16, v17, "Sucessfuly created model from asset %s for execution on %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v25, -1, -1);
      MEMORY[0x1CCA93280](v18, -1, -1);
    }
  }

  return v3;
}

uint64_t sub_1C98C8C3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C9A91748();
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  result = sub_1C98C89D4(*a1, *(a1 + 1));
  if (!v2)
  {
    v13 = result;
    type metadata accessor for SNMLModelAdapter();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    sub_1C9A91738();
    v15 = sub_1C9A916F8();
    v17 = v16;
    (*(v7 + 8))(v11, v5);
    MEMORY[0x1CCA90230](32, 0xE100000000000000);
    v18 = sub_1C9A924F8();
    MEMORY[0x1CCA90230](v18);

    type metadata accessor for SNMLLockedModel();
    v19 = swift_allocObject();
    v20 = sub_1C98C9B90(v15, v17, v14, v19);
    type metadata accessor for AnySNMLModel();
    result = swift_allocObject();
    *(result + 16) = v20;
    *(result + 24) = &off_1F4937330;
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C98C8DE8()
{
  v38 = sub_1C9A91558();
  sub_1C97AE9C8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  v37 = v4 - v3;
  result = sub_1C99B89AC();
  v6 = 0;
  v7 = result + 64;
  v39 = result;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = (v8 + 63) >> 6;
  v36 = (v1 + 8);
  v33 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = v13 | (v6 << 6);
    v35 = *(*(v39 + 48) + v14);
    v15 = (*(v39 + 56) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];

    v34 = v17;
    v40 = v16;
    sub_1C9A91468();
    v18 = sub_1C9A91418();
    v20 = v19;
    (*v36)(v37, v38);
    v21 = 0;
    while (1)
    {
      v22 = byte_1F4929EE0[v21 + 32];
      if (byte_1F4929EE0[v21 + 32])
      {
        v23 = v22 == 1 ? 0x636C65646F6D6C6DLL : 0x656C646E7562;
        v24 = v22 == 1 ? 0xE800000000000000 : 0xE600000000000000;
      }

      else
      {
        v24 = 0xE700000000000000;
        v23 = 0x6C65646F6D6C6DLL;
      }

      if (v23 == v18 && v24 == v20)
      {
        break;
      }

      sub_1C98CA904();
      v26 = sub_1C9A93B18();

      if (v26)
      {
        goto LABEL_26;
      }

      if (++v21 == 3)
      {

        goto LABEL_27;
      }
    }

LABEL_26:

    if (v22 != 1)
    {
LABEL_27:

      continue;
    }

    v27 = v33;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C97B7C9C(0, *(v33 + 16) + 1, 1);
      v27 = v33;
    }

    v29 = *(v27 + 16);
    v28 = *(v27 + 24);
    if (v29 >= v28 >> 1)
    {
      v31 = sub_1C97CE0F4(v28);
      result = sub_1C97B7C9C(v31, v29 + 1, 1);
      v27 = v33;
    }

    *(v27 + 16) = v29 + 1;
    v33 = v27;
    v30 = v27 + 24 * v29;
    *(v30 + 32) = v35;
    *(v30 + 40) = v34;
    *(v30 + 48) = v40;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      v32 = sub_1C97E8F68(v33);

      return v32;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98C9104()
{
  v27 = sub_1C9A91558();
  sub_1C97AE9C8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97ABF90();
  v26 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v24 - v5;
  v6 = sub_1C98C8DE8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C97B7CBC(0, v7, 0);
    v8 = v29;
    v9 = (v1 + 8);
    v24 = v6;
    v10 = v6 + 48;
    do
    {
      v28 = *(v10 - 16);

      v11 = v25;
      sub_1C9A91468();
      v12 = v26;
      sub_1C9A91498();
      v13 = sub_1C9A91478();
      v15 = v14;

      v16 = *v9;
      v17 = v12;
      v18 = v27;
      (*v9)(v17, v27);
      v16(v11, v18);
      v29 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        v22 = sub_1C97CE0F4(v19);
        sub_1C97B7CBC(v22, v20 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v20 + 1;
      v21 = v8 + 24 * v20;
      *(v21 + 32) = v28;
      *(v21 + 40) = v13;
      *(v21 + 48) = v15;
      v10 += 24;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1C98C9308()
{
  v0 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  v1 = sub_1C97DACE4(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v66 - v3;
  v5 = sub_1C9A91558();
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v66 - v10;
  v11 = sub_1C97A2CEC(&qword_1EC3CB7D8);
  v12 = sub_1C97DACE4(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - v16;
  v18 = sub_1C97A2CEC(&unk_1EC3C76B0);
  sub_1C97AE9C8();
  v80 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v66 - v22;
  type metadata accessor for SoundAnalysisBundleMarker();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = objc_opt_self();
  v74 = sub_1C97BD318(0, &qword_1EC3C54B8);
  v23 = 0;
  v24 = 0;
  v81 = 0;
  v73 = "ure extractor class";
  v66 = v7;
  v67 = (v7 + 32);
  v25 = MEMORY[0x1E69E7CC0];
  v72 = xmmword_1C9A9DF30;
  v83 = v18;
  v84 = v5;
  v78 = v17;
  v79 = v15;
  do
  {
    LODWORD(v85) = v23;
    LODWORD(v82) = *(&unk_1F4929F08 + v24 + 32);
    if (v82)
    {
      v26 = 33;
    }

    else
    {
      v26 = 21;
    }

    sub_1C99BF4B4(v26);
    v28 = v27;
    sub_1C97A2CEC(&unk_1EC3C6E20);
    v29 = swift_allocObject();
    *(v29 + 16) = v72;
    *(v29 + 32) = [v75 bundleForClass_];
    v86 = v29;
    if (sub_1C99B8C4C())
    {
      MEMORY[0x1CCA90400]();
      v30 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v30 >> 1)
      {
        sub_1C97CE0F4(v30);
        sub_1C9A92808();
      }

      sub_1C9A92868();
    }

    v31 = v84;
    if (v28)
    {
      v32 = v4;
      v33 = v71;
      sub_1C98CA9BC();
      swift_bridgeObjectRetain_n();
      v34 = v81;
      sub_1C99B8448();
      v36 = v35;
      v81 = v34;
      swift_bridgeObjectRelease_n();

      v37 = v33;
      v4 = v32;
      sub_1C98C9E0C(v37, v32, &qword_1EC3C7FE0);
    }

    else
    {
      sub_1C98CA9BC();
    }

    v38 = v83;
    v40 = v78;
    v39 = v79;

    if (sub_1C97ABF20(v4, 1, v31) == 1)
    {
      sub_1C97F9D3C(v4, &qword_1EC3C7FE0);
      v41 = 1;
    }

    else
    {
      v42 = *v67;
      v43 = v68;
      (*v67)(v68, v4, v31);
      v44 = *(v38 + 48);
      *v39 = v82;
      v42(&v39[v44], v43, v31);
      v41 = 0;
    }

    sub_1C97ACC50(v39, v41, 1, v38);
    sub_1C98C9E0C(v39, v40, &qword_1EC3CB7D8);
    if (sub_1C97ABF20(v40, 1, v38) == 1)
    {
      sub_1C97F9D3C(v40, &qword_1EC3CB7D8);
    }

    else
    {
      sub_1C98C9E0C(v40, v77, &unk_1EC3C76B0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E6720();
        v25 = v47;
      }

      v46 = *(v25 + 16);
      v45 = *(v25 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1C97CE0F4(v45);
        sub_1C97E6720();
        v25 = v48;
      }

      *(v25 + 16) = v46 + 1;
      sub_1C98C9E0C(v77, v25 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v46, &unk_1EC3C76B0);
    }

    v23 = 1;
    v24 = 1u;
  }

  while ((v85 & 1) == 0);
  v49 = *(v25 + 16);
  if (v49)
  {
    v86 = MEMORY[0x1E69E7CC0];
    result = sub_1C97B81E0(0, v49, 0);
    v51 = 0;
    v52 = v86;
    v85 = v25 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v82 = (v66 + 8);
    while (v51 < *(v25 + 16))
    {
      v53 = v25;
      v54 = v69;
      sub_1C98C9D9C(v85 + *(v80 + 72) * v51, v69);
      v55 = *v54;
      v56 = v70;
      sub_1C9A91498();
      v57 = sub_1C9A91478();
      v59 = v58;
      (*v82)(v56, v84);
      result = sub_1C97F9D3C(v54, &unk_1EC3C76B0);
      v86 = v52;
      v61 = *(v52 + 16);
      v60 = *(v52 + 24);
      if (v61 >= v60 >> 1)
      {
        v63 = sub_1C97CE0F4(v60);
        result = sub_1C97B81E0(v63, v61 + 1, 1);
        v52 = v86;
      }

      *(v52 + 16) = v61 + 1;
      v62 = v52 + 24 * v61;
      *(v62 + 32) = v55;
      ++v51;
      *(v62 + 40) = v57;
      *(v62 + 48) = v59;
      v25 = v53;
      if (v49 == v51)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {

    v52 = MEMORY[0x1E69E7CC0];
LABEL_31:
    sub_1C97A2CEC(&unk_1EC3C69B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = 1;
    *(inited + 40) = sub_1C9A924A8();
    *(inited + 48) = v65;
    v86 = v52;
    sub_1C98D03BC(inited);
    return v86;
  }

  return result;
}

uint64_t sub_1C98C9A9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C98C9308();
  v6 = (v5 + 48);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v2 = *(v6 - 16);
    if (*(v6 - 1) != a1 || *v6 != a2)
    {
      v6 += 3;
      if ((sub_1C98CA970() & 1) == 0)
      {
        continue;
      }
    }

    return v2;
  }

  type metadata accessor for SNError();
  sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000033, 0x80000001C9AD8070);
  swift_willThrow();
  return v2;
}

void *sub_1C98C9B90(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  a4[4] = a3;
  a4[5] = &off_1F4937370;
  type metadata accessor for SafeLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  a4[6] = v7;
  a4[2] = a1;
  a4[3] = a2;
  v9 = qword_1EC3C5520;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9A91B58();
  sub_1C97BFF6C(v10, qword_1EC3D3108);

  v11 = sub_1C9A91B38();
  v12 = sub_1C9A92FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_1C9849140(a1, a2, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1C9788000, v11, v12, "Locked Model created with id %s", v13, 0xCu);
    sub_1C97A592C(v14);
    MEMORY[0x1CCA93280](v14, -1, -1);
    MEMORY[0x1CCA93280](v13, -1, -1);
  }

  else
  {
  }

  return a4;
}

unint64_t sub_1C98C9D48()
{
  result = qword_1EC3CB7C0;
  if (!qword_1EC3CB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB7C0);
  }

  return result;
}

uint64_t sub_1C98C9D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&unk_1EC3C76B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C98C9E0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C97A2CEC(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for SNMLModelFactory.ModelCacheKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SNMLModelFactory.ModelCacheKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C98CA00C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C97BE280(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98CA0E8()
{
  result = qword_1EC3CB7E0;
  if (!qword_1EC3CB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB7E0);
  }

  return result;
}

unint64_t sub_1C98CA140()
{
  result = qword_1EC3C55E0[0];
  if (!qword_1EC3C55E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C55E0);
  }

  return result;
}

unint64_t sub_1C98CA198()
{
  result = qword_1EC3CB7E8;
  if (!qword_1EC3CB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB7E8);
  }

  return result;
}

unint64_t sub_1C98CA1F0()
{
  result = qword_1EC3CB7F0;
  if (!qword_1EC3CB7F0)
  {
    sub_1C97AA4F0(&qword_1EC3CB7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB7F0);
  }

  return result;
}

unint64_t sub_1C98CA258()
{
  result = qword_1EC3C55A8;
  if (!qword_1EC3C55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C55A8);
  }

  return result;
}

unint64_t sub_1C98CA2AC()
{
  result = qword_1EC3CB808;
  if (!qword_1EC3CB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB808);
  }

  return result;
}

unint64_t sub_1C98CA300()
{
  result = qword_1EC3CB810;
  if (!qword_1EC3CB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB810);
  }

  return result;
}

unint64_t sub_1C98CA354()
{
  result = qword_1EC3CB820;
  if (!qword_1EC3CB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB820);
  }

  return result;
}

unint64_t sub_1C98CA3A8()
{
  result = qword_1EC3CB828;
  if (!qword_1EC3CB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB828);
  }

  return result;
}

unint64_t sub_1C98CA3FC()
{
  result = qword_1EC3CB830;
  if (!qword_1EC3CB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB830);
  }

  return result;
}

unint64_t sub_1C98CA450()
{
  result = qword_1EC3CB840;
  if (!qword_1EC3CB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB840);
  }

  return result;
}

unint64_t sub_1C98CA4A4()
{
  result = qword_1EC3CB848;
  if (!qword_1EC3CB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB848);
  }

  return result;
}

unint64_t sub_1C98CA4F8()
{
  result = qword_1EC3CB858;
  if (!qword_1EC3CB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB858);
  }

  return result;
}

_BYTE *sub_1C98CA54C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNMLModelFactory.ModelConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C98CA6D4()
{
  result = qword_1EC3CB860;
  if (!qword_1EC3CB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB860);
  }

  return result;
}