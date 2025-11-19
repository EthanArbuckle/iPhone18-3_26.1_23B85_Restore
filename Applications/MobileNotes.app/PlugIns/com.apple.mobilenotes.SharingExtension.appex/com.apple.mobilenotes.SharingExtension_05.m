unint64_t sub_10008CEF0()
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

uint64_t sub_10008CF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008FBF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008CFA0(uint64_t a1)
{
  v2 = sub_10008EE18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008CFDC(uint64_t a1)
{
  v2 = sub_10008EE18();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10008D048(void *a1)
{
  v2 = v1;
  v4 = sub_1000B4EA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_1000B4F00();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000B5190();
  v15 = a1;
  sub_1000B4EF0();
  v16 = sub_1000B5180();
  if (v2[1])
  {
    v17 = *v2;
    v18 = sub_1000B55F0();
  }

  else
  {
    v18 = 0;
  }

  [v16 setText:v18];

  v19 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  sub_100030C74(v2 + v19[5], v12, &qword_100106E38, &unk_1000CB730);
  v20 = 0;
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1000B4E60();
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
    v26 = sub_1000B55F0();
  }

  else
  {
    v26 = 0;
  }

  [v16 setSpeaker:v26];

  return v16;
}

uint64_t sub_10008D364(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108288, &qword_1000CD6B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10008ED7C();
  sub_1000B6020();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_1000B5E20();
  if (!v2)
  {
    v13 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
    v14 = v13[5];
    v22[14] = 1;
    sub_1000B4EA0();
    sub_10008EDD0(&qword_100107228, &type metadata accessor for Date);
    sub_1000B5E60();
    v15 = v3 + v13[6];
    v16 = *v15;
    v17 = v15[8];
    v22[13] = 2;
    sub_1000B5E40();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    v22[12] = 3;
    sub_1000B5E20();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10008D584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v31 - v5;
  v37 = sub_100030480(&qword_100108278, &qword_1000CD6A8);
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
  v15 = sub_1000B4EA0();
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
  sub_1000458B4(a1, a1[3]);
  sub_10008ED7C();
  v36 = v8;
  v20 = v38;
  sub_1000B6010();
  if (v20)
  {
    sub_100035DA8(a1);
  }

  else
  {
    v38 = v17;
    v21 = v34;
    v22 = v35;
    v42 = 0;
    *v13 = sub_1000B5D70();
    v13[1] = v23;
    v41 = 1;
    sub_10008EDD0(&qword_100107288, &type metadata accessor for Date);
    sub_1000B5DB0();
    sub_10004CDC8(v22, v13 + v33);
    v40 = 2;
    v24 = sub_1000B5D90();
    v25 = v38;
    *v38 = v24;
    *(v25 + 8) = v26 & 1;
    v39 = 3;
    v28 = sub_1000B5D70();
    v30 = v29;
    (*(v21 + 8))(v36, v37);
    *v18 = v28;
    v18[1] = v30;
    sub_10008E7D8(v13, v32, _s14AudioRecordingV17TranscriptSegmentVMa);
    sub_100035DA8(0);
  }

  return sub_10008E840(v13, _s14AudioRecordingV17TranscriptSegmentVMa);
}

uint64_t sub_10008D928()
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

uint64_t sub_10008D9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008FD70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008D9C8(uint64_t a1)
{
  v2 = sub_10008ED7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008DA04(uint64_t a1)
{
  v2 = sub_10008ED7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10008DA70(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v47 - v11;
  v13 = sub_1000B4F00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v47 - v23;
  v25 = v3[1];
  if (v25 && *(a2 + 16) && (v26 = sub_10006320C(*v3, v25), (v27 & 1) != 0) && (v28 = [*(*(a2 + 56) + 8 * v26) identifier]) != 0)
  {
    v29 = v28;
    v49 = sub_1000B5620();

    sub_1000B4EB0();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v14 + 56))(v24, 1, 1, v13);
  }

  sub_100030C74(v24, v22, &qword_100106FD0, &qword_1000CAE50);
  v30 = *(v14 + 48);
  if (v30(v22, 1, v13) == 1)
  {
    sub_1000B4EF0();
    if (v30(v22, 1, v13) != 1)
    {
      sub_10008E770(v22);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v22, v13);
  }

  sub_1000B59C0();
  v31 = v51;
  v32 = sub_1000B59B0();
  v33 = _s14AudioRecordingV8FragmentVMa(0);
  sub_100030C74(v3 + v33[5], v12, &qword_100106E38, &unk_1000CB730);
  v34 = sub_1000B4EA0();
  v35 = *(v34 - 8);
  isa = 0;
  if ((*(v35 + 48))(v12, 1, v34) != 1)
  {
    isa = sub_1000B4E30().super.isa;
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
      sub_10008E7D8(v40, v8, _s14AudioRecordingV17TranscriptSegmentVMa);
      v42 = sub_10008D048(v31);
      sub_10008E840(v8, _s14AudioRecordingV17TranscriptSegmentVMa);
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

  sub_10008E770(v24);
  return v32;
}

void sub_10008DFD0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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
    sub_10004CE38(a3);

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
    sub_10008E680(&v75);
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
    sub_10004D3AC(a3, &v75);
    v18 = v17;
    v15 = a1;
    v19 = sub_1000A1B30(v16, v18, a3);
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
    v64 = sub_1000A1B30(v32, a2, a3);
    v65 = v33;
    v66 = v34;
  }

  else
  {
    sub_10004CE38(a3);
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

  sub_1000B59C0();
  v39 = sub_1000B57A0();

  if (v39 >> 62)
  {
    v40 = sub_1000B5CF0();
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
    sub_1000433EC(0, v40 & ~(v40 >> 63), 0);
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
        v42 = sub_1000B5C20();
      }

      else
      {
        v42 = *(v39 + 8 * v41 + 32);
      }

      sub_10008C1F8(v42, v11);
      v75 = v22;
      v44 = v22[2];
      v43 = v22[3];
      if (v44 >= v43 >> 1)
      {
        sub_1000433EC(v43 > 1, v44 + 1, 1);
        v22 = v75;
      }

      ++v41;
      v22[2] = v44 + 1;
      sub_10008E708(v11, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v44, _s14AudioRecordingV8FragmentVMa);
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
    sub_10008E6B0(&v75, v74);
    v28 = v56;
    v31 = v56;
    v67 = v30;
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_10008E708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008E770(uint64_t a1)
{
  v2 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008E7D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008E840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10008E8D0()
{
  sub_10004D9AC(319, &qword_100106CA0);
  if (v0 <= 0x3F)
  {
    sub_10004D954();
    if (v1 <= 0x3F)
    {
      sub_10004D9AC(319, &unk_100108190);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10008E9A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10008EA80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100030480(&qword_100106E38, &unk_1000CB730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10008EB30()
{
  sub_10004D9AC(319, &qword_100106CA0);
  if (v0 <= 0x3F)
  {
    sub_10004D954();
    if (v1 <= 0x3F)
    {
      sub_10008EC04();
      if (v2 <= 0x3F)
      {
        sub_10004D9AC(319, &unk_100108240);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10008EC04()
{
  if (!qword_100108230)
  {
    sub_10003052C(&qword_100108238, &qword_1000CD520);
    v0 = sub_1000B5AC0();
    if (!v1)
    {
      atomic_store(v0, &qword_100108230);
    }
  }
}

uint64_t sub_10008EC68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10008EC80(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008ECA4(uint64_t a1, unsigned int a2)
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

uint64_t sub_10008ED00(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10008ED7C()
{
  result = qword_100108280;
  if (!qword_100108280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108280);
  }

  return result;
}

uint64_t sub_10008EDD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008EE18()
{
  result = qword_100108298;
  if (!qword_100108298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108298);
  }

  return result;
}

uint64_t sub_10008EE6C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_100108238, &qword_1000CD520);
    sub_10008EDD0(a2, _s14AudioRecordingV17TranscriptSegmentVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008EF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656E694C706F74 && a2 == 0xEE007972616D6D75;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567972616D6D7573 && a2 == 0xEE006E6F69737265 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D67617266 && a2 == 0xE900000000000073 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65526C6C61437369 && a2 == 0xEF676E6964726F63 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546C6C6163 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_10008F124@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100030480(&qword_1001082C8, &qword_1000CD6C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v64 = 1;
  v61 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v40 = a1;
  sub_1000458B4(a1, v10);
  sub_10008F7B8();
  sub_1000B6010();
  if (v2)
  {
    v65 = v2;
    v39 = 0;
    sub_100035DA8(v40);
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
    return sub_10008E680(&v47);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_10004E560();
    sub_1000B5DB0();
    v38 = v47;
    v36 = v48;
    v37 = v49;
    LOBYTE(v41) = 1;
    sub_1000B5DB0();
    v39 = a2;
    v14 = v47;
    v13 = v48;
    v15 = v49;
    LOBYTE(v47) = 2;
    v34 = sub_1000B5DA0();
    v32 = v14;
    v33 = v13;
    v35 = v15;
    v64 = v16 & 1;
    sub_100030480(&qword_1001082D8, &qword_1000CD6D0);
    LOBYTE(v41) = 3;
    sub_10008F80C(&qword_1001082E0, &qword_1001082E8);
    sub_1000B5DB0();
    v17 = v47;
    LOBYTE(v47) = 4;
    HIDWORD(v31) = sub_1000B5D80();
    v18 = v17;
    v46 = 5;
    v19 = sub_1000B5DA0();
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
    sub_10008E6B0(&v41, &v47);
    sub_100035DA8(v40);
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
    result = sub_10008E680(&v47);
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

unint64_t sub_10008F7B8()
{
  result = qword_1001082D0;
  if (!qword_1001082D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001082D0);
  }

  return result;
}

uint64_t sub_10008F80C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003052C(&qword_1001082D8, &qword_1000CD6D0);
    sub_10008EDD0(a2, _s14AudioRecordingV8FragmentVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008F8DC()
{
  result = qword_100108308;
  if (!qword_100108308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108308);
  }

  return result;
}

unint64_t sub_10008F934()
{
  result = qword_100108310;
  if (!qword_100108310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108310);
  }

  return result;
}

unint64_t sub_10008F98C()
{
  result = qword_100108318;
  if (!qword_100108318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108318);
  }

  return result;
}

unint64_t sub_10008F9E4()
{
  result = qword_100108320;
  if (!qword_100108320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108320);
  }

  return result;
}

unint64_t sub_10008FA3C()
{
  result = qword_100108328;
  if (!qword_100108328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108328);
  }

  return result;
}

unint64_t sub_10008FA94()
{
  result = qword_100108330;
  if (!qword_100108330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108330);
  }

  return result;
}

unint64_t sub_10008FAEC()
{
  result = qword_100108338;
  if (!qword_100108338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108338);
  }

  return result;
}

unint64_t sub_10008FB44()
{
  result = qword_100108340;
  if (!qword_100108340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108340);
  }

  return result;
}

unint64_t sub_10008FB9C()
{
  result = qword_100108348;
  if (!qword_100108348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108348);
  }

  return result;
}

uint64_t sub_10008FBF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000C7A20 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_10008FD70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656B61657073 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000B5F20();

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

uint64_t sub_10008FEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1000B5FB0();
  sub_1000B56A0();
  v7 = sub_1000B5FE0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1000B5F20() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10008FFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B4DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  v9 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v11 = &v35[-v10];
  v12 = type metadata accessor for MarkdownStyle(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v35[-v18];
  if (!*(a2 + 16))
  {
    return 0;
  }

  v39 = v5;
  v20 = *(a2 + 40);
  sub_1000B5FB0();
  sub_1000997C4();
  v21 = sub_1000B5FE0();
  v22 = a2 + 56;
  v23 = -1 << *(a2 + 32);
  v24 = v21 & ~v23;
  if (((*(a2 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    return 0;
  }

  v40 = v17;
  v44 = a1;
  v25 = ~v23;
  v26 = *(v13 + 72);
  v42 = v25;
  v43 = v26;
  v27 = (v39 + 6);
  v41 = (v39 + 1);
  v38 = v8;
  v39 += 4;
  while (1)
  {
    sub_1000A49C8(*(a2 + 48) + v43 * v24, v19, type metadata accessor for MarkdownStyle);
    v28 = *(v45 + 48);
    sub_1000A49C8(v19, v11, type metadata accessor for MarkdownStyle);
    sub_1000A49C8(v44, &v11[v28], type metadata accessor for MarkdownStyle);
    v29 = *v27;
    v30 = (*v27)(v11, 6, v4);
    if (v30 > 2)
    {
      if (v30 > 4)
      {
        if (v30 == 5)
        {
          sub_1000A4A30(v19, type metadata accessor for MarkdownStyle);
          if (v29(&v11[v28], 6, v4) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1000A4A30(v19, type metadata accessor for MarkdownStyle);
          if (v29(&v11[v28], 6, v4) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v30 == 3)
      {
        sub_1000A4A30(v19, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1000A4A30(v19, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    if (v30)
    {
      if (v30 == 1)
      {
        sub_1000A4A30(v19, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1000A4A30(v19, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 2)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v31 = v40;
    sub_1000A49C8(v11, v40, type metadata accessor for MarkdownStyle);
    if (!v29(&v11[v28], 6, v4))
    {
      break;
    }

    sub_1000A4A30(v19, type metadata accessor for MarkdownStyle);
    (*v41)(v31, v4);
    v25 = v42;
LABEL_23:
    sub_100036320(v11, &qword_1001080A0, &qword_1000CCEC0);
LABEL_24:
    v24 = (v24 + 1) & v25;
    if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      return 0;
    }
  }

  v32 = v38;
  (*v39)(v38, &v11[v28], v4);
  v36 = sub_1000B4D40();
  v37 = v22;
  v33 = *v41;
  (*v41)(v32, v4);
  sub_1000A4A30(v19, type metadata accessor for MarkdownStyle);
  v33(v31, v4);
  v22 = v37;
  v25 = v42;
  if ((v36 & 1) == 0)
  {
    sub_1000A4A30(v11, type metadata accessor for MarkdownStyle);
    goto LABEL_24;
  }

LABEL_29:
  sub_1000A4A30(v11, type metadata accessor for MarkdownStyle);
  return 1;
}

uint64_t sub_1000905D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_100030C64(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_100036320(v14, &qword_100106E30, &unk_1000CAB60);
}

uint64_t sub_100090684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100030480(&qword_1001083B0, &unk_1000CDA60);
  result = sub_1000B5D00();
  v9 = 0;
  v41 = a1;
  v42 = result;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v40 = result + 64;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v41 + 48) + 16 * v20);
      v44 = *v21;
      v22 = *(*(v41 + 56) + 8 * v20);
      v45 = v21[1];

      v23 = v22;
      v24 = [v23 identifier];
      if (v24)
      {
        v25 = v24;
        sub_1000B5620();
      }

      v26 = [v23 typeUTI];
      if (v26)
      {
        v27 = v26;
        sub_1000B5620();
      }

      sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
      v28 = sub_1000B5940();

      *(v40 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v42;
      v29 = (v42[6] + 16 * v20);
      *v29 = v44;
      v29[1] = v45;
      *(v42[7] + 8 * v20) = v28;
      v30 = v42[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v42[2] = v32;
      v15 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        v33 = sub_100092514(result, a2, a3, a4, a5, a6, a7);

        return v33;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000908F8()
{
  v0 = sub_1000B5530();
  sub_10003640C(v0, qword_100108350);
  sub_100036380(v0, qword_100108350);
  return sub_1000B5510();
}

uint64_t sub_100090944(uint64_t a1, void *a2, CGColor *a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v12 = _s16AttributedStringV9AttributeVMa(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a6;

  sub_100090ACC(v18, a2, a3, a6, a7, v16);
  v19 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_100033E90(0, v19[2] + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_100033E90(v21 > 1, v22 + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v19[2] = v22 + 1;
  return sub_1000A47A4(v16, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, _s16AttributedStringV9AttributeVMa);
}

void sub_100090ACC(uint64_t a1@<X0>, void *a2@<X1>, CGColor *a3@<X2>, void *a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v242 = a5;
  v265 = a4;
  v266 = a2;
  v263 = a3;
  v267 = a1;
  v7 = sub_100030480(&qword_100108368, &unk_1000CDA10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v241 = (&v235 - v9);
  v10 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v270 = &v235 - v12;
  v13 = sub_1000B4DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v236 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v255 = &v235 - v18;
  v19 = sub_100030480(&qword_100108370, &unk_1000CDA20);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v247 = &v235 - v21;
  v22 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v254.i64[0] = &v235 - v24;
  v25 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v235 - v27;
  v29 = sub_1000B4F00();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v249 = &v235 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s16AttributedStringV9AttributeVMa(0);
  v34 = v33[5];
  v260 = v30;
  v35 = *(v30 + 56);
  v248 = v34;
  v262 = v35;
  v35(&a6[v34], 1, 1, v29);
  v36 = v33[6];
  v37 = sub_1000B4EA0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v252 = v37;
  v253.i64[0] = v36;
  v250 = (v38 + 56);
  v251 = v39;
  (v39)(&a6[v36], 1, 1);
  v40 = &a6[v33[7]];
  *v40 = xmmword_1000CB720;
  *(v40 + 1) = 0u;
  *(v40 + 2) = 0u;
  *(v40 + 3) = 0u;
  *(v40 + 8) = 0;
  v41 = v33[8];
  v42 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v245 = v42;
  v246 = v41;
  v243 = v43 + 56;
  v244 = v44;
  (v44)(&a6[v41], 1, 1);
  v258 = v33[9];
  a6[v258] = 5;
  v45 = v33[10];
  v261 = v14;
  v46 = *(v14 + 56);
  v257 = v45;
  v264 = v13;
  v268 = v46;
  v269 = v14 + 56;
  v46(&a6[v45], 1, 1, v13);
  v259 = v33[11];
  a6[v259] = 5;
  v47 = &a6[v33[12]];
  *v47 = 0;
  v47[1] = 0;
  v256 = v47;
  v48 = v33[13];
  v49 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v239 = v49;
  v240 = v48;
  v237 = v50 + 56;
  v238 = v51;
  (v51)(&a6[v48], 1, 1);
  v52 = v266;
  v53 = v267;
  v266 = a6;
  v54 = v263;
  *a6 = v52;
  *(a6 + 1) = v54;
  if (!*(v53 + 16))
  {
    goto LABEL_6;
  }

  v55 = ICTTAttributeNameReplicaID;
  v56 = sub_100063358(v55);
  if ((v57 & 1) == 0)
  {

LABEL_6:
    v262(v28, 1, 1, v29);
    goto LABEL_7;
  }

  sub_100030378(*(v53 + 56) + 32 * v56, &v280);

  v58 = swift_dynamicCast();
  v59 = v262;
  v262(v28, v58 ^ 1u, 1, v29);
  v60 = v260;
  if ((*(v260 + 48))(v28, 1, v29) != 1)
  {
    v263 = *(v60 + 32);
    v61 = v249;
    (v263)(v249, v28, v29);
    v62 = v266;
    v63 = v248;
    sub_100036320(v266 + v248, &qword_100106FD0, &qword_1000CAE50);
    (v263)(&v62[v63], v61, v29);
    v59(&v62[v63], 0, 1, v29);
    goto LABEL_8;
  }

LABEL_7:
  sub_100036320(v28, &qword_100106FD0, &qword_1000CAE50);
LABEL_8:
  v64 = v270;
  if (!*(v53 + 16))
  {
    goto LABEL_12;
  }

  v65 = ICTTAttributeNameTimestamp;
  v66 = sub_100063358(v65);
  if (v67)
  {
    sub_100030378(*(v53 + 56) + 32 * v66, &v280);

    if (swift_dynamicCast())
    {
      v68 = v254.i64[0];
      sub_1000B4E50();
      v251(v68, 0, 1, v252);
      sub_1000521D8(v68, v266 + v253.i64[0], &qword_100106E38, &unk_1000CB730);
    }

LABEL_12:
    if (!*(v53 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (!*(v53 + 16))
  {
    goto LABEL_29;
  }

LABEL_15:
  v69 = ICTTAttributeNameFont;
  v70 = sub_100063358(v69);
  if ((v71 & 1) == 0)
  {

    if (!*(v53 + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  sub_100030378(*(v53 + 56) + 32 * v70, v285);

  sub_1000362AC(0, &qword_100108398, ICTTFont_ptr);
  if (swift_dynamicCast())
  {
    v72 = v271;
    v73 = *(v40 + 1);
    v280 = *v40;
    v281 = v73;
    v74 = *(v40 + 2);
    v75 = *(v40 + 3);
    v282 = v74;
    v283 = v75;
    v284 = *(v40 + 8);
    v76 = *(&v280 + 1);
    if (*(&v280 + 1) == 1)
    {
      v262 = 0;
      v263 = 0;
      v76 = 0;
      v260 = 0;
      v254.i64[0] = 0;
      v77 = 0;
      v78 = 0;
      v74.i64[0] = 0x2000200020002;
      v253 = v74;
      v79 = 1;
      v80 = 1;
    }

    else
    {
      v262 = v281;
      v263 = v280;
      v74.i32[0] = *(&v281 + 9);
      v253 = vmovl_u8(*v74.i8);
      v260 = v282.i64[0];
      v77 = *(&v283 + 1);
      v254.i64[0] = v283;
      v78 = v284;
      v80 = v282.i8[8];
      v79 = BYTE8(v281);
    }

    v81 = v79 & 1;
    v274 = v79 & 1;
    v82 = v80 & 1;
    v273 = v80 & 1;
    v83 = *(v40 + 3);
    v277 = *(v40 + 2);
    v278 = v83;
    v279 = *(v40 + 8);
    v84 = *(v40 + 1);
    v275 = *v40;
    v276 = v84;
    sub_100030C74(&v280, v272, &qword_100108390, &qword_1000CDA38);
    sub_100036320(&v275, &qword_100108390, &qword_1000CDA38);
    v85 = v262;
    *v40 = v263;
    *(v40 + 1) = v76;
    *(v40 + 2) = v85;
    v40[24] = v81;
    *(v40 + 25) = vuzp1_s8(*v253.i8, *v253.i8).u32[0];
    *(v40 + 4) = v260;
    v40[40] = v82;
    *(v40 + 6) = v254.i64[0];
    *(v40 + 7) = v77;
    *(v40 + 8) = v78;
    v86 = v72;
    v87 = [(CGColor *)v72 fontName];
    if (v87)
    {
      v88 = v87;
      v89 = sub_1000B5620();
      v91 = v90;
    }

    else
    {
      v89 = 0;
      v91 = 0;
    }

    v53 = v267;
    v64 = v270;
    v92 = *(v40 + 1);

    *v40 = v89;
    *(v40 + 1) = v91;
    if (v91 != 1)
    {
      [(CGColor *)v86 pointSize];
      *(v40 + 2) = v93;
      v40[24] = 0;
      if (*(v40 + 1) != 1)
      {
        v40[25] = [(CGColor *)v86 fontHints]& 1;
        if (*(v40 + 1) != 1)
        {
          v234 = [(CGColor *)v86 fontHints];

          v40[26] = (v234 & 2) != 0;
          if (!*(v53 + 16))
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_29:
  if (!*(v53 + 16))
  {
    goto LABEL_37;
  }

LABEL_30:
  v94 = ICTTAttributeNameFontHints;
  v95 = sub_100063358(v94);
  if (v96)
  {
    sub_100030378(*(v53 + 56) + 32 * v95, v285);

    if (swift_dynamicCast())
    {
      v97 = v271;
      v98 = *(v40 + 1);
      v280 = *v40;
      v281 = v98;
      v99 = *(v40 + 3);
      v282 = *(v40 + 2);
      v283 = v99;
      v284 = *(v40 + 8);
      v100 = *(&v280 + 1);
      if (*(&v280 + 1) == 1)
      {
        v262 = 0;
        v263 = 0;
        v100 = 0;
        v260 = 0;
        v254.i64[0] = 0;
        v251 = 0;
        v252 = 0;
        v253.i32[0] = 2;
        v101 = 1;
        v102 = 2;
        v103 = 1;
      }

      else
      {
        v262 = v281;
        v263 = v280;
        v253.i32[0] = BYTE11(v281);
        v102 = BYTE12(v281);
        v260 = v282.i64[0];
        v254.i64[0] = v283;
        v251 = v284;
        v252 = *(&v283 + 1);
        v103 = v282.i8[8];
        v101 = BYTE8(v281);
      }

      v104 = v101 & 1;
      v274 = v101 & 1;
      v105 = v103 & 1;
      v273 = v103 & 1;
      v106 = *(v40 + 3);
      v277 = *(v40 + 2);
      v278 = v106;
      v279 = *(v40 + 8);
      v107 = *(v40 + 1);
      v275 = *v40;
      v276 = v107;
      sub_100030C74(&v280, v272, &qword_100108390, &qword_1000CDA38);
      sub_100036320(&v275, &qword_100108390, &qword_1000CDA38);
      v108 = v262;
      *v40 = v263;
      *(v40 + 1) = v100;
      *(v40 + 2) = v108;
      v40[24] = v104;
      v40[27] = v253.i8[0];
      v40[28] = v102;
      *(v40 + 4) = v260;
      v40[40] = v105;
      v109 = v251;
      v110 = v252;
      *(v40 + 6) = v254.i64[0];
      *(v40 + 7) = v110;
      *(v40 + 8) = v109;
      v40[25] = v97 & 1;
      v40[26] = (v97 & 2) != 0;
      v64 = v270;
    }
  }

  else
  {
  }

LABEL_37:
  if (*(v53 + 16))
  {
    v111 = ICTTAttributeNameUnderline;
    v112 = sub_100063358(v111);
    if (v113)
    {
      sub_100030378(*(v53 + 56) + 32 * v112, v285);

      if (swift_dynamicCast())
      {
        LODWORD(v263) = v271;
        v114 = *(v40 + 1);
        v280 = *v40;
        v281 = v114;
        v115 = *(v40 + 3);
        v282 = *(v40 + 2);
        v283 = v115;
        v284 = *(v40 + 8);
        v116 = *(&v280 + 1);
        if (*(&v280 + 1) == 1)
        {
          v262 = 0;
          v116 = 0;
          v260 = 0;
          v254.i64[0] = 0;
          v251 = 0;
          v252 = 0;
          v250 = 0;
          v253.i32[0] = 2;
          v117 = 1;
          v118 = 2;
          v119 = 2;
          v120 = 1;
        }

        else
        {
          v262 = v280;
          v260 = v281;
          v253.i32[0] = BYTE9(v281);
          v118 = BYTE10(v281);
          v119 = BYTE12(v281);
          v254.i64[0] = v282.i64[0];
          v251 = *(&v283 + 1);
          v252 = v283;
          v250 = v284;
          v120 = v282.i8[8];
          v117 = BYTE8(v281);
        }

        v131 = v117 & 1;
        v274 = v117 & 1;
        v132 = v120 & 1;
        v273 = v120 & 1;
        v133 = *(v40 + 3);
        v277 = *(v40 + 2);
        v278 = v133;
        v279 = *(v40 + 8);
        v134 = *(v40 + 1);
        v275 = *v40;
        v276 = v134;
        sub_100030C74(&v280, v272, &qword_100108390, &qword_1000CDA38);
        sub_100036320(&v275, &qword_100108390, &qword_1000CDA38);
        *v40 = v262;
        *(v40 + 1) = v116;
        *(v40 + 2) = v260;
        v40[24] = v131;
        v40[25] = v253.i8[0];
        v40[26] = v118;
        v40[28] = v119;
        *(v40 + 4) = v254.i64[0];
        v40[40] = v132;
        v135 = v251;
        *(v40 + 6) = v252;
        *(v40 + 7) = v135;
        *(v40 + 8) = v250;
        v40[27] = v263;
        v64 = v270;
        if (!*(v53 + 16))
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }
  }

  if (!*(v53 + 16))
  {
    goto LABEL_54;
  }

LABEL_44:
  v121 = ICTTAttributeNameStrikethrough;
  v122 = sub_100063358(v121);
  if (v123)
  {
    sub_100030378(*(v53 + 56) + 32 * v122, v285);

    if (swift_dynamicCast())
    {
      LODWORD(v263) = v271;
      v124 = *(v40 + 1);
      v280 = *v40;
      v281 = v124;
      v125 = *(v40 + 3);
      v282 = *(v40 + 2);
      v283 = v125;
      v284 = *(v40 + 8);
      v126 = *(&v280 + 1);
      if (*(&v280 + 1) == 1)
      {
        v262 = 0;
        v126 = 0;
        v260 = 0;
        v254.i64[0] = 0;
        v251 = 0;
        v252 = 0;
        v250 = 0;
        v253.i32[0] = 2;
        v127 = 1;
        v128 = 2;
        v129 = 2;
        v130 = 1;
      }

      else
      {
        v262 = v280;
        v260 = v281;
        v253.i32[0] = BYTE9(v281);
        v128 = BYTE10(v281);
        v129 = BYTE11(v281);
        v254.i64[0] = v282.i64[0];
        v251 = *(&v283 + 1);
        v252 = v283;
        v250 = v284;
        v130 = v282.i8[8];
        v127 = BYTE8(v281);
      }

      v136 = v127 & 1;
      v274 = v127 & 1;
      v137 = v130 & 1;
      v273 = v130 & 1;
      v138 = *(v40 + 3);
      v277 = *(v40 + 2);
      v278 = v138;
      v279 = *(v40 + 8);
      v139 = *(v40 + 1);
      v275 = *v40;
      v276 = v139;
      sub_100030C74(&v280, v272, &qword_100108390, &qword_1000CDA38);
      sub_100036320(&v275, &qword_100108390, &qword_1000CDA38);
      *v40 = v262;
      *(v40 + 1) = v126;
      *(v40 + 2) = v260;
      v40[24] = v136;
      v40[25] = v253.i8[0];
      v40[26] = v128;
      v40[27] = v129;
      *(v40 + 4) = v254.i64[0];
      v40[40] = v137;
      v140 = v251;
      *(v40 + 6) = v252;
      *(v40 + 7) = v140;
      *(v40 + 8) = v250;
      v40[28] = v263;
      v64 = v270;
    }
  }

  else
  {
  }

LABEL_54:
  if (!*(v53 + 16))
  {
    goto LABEL_60;
  }

  v141 = ICTTAttributeNameSuperscript;
  v142 = sub_100063358(v141);
  if ((v143 & 1) == 0)
  {

LABEL_60:
    if (!*(v53 + 16))
    {
      goto LABEL_83;
    }

    goto LABEL_61;
  }

  sub_100030378(*(v53 + 56) + 32 * v142, v285);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  v263 = v271;
  v144 = *(v40 + 1);
  v280 = *v40;
  v281 = v144;
  v145 = *(v40 + 2);
  v146 = *(v40 + 3);
  v282 = v145;
  v283 = v146;
  v284 = *(v40 + 8);
  v147 = *(&v280 + 1);
  if (*(&v280 + 1) == 1)
  {
    v262 = 0;
    v147 = 0;
    v260 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v145.i64[0] = 0x2000200020002;
    v254 = v145;
    v151 = 1;
  }

  else
  {
    v262 = v280;
    v260 = v281;
    v145.i32[0] = *(&v281 + 9);
    v254 = vmovl_u8(*v145.i8);
    v149 = *(&v283 + 1);
    v148 = v283;
    v150 = v284;
    v151 = BYTE8(v281);
  }

  v186 = v151 & 1;
  v274 = v151 & 1;
  v187 = *(v40 + 3);
  v277 = *(v40 + 2);
  v278 = v187;
  v279 = *(v40 + 8);
  v188 = *(v40 + 1);
  v275 = *v40;
  v276 = v188;
  sub_100030C74(&v280, v272, &qword_100108390, &qword_1000CDA38);
  sub_100036320(&v275, &qword_100108390, &qword_1000CDA38);
  *v40 = v262;
  *(v40 + 1) = v147;
  *(v40 + 2) = v260;
  v40[24] = v186;
  *(v40 + 25) = vuzp1_s8(*v254.i8, *v254.i8).u32[0];
  *(v40 + 6) = v148;
  *(v40 + 7) = v149;
  *(v40 + 8) = v150;
  *(v40 + 4) = v263;
  v40[40] = 0;
  v64 = v270;
  if (!*(v53 + 16))
  {
LABEL_83:
    v175 = v264;
    v174 = v265;
    if (!*(v53 + 16))
    {
LABEL_89:
      v268(v64, 1, 1, v175);
LABEL_90:
      sub_100036320(v64, &qword_100106F88, &qword_1000CAE20);
      if (!*(v53 + 16))
      {
        goto LABEL_87;
      }

      goto LABEL_91;
    }

    goto LABEL_84;
  }

LABEL_61:
  v152 = ICTTAttributeNameForegroundColor;
  v153 = sub_100063358(v152);
  if (v154)
  {
    sub_100030378(*(v53 + 56) + 32 * v153, v285);

    v155 = *(v40 + 1);
    v280 = *v40;
    v281 = v155;
    v156 = *(v40 + 2);
    v157 = *(v40 + 3);
    v282 = v156;
    v283 = v157;
    v284 = *(v40 + 8);
    v158 = *(&v280 + 1);
    if (*(&v280 + 1) == 1)
    {
      v262 = 0;
      v263 = 0;
      v158 = 0;
      v260 = 0;
      v254.i64[0] = 0;
      v159 = 0;
      v160 = 0;
      v156.i64[0] = 0x2000200020002;
      v253 = v156;
      v161 = 1;
      v162 = 1;
    }

    else
    {
      v262 = v281;
      v263 = v280;
      v156.i32[0] = *(&v281 + 9);
      v253 = vmovl_u8(*v156.i8);
      v260 = v282.i64[0];
      v159 = *(&v283 + 1);
      v254.i64[0] = v283;
      v160 = v284;
      v162 = v282.i8[8];
      v161 = BYTE8(v281);
    }

    v163 = v161 & 1;
    v274 = v161 & 1;
    v164 = v162 & 1;
    v273 = v162 & 1;
    v165 = *(v40 + 3);
    v277 = *(v40 + 2);
    v278 = v165;
    v279 = *(v40 + 8);
    v166 = *(v40 + 1);
    v275 = *v40;
    v276 = v166;
    sub_100030C74(&v280, v272, &qword_100108390, &qword_1000CDA38);
    sub_100036320(&v275, &qword_100108390, &qword_1000CDA38);
    v167 = v262;
    *v40 = v263;
    *(v40 + 1) = v158;
    *(v40 + 2) = v167;
    v40[24] = v163;
    *(v40 + 25) = vuzp1_s8(*v253.i8, *v253.i8).u32[0];
    *(v40 + 4) = v260;
    v40[40] = v164;
    *(v40 + 6) = v254.i64[0];
    *(v40 + 7) = v159;
    *(v40 + 8) = v160;
    sub_100030378(v285, v272);
    type metadata accessor for CGColor(0);
    swift_dynamicCast();
    v168 = sub_1000A2674(v271);
    v170 = v169;
    v172 = v171;
    sub_100035DA8(v285);
    v173 = *(v40 + 8);
    sub_10004E4C8(*(v40 + 6), *(v40 + 7));
    *(v40 + 6) = v168;
    *(v40 + 7) = v170;
    *(v40 + 8) = v172;
    v64 = v270;
  }

  else
  {
  }

  v175 = v264;
  v174 = v265;
  if (*(v53 + 16))
  {
    v176 = ICTTAttributeNameParagraphStyle;
    v177 = sub_100063358(v176);
    if (v178)
    {
      sub_100030378(*(v53 + 56) + 32 * v177, &v280);

      sub_1000362AC(0, &qword_100108388, ICTTParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v179 = v275;
        v180 = v247;
        sub_100095B2C(v179, v247);
        v244(v180, 0, 1, v245);
        v181 = v266;
        sub_1000521D8(v180, v266 + v246, &qword_100108370, &unk_1000CDA20);
        v182 = [v179 writingDirection];

        v183 = v182 + 1;
        if (v182 == 3)
        {
          v184 = 4;
        }

        else
        {
          v184 = 5;
        }

        if (v183 >= 4)
        {
          v185 = v184;
        }

        else
        {
          v185 = 0x2030100u >> (8 * v183);
        }

        *(v181 + v259) = v185;
        if (!*(v53 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_84;
      }
    }

    else
    {
    }
  }

  if (!*(v53 + 16))
  {
    goto LABEL_89;
  }

LABEL_84:
  v189 = ICTTNSLinkAttributeName;
  v190 = sub_100063358(v189);
  if ((v191 & 1) == 0)
  {

    goto LABEL_89;
  }

  sub_100030378(*(v53 + 56) + 32 * v190, &v280);

  v192 = swift_dynamicCast();
  v268(v64, v192 ^ 1u, 1, v175);
  if ((*(v261 + 48))(v64, 1, v175) == 1)
  {
    goto LABEL_90;
  }

  v193 = *(v261 + 32);
  v194 = v255;
  v193(v255, v64, v175);
  v195 = v266;
  v196 = v257;
  sub_100036320(v266 + v257, &qword_100106F88, &qword_1000CAE20);
  v193(&v195[v196], v194, v175);
  v268(&v195[v196], 0, 1, v175);
  if (!*(v53 + 16))
  {
LABEL_87:
    v280 = 0u;
    v281 = 0u;
    goto LABEL_105;
  }

LABEL_91:
  v197 = ICTTNSWritingDirectionAttributeName;
  v198 = sub_100063358(v197);
  if (v199)
  {
    sub_100030378(*(v53 + 56) + 32 * v198, &v280);
  }

  else
  {
    v280 = 0u;
    v281 = 0u;
  }

  if (*(&v281 + 1))
  {
    if (swift_dynamicCast())
    {
      v200 = v275 + 1;
      if (v275 == 3)
      {
        v201 = 4;
      }

      else
      {
        v201 = 5;
      }

      if (v200 < 4)
      {
        v201 = 0x2030100u >> (8 * v200);
      }

      *(v266 + v259) = v201;
    }

    if (!*(v53 + 16))
    {
      goto LABEL_106;
    }

    goto LABEL_103;
  }

LABEL_105:
  sub_100036320(&v280, &qword_100106E30, &unk_1000CAB60);
  if (!*(v53 + 16))
  {
LABEL_106:
    v280 = 0u;
    v281 = 0u;
    goto LABEL_114;
  }

LABEL_103:
  v202 = ICTTAttributeNameEmphasis;
  v203 = sub_100063358(v202);
  if (v204)
  {
    sub_100030378(*(v53 + 56) + 32 * v203, &v280);
  }

  else
  {
    v280 = 0u;
    v281 = 0u;
  }

  if (*(&v281 + 1))
  {
    if (swift_dynamicCast())
    {
      v205 = ICEmphasisColorTypeForTag();
      v206 = sub_1000A2B74(v205);
      *(v266 + v258) = v206;
    }

    if (!*(v53 + 16))
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

LABEL_114:
  sub_100036320(&v280, &qword_100106E30, &unk_1000CAB60);
  if (!*(v53 + 16))
  {
LABEL_115:
    v280 = 0u;
    v281 = 0u;
    goto LABEL_118;
  }

LABEL_112:
  v207 = ICTTNSAttachmentAttributeName;
  v208 = sub_100063358(v207);
  if (v209)
  {
    sub_100030378(*(v53 + 56) + 32 * v208, &v280);
  }

  else
  {
    v280 = 0u;
    v281 = 0u;
  }

LABEL_118:

  if (!*(&v281 + 1))
  {

    sub_100036320(&v280, &qword_100106E30, &unk_1000CAB60);
    return;
  }

  sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_139;
  }

  v210 = v275;
  if ([objc_opt_self() isInlineAttachment:v275])
  {
    if (v174)
    {
      v211 = v174;
      v212 = [v210 inlineAttachmentInContext:v211];
      if (v212)
      {
        v213 = v212;
        v214 = v241;
        sub_100097158(v213, v241);
        v238(v214, 0, 1, v239);
        sub_1000521D8(v214, v266 + v240, &qword_100108368, &unk_1000CDA10);
        if ((v242 & 1) != 0 && (v215 = [v213 tokenContentIdentifier]) != 0 && (v216 = v215, v217 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(), v216, v217))
        {
          v218 = v236;
          sub_1000B4D50();

          v219 = v266;
          v220 = v257;
          sub_100036320(v266 + v257, &qword_100106F88, &qword_1000CAE20);
          (*(v261 + 32))(&v219[v220], v218, v175);
          v268(&v219[v220], 0, 1, v175);
        }

        else
        {
        }

        return;
      }
    }

    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v227 = sub_1000B5530();
    sub_100036380(v227, qword_100108350);
    v228 = v210;
    v229 = sub_1000B5520();
    v230 = sub_1000B5910();

    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      *v231 = 138412290;
      *(v231 + 4) = v228;
      *v232 = v228;
      v233 = v228;
      _os_log_impl(&_mh_execute_header, v229, v230, "Cannot resolve inline attachment — skipping {attachment: %@}", v231, 0xCu);
      sub_100036320(v232, &qword_100108380, &qword_1000CDA30);
    }

    else
    {
    }

LABEL_139:

    return;
  }

  v221 = [v210 attachmentIdentifier];
  if (v221)
  {
    v222 = v221;
    v223 = sub_1000B5620();
    v225 = v224;
  }

  else
  {

    v223 = 0;
    v225 = 0;
  }

  v226 = v256;
  *v256 = v223;
  v226[1] = v225;
}

uint64_t sub_100092444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_1000A2F08(&qword_100106B78, type metadata accessor for Key);
  v10 = sub_1000B5580();
  v9(v10, a3, a4, a5);
}

id sub_100092514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a4;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v9 = _s16AttributedStringV9AttributeVMa(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = objc_allocWithZone(NSMutableAttributedString);
  v15 = sub_1000B55F0();
  v16 = [v14 initWithString:v15];

  v17 = *(a7 + 16);
  if (v17)
  {
    v18 = a7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    while (1)
    {
      sub_1000A49C8(v18, v13, _s16AttributedStringV9AttributeVMa);
      sub_100092780(v27, v28, v29, v30);
      if (v7)
      {
        break;
      }

      type metadata accessor for Key(0);
      sub_1000A2F08(&qword_100106B78, type metadata accessor for Key);
      isa = sub_1000B5570().super.isa;

      v22 = *v13;
      v21 = v13[1];
      v32.location = [v16 ic_range];
      v32.length = v23;
      v31.location = v22;
      v31.length = v21;
      v24 = NSIntersectionRange(v31, v32);
      [v16 addAttributes:isa range:{v24.location, v24.length}];

      sub_1000A4A30(v13, _s16AttributedStringV9AttributeVMa);
      v18 += v19;
      if (!--v17)
      {
        return v16;
      }
    }

    sub_1000A4A30(v13, _s16AttributedStringV9AttributeVMa);
  }

  return v16;
}

unint64_t sub_100092780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v113 = a3;
  v112 = a2;
  v121 = a1;
  v5 = sub_100030480(&qword_100108368, &unk_1000CDA10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v124 = &v109 - v7;
  v123 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v122 = *(v123 - 8);
  v8 = *(v122 + 64);
  __chkstk_darwin(v123);
  v114 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v118 = &v109 - v12;
  v120 = sub_1000B4DB0();
  v119 = *(v120 - 8);
  v13 = *(v119 + 64);
  __chkstk_darwin(v120);
  v111 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100030480(&qword_100108370, &unk_1000CDA20);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v117 = &v109 - v17;
  v18 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v109 - v20;
  v116 = sub_1000B4EA0();
  v115 = *(v116 - 8);
  v22 = *(v115 + 64);
  __chkstk_darwin(v116);
  v110 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v109 - v26;
  v28 = sub_1000B4F00();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s16AttributedStringV9AttributeVMa(0);
  v34 = v4;
  v35 = (v4 + v33[7]);
  v36 = v35[1];
  if (v36 == 1)
  {
    v37 = sub_100030764(_swiftEmptyArrayStorage);
  }

  else
  {
    v130 = *v35;
    v131 = v36;
    v38 = *(v35 + 2);
    v132 = *(v35 + 1);
    v133 = v38;
    v134 = *(v35 + 3);
    v135 = v35[8];
    v37 = sub_100093FD4();
  }

  v39 = v37;
  sub_100030C74(v4 + v33[5], v27, &qword_100106FD0, &qword_1000CAE50);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100036320(v27, &qword_100106FD0, &qword_1000CAE50);
  }

  else
  {
    (*(v29 + 32))(v32, v27, v28);
    v40 = ICTTAttributeNameReplicaID;
    v129 = v28;
    v41 = sub_1000A4A90(&v128);
    (*(v29 + 16))(v41, v32, v28);
    sub_100030C64(&v128, v127);
    v42 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v42, isUniquelyReferenced_nonNull_native);

    (*(v29 + 8))(v32, v28);
    v39 = v136;
  }

  v44 = v126;
  v45 = v34;
  sub_100030C74(v34 + v33[6], v21, &qword_100106E38, &unk_1000CB730);
  v46 = v115;
  v47 = v116;
  if ((*(v115 + 48))(v21, 1, v116) == 1)
  {
    sub_100036320(v21, &qword_100106E38, &unk_1000CB730);
  }

  else
  {
    v48 = *(v46 + 32);
    v126 = v45;
    v49 = v44;
    v50 = v110;
    v48(v110, v21, v47);
    v51 = ICTTAttributeNameTimestamp;
    sub_1000B4E60();
    v53 = v52 + *(v125 + 8);
    v129 = &type metadata for Double;
    *&v128 = v53;
    sub_100030C64(&v128, v127);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v51, v54);

    v55 = v50;
    v44 = v49;
    v45 = v126;
    (*(v46 + 8))(v55, v47);
    v39 = v136;
  }

  v56 = v117;
  v57 = v33;
  sub_100030C74(v45 + v33[8], v117, &qword_100108370, &unk_1000CDA20);
  v58 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v59 = (*(*(v58 - 8) + 48))(v56, 1, v58);
  v60 = v120;
  if (v59 == 1)
  {
    sub_100036320(v56, &qword_100108370, &unk_1000CDA20);
    v61 = *(v45 + v33[11]);
    v62 = v119;
    if (*(v45 + v57[11]) > 2u)
    {
      if (v61 == 3)
      {
        v63 = 1;
      }

      else
      {
        if (v61 != 4)
        {
          goto LABEL_34;
        }

        v63 = 3;
      }
    }

    else if (v61)
    {
      if (v61 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = 2;
      }
    }

    else
    {
      v63 = -1;
    }

    v67 = ICTTNSWritingDirectionAttributeName;
    v129 = &type metadata for Int;
    *&v128 = v63;
    sub_100030C64(&v128, v127);
    v68 = v67;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v68, v69);

    v39 = v136;
  }

  else
  {
    v64 = sub_100095EFC();
    sub_1000A4A30(v56, _s16AttributedStringV14ParagraphStyleVMa);
    v65 = *(v45 + v33[11]);
    v62 = v119;
    if (*(v45 + v57[11]) > 2u)
    {
      if (v65 == 3)
      {
        v66 = 1;
      }

      else if (v65 == 4)
      {
        v66 = 3;
      }

      else
      {
        v66 = [v64 writingDirection];
      }
    }

    else if (v65)
    {
      if (v65 == 1)
      {
        v66 = 0;
      }

      else
      {
        v66 = 2;
      }
    }

    else
    {
      v66 = -1;
    }

    [v64 setWritingDirection:v66];
    v70 = ICTTAttributeNameParagraphStyle;
    [v64 copy];
    sub_1000B5B00();
    swift_unknownObjectRelease();
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v127[0] = v39;
    sub_1000655A8(&v128, v70, v71);

    v39 = *&v127[0];
  }

LABEL_34:
  v72 = v118;
  sub_100030C74(v45 + v57[10], v118, &qword_100106F88, &qword_1000CAE20);
  if ((*(v62 + 48))(v72, 1, v60) == 1)
  {
    sub_100036320(v72, &qword_100106F88, &qword_1000CAE20);
  }

  else
  {
    v73 = v111;
    (*(v62 + 32))(v111, v72, v60);
    v74 = ICTTNSLinkAttributeName;
    sub_1000B4CF0(v75);
    v77 = v76;
    v129 = sub_1000362AC(0, &qword_1001083B8, NSURL_ptr);
    *&v128 = v77;
    sub_100030C64(&v128, v127);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v74, v78);

    (*(v62 + 8))(v73, v60);
    v39 = v136;
  }

  v79 = *(v45 + v57[9]);
  if (v79 != 5)
  {
    v80 = ICTTAttributeNameEmphasis;
    v81 = qword_1000CEB70[v79];
    v129 = &type metadata for Int;
    *&v128 = v81;
    sub_100030C64(&v128, v127);
    v82 = v80;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_1000655A8(v127, v82, v83);

    v39 = v136;
  }

  v84 = v121;
  v85 = (v45 + v57[12]);
  v86 = v85[1];
  if (v86)
  {
    if (*(v121 + 16))
    {
      v87 = sub_10006320C(*v85, v86);
      if (v88)
      {
        v89 = *(*(v84 + 56) + 8 * v87);
        v90 = ICTTNSAttachmentAttributeName;
        v129 = sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
        *&v128 = v89;
        sub_100030C64(&v128, v127);
        v91 = v89;
        v92 = v90;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v39;
        sub_1000655A8(v127, v92, v93);

        v39 = v136;
      }
    }
  }

  v94 = v124;
  sub_100030C74(v45 + v57[13], v124, &qword_100108368, &unk_1000CDA10);
  if ((*(v122 + 48))(v94, 1, v123) == 1)
  {
    sub_100036320(v94, &qword_100108368, &unk_1000CDA10);
  }

  else
  {
    v95 = v114;
    sub_1000A47A4(v94, v114, _s16AttributedStringV16InlineAttachmentVMa);
    v96 = sub_1000973CC(v112, v113, v125);
    if (v44)
    {
      sub_1000A4A30(v95, _s16AttributedStringV16InlineAttachmentVMa);
    }

    else
    {
      v97 = v96;
      v98 = [v96 identifier];
      if (v98)
      {
        v99 = v98;
        sub_1000B5620();
      }

      v100 = [v97 typeUTI];
      if (v100)
      {
        v101 = v100;
        sub_1000B5620();
      }

      v102 = sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
      v103 = sub_1000B5940();
      v104 = ICTTNSAttachmentAttributeName;
      v129 = v102;
      *&v128 = v103;
      sub_100030C64(&v128, v127);
      v105 = v104;
      v106 = v103;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v136 = v39;
      sub_1000655A8(v127, v105, v107);

      sub_1000A4A30(v114, _s16AttributedStringV16InlineAttachmentVMa);
      return v136;
    }
  }

  return v39;
}

uint64_t sub_1000934C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100030480(&qword_1001088C0, &qword_1000CE2A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A670C();
  sub_1000B6020();
  v15 = 0;
  sub_1000B5E70();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100030480(&qword_1001088A8, &qword_1000CE298);
    sub_1000A6760(&qword_1001088C8, &qword_1001088D0);
    sub_1000B5EB0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000936A0()
{
  if (*v0)
  {
    result = 0x7475626972747461;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_1000936D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_1000937BC(uint64_t a1)
{
  v2 = sub_1000A670C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000937F8(uint64_t a1)
{
  v2 = sub_1000A670C();

  return CodingKey.debugDescription.getter(a1, v2);
}

CGColorRef sub_100093880(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1000B55F0();
  v7 = CGColorSpaceCreateWithName(v6);

  if (!v7)
  {
    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v15 = sub_1000B5530();
    sub_100036380(v15, qword_100108350);

    v16 = sub_1000B5520();
    v17 = sub_1000B5920();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100062B20(a1, a2, &v29);
      _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color space with name — returning nil {name: %s}", v18, 0xCu);
      sub_100035DA8(v19);
    }

    return 0;
  }

  v8 = *(a3 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_100043344(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = (a3 + 32);
    v11 = _swiftEmptyArrayStorage[2];
    do
    {
      v12 = *v10;
      v29 = v9;
      v13 = v9[3];
      if (v11 >= v13 >> 1)
      {
        sub_100043344((v13 > 1), v11 + 1, 1);
        v9 = v29;
      }

      v9[2] = v11 + 1;
      v9[v11 + 4] = v12;
      ++v10;
      ++v11;
      --v8;
    }

    while (v8);
  }

  v14 = CGColorCreate(v7, v9 + 4);

  if (!v14)
  {
    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v20 = sub_1000B5530();
    sub_100036380(v20, qword_100108350);

    v21 = sub_1000B5520();
    v22 = sub_1000B5920();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = sub_1000B57B0();
      v27 = sub_100062B20(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot create color with components — returning nil {components: %s}", v23, 0xCu);
      sub_100035DA8(v24);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_100093BF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100030480(&qword_1001089A0, &qword_1000CEA58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A718C();
  sub_1000B6020();
  v15 = 0;
  sub_1000B5E70();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100030480(&qword_100108990, &qword_1000CEA50);
    sub_1000A71E0(&qword_1001089A8);
    sub_1000B5EB0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100093DC0()
{
  if (*v0)
  {
    result = 0x6E656E6F706D6F63;
  }

  else
  {
    result = 0x6563617073;
  }

  *v0;
  return result;
}

uint64_t sub_100093DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563617073 && a2 == 0xE500000000000000;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_100093EDC(uint64_t a1)
{
  v2 = sub_1000A718C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100093F18(uint64_t a1)
{
  v2 = sub_1000A718C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100093F80@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *sub_100093FD4()
{
  v1 = v0;
  v48 = &_swiftEmptyDictionarySingleton;
  v2 = *(v0 + 26);
  if (v2)
  {
    v3 = *(v0 + 25) & 1 | 2;
  }

  else
  {
    v3 = *(v0 + 25) & 1;
  }

  if (v2 == 2)
  {
    v4 = *(v0 + 25) & 1;
  }

  else
  {
    v4 = v3;
  }

  if (v0[1])
  {
    v5 = *v0;
    if (v0[3])
    {
      v6 = objc_allocWithZone(ICTTFont);
      v7 = sub_1000B55F0();
      v8 = [v6 initWithName:v7 size:v4 hints:0.0];
    }

    else
    {
      v12 = *(v0 + 2);
      v13 = objc_allocWithZone(ICTTFont);
      v7 = sub_1000B55F0();
      v8 = [v13 initWithName:v7 size:v4 hints:v12];
    }

    v14 = v8;

    v15 = ICTTAttributeNameFont;
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_18:
    v47 = sub_1000362AC(0, &qword_100108398, ICTTFont_ptr);
    *&v46 = v14;
    sub_100030C64(&v46, v45);
    v17 = v15;
    v10 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v45, v17, isUniquelyReferenced_nonNull_native);

    goto LABEL_19;
  }

  if ((v0[3] & 1) == 0)
  {
    v16 = [objc_allocWithZone(ICTTFont) initWithName:0 size:v4 hints:*(v0 + 2)];
    v15 = ICTTAttributeNameFont;
    if (!v16)
    {
LABEL_20:
      v19 = v15;
      sub_10009E380(v19, v45);

      sub_100036320(v45, &qword_100106E30, &unk_1000CAB60);
      goto LABEL_21;
    }

    v14 = v16;
    goto LABEL_18;
  }

  if (v4)
  {
    v9 = ICTTAttributeNameFontHints;
    v47 = &type metadata for UInt32;
    LODWORD(v46) = v4;
    sub_100030C64(&v46, v45);
    v10 = v9;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v45, v10, v11);
LABEL_19:

    v48 = &_swiftEmptyDictionarySingleton;
  }

LABEL_21:
  v20 = *(v0 + 27);
  if (v20 != 2 && (v20 & 1) != 0)
  {
    v21 = ICTTAttributeNameUnderline;
    v47 = &type metadata for Bool;
    LOBYTE(v46) = 1;
    sub_100030C64(&v46, v45);
    v22 = v21;
    v23 = v48;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v45, v22, v24);

    v48 = v23;
  }

  v25 = *(v1 + 28);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    v26 = ICTTAttributeNameStrikethrough;
    v47 = &type metadata for Bool;
    LOBYTE(v46) = 1;
    sub_100030C64(&v46, v45);
    v27 = v26;
    v28 = v48;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v45, v27, v29);

    v48 = v28;
  }

  if ((v1[5] & 1) == 0)
  {
    v30 = v1[4];
    v31 = ICTTAttributeNameSuperscript;
    v47 = &type metadata for Int;
    *&v46 = v30;
    sub_100030C64(&v46, v45);
    v32 = v31;
    v33 = v48;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000655A8(v45, v32, v34);

    v48 = v33;
  }

  v35 = v1[7];
  if (v35)
  {
    v36 = sub_100093880(v1[6], v35, v1[8]);
    if (v36)
    {
      v37 = v36;
      v38 = ICTTAttributeNameForegroundColor;
      type metadata accessor for CGColor(0);
      v47 = v39;
      *&v46 = v37;
      sub_100030C64(&v46, v45);
      v40 = v38;
      v41 = v37;
      v42 = v48;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000655A8(v45, v40, v43);

      return v42;
    }
  }

  return v48;
}

uint64_t sub_100094408(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108778, &qword_1000CE248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A5F18();
  sub_1000B6020();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_1000B5E20();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 24);
    LOBYTE(v23) = 1;
    sub_1000B5E40();
    v15 = *(v3 + 25);
    LOBYTE(v23) = 2;
    sub_1000B5E30();
    v16 = *(v3 + 26);
    LOBYTE(v23) = 3;
    sub_1000B5E30();
    v17 = *(v3 + 27);
    LOBYTE(v23) = 4;
    sub_1000B5E30();
    v18 = *(v3 + 28);
    LOBYTE(v23) = 5;
    sub_1000B5E30();
    v19 = v3[4];
    v20 = *(v3 + 40);
    LOBYTE(v23) = 6;
    sub_1000B5E50();
    v23 = *(v3 + 3);
    v24 = v3[8];
    v22[15] = 7;
    sub_1000A6028();
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100094698()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7263737265707573;
  if (v1 != 6)
  {
    v3 = 0x726F6C6F63;
  }

  v4 = 0x6C7265646E557369;
  if (v1 != 4)
  {
    v4 = 0x656B697274537369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646C6F427369;
  if (v1 != 2)
  {
    v5 = 0x63696C6174497369;
  }

  if (*v0)
  {
    v2 = 0x7A6953746E696F70;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000947A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A33B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000947CC(uint64_t a1)
{
  v2 = sub_1000A5F18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100094808(uint64_t a1)
{
  v2 = sub_1000A5F18();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100094844@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000A3658(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_1000948BC()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100094980()
{
  *v0;
  *v0;
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_100094A30()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100094AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3CAC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100094B20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x454C50525550;
  v5 = 0xE600000000000000;
  v6 = 0x45474E41524FLL;
  v7 = 1414416717;
  if (v2 != 3)
  {
    v7 = 1163217986;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1263421776;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_100094C64(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4C5F444548534144;
    v6 = 0x44455245424D554ELL;
    if (a1 != 8)
    {
      v6 = 0x53494C4B43454843;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x434150534F4E4F4DLL;
    if (a1 != 5)
    {
      v7 = 0x4C5F54454C4C5542;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x454C544954;
    v2 = 0x4944414548425553;
    v3 = 1497648962;
    if (a1 != 3)
    {
      v3 = 0x4E4F4954504143;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x474E4944414548;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100094DC0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100094C64(*a1);
  v5 = v4;
  if (v3 == sub_100094C64(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000B5F20();
  }

  return v8 & 1;
}

Swift::Int sub_100094E48()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_100094C64(v1);
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100094EAC()
{
  sub_100094C64(*v0);
  sub_1000B56A0();
}

Swift::Int sub_100094F00()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_100094C64(v1);
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100094F60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3CF8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100094F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100094C64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100095078()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100095150()
{
  *v0;
  *v0;
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_100095214()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_1000952E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3D44(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100095318(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1413891404;
  v5 = 0xE500000000000000;
  v6 = 0x5448474952;
  v7 = 0xE900000000000044;
  v8 = 0x454946495453554ALL;
  if (v2 != 3)
  {
    v8 = 0x4C41525554414ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5245544E4543;
    v3 = 0xE600000000000000;
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

uint64_t sub_10009545C(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108758, &qword_1000CE238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A5EC4();
  sub_1000B6020();
  v13[15] = 0;
  sub_1000B4F00();
  sub_1000A2F08(&qword_100107260, &type metadata accessor for UUID);
  sub_1000B5EB0();
  if (!v2)
  {
    v11 = *(v3 + *(_s16AttributedStringV13ChecklistItemVMa(0) + 20));
    v13[14] = 1;
    sub_1000B5E80();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100095614@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1000B4F00();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100030480(&qword_100108748, &qword_1000CE230);
  v26 = *(v29 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v29);
  v10 = &v24 - v9;
  v11 = _s16AttributedStringV13ChecklistItemVMa(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A5EC4();
  sub_1000B6010();
  if (v2)
  {
    return sub_100035DA8(a1);
  }

  v24 = v14;
  v16 = v26;
  v17 = v27;
  v31 = 0;
  sub_1000A2F08(&qword_1001072A8, &type metadata accessor for UUID);
  v18 = v28;
  sub_1000B5E00();
  (*(v17 + 32))(v24, v7, v18);
  v30 = 1;
  v19 = sub_1000B5DD0();
  (*(v16 + 8))(v10, v29);
  v20 = v19 & 1;
  v22 = v24;
  v21 = v25;
  v24[*(v11 + 20)] = v20;
  sub_1000A49C8(v22, v21, _s16AttributedStringV13ChecklistItemVMa);
  sub_100035DA8(a1);
  return sub_1000A4A30(v22, _s16AttributedStringV13ChecklistItemVMa);
}

uint64_t sub_100095968()
{
  if (*v0)
  {
    result = 0x656E6F447369;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1000959A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F447369 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_100095A84(uint64_t a1)
{
  v2 = sub_1000A5EC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100095AC0(uint64_t a1)
{
  v2 = sub_1000A5EC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100095B2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_100030480(&qword_1001083A0, &unk_1000CDA40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v36 - v10;
  v12 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v13 = v12[8];
  v14 = _s16AttributedStringV13ChecklistItemVMa(0);
  v15 = *(v14 - 8);
  v37 = *(v15 + 56);
  v38 = v13;
  v36 = v15 + 56;
  v37(a2 + v13, 1, 1, v14);
  v16 = v12[10];
  v17 = sub_1000B4F00();
  v18 = *(v17 - 8);
  v40 = *(v18 + 56);
  v41 = v16;
  v39 = v18 + 56;
  v40(a2 + v16, 1, 1, v17);
  v19 = sub_1000A2914([a1 style]);
  if (v19 == 10)
  {
    v20 = 3;
  }

  else
  {
    v20 = v19;
  }

  *a2 = v20;
  v21 = sub_1000A2A8C([a1 alignment]);
  if (v21 == 5)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  *(a2 + 1) = v22;
  *(a2 + 8) = [a1 indent];
  if (sub_100094C64(v20) == 0x44455245424D554ELL && v23 == 0xED00005453494C5FLL)
  {

LABEL_11:
    v25 = [a1 startingItemNumber];
    v26 = 0;
    goto LABEL_13;
  }

  v24 = sub_1000B5F20();

  if (v24)
  {
    goto LABEL_11;
  }

  v25 = 0;
  v26 = 1;
LABEL_13:
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  v27 = [a1 todo];
  if (v27)
  {
    v28 = v27;
    v29 = [v28 uuid];
    sub_1000B4EE0();

    LOBYTE(v29) = [v28 done];
    v30 = 0;
    v11[*(v14 + 20)] = v29;
  }

  else
  {
    v30 = 1;
  }

  v31 = 1;
  v37(v11, v30, 1, v14);
  v32 = a2 + v12[9];
  sub_1000521D8(v11, a2 + v38, &qword_1001083A0, &unk_1000CDA40);
  *v32 = [a1 blockQuoteLevel];
  *(v32 + 8) = 0;
  v33 = [a1 uuid];
  if (v33)
  {
    v34 = v33;
    sub_1000B4EE0();

    v31 = 0;
    a1 = v34;
  }

  v40(v7, v31, 1, v17);
  return sub_1000521D8(v7, a2 + v41, &qword_100106FD0, &qword_1000CAE50);
}

id sub_100095EFC()
{
  v1 = v0;
  v2 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_100030480(&qword_1001083A0, &unk_1000CDA40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_100094C50(*v1);
  v11 = [objc_opt_self() paragraphStyleNamed:v10];
  [v11 setAlignment:*(v1 + 1)];
  [v11 setIndent:*(v1 + 8)];
  if (*(v1 + 24) == 1)
  {
    v12 = [v11 startingItemNumber];
  }

  else
  {
    v12 = *(v1 + 16);
  }

  [v11 setStartingItemNumber:v12];
  v13 = _s16AttributedStringV14ParagraphStyleVMa(0);
  sub_100030C74(v1 + v13[8], v9, &qword_1001083A0, &unk_1000CDA40);
  v14 = _s16AttributedStringV13ChecklistItemVMa(0);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_100036320(v9, &qword_1001083A0, &unk_1000CDA40);
    v15 = 0;
  }

  else
  {
    v16 = v9[*(v14 + 20)];
    v17 = objc_allocWithZone(ICTTTodo);
    isa = sub_1000B4ED0().super.isa;
    v15 = [v17 initWithIdentifier:isa done:v16];

    sub_1000A4A30(v9, _s16AttributedStringV13ChecklistItemVMa);
  }

  [v11 setTodo:v15];

  v19 = (v1 + v13[9]);
  if (*(v19 + 8))
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19;
  }

  [v11 setBlockQuoteLevel:v20];
  sub_100030C74(v1 + v13[10], v5, &qword_100106FD0, &qword_1000CAE50);
  v21 = sub_1000B4F00();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v5, 1, v21) != 1)
  {
    v23 = sub_1000B4ED0().super.isa;
    (*(v22 + 8))(v5, v21);
  }

  [v11 setUuid:v23];

  return v11;
}

uint64_t sub_100096250(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001087B0, &qword_1000CE258);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A607C();
  sub_1000B6020();
  v21[15] = *v3;
  v21[14] = 0;
  sub_1000A6178();
  sub_1000B5EB0();
  if (!v2)
  {
    v21[13] = *(v3 + 1);
    v21[12] = 1;
    sub_1000A61CC();
    sub_1000B5EB0();
    v11 = *(v3 + 8);
    v21[11] = 2;
    sub_1000B5EA0();
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    v21[10] = 3;
    sub_1000B5E50();
    v14 = _s16AttributedStringV14ParagraphStyleVMa(0);
    v15 = v14[8];
    v21[9] = 4;
    _s16AttributedStringV13ChecklistItemVMa(0);
    sub_1000A2F08(&qword_1001087C8, _s16AttributedStringV13ChecklistItemVMa);
    sub_1000B5E60();
    v16 = (v3 + v14[9]);
    v17 = *v16;
    v18 = *(v16 + 8);
    v21[8] = 5;
    sub_1000B5E50();
    v19 = v14[10];
    v21[7] = 6;
    sub_1000B4F00();
    sub_1000A2F08(&qword_100107260, &type metadata accessor for UUID);
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100096560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v39 - v5;
  v6 = sub_100030480(&qword_1001083A0, &unk_1000CDA40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = &v39 - v8;
  v9 = sub_100030480(&qword_100108788, &qword_1000CE250);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 32);
  v19 = _s16AttributedStringV13ChecklistItemVMa(0);
  v20 = v18;
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v21 = *(v13 + 40);
  v22 = sub_1000B4F00();
  v23 = *(*(v22 - 8) + 56);
  v46 = v21;
  v24 = v17;
  v23(&v17[v21], 1, 1, v22);
  v26 = a1[3];
  v25 = a1[4];
  v47 = a1;
  sub_1000458B4(a1, v26);
  sub_1000A607C();
  v44 = v12;
  v27 = v45;
  sub_1000B6010();
  if (v27)
  {
    sub_100035DA8(v47);
    sub_100036320(v24 + v20, &qword_1001083A0, &unk_1000CDA40);
    return sub_100036320(v24 + v46, &qword_100106FD0, &qword_1000CAE50);
  }

  else
  {
    v45 = v19;
    v28 = v42;
    v55 = 0;
    sub_1000A60D0();
    sub_1000B5E00();
    *v24 = v56;
    v53 = 1;
    sub_1000A6124();
    sub_1000B5E00();
    v29 = v28;
    *(v24 + 1) = v54;
    v52 = 2;
    *(v24 + 8) = sub_1000B5DF0();
    v51 = 3;
    *(v24 + 16) = sub_1000B5DA0();
    *(v24 + 24) = v30 & 1;
    v50 = 4;
    sub_1000A2F08(&qword_1001087A8, _s16AttributedStringV13ChecklistItemVMa);
    v31 = v41;
    sub_1000B5DB0();
    sub_1000521D8(v31, v24 + v20, &qword_1001083A0, &unk_1000CDA40);
    v49 = 5;
    v32 = sub_1000B5DA0();
    v33 = v24 + *(v13 + 36);
    *v33 = v32;
    *(v33 + 8) = v34 & 1;
    v48 = 6;
    sub_1000A2F08(&qword_1001072A8, &type metadata accessor for UUID);
    v35 = v40;
    v36 = v43;
    v37 = v44;
    sub_1000B5DB0();
    (*(v29 + 8))(v37, v36);
    sub_1000521D8(v35, v24 + v46, &qword_100106FD0, &qword_1000CAE50);
    sub_1000A49C8(v24, v39, _s16AttributedStringV14ParagraphStyleVMa);
    sub_100035DA8(v47);
    return sub_1000A4A30(v24, _s16AttributedStringV14ParagraphStyleVMa);
  }
}

uint64_t sub_100096B00()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F75516B636F6C62;
  if (v1 != 5)
  {
    v3 = 1684632949;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x73696C6B63656863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x746E65646E69;
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

uint64_t sub_100096BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A3D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100096C10(uint64_t a1)
{
  v2 = sub_1000A607C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096C4C(uint64_t a1)
{
  v2 = sub_1000A607C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100096CC4()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100096DC8()
{
  *v0;
  *v0;
  *v0;
  sub_1000B56A0();
}

Swift::Int sub_100096EB8()
{
  v1 = *v0;
  sub_1000B5FB0();
  sub_1000B56A0();

  return sub_1000B5FE0();
}

uint64_t sub_100097068@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3FF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100097098(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4C41525554414ELL;
  v5 = 0x80000001000C6A30;
  v6 = 0xD000000000000016;
  v7 = 0xED00005446454C5FLL;
  v8 = 0x4F545F5448474952;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x80000001000C6A60;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F4F545F5446454CLL;
    v3 = 0xED00005448474952;
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

void sub_100097158(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v38 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v8 = *(v38 + 24);
  v9 = sub_1000B4EA0();
  v10 = *(*(v9 - 8) + 56);
  v10(a2 + v8, 1, 1, v9);
  v11 = [a1 typeUTI];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000B5620();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *a2 = v13;
  a2[1] = v15;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1000B5620();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  a2[2] = v18;
  a2[3] = v20;
  v21 = [a1 creationDate];
  if (v21)
  {
    v22 = v21;
    sub_1000B4E70();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v10(v7, v23, 1, v9);
  sub_1000521D8(v7, a2 + v8, &qword_100106E38, &unk_1000CB730);
  v24 = [a1 tokenContentIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1000B5620();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = v38;
  v30 = (a2 + *(v38 + 28));
  *v30 = v26;
  v30[1] = v28;
  v31 = [a1 altText];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1000B5620();
    v35 = v34;
  }

  else
  {

    v33 = 0;
    v35 = 0;
  }

  v36 = (a2 + *(v29 + 32));
  *v36 = v33;
  v36[1] = v35;
}

id sub_1000973CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - v10;
  v12 = sub_1000B4EA0();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  ObjectType = swift_getObjectType();
  v20 = (*(a2 + 48))(v5[2], v5[3], a3, ObjectType, a2);
  v21 = v20;
  if (!v4)
  {
    v46 = 0;
    v47 = v20;
    v44 = v11;
    v45 = v18;
    v22 = v48;
    v23 = v3[1];
    if (v23)
    {
      v24 = *v5;
      v25 = v47;
      v26 = v47;
      v27 = v5;
      v23 = sub_1000B55F0();
    }

    else
    {
      v27 = v5;
      v25 = v47;
      v28 = v47;
    }

    v29 = v16;
    [v25 setTypeUTI:{v23, v44}];

    v30 = _s16AttributedStringV16InlineAttachmentVMa(0);
    v31 = v44;
    sub_100030C74(v27 + v30[6], v44, &qword_100106E38, &unk_1000CB730);
    v32 = *(v22 + 48);
    if (v32(v31, 1, v12) == 1)
    {
      sub_1000B4E90();
      if (v32(v31, 1, v12) != 1)
      {
        sub_100036320(v31, &qword_100106E38, &unk_1000CB730);
      }
    }

    else
    {
      (*(v22 + 32))(v29, v31, v12);
    }

    v33 = *(a3 + 8);
    v34 = v45;
    sub_1000B4E40();
    v35 = *(v22 + 8);
    v35(v29, v12);
    isa = sub_1000B4E30().super.isa;
    v35(v34, v12);
    v21 = v47;
    [v47 setCreationDate:isa];

    v37 = (v5 + v30[7]);
    if (v37[1])
    {
      v38 = *v37;
      v39 = sub_1000B55F0();
    }

    else
    {
      v39 = 0;
    }

    [v21 setTokenContentIdentifier:v39];

    v40 = (v5 + v30[8]);
    if (v40[1])
    {
      v41 = *v40;
      v42 = sub_1000B55F0();
    }

    else
    {
      v42 = 0;
    }

    [v21 setAltText:v42];
  }

  return v21;
}

uint64_t sub_100097748(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001087F0, &qword_1000CE268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A62C8();
  sub_1000B6020();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_1000B5E20();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v24[14] = 1;
    sub_1000B5E70();
    v16 = _s16AttributedStringV16InlineAttachmentVMa(0);
    v17 = v16[6];
    v24[13] = 2;
    sub_1000B4EA0();
    sub_1000A2F08(&qword_100107228, &type metadata accessor for Date);
    sub_1000B5E60();
    v18 = (v3 + v16[7]);
    v19 = *v18;
    v20 = v18[1];
    v24[12] = 3;
    sub_1000B5E20();
    v21 = (v3 + v16[8]);
    v22 = *v21;
    v23 = v21[1];
    v24[11] = 4;
    sub_1000B5E20();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000979B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v42 - v5;
  v7 = sub_100030480(&qword_1001087E0, &qword_1000CE260);
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 24);
  v17 = sub_1000B4EA0();
  v18 = *(*(v17 - 8) + 56);
  v47 = v16;
  v19 = v15;
  v18(v15 + v16, 1, 1, v17);
  v20 = a1[3];
  v21 = a1[4];
  v48 = a1;
  sub_1000458B4(a1, v20);
  sub_1000A62C8();
  v46 = v10;
  v22 = v49;
  sub_1000B6010();
  if (v22)
  {
    v49 = v22;
    v25 = 0;
    v26 = v47;
  }

  else
  {
    v24 = v44;
    v23 = v45;
    v54 = 0;
    *v19 = sub_1000B5D70();
    v19[1] = v29;
    v53 = 1;
    v30 = sub_1000B5DC0();
    v49 = 0;
    v26 = v47;
    v19[2] = v30;
    v19[3] = v31;
    v52 = 2;
    sub_1000A2F08(&qword_100107288, &type metadata accessor for Date);
    v32 = v49;
    sub_1000B5DB0();
    v49 = v32;
    if (v32)
    {
      (*(v24 + 8))(v46, v23);
    }

    else
    {
      sub_1000521D8(v6, v19 + v26, &qword_100106E38, &unk_1000CB730);
      v51 = 3;
      v33 = v49;
      v34 = sub_1000B5D70();
      if (!v33)
      {
        v36 = (v19 + *(v11 + 28));
        *v36 = v34;
        v36[1] = v35;
        v50 = 4;
        v37 = sub_1000B5D70();
        v49 = 0;
        v38 = v37;
        v40 = v39;
        v41 = (v19 + *(v11 + 32));
        (*(v24 + 8))(v46, v45);
        *v41 = v38;
        v41[1] = v40;
        sub_1000A49C8(v19, v43, _s16AttributedStringV16InlineAttachmentVMa);
        sub_100035DA8(v48);
        return sub_1000A4A30(v19, _s16AttributedStringV16InlineAttachmentVMa);
      }

      v49 = v33;
      (*(v24 + 8))(v46, v45);
    }

    v25 = 1;
  }

  sub_100035DA8(v48);

  if (v25)
  {
    v27 = v19[3];
  }

  sub_100036320(v19 + v26, &qword_100106E38, &unk_1000CB730);
}

unint64_t sub_100097E20()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x4164657461657263;
  v4 = 0x74786554746C61;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100097EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A4040(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100097EFC(uint64_t a1)
{
  v2 = sub_1000A62C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100097F38(uint64_t a1)
{
  v2 = sub_1000A62C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100097FA4(void *a1)
{
  v3 = sub_100030480(&qword_100108890, &qword_1000CE288);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A66B8();
  sub_1000B6020();
  v12 = 0;
  sub_1000B5EA0();
  if (!v1)
  {
    v11 = 1;
    sub_1000B5EA0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10009812C()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 0x7441737472617473;
  }

  *v0;
  return result;
}

uint64_t sub_100098164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7441737472617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1000B5F20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000B5F20();

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

uint64_t sub_10009823C(uint64_t a1)
{
  v2 = sub_1000A66B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100098278(uint64_t a1)
{
  v2 = sub_1000A66B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000982B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000A420C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1000982E0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_100097FA4(a1);
}

unint64_t sub_1000982FC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7369736168706D65;
    if (a1 != 5)
    {
      v7 = 1802398060;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65676E6172;
    v2 = 0x6D617473656D6974;
    v3 = 1953394534;
    if (a1 != 3)
    {
      v3 = 0x7061726761726170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10009844C(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108838, &qword_1000CE278);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000A631C();
  sub_1000B6020();
  v36[0] = *v3;
  LOBYTE(v31) = 0;
  sub_1000A64C0();
  sub_1000B5EB0();
  if (!v2)
  {
    v11 = _s16AttributedStringV9AttributeVMa(0);
    v12 = v11[5];
    LOBYTE(v36[0]) = 1;
    sub_1000B4F00();
    sub_1000A2F08(&qword_100107260, &type metadata accessor for UUID);
    sub_1000B5E60();
    v13 = v11[6];
    v40 = 2;
    sub_1000B4EA0();
    sub_1000A2F08(&qword_100107228, &type metadata accessor for Date);
    sub_1000B5E60();
    v14 = v3 + v11[7];
    v15 = *(v14 + 1);
    v16 = *(v14 + 3);
    v37 = *(v14 + 2);
    v38 = v16;
    v17 = *(v14 + 1);
    v36[0] = *v14;
    v36[1] = v17;
    v32 = v15;
    v33 = v37;
    v34 = *(v14 + 3);
    v39 = *(v14 + 8);
    v35 = *(v14 + 8);
    v31 = v36[0];
    v30 = 3;
    sub_100030C74(v36, v28, &qword_100108390, &qword_1000CDA38);
    sub_1000A6514();
    sub_1000B5E60();
    v28[2] = v33;
    v28[3] = v34;
    v29 = v35;
    v28[1] = v32;
    v28[0] = v31;
    sub_100036320(v28, &qword_100108390, &qword_1000CDA38);
    v18 = v11[8];
    v27 = 4;
    _s16AttributedStringV14ParagraphStyleVMa(0);
    sub_1000A2F08(&qword_100108850, _s16AttributedStringV14ParagraphStyleVMa);
    sub_1000B5E60();
    v27 = *(v3 + v11[9]);
    v26 = 5;
    sub_1000A6568();
    sub_1000B5E60();
    v19 = v11[10];
    v27 = 6;
    sub_1000B4DB0();
    sub_1000A2F08(&qword_100107D80, &type metadata accessor for URL);
    sub_1000B5E60();
    v27 = *(v3 + v11[11]);
    v26 = 7;
    sub_1000A65BC();
    sub_1000B5E60();
    v20 = (v3 + v11[12]);
    v21 = *v20;
    v22 = v20[1];
    v27 = 8;
    sub_1000B5E20();
    v23 = v11[13];
    v27 = 9;
    _s16AttributedStringV16InlineAttachmentVMa(0);
    sub_1000A2F08(&qword_100108868, _s16AttributedStringV16InlineAttachmentVMa);
    sub_1000B5E60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100098A10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_100030480(&qword_100108368, &unk_1000CDA10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v72 = v69 - v5;
  v6 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v73 = v69 - v8;
  v9 = sub_100030480(&qword_100108370, &unk_1000CDA20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v74 = v69 - v11;
  v12 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v75 = v69 - v14;
  v15 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v77 = v69 - v17;
  v80 = sub_100030480(&qword_1001087F8, &qword_1000CE270);
  v78 = *(v80 - 8);
  v18 = *(v78 + 64);
  __chkstk_darwin(v80);
  v20 = v69 - v19;
  v21 = _s16AttributedStringV9AttributeVMa(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 20);
  v27 = sub_1000B4F00();
  v28 = *(*(v27 - 8) + 56);
  v85 = v26;
  v76 = v27;
  v28(&v25[v26], 1, 1);
  v29 = v21[6];
  v30 = sub_1000B4EA0();
  v31 = *(*(v30 - 8) + 56);
  v84 = v29;
  v31(&v25[v29], 1, 1, v30);
  v32 = &v25[v21[7]];
  *v32 = xmmword_1000CB720;
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *(v32 + 3) = 0u;
  v104 = v32;
  *(v32 + 8) = 0;
  v33 = v21[8];
  v34 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v35 = *(*(v34 - 8) + 56);
  v88 = v33;
  v35(&v25[v33], 1, 1, v34);
  v36 = v21[10];
  v37 = sub_1000B4DB0();
  v38 = *(*(v37 - 8) + 56);
  v87 = v36;
  v38(&v25[v36], 1, 1, v37);
  v39 = v21[13];
  v40 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v41 = *(*(v40 - 8) + 56);
  v82 = v39;
  v86 = v25;
  v41(&v25[v39], 1, 1, v40);
  v43 = a1[3];
  v42 = a1[4];
  v83 = a1;
  sub_1000458B4(a1, v43);
  sub_1000A631C();
  v79 = v20;
  v44 = v81;
  sub_1000B6010();
  if (v44)
  {
    v46 = v85;
    v47 = v84;
    v48 = v86;
    sub_100035DA8(v83);
    sub_100036320(v48 + v46, &qword_100106FD0, &qword_1000CAE50);
    sub_100036320(v48 + v47, &qword_100106E38, &unk_1000CB730);
    v49 = *(v104 + 3);
    v101 = *(v104 + 2);
    v102 = v49;
    v103 = *(v104 + 8);
    v50 = *(v104 + 1);
    v99 = *v104;
    v100 = v50;
    sub_100036320(&v99, &qword_100108390, &qword_1000CDA38);
    sub_100036320(v48 + v88, &qword_100108370, &unk_1000CDA20);
    sub_100036320(v48 + v87, &qword_100106F88, &qword_1000CAE20);

    return sub_100036320(v48 + v82, &qword_100108368, &unk_1000CDA10);
  }

  else
  {
    v45 = v77;
    v81 = v34;
    v70 = v21;
    v69[1] = v40;
    LOBYTE(v96[0]) = 0;
    sub_1000A6370();
    sub_1000B5E00();
    v51 = v86;
    *v86 = v99;
    LOBYTE(v99) = 1;
    sub_1000A2F08(&qword_1001072A8, &type metadata accessor for UUID);
    sub_1000B5DB0();
    sub_1000521D8(v45, v51 + v85, &qword_100106FD0, &qword_1000CAE50);
    LOBYTE(v99) = 2;
    sub_1000A2F08(&qword_100107288, &type metadata accessor for Date);
    v52 = v75;
    sub_1000B5DB0();
    sub_1000521D8(v52, v51 + v84, &qword_100106E38, &unk_1000CB730);
    v98 = 3;
    sub_1000A63C4();
    sub_1000B5DB0();
    v53 = v51;
    v93 = v101;
    v94 = v102;
    v95 = v103;
    v92 = v100;
    v91 = v99;
    v54 = v104;
    v55 = *(v104 + 2);
    v96[3] = *(v104 + 3);
    v97 = *(v104 + 8);
    v56 = *v104;
    v96[1] = *(v104 + 1);
    v96[2] = v55;
    v96[0] = v56;
    sub_100036320(v96, &qword_100108390, &qword_1000CDA38);
    v57 = v94;
    *(v54 + 2) = v93;
    *(v54 + 3) = v57;
    *(v54 + 8) = v95;
    v58 = v92;
    *v54 = v91;
    *(v54 + 1) = v58;
    v90 = 4;
    sub_1000A2F08(&qword_100108818, _s16AttributedStringV14ParagraphStyleVMa);
    v59 = v74;
    sub_1000B5DB0();
    sub_1000521D8(v59, v51 + v88, &qword_100108370, &unk_1000CDA20);
    v89 = 5;
    sub_1000A6418();
    sub_1000B5DB0();
    *(v51 + v70[9]) = v90;
    v90 = 6;
    sub_1000A2F08(&qword_100107DC0, &type metadata accessor for URL);
    v60 = v73;
    sub_1000B5DB0();
    sub_1000521D8(v60, v53 + v87, &qword_100106F88, &qword_1000CAE20);
    v89 = 7;
    sub_1000A646C();
    sub_1000B5DB0();
    v61 = v70;
    *(v53 + v70[11]) = v90;
    v90 = 8;
    v62 = sub_1000B5D70();
    v63 = (v53 + v61[12]);
    *v63 = v62;
    v63[1] = v64;
    v90 = 9;
    sub_1000A2F08(&qword_100108830, _s16AttributedStringV16InlineAttachmentVMa);
    v65 = v80;
    v66 = v79;
    sub_1000B5DB0();
    (*(v78 + 8))(v66, v65);
    v67 = v86;
    sub_1000521D8(v72, v86 + v82, &qword_100108368, &unk_1000CDA10);
    sub_1000A49C8(v67, v71, _s16AttributedStringV9AttributeVMa);
    sub_100035DA8(v83);
    return sub_1000A4A30(v67, _s16AttributedStringV9AttributeVMa);
  }
}

uint64_t sub_1000996E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A43B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009971C(uint64_t a1)
{
  v2 = sub_1000A631C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099758(uint64_t a1)
{
  v2 = sub_1000A631C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000997C4()
{
  v1 = sub_1000B4DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarkdownStyle(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A49C8(v0, v9, type metadata accessor for MarkdownStyle);
  v10 = (*(v2 + 48))(v9, 6, v1);
  if (v10 <= 2)
  {
    if (!v10)
    {
      (*(v2 + 32))(v5, v9, v1);
      sub_1000B5FC0(6uLL);
      sub_1000A2F08(&unk_100107790, &type metadata accessor for URL);
      sub_1000B55A0();
      (*(v2 + 8))(v5, v1);
      return;
    }

    v11 = v10 != 1;
  }

  else if (v10 > 4)
  {
    if (v10 == 5)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }
  }

  else if (v10 == 3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  sub_1000B5FC0(v11);
}

Swift::Int sub_1000999E0()
{
  sub_1000B5FB0();
  sub_1000997C4();
  return sub_1000B5FE0();
}

Swift::Int sub_100099A24()
{
  sub_1000B5FB0();
  sub_1000997C4();
  return sub_1000B5FE0();
}

void sub_100099A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100030C74(a1, aBlock, &qword_100106E30, &unk_1000CAB60);
  if (v46)
  {
    sub_1000362AC(0, &qword_100108388, ICTTParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      if ([v44 style] == 4)
      {
        v17 = sub_1000A2914([v44 style]);
        if (v17 <= 4u)
        {
          v18 = v17;
          v30 = 0xE200000000000000;
          v31 = 8227;
          v32 = 0xE400000000000000;
          v33 = 539173667;
          v34 = 0xE000000000000000;
          v35 = 0x2023232323;
          if (v17 == 3)
          {
            v35 = 0;
          }

          else
          {
            v34 = 0xE500000000000000;
          }

          if (v17 != 2)
          {
            v33 = v35;
            v32 = v34;
          }

          if (v17)
          {
            v31 = 2106147;
            v30 = 0xE300000000000000;
          }

          if (v17 <= 1u)
          {
            v20 = v31;
          }

          else
          {
            v20 = v33;
          }

          if (v17 <= 1u)
          {
            v19 = v30;
          }

          else
          {
            v19 = v32;
          }

          goto LABEL_34;
        }

        if (v17 <= 7u)
        {
          if (v17 == 5)
          {
            v18 = v17;
            v19 = 0xE400000000000000;
            v20 = 174088288;
            goto LABEL_34;
          }

          if (v17 == 6)
          {
            v18 = v17;
            v19 = 0xE200000000000000;
            v20 = 8234;
LABEL_34:
            swift_beginAccess();
            v49._countAndFlagsBits = v20;
            v49._object = v19;
            sub_1000B56E0(v49);
            swift_endAccess();

            v36 = [a6 attributedSubstringFromRange:{a2, a3}];
            v37 = [v36 string];

            v38 = sub_1000B5620();
            v40 = v39;

            swift_beginAccess();
            v50._countAndFlagsBits = v38;
            v50._object = v40;
            sub_1000B56E0(v50);

            if (v18 == 5)
            {
              v41._countAndFlagsBits = 1616928778;
            }

            else
            {
              v41._countAndFlagsBits = 0;
            }

            if (v18 == 5)
            {
              v42 = 0xE400000000000000;
            }

            else
            {
              v42 = 0xE000000000000000;
            }

            v41._object = v42;
            sub_1000B56E0(v41);

            v51._countAndFlagsBits = 10;
            v51._object = 0xE100000000000000;
            sub_1000B56E0(v51);
            swift_endAccess();

            swift_beginAccess();
            *(a7 + 16) = 0;
            swift_beginAccess();
            *(a8 + 16) = 0;
            return;
          }

LABEL_31:
          v18 = v17;
          v19 = 0xE200000000000000;
          v20 = 8237;
          goto LABEL_34;
        }

        if (v17 == 8)
        {
          v18 = v17;
          v20 = 0;
          v19 = 0xE000000000000000;
          goto LABEL_34;
        }

        if (v17 == 9)
        {
          goto LABEL_31;
        }

        v43 = a2;
        v21 = a5;
        v22 = a7;
        v23 = a8;
      }

      else
      {
        v21 = a5;
        v22 = a7;
        v23 = a8;
        v43 = a2;
      }

      v24 = a3;
    }

    else
    {
      v21 = a5;
      v22 = a7;
      v23 = a8;
      v43 = a2;
      v24 = a3;
    }
  }

  else
  {
    v21 = a5;
    v22 = a7;
    v23 = a8;
    v43 = a2;
    v24 = a3;
    sub_100036320(aBlock, &qword_100106E30, &unk_1000CAB60);
  }

  v25 = [a6 string];
  if (!v25)
  {
    sub_1000B5620();
    v25 = sub_1000B55F0();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  *(v26 + 40) = a9;
  *(v26 + 48) = a10;
  *(v26 + 56) = a11;
  *(v26 + 64) = v21;
  v47 = sub_1000A2E3C;
  v48 = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009D19C;
  v46 = &unk_1000F5B58;
  v27 = _Block_copy(aBlock);
  v28 = a6;

  v29 = a11;

  [v25 ic_enumerateParagraphsInRange:v43 usingBlock:{v24, v27}];
  _Block_release(v27);
}

uint64_t sub_100099F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10)
{
  v160 = a8;
  v165 = sub_1000B4DB0();
  v15 = *(v165 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v165);
  v164 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MarkdownStyle(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18 - 8);
  v23 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v21);
  v166 = &v140 - v25;
  if (__OFSUB__(a3, a1))
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v176 = 0;
  v177 = 0xE000000000000000;
  v175 = 0;
  if ([a5 attribute:ICTTAttributeNameParagraphStyle atIndex:a1 effectiveRange:0])
  {
    sub_1000B5B00();
    swift_unknownObjectRelease();
  }

  else
  {
    v173 = 0u;
    v174 = 0u;
  }

  aBlock = v173;
  v169 = v174;
  v155 = v15;
  v154 = a1;
  v153 = a5;
  v161 = a3 - a1;
  if (!*(&v174 + 1))
  {
    sub_100036320(&aBlock, &qword_100106E30, &unk_1000CAB60);
LABEL_10:
    v159 = 0;
    v27._countAndFlagsBits = 0;
    v28 = 0;
    v29 = 0;
    v157 = 0;
    v30 = 0;
    v158 = 0xE000000000000000;
    v31 = 0xE000000000000000;
    v32 = 0xE000000000000000;
    v33 = 0xE000000000000000;
    v156 = 0xE000000000000000;
    v34 = 0xE000000000000000;
LABEL_11:
    v27._object = v31;
    sub_1000B56E0(v27);

    v178._countAndFlagsBits = v28;
    v178._object = v32;
    sub_1000B56E0(v178);

    v179._countAndFlagsBits = v29;
    v179._object = v33;
    sub_1000B56E0(v179);

    v180._countAndFlagsBits = v30;
    v180._object = v34;
    sub_1000B56E0(v180);

    v35 = v161;
    if (v161 < 1)
    {
      v59 = 0;
      v60 = v159;
      v61 = v158;
LABEL_42:
      v184._countAndFlagsBits = v157;
      v184._object = v156;
      sub_1000B56E0(v184);

      v185._countAndFlagsBits = v60;
      v185._object = v61;
      sub_1000B56E0(v185);

      v186._countAndFlagsBits = 663584;
      v186._object = 0xE300000000000000;
      sub_1000B56E0(v186);
      v62 = v176;
      v63 = v177;
      swift_beginAccess();

      v187._countAndFlagsBits = v62;
      v187._object = v63;
      sub_1000B56E0(v187);
      swift_endAccess();

      return sub_1000A480C(v59);
    }

    v36 = v155;
    v172 = _swiftEmptyArrayStorage;
    v37 = swift_allocObject();
    v38 = v153;
    *(v37 + 16) = v153;
    *(v37 + 24) = &v175;
    *(v37 + 32) = &v176;
    *(v37 + 40) = a9;
    *(v37 + 48) = a10;
    *(v37 + 56) = &v172;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1000A2ED4;
    *(v39 + 24) = v37;
    v152 = v37;
    v170 = sub_1000A7388;
    v171 = v39;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v169 = sub_100092444;
    *(&v169 + 1) = &unk_1000F5BD0;
    v40 = _Block_copy(&aBlock);
    v41 = v38;
    v42 = a10;

    [v41 enumerateAttributesInRange:v154 options:v35 usingBlock:{0, v40}];
    _Block_release(v40);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if ((v40 & 1) == 0)
    {
      v43 = v172;
      v44 = v172[2];
      if (v44)
      {
        v45 = v172 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v46 = (v36 + 48);
        v161 = v36 + 32;
        v160 = v36 + 8;

        v162 = v19;
        v163 = v23;
        while (v44 <= v43[2])
        {
          --v44;
          v52 = v166;
          sub_1000A49C8(&v45[*(v19 + 72) * v44], v166, type metadata accessor for MarkdownStyle);
          sub_1000A49C8(v52, v23, type metadata accessor for MarkdownStyle);
          v53 = (*v46)(v23, 6, v165);
          if (v53 > 2)
          {
            v47 = 32382;
            if (v53 != 5)
            {
              v47 = 15677;
            }

            v48 = 2763306;
            if (v53 != 3)
            {
              v48 = 11051;
            }

            v49 = 0xE300000000000000;
            if (v53 != 3)
            {
              v49 = 0xE200000000000000;
            }

            if (v53 <= 4)
            {
              v50 = v48;
            }

            else
            {
              v50 = v47;
            }

            if (v53 <= 4)
            {
              v51 = v49;
            }

            else
            {
              v51 = 0xE200000000000000;
            }
          }

          else if (v53)
          {
            if (v53 == 1)
            {
              v50 = 10794;
            }

            else
            {
              v50 = 42;
            }

            if (v53 == 1)
            {
              v51 = 0xE200000000000000;
            }

            else
            {
              v51 = 0xE100000000000000;
            }
          }

          else
          {
            v54 = v164;
            v55 = v23;
            v56 = v165;
            (*v161)(v164, v55, v165);
            *&aBlock = 10333;
            *(&aBlock + 1) = 0xE200000000000000;
            sub_1000A2F08(&qword_100106F10, &type metadata accessor for URL);
            v182._countAndFlagsBits = sub_1000B5EE0();
            sub_1000B56E0(v182);

            v183._countAndFlagsBits = 41;
            v183._object = 0xE100000000000000;
            sub_1000B56E0(v183);
            v51 = *(&aBlock + 1);
            v50 = aBlock;
            v57 = v54;
            v19 = v162;
            v58 = v56;
            v23 = v163;
            (*v160)(v57, v58);
          }

          v181._countAndFlagsBits = v50;
          v181._object = v51;
          sub_1000B56E0(v181);

          sub_1000A4A30(v166, type metadata accessor for MarkdownStyle);
          if (!v44)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_40:
      }

      v60 = v159;

      v59 = sub_1000A2ED4;
      v61 = v158;
      goto LABEL_42;
    }

    goto LABEL_147;
  }

  sub_1000362AC(0, &qword_100108388, ICTTParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = v167;
  LODWORD(v157) = sub_1000A2914([v167 style]);
  if (v157 == 10)
  {

    goto LABEL_10;
  }

  v151 = a6;
  v150 = a7;
  if ([v26 writingDirection] == 1)
  {
    v143 = 0xEF3E226C7472223DLL;
    v144 = 0x726964207669643CLL;
    v64 = 0xE600000000000000;
    v65 = 0x3E7669642F3CLL;
  }

  else
  {
    v65 = 0;
    v144 = 0;
    v64 = 0xE000000000000000;
    v143 = 0xE000000000000000;
  }

  v66 = [v26 isList];
  v152 = v26;
  if (v66 && [v26 indent] >= 1)
  {
    result = [v26 indent];
    if (result < 1)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v67 = result;
    v68 = 0;
    v69 = 0xE000000000000000;
    v26 = 1;
    while (1)
    {
      *&aBlock = v68;
      *(&aBlock + 1) = v69;
      v188._countAndFlagsBits = 538976288;
      v188._object = 0xE400000000000000;
      sub_1000B56E0(v188);
      v69 = *(&aBlock + 1);
      v68 = aBlock;
      if (v67 == v26)
      {
        break;
      }

      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_54;
      }
    }

    v26 = v152;
  }

  else
  {
LABEL_54:
    v68 = 0;
    v69 = 0xE000000000000000;
  }

  if ([v26 blockQuoteLevel])
  {
    v71 = v151;
    swift_beginAccess();
    v72 = *(v71 + 16);
    if (v72 < 1)
    {
      v74 = 0;
      v75 = 0xE000000000000000;
    }

    else
    {
      v73 = v150;
      swift_beginAccess();
      v74 = 0;
      v75 = 0xE000000000000000;
      if (*(v73 + 16) >= 1 && v161 >= 1)
      {
        v76 = [v152 blockQuoteLevel];
        if (v76 >= v72)
        {
          v76 = v72;
        }

        *&aBlock = sub_1000A4700(v76);
        *(&aBlock + 1) = v77;
        v189._countAndFlagsBits = 10;
        v189._object = 0xE100000000000000;
        sub_1000B56E0(v189);
        v75 = *(&aBlock + 1);
        v74 = aBlock;
      }
    }

    *&aBlock = v74;
    *(&aBlock + 1) = v75;
    v81 = v152;
    v191._countAndFlagsBits = sub_1000A4700([v152 blockQuoteLevel]);
    sub_1000B56E0(v191);

    v80 = *(&aBlock + 1);
    v146 = aBlock;
    goto LABEL_71;
  }

  v78 = v151;
  swift_beginAccess();
  if (*(v78 + 16) < 1)
  {
    v146 = 0;
    v80 = 0xE000000000000000;
    goto LABEL_70;
  }

  v79 = v150;
  swift_beginAccess();
  v146 = 0;
  v80 = 0xE000000000000000;
  if (*(v79 + 16) < 1)
  {
LABEL_70:
    v81 = v152;
    goto LABEL_71;
  }

  v81 = v152;
  if (v161 >= 1)
  {
    v190._countAndFlagsBits = 10;
    v190._object = 0xE100000000000000;
    sub_1000B56E0(v190);
    v146 = 0;
    v80 = 0xE000000000000000;
  }

LABEL_71:
  v142 = v80;
  v82 = sub_100094C64(v157);
  v149 = v83;
  v163 = v23;
  v159 = v65;
  v158 = v64;
  v147 = v82;
  if (v82 != 0x44455245424D554ELL || v83 != 0xED00005453494C5FLL)
  {
    v84 = sub_1000B5F20();

    if (v84)
    {
      goto LABEL_75;
    }

    v100 = 0;
    v101 = 0xE000000000000000;
    if (v157 > 4u)
    {
      v102 = v149;
      v103 = v147;
      if (v157 <= 6u)
      {
        if (v157 == 5)
        {
          v101 = 0xE400000000000000;
          v100 = 174088288;
        }

        else
        {
          v101 = 0xE200000000000000;
          v100 = 8234;
        }
      }

      else if (v157 != 8)
      {
        v101 = 0xE200000000000000;
        v100 = 8237;
      }
    }

    else
    {
      v102 = v149;
      v103 = v147;
      if (v157 <= 1u)
      {
        if (v157)
        {
          v101 = 0xE300000000000000;
          v100 = 2106147;
        }

        else
        {
          v101 = 0xE200000000000000;
          v100 = 8227;
        }
      }

      else if (v157 == 2)
      {
        v101 = 0xE400000000000000;
        v100 = 539173667;
      }

      else if (v157 != 3)
      {
        v101 = 0xE500000000000000;
        v100 = 0x2023232323;
      }
    }

    v148 = v101;
    if (v103 == 0x53494C4B43454843 && v102 == 0xE900000000000054)
    {
    }

    else
    {
      v104 = sub_1000B5F20();

      if ((v104 & 1) == 0)
      {
LABEL_110:
        v141 = v100;
        v109 = v157 == 5;
        v110 = 1616928778;
        if (v157 != 5)
        {
          v110 = 0;
        }

        v157 = v110;
        v111 = 0xE000000000000000;
        if (v109)
        {
          v111 = 0xE400000000000000;
        }

        v156 = v111;
        v112 = [v81 indent];
        v113 = v160;
        swift_beginAccess();
        v114 = *(v113 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v167 = *(v113 + 16);
        *(v113 + 16) = 0x8000000000000000;
        sub_100065AC0(0, v112, isUniquelyReferenced_nonNull_native);
        v99 = v167;
        *(v113 + 16) = v167;
        swift_endAccess();
        goto LABEL_115;
      }
    }

    v105 = [v81 todo];
    if (v105)
    {
      v106 = v105;
      v107 = [v105 done];

      if (v107)
      {
        v108 = 120;
      }

      else
      {
        v108 = 32;
      }
    }

    else
    {
      v108 = 32;
    }

    *&aBlock = v100;
    *(&aBlock + 1) = v148;
    v193._countAndFlagsBits = 91;
    v193._object = 0xE100000000000000;
    sub_1000B56E0(v193);
    v194._countAndFlagsBits = v108;
    v194._object = 0xE100000000000000;
    sub_1000B56E0(v194);
    v195._countAndFlagsBits = 8285;
    v195._object = 0xE200000000000000;
    sub_1000B56E0(v195);
    v148 = *(&aBlock + 1);
    v100 = aBlock;
    goto LABEL_110;
  }

LABEL_75:
  v85 = [v81 indent];
  v86 = v160;
  swift_beginAccess();
  v87 = *(v86 + 16);
  if (!*(v87 + 16) || (v88 = sub_1000633EC(v85), (v89 & 1) == 0))
  {
    swift_endAccess();
LABEL_81:
    v92 = v152;
    v93 = [v152 startingItemNumber];
    if (v93 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v93;
    }

    goto LABEL_84;
  }

  v90 = *(*(v87 + 56) + 8 * v88);
  result = swift_endAccess();
  if (!v90)
  {
    goto LABEL_81;
  }

  v91 = v90 + 1;
  if (!__OFADD__(v90, 1))
  {
    v92 = v152;
LABEL_84:
    v167 = v91;
    *&aBlock = sub_1000B5EE0();
    *(&aBlock + 1) = v94;
    v192._countAndFlagsBits = 8238;
    v192._object = 0xE200000000000000;
    sub_1000B56E0(v192);
    v148 = *(&aBlock + 1);
    v141 = aBlock;
    v95 = [v92 indent];
    v96 = v160;
    swift_beginAccess();
    v97 = *(v96 + 16);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v167 = *(v96 + 16);
    *(v96 + 16) = 0x8000000000000000;
    sub_100065AC0(v91, v95, v98);
    v99 = v167;
    *(v96 + 16) = v167;
    swift_endAccess();
    v157 = 0;
    v156 = 0xE000000000000000;
LABEL_115:

    v116 = 0;
    v117 = 1 << v99[32];
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v119 = v118 & *(v99 + 8);
    v120 = (v117 + 63) >> 6;
    v145 = v68;
    while (v119)
    {
LABEL_125:
      v122 = __clz(__rbit64(v119));
      v119 &= v119 - 1;
      v123 = *(*(v99 + 6) + ((v116 << 9) | (8 * v122)));
      result = [v152 indent];
      if (result < v123)
      {
        swift_beginAccess();
        v124 = *(v160 + 16);
        v125 = sub_1000633EC(v123);
        v126 = v160;
        if (v127)
        {
          v128 = v125;
          v129 = *(v160 + 16);
          v130 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v126;
          v132 = *(v126 + 16);
          v167 = v132;
          *(v131 + 16) = 0x8000000000000000;
          if (!v130)
          {
            sub_10005CB80();
            v132 = v167;
          }

          sub_10005BCC4(v128, v132);
          *(v131 + 16) = v132;
          v68 = v145;
        }

        result = swift_endAccess();
      }
    }

    while (1)
    {
      v121 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      if (v121 >= v120)
      {

        v133 = [v152 blockQuoteLevel];
        v134 = v151;
        swift_beginAccess();
        *(v134 + 16) = v133;
        v135 = v150;
        swift_beginAccess();
        *(v135 + 16) = v161;
        v136 = v147;
        if (v147 == 0x454C544954 && v149 == 0xE500000000000000)
        {
          v33 = v69;
          v29 = v68;

          v23 = v163;
          v31 = v143;
          v28 = v146;
          goto LABEL_138;
        }

        v137 = sub_1000B5F20();

        v23 = v163;
        v31 = v143;
        v28 = v146;
        if (v137)
        {
LABEL_133:
          v33 = v69;
          v29 = v68;

          goto LABEL_138;
        }

        if (v136 == 0x474E4944414548 && v149 == 0xE700000000000000)
        {
          v33 = v69;
          goto LABEL_137;
        }

        v138 = sub_1000B5F20();

        if (v138)
        {
          goto LABEL_133;
        }

        v33 = v69;
        if (v136 == 0x4944414548425553 && v149 == 0xEA0000000000474ELL)
        {
LABEL_137:
          v29 = v68;
        }

        else
        {
          v29 = v68;
          v139 = sub_1000B5F20();

          if ((v139 & 1) == 0)
          {
            goto LABEL_139;
          }
        }

LABEL_138:
        v175 = 1;
LABEL_139:
        v27._countAndFlagsBits = v144;
        v32 = v142;
        v30 = v141;
        v34 = v148;
        goto LABEL_11;
      }

      v119 = *&v99[8 * v121 + 64];
      ++v116;
      if (v119)
      {
        v116 = v121;
        goto LABEL_125;
      }
    }

    __break(1u);
    goto LABEL_146;
  }

LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_10009B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7, int a8, void *a9, char *a10)
{
  LODWORD(v189) = a8;
  v202 = a7;
  v185 = a6;
  v14 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v203 = &v181 - v16;
  v204 = sub_1000B4DB0();
  v191 = *(v204 - 8);
  v17 = *(v191 + 64);
  v18 = __chkstk_darwin(v204);
  v197 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v181 - v20;
  v22 = type metadata accessor for MarkdownStyle(0);
  v198 = *(v22 - 8);
  v23 = *(v198 + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v194 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v192 = &v181 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v181 - v29;
  v31 = __chkstk_darwin(v28);
  v199 = &v181 - v32;
  v33 = __chkstk_darwin(v31);
  v201 = &v181 - v34;
  v35 = __chkstk_darwin(v33);
  v187 = &v181 - v36;
  v37 = __chkstk_darwin(v35);
  v200 = &v181 - v38;
  v39 = __chkstk_darwin(v37);
  v196 = (&v181 - v40);
  v41 = __chkstk_darwin(v39);
  v186 = &v181 - v42;
  v43 = __chkstk_darwin(v41);
  v195 = (&v181 - v44);
  v45 = __chkstk_darwin(v43);
  v193 = &v181 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v181 - v48;
  v50 = __chkstk_darwin(v47);
  v184 = &v181 - v51;
  v52 = __chkstk_darwin(v50);
  v183 = &v181 - v53;
  v54 = __chkstk_darwin(v52);
  v56 = &v181 - v55;
  __chkstk_darwin(v54);
  v58 = &v181 - v57;
  v59 = [a5 attributedSubstringFromRange:{a2, a3}];
  v60 = [v59 string];

  v188 = sub_1000B5620();
  v190 = v61;

  if (*(a1 + 16))
  {
    v62 = ICTTAttributeNameFont;
    v63 = sub_100063358(v62);
    if (v64)
    {
      sub_100030378(*(a1 + 56) + 32 * v63, &v207);

      sub_1000362AC(0, &qword_100108398, ICTTFont_ptr);
      if (swift_dynamicCast())
      {
        v181 = v49;
        v65 = v206;
        if (([v206 fontHints] & 1) != 0 && (*v185 & 1) == 0)
        {
          v182 = v21;
          (*(v191 + 56))(v58, 1, 6, v204);
          v66 = sub_100033EB8(0, 1, 1, _swiftEmptyArrayStorage);
          v177 = v66[2];
          v176 = v66[3];
          if (v177 >= v176 >> 1)
          {
            v66 = sub_100033EB8(v176 > 1, v177 + 1, 1, v66);
          }

          v66[2] = v177 + 1;
          sub_1000A47A4(v58, v66 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v177, type metadata accessor for MarkdownStyle);
          v21 = v182;
        }

        else
        {
          v66 = _swiftEmptyArrayStorage;
        }

        if (([v65 fontHints] & 2) != 0)
        {
          (*(v191 + 56))(v56, 2, 6, v204);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v198;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v66 = sub_100033EB8(0, v66[2] + 1, 1, v66);
          }

          v180 = v66[2];
          v179 = v66[3];
          if (v180 >= v179 >> 1)
          {
            v66 = sub_100033EB8(v179 > 1, v180 + 1, 1, v66);
          }

          v66[2] = v180 + 1;
          sub_1000A47A4(v56, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v180, type metadata accessor for MarkdownStyle);
        }

        else
        {

          v67 = v198;
        }

        v49 = v181;
        if (!*(a1 + 16))
        {
          goto LABEL_26;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v66 = _swiftEmptyArrayStorage;
  v67 = v198;
  if (*(a1 + 16))
  {
LABEL_9:
    v68 = ICTTAttributeNameFontHints;
    v69 = sub_100063358(v68);
    if (v70)
    {
      sub_100030378(*(a1 + 56) + 32 * v69, &v207);

      if (swift_dynamicCast())
      {
        v71 = v49;
        v72 = v206;
        if ((v206 & 1) != 0 && (*v185 & 1) == 0)
        {
          v182 = v21;
          (*(v191 + 56))(v183, 1, 6, v204);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_100033EB8(0, v66[2] + 1, 1, v66);
          }

          v74 = v66[2];
          v73 = v66[3];
          if (v74 >= v73 >> 1)
          {
            v66 = sub_100033EB8(v73 > 1, v74 + 1, 1, v66);
          }

          v66[2] = v74 + 1;
          sub_1000A47A4(v183, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v74, type metadata accessor for MarkdownStyle);
          v21 = v182;
        }

        if ((v72 & 2) != 0)
        {
          (*(v191 + 56))(v184, 2, 6, v204);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_100033EB8(0, v66[2] + 1, 1, v66);
          }

          v76 = v66[2];
          v75 = v66[3];
          if (v76 >= v75 >> 1)
          {
            v66 = sub_100033EB8(v75 > 1, v76 + 1, 1, v66);
          }

          v66[2] = v76 + 1;
          sub_1000A47A4(v184, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v76, type metadata accessor for MarkdownStyle);
        }

        v49 = v71;
      }
    }

    else
    {
    }
  }

LABEL_26:
  if (*(a1 + 16))
  {
    v77 = ICTTAttributeNameUnderline;
    v78 = sub_100063358(v77);
    if (v79)
    {
      sub_100030378(*(a1 + 56) + 32 * v78, &v207);

      sub_100036320(&v207, &qword_100106E30, &unk_1000CAB60);
      (*(v191 + 56))(v49, 4, 6, v204);
      v80 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_29;
    }
  }

  v207 = 0u;
  v208 = 0u;
  sub_100036320(&v207, &qword_100106E30, &unk_1000CAB60);
  if (*(a1 + 16))
  {
    goto LABEL_35;
  }

LABEL_43:
  v207 = 0u;
  v208 = 0u;
  sub_100036320(&v207, &qword_100106E30, &unk_1000CAB60);
  if (*(a1 + 16))
  {
    goto LABEL_44;
  }

LABEL_52:
  v207 = 0u;
  v208 = 0u;
  sub_100036320(&v207, &qword_100106E30, &unk_1000CAB60);
  if (*(a1 + 16))
  {
    goto LABEL_53;
  }

LABEL_62:
  v97 = v203;
  (*(v191 + 56))(v203, 1, 1, v204);
LABEL_63:
  sub_100036320(v97, &qword_100106F88, &qword_1000CAE20);
  if (!*(a1 + 16))
  {
    goto LABEL_68;
  }

LABEL_64:
  v113 = ICTTNSAttachmentAttributeName;
  v114 = sub_100063358(v113);
  if ((v115 & 1) == 0)
  {

    while (1)
    {
LABEL_68:
      v203 = a10;
      v117 = *a10;

      v119 = sub_100087E7C(v118);

      v121 = sub_100087E7C(v120);
      v189 = v66;

      if (*(v121 + 2) <= v119[2] >> 3)
      {
        *&v207 = v119;

        sub_10009E420(v121);
        v66 = v207;
      }

      else
      {

        v66 = sub_10009E628(v121, v119);
      }

      v206 = v66;
      if (v119[2] <= *(v121 + 2) >> 3)
      {
        *&v207 = v121;

        sub_10009E420(v119);

        v122 = v207;
      }

      else
      {

        v122 = sub_10009E628(v119, v121);
      }

      a1 = v196;
      v205 = v122;
      v80 = *v203;
      v123 = *(*v203 + 16);
      v193 = v30;
      if (!v123)
      {

LABEL_88:
        v130 = *v203;
        v131 = *(*v203 + 16);
        v132 = v199;
        v133 = v201;
        if (v131)
        {
          v134 = v206;
          v135 = v130 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v136 = (v191 + 48);
          v195 = (v191 + 8);
          v196 = (v191 + 32);

          while (v131 <= *(v130 + 16))
          {
            --v131;
            sub_1000A49C8(v135 + *(v67 + 72) * v131, v133, type metadata accessor for MarkdownStyle);
            if (sub_10008FFE0(v133, v134))
            {
              sub_1000A49C8(v133, v132, type metadata accessor for MarkdownStyle);
              v144 = (*v136)(v132, 6, v204);
              if (v144 > 2)
              {
                v137 = 32382;
                if (v144 != 5)
                {
                  v137 = 15677;
                }

                v138 = 0xE200000000000000;
                v139 = 2763306;
                if (v144 == 3)
                {
                  v138 = 0xE300000000000000;
                }

                else
                {
                  v139 = 11051;
                }

                v140 = v144 <= 4;
                if (v144 <= 4)
                {
                  v141._countAndFlagsBits = v139;
                }

                else
                {
                  v141._countAndFlagsBits = v137;
                }

                if (v140)
                {
                  v142 = v138;
                }

                else
                {
                  v142 = 0xE200000000000000;
                }
              }

              else if (v144)
              {
                v145 = v144 == 1;
                if (v144 == 1)
                {
                  v141._countAndFlagsBits = 10794;
                }

                else
                {
                  v141._countAndFlagsBits = 42;
                }

                if (v145)
                {
                  v142 = 0xE200000000000000;
                }

                else
                {
                  v142 = 0xE100000000000000;
                }
              }

              else
              {
                v146 = v197;
                v147 = v204;
                (*v196)(v197, v199, v204);
                *&v207 = 10333;
                *(&v207 + 1) = 0xE200000000000000;
                sub_1000A2F08(&qword_100106F10, &type metadata accessor for URL);
                v210._countAndFlagsBits = sub_1000B5EE0();
                sub_1000B56E0(v210);

                v211._countAndFlagsBits = 41;
                v211._object = 0xE100000000000000;
                sub_1000B56E0(v211);
                v142 = *(&v207 + 1);
                v148 = v207;
                v149 = v146;
                v150 = v147;
                v67 = v198;
                v132 = v199;
                (*v195)(v149, v150);
                v141._countAndFlagsBits = v148;
              }

              v141._object = v142;
              sub_1000B56E0(v141);

              v143 = v200;
              sub_10009D068(*(*v203 + 16) - 1, v200);
              sub_1000A4A30(v143, type metadata accessor for MarkdownStyle);
              v133 = v201;
            }

            sub_1000A4A30(v133, type metadata accessor for MarkdownStyle);
            if (!v131)
            {
              goto LABEL_115;
            }
          }

          __break(1u);
LABEL_115:

          v30 = v193;
        }

        v151 = v189[2];
        if (v151)
        {
          v152 = v205;
          v153 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v154 = v189 + v153;
          v155 = (v191 + 48);
          v156 = *(v67 + 72);
          do
          {
            sub_1000A49C8(v154, v30, type metadata accessor for MarkdownStyle);
            if (sub_10008FFE0(v30, v152))
            {
              v157 = v192;
              sub_1000A49C8(v30, v192, type metadata accessor for MarkdownStyle);
              v158 = (*v155)(v157, 6, v204);
              if (v158 <= 2)
              {
                if (v158)
                {
                  v165 = v158 == 1;
                  if (v158 == 1)
                  {
                    v163._countAndFlagsBits = 10794;
                  }

                  else
                  {
                    v163._countAndFlagsBits = 42;
                  }

                  if (v165)
                  {
                    v164 = 0xE200000000000000;
                  }

                  else
                  {
                    v164 = 0xE100000000000000;
                  }
                }

                else
                {
                  sub_1000A4A30(v192, type metadata accessor for MarkdownStyle);
                  v164 = 0xE100000000000000;
                  v163._countAndFlagsBits = 91;
                }
              }

              else
              {
                v159 = 32382;
                if (v158 != 5)
                {
                  v159 = 15677;
                }

                v160 = 2763306;
                if (v158 != 3)
                {
                  v160 = 11051;
                }

                v161 = 0xE300000000000000;
                if (v158 != 3)
                {
                  v161 = 0xE200000000000000;
                }

                v162 = v158 <= 4;
                if (v158 <= 4)
                {
                  v163._countAndFlagsBits = v160;
                }

                else
                {
                  v163._countAndFlagsBits = v159;
                }

                if (v162)
                {
                  v164 = v161;
                }

                else
                {
                  v164 = 0xE200000000000000;
                }
              }

              v163._object = v164;
              sub_1000B56E0(v163);

              sub_1000A49C8(v30, v194, type metadata accessor for MarkdownStyle);
              v166 = v203;
              v167 = *v203;
              v168 = swift_isUniquelyReferenced_nonNull_native();
              *v166 = v167;
              if ((v168 & 1) == 0)
              {
                v167 = sub_100033EB8(0, v167[2] + 1, 1, v167);
                *v203 = v167;
              }

              v170 = v167[2];
              v169 = v167[3];
              if (v170 >= v169 >> 1)
              {
                v174 = sub_100033EB8(v169 > 1, v170 + 1, 1, v167);
                *v203 = v174;
              }

              v171 = v193;
              sub_1000A4A30(v193, type metadata accessor for MarkdownStyle);
              v172 = *v203;
              *(v172 + 16) = v170 + 1;
              v173 = v172 + v153 + v170 * v156;
              v30 = v171;
              sub_1000A47A4(v194, v173, type metadata accessor for MarkdownStyle);
            }

            else
            {
              sub_1000A4A30(v30, type metadata accessor for MarkdownStyle);
            }

            v154 += v156;
            --v151;
          }

          while (v151);
        }

        v212._countAndFlagsBits = v188;
        v212._object = v190;
        sub_1000B56E0(v212);
      }

      v30 = v121;
      v21 = (v80 + ((*(v67 + 80) + 32) & ~*(v67 + 80)));

      v124 = 0;
      v125 = 0;
      while (v125 < *(v80 + 16))
      {
        sub_1000A49C8(&v21[*(v67 + 72) * v125], a1, type metadata accessor for MarkdownStyle);
        v126 = sub_10008FFE0(a1, v66);
        if (v124)
        {
          if (v126)
          {
            goto LABEL_77;
          }

          v127 = v187;
          sub_1000A49C8(a1, v187, type metadata accessor for MarkdownStyle);
          v128 = v200;
          sub_100084878(v200, v127);
          a1 = v196;
          sub_1000A4A30(v128, type metadata accessor for MarkdownStyle);
          if (sub_10008FFE0(a1, v30))
          {
            sub_1000A49C8(a1, v127, type metadata accessor for MarkdownStyle);
            sub_100084878(v128, v127);
            a1 = v196;
            sub_1000A4A30(v128, type metadata accessor for MarkdownStyle);
            v129 = a1;
            goto LABEL_84;
          }

LABEL_83:
          v129 = a1;
LABEL_84:
          sub_1000A4A30(v129, type metadata accessor for MarkdownStyle);
          if (v123 - 1 == v125)
          {
LABEL_86:

            v30 = v193;
            goto LABEL_88;
          }

          v66 = v206;
          ++v125;
          v124 = 1;
        }

        else
        {
          if (v126)
          {
            goto LABEL_83;
          }

LABEL_77:
          ++v125;
          sub_1000A4A30(a1, type metadata accessor for MarkdownStyle);
          if (v123 == v125)
          {
            goto LABEL_86;
          }
        }
      }

      __break(1u);
LABEL_162:
      v66 = sub_100033EB8(0, v66[2] + 1, 1, v66);
LABEL_29:
      v82 = v66[2];
      v81 = v66[3];
      if (v82 >= v81 >> 1)
      {
        v66 = sub_100033EB8(v81 > 1, v82 + 1, 1, v66);
      }

      v66[2] = v82 + 1;
      sub_1000A47A4(v80, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v82, type metadata accessor for MarkdownStyle);
      if (!*(a1 + 16))
      {
        goto LABEL_43;
      }

LABEL_35:
      v83 = ICTTAttributeNameStrikethrough;
      v84 = sub_100063358(v83);
      if ((v85 & 1) == 0)
      {

        goto LABEL_43;
      }

      sub_100030378(*(a1 + 56) + 32 * v84, &v207);

      sub_100036320(&v207, &qword_100106E30, &unk_1000CAB60);
      (*(v191 + 56))(v193, 5, 6, v204);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_100033EB8(0, v66[2] + 1, 1, v66);
      }

      v87 = v66[2];
      v86 = v66[3];
      if (v87 >= v86 >> 1)
      {
        v66 = sub_100033EB8(v86 > 1, v87 + 1, 1, v66);
      }

      v66[2] = v87 + 1;
      sub_1000A47A4(v193, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v87, type metadata accessor for MarkdownStyle);
      if (!*(a1 + 16))
      {
        goto LABEL_52;
      }

LABEL_44:
      v88 = ICTTAttributeNameEmphasis;
      v89 = sub_100063358(v88);
      if ((v90 & 1) == 0)
      {

        goto LABEL_52;
      }

      sub_100030378(*(a1 + 56) + 32 * v89, &v207);

      sub_100036320(&v207, &qword_100106E30, &unk_1000CAB60);
      (*(v191 + 56))(v195, 6, 6, v204);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_100033EB8(0, v66[2] + 1, 1, v66);
      }

      v92 = v66[2];
      v91 = v66[3];
      if (v92 >= v91 >> 1)
      {
        v66 = sub_100033EB8(v91 > 1, v92 + 1, 1, v66);
      }

      v66[2] = v92 + 1;
      sub_1000A47A4(v195, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v92, type metadata accessor for MarkdownStyle);
      if (!*(a1 + 16))
      {
        goto LABEL_62;
      }

LABEL_53:
      v93 = ICTTNSLinkAttributeName;
      v94 = sub_100063358(v93);
      if ((v95 & 1) == 0)
      {

        goto LABEL_62;
      }

      v182 = v21;
      sub_100030378(*(a1 + 56) + 32 * v94, &v207);

      v97 = v203;
      v96 = v204;
      v98 = swift_dynamicCast();
      v99 = v66;
      v100 = v191;
      v101 = *(v191 + 56);
      v101(v97, v98 ^ 1u, 1, v96);
      v102 = v100;
      v66 = v99;
      if ((*(v102 + 48))(v97, 1, v96) == 1)
      {
        goto LABEL_63;
      }

      v103 = v191;
      v104 = v97;
      v105 = v182;
      v106 = v204;
      (*(v191 + 32))(v182, v104, v204);
      v107 = v103;
      v108 = v99;
      v109 = v186;
      (*(v107 + 16))(v186, v105, v106);
      v101(v109, 0, 6, v106);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_100033EB8(0, v108[2] + 1, 1, v108);
      }

      v111 = v108[2];
      v110 = v108[3];
      v112 = v108;
      if (v111 >= v110 >> 1)
      {
        v112 = sub_100033EB8(v110 > 1, v111 + 1, 1, v108);
      }

      (*(v191 + 8))(v182, v204);
      *(v112 + 16) = v111 + 1;
      v66 = v112;
      sub_1000A47A4(v109, v112 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v111, type metadata accessor for MarkdownStyle);
      if (*(a1 + 16))
      {
        goto LABEL_64;
      }
    }
  }

  sub_100030378(*(a1 + 56) + 32 * v114, &v207);

  sub_1000362AC(0, &qword_100108378, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_68;
  }

  v116 = v206;

  v209._countAndFlagsBits = sub_10009C914(v116, v189, a9);
  sub_1000B56E0(v209);
}

NSObject *sub_10009C914(void *a1, char a2, void *a3)
{
  v6 = sub_1000B4B50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000B4DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isInlineAttachment:a1])
  {
    v16 = [a1 inlineAttachmentInContext:a3];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 displayText];
      v19 = sub_1000B5620();

      return v19;
    }

    if (qword_100106A88 != -1)
    {
      swift_once();
    }

    v25 = sub_1000B5530();
    sub_100036380(v25, qword_100108350);
    v26 = a1;
    v21 = sub_1000B5520();
    v27 = sub_1000B5910();

    if (os_log_type_enabled(v21, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v21, v27, "Cannot resolve inline attachment — skipping {attachment: %@}", v28, 0xCu);
      sub_100036320(v29, &qword_100108380, &qword_1000CDA30);
    }

    goto LABEL_40;
  }

  result = [a1 attachmentInContext:a3];
  if (!result)
  {
    return result;
  }

  v21 = result;
  if ([result isTable]&& a2 == 2)
  {
    v22 = [v21 tableModel];
    sub_10009D214(v22, a3);
    v24 = v23;

    return v24;
  }

  if ([v21 isURL]&& (v31 = [v21 URL]) != 0)
  {
    v32 = v31;
    sub_1000B4D50();

    v68 = 91;
    v69 = 0xE100000000000000;
    v33 = [v21 title];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1000B5620();
      object = v36;

      v38._countAndFlagsBits = v35;
    }

    else
    {
      v38._countAndFlagsBits = sub_1000B4CA0();
      object = v38._object;
    }

    v38._object = object;
    sub_1000B56E0(v38);

    v74._countAndFlagsBits = 10333;
    v74._object = 0xE200000000000000;
    sub_1000B56E0(v74);
    sub_1000A2F08(&qword_100106F10, &type metadata accessor for URL);
    v75._countAndFlagsBits = sub_1000B5EE0();
    sub_1000B56E0(v75);

    v76._countAndFlagsBits = 41;
    v76._object = 0xE100000000000000;
    sub_1000B56E0(v76);

    v63 = v68;
    (*(v12 + 8))(v15, v11);
    return v63;
  }

  else
  {
    v39 = ([v21 hasFallbackImage]& 1) != 0 || ([v21 hasFallbackPDF]& 1) != 0 || [v21 attachmentType]== 3 || [v21 attachmentType]== 5;
    v65 = v39;
    v40 = [v21 title];
    if (!v40)
    {
      v40 = [v21 userTitle];
      if (!v40)
      {
        v40 = [v21 defaultTitle];
      }
    }

    v41 = v40;
    v42 = sub_1000B5620();
    v44 = v43;

    v45 = sub_1000504CC();
    if (!v46)
    {

      if (qword_100106A88 != -1)
      {
        swift_once();
      }

      v59 = sub_1000B5530();
      sub_100036380(v59, qword_100108350);
      v60 = sub_1000B5520();
      v61 = sub_1000B5920();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "could not get filename for attachment we're exporting", v62, 2u);
      }

LABEL_40:
      return 0;
    }

    v47 = v45;
    v48 = v46;
    v68 = 0;
    v69 = 0xE000000000000000;
    if (a2 == 1)
    {
      v49._countAndFlagsBits = 0x656D686361747461;
    }

    else
    {
      v49._countAndFlagsBits = 0x656D686361747441;
    }

    v49._object = 0xEC0000002F73746ELL;
    sub_1000B56E0(v49);

    v66 = v47;
    v67 = v48;
    sub_1000B4B30();
    sub_10003042C();
    v50 = sub_1000B5AF0();
    v52 = v51;
    (*(v7 + 8))(v10, v6);

    if (v52)
    {
      v53._countAndFlagsBits = v50;
    }

    else
    {
      v53._countAndFlagsBits = 0;
    }

    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    v53._object = v54;
    sub_1000B56E0(v53);

    v56 = v68;
    v55 = v69;
    if (v65)
    {
      v57 = 23329;
      v58 = 0xE200000000000000;
    }

    else
    {
      v57 = 91;
      v58 = 0xE100000000000000;
    }

    v68 = v57;
    v69 = v58;
    v70._countAndFlagsBits = v42;
    v70._object = v44;
    sub_1000B56E0(v70);

    v71._countAndFlagsBits = 10333;
    v71._object = 0xE200000000000000;
    sub_1000B56E0(v71);
    v72._countAndFlagsBits = v56;
    v72._object = v55;
    sub_1000B56E0(v72);

    v73._countAndFlagsBits = 41;
    v73._object = 0xE100000000000000;
    sub_1000B56E0(v73);

    return v68;
  }
}

size_t sub_10009D068@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10009FCB4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for MarkdownStyle(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1000A47A4(v11, a2, type metadata accessor for MarkdownStyle);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10009D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

void sub_10009D214(void *a1, void *a2)
{
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  v43 = &_swiftEmptyDictionarySingleton;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 table];
    v5 = swift_allocObject();
    v5[2] = &v43;
    v5[3] = v3;
    v5[4] = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1000A485C;
    *(v6 + 24) = v5;
    v41 = sub_1000A4868;
    v42 = v6;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10006C434;
    v40 = &unk_1000F5C48;
    v7 = _Block_copy(&aBlock);
    v8 = v3;
    v9 = a2;

    [v4 enumerateColumnsWithBlock:v7];

    _Block_release(v7);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 1 << v43[32];
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v43 + 8);
      v15 = (v12 + 63) >> 6;
      do
      {
        if (!v14)
        {
          while (1)
          {
            v16 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v16 >= v15)
            {
              goto LABEL_15;
            }

            v14 = *&v43[8 * v16 + 64];
            ++v11;
            if (v14)
            {
              v11 = v16;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_24;
        }

        v16 = v11;
LABEL_12:
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = *(*(v43 + 7) + ((v16 << 9) | (8 * v17)));
        v19 = __OFADD__(v10, v18);
        v10 += v18;
      }

      while (!v19);
      __break(1u);
LABEL_15:
      v20 = [v8 table];
      v21 = [v20 columnCount];

      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_25;
      }

      v23 = (v22 * 3) >> 64;
      v24 = 3 * v22;
      if (v23 != v24 >> 63)
      {
        goto LABEL_26;
      }

      v19 = __OFADD__(v10, v24);
      v25 = v10 + v24;
      if (!v19)
      {
        v19 = __OFADD__(v25, 4);
        v26 = v25 + 4;
        if (v19)
        {
          goto LABEL_28;
        }

        v27 = v26 < 80;
        v45._countAndFlagsBits = 10;
        v45._object = 0xE100000000000000;
        sub_1000B56E0(v45);
        v36 = 1;
        v28 = [v8 table];
        v29 = swift_allocObject();
        *(v29 + 16) = v8;
        *(v29 + 24) = v9;
        *(v29 + 32) = v27;
        *(v29 + 40) = &v43;
        *(v29 + 48) = v44;
        *(v29 + 56) = &v36;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_1000A48B0;
        *(v30 + 24) = v29;
        v41 = sub_1000A740C;
        v42 = v30;
        aBlock = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_10006C434;
        v40 = &unk_1000F5CC0;
        v31 = _Block_copy(&aBlock);
        v32 = v8;
        v33 = v9;

        [v28 enumerateRowsWithBlock:v31];

        _Block_release(v31);
        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if ((v32 & 1) == 0)
        {

          v34 = sub_1000A48B0;
          v35 = sub_1000A485C;
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v35 = 0;
  v34 = 0;
LABEL_22:

  sub_1000A480C(v35);
  sub_1000A480C(v34);
}

uint64_t sub_10009D6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  v10 = sub_1000B4F30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a4;
  *a4 = 0x8000000000000000;
  sub_100065AC0(0, a2, isUniquelyReferenced_nonNull_native);
  v17 = *a4;
  *a4 = aBlock[0];

  v18 = [a5 table];
  sub_1000B4F20();
  sub_1000B4F10(v19);
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a4;
  v22[4] = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1000A49BC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_1000A738C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009DB68;
  aBlock[3] = &unk_1000F5E28;
  v24 = _Block_copy(aBlock);
  v25 = a6;

  [v18 enumerateCellObjectsInCellSelectionContainingColumnIndices:v21 rowIndices:0 copyItems:0 usingBlock:v24];

  _Block_release(v24);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

id sub_10009D93C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (result)
  {
    v21 = result;
    result = [result attributedString];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [result ic_attributedStringByFlatteningInlineAttachmentsWithContext:a5];
    v12 = [v11 string];

    sub_1000B5620();
    sub_10003042C();
    sub_1000B5AE0();

    sub_1000B5AE0();

    v13 = sub_1000B56B0();
    v14 = *a6;
    if (*(*a6 + 16) && (v15 = sub_1000633EC(a7), (v16 & 1) != 0))
    {
      if (*(*(v14 + 56) + 8 * v15) >= v13)
      {
        goto LABEL_9;
      }
    }

    else if (v13 <= 0)
    {
      goto LABEL_9;
    }

    v17 = sub_1000B56B0();

    v18 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a6;
    *a6 = 0x8000000000000000;
    sub_100065AC0(v17, a7, isUniquelyReferenced_nonNull_native);
    v20 = *a6;
    *a6 = v22;
LABEL_9:

    return v21;
  }

  return result;
}

id sub_10009DB68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = a2;
  v12 = v10(a2, a3, a4, a5);

  return v12;
}

uint64_t sub_10009DBEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v14 = sub_1000B4F30();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  v19 = [a4 table];
  sub_1000B4F20();
  sub_1000B4F10(v20);
  v22 = v21;
  (*(v15 + 8))(v18, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = &v42;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *(v23 + 40) = a7;
  *(v23 + 48) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1000A4924;
  *(v24 + 24) = v23;
  v40 = sub_1000A4954;
  v41 = v24;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_10009DB68;
  v39 = &unk_1000F5D38;
  v25 = _Block_copy(&aBlock);
  v26 = a5;
  v27 = a4;

  [v19 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:v22 copyItems:0 usingBlock:v25];

  _Block_release(v25);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v29 = v42;
    v30 = v43;

    v44._countAndFlagsBits = v29;
    v44._object = v30;
    sub_1000B56E0(v44);

    v45._countAndFlagsBits = 10;
    v45._object = 0xE100000000000000;
    sub_1000B56E0(v45);
    if (*a9 != 1)
    {
      v35 = 0;
      goto LABEL_6;
    }

    v31 = [v27 table];
    v32 = swift_allocObject();
    *(v32 + 16) = a8;
    *(v32 + 24) = a7;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1000A497C;
    *(v33 + 24) = v32;
    v40 = sub_1000A740C;
    v41 = v33;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_10006C434;
    v39 = &unk_1000F5DB0;
    v34 = _Block_copy(&aBlock);

    [v31 enumerateColumnsWithBlock:v34];

    _Block_release(v34);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if ((v31 & 1) == 0)
    {
      v46._countAndFlagsBits = 687136;
      v46._object = 0xE300000000000000;
      sub_1000B56E0(v46);
      *a9 = 0;
      v35 = sub_1000A497C;
LABEL_6:

      return sub_1000A480C(v35);
    }
  }

  __break(1u);
  return result;
}

void sub_10009E018(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, char a7, uint64_t *a8, id a9)
{
  if (a1)
  {
    v11 = a1;
    if (a2)
    {
      v12._countAndFlagsBits = 2128928;
      v12._object = 0xE300000000000000;
    }

    else
    {
      v12._countAndFlagsBits = 8316;
      v12._object = 0xE200000000000000;
    }

    sub_1000B56E0(v12);
    v13 = [v11 attributedString];
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v13;
    v15 = [v13 ic_attributedStringByFlatteningInlineAttachmentsWithContext:a6];
    v16 = [v15 string];

    sub_1000B5620();
    v17 = sub_10003042C();
    sub_1000B5AE0();

    v30 = v17;
    v31 = v17;
    v29 = v17;
    v18 = sub_1000B5AE0();
    v20 = v19;

    v34._countAndFlagsBits = v18;
    v34._object = v20;
    sub_1000B56E0(v34);
    if (a7)
    {
      v21 = *a8;
      if (*(*a8 + 16) && (v22 = sub_1000633EC(a2), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        v24 = 0;
      }

      v25 = sub_1000B56B0();

      v26 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v26 < 1)
      {
LABEL_16:
        v27 = [a9 table];
        v28 = [v27 columnCount];

        if (!__OFSUB__(v28, 1))
        {
          if (v28 - 1 == a2)
          {
            v37._countAndFlagsBits = 31776;
            v37._object = 0xE200000000000000;
            sub_1000B56E0(v37);
          }

          return;
        }

        __break(1u);
        goto LABEL_21;
      }

      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      v36._countAndFlagsBits = sub_1000B5710(v35, v26);
      sub_1000B56E0(v36);
    }

    goto LABEL_16;
  }
}

uint64_t sub_10009E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v7._countAndFlagsBits = 2128928;
    v7._object = 0xE300000000000000;
  }

  else
  {
    v7._countAndFlagsBits = 8316;
    v7._object = 0xE200000000000000;
  }

  sub_1000B56E0(v7);
  v8 = *a5;
  v9 = *(*a5 + 16);
  if (v9)
  {
    v10 = sub_1000633EC(a2);
    if (v11)
    {
      v9 = *(*(v8 + 56) + 8 * v10);
    }

    else
    {
      v9 = 0;
    }
  }

  if (v9 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  v16._countAndFlagsBits = sub_1000B5710(v15, v12);
  sub_1000B56E0(v16);
}

double sub_10009E380@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100063358(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005C248();
      v11 = v13;
    }

    sub_100030C64((*(v11 + 56) + 32 * v8), a2);
    sub_10005B7DC(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10009E420(uint64_t a1)
{
  v3 = sub_100030480(&qword_1001083A8, &unk_1000CDA50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for MarkdownStyle(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_100036320(v6, &qword_1001083A8, &unk_1000CDA50))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1000A49C8(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for MarkdownStyle);
      sub_10009FCC8(v12, v6);
      sub_1000A4A30(v12, type metadata accessor for MarkdownStyle);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10009E628(uint64_t a1, void *a2)
{
  v161 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  v4 = *(*(v161 - 8) + 64);
  v5 = __chkstk_darwin(v161);
  v7 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v153 = (&v128 - v8);
  v9 = sub_1000B4DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v138 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v130 = &v128 - v15;
  __chkstk_darwin(v14);
  v136 = &v128 - v16;
  v17 = sub_100030480(&qword_1001083A8, &unk_1000CDA50);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v140 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v128 - v21;
  v149 = type metadata accessor for MarkdownStyle(0);
  v23 = *(v149 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v149);
  v26 = __chkstk_darwin(v25);
  v159 = &v128 - v27;
  v28 = __chkstk_darwin(v26);
  v148 = &v128 - v29;
  v30 = __chkstk_darwin(v28);
  v158 = &v128 - v31;
  v32 = __chkstk_darwin(v30);
  v33 = __chkstk_darwin(v32);
  v160 = &v128 - v34;
  v35 = __chkstk_darwin(v33);
  v134 = &v128 - v36;
  __chkstk_darwin(v35);
  v154 = &v128 - v39;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v135 = v38;
  v132 = v22;
  v155 = v37;
  v164 = v9;
  v129 = 0;
  v41 = a1 + 56;
  v40 = *(a1 + 56);
  v42 = -1 << *(a1 + 32);
  v146 = ~v42;
  if (-v42 < 64)
  {
    v43 = ~(-1 << -v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & v40;
  v141 = (63 - v42) >> 6;
  v145 = (v23 + 56);
  v144 = (v23 + 48);
  v166 = (v10 + 48);
  v139 = (v10 + 32);
  v156 = (v10 + 8);
  v162 = a2 + 7;
  v147 = a1;

  v46 = 0;
  v47 = v158;
  v150 = a1 + 56;
  for (i = v23; ; v23 = i)
  {
    v48 = v44;
    v49 = v46;
    v165 = v44;
    if (v44)
    {
LABEL_15:
      v53 = (v48 - 1) & v48;
      v54 = v147;
      v55 = *(v147 + 48) + *(v23 + 72) * (__clz(__rbit64(v48)) | (v49 << 6));
      v56 = v132;
      sub_1000A49C8(v55, v132, type metadata accessor for MarkdownStyle);
      v57 = 0;
      v51 = v49;
    }

    else
    {
      v50 = v141 <= v46 + 1 ? v46 + 1 : v141;
      v51 = v50 - 1;
      v52 = v46;
      while (1)
      {
        v49 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_123;
        }

        if (v49 >= v141)
        {
          break;
        }

        v48 = *(v41 + 8 * v49);
        ++v52;
        if (v48)
        {
          goto LABEL_15;
        }
      }

      v53 = 0;
      v57 = 1;
      v54 = v147;
      v56 = v132;
    }

    v58 = v149;
    v143 = *v145;
    v143(v56, v57, 1, v149);
    v167 = v54;
    v168 = v41;
    v169 = v146;
    v170 = v51;
    v157 = v53;
    v171 = v53;
    v142 = *v144;
    if (v142(v56, 1, v58) == 1)
    {
      sub_100036320(v56, &qword_1001083A8, &unk_1000CDA50);
      goto LABEL_118;
    }

    v59 = v154;
    sub_1000A47A4(v56, v154, type metadata accessor for MarkdownStyle);
    v60 = a2[5];
    sub_1000B5FB0();
    v61 = v59;
    v62 = v134;
    sub_1000A49C8(v61, v134, type metadata accessor for MarkdownStyle);
    v63 = v164;
    v165 = *v166;
    v64 = v165(v62, 6, v164);
    if (v64 <= 2)
    {
      if (!v64)
      {
        v66 = v136;
        (*v139)(v136, v134, v63);
        sub_1000B5FC0(6uLL);
        sub_1000A2F08(&unk_100107790, &type metadata accessor for URL);
        sub_1000B55A0();
        v67 = v66;
        v47 = v158;
        (*v156)(v67, v63);
        goto LABEL_30;
      }

      v65 = v64 != 1;
    }

    else if (v64 > 4)
    {
      v65 = v64 == 5 ? 4 : 5;
    }

    else
    {
      v65 = v64 == 3 ? 2 : 3;
    }

    sub_1000B5FC0(v65);
LABEL_30:
    v68 = sub_1000B5FE0();
    v69 = -1 << *(a2 + 32);
    v44 = v68 & ~v69;
    v70 = v44 >> 6;
    v23 = 1 << v44;
    if (((1 << v44) & v162[v44 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1000A4A30(v154, type metadata accessor for MarkdownStyle);
    v46 = v51;
    v44 = v157;
  }

  v152 = ~v69;
  v163 = *(i + 72);
  while (1)
  {
    v151 = v70;
    v71 = v160;
    sub_1000A49C8(a2[6] + v163 * v44, v160, type metadata accessor for MarkdownStyle);
    v72 = *(v161 + 48);
    v73 = v71;
    v74 = v153;
    sub_1000A49C8(v73, v153, type metadata accessor for MarkdownStyle);
    sub_1000A49C8(v154, v74 + v72, type metadata accessor for MarkdownStyle);
    v75 = v165(v74, 6, v164);
    if (v75 > 2)
    {
      if (v75 > 4)
      {
        if (v75 == 5)
        {
          sub_1000A4A30(v160, type metadata accessor for MarkdownStyle);
          if (v165(v74 + v72, 6, v164) == 5)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_1000A4A30(v160, type metadata accessor for MarkdownStyle);
          if (v165(v74 + v72, 6, v164) == 6)
          {
            goto LABEL_57;
          }
        }
      }

      else if (v75 == 3)
      {
        sub_1000A4A30(v160, type metadata accessor for MarkdownStyle);
        if (v165(v74 + v72, 6, v164) == 3)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_1000A4A30(v160, type metadata accessor for MarkdownStyle);
        if (v165(v74 + v72, 6, v164) == 4)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_52;
    }

    if (v75)
    {
      break;
    }

    v77 = v135;
    sub_1000A49C8(v74, v135, type metadata accessor for MarkdownStyle);
    v78 = v164;
    if (v165(v74 + v72, 6, v164))
    {
      sub_1000A4A30(v160, type metadata accessor for MarkdownStyle);
      (*v156)(v77, v78);
      v41 = v150;
LABEL_52:
      sub_100036320(v74, &qword_1001080A0, &qword_1000CCEC0);
      goto LABEL_53;
    }

    v79 = v74 + v72;
    v80 = v130;
    (*v139)(v130, v79, v78);
    v131 = sub_1000B4D40();
    v81 = v80;
    v82 = *v156;
    (*v156)(v81, v78);
    sub_1000A4A30(v160, type metadata accessor for MarkdownStyle);
    v82(v77, v78);
    v74 = v153;
    v41 = v150;
    if (v131)
    {
      goto LABEL_57;
    }

    sub_1000A4A30(v153, type metadata accessor for MarkdownStyle);
LABEL_53:
    v44 = (v44 + 1) & v152;
    v70 = v44 >> 6;
    v23 = 1 << v44;
    if ((v162[v44 >> 6] & (1 << v44)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v75 == 1)
  {
    sub_1000A4A30(v160, type metadata accessor for MarkdownStyle);
    v76 = v165(v74 + v72, 6, v164) == 1;
  }

  else
  {
    sub_1000A4A30(v160, type metadata accessor for MarkdownStyle);
    v76 = v165(v74 + v72, 6, v164) == 2;
  }

  if (!v76)
  {
    goto LABEL_52;
  }

LABEL_57:
  sub_1000A4A30(v74, type metadata accessor for MarkdownStyle);
  v83 = sub_1000A4A30(v154, type metadata accessor for MarkdownStyle);
  v84 = *(a2 + 32);
  v134 = ((1 << v84) + 63) >> 6;
  v45 = 8 * v134;
  v85 = v140;
  if ((v84 & 0x3Fu) > 0xD)
  {
    goto LABEL_124;
  }

  while (2)
  {
    v135 = &v128;
    __chkstk_darwin(v83);
    v87 = &v128 - ((v86 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v87, v162, v86);
    v88 = *&v87[8 * v151] & ~v23;
    v153 = v87;
    *&v87[8 * v151] = v88;
    v89 = a2[2] - 1;
    v23 = v147;
    v44 = v164;
    v90 = v141;
    v91 = v157;
    v137 = v7;
LABEL_59:
    v152 = v89;
    while (2)
    {
      if (v91)
      {
        v92 = v51;
LABEL_71:
        v95 = __clz(__rbit64(v91));
        v96 = (v91 - 1) & v91;
        sub_1000A49C8(*(v23 + 48) + (v95 | (v92 << 6)) * v163, v85, type metadata accessor for MarkdownStyle);
        v97 = 0;
LABEL_72:
        v98 = v149;
        v143(v85, v97, 1, v149);
        v167 = v23;
        v168 = v41;
        v169 = v146;
        v170 = v51;
        v171 = v96;
        if (v142(v85, 1, v98) == 1)
        {
          sub_100036320(v85, &qword_1001083A8, &unk_1000CDA50);
          a2 = sub_1000A0E0C(v153, v134, v152, a2);
          goto LABEL_118;
        }

        sub_1000A47A4(v85, v47, type metadata accessor for MarkdownStyle);
        v99 = a2[5];
        sub_1000B5FB0();
        v100 = v47;
        v101 = v148;
        sub_1000A49C8(v100, v148, type metadata accessor for MarkdownStyle);
        v102 = v165(v101, 6, v44);
        v157 = v96;
        if (v102 <= 2)
        {
          v103 = v159;
          if (v102)
          {
            sub_1000B5FC0(v102 != 1);
          }

          else
          {
            v105 = v136;
            (*v139)(v136, v148, v44);
            sub_1000B5FC0(6uLL);
            sub_1000A2F08(&unk_100107790, &type metadata accessor for URL);
            sub_1000B55A0();
            v103 = v159;
            (*v156)(v105, v44);
          }

          v47 = v158;
        }

        else
        {
          v103 = v159;
          if (v102 > 4)
          {
            v47 = v158;
            if (v102 == 5)
            {
              v104 = 4;
            }

            else
            {
              v104 = 5;
            }
          }

          else
          {
            v47 = v158;
            if (v102 == 3)
            {
              v104 = 2;
            }

            else
            {
              v104 = 3;
            }
          }

          sub_1000B5FC0(v104);
        }

        v106 = sub_1000B5FE0();
        v107 = -1 << *(a2 + 32);
        v108 = v106 & ~v107;
        v109 = v108 >> 6;
        v110 = 1 << v108;
        if (((1 << v108) & v162[v108 >> 6]) == 0)
        {
LABEL_60:
          sub_1000A4A30(v47, type metadata accessor for MarkdownStyle);
          v23 = v147;
          v44 = v164;
          v41 = v150;
          v90 = v141;
          v91 = v157;
          v85 = v140;
          continue;
        }

        v160 = ~v107;
LABEL_89:
        v111 = a2;
        sub_1000A49C8(a2[6] + v108 * v163, v103, type metadata accessor for MarkdownStyle);
        v112 = *(v161 + 48);
        sub_1000A49C8(v103, v7, type metadata accessor for MarkdownStyle);
        sub_1000A49C8(v47, &v7[v112], type metadata accessor for MarkdownStyle);
        v113 = v164;
        v114 = v165(v7, 6, v164);
        if (v114 <= 2)
        {
          if (v114)
          {
            if (v114 == 1)
            {
              sub_1000A4A30(v103, type metadata accessor for MarkdownStyle);
              if (v165(&v7[v112], 6, v113) == 1)
              {
                goto LABEL_113;
              }
            }

            else
            {
              sub_1000A4A30(v103, type metadata accessor for MarkdownStyle);
              if (v165(&v7[v112], 6, v113) == 2)
              {
                goto LABEL_113;
              }
            }

            goto LABEL_108;
          }

          v115 = v155;
          sub_1000A49C8(v7, v155, type metadata accessor for MarkdownStyle);
          if (v165(&v7[v112], 6, v113))
          {
            v116 = v159;
            sub_1000A4A30(v159, type metadata accessor for MarkdownStyle);
            v117 = v115;
            v103 = v116;
            (*v156)(v117, v113);
            v47 = v158;
            goto LABEL_108;
          }

          v118 = v138;
          (*v139)(v138, &v7[v112], v113);
          LODWORD(v154) = sub_1000B4D40();
          v119 = *v156;
          (*v156)(v118, v113);
          v120 = v159;
          sub_1000A4A30(v159, type metadata accessor for MarkdownStyle);
          v121 = v115;
          v103 = v120;
          v119(v121, v113);
          v7 = v137;
          v47 = v158;
          if (v154)
          {
LABEL_113:
            sub_1000A4A30(v7, type metadata accessor for MarkdownStyle);
            sub_1000A4A30(v47, type metadata accessor for MarkdownStyle);
            v122 = v153[v109];
            v153[v109] = v122 & ~v110;
            v76 = (v122 & v110) == 0;
            a2 = v111;
            v23 = v147;
            v44 = v164;
            v41 = v150;
            v90 = v141;
            v91 = v157;
            v85 = v140;
            if (!v76)
            {
              v89 = v152 - 1;
              if (__OFSUB__(v152, 1))
              {
                __break(1u);
              }

              if (v152 == 1)
              {

                a2 = &_swiftEmptySetSingleton;
                goto LABEL_118;
              }

              goto LABEL_59;
            }

            continue;
          }

          sub_1000A4A30(v137, type metadata accessor for MarkdownStyle);
        }

        else
        {
          if (v114 > 4)
          {
            if (v114 == 5)
            {
              sub_1000A4A30(v103, type metadata accessor for MarkdownStyle);
              if (v165(&v7[v112], 6, v113) == 5)
              {
                goto LABEL_113;
              }
            }

            else
            {
              sub_1000A4A30(v103, type metadata accessor for MarkdownStyle);
              if (v165(&v7[v112], 6, v113) == 6)
              {
                goto LABEL_113;
              }
            }
          }

          else if (v114 == 3)
          {
            sub_1000A4A30(v103, type metadata accessor for MarkdownStyle);
            if (v165(&v7[v112], 6, v113) == 3)
            {
              goto LABEL_113;
            }
          }

          else
          {
            sub_1000A4A30(v103, type metadata accessor for MarkdownStyle);
            if (v165(&v7[v112], 6, v113) == 4)
            {
              goto LABEL_113;
            }
          }

LABEL_108:
          sub_100036320(v7, &qword_1001080A0, &qword_1000CCEC0);
        }

        a2 = v111;
        v108 = (v108 + 1) & v160;
        v109 = v108 >> 6;
        v110 = 1 << v108;
        if ((v162[v108 >> 6] & (1 << v108)) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_89;
      }

      break;
    }

    if (v90 <= v51 + 1)
    {
      v93 = v51 + 1;
    }

    else
    {
      v93 = v90;
    }

    v94 = v93 - 1;
    while (1)
    {
      v92 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v92 >= v90)
      {
        v96 = 0;
        v97 = 1;
        v51 = v94;
        goto LABEL_72;
      }

      v91 = *(v41 + 8 * v92);
      ++v51;
      if (v91)
      {
        v51 = v92;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    v124 = v45;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v85 = v140;
      continue;
    }

    break;
  }

  v125 = swift_slowAlloc();
  memcpy(v125, v162, v124);
  v126 = v129;
  v127 = sub_1000A0368(v125, v134, a2, v44, &v167);

  if (v126)
  {

    __break(1u);
  }

  else
  {

    a2 = v127;
LABEL_118:
    sub_100035A5C();
    return a2;
  }

  return result;
}

uint64_t sub_10009FCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000B4DB0();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  v8 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v10 = &v44 - v9;
  v11 = type metadata accessor for MarkdownStyle(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v53 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  v18 = v2;
  v19 = *v2;
  v20 = *(*v2 + 40);
  sub_1000B5FB0();
  v57 = a1;
  sub_1000997C4();
  v21 = sub_1000B5FE0();
  v22 = v19 + 56;
  v23 = -1 << *(v19 + 32);
  v24 = v21 & ~v23;
  if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v37 = 1;
    return (*(v12 + 56))(a2, v37, 1, v11);
  }

  v47 = v11;
  v44 = v18;
  v48 = a2;
  v54 = ~v23;
  v46 = v12;
  v55 = *(v12 + 72);
  v25 = v50;
  v26 = (v50 + 48);
  v50 += 32;
  v51 = (v25 + 8);
  v52 = v19;
  while (1)
  {
    v27 = v55 * v24;
    sub_1000A49C8(*(v19 + 48) + v55 * v24, v17, type metadata accessor for MarkdownStyle);
    v28 = *(v56 + 48);
    sub_1000A49C8(v17, v10, type metadata accessor for MarkdownStyle);
    sub_1000A49C8(v57, &v10[v28], type metadata accessor for MarkdownStyle);
    v29 = *v26;
    v30 = (*v26)(v10, 6, v5);
    if (v30 > 2)
    {
      if (v30 > 4)
      {
        if (v30 == 5)
        {
          sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
          if (v29(&v10[v28], 6, v5) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
          if (v29(&v10[v28], 6, v5) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v30 == 3)
      {
        sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
        if (v29(&v10[v28], 6, v5) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
        if (v29(&v10[v28], 6, v5) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v31 = v22;
    v32 = v53;
    if (v30)
    {
      break;
    }

    sub_1000A49C8(v10, v53, type metadata accessor for MarkdownStyle);
    if (v29(&v10[v28], 6, v5))
    {
      sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
      (*v51)(v32, v5);
      v22 = v31;
      v19 = v52;
LABEL_23:
      sub_100036320(v10, &qword_1001080A0, &qword_1000CCEC0);
      goto LABEL_24;
    }

    v34 = v49;
    (*v50)(v49, &v10[v28], v5);
    v45 = sub_1000B4D40();
    v35 = v34;
    v36 = *v51;
    (*v51)(v35, v5);
    sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
    v36(v32, v5);
    v22 = v31;
    v19 = v52;
    if (v45)
    {
      goto LABEL_29;
    }

    sub_1000A4A30(v10, type metadata accessor for MarkdownStyle);
LABEL_24:
    v24 = (v24 + 1) & v54;
    if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v37 = 1;
      a2 = v48;
      goto LABEL_32;
    }
  }

  if (v30 == 1)
  {
    sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
    v33 = v29(&v10[v28], 6, v5) == 1;
  }

  else
  {
    sub_1000A4A30(v17, type metadata accessor for MarkdownStyle);
    v33 = v29(&v10[v28], 6, v5) == 2;
  }

  v22 = v31;
  v19 = v52;
  if (!v33)
  {
    goto LABEL_23;
  }

LABEL_29:
  sub_1000A4A30(v10, type metadata accessor for MarkdownStyle);
  v38 = v44;
  v39 = *v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v38;
  v58 = *v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100086C44();
    v41 = v58;
  }

  v42 = *(v41 + 48) + v27;
  a2 = v48;
  sub_1000A47A4(v42, v48, type metadata accessor for MarkdownStyle);
  sub_1000A12CC(v24);
  v37 = 0;
  *v38 = v58;
LABEL_32:
  v12 = v46;
  v11 = v47;
  return (*(v12 + 56))(a2, v37, 1, v11);
}

void *sub_1000A0368(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v72[0] = a2;
  v88 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  v9 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v11 = v72 - v10;
  v92 = sub_1000B4DB0();
  v12 = *(v92 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v92);
  v76 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = v72 - v16;
  v17 = sub_100030480(&qword_1001083A8, &unk_1000CDA50);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v79 = v72 - v19;
  v82 = type metadata accessor for MarkdownStyle(0);
  v20 = *(*(v82 - 8) + 64);
  v21 = __chkstk_darwin(v82);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v72 - v25;
  v27 = __chkstk_darwin(v24);
  v84 = v72 - v28;
  result = __chkstk_darwin(v27);
  v93 = v72 - v30;
  v31 = *(a3 + 16);
  v32 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v33 = *(a1 + v32) & ((-1 << a4) - 1);
  v75 = a1;
  *(a1 + v32) = v33;
  v34 = v31 - 1;
  v81 = (v35 + 56);
  v85 = v35;
  v80 = (v35 + 48);
  v95 = (v12 + 48);
  v77 = (v12 + 32);
  v86 = (v12 + 8);
  v94 = a3;
  v91 = a3 + 56;
  v78 = a5;
  v87 = v23;
LABEL_2:
  v73 = v34;
LABEL_4:
  while (2)
  {
    v37 = *a5;
    v36 = a5[1];
    v39 = a5[2];
    v38 = a5[3];
    v40 = a5[4];
    v90 = v39;
    if (v40)
    {
      v41 = v38;
LABEL_13:
      v45 = (v40 - 1) & v40;
      v46 = v79;
      sub_1000A49C8(*(v37 + 48) + *(v85 + 72) * (__clz(__rbit64(v40)) | (v41 << 6)), v79, type metadata accessor for MarkdownStyle);
      v47 = 0;
      v44 = v41;
LABEL_14:
      v48 = v82;
      (*v81)(v46, v47, 1, v82);
      *a5 = v37;
      a5[1] = v36;
      a5[2] = v90;
      a5[3] = v44;
      a5[4] = v45;
      if ((*v80)(v46, 1, v48) == 1)
      {
        sub_100036320(v46, &qword_1001083A8, &unk_1000CDA50);
        v71 = v94;

        return sub_1000A0E0C(v75, v72[0], v73, v71);
      }

      v49 = v93;
      sub_1000A47A4(v46, v93, type metadata accessor for MarkdownStyle);
      v50 = *(v94 + 40);
      sub_1000B5FB0();
      v51 = v49;
      v52 = v84;
      sub_1000A49C8(v51, v84, type metadata accessor for MarkdownStyle);
      v53 = *v95;
      v54 = v92;
      v55 = (*v95)(v52, 6, v92);
      if (v55 <= 2)
      {
        v56 = v87;
        if (!v55)
        {
          v58 = v74;
          (*v77)(v74, v84, v54);
          sub_1000B5FC0(6uLL);
          sub_1000A2F08(&unk_100107790, &type metadata accessor for URL);
          sub_1000B55A0();
          (*v86)(v58, v54);
LABEL_28:
          v59 = sub_1000B5FE0();
          v60 = -1 << *(v94 + 32);
          v61 = v59 & ~v60;
          v62 = v61 >> 6;
          v63 = 1 << v61;
          if (((1 << v61) & *(v91 + 8 * (v61 >> 6))) == 0)
          {
LABEL_3:
            result = sub_1000A4A30(v93, type metadata accessor for MarkdownStyle);
            a5 = v78;
            continue;
          }

          v89 = ~v60;
          v90 = *(v85 + 72);
          while (1)
          {
            sub_1000A49C8(*(v94 + 48) + v90 * v61, v26, type metadata accessor for MarkdownStyle);
            v64 = *(v88 + 48);
            sub_1000A49C8(v26, v11, type metadata accessor for MarkdownStyle);
            sub_1000A49C8(v93, &v11[v64], type metadata accessor for MarkdownStyle);
            v65 = v92;
            v66 = v53(v11, 6, v92);
            if (v66 > 2)
            {
              if (v66 > 4)
              {
                if (v66 == 5)
                {
                  sub_1000A4A30(v26, type metadata accessor for MarkdownStyle);
                  if (v53(&v11[v64], 6, v65) == 5)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  sub_1000A4A30(v26, type metadata accessor for MarkdownStyle);
                  if (v53(&v11[v64], 6, v65) == 6)
                  {
                    goto LABEL_54;
                  }
                }
              }

              else if (v66 == 3)
              {
                sub_1000A4A30(v26, type metadata accessor for MarkdownStyle);
                if (v53(&v11[v64], 6, v65) == 3)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                sub_1000A4A30(v26, type metadata accessor for MarkdownStyle);
                if (v53(&v11[v64], 6, v65) == 4)
                {
                  goto LABEL_54;
                }
              }

              goto LABEL_49;
            }

            if (v66)
            {
              break;
            }

            sub_1000A49C8(v11, v56, type metadata accessor for MarkdownStyle);
            if (v53(&v11[v64], 6, v65))
            {
              sub_1000A4A30(v26, type metadata accessor for MarkdownStyle);
              (*v86)(v56, v65);
LABEL_49:
              sub_100036320(v11, &qword_1001080A0, &qword_1000CCEC0);
              goto LABEL_50;
            }

            v67 = v76;
            (*v77)(v76, &v11[v64], v65);
            v83 = sub_1000B4D40();
            v68 = *v86;
            v69 = v67;
            v56 = v87;
            (*v86)(v69, v65);
            sub_1000A4A30(v26, type metadata accessor for MarkdownStyle);
            v68(v56, v92);
            if (v83)
            {
LABEL_54:
              sub_1000A4A30(v11, type metadata accessor for MarkdownStyle);
              result = sub_1000A4A30(v93, type metadata accessor for MarkdownStyle);
              v70 = v75[v62];
              v75[v62] = v70 & ~v63;
              a5 = v78;
              if ((v70 & v63) != 0)
              {
                v34 = v73 - 1;
                if (__OFSUB__(v73, 1))
                {
                  goto LABEL_60;
                }

                if (v73 == 1)
                {
                  return &_swiftEmptySetSingleton;
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }

            sub_1000A4A30(v11, type metadata accessor for MarkdownStyle);
LABEL_50:
            v61 = (v61 + 1) & v89;
            v62 = v61 >> 6;
            v63 = 1 << v61;
            if ((*(v91 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v66 == 1)
          {
            sub_1000A4A30(v26, type metadata accessor for MarkdownStyle);
            if (v53(&v11[v64], 6, v65) == 1)
            {
              goto LABEL_54;
            }
          }

          else
          {
            sub_1000A4A30(v26, type metadata accessor for MarkdownStyle);
            if (v53(&v11[v64], 6, v65) == 2)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_49;
        }

        v57 = v55 != 1;
      }

      else
      {
        v56 = v87;
        if (v55 > 4)
        {
          if (v55 == 5)
          {
            v57 = 4;
          }

          else
          {
            v57 = 5;
          }
        }

        else if (v55 == 3)
        {
          v57 = 2;
        }

        else
        {
          v57 = 3;
        }
      }

      sub_1000B5FC0(v57);
      goto LABEL_28;
    }

    break;
  }

  v42 = (v39 + 64) >> 6;
  if (v42 <= v38 + 1)
  {
    v43 = v38 + 1;
  }

  else
  {
    v43 = (v39 + 64) >> 6;
  }

  v44 = v43 - 1;
  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v41 >= v42)
    {
      v45 = 0;
      v47 = 1;
      v46 = v79;
      goto LABEL_14;
    }

    v40 = *(v36 + 8 * v41);
    ++v38;
    if (v40)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1000A0E0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = sub_1000B4DB0();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MarkdownStyle(0);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100030480(&qword_1001080A8, &qword_1000CCEC8);
  result = sub_1000B5BF0();
  v18 = result;
  v45 = v11;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = a4;
  v47 = (v8 + 48);
  v43 = (v8 + 8);
  v44 = (v8 + 32);
  v22 = result + 56;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_16:
    v26 = *(a4 + 48);
    v49 = *(v48 + 72);
    sub_1000A49C8(v26 + v49 * (v23 | (v21 << 6)), v17, type metadata accessor for MarkdownStyle);
    v27 = *(v18 + 40);
    sub_1000B5FB0();
    v28 = v17;
    v29 = v17;
    v30 = v50;
    sub_1000A49C8(v29, v50, type metadata accessor for MarkdownStyle);
    v31 = (*v47)(v30, 6, v51);
    if (v31 <= 2)
    {
      if (!v31)
      {
        (*v44)(v45, v50, v51);
        sub_1000B5FC0(6uLL);
        sub_1000A2F08(&unk_100107790, &type metadata accessor for URL);
        v33 = v51;
        sub_1000B55A0();
        (*v43)(v45, v33);
        v17 = v28;
        goto LABEL_28;
      }

      v17 = v28;
      v32 = v31 != 1;
    }

    else if (v31 > 4)
    {
      v17 = v28;
      if (v31 == 5)
      {
        v32 = 4;
      }

      else
      {
        v32 = 5;
      }
    }

    else
    {
      v17 = v28;
      if (v31 == 3)
      {
        v32 = 2;
      }

      else
      {
        v32 = 3;
      }
    }

    sub_1000B5FC0(v32);
LABEL_28:
    result = sub_1000B5FE0();
    v34 = -1 << *(v18 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v22 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    *(v22 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    result = sub_1000A47A4(v17, *(v18 + 48) + v37 * v49, type metadata accessor for MarkdownStyle);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_44;
    }

    a4 = v46;
    if (!a3)
    {
LABEL_40:

      return v18;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      goto LABEL_40;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v20 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1000A12CC(unint64_t a1)
{
  v43 = sub_1000B4DB0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MarkdownStyle(0);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v39);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v44 = &v36 - v11;
  v12 = *v1;
  v13 = -1 << *(*v1 + 32);
  v14 = (a1 + 1) & ~v13;
  v41 = *v1 + 56;
  if (((1 << v14) & *(v41 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = v41;
    v17 = sub_1000B5B30();
    if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v18 = (v17 + 1) & v15;
      v19 = *(v6 + 72);
      v40 = (v3 + 48);
      v36 = (v3 + 8);
      v37 = (v3 + 32);
      while (1)
      {
        v20 = v15;
        v21 = v19;
        v22 = v19 * v14;
        v23 = v44;
        sub_1000A49C8(*(v12 + 48) + v19 * v14, v44, type metadata accessor for MarkdownStyle);
        v24 = *(v12 + 40);
        sub_1000B5FB0();
        v25 = v42;
        sub_1000A49C8(v23, v42, type metadata accessor for MarkdownStyle);
        v26 = (*v40)(v25, 6, v43);
        if (v26 <= 2)
        {
          if (v26)
          {
            sub_1000B5FC0(v26 != 1);
          }

          else
          {
            v28 = v38;
            v29 = v43;
            (*v37)(v38, v42, v43);
            sub_1000B5FC0(6uLL);
            sub_1000A2F08(&unk_100107790, &type metadata accessor for URL);
            sub_1000B55A0();
            (*v36)(v28, v29);
          }

          v15 = v20;
        }

        else
        {
          if (v26 > 4)
          {
            v15 = v20;
            v27 = v26 == 5 ? 4 : 5;
          }

          else
          {
            v15 = v20;
            v27 = v26 == 3 ? 2 : 3;
          }

          sub_1000B5FC0(v27);
        }

        v30 = sub_1000B5FE0();
        sub_1000A4A30(v44, type metadata accessor for MarkdownStyle);
        v31 = v30 & v15;
        if (a1 >= v18)
        {
          break;
        }

        v19 = v21;
        if (v31 < v18)
        {
          goto LABEL_24;
        }

LABEL_25:
        v32 = v19 * a1;
        if ((v19 * a1) < v22 || *(v12 + 48) + v19 * a1 >= *(v12 + 48) + v22 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v14;
          if (v32 == v22)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v14;
LABEL_6:
        v14 = (v14 + 1) & v15;
        if (((*(v41 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v19 = v21;
      if (v31 < v18)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (a1 < v31)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_29:

    *(v41 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v41 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v12 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v35;
    ++*(v12 + 36);
  }

  return result;
}