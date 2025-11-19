uint64_t storeEnumTagSinglePayload for ICMarkdownFlavor(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000511D8()
{
  result = qword_1000A6768;
  if (!qword_1000A6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6768);
  }

  return result;
}

unint64_t sub_100051230()
{
  result = qword_1000A6770;
  if (!qword_1000A6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6770);
  }

  return result;
}

unint64_t sub_100051288()
{
  result = qword_1000A6778;
  if (!qword_1000A6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6778);
  }

  return result;
}

uint64_t sub_1000512DC(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6950, &qword_10008D898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_1000554E0();
  sub_100085A78();
  v19 = *v3;
  v20 = *(v3 + 2);
  v18 = 0;
  sub_100055624();
  sub_100085888();
  if (!v2)
  {
    v19 = *(v3 + 24);
    v20 = *(v3 + 5);
    v18 = 1;
    sub_100085888();
    v11 = *(v3 + 6);
    v12 = *(v3 + 56);
    LOBYTE(v19) = 2;
    sub_100085878();
    *&v19 = *(v3 + 8);
    v18 = 3;
    sub_100005740(&qword_1000A6938, &qword_10008D890);
    sub_100055588(&qword_1000A6960, &qword_1000A6968);
    sub_100085888();
    v13 = *(v3 + 72);
    LOBYTE(v19) = 4;
    sub_100085858();
    v14 = *(v3 + 10);
    v15 = *(v3 + 88);
    LOBYTE(v19) = 5;
    sub_100085878();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000515B0()
{
  v1 = *v0;
  v2 = 0x53656E694C706F74;
  v3 = 0x746E656D67617266;
  v4 = 0x65526C6C61437369;
  if (v1 != 4)
  {
    v4 = 0x657079546C6C6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7972616D6D7573;
  if (v1 != 1)
  {
    v5 = 0x567972616D6D7573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100051694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054C30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000516BC(uint64_t a1)
{
  v2 = sub_1000554E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000516F8(uint64_t a1)
{
  v2 = sub_1000554E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100051734@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100054E4C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

void sub_1000517A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  __chkstk_darwin(v4);
  v7 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v68 - v12;
  v14 = sub_100084918();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = _s14AudioRecordingV8FragmentVMa(0);
  v19 = *(v69 + 20);
  v20 = sub_1000848B8();
  v21 = *(v20 - 8);
  v77 = *(v21 + 56);
  v78 = v20;
  v76 = v21 + 56;
  v77(a2 + v19, 1, 1);
  v22 = [a1 identity];
  sub_1000848F8();

  v23 = sub_1000848D8();
  v25 = v24;
  (*(v15 + 8))(v18, v14);
  *a2 = v23;
  a2[1] = v25;
  v71 = a2;
  v26 = a1;
  v27 = [a1 createdDate];
  if (v27)
  {
    v28 = v27;
    sub_100084888();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (v77)(v13, v29, 1, v78);
  sub_100040A94(v13, v71 + v19);
  v30 = [a1 transcript];
  v31 = [v30 allObjects];

  sub_100084BD8();
  v32 = sub_100085208();

  v33 = v75;
  if (v32 >> 62)
  {
    v34 = sub_100085718();
    v70 = v26;
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_28:

    v36 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v70 = v26;
  if (!v34)
  {
    goto LABEL_28;
  }

LABEL_6:
  v79 = _swiftEmptyArrayStorage;
  sub_10003BEF0(0, v34 & ~(v34 >> 63), 0);
  if (v34 < 0)
  {
    __break(1u);
    return;
  }

  v35 = 0;
  v72 = v32 & 0xC000000000000001;
  v36 = v79;
  do
  {
    if (v72)
    {
      v37 = sub_100085648();
    }

    else
    {
      v37 = *(v32 + 8 * v35 + 32);
    }

    v38 = v37;
    v39 = *(v33 + 20);
    (v77)(v7 + v39, 1, 1, v78);
    v40 = [v38 text];
    if (v40)
    {
      v41 = v40;
      v42 = sub_100085098();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v45 = v73;
    *v7 = v42;
    v7[1] = v44;
    v46 = [v38 timestamp];
    if (v46)
    {
      v47 = v46;
      [v47 doubleValue];
      sub_100084868();

      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    (v77)(v45, v48, 1, v78);
    sub_100040A94(v45, v7 + v39);
    v49 = [v38 duration];
    v50 = v49;
    if (v49)
    {
      [v49 doubleValue];
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    v33 = v75;
    v53 = v7 + *(v75 + 24);
    *v53 = v52;
    v53[8] = v50 == 0;
    v54 = [v38 speaker];
    if (v54)
    {
      v55 = v54;
      v56 = sub_100085098();
      v58 = v57;
    }

    else
    {

      v56 = 0;
      v58 = 0;
    }

    v59 = (v7 + *(v33 + 28));
    *v59 = v56;
    v59[1] = v58;
    v79 = v36;
    v61 = v36[2];
    v60 = v36[3];
    if (v61 >= v60 >> 1)
    {
      sub_10003BEF0(v60 > 1, v61 + 1, 1);
      v36 = v79;
    }

    ++v35;
    v36[2] = v61 + 1;
    sub_100053E78(v7, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v61, _s14AudioRecordingV17TranscriptSegmentVMa);
  }

  while (v34 != v35);

LABEL_29:
  v63 = v69;
  v62 = v70;
  *(v71 + *(v69 + 24)) = v36;
  v64 = [v62 transcriptVersion];
  v65 = v64;
  if (v64)
  {
    v66 = [v64 integerValue];
  }

  else
  {
    v66 = 0;
  }

  v67 = v71 + *(v63 + 28);
  *v67 = v66;
  v67[8] = v65 == 0;
}

id sub_100051DE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v78 = a4;
  v79 = a5;
  v83 = a2;
  v6 = _s14AudioRecordingV8FragmentVMa(0);
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v6 - 8);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v75 - v11;
  v13 = sub_100084918();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v86 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v75 - v18;
  v20 = [a1 document];
  sub_100084908();
  v21 = objc_allocWithZone(ICTTAudioRecording);
  isa = sub_1000848E8().super.isa;
  v23 = [v21 initWithDocument:v20 identity:isa];

  v80 = *(v14 + 8);
  v80(v19, v13);
  v76 = a1;
  v24 = [a1 document];
  v25 = [v24 replica];

  v81 = v14 + 8;
  v82 = v13;
  if (v25)
  {
    sub_1000848F8();

    v26 = *(v14 + 32);
    v26(v12, v19, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v27 = v86;
    v26(v86, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v28 = v86;
    sub_100084908();
    v29 = (*(v14 + 48))(v12, 1, v13);
    v27 = v28;
    if (v29 != 1)
    {
      sub_100053EE0(v12);
    }
  }

  v30 = v85;
  v31 = v85[1];
  v32 = v87;
  v33 = v79;
  if (v31)
  {
    v34 = v85[2];
    v35 = *v85;
    v36 = sub_10003E764(_swiftEmptyArrayStorage);
    v37 = sub_10001FFC0(v36, v83, v84, v33, v35, v31, v34);
    if (v32)
    {
LABEL_12:
      v80(v27, v82);

      return v23;
    }

    v38 = v37;

    v39 = objc_allocWithZone(ICTTMergeableAttributedString);
    v40 = sub_1000848E8().super.isa;
    v41 = [v39 initWithReplicaID:v40];

    [v23 setTopLineSummary:v41];
    v42 = [v23 topLineSummary];
    if (v42)
    {
      v43 = v42;
      v44.super.isa = v38;
      sub_100085498(v44, 0);
    }
  }

  v45 = v30[4];
  if (v45)
  {
    v46 = v30[5];
    v47 = v30[3];
    v48 = sub_10003E764(_swiftEmptyArrayStorage);
    v49 = sub_10001FFC0(v48, v83, v84, v33, v47, v45, v46);
    if (v32)
    {
      goto LABEL_12;
    }

    v50 = v49;

    v51 = objc_allocWithZone(ICTTMergeableAttributedString);
    v52 = sub_1000848E8().super.isa;
    v53 = [v51 initWithReplicaID:v52];

    [v23 setSummary:v53];
    v54 = [v23 summary];
    if (v54)
    {
      v55 = v54;
      v56.super.isa = v50;
      sub_100085498(v56, 0);
    }

    if (v30[7])
    {
      v57 = 0;
    }

    else
    {
      v57 = [objc_allocWithZone(NSNumber) initWithInteger:v30[6]];
    }

    [v23 setSummaryVersion:{v57, v75}];
  }

  if (v30[8])
  {
    v58 = v30[8];
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
  }

  v59 = v58[2];
  if (v59)
  {
    v87 = v32;
    v60 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v84 = v58;
    v61 = v58 + v60;
    v62 = *(v75 + 72);

    v64 = v76;
    v63 = v77;
    v65 = v23;
    v66 = v78;
    do
    {
      sub_1000544A8(v61, v63, _s14AudioRecordingV8FragmentVMa);
      v67 = sub_100053F48(v64, v66);
      sub_100054510(v63, _s14AudioRecordingV8FragmentVMa);
      v68 = [v65 fragments];
      [v68 addObject:v67];

      v61 += v62;
      --v59;
    }

    while (v59);

    v30 = v85;
    v23 = v65;
  }

  else
  {
  }

  v69 = *(v30 + 72);
  v70 = v82;
  v71 = v86;
  if (v69 == 2)
  {
    v72 = 0;
  }

  else
  {
    v72 = [objc_allocWithZone(NSNumber) initWithBool:v69 & 1];
  }

  [v23 setCallRecording:{v72, v75}];

  if ((v30[11] & 1) == 0)
  {
    v73 = [objc_allocWithZone(NSNumber) initWithInteger:v30[10]];
    [v23 setCallType:v73];
  }

  v80(v71, v70);
  return v23;
}

uint64_t sub_100052504(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6908, &qword_10008D880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100054B40();
  sub_100085A78();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  sub_100085848();
  if (!v2)
  {
    v13 = _s14AudioRecordingV8FragmentVMa(0);
    v14 = v13[5];
    v21 = 1;
    sub_1000848B8();
    sub_100054AF8(&qword_1000A5630, &type metadata accessor for Date);
    sub_100085888();
    v20 = *(v3 + v13[6]);
    v19[15] = 2;
    sub_100005740(&unk_1000A6898, &qword_10008D6E0);
    sub_100054B94(&qword_1000A6910, &qword_1000A6918);
    sub_100085888();
    v15 = v3 + v13[7];
    v16 = *v15;
    v17 = v15[8];
    v19[14] = 3;
    sub_100085878();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100052784@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v31 - v5;
  v6 = sub_100005740(&qword_1000A68E8, &qword_10008D878);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = _s14AudioRecordingV8FragmentVMa(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0;
  v14[1] = 0;
  v15 = v11[7];
  v16 = sub_1000848B8();
  v17 = *(*(v16 - 8) + 56);
  v34 = v15;
  v17(v14 + v15, 1, 1, v16);
  v18 = v11[8];
  *(v14 + v18) = 0;
  v19 = (v14 + v11[9]);
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100054B40();
  v36 = v9;
  v21 = v39;
  sub_100085A68();
  if (v21)
  {
    sub_100006304(a1);
  }

  else
  {
    v31 = v19;
    v32 = v18;
    v39 = a1;
    v23 = v35;
    v22 = v36;
    v44 = 0;
    *v14 = sub_100085798();
    v14[1] = v24;
    v43 = 1;
    sub_100054AF8(&qword_1000A55F8, &type metadata accessor for Date);
    sub_1000857D8();
    sub_100040A94(v23, v14 + v34);
    sub_100005740(&unk_1000A6898, &qword_10008D6E0);
    v42 = 2;
    sub_100054B94(&qword_1000A68F8, &qword_1000A6900);
    sub_1000857D8();
    v26 = v37;
    *(v14 + v32) = v40;
    v41 = 3;
    v27 = sub_1000857C8();
    v29 = v28;
    (*(v26 + 8))(v22, v38);
    v30 = v31;
    *v31 = v27;
    *(v30 + 8) = v29 & 1;
    sub_1000544A8(v14, v33, _s14AudioRecordingV8FragmentVMa);
    sub_100006304(v39);
  }

  return sub_100054510(v14, _s14AudioRecordingV8FragmentVMa);
}

unint64_t sub_100052BB4()
{
  v1 = 0x696669746E656469;
  v2 = 0x697263736E617274;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x4164657461657263;
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

uint64_t sub_100052C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100055B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100052C64(uint64_t a1)
{
  v2 = sub_100054B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100052CA0(uint64_t a1)
{
  v2 = sub_100054B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100052D0C(void *a1)
{
  v2 = v1;
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100084918();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_100084BD8();
  v15 = a1;
  sub_100084908();
  v16 = sub_100084BC8();
  if (v2[1])
  {
    v17 = *v2;
    v18 = sub_100085068();
  }

  else
  {
    v18 = 0;
  }

  [v16 setText:v18];

  v19 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  sub_100005888(v2 + v19[5], v12, &qword_1000A5490, &qword_10008CD80);
  v20 = 0;
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_100084878();
    v20 = [objc_allocWithZone(NSNumber) initWithDouble:v21];
    (*(v5 + 8))(v8, v4);
  }

  [v16 setTimestamp:v20];

  v22 = (v2 + v19[6]);
  if (v22[1])
  {
    v23 = 0;
  }

  else
  {
    v23 = [objc_allocWithZone(NSNumber) initWithDouble:*v22];
  }

  [v16 setDuration:v23];

  v24 = (v2 + v19[7]);
  if (v24[1])
  {
    v25 = *v24;
    v26 = sub_100085068();
  }

  else
  {
    v26 = 0;
  }

  [v16 setSpeaker:v26];

  return v16;
}

uint64_t sub_100053028(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A68E0, &qword_10008D870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100054AA4();
  sub_100085A78();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_100085848();
  if (!v2)
  {
    v13 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
    v14 = v13[5];
    v22[14] = 1;
    sub_1000848B8();
    sub_100054AF8(&qword_1000A5630, &type metadata accessor for Date);
    sub_100085888();
    v15 = v3 + v13[6];
    v16 = *v15;
    v17 = v15[8];
    v22[13] = 2;
    sub_100085868();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    v22[12] = 3;
    sub_100085848();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100053248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v31 - v5;
  v37 = sub_100005740(&qword_1000A68D0, &qword_10008D868);
  v34 = *(v37 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v37);
  v8 = &v31 - v7;
  v9 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  v13[1] = 0;
  v14 = v10[7];
  v15 = sub_1000848B8();
  v16 = *(*(v15 - 8) + 56);
  v33 = v14;
  v16(v13 + v14, 1, 1, v15);
  v17 = (v13 + v10[8]);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (v13 + v10[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100054AA4();
  v36 = v8;
  v20 = v38;
  sub_100085A68();
  if (v20)
  {
    sub_100006304(a1);
  }

  else
  {
    v38 = v17;
    v21 = v34;
    v22 = v35;
    v42 = 0;
    *v13 = sub_100085798();
    v13[1] = v23;
    v41 = 1;
    sub_100054AF8(&qword_1000A55F8, &type metadata accessor for Date);
    sub_1000857D8();
    sub_100040A94(v22, v13 + v33);
    v40 = 2;
    v24 = sub_1000857B8();
    v25 = v38;
    *v38 = v24;
    *(v25 + 8) = v26 & 1;
    v39 = 3;
    v28 = sub_100085798();
    v30 = v29;
    (*(v21 + 8))(v36, v37);
    *v18 = v28;
    v18[1] = v30;
    sub_1000544A8(v13, v32, _s14AudioRecordingV17TranscriptSegmentVMa);
    sub_100006304(0);
  }

  return sub_100054510(v13, _s14AudioRecordingV17TranscriptSegmentVMa);
}

uint64_t sub_1000535EC()
{
  v1 = 1954047348;
  v2 = 0x6E6F697461727564;
  if (*v0 != 2)
  {
    v2 = 0x72656B61657073;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
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

uint64_t sub_100053664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100055C88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100053698(uint64_t a1)
{
  v2 = sub_100054AA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000536D4(uint64_t a1)
{
  v2 = sub_100054AA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100053740(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v71 = a4;
  v7 = _s14AudioRecordingV8FragmentVMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = 1;
  v87 = 1;
  v12 = [a1 fragments];
  v13 = [v12 count];

  if (v13 < 1)
  {
    sub_100030518(a3);

    v70 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v72 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v29 = v90;
    LODWORD(v73) = 2;
    LOBYTE(v30) = v87;
    v31 = 1;
LABEL_33:
    v57 = v72;
    v75 = v72;
    v76 = v28;
    v77 = v27;
    v78 = v26;
    v79 = v25;
    v80 = v24;
    v81 = v23;
    LOBYTE(v82) = v29;
    *(&v82 + 1) = *v89;
    HIDWORD(v82) = *&v89[3];
    v83 = v22;
    LOBYTE(v84) = v73;
    *(&v84 + 1) = *v88;
    HIDWORD(v84) = *&v88[3];
    v58 = v70;
    v85 = v70;
    v86 = v30;
    sub_100053DF0(&v75);
    v59 = v71;
    *v71 = v57;
    v59[1] = v31;
    v59[2] = v27;
    v59[3] = v26;
    v59[4] = v25;
    v59[5] = v24;
    v60 = v69;
    v59[6] = v23;
    v59[7] = v60;
    v61 = v68;
    v59[8] = v22;
    v59[9] = v61;
    v59[10] = v58;
    *(v59 + 88) = v67;
    return;
  }

  v14 = [a1 topLineSummary];
  v15 = a1;
  if (v14)
  {
    v16 = v14;
    v17 = a2;
    sub_100011A6C(a3, &v75);
    v18 = v17;
    v15 = a1;
    v19 = sub_10002FF98(v16, v18, a3);
    v62 = v20;
    v63 = v21;
  }

  else
  {
    v19 = 0;
    v62 = 0;
    v63 = 0;
  }

  v32 = [v15 summary];
  if (v32)
  {
    v64 = sub_10002FF98(v32, a2, a3);
    v65 = v33;
    v66 = v34;
  }

  else
  {
    sub_100030518(a3);
    v64 = 0;
    v65 = 0;
    v66 = 0;
  }

  v35 = [v15 summaryVersion];
  v36 = v35;
  if (v35)
  {
    v69 = [v35 integerValue];
  }

  else
  {
    v69 = 0;
  }

  v90 = v36 == 0;
  v37 = [v15 fragments];
  v38 = [v37 allObjects];

  sub_1000853E8();
  v39 = sub_100085208();

  if (v39 >> 62)
  {
    v40 = sub_100085718();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v19;
  v70 = v15;
  if (v40)
  {
    v75 = _swiftEmptyArrayStorage;
    sub_10003BD24(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v73 = a2;
    v41 = 0;
    v22 = v75;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = sub_100085648();
      }

      else
      {
        v42 = *(v39 + 8 * v41 + 32);
      }

      sub_1000517A0(v42, v11);
      v75 = v22;
      v44 = v22[2];
      v43 = v22[3];
      if (v44 >= v43 >> 1)
      {
        sub_10003BD24(v43 > 1, v44 + 1, 1);
        v22 = v75;
      }

      ++v41;
      v22[2] = v44 + 1;
      sub_100053E78(v11, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v44, _s14AudioRecordingV8FragmentVMa);
    }

    while (v40 != v41);

    v19 = v72;
    a2 = v73;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v45 = [v70 callRecording];
  v46 = v66;
  v25 = v65;
  v47 = v64;
  if (v45)
  {
    v48 = v45;
    LODWORD(v73) = [v45 BOOLValue];
  }

  else
  {
    LODWORD(v73) = 2;
  }

  v49 = v69;
  v50 = v70;
  v51 = [v70 callType];
  if (!v51)
  {

    v55 = 0;
    goto LABEL_32;
  }

  v52 = v19;
  v53 = v51;
  v54 = [v51 unsignedIntegerValue];

  v55 = v54;
  if ((v54 & 0x8000000000000000) == 0)
  {
    v87 = 0;
    v19 = v52;
LABEL_32:
    v70 = v55;
    v56 = v62;
    v75 = v19;
    v76 = v62;
    v77 = v63;
    v78 = v47;
    v79 = v25;
    v80 = v46;
    v81 = v49;
    v29 = v90;
    LOBYTE(v82) = v90;
    HIDWORD(v82) = *&v89[3];
    *(&v82 + 1) = *v89;
    v83 = v22;
    LOBYTE(v84) = v73;
    HIDWORD(v84) = *&v88[3];
    *(&v84 + 1) = *v88;
    v27 = v63;
    v85 = v55;
    v23 = v49;
    v26 = v47;
    v30 = v87;
    v86 = v87;
    v69 = v82;
    v24 = v46;
    v68 = v84;
    sub_100053E20(&v75, v74);
    v28 = v56;
    v31 = v56;
    v67 = v30;
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_100053E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100053EE0(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100053F48(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v47 - v11;
  v13 = sub_100084918();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v47 - v23;
  v25 = v3[1];
  if (v25 && *(a2 + 16) && (v26 = sub_100039138(*v3, v25), (v27 & 1) != 0) && (v28 = [*(*(a2 + 56) + 8 * v26) identifier]) != 0)
  {
    v29 = v28;
    v49 = sub_100085098();

    sub_1000848C8();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v14 + 56))(v24, 1, 1, v13);
  }

  sub_100005888(v24, v22, &qword_1000A5C20, &unk_10008B840);
  v30 = *(v14 + 48);
  if (v30(v22, 1, v13) == 1)
  {
    sub_100084908();
    if (v30(v22, 1, v13) != 1)
    {
      sub_100053EE0(v22);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v22, v13);
  }

  sub_1000853E8();
  v31 = v51;
  v32 = sub_1000853D8();
  v33 = _s14AudioRecordingV8FragmentVMa(0);
  sub_100005888(v3 + v33[5], v12, &qword_1000A5490, &qword_10008CD80);
  v34 = sub_1000848B8();
  v35 = *(v34 - 8);
  isa = 0;
  if ((*(v35 + 48))(v12, 1, v34) != 1)
  {
    isa = sub_100084848().super.isa;
    (*(v35 + 8))(v12, v34);
  }

  [v32 setCreatedDate:isa];

  if (*(v3 + v33[6]))
  {
    v37 = *(v3 + v33[6]);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v38 = v37[2];
  if (v38)
  {
    v48 = v33;
    v49 = v24;
    v51 = v3;
    v39 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v47[1] = v37;
    v40 = v37 + v39;
    v41 = *(v50 + 72);

    do
    {
      sub_1000544A8(v40, v8, _s14AudioRecordingV17TranscriptSegmentVMa);
      v42 = sub_100052D0C(v31);
      sub_100054510(v8, _s14AudioRecordingV17TranscriptSegmentVMa);
      v43 = [v32 transcript];
      [v43 addObject:v42];

      v40 += v41;
      --v38;
    }

    while (v38);

    v3 = v51;
    v33 = v48;
    v24 = v49;
  }

  else
  {
  }

  v44 = v3 + v33[7];
  if (v44[8])
  {
    v45 = 0;
  }

  else
  {
    v45 = [objc_allocWithZone(NSNumber) initWithInteger:*v44];
  }

  [v32 setTranscriptVersion:v45];

  sub_100053EE0(v24);
  return v32;
}

uint64_t sub_1000544A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100054510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000545A0()
{
  sub_1000341B8(319, &qword_1000A5538);
  if (v0 <= 0x3F)
  {
    sub_100054660();
    if (v1 <= 0x3F)
    {
      sub_1000341B8(319, &unk_1000A67F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100054660()
{
  if (!qword_1000A5518)
  {
    sub_1000848B8();
    v0 = sub_1000854E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5518);
    }
  }
}

uint64_t sub_1000546CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000547A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100054858()
{
  sub_1000341B8(319, &qword_1000A5538);
  if (v0 <= 0x3F)
  {
    sub_100054660();
    if (v1 <= 0x3F)
    {
      sub_10005492C();
      if (v2 <= 0x3F)
      {
        sub_1000341B8(319, &qword_1000A5E50);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10005492C()
{
  if (!qword_1000A6890)
  {
    sub_100011888(&unk_1000A6898, &qword_10008D6E0);
    v0 = sub_1000854E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A6890);
    }
  }
}

uint64_t sub_100054990(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000549A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000549CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100054A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100054AA4()
{
  result = qword_1000A68D8;
  if (!qword_1000A68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A68D8);
  }

  return result;
}

uint64_t sub_100054AF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100054B40()
{
  result = qword_1000A68F0;
  if (!qword_1000A68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A68F0);
  }

  return result;
}

uint64_t sub_100054B94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&unk_1000A6898, &qword_10008D6E0);
    sub_100054AF8(a2, _s14AudioRecordingV17TranscriptSegmentVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100054C30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656E694C706F74 && a2 == 0xEE007972616D6D75;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567972616D6D7573 && a2 == 0xEE006E6F69737265 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D67617266 && a2 == 0xE900000000000073 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65526C6C61437369 && a2 == 0xEF676E6964726F63 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546C6C6163 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100054E4C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6920, &qword_10008D888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v64 = 1;
  v61 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v40 = a1;
  sub_10000626C(a1, v10);
  sub_1000554E0();
  sub_100085A68();
  if (v2)
  {
    v65 = v2;
    v39 = 0;
    sub_100006304(v40);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = v64;
    *v55 = *v63;
    *&v55[3] = *&v63[3];
    v56 = v39;
    v57 = 2;
    *v58 = *v62;
    *&v58[3] = *&v62[3];
    v59 = 0;
    v60 = v61;
    return sub_100053DF0(&v47);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_100055534();
    sub_1000857D8();
    v38 = v47;
    v36 = v48;
    v37 = v49;
    LOBYTE(v41) = 1;
    sub_1000857D8();
    v39 = a2;
    v14 = v47;
    v13 = v48;
    v15 = v49;
    LOBYTE(v47) = 2;
    v34 = sub_1000857C8();
    v32 = v14;
    v33 = v13;
    v35 = v15;
    v64 = v16 & 1;
    sub_100005740(&qword_1000A6938, &qword_10008D890);
    LOBYTE(v41) = 3;
    sub_100055588(&qword_1000A6940, &qword_1000A6948);
    sub_1000857D8();
    v17 = v47;
    LOBYTE(v47) = 4;
    HIDWORD(v31) = sub_1000857A8();
    v18 = v17;
    v46 = 5;
    v19 = sub_1000857C8();
    v65 = 0;
    v21 = v20;
    v22 = v19;
    (*(v6 + 8))(v9, v5);
    v21 &= 1u;
    v61 = v21;
    *&v41 = v38;
    v23 = v36;
    *(&v41 + 1) = v36;
    v24 = v37;
    *&v42 = v37;
    v25 = v32;
    *(&v42 + 1) = v32;
    v26 = v33;
    *&v43 = v33;
    *(&v43 + 1) = v35;
    *&v44 = v34;
    v27 = v64;
    BYTE8(v44) = v64;
    *v45 = v17;
    LOBYTE(v17) = BYTE4(v31);
    v45[8] = BYTE4(v31);
    *&v45[16] = v22;
    v45[24] = v21;
    sub_100053E20(&v41, &v47);
    sub_100006304(v40);
    v47 = v38;
    v48 = v23;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    v52 = v35;
    v53 = v34;
    v54 = v27;
    v56 = v18;
    v57 = v17;
    v59 = v22;
    v60 = v21;
    result = sub_100053DF0(&v47);
    v28 = v44;
    v29 = v39;
    v39[2] = v43;
    v29[3] = v28;
    v29[4] = *v45;
    *(v29 + 73) = *&v45[9];
    v30 = v42;
    *v29 = v41;
    v29[1] = v30;
  }

  return result;
}

unint64_t sub_1000554E0()
{
  result = qword_1000A6928;
  if (!qword_1000A6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6928);
  }

  return result;
}

unint64_t sub_100055534()
{
  result = qword_1000A6930;
  if (!qword_1000A6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6930);
  }

  return result;
}

uint64_t sub_100055588(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6938, &qword_10008D890);
    sub_100054AF8(a2, _s14AudioRecordingV8FragmentVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100055624()
{
  result = qword_1000A6958;
  if (!qword_1000A6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6958);
  }

  return result;
}

uint64_t sub_10005569C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100055730(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000557F4()
{
  result = qword_1000A6970;
  if (!qword_1000A6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6970);
  }

  return result;
}

unint64_t sub_10005584C()
{
  result = qword_1000A6978;
  if (!qword_1000A6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6978);
  }

  return result;
}

unint64_t sub_1000558A4()
{
  result = qword_1000A6980;
  if (!qword_1000A6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6980);
  }

  return result;
}

unint64_t sub_1000558FC()
{
  result = qword_1000A6988;
  if (!qword_1000A6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6988);
  }

  return result;
}

unint64_t sub_100055954()
{
  result = qword_1000A6990;
  if (!qword_1000A6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6990);
  }

  return result;
}

unint64_t sub_1000559AC()
{
  result = qword_1000A6998;
  if (!qword_1000A6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6998);
  }

  return result;
}

unint64_t sub_100055A04()
{
  result = qword_1000A69A0;
  if (!qword_1000A69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A69A0);
  }

  return result;
}

unint64_t sub_100055A5C()
{
  result = qword_1000A69A8;
  if (!qword_1000A69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A69A8);
  }

  return result;
}

unint64_t sub_100055AB4()
{
  result = qword_1000A69B0;
  if (!qword_1000A69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A69B0);
  }

  return result;
}

uint64_t sub_100055B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000871B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100055C88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656B61657073 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100055E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100084918();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  sub_1000848F8();
  v13(v11, a3, a4);
  return (*(v8 + 8))(v11, v7);
}

id sub_100055F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a3;
  v4 = v3;
  v6 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v93 = &v84 - v8;
  v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v84 - v13;
  v15 = sub_1000848B8();
  v91 = *(v15 - 8);
  v16 = *(v91 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v84 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v84 - v24;
  __chkstk_darwin(v23);
  v27 = &v84 - v26;
  ObjectType = swift_getObjectType();
  v29 = v94;
  v30 = (*(a2 + 40))(v4[1], v4[2], v95, ObjectType, a2);
  v31 = v30;
  if (!v29)
  {
    v86 = v25;
    v87 = v27;
    v32 = v91;
    v88 = v19;
    v89 = 0;
    v94 = v30;
    v33 = v4[9];
    v85 = v22;
    if (v33)
    {
      v34 = v4[8];
      v35 = sub_100085068();
    }

    else
    {
      v35 = 0;
    }

    v36 = v32;
    [v94 setTypeUTI:v35];

    v37 = type metadata accessor for ICAttachmentArchiveModel();
    sub_100005888(v4 + v37[12], v14, &qword_1000A5490, &qword_10008CD80);
    v38 = *(v32 + 48);
    v39 = v15;
    v40 = v38(v14, 1, v15);
    v90 = v4;
    if (v40 == 1)
    {
      v41 = v86;
      sub_1000848A8();
      v42 = v38(v14, 1, v39) == 1;
      v43 = v14;
      v44 = v95;
      v45 = v87;
      v46 = v38;
      if (!v42)
      {
        sub_1000058F0(v43, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      v41 = v86;
      (*(v36 + 32))(v86, v14, v39);
      v44 = v95;
      v45 = v87;
      v46 = v38;
    }

    v47 = *(v44 + 8);
    sub_100084858();
    v48 = *(v36 + 8);
    v48(v41, v39);
    v49.super.isa = sub_100084848().super.isa;
    v50 = v45;
    isa = v49.super.isa;
    v48(v50, v39);
    [v94 setCreationDate:isa];

    v52 = v92;
    sub_100005888(v90 + v37[13], v92, &qword_1000A5490, &qword_10008CD80);
    if (v46(v52, 1, v39) == 1)
    {
      v53 = v88;
      sub_1000848A8();
      v54 = v46(v52, 1, v39);
      v55 = v93;
      if (v54 != 1)
      {
        sub_1000058F0(v52, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      v53 = v88;
      (*(v36 + 32))(v88, v52, v39);
      v55 = v93;
    }

    v56 = v85;
    sub_100084858();
    v48(v53, v39);
    v57 = sub_100084848().super.isa;
    v48(v56, v39);
    v31 = v94;
    [v94 setModificationDate:v57];

    v58 = v90;
    v59 = (v90 + v37[15]);
    if (v59[1])
    {
      v60 = *v59;
      v61 = sub_100085068();
    }

    else
    {
      v61 = 0;
    }

    [v31 setTitle:v61];

    v62 = v58 + v37[16];
    v63 = 0.0;
    v64 = 0.0;
    v65 = 0.0;
    v66 = 0.0;
    if ((*(v62 + 32) & 1) == 0)
    {
      v65 = *(v62 + 16);
      v66 = *(v62 + 24);
      v63 = *v62;
      v64 = *(v62 + 8);
    }

    [v31 setBounds:{v63, v64, v65, v66}];
    v67 = v58 + v37[17];
    if ((*(v67 + 64) & 1) == 0)
    {
      v69 = *(v67 + 48);
      v68 = *(v67 + 56);
      v71 = *(v67 + 32);
      v70 = *(v67 + 40);
      v73 = *(v67 + 16);
      v72 = *(v67 + 24);
      v74 = *(v67 + 8);
      [v31 setCroppingQuadTopLeftX:*v67];
      [v31 setCroppingQuadTopLeftY:v74];
      [v31 setCroppingQuadTopRightX:v73];
      [v31 setCroppingQuadTopRightY:v72];
      [v31 setCroppingQuadBottomRightX:v71];
      [v31 setCroppingQuadBottomRightY:v70];
      [v31 setCroppingQuadBottomLeftX:v69];
      [v31 setCroppingQuadBottomLeftY:v68];
    }

    [v31 setOrientation:word_10008E3D6[*(v58 + v37[18])]];
    [v31 setImageFilterType:word_10008E3E0[*(v58 + v37[19])]];
    sub_100005888(v58 + v37[20], v55, &qword_1000A56E8, &qword_10008D350);
    v75 = sub_1000847C8();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v55, 1, v75) == 1)
    {
      sub_1000058F0(v55, &qword_1000A56E8, &qword_10008D350);
      v77 = 0;
    }

    else
    {
      sub_1000846A8();
      (*(v76 + 8))(v55, v75);
      v31 = v94;
      v77 = sub_100085068();
    }

    [v31 setUrlString:v77];

    v78 = (v58 + v37[21]);
    if (v78[1] >> 60 == 15)
    {
      v79 = 0;
    }

    else
    {
      v80 = *v78;
      v79 = sub_1000847F8().super.isa;
    }

    [v31 setSynapseData:v79];

    v81 = *(v58 + v37[27]);
    if (v81 <= 1)
    {
      v82 = v81 != 0;
LABEL_30:
      [v31 setPreferredViewSize:v82];
      return v31;
    }

    if (v81 == 2)
    {
      v82 = 2;
      goto LABEL_30;
    }
  }

  return v31;
}

void sub_100056734(void *a1, __objc2_class_ro *a2, uint64_t a3, char *a4, __objc2_class_ro *a5, void (*a6)(char *, uint64_t))
{
  v160 = a6;
  v154 = a5;
  v156 = a4;
  v155 = a2;
  v158 = sub_1000847C8();
  v157 = *(v158 - 8);
  base_props = v157->base_props;
  v9 = __chkstk_darwin(v158);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v146 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = (&v146 - v16);
  v18 = __chkstk_darwin(v15);
  v20 = &v146 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v146 - v22;
  __chkstk_darwin(v21);
  v25 = &v146 - v24;
  v26 = [a1 attachmentModel];
  objc_opt_self();
  v162 = swift_dynamicCastObjCClass();
  if (!v162)
  {
    v149 = v23;
    v150 = v17;
    v147 = v14;
    v151 = a1;
    v146 = v11;
    v153 = v25;
    v152 = v20;
    v42 = v157;
    objc_opt_self();
    v162 = swift_dynamicCastObjCClass();
    if (v162)
    {
      v43 = v159 + *(type metadata accessor for ICAttachmentArchiveModel() + 56);
      v44 = *(v43 + 1);
      v148 = v26;
      if (v44 >> 60 == 15)
      {
        v45 = v26;
        isa = 0;
      }

      else
      {
        v85 = *v43;
        v86 = v26;
        isa = sub_1000847F8().super.isa;
      }

      v87 = v158;
      v88 = v149;
      [v151 setMergeableData:isa];

      v89 = v162;
      v90 = [v162 paperBundleDatabaseSubdirectoryURL];
      sub_100084768();

      sub_1000846E8();
      v91 = *&v42->ivar_base_size;
      v91(v88, v87);
      sub_100084718();

      v92 = [v89 paperBundleAssetsSubdirectoryURL];
      sub_100084768();

      sub_1000846E8();
      v160 = v91;
      v91(v88, v87);
      v93 = v89;
      sub_100084718();

      swift_getObjectType();
      v94 = [v89 paperBundleURL];
      v95 = v150;
      sub_100084768();

      v96 = v161;
      sub_1000849C8();
      if (v96)
      {
        v97 = v158;
        v98 = v160;
        v102 = v148;
        v160(v95, v158);
        v98(v152, v97);
        v98(v153, v97);
        if (qword_1000A5430 != -1)
        {
          swift_once();
        }

        v103 = sub_100084FB8();
        sub_10000B614(v103, qword_1000A69B8);
        swift_errorRetain();
        v104 = sub_100084FA8();
        v105 = sub_100085378();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v169 = v107;
          *v106 = 136315138;
          swift_getErrorValue();
          v108 = sub_100085988();
          v110 = sub_100038A4C(v108, v109, &v169);

          *(v106 + 4) = v110;
          _os_log_impl(&_mh_execute_header, v104, v105, "Cannot import paper attachment database and assets — skipping {error: %s}", v106, 0xCu);
          sub_100006304(v107);
        }

        else
        {
        }
      }

      else
      {
        v99 = v160;
        v160(v95, v158);
        v100 = [v93 paperBundleDatabaseSubdirectoryURL];
        v101 = v147;
        sub_100084768();

        sub_100084A18();
        v99(v101, v158);
        v132 = [v93 paperBundleAssetsSubdirectoryURL];
        sub_100084768();

        sub_100084A18();
        v145 = v158;
        v99(v146, v158);
        v99(v152, v145);
        v99(v153, v145);
      }

      return;
    }

    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (!v69)
    {
      v125 = v161;
      objc_opt_self();
      v126 = swift_dynamicCastObjCClass();
      if (!v126)
      {

        v139 = v159 + *(type metadata accessor for ICAttachmentArchiveModel() + 56);
        if (*(v139 + 1) >> 60 != 15)
        {
          v140 = *v139;
          v126 = sub_1000847F8().super.isa;
        }

        v141 = v151;
        [v151 setMergeableData:v126];

        [v141 attachmentModel];
        return;
      }

      v54 = v26;
      v57 = v126;
      v127 = [(__objc2_class_ro *)v126 audioDocument];
      if (v127)
      {
        v128 = v127;
        v26 = [v127 document];

        v129 = v159 + *(type metadata accessor for ICAttachmentArchiveModel() + 112);
        v130 = *(v129 + 1);
        if (v130 == 1)
        {
          v131 = 0;
        }

        else
        {
          v163 = *v129;
          v164 = v130;
          v142 = *(v129 + 4);
          v167 = *(v129 + 3);
          *v168 = v142;
          *&v168[9] = *(v129 + 73);
          v143 = *(v129 + 1);
          v166 = *(v129 + 2);
          v165 = v143;
          v144 = [(__objc2_class_ro *)v126 audioDocument];
          if (!v144)
          {
LABEL_121:
            __break(1u);
            return;
          }

          v17 = v144;
          v55 = sub_100051DE8(v144, v151, &off_10009EA20, a3, v160);
          if (v125)
          {

            return;
          }

LABEL_106:
          v131 = v55;
        }

        [(__objc2_class_ro *)v26 setRootObject:v131];

        swift_unknownObjectRelease();
        [(__objc2_class_ro *)v57 writeMergeableData];

        return;
      }

LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v70 = v69;
    v71 = type metadata accessor for ICAttachmentArchiveModel();
    v72 = *(&v159->flags + *(v71 + 92));
    if (!v72)
    {
      return;
    }

    v152 = v71;
    v154 = v26;
    v73 = [v70 table];
    v74 = [v73 rowCount];

    if ((v74 & 0x8000000000000000) != 0)
    {
LABEL_116:
      __break(1u);
    }

    else
    {
      for (; v74; --v74)
      {
        v75 = [v70 table];
        [v75 removeRowAtIndex:0];
      }

      v76 = [v70 table];
      v77 = [v76 columnCount];

      if ((v77 & 0x8000000000000000) == 0)
      {
        for (; v77; --v77)
        {
          v78 = [v70 table];
          [v78 removeColumnAtIndex:0];
        }

        v79 = [v70 table];

        v80 = [v70 table];
        v81 = v80;
        v155 = *(v72 + 2);
        if (!v155)
        {

LABEL_95:
          v134 = *(&v159->flags + *(v152 + 24));
          if (v134 != 2)
          {
            v135 = v134 & 1;
            v136 = [v70 table];
            v137 = [v136 isRightToLeft];

            if (v137 != v135)
            {
              v138 = [v70 table];
              [v138 reverseColumnDirection];
            }
          }

          [v70 writeMergeableData];

          return;
        }

        v82 = *(v72 + 4);
        v156 = v72 + 32;

        v83 = 0;
        v84 = v160;
        v153 = v72;
        while (1)
        {
          if (v83 >= *(v72 + 2))
          {
            __break(1u);
            goto LABEL_116;
          }

          v111 = *(*&v156[8 * v83] + 16);

          v162 = v111;
          if (v111)
          {
            break;
          }

LABEL_80:
          v83 = (v83 + 1);

          v72 = v153;
          if (v83 == v155)
          {
            goto LABEL_95;
          }
        }

        v113 = 0;
        v30 = v112 + 48;
        v157 = v83;
        v158 = v112;
        while (1)
        {
          if (v113 >= *(v112 + 16))
          {
            goto LABEL_113;
          }

          v115 = *(v30 - 16);
          v114 = *(v30 - 8);
          v116 = *v30;

          v117 = v70;
          v118 = [v70 attachment];
          if (!v118)
          {
            goto LABEL_118;
          }

          v119 = v118;
          v120 = sub_10003E764(_swiftEmptyArrayStorage);
          v121 = v161;
          v122 = sub_10001FFC0(v120, v119, &off_10009EA20, v84, v115, v114, v116);
          if (v121)
          {

            v133 = v154;

            return;
          }

          v123 = v122;
          v161 = 0;

          v70 = v117;
          v124 = [v117 table];
          v83 = v157;
          [v124 setAttributedString:v123 columnIndex:v113 rowIndex:v157];

          v30 += 24;
          ++v113;
          v84 = v160;
          v112 = v158;
          if (v162 == v113)
          {
            goto LABEL_80;
          }
        }
      }
    }

    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v27 = v26;
  v28 = [a1 managedObjectContext];
  if (!v28)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v160 = v28;
  v29 = *(&v159->flags + *(type metadata accessor for ICAttachmentArchiveModel() + 100));
  v30 = _swiftEmptyArrayStorage;
  v31 = v162;
  if (v29)
  {
    v169 = _swiftEmptyArrayStorage;
    v32 = *(v29 + 16);
    v158 = v27;
    if (v32)
    {
      v26 = 0;
      v33 = (v29 + 40);
      v157 = (v32 - 1);
      v34 = _swiftEmptyArrayStorage;
      v159 = (v29 + 40);
      while (1)
      {
        v35 = v33 + 16 * v26;
        v36 = v26;
        while (1)
        {
          if (v36 >= *(v29 + 16))
          {
            goto LABEL_110;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_7;
          }

          v37 = *(v35 - 1);
          v17 = *v35;

          v30 = a3;
          v38 = sub_100039138(v37, v17);
          if (v39)
          {
            break;
          }

LABEL_7:
          v36 = (v36 + 1);
          v35 += 16;
          if (v32 == v36)
          {
            v27 = v158;
            goto LABEL_20;
          }
        }

        v40 = *(*(a3 + 56) + 8 * v38);

        v30 = &v169;
        sub_1000851F8();
        if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100085228();
        }

        v26 = (&v36->flags + 1);
        sub_100085258();
        v34 = v169;
        v27 = v158;
        v33 = v159;
        if (v157 == v36)
        {
LABEL_20:
          if (!(v34 >> 62))
          {
            goto LABEL_21;
          }

LABEL_60:
          v30 = sub_100085718();
          goto LABEL_22;
        }
      }
    }

    v34 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_60;
    }

LABEL_21:
    v30 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
    v159 = v27;
    if (v30)
    {
      v47 = 0;
      v26 = &ICArchiveNotesPreviewer;
      do
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v48 = sub_100085648();
        }

        else
        {
          if (v47 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v48 = *(v34 + 8 * v47 + 32);
        }

        v49 = v48;
        v17 = (v47 + 1);
        if (__OFADD__(v47, 1))
        {
          goto LABEL_111;
        }

        [v162 addSubAttachment:v48];

        ++v47;
      }

      while (v17 != v30);
    }

    v50 = v159;

    v31 = v162;
    v27 = v158;
  }

  v159 = v27;
  [v31 writeMergeableData];
  v169 = _swiftEmptyArrayStorage;
  v51 = 1 << *(a3 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(a3 + 64);
  v54 = ((v51 + 63) >> 6);

  v56 = 0;
  v57 = &ICArchiveNotesPreviewer;
  if (v53)
  {
    goto LABEL_41;
  }

  while (1)
  {
LABEL_37:
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_106;
    }

    if (v58 >= v54)
    {
      break;
    }

    v53 = *(a3 + 64 + 8 * v58);
    ++v56;
    if (v53)
    {
      while (1)
      {
        v59 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v26 = *(*(a3 + 56) + ((v58 << 9) | (8 * v59)));
        v60 = [(__objc2_class_ro *)v26 parentAttachment];
        if (v60)
        {
          v61 = v60;

          v56 = v58;
          if (!v53)
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_100085678();
          v17 = *(v169 + 16);
          sub_1000856A8();
          sub_1000856B8();
          v55 = sub_100085688();
          v56 = v58;
          if (!v53)
          {
            goto LABEL_37;
          }
        }

LABEL_41:
        v58 = v56;
      }
    }
  }

  v30 = v169;
  if ((v169 & 0x8000000000000000) != 0 || (v169 & 0x4000000000000000) != 0)
  {
    goto LABEL_114;
  }

  for (i = *(v169 + 16); ; i = sub_100085718())
  {
    v63 = v160;
    if (!i)
    {
      break;
    }

    v64 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v65 = sub_100085648();
      }

      else
      {
        if (v64 >= *(v30 + 16))
        {
          goto LABEL_109;
        }

        v65 = *(v30 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      [v63 deleteObject:v65];

      ++v64;
      if (v67 == i)
      {
        goto LABEL_57;
      }
    }

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
    ;
  }

LABEL_57:

  v68 = v159;
}

uint64_t sub_1000578A4()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A69B8);
  sub_10000B614(v0, qword_1000A69B8);
  return sub_100084F98();
}

unint64_t sub_1000578F0(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 21:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6C6946616964656DLL;
      break;
    case 8:
      result = 0x4164657461657263;
      break;
    case 9:
      result = 0x6465696669646F6DLL;
      break;
    case 10:
      result = 1635017060;
      break;
    case 11:
      result = 0x656C746974;
      break;
    case 12:
      result = 0x73646E756F62;
      break;
    case 13:
      result = 0x676E6970706F7263;
      break;
    case 14:
      result = 0x7461746E6569726FLL;
      break;
    case 15:
      result = 0x6C69466567616D69;
      break;
    case 16:
      result = 7107189;
      break;
    case 17:
      result = 0x4474657070696E73;
      break;
    case 18:
      result = 0x616E6964726F6F63;
      break;
    case 19:
      result = 1937207154;
      break;
    case 20:
      result = 0x5474686769527369;
      break;
    case 22:
      result = 0x65746F75516C7275;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x6365526F69647561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100057C2C(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6BA0, &unk_10008E078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v51 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10005C8D4();
  sub_100085A78();
  LOBYTE(v59) = *v3;
  LOBYTE(v54) = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v59) = 1;
    sub_100085898();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v59) = 2;
    sub_100085848();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v59) = 3;
    sub_100085848();
    v17 = *(v3 + 56);
    LOBYTE(v59) = 4;
    sub_100085858();
    v18 = *(v3 + 57);
    LOBYTE(v59) = 5;
    sub_100085858();
    v19 = *(v3 + 64);
    v20 = *(v3 + 72);
    LOBYTE(v59) = 6;
    sub_100085848();
    v21 = *(v3 + 80);
    v22 = *(v3 + 88);
    LOBYTE(v59) = 7;
    sub_100085848();
    v70 = type metadata accessor for ICAttachmentArchiveModel();
    v23 = v70[12];
    LOBYTE(v59) = 8;
    sub_1000848B8();
    sub_10005DEDC(&qword_1000A5630, &type metadata accessor for Date);
    sub_100085888();
    v24 = v70[13];
    LOBYTE(v59) = 9;
    sub_100085888();
    v25 = (v3 + v70[14]);
    v26 = v25[1];
    *&v59 = *v25;
    *(&v59 + 1) = v26;
    LOBYTE(v54) = 10;
    sub_10005C928(v59, v26);
    sub_1000064B8();
    sub_100085888();
    sub_10001C19C(v59, *(&v59 + 1));
    v27 = (v3 + v70[15]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v59) = 11;
    sub_100085848();
    v30 = (v3 + v70[16]);
    v31 = *(v30 + 32);
    v32 = v30[1];
    v67 = *v30;
    v68 = v32;
    v69 = v31;
    v66 = 12;
    type metadata accessor for CGRect(0);
    sub_10005DEDC(&qword_1000A6BB0, type metadata accessor for CGRect);
    sub_100085888();
    v33 = (v3 + v70[17]);
    v34 = v33[3];
    v61 = v33[2];
    v62 = v34;
    v63[0] = *(v33 + 64);
    v35 = v33[1];
    v59 = *v33;
    v60 = v35;
    LOBYTE(v54) = 13;
    sub_10005C93C();
    sub_100085888();
    LOBYTE(v59) = *(v3 + v70[18]);
    LOBYTE(v54) = 14;
    sub_10005C990();
    sub_100085888();
    LOBYTE(v59) = *(v3 + v70[19]);
    LOBYTE(v54) = 15;
    sub_10005C9E4();
    sub_100085888();
    v36 = v70[20];
    LOBYTE(v59) = 16;
    sub_1000847C8();
    sub_10005DEDC(&qword_1000A6180, &type metadata accessor for URL);
    sub_100085888();
    v37 = (v3 + v70[21]);
    v38 = v37[1];
    *&v59 = *v37;
    *(&v59 + 1) = v38;
    LOBYTE(v54) = 17;
    sub_10005C928(v59, v38);
    sub_100085888();
    sub_10001C19C(v59, *(&v59 + 1));
    v39 = (v3 + v70[22]);
    v40 = *(v39 + 16);
    v59 = *v39;
    LOBYTE(v60) = v40;
    LOBYTE(v54) = 18;
    sub_10005CA38();
    sub_100085888();
    *&v59 = *(v3 + v70[23]);
    LOBYTE(v54) = 19;
    sub_100005740(&qword_1000A6A78, &unk_10008DC10);
    sub_10005CC10(&qword_1000A6BD8, sub_10005CA8C);
    sub_100085888();
    v41 = *(v3 + v70[24]);
    LOBYTE(v59) = 20;
    sub_100085858();
    *&v59 = *(v3 + v70[25]);
    LOBYTE(v54) = 21;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    sub_100041558(&qword_1000A6590);
    sub_100085888();
    v42 = (v3 + v70[26]);
    v43 = *v42;
    v44 = v42[1];
    LOBYTE(v59) = 22;
    sub_100085848();
    v65 = *(v3 + v70[27]);
    v64 = 23;
    sub_10005CAC0();
    sub_100085888();
    v45 = (v3 + v70[28]);
    v46 = v45[3];
    v47 = v45[1];
    v61 = v45[2];
    v62 = v46;
    v48 = v45[3];
    *v63 = v45[4];
    *&v63[9] = *(v45 + 73);
    v49 = v45[1];
    v59 = *v45;
    v60 = v49;
    v56 = v61;
    v57 = v48;
    v58[0] = v45[4];
    *(v58 + 9) = *(v45 + 73);
    v54 = v59;
    v55 = v47;
    v53 = 24;
    sub_100005888(&v59, v51, &qword_1000A69D0, &unk_10008DBE0);
    sub_10005CB14();
    sub_100085888();
    v51[2] = v56;
    v51[3] = v57;
    *v52 = v58[0];
    *&v52[9] = *(v58 + 9);
    v51[0] = v54;
    v51[1] = v55;
    sub_1000058F0(v51, &qword_1000A69D0, &unk_10008DBE0);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005850C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v84 = a2;
  v2 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v83 = v82 - v4;
  v5 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v85 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = v82 - v9;
  v10 = sub_100005740(&qword_1000A6BF8, &qword_10008E088);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  __chkstk_darwin(v10);
  v13 = v82 - v12;
  v14 = type metadata accessor for ICAttachmentArchiveModel();
  v15 = *(*(v14 - 1) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 48);
  v20 = sub_1000848B8();
  v21 = *(*(v20 - 8) + 56);
  v95 = v19;
  v21(&v18[v19], 1, 1, v20);
  v94 = v14[13];
  v21(&v18[v94], 1, 1, v20);
  v22 = &v18[v14[14]];
  v97 = xmmword_10008DBD0;
  v93 = v22;
  *v22 = xmmword_10008DBD0;
  v23 = &v18[v14[17]];
  v117 = 1;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  v23[64] = 1;
  v24 = v14[20];
  v25 = sub_1000847C8();
  v26 = *(*(v25 - 8) + 56);
  v92 = v24;
  v26(&v18[v24], 1, 1, v25);
  v91 = &v18[v14[21]];
  *v91 = v97;
  v27 = v14[28];
  *&v97 = v18;
  v28 = &v18[v27];
  *v28 = xmmword_10008B800;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *(v28 + 4) = 0u;
  v90 = &v18[v27];
  *(v28 + 73) = 0u;
  v29 = v118[4];
  sub_10000626C(v118, v118[3]);
  sub_10005C8D4();
  v89 = v13;
  v30 = v96;
  sub_100085A68();
  if (v30)
  {
    v96 = v30;
    sub_100006304(v118);
    swift_bridgeObjectRelease_n();
LABEL_4:

    v33 = v97;
    sub_1000058F0(v97 + v95, &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(v33 + v94, &qword_1000A5490, &qword_10008CD80);
    sub_10001C19C(*v93, *(v93 + 1));

    sub_1000058F0(v33 + v92, &qword_1000A56E8, &qword_10008D350);
    sub_10001C19C(*v91, *(v91 + 1));

    v34 = *(v90 + 3);
    v114 = *(v90 + 2);
    v115 = v34;
    v116[0] = *(v90 + 4);
    *(v116 + 9) = *(v90 + 73);
    v35 = *(v90 + 1);
    v112 = *v90;
    v113 = v35;
    return sub_1000058F0(&v112, &qword_1000A69D0, &unk_10008DBE0);
  }

  v82[5] = v20;
  v31 = v86;
  LOBYTE(v103[0]) = 0;
  sub_100041428();
  sub_100085828();
  v32 = v97;
  *v97 = v112;
  LOBYTE(v112) = 1;
  *(v32 + 8) = sub_1000857E8();
  *(v32 + 16) = v37;
  LOBYTE(v112) = 2;
  *(v32 + 24) = sub_100085798();
  *(v32 + 32) = v38;
  v82[4] = v38;
  LOBYTE(v112) = 3;
  *(v32 + 40) = sub_100085798();
  *(v32 + 48) = v39;
  v82[3] = v39;
  LOBYTE(v112) = 4;
  *(v32 + 56) = sub_1000857A8();
  LOBYTE(v112) = 5;
  *(v32 + 57) = sub_1000857A8();
  LOBYTE(v112) = 6;
  *(v32 + 64) = sub_100085798();
  *(v32 + 72) = v41;
  v82[2] = v41;
  LOBYTE(v112) = 7;
  *(v32 + 80) = sub_100085798();
  *(v32 + 88) = v42;
  v82[1] = v42;
  LOBYTE(v112) = 8;
  v82[0] = sub_10005DEDC(&qword_1000A55F8, &type metadata accessor for Date);
  sub_1000857D8();
  v96 = 0;
  sub_100005820(v31, v97 + v95, &qword_1000A5490, &qword_10008CD80);
  LOBYTE(v112) = 9;
  v43 = v96;
  sub_1000857D8();
  v96 = v43;
  if (v43)
  {
    goto LABEL_8;
  }

  sub_100005820(v85, v97 + v94, &qword_1000A5490, &qword_10008CD80);
  LOBYTE(v103[0]) = 10;
  sub_100006350();
  v44 = v96;
  sub_1000857D8();
  v96 = v44;
  if (v44)
  {
    goto LABEL_8;
  }

  v45 = v112;
  v46 = v93;
  sub_10001C19C(*v93, *(v93 + 1));
  *v46 = v45;
  LOBYTE(v112) = 11;
  v47 = v96;
  v48 = sub_100085798();
  v86 = v49;
  v96 = v47;
  if (v47)
  {
LABEL_8:
    (*(v87 + 8))(v89, v88);
    v86 = 0;
LABEL_9:
    sub_100006304(v118);
    v40 = *(v97 + 16);

    goto LABEL_4;
  }

  v50 = (v97 + v14[15]);
  v51 = v86;
  *v50 = v48;
  v50[1] = v51;
  type metadata accessor for CGRect(0);
  LOBYTE(v103[0]) = 12;
  sub_10005DEDC(&qword_1000A6C00, type metadata accessor for CGRect);
  v52 = v96;
  sub_1000857D8();
  v96 = v52;
  if (v52)
  {
    goto LABEL_22;
  }

  v53 = v97 + v14[16];
  v54 = v114;
  v55 = v113;
  *v53 = v112;
  *(v53 + 16) = v55;
  *(v53 + 32) = v54;
  v106 = 13;
  sub_10005CB68();
  v56 = v96;
  sub_1000857D8();
  v96 = v56;
  if (v56)
  {
    goto LABEL_22;
  }

  v57 = v108;
  v58 = v110;
  *(v23 + 2) = v109;
  *(v23 + 3) = v58;
  v23[64] = v111;
  *v23 = v107;
  *(v23 + 1) = v57;
  LOBYTE(v103[0]) = 14;
  sub_10005C66C();
  v59 = v96;
  sub_1000857D8();
  v96 = v59;
  if (v59)
  {
    goto LABEL_22;
  }

  *(v97 + v14[18]) = v112;
  LOBYTE(v103[0]) = 15;
  sub_10005C760();
  v60 = v96;
  sub_1000857D8();
  v96 = v60;
  if (v60)
  {
    goto LABEL_22;
  }

  *(v97 + v14[19]) = v112;
  LOBYTE(v112) = 16;
  sub_10005DEDC(&qword_1000A6140, &type metadata accessor for URL);
  v61 = v96;
  sub_1000857D8();
  v96 = v61;
  if (v61)
  {
    goto LABEL_22;
  }

  sub_100005820(v83, v97 + v92, &qword_1000A56E8, &qword_10008D350);
  LOBYTE(v103[0]) = 17;
  v62 = v96;
  sub_1000857D8();
  v96 = v62;
  if (v62)
  {
    goto LABEL_22;
  }

  v63 = v112;
  v64 = v91;
  sub_10001C19C(*v91, *(v91 + 1));
  *v64 = v63;
  LOBYTE(v103[0]) = 18;
  sub_10005CBBC();
  v65 = v96;
  sub_1000857D8();
  v96 = v65;
  if (v65)
  {
    goto LABEL_22;
  }

  v66 = v97 + v14[22];
  v67 = v113;
  *v66 = v112;
  *(v66 + 16) = v67;
  sub_100005740(&qword_1000A6A78, &unk_10008DC10);
  LOBYTE(v103[0]) = 19;
  sub_10005CC10(&qword_1000A6C18, sub_10005CC88);
  v68 = v96;
  sub_1000857D8();
  v96 = v68;
  if (v68)
  {
    goto LABEL_22;
  }

  *(v97 + v14[23]) = v112;
  LOBYTE(v112) = 20;
  v69 = sub_1000857A8();
  v96 = 0;
  *(v97 + v14[24]) = v69;
  sub_100005740(&qword_1000A6588, &qword_10008CE68);
  LOBYTE(v103[0]) = 21;
  sub_100041558(&qword_1000A65C0);
  v70 = v96;
  sub_1000857D8();
  v96 = v70;
  if (v70)
  {
    goto LABEL_22;
  }

  *(v97 + v14[25]) = v112;
  LOBYTE(v112) = 22;
  v71 = sub_100085798();
  v96 = 0;
  v72 = (v97 + v14[26]);
  *v72 = v71;
  v72[1] = v73;
  LOBYTE(v103[0]) = 23;
  sub_10005CD34();
  v74 = v96;
  sub_1000857D8();
  v96 = v74;
  if (v74 || (*(v97 + v14[27]) = v112, v105 = 24, sub_10005CD88(), v75 = v96, sub_1000857D8(), (v96 = v75) != 0))
  {
LABEL_22:
    (*(v87 + 8))(v89, v88);
    goto LABEL_9;
  }

  (*(v87 + 8))(v89, v88);
  v100 = v114;
  v101 = v115;
  v102[0] = v116[0];
  *(v102 + 9) = *(v116 + 9);
  v98 = v112;
  v99 = v113;
  v76 = v90;
  v77 = *(v90 + 3);
  v103[2] = *(v90 + 2);
  v103[3] = v77;
  v104[0] = *(v90 + 4);
  *(v104 + 9) = *(v90 + 73);
  v78 = *(v90 + 1);
  v103[0] = *v90;
  v103[1] = v78;
  sub_1000058F0(v103, &qword_1000A69D0, &unk_10008DBE0);
  v79 = v101;
  v76[2] = v100;
  v76[3] = v79;
  v76[4] = v102[0];
  *(v76 + 73) = *(v102 + 9);
  v80 = v99;
  *v76 = v98;
  v76[1] = v80;
  v81 = v97;
  sub_10005CDDC(v97, v84);
  sub_100006304(v118);
  return sub_10005CE40(v81);
}

uint64_t sub_1000593C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005CE9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000593F4(uint64_t a1)
{
  v2 = sub_10005C8D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100059430(uint64_t a1)
{
  v2 = sub_10005C8D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10005946C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a2;
  v5 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v159 = &v142 - v7;
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v156 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v142 - v12;
  *a3 = 4;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v14 = type metadata accessor for ICAttachmentArchiveModel();
  v15 = v14[12];
  v16 = sub_1000848B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v153 = v15;
  v18(a3 + v15, 1, 1, v16);
  v154 = v14[13];
  v155 = v18;
  v161 = v19;
  v18(a3 + v154, 1, 1, v16);
  v20 = (a3 + v14[14]);
  v152 = xmmword_10008DBD0;
  v144 = v20;
  *v20 = xmmword_10008DBD0;
  v21 = a3 + v14[17];
  v168 = 1;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 1;
  v22 = v14[20];
  v23 = sub_1000847C8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v157 = v22;
  v148 = v25;
  v149 = v23;
  v147 = v24 + 56;
  (v25)(a3 + v22, 1, 1);
  v158 = (a3 + v14[21]);
  *v158 = v152;
  v26 = a3 + v14[22];
  *v26 = 0;
  *(v26 + 8) = 0;
  *&v152 = v26;
  *(v26 + 16) = 1;
  v145 = v14[23];
  *(a3 + v145) = 0;
  v146 = v14[24];
  *(a3 + v146) = 2;
  v150 = v14[25];
  *(a3 + v150) = 0;
  v151 = v14[27];
  *(a3 + v151) = 3;
  v27 = (a3 + v14[28]);
  *v27 = xmmword_10008B800;
  v27[1] = 0u;
  v27[2] = 0u;
  v27[3] = 0u;
  v27[4] = 0u;
  v143 = v27;
  *(v27 + 73) = 0u;
  v28 = [a1 identifier];
  if (v28)
  {
    v29 = v28;
    v30 = sub_100085098();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  *(a3 + 8) = v30;
  *(a3 + 16) = v32;
  v33 = [a1 typeUTI];
  if (v33)
  {
    v34 = v33;
    v35 = sub_100085098();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = v155;
  *(a3 + 64) = v35;
  *(a3 + 72) = v37;
  v39 = a1;
  v40 = sub_10005B670();
  v42 = v41;

  *(a3 + 80) = v40;
  *(a3 + 88) = v42;
  v43 = [v39 creationDate];
  if (v43)
  {
    v44 = v43;
    sub_100084888();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = v156;
  v47 = 1;
  v38(v13, v45, 1, v16);
  sub_100005820(v13, a3 + v153, &qword_1000A5490, &qword_10008CD80);
  v48 = [v39 modificationDate];
  if (v48)
  {
    v49 = v48;
    sub_100084888();

    v47 = 0;
  }

  v38(v46, v47, 1, v16);
  sub_100005820(v46, a3 + v154, &qword_1000A5490, &qword_10008CD80);
  v50 = [v39 title];
  if (v50)
  {
    v51 = v50;
    v52 = sub_100085098();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = (a3 + v14[15]);
  *v55 = v52;
  v55[1] = v54;
  v161 = v54;
  [v39 bounds];
  v170.origin.x = 0.0;
  v170.origin.y = 0.0;
  v170.size.width = 0.0;
  v170.size.height = 0.0;
  v56 = CGRectEqualToRect(v169, v170);
  v57 = 0uLL;
  v58 = 0uLL;
  if (!v56)
  {
    [v39 bounds];
    *(&v57 + 1) = v59;
    *(&v58 + 1) = v60;
  }

  v61 = a3 + v14[16];
  v62 = v14[18];
  *v61 = v57;
  *(v61 + 16) = v58;
  *(v61 + 32) = v56;
  v63 = v39;
  sub_10005B880(v63, v164);
  v64 = v164[3];
  *(v21 + 32) = v164[2];
  *(v21 + 48) = v64;
  *(v21 + 64) = v165;
  v65 = v164[1];
  *v21 = v164[0];
  *(v21 + 16) = v65;
  *(a3 + v62) = sub_10005BA64([v63 orientation]);
  v66 = [v63 urlString];
  if (v66)
  {
    v67 = v66;
    sub_100085098();

    v68 = v159;
    sub_1000847B8();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v68 = v159;
    v148(v159, 1, 1, v149);
  }

  v69 = v160;
  sub_100005820(v68, a3 + v157, &qword_1000A56E8, &qword_10008D350);
  v70 = [v63 synapseData];
  if (v70)
  {
    v71 = v70;
    v72 = sub_100084808();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0xF000000000000000;
  }

  v75 = v158;
  sub_10001C19C(*v158, v158[1]);
  *v75 = v72;
  v75[1] = v74;
  v76 = [v63 synapseBasedMetadata];
  if (v76 && (v77 = v76, v78 = [v76 selectedText], v77, v78))
  {
    v79 = sub_100085098();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  v82 = (a3 + v14[26]);
  *v82 = v79;
  v82[1] = v81;
  v83 = [v63 imageFilterType];
  v84 = 0x403020105uLL >> (8 * v83);
  if (v83 >= 5)
  {
    LOBYTE(v84) = 5;
  }

  *(a3 + v14[19]) = v84;
  v85 = [v63 mergeablePreferredViewSize];
  if (v85)
  {
    v86 = v85;
    v87 = sub_100084808();
    v89 = v88;

    sub_10000650C(v87, v89);
    v90 = sub_1000810EC([v63 preferredViewSize]);
    *(a3 + v151) = v90;
  }

  v91 = [v63 location];
  if (v91)
  {
    v92 = v91;
    [v92 latitude];
    v94 = v93;
    [v92 longitude];
    v96 = v95;

    v97 = v152;
    *v152 = v94;
    *(v97 + 8) = v96;
    *(v97 + 16) = 0;
  }

  v98 = [v63 tableModel];
  if (v98)
  {
    if ((*v69 & 1) == 0)
    {
      v110 = v98;
      v111 = sub_10005BB60(v98, v69);
      *(a3 + v145) = v111;
      v112 = [v110 table];
      v113 = [v112 isRightToLeft];

      sub_100030518(v69);
      *(a3 + v146) = v113;
      if ((*(v69 + 59) & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  v99 = [v63 attachmentModel];
  objc_opt_self();
  v100 = swift_dynamicCastObjCClass();
  if (v100)
  {
    v101 = [v100 subAttachmentIdentifiers];
    v102 = sub_100085208();

    sub_100030518(v69);
    *(a3 + v150) = v102;
    if (*(v69 + 59))
    {
      goto LABEL_38;
    }

LABEL_42:

    return;
  }

  v119 = [v63 audioModel];
  if (!v119)
  {
    goto LABEL_53;
  }

  v120 = v119;
  v121 = [v119 audioDocument];

  if (!v121)
  {
    __break(1u);
    return;
  }

  v122 = sub_1000853A8();

  if (v122)
  {
    v123 = v63;
    sub_100011A6C(v69, v166);
    sub_100053740(v122, v123, v69, v166);
    v124 = v143;
    v125 = v143[3];
    v162[2] = v143[2];
    v162[3] = v125;
    v163[0] = v143[4];
    *(v163 + 9) = *(v143 + 73);
    v126 = v143[1];
    v162[0] = *v143;
    v162[1] = v126;
    sub_1000058F0(v162, &qword_1000A69D0, &unk_10008DBE0);
    sub_100030518(v69);
    v127 = v166[3];
    v124[2] = v166[2];
    v124[3] = v127;
    v124[4] = v167[0];
    *(v124 + 73) = *(v167 + 9);
    v128 = v166[1];
    *v124 = v166[0];
    v124[1] = v128;
    if ((*(v69 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_53:
    v129 = [v63 mergeableData];
    if (v129)
    {
      v130 = v129;
      v131 = sub_100084808();
      v133 = v132;
    }

    else
    {
      v131 = 0;
      v133 = 0xF000000000000000;
    }

    v141 = v144;
    sub_10001C19C(*v144, v144[1]);
    sub_100030518(v69);
    *v141 = v131;
    v141[1] = v133;
    if ((*(v69 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

LABEL_38:
  v103 = v63;
  v104 = [v103 note];
  if (v104 && (v105 = v104, v106 = [v104 identifier], v105, v106))
  {
    v107 = sub_100085098();
    v109 = v108;
  }

  else
  {
    v107 = 0;
    v109 = 0;
  }

  *(a3 + 24) = v107;
  *(a3 + 32) = v109;
  v114 = [v103 note];

  if (v114)
  {
    v115 = &ICArchiveNotesPreviewer;
    v116 = [v114 title];

    if (v116)
    {
      v114 = sub_100085098();
      v118 = v117;
    }

    else
    {
      v114 = 0;
      v118 = 0;
    }
  }

  else
  {
    v118 = 0;
    v115 = &ICArchiveNotesPreviewer;
  }

  *(a3 + 40) = v114;
  *(a3 + 48) = v118;
  v134 = [v103 v115[23].base_meths];
  if (v134)
  {
    v135 = v134;
    v136 = sub_100085098();
    v138 = v137;
  }

  else
  {

    v136 = 0;
    v138 = 0;
  }

  *v55 = v136;
  v55[1] = v138;
  v139 = v103;
  *(a3 + 56) = [v139 markedForDeletion];
  v140 = [v139 isPasswordProtected];

  *(a3 + 57) = v140;
}

uint64_t type metadata accessor for ICAttachmentArchiveModel()
{
  result = qword_1000A6A30;
  if (!qword_1000A6A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A048(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _OWORD *a5, void **a6)
{
  v28 = a6;
  v9 = sub_100084918();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v31 = _swiftEmptyArrayStorage;
  v13 = [a4 table];
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v15 + 68) & 0xFFFFFFFFFFFFFFF8);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = (v17 + v15);
  v19 = a5[1];
  *v18 = *a5;
  v18[1] = v19;
  v18[2] = a5[2];
  *(v18 + 45) = *(a5 + 45);
  *(v16 + v17) = &v31;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10005BED4;
  *(v20 + 24) = v17;
  aBlock[4] = sub_10005E3B8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100055E30;
  aBlock[3] = &unk_1000A07C0;
  v21 = _Block_copy(aBlock);
  v22 = a4;
  sub_100011A6C(a5, v29);

  [v13 enumerateColumnsWithBlock:v21];

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = v31;
    v16 = v28;
    a4 = *v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a4 = sub_10000F5BC(0, a4[2] + 1, 1, a4);
  *v16 = a4;
LABEL_3:
  v26 = a4[2];
  v25 = a4[3];
  if (v26 >= v25 >> 1)
  {
    a4 = sub_10000F5BC((v25 > 1), v26 + 1, 1, a4);
    *v16 = a4;
  }

  a4[2] = v26 + 1;
  a4[v26 + 4] = isEscapingClosureAtFileLocation;
}

void sub_10005A37C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char **a7)
{
  v10 = sub_100084918();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = [a4 table];
  isa = sub_1000848E8().super.isa;
  v17 = sub_1000848E8().super.isa;
  v18 = [v15 mergeableStringForColumnID:isa rowID:v17];

  if (!v18)
  {
    sub_100084908();
    v19 = objc_allocWithZone(ICTTMergeableAttributedString);
    v20 = sub_1000848E8().super.isa;
    (*(v11 + 8))(v14, v10);
    v18 = [v19 initWithReplicaID:v20];
  }

  v21 = [a4 attachment];
  if (v21)
  {
    v22 = v21;
    sub_100011A6C(a6, v35);
    v23 = v18;
    v24 = sub_10002FF98(v23, v22, a6);
    v26 = v25;
    v28 = v27;
    v29 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_10000F6F0(0, *(v29 + 2) + 1, 1, v29);
      *a7 = v29;
    }

    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v32 >= v31 >> 1)
    {
      *a7 = sub_10000F6F0((v31 > 1), v32 + 1, 1, v29);
    }

    v33 = *a7;
    *(v33 + 2) = v32 + 1;
    v34 = &v33[24 * v32];
    *(v34 + 4) = v24;
    *(v34 + 5) = v26;
    *(v34 + 6) = v28;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005A5DC(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6C88, &qword_10008E0A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10005DE88();
  sub_100085A78();
  v14 = *v3;
  v13 = 0;
  type metadata accessor for CGPoint(0);
  sub_10005DEDC(&qword_1000A6C90, type metadata accessor for CGPoint);
  sub_1000858D8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = v3[1];
  v13 = 1;
  sub_1000858D8();
  v14 = v3[2];
  v13 = 2;
  sub_1000858D8();
  v14 = v3[3];
  v13 = 3;
  sub_1000858D8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005A820()
{
  v1 = 0x7466654C706F74;
  v2 = 0x69526D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x654C6D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
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

uint64_t sub_10005A8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005D680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005A8D0(uint64_t a1)
{
  v2 = sub_10005DE88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005A90C(uint64_t a1)
{
  v2 = sub_10005DE88();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005A948@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005D7F0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

Swift::Int sub_10005A9B0()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10005AA54()
{
  *v0;
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_10005AAE4()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10005AB84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DA9C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10005ABB4(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 20565;
  v4 = 0xE400000000000000;
  v5 = 1413891404;
  if (*v1 != 2)
  {
    v5 = 0x5448474952;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1314344772;
    v2 = 0xE400000000000000;
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

uint64_t sub_10005AD2C(void *a1)
{
  v3 = sub_100005740(&qword_1000A6C48, &qword_10008E098);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10005DCE4();
  sub_100085A78();
  v12 = 0;
  sub_1000858B8();
  if (!v1)
  {
    v11 = 1;
    sub_1000858B8();
  }

  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_10005AEC0()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10005AFB0()
{
  *v0;
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_10005B08C()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10005B178@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DAE8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10005B1A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x4F544F4850;
  v5 = 0xE900000000000045;
  v6 = 0x4C41435359415247;
  v7 = 0xEF45544948575F44;
  v8 = 0x4E415F4B43414C42;
  if (v2 != 3)
  {
    v8 = 0x414F424554494857;
    v7 = 0xEA00000000004452;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x524F4C4F43;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10005B340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_100084A28();
}

uint64_t sub_10005B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_100084A48();
}

uint64_t sub_10005B48C()
{
  if (*v0)
  {
    result = 0x64757469676E6F6CLL;
  }

  else
  {
    result = 0x656475746974616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_10005B4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10005B5B0(uint64_t a1)
{
  v2 = sub_10005DCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005B5EC(uint64_t a1)
{
  v2 = sub_10005DCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10005B628(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10005DB34(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_10005B654(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10005AD2C(a1);
}

id sub_10005B670()
{
  result = sub_100068858();
  v2 = v1;
  if (v1)
  {
    v3 = result;
    v17 = result;
    v18 = v1;
    __chkstk_darwin(result);
    v16[2] = &v17;
    v4 = sub_10001CF34(sub_10004FB28, v16, &off_10009DCC0);
    swift_arrayDestroy();
    if (v4)
    {
      v17 = v3;
      v18 = v2;
      v21 = 46;
      v22 = 0xE100000000000000;
      sub_10001D33C();
      v5 = sub_1000854F8();

      v17 = sub_10001CD08(1uLL, v5);
      v18 = v6;
      v19 = v7;
      v20 = v8;

      sub_100005740(&qword_1000A5BE8, &unk_10008B7F0);
      sub_10003ECF4(&qword_1000A5BF0, &qword_1000A5BE8, &unk_10008B7F0);
      v9 = sub_100085038();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = (v5 + 16 + 16 * v12);
        v14 = *v13;
        v15 = v13[1];

        v17 = v9;
        v18 = v11;
        v23._countAndFlagsBits = 3027488;
        v23._object = 0xE300000000000000;
        sub_100085158(v23);
        v24._countAndFlagsBits = v14;
        v24._object = v15;
        sub_100085158(v24);
      }

      else
      {

        v17 = v9;
        v18 = v11;
        v25._countAndFlagsBits = 12832;
        v25._object = 0xE200000000000000;
        sub_100085158(v25);
      }

      return v17;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void sub_10005B880(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 croppingQuadTopLeftX];
  if (v4 == 0.0 && ([a1 croppingQuadTopLeftY], v5 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightX"), v6 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightY"), v7 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightX"), v8 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightY"), v9 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftX"), v10 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftY"), v11 == 0.0))
  {

    v12 = 1;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    [a1 croppingQuadTopLeftX];
    v32 = v17;
    [a1 croppingQuadTopLeftY];
    v31 = v18;
    [a1 croppingQuadTopRightX];
    v29 = v19;
    [a1 croppingQuadTopRightY];
    v30 = v20;
    [a1 croppingQuadBottomRightX];
    v27 = v21;
    [a1 croppingQuadBottomRightY];
    v28 = v22;
    [a1 croppingQuadBottomLeftX];
    v25 = v23;
    [a1 croppingQuadBottomLeftY];
    v26 = v24;

    *&v14 = v29;
    *&v13 = v32;
    v12 = 0;
    *(&v13 + 1) = v31;
    *(&v14 + 1) = v30;
    *&v15 = v27;
    *(&v15 + 1) = v28;
    *&v16 = v25;
    *(&v16 + 1) = v26;
  }

  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v12;
}

uint64_t sub_10005BA64(unint64_t a1)
{
  if (a1 < 4)
  {
    return 0x3020104u >> (8 * a1);
  }

  if (qword_1000A5430 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A69B8);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown drawing orientation — returning nil", v5, 2u);
  }

  return 4;
}

uint64_t sub_10005BB60(void *a1, _OWORD *a2)
{
  v14 = _swiftEmptyArrayStorage;
  v4 = [a1 table];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  *(v5 + 56) = a2[2];
  *(v5 + 69) = *(a2 + 45);
  *(v5 + 88) = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10005BD78;
  *(v7 + 24) = v5;
  aBlock[4] = sub_10005BD98;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100055E30;
  aBlock[3] = &unk_1000A0748;
  v8 = _Block_copy(aBlock);
  v9 = a1;
  sub_100011A6C(a2, v12);

  [v4 enumerateRowsWithBlock:v8];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v14;

    return v11;
  }

  return result;
}

uint64_t sub_10005BD20()
{
  if (*(v0 + 40) != 1)
  {

    v1 = *(v0 + 56);

    v2 = *(v0 + 72);
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005BD98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10005BDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005BDD8()
{
  v1 = sub_100084918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;
  if (*(v0 + v5 + 16) != 1)
  {

    v7 = *(v6 + 32);

    v8 = *(v6 + 48);
  }

  return _swift_deallocObject(v0, ((v5 + 68) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10005BED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100084918() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + ((v9 + 68) & 0xFFFFFFFFFFFFFFF8));

  sub_10005A37C(a1, a2, a3, v10, v3 + v8, v3 + v9, v11);
}

uint64_t sub_10005BFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10005C0FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10005C238()
{
  sub_1000341B8(319, &qword_1000A5538);
  if (v0 <= 0x3F)
  {
    sub_1000341B8(319, &unk_1000A5880);
    if (v1 <= 0x3F)
    {
      sub_10005C524(319, &qword_1000A5518, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        sub_1000341B8(319, &qword_1000A6A40);
        if (v3 <= 0x3F)
        {
          sub_10005C524(319, &qword_1000A6A48, type metadata accessor for CGRect);
          if (v4 <= 0x3F)
          {
            sub_1000341B8(319, &qword_1000A6A50);
            if (v5 <= 0x3F)
            {
              sub_1000341B8(319, &qword_1000A6A58);
              if (v6 <= 0x3F)
              {
                sub_1000341B8(319, &qword_1000A6A60);
                if (v7 <= 0x3F)
                {
                  sub_10005C524(319, &qword_1000A5FC8, &type metadata accessor for URL);
                  if (v8 <= 0x3F)
                  {
                    sub_1000341B8(319, &qword_1000A6A68);
                    if (v9 <= 0x3F)
                    {
                      sub_10005C578(319, &qword_1000A6A70, &qword_1000A6A78, &unk_10008DC10);
                      if (v10 <= 0x3F)
                      {
                        sub_10005C578(319, &qword_1000A6A80, &qword_1000A6588, &qword_10008CE68);
                        if (v11 <= 0x3F)
                        {
                          sub_1000341B8(319, &qword_1000A6A88);
                          if (v12 <= 0x3F)
                          {
                            sub_1000341B8(319, &unk_1000A6A90);
                            if (v13 <= 0x3F)
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
    }
  }
}

void sub_10005C524(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000854E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10005C578(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100011888(a3, a4);
    v5 = sub_1000854E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10005C5FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005C61C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_10005C66C()
{
  result = qword_1000A6B20;
  if (!qword_1000A6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B20);
  }

  return result;
}

unint64_t sub_10005C708()
{
  result = qword_1000A6B38;
  if (!qword_1000A6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B38);
  }

  return result;
}

unint64_t sub_10005C760()
{
  result = qword_1000A6B40;
  if (!qword_1000A6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B40);
  }

  return result;
}

unint64_t sub_10005C7FC()
{
  result = qword_1000A6B58;
  if (!qword_1000A6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B58);
  }

  return result;
}

uint64_t sub_10005C850(uint64_t a1)
{
  *(a1 + 8) = sub_10005DEDC(&qword_1000A66F0, type metadata accessor for ICAttachmentArchiveModel);
  result = sub_10005DEDC(&qword_1000A6B98, type metadata accessor for ICAttachmentArchiveModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10005C8D4()
{
  result = qword_1000A6BA8;
  if (!qword_1000A6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BA8);
  }

  return result;
}

uint64_t sub_10005C928(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006464(a1, a2);
  }

  return a1;
}

unint64_t sub_10005C93C()
{
  result = qword_1000A6BB8;
  if (!qword_1000A6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BB8);
  }

  return result;
}

unint64_t sub_10005C990()
{
  result = qword_1000A6BC0;
  if (!qword_1000A6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BC0);
  }

  return result;
}

unint64_t sub_10005C9E4()
{
  result = qword_1000A6BC8;
  if (!qword_1000A6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BC8);
  }

  return result;
}

unint64_t sub_10005CA38()
{
  result = qword_1000A6BD0;
  if (!qword_1000A6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BD0);
  }

  return result;
}

unint64_t sub_10005CAC0()
{
  result = qword_1000A6BE8;
  if (!qword_1000A6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BE8);
  }

  return result;
}

unint64_t sub_10005CB14()
{
  result = qword_1000A6BF0;
  if (!qword_1000A6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6BF0);
  }

  return result;
}

unint64_t sub_10005CB68()
{
  result = qword_1000A6C08;
  if (!qword_1000A6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C08);
  }

  return result;
}

unint64_t sub_10005CBBC()
{
  result = qword_1000A6C10;
  if (!qword_1000A6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C10);
  }

  return result;
}

uint64_t sub_10005CC10(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6A78, &unk_10008DC10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005CCBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A5A00, &qword_10008B520);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005CD34()
{
  result = qword_1000A6C28;
  if (!qword_1000A6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C28);
  }

  return result;
}

unint64_t sub_10005CD88()
{
  result = qword_1000A6C30;
  if (!qword_1000A6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C30);
  }

  return result;
}

uint64_t sub_10005CDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICAttachmentArchiveModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005CE40(uint64_t a1)
{
  v2 = type metadata accessor for ICAttachmentArchiveModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005CE9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000871D0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000871F0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100087210 == a2 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100086CE0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6946616964656DLL && a2 == 0xED0000656D616E65 || (sub_100085948() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_100085948() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x676E6970706F7263 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_100085948() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6C69466567616D69 && a2 == 0xEB00000000726574 || (sub_100085948() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_100085948() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4474657070696E73 && a2 == 0xEB00000000617461 || (sub_100085948() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574 || (sub_100085948() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x5474686769527369 && a2 == 0xED00007466654C6FLL || (sub_100085948() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100087230 == a2 || (sub_100085948() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65746F75516C7275 && a2 == 0xEC00000074786554 || (sub_100085948() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100087250 == a2 || (sub_100085948() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6365526F69647561 && a2 == 0xEE00676E6964726FLL)
  {

    return 24;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_10005D680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466)
  {

    return 3;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10005D7F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6C70, &qword_10008E0A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10005DE88();
  sub_100085A68();
  if (v2)
  {
    return sub_100006304(a1);
  }

  type metadata accessor for CGPoint(0);
  v22 = 0;
  sub_10005DEDC(&qword_1000A6C80, type metadata accessor for CGPoint);
  sub_100085828();
  v11 = v20;
  v12 = v21;
  v22 = 1;
  sub_100085828();
  v13 = v20;
  v14 = v21;
  v22 = 2;
  sub_100085828();
  v15 = v20;
  v16 = v21;
  v22 = 3;
  sub_100085828();
  (*(v6 + 8))(v9, v5);
  v17 = v20;
  v18 = v21;
  result = sub_100006304(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = v17;
  a2[7] = v18;
  return result;
}

uint64_t sub_10005DA9C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E150;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005DAE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E1F8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

double sub_10005DB34(uint64_t *a1)
{
  v2 = sub_100005740(&qword_1000A6C38, &qword_10008E090);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10005DCE4();
  sub_100085A68();
  v11[15] = 0;
  sub_100085808();
  v9 = v8;
  v11[14] = 1;
  sub_100085808();
  (*(v3 + 8))(v6, v2);
  sub_100006304(a1);
  return v9;
}

unint64_t sub_10005DCE4()
{
  result = qword_1000A6C40;
  if (!qword_1000A6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C40);
  }

  return result;
}

unint64_t sub_10005DD38()
{
  result = qword_1000A6C50;
  if (!qword_1000A6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C50);
  }

  return result;
}

unint64_t sub_10005DD8C()
{
  result = qword_1000A6C58;
  if (!qword_1000A6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C58);
  }

  return result;
}

unint64_t sub_10005DDE0()
{
  result = qword_1000A6C60;
  if (!qword_1000A6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C60);
  }

  return result;
}

unint64_t sub_10005DE34()
{
  result = qword_1000A6C68;
  if (!qword_1000A6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C68);
  }

  return result;
}

unint64_t sub_10005DE88()
{
  result = qword_1000A6C78;
  if (!qword_1000A6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C78);
  }

  return result;
}

uint64_t sub_10005DEDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ICAttachmentArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICAttachmentArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10005E098()
{
  result = qword_1000A6C98;
  if (!qword_1000A6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6C98);
  }

  return result;
}

unint64_t sub_10005E0F0()
{
  result = qword_1000A6CA0;
  if (!qword_1000A6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CA0);
  }

  return result;
}

unint64_t sub_10005E148()
{
  result = qword_1000A6CA8;
  if (!qword_1000A6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CA8);
  }

  return result;
}

unint64_t sub_10005E1A0()
{
  result = qword_1000A6CB0;
  if (!qword_1000A6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CB0);
  }

  return result;
}

unint64_t sub_10005E1F8()
{
  result = qword_1000A6CB8;
  if (!qword_1000A6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CB8);
  }

  return result;
}

unint64_t sub_10005E250()
{
  result = qword_1000A6CC0;
  if (!qword_1000A6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CC0);
  }

  return result;
}

unint64_t sub_10005E2A8()
{
  result = qword_1000A6CC8;
  if (!qword_1000A6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CC8);
  }

  return result;
}

unint64_t sub_10005E300()
{
  result = qword_1000A6CD0;
  if (!qword_1000A6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CD0);
  }

  return result;
}

unint64_t sub_10005E358()
{
  result = qword_1000A6CD8;
  if (!qword_1000A6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6CD8);
  }

  return result;
}

uint64_t sub_10005E3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005E4B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t _s3TagVMa()
{
  result = qword_1000A6D38;
  if (!qword_1000A6D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005E5C8()
{
  sub_100054660();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10005E63C(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6D88, &qword_10008E4F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10005F588();
  sub_100085A78();
  v15[15] = 0;
  sub_1000848B8();
  sub_10005F97C(&qword_1000A5630, &type metadata accessor for Date);
  sub_100085888();
  if (!v2)
  {
    v11 = (v3 + *(_s3TagVMa() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_100085898();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10005E7F8()
{
  v1 = v0;
  v2 = sub_1000848B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  sub_100085A08();
  sub_10005F5DC(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_100085A28(1u);
    sub_10005F97C(&qword_1000A6D90, &type metadata accessor for Date);
    sub_100085028();
    (*(v3 + 8))(v6, v2);
  }

  v11 = (v1 + *(_s3TagVMa() + 20));
  v12 = *v11;
  v13 = v11[1];
  sub_100085118();
  return sub_100085A38();
}

uint64_t sub_10005E9F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v27 = &v24 - v6;
  v7 = sub_100005740(&qword_1000A6D78, &qword_10008E4F0);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = _s3TagVMa();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000848B8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10005F588();
  sub_100085A68();
  if (v2)
  {
    sub_100006304(a1);
    return sub_1000058F0(v14, &qword_1000A5490, &qword_10008CD80);
  }

  else
  {
    v17 = v25;
    v29 = 0;
    sub_10005F97C(&qword_1000A55F8, &type metadata accessor for Date);
    v18 = v26;
    sub_1000857D8();
    sub_100040A94(v27, v14);
    v28 = 1;
    v19 = sub_1000857E8();
    v21 = v20;
    (*(v17 + 8))(v10, v18);
    v22 = &v14[*(v11 + 20)];
    *v22 = v19;
    v22[1] = v21;
    sub_10001172C(v14, v24);
    sub_100006304(a1);
    return sub_10003DB2C(v14);
  }
}

uint64_t sub_10005ED04()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x4164657461657263;
  }

  *v0;
  return result;
}

uint64_t sub_10005ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10005EE20(uint64_t a1)
{
  v2 = sub_10005F588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EE5C(uint64_t a1)
{
  v2 = sub_10005F588();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005EECC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1000848B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  sub_10005F5DC(v4, &v18 - v12);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_100085A28(1u);
    sub_10005F97C(&qword_1000A6D90, &type metadata accessor for Date);
    sub_100085028();
    (*(v6 + 8))(v9, v5);
  }

  v14 = (v4 + *(a2 + 20));
  v15 = *v14;
  v16 = v14[1];
  return sub_100085118();
}

Swift::Int sub_10005F0B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1000848B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  sub_100085A08();
  sub_10005F5DC(v4, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_100085A28(1u);
    sub_10005F97C(&qword_1000A6D90, &type metadata accessor for Date);
    sub_100085028();
    (*(v6 + 8))(v9, v5);
  }

  v14 = (v4 + *(a2 + 20));
  v15 = *v14;
  v16 = v14[1];
  sub_100085118();
  return sub_100085A38();
}

uint64_t sub_10005F350()
{
  v0 = _s3TagVMa();
  sub_10000B64C(v0, qword_1000B17C0);
  v1 = sub_10000B614(v0, qword_1000B17C0);
  v2 = sub_1000848B8();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = (v1 + *(v0 + 20));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_10005F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1000A5438 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_10000B614(a1, qword_1000B17C0);

  return sub_10001172C(v3, a2);
}

uint64_t sub_10005F464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000848B8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = &v11[*(a3 + 20)];
  *v13 = a1;
  *(v13 + 1) = a2;
  sub_10003DAC8(v11, a4);
  return (*(v8 + 56))(a4, 0, 1, a3);
}

unint64_t sub_10005F588()
{
  result = qword_1000A6D80;
  if (!qword_1000A6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6D80);
  }

  return result;
}

uint64_t sub_10005F5DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100005740(&qword_1000A6D98, &qword_10008E500);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v28 - v16;
  v18 = *(v15 + 56);
  sub_10005F5DC(a1, &v28 - v16);
  sub_10005F5DC(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_10005F5DC(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_10005F97C(&qword_1000A6DA0, &type metadata accessor for Date);
      v21 = sub_100085058();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1000058F0(v17, &qword_1000A5490, &qword_10008CD80);
      if (v21)
      {
        goto LABEL_9;
      }

LABEL_7:
      v20 = 0;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1000058F0(v17, &qword_1000A6D98, &qword_10008E500);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000058F0(v17, &qword_1000A5490, &qword_10008CD80);
LABEL_9:
  v23 = *(_s3TagVMa() + 20);
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if (v24 == *v26 && v25 == v26[1])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_100085948();
  }

  return v20 & 1;
}

uint64_t sub_10005F97C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005F9D8()
{
  result = qword_1000A6DA8;
  if (!qword_1000A6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DA8);
  }

  return result;
}

unint64_t sub_10005FA30()
{
  result = qword_1000A6DB0;
  if (!qword_1000A6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DB0);
  }

  return result;
}

unint64_t sub_10005FA88()
{
  result = qword_1000A6DB8;
  if (!qword_1000A6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DB8);
  }

  return result;
}

void sub_10005FADC(void *a1)
{
  [a1 setIsPasswordProtected:1];
  [a1 setCryptoIterationCount:*v1];
  v3 = v1[1];
  v4 = v1[2];
  isa = sub_1000847F8().super.isa;
  [a1 setCryptoSalt:isa];

  v6 = v1[3];
  v7 = v1[4];
  v8 = sub_1000847F8().super.isa;
  [a1 setCryptoInitializationVector:v8];

  v9 = v1[5];
  v10 = v1[6];
  v11 = sub_1000847F8().super.isa;
  [a1 setCryptoTag:v11];

  v12 = v1[7];
  v13 = v1[8];
  v14 = sub_1000847F8().super.isa;
  [a1 setCryptoWrappedKey:v14];

  v15 = v1[9];
  v16 = v1[10];
  v17 = sub_100085068();
  [a1 setPasswordHint:v17];
}

uint64_t sub_10005FBF4(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6DD0, &qword_10008E8D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8 - 8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100060C6C();
  sub_100085A78();
  v11 = *v3;
  LOBYTE(v18) = 0;
  sub_1000858E8();
  if (!v2)
  {
    v23 = *(v3 + 1);
    v18 = *(v3 + 1);
    v17 = 1;
    sub_100060D28(&v23, v16);
    sub_1000064B8();
    sub_1000858D8();
    sub_10000650C(v18, *(&v18 + 1));
    v22 = *(v3 + 3);
    v18 = *(v3 + 3);
    v17 = 2;
    sub_100060D28(&v22, v16);
    sub_1000858D8();
    sub_10000650C(v18, *(&v18 + 1));
    v21 = *(v3 + 5);
    v18 = *(v3 + 5);
    v17 = 3;
    sub_100060D28(&v21, v16);
    sub_1000858D8();
    sub_10000650C(v18, *(&v18 + 1));
    v20 = *(v3 + 7);
    v18 = *(v3 + 7);
    v17 = 4;
    sub_100060D28(&v20, v16);
    sub_1000858D8();
    sub_10000650C(v18, *(&v18 + 1));
    v13 = v3[9];
    v14 = v3[10];
    LOBYTE(v18) = 5;
    sub_100085898();
    v18 = *(v3 + 11);
    v19 = v18;
    v17 = 6;
    sub_100060D28(&v19, v16);
    sub_1000858D8();
    sub_10000650C(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005FF18()
{
  v1 = *v0;
  v2 = 0x6F69746172657469;
  v3 = 0x64726F7773736170;
  if (v1 != 5)
  {
    v3 = 1635017060;
  }

  v4 = 6775156;
  if (v1 != 3)
  {
    v4 = 0x4B64657070617277;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953259891;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005FFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000603D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100060020(uint64_t a1)
{
  v2 = sub_100060C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006005C(uint64_t a1)
{
  v2 = sub_100060C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100060098@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10006063C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

void sub_100060110(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 isPasswordProtected])
  {
    v35 = a3;
    v34 = [a1 cryptoIterationCount];
    v8 = [a1 cryptoSalt];
    if (v8)
    {
      v9 = v8;
      v10 = sub_100084808();
      v32 = v11;
      v33 = v10;
    }

    else
    {
      v32 = 0xC000000000000000;
      v33 = 0;
    }

    v12 = [a1 cryptoInitializationVector];
    if (v12)
    {
      v13 = v12;
      v31 = sub_100084808();
      v15 = v14;
    }

    else
    {
      v31 = 0;
      v15 = 0xC000000000000000;
    }

    v16 = [a1 cryptoTag];
    if (v16)
    {
      v17 = v16;
      v18 = sub_100084808();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xC000000000000000;
    }

    v21 = [a1 cryptoWrappedKey];
    if (v21)
    {
      v22 = v21;
      v23 = sub_100084808();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xC000000000000000;
    }

    v26 = [a1 passwordHint];
    if (v26)
    {
      v27 = v26;
      v28 = sub_100085098();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    *a4 = v34;
    a4[1] = v33;
    a4[2] = v32;
    a4[3] = v31;
    a4[4] = v15;
    a4[5] = v18;
    a4[6] = v20;
    a4[7] = v23;
    a4[8] = v25;
    a4[9] = v28;
    a4[10] = v30;
    a4[11] = a2;
    a4[12] = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000602E0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000602FC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100060328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100060370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000603D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746172657469 && a2 == 0xEE00746E756F436ELL;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953259891 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100087270 == a2 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B64657070617277 && a2 == 0xEA00000000007965 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xEC000000746E6948 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10006063C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6DC0, &qword_10008E8D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100060C6C();
  sub_100085A68();
  if (v2)
  {
    return sub_100006304(a1);
  }

  LOBYTE(v43) = 0;
  v11 = sub_100085838();
  LOBYTE(v36) = 1;
  sub_100006350();
  sub_100085828();
  v34 = v43;
  v35 = v44;
  LOBYTE(v36) = 2;
  sub_100085828();
  v30 = v43;
  v31 = v44;
  LOBYTE(v36) = 3;
  sub_100085828();
  v28 = v43;
  v29 = v44;
  LOBYTE(v36) = 4;
  sub_100085828();
  v32 = v43;
  v33 = v44;
  LOBYTE(v43) = 5;
  v25 = sub_1000857E8();
  v27 = v12;
  v58 = 6;
  sub_100085828();
  v26 = 0;
  (*(v6 + 8))(v9, v5);
  v24 = v56;
  v23 = v57;
  *&v36 = v11;
  v13 = v34;
  *(&v36 + 1) = v34;
  v14 = v35;
  *&v37 = v35;
  v15 = v30;
  *(&v37 + 1) = v30;
  v16 = v31;
  *&v38 = v31;
  v17 = v28;
  *(&v38 + 1) = v28;
  v18 = v29;
  *&v39 = v29;
  *(&v39 + 1) = v32;
  *&v40 = v33;
  *(&v40 + 1) = v25;
  *&v41 = v27;
  *(&v41 + 1) = v56;
  v42 = v57;
  sub_100060CC0(&v36, &v43);
  sub_100006304(a1);
  v43 = v11;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  v49 = v18;
  v50 = v32;
  v51 = v33;
  v52 = v25;
  v53 = v27;
  v54 = v24;
  v55 = v23;
  result = sub_100060CF8(&v43);
  v20 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v20;
  *(a2 + 96) = v42;
  v21 = v37;
  *a2 = v36;
  *(a2 + 16) = v21;
  v22 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v22;
  return result;
}

unint64_t sub_100060C6C()
{
  result = qword_1000A6DC8;
  if (!qword_1000A6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DC8);
  }

  return result;
}

unint64_t sub_100060D98()
{
  result = qword_1000A6DD8;
  if (!qword_1000A6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DD8);
  }

  return result;
}

unint64_t sub_100060DF0()
{
  result = qword_1000A6DE0;
  if (!qword_1000A6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DE0);
  }

  return result;
}

unint64_t sub_100060E48()
{
  result = qword_1000A6DE8;
  if (!qword_1000A6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6DE8);
  }

  return result;
}

unint64_t sub_100060EA0()
{
  result = qword_1000A6E08;
  if (!qword_1000A6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E08);
  }

  return result;
}

void *sub_100060EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100084958();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084998();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v32 - v17;
  ObjectType = swift_getObjectType();
  v20 = v36;
  v21 = (*(a2 + 24))(v4[1], v4[2], a3, ObjectType, a2);
  if (!v20)
  {
    v22 = v35;
    v36 = 0;
    v33 = type metadata accessor for ICFolderArchiveModel(0);
    sub_10006652C(v4 + *(v33 + 44), v18);
    v23 = type metadata accessor for ICFolderArchiveModel.Query(0);
    if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
    {
      sub_1000058F0(v18, &qword_1000A6E98, &qword_10008EAF8);
      v24 = 0;
    }

    else
    {
      (*(v22 + 16))(v14, v18, v11);
      (*(v34 + 16))(v10, &v18[*(v23 + 20)], v7);
      v25 = objc_allocWithZone(sub_100084CC8());
      v24 = sub_100084CA8();
      sub_1000664CC(v18, type metadata accessor for ICFolderArchiveModel.Query);
    }

    [v21 setSmartFolderQueryObjC:v24];

    if ([v21 isRenamable])
    {
      if (v4[9])
      {
        v26 = v4[8];
        v27 = v4[9];
      }

      v28 = sub_100085068();

      [v21 setTitle:v28];
    }

    if ([v21 supportsCustomNoteSortType])
    {
      v29 = *(v4 + *(v33 + 48));
      if ((v29 & 0xFF00) == 0x200)
      {
        v30 = 0;
      }

      else
      {
        v30 = [objc_opt_self() folderNoteSortTypeWithOrder:qword_10008F3D8[v29] direction:(v29 >> 8) & 1];
      }

      [v21 setCustomNoteSortType:v30];
    }
  }

  return v21;
}

id sub_1000612DC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ICFolderArchiveModel(0);
  v5 = *(v2 + v4[13]);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = 0;
  v8 = v5 + 40;
  v24 = v6 - 1;
  v25 = v5 + 40;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_6;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_100039138(v11, v12);
      if (v14)
      {
        if ([*(*(a2 + 56) + 8 * v13) identifier])
        {
          break;
        }
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v6 == v10)
      {
        goto LABEL_14;
      }
    }

    sub_1000851F8();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100085228();
    }

    v7 = v10 + 1;
    v4 = sub_100085258();
    v8 = v5 + 40;
  }

  while (v24 != v10);
LABEL_14:
  v16 = [a1 subFolderIdentifiersOrderedSet];
  [v16 removeAllObjects];

  v4 = [a1 subFolderIdentifiersOrderedSet];
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_30;
  }

  v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = v4;
    v18 = v4;
    if (!v17)
    {
      break;
    }

    v19 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v4 = sub_100085648();
      }

      else
      {
        if (v19 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v4 = _swiftEmptyArrayStorage[v19 + 4];
      }

      v20 = v4;
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v18 addObject:v4];

      ++v19;
      if (v21 == v17)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v23 = v4;
    v17 = sub_100085718();
    v4 = v23;
  }

LABEL_25:

  [a1 setSubFolderOrderMergeableDataDirty:1];
  [a1 saveSubFolderMergeableDataIfNeeded];
  return [a1 subFolderIdentifiersOrderedSetDocument];
}

uint64_t sub_1000615AC(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A5498, &qword_10008AA30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v46 = v39 - v7;
  v8 = sub_100005740(&qword_1000A54A0, &qword_10008AA38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v39 - v10;
  v12 = sub_100084C78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v43 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s8ActivityVMa();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v42);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + *(type metadata accessor for ICFolderArchiveModel(0) + 56));
  if (!v20)
  {
    return 0;
  }

  v39[1] = a1;
  v39[2] = v2;
  v53 = _swiftEmptyArrayStorage;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v23 = *(v16 + 72);
    v44 = (v13 + 48);
    v45 = v23;
    v40 = (v13 + 8);
    v41 = (v13 + 32);
    v47 = v19;
    while (1)
    {
      sub_100066464(v22, v19, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v32 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v48[0] = IsAlexandriaDemoModeEnabled;
      v48[1] = v32;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      v52 = 2;
      sub_100002CD4(v48, v11);
      if ((*v44)(v11, 1, v12) == 1)
      {
        break;
      }

      v33 = v43;
      (*v41)(v43, v11, v12);
      sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
      v34 = v46;
      sub_1000034D0(v48, v46);
      v35 = sub_100085418();
      v36 = v34;
      v19 = v47;
      sub_1000058F0(v36, &qword_1000A5498, &qword_10008AA30);
      (*v40)(v33, v12);
      sub_1000664CC(v19, _s8ActivityVMa);
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_8:
      v22 += v45;
      if (!--v21)
      {
        goto LABEL_12;
      }
    }

    sub_1000058F0(v11, &qword_1000A54A0, &qword_10008AA38);
    sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
    v24 = &v19[*(v42 + 44)];
    v25 = v12;
    v27 = *v24;
    v26 = *(v24 + 1);
    v28 = v11;
    v29 = v46;
    sub_1000034D0(v48, v46);
    v12 = v25;
    v19 = v47;
    sub_100085428();
    v30 = v29;
    v11 = v28;
    sub_1000058F0(v30, &qword_1000A5498, &qword_10008AA30);
    sub_1000664CC(v19, _s8ActivityVMa);
LABEL_5:
    sub_1000851F8();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100085228();
    }

    sub_100085258();
    goto LABEL_8;
  }

LABEL_12:
  sub_100085448();
  return sub_100085438();
}

uint64_t sub_100061A58()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A6DF0);
  sub_10000B614(v0, qword_1000A6DF0);
  return sub_100084F98();
}

unint64_t sub_100061AA4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E65644965707974;
    v7 = 0xD000000000000010;
    v8 = 0x6954746E65726170;
    if (a1 != 3)
    {
      v8 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x74726F5365746F6ELL;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x6974697669746361;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656C746974;
    v4 = 1701869940;
    if (a1 != 6)
    {
      v4 = 0x7972657571;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100061C24(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A70D0, &qword_10008F2A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100067238();
  sub_100085A78();
  LOBYTE(v23) = *v3;
  v24 = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v23) = 1;
    sub_100085898();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v23) = 2;
    sub_100085848();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v23) = 3;
    sub_100085848();
    v17 = *(v3 + 56);
    LOBYTE(v23) = 4;
    sub_100085858();
    v18 = *(v3 + 64);
    v19 = *(v3 + 72);
    LOBYTE(v23) = 5;
    sub_100085848();
    LOBYTE(v23) = *(v3 + 80);
    v24 = 6;
    sub_10006728C();
    sub_100085888();
    v20 = type metadata accessor for ICFolderArchiveModel(0);
    v21 = v20[11];
    LOBYTE(v23) = 7;
    type metadata accessor for ICFolderArchiveModel.Query(0);
    sub_1000651A0(&qword_1000A70E8, type metadata accessor for ICFolderArchiveModel.Query);
    sub_100085888();
    LOWORD(v23) = *(v3 + v20[12]);
    v24 = 8;
    sub_1000672E0();
    sub_100085888();
    v23 = *(v3 + v20[13]);
    v24 = 9;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    sub_100041558(&qword_1000A6590);
    sub_100085888();
    v23 = *(v3 + v20[14]);
    v24 = 10;
    sub_100005740(&unk_1000A6F28, &qword_10008EB50);
    sub_100067334(&qword_1000A70F8, &qword_1000A7100);
    sub_100085888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10006204C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v33 - v6;
  v8 = sub_100005740(&qword_1000A7108, &qword_10008F2B0);
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = v33 - v10;
  v12 = type metadata accessor for ICFolderArchiveModel(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 44);
  v18 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v19 = *(*(v18 - 8) + 56);
  v38 = v17;
  v39 = v16;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v21 = a1[4];
  v37 = a1;
  sub_10000626C(a1, v20);
  sub_100067238();
  sub_100085A68();
  if (v2)
  {
    v22 = v38;
    v24 = v39;
    sub_100006304(v37);
    swift_bridgeObjectRelease_n();

    sub_1000058F0(&v24[v22], &qword_1000A6E98, &qword_10008EAF8);
  }

  else
  {
    v33[2] = v18;
    v41 = 0;
    sub_100041428();
    sub_100085828();
    v23 = v38;
    v26 = v39;
    *v39 = v40;
    LOBYTE(v40) = 1;
    *(v26 + 1) = sub_1000857E8();
    *(v26 + 2) = v27;
    LOBYTE(v40) = 2;
    *(v26 + 3) = sub_100085798();
    *(v26 + 4) = v28;
    LOBYTE(v40) = 3;
    *(v26 + 5) = sub_100085798();
    *(v26 + 6) = v29;
    v33[1] = v29;
    LOBYTE(v40) = 4;
    v26[56] = sub_1000857A8();
    LOBYTE(v40) = 5;
    *(v26 + 8) = sub_100085798();
    *(v26 + 9) = v30;
    v33[0] = v30;
    v41 = 6;
    sub_100066DB4();
    sub_1000857D8();
    v26[80] = v40;
    LOBYTE(v40) = 7;
    sub_1000651A0(&qword_1000A6E10, type metadata accessor for ICFolderArchiveModel.Query);
    sub_1000857D8();
    sub_100066390(v7, &v26[v23]);
    v41 = 8;
    sub_100060EA0();
    sub_1000857D8();
    *&v26[v12[12]] = v40;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    v41 = 9;
    sub_100041558(&qword_1000A65C0);
    sub_1000857D8();
    *&v39[v12[13]] = v40;
    sub_100005740(&unk_1000A6F28, &qword_10008EB50);
    v41 = 10;
    sub_100067334(&qword_1000A7110, &qword_1000A7118);
    sub_1000857D8();
    v31 = v12[14];
    (*(v35 + 8))(v11, v36);
    v32 = v39;
    *&v39[v31] = v40;
    sub_100066464(v32, v34, type metadata accessor for ICFolderArchiveModel);
    sub_100006304(v37);
    return sub_1000664CC(v32, type metadata accessor for ICFolderArchiveModel);
  }
}

uint64_t sub_100062774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100065640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000627A8(uint64_t a1)
{
  v2 = sub_100067238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000627E4(uint64_t a1)
{
  v2 = sub_100067238();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100062820(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v5 = _s8ActivityVMa();
  v86 = *(v5 - 8);
  v6 = *(v86 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v80 - v11;
  *a3 = 2;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 2;
  *(a3 + 80) = 3;
  v13 = type metadata accessor for ICFolderArchiveModel(0);
  v14 = *(v13 + 44);
  v15 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v81 = v14;
  v17(a3 + v14, 1, 1, v15);
  v83 = v13;
  v84 = a1;
  v19 = *(v13 + 56);
  v85 = a3;
  v80 = v19;
  *(a3 + v19) = 0;
  v20 = [a1 identifier];
  if (v20)
  {
    v21 = v20;
    v22 = sub_100085098();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = v84;
  v26 = v85;
  v85[1] = v22;
  v26[2] = v24;
  v27 = [v25 title];
  v28 = sub_100085098();
  v30 = v29;

  v26[8] = v28;
  v26[9] = v30;
  v31 = [v25 smartFolderQueryObjC];
  if (v31)
  {
    v32 = v31;
    sub_100084CB8();
    v33 = &v12[*(v15 + 20)];
    sub_100084C98();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v17(v12, v34, 1, v15);
  sub_100066390(v12, v85 + v81);
  v35 = v84;
  v36 = [v84 customNoteSortType];
  if (!v36)
  {
    goto LABEL_11;
  }

  v37 = v36;
  if ([v36 isDefault] || (v38 = sub_1000651E8(objc_msgSend(v37, "order")), v38 == 3))
  {

LABEL_11:
    v39 = 512;
    goto LABEL_12;
  }

  v54 = v38;
  v55 = sub_10006538C([v37 direction]);

  if (v55 == 2)
  {
    goto LABEL_11;
  }

  v39 = v54 | ((v55 & 1) << 8);
LABEL_12:
  *(v85 + *(v83 + 48)) = v39;
  v40 = [v35 subFolderIdentifiersOrderedSet];
  v41 = [v40 allObjects];

  sub_100008250(0, &qword_1000A64F8, NSString_ptr);
  v42 = sub_100085208();

  if (v42 >> 62)
  {
    v43 = sub_100085718();
    if (v43)
    {
      goto LABEL_14;
    }

LABEL_26:

    v45 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
    goto LABEL_26;
  }

LABEL_14:
  v87 = _swiftEmptyArrayStorage;
  sub_10003BCC0(0, v43 & ~(v43 >> 63), 0);
  if (v43 < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v44 = 0;
  v45 = v87;
  do
  {
    if ((v42 & 0xC000000000000001) != 0)
    {
      v46 = sub_100085648();
    }

    else
    {
      v46 = *(v42 + 8 * v44 + 32);
    }

    v47 = v46;
    v48 = sub_100085098();
    v50 = v49;

    v87 = v45;
    v52 = v45[2];
    v51 = v45[3];
    if (v52 >= v51 >> 1)
    {
      sub_10003BCC0((v51 > 1), v52 + 1, 1);
      v45 = v87;
    }

    ++v44;
    v45[2] = v52 + 1;
    v53 = &v45[2 * v52];
    v53[4] = v48;
    v53[5] = v50;
  }

  while (v43 != v44);

  v35 = v84;
LABEL_27:
  v40 = v82;
  *(v85 + *(v83 + 52)) = v45;
  if ((v40[56] & 1) == 0)
  {
    sub_100030518(v40);
    if (v40[59])
    {
      goto LABEL_42;
    }

LABEL_54:

    return;
  }

  v56 = v35;
  v18 = sub_100085438();

  if (!(v18 >> 62))
  {
    v57 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  v57 = sub_100085718();
  if (!v57)
  {
LABEL_53:

    sub_100030518(v40);
    *(v85 + v80) = _swiftEmptyArrayStorage;
    if (v40[59])
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

LABEL_30:
  v87 = _swiftEmptyArrayStorage;
  sub_10003BD68(0, v57 & ~(v57 >> 63), 0);
  if (v57 < 0)
  {
    __break(1u);
    return;
  }

  v58 = 0;
  v59 = v87;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v60 = sub_100085648();
    }

    else
    {
      v60 = *(v18 + 8 * v58 + 32);
    }

    sub_100001B78(v60, v8);
    v87 = v59;
    v62 = v59[2];
    v61 = v59[3];
    if (v62 >= v61 >> 1)
    {
      sub_10003BD68(v61 > 1, v62 + 1, 1);
      v59 = v87;
    }

    ++v58;
    v59[2] = v62 + 1;
    sub_100066400(v8, v59 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v62);
  }

  while (v57 != v58);

  v63 = v82;
  sub_100030518(v82);
  *(v85 + v80) = v59;
  if ((*(v63 + 59) & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_42:
  v64 = [v35 parent];
  if (v64 && (v65 = v64, v66 = [v64 identifier], v65, v66) || (v67 = objc_msgSend(v35, "account"), v66 = objc_msgSend(v67, "identifier"), v67, v66))
  {
    v68 = sub_100085098();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = v85;
  v85[3] = v68;
  v71[4] = v70;
  v72 = [v35 parent];
  if (v72)
  {
    v73 = v72;
    v74 = [v72 title];
  }

  else
  {
    v73 = [v35 account];
    v74 = [v73 localizedName];
  }

  v75 = v74;

  v76 = sub_100085098();
  v78 = v77;

  v79 = v85;
  v85[5] = v76;
  v79[6] = v78;
  *(v79 + 56) = [v35 markedForDeletion];
  LOBYTE(v75) = sub_100065494([v35 folderType]);

  *(v79 + 80) = v75;
}

uint64_t sub_100062FCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4853415254;
  if (v2 != 1)
  {
    v3 = 0x5452414D53;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4C414D524F4ELL;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x4853415254;
  if (*a2 != 1)
  {
    v6 = 0x5452414D53;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x4C414D524F4ELL;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100085948();
  }

  return v9 & 1;
}

Swift::Int sub_1000630BC()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100063154()
{
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_1000631D8()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10006326C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000659CC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10006329C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4853415254;
  if (v2 != 1)
  {
    v4 = 0x5452414D53;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4C414D524F4ELL;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_100063408(void *a1)
{
  v3 = sub_100005740(&qword_1000A7130, &qword_10008F2B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10006514C();
  sub_100085A78();
  v11[15] = 0;
  sub_100084998();
  sub_1000651A0(&qword_1000A7138, &type metadata accessor for ICQueryEntity);
  sub_1000858D8();
  if (!v1)
  {
    v9 = *(type metadata accessor for ICFolderArchiveModel.Query(0) + 20);
    v11[14] = 1;
    sub_100084958();
    sub_1000651A0(&qword_1000A7140, &type metadata accessor for ICQueryType);
    sub_1000858D8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100063608@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_100084958();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100084998();
  v28 = *(v32 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v32);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100005740(&qword_1000A6E18, &qword_10008EAE0);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v33);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_10006514C();
  sub_100085A68();
  if (v2)
  {
    return sub_100006304(a1);
  }

  v25 = v12;
  v17 = v15;
  v19 = v28;
  v18 = v29;
  v35 = 0;
  sub_1000651A0(&qword_1000A6E28, &type metadata accessor for ICQueryEntity);
  v20 = v30;
  sub_100085828();
  v21 = *(v19 + 32);
  v24 = v17;
  v21(v17, v20, v32);
  v34 = 1;
  sub_1000651A0(&qword_1000A6E30, &type metadata accessor for ICQueryType);
  sub_100085828();
  (*(v31 + 8))(v11, v33);
  v22 = v24;
  (*(v26 + 32))(v24 + *(v25 + 20), v6, v18);
  sub_100066464(v22, v27, type metadata accessor for ICFolderArchiveModel.Query);
  sub_100006304(a1);
  return sub_1000664CC(v22, type metadata accessor for ICFolderArchiveModel.Query);
}

uint64_t sub_100063A44()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x797469746E65;
  }

  *v0;
  return result;
}

uint64_t sub_100063A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100063B4C(uint64_t a1)
{
  v2 = sub_10006514C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063B88(uint64_t a1)
{
  v2 = sub_10006514C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100063BF4()
{
  v0 = sub_100084958();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100084998();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = v10;
  v11 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v27 = v11;
  sub_10000B64C(v11, qword_1000B17D8);
  v26 = sub_10000B614(v11, qword_1000B17D8);
  (*(v7 + 104))(v10, enum case for ICQueryEntity.note(_:), v6);
  v12 = swift_allocObject();
  sub_100005740(&qword_1000A6E70, &qword_10008EAE8);
  v13 = *(v1 + 72);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10008EA00;
  v16 = (v15 + v14);
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  *v16 = v17;
  v18 = enum case for ICQueryType.deleted(_:);
  v19 = *(v2 + 104);
  v19(v16, enum case for ICQueryType.deleted(_:), v0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v16 + v13) = v20;
  v19((v16 + v13), v18, v0);
  *(v12 + 16) = v15;
  *v5 = v12;
  v19(v5, enum case for ICQueryType.or(_:), v0);
  v21 = objc_allocWithZone(sub_100084CC8());
  v22 = sub_100084CA8();
  v23 = v26;
  sub_100084CB8();
  v24 = v23 + *(v27 + 20);
  sub_100084C98();
}

uint64_t sub_100063ED4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000850C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000850B8();
  v7 = sub_1000850A8();
  v9 = v8;

  (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    v13 = type metadata accessor for ICFolderArchiveModel.Query(0);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    v10 = sub_1000844D8();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1000844C8();
    sub_100084CC8();
    sub_1000651A0(&qword_1000A6E68, &type metadata accessor for ICQuery);
    sub_1000844B8();

    v14 = v18[1];
    sub_100084CB8();
    v15 = type metadata accessor for ICFolderArchiveModel.Query(0);
    v16 = a1 + *(v15 + 20);
    sub_100084C98();

    sub_10001C19C(v7, v9);
    return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
  }
}

uint64_t sub_100064130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1000A5448 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_10000B614(a1, qword_1000B17D8);
  return sub_100066464(v3, a2, type metadata accessor for ICFolderArchiveModel.Query);
}

uint64_t sub_1000641D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4445494649444F4DLL;
  v4 = 0xEB0000000054415FLL;
  if (v2 != 1)
  {
    v3 = 0x454C544954;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x5F44455441455243;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000005441;
  }

  v7 = 0x4445494649444F4DLL;
  v8 = 0xEB0000000054415FLL;
  if (*a2 != 1)
  {
    v7 = 0x454C544954;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x5F44455441455243;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000005441;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100085948();
  }

  return v11 & 1;
}

Swift::Int sub_1000642DC()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100064388()
{
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_100064420()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000644C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100065C58(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000644F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000005441;
  v4 = 0xEB0000000054415FLL;
  v5 = 0x4445494649444F4DLL;
  if (v2 != 1)
  {
    v5 = 0x454C544954;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5F44455441455243;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100064678(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x49444E4543534544;
  }

  else
  {
    v4 = 0x4E49444E45435341;
  }

  if (v3)
  {
    v5 = 0xE900000000000047;
  }

  else
  {
    v5 = 0xEA0000000000474ELL;
  }

  if (*a2)
  {
    v6 = 0x49444E4543534544;
  }

  else
  {
    v6 = 0x4E49444E45435341;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000474ELL;
  }

  else
  {
    v7 = 0xE900000000000047;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100085948();
  }

  return v9 & 1;
}

Swift::Int sub_100064728()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000647B4()
{
  *v0;
  sub_100085118();
}

Swift::Int sub_10006482C()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000648B4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10009E3D8;
  v8._object = v3;
  v5 = sub_100085788(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100064914(uint64_t *a1@<X8>)
{
  v2 = 0x4E49444E45435341;
  if (*v1)
  {
    v2 = 0x49444E4543534544;
  }

  v3 = 0xE900000000000047;
  if (*v1)
  {
    v3 = 0xEA0000000000474ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100064A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065B68();
  v5 = sub_100065BBC();

  return static ArgumentDecodable<>.defaultArgument.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_100064A8C(void *a1, __int16 a2)
{
  v5 = sub_100005740(&qword_1000A7148, &qword_10008F2C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100065E84();
  sub_100085A78();
  v12[15] = a2;
  v12[14] = 0;
  sub_100067478();
  sub_1000858D8();
  if (!v2)
  {
    v12[13] = HIBYTE(a2) & 1;
    v12[12] = 1;
    sub_1000674CC();
    sub_1000858D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100064C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_100084A28();
}

uint64_t sub_100064D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return sub_100084A48();
}

uint64_t sub_100064D94()
{
  if (*v0)
  {
    result = 0x6F69746365726964;
  }

  else
  {
    result = 0x726564726FLL;
  }

  *v0;
  return result;
}

uint64_t sub_100064DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564726FLL && a2 == 0xE500000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100064EB0(uint64_t a1)
{
  v2 = sub_100065E84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100064EEC(uint64_t a1)
{
  v2 = sub_100065E84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100064F28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100065CA4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_100064F5C(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100064A8C(a1, v2 | *v1);
}

void sub_100064F8C()
{
  v0 = [objc_allocWithZone(ICFolderCustomNoteSortType) init];
  if ([v0 isDefault] || (v1 = sub_1000651E8(objc_msgSend(v0, "order")), v1 == 3))
  {

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v3 = sub_10006538C([v0 direction]);

    if (v3 == 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4;
    }
  }

  byte_1000B17F0 = v2;
  byte_1000B17F1 = v3 & 1;
}

uint64_t sub_10006504C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1000A5450 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1000B17F1;
  *a1 = byte_1000B17F0;
  a1[1] = v1;
  return result;
}

uint64_t sub_1000650BC@<X0>(unsigned __int8 a1@<W0>, _WORD *a2@<X8>)
{
  result = sub_100065F80(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10006514C()
{
  result = qword_1000A6E20;
  if (!qword_1000A6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E20);
  }

  return result;
}

uint64_t sub_1000651A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000651E8(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      if (qword_1000A5440 != -1)
      {
        swift_once();
      }

      v6 = sub_100084FB8();
      sub_10000B614(v6, qword_1000A6DF0);
      v2 = sub_100084FA8();
      v3 = sub_100085378();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_17;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Cannot serialize default note sort order — returning nil";
      goto LABEL_16;
    }

    if (result == 1)
    {
      return result;
    }

LABEL_8:
    if (qword_1000A5440 != -1)
    {
      swift_once();
    }

    v1 = sub_100084FB8();
    sub_10000B614(v1, qword_1000A6DF0);
    v2 = sub_100084FA8();
    v3 = sub_100085388();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_17;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unknown note sort order — returning nil";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_17:

    return 3;
  }

  if (result != 2)
  {
    if (result == 3)
    {
      return 2;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_10006538C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  if (qword_1000A5440 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A6DF0);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown note sort direction — returning nil", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_100065494(unsigned __int16 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (qword_1000A5440 != -1)
        {
          swift_once();
        }

        v2 = sub_100084FB8();
        sub_10000B614(v2, qword_1000A6DF0);
        v3 = sub_100084FA8();
        v4 = sub_100085388();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_16;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Deprecated folder type — returning nil";
        goto LABEL_15;
      }

LABEL_11:
      if (qword_1000A5440 != -1)
      {
        swift_once();
      }

      v7 = sub_100084FB8();
      sub_10000B614(v7, qword_1000A6DF0);
      v3 = sub_100084FA8();
      v4 = sub_100085388();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_16;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Unknown folder type — returning nil";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_16:

      return 3;
    }

    return 2;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 1;
      }

      goto LABEL_11;
    }

    return 0;
  }
}

uint64_t sub_100065640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000871D0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000871F0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74726F5365746F6ELL && a2 == 0xEB00000000676E69 || (sub_100085948() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100087290 == a2 || (sub_100085948() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365)
  {

    return 10;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1000659CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E2B8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100065A18()
{
  result = qword_1000A6E38;
  if (!qword_1000A6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E38);
  }

  return result;
}

unint64_t sub_100065A6C()
{
  result = qword_1000A6E40;
  if (!qword_1000A6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E40);
  }

  return result;
}

unint64_t sub_100065AC0()
{
  result = qword_1000A6E48;
  if (!qword_1000A6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E48);
  }

  return result;
}

unint64_t sub_100065B14()
{
  result = qword_1000A6E50;
  if (!qword_1000A6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E50);
  }

  return result;
}

unint64_t sub_100065B68()
{
  result = qword_1000A6E58;
  if (!qword_1000A6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E58);
  }

  return result;
}

unint64_t sub_100065BBC()
{
  result = qword_1000A6E60;
  if (!qword_1000A6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E60);
  }

  return result;
}

uint64_t sub_100065C10()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065C58(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E348;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100065CA4(uint64_t *a1)
{
  v3 = sub_100005740(&qword_1000A6E78, &qword_10008EAF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100065E84();
  sub_100085A68();
  if (v1)
  {
    return sub_100006304(a1);
  }

  v13[14] = 0;
  sub_100065ED8();
  sub_100085828();
  v9 = v13[15];
  v13[12] = 1;
  sub_100065F2C();
  sub_100085828();
  (*(v4 + 8))(v7, v3);
  v11 = v13[13];
  sub_100006304(a1);
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 | v9;
}

unint64_t sub_100065E84()
{
  result = qword_1000A6E80;
  if (!qword_1000A6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E80);
  }

  return result;
}

unint64_t sub_100065ED8()
{
  result = qword_1000A6E88;
  if (!qword_1000A6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E88);
  }

  return result;
}

unint64_t sub_100065F2C()
{
  result = qword_1000A6E90;
  if (!qword_1000A6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6E90);
  }

  return result;
}

uint64_t sub_100065F80(unsigned __int8 a1)
{
  sub_10001D33C();
  v1 = sub_1000854F8();

  if (v1[2] == 2 && (v2 = v1[4], v3 = v1[5], sub_100065A18(), sub_100065A6C(), sub_100065AC0(), , result = sub_100084A28(), a1 != 3))
  {
    if (v1[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v5 = v1[6];
      v6 = v1[7];

      sub_100065B14();
      sub_100065B68();
      sub_100065BBC();
      sub_100084A28();
      if (a1 == 2)
      {
        return 512;
      }

      else
      {
        return a1 | ((a1 & 1) << 8);
      }
    }
  }

  else
  {

    return 512;
  }

  return result;
}

uint64_t sub_1000660F0(uint64_t a1)
{
  v10 = a1;
  v1 = sub_100084968();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  v11 = enum case for AnsiStylings.cyan(_:);
  v6 = v2[13];
  v6(v5);
  sub_100085918();
  v7 = v2[1];
  v7(v5, v1);
  sub_100065A18();
  sub_100065A6C();
  sub_100065AC0();
  v14._countAndFlagsBits = sub_100084A48();
  sub_100085158(v14);

  v8 = enum case for AnsiStylings.reset(_:);
  (v6)(v5, enum case for AnsiStylings.reset(_:), v1);
  sub_100085918();
  v7(v5, v1);
  v15._countAndFlagsBits = 44;
  v15._object = 0xE100000000000000;
  sub_100085158(v15);
  (v6)(v5, v11, v1);
  sub_100085918();
  v7(v5, v1);
  sub_100065B14();
  sub_100065B68();
  sub_100065BBC();
  v16._countAndFlagsBits = sub_100084A48();
  sub_100085158(v16);

  (v6)(v5, v8, v1);
  sub_100085918();
  v7(v5, v1);
  return v12;
}

uint64_t sub_100066390(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066400(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000664CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006652C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000665E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000666B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005740(&qword_1000A6E98, &qword_10008EAF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100066768()
{
  sub_1000341B8(319, &qword_1000A5538);
  if (v0 <= 0x3F)
  {
    sub_1000341B8(319, &unk_1000A5880);
    if (v1 <= 0x3F)
    {
      sub_1000341B8(319, &qword_1000A6F08);
      if (v2 <= 0x3F)
      {
        sub_1000668E8();
        if (v3 <= 0x3F)
        {
          sub_1000341B8(319, &qword_1000A6F18);
          if (v4 <= 0x3F)
          {
            sub_10005C578(319, &qword_1000A6A80, &qword_1000A6588, &qword_10008CE68);
            if (v5 <= 0x3F)
            {
              sub_10005C578(319, &qword_1000A6F20, &unk_1000A6F28, &qword_10008EB50);
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

void sub_1000668E8()
{
  if (!qword_1000A6F10)
  {
    type metadata accessor for ICFolderArchiveModel.Query(255);
    v0 = sub_1000854E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A6F10);
    }
  }
}

uint64_t sub_100066974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084998();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100084958();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100066A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100084998();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100084958();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100066B74()
{
  result = sub_100084998();
  if (v1 <= 0x3F)
  {
    result = sub_100084958();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICFolderArchiveModel.Sorting(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICFolderArchiveModel.Sorting(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}