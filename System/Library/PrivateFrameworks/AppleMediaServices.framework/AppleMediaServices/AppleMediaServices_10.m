unint64_t sub_10010BA80(char a1)
{
  result = 0x636E795361746164;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x69746E6564657263;
      break;
    case 4:
      result = 0x4274736575716572;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x636E79537473616CLL;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x7465736572;
      break;
    case 13:
      result = 0x4465726F4D736168;
      break;
    case 14:
      result = 0x73616D65686373;
      break;
    case 15:
      result = 0x546465726564726FLL;
      break;
    case 16:
      result = 0x467363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10010BC9C()
{
  sub_100004168();
  v5 = v4;
  v7 = v6;
  v123 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v8 = sub_10000307C(v123);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  sub_1001189B8();
  v11 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v11);
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  v16 = &v116[-v15];
  v122 = sub_100099DF4(&qword_1002DD0A0, &qword_100236CB8);
  sub_10000307C(v122);
  v18 = *(v17 + 64);
  sub_100003774();
  __chkstk_darwin(v19);
  v21 = &v116[-v20];
  v22 = type metadata accessor for Date();
  v23 = sub_100003724(v22);
  v127 = v24;
  v128 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_1000030E4();
  v126 = v27;
  v28 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v29 = sub_1000030B8(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_10000308C();
  v124 = v32 - v33;
  sub_100005238();
  __chkstk_darwin(v34);
  sub_10011845C();
  __chkstk_darwin(v35);
  sub_10000A850();
  v36 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v37 = sub_10000307C(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_10000308C();
  v125 = v40 - v41;
  sub_100005238();
  __chkstk_darwin(v42);
  sub_1000035D4();
  __chkstk_darwin(v43);
  sub_10011853C();
  v44 = *v7 == *v5 && v7[1] == v5[1];
  if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_97;
  }

  v45 = v7[3];
  v46 = v5[3];
  if (!v45)
  {
    if (v46)
    {
      goto LABEL_97;
    }

LABEL_15:
    v48 = v7[4] == v5[4] && v7[5] == v5[5];
    if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_97;
    }

    v49 = v7[7];
    v50 = v5[7];
    if (v49)
    {
      if (!v50)
      {
        goto LABEL_97;
      }

      v51 = v7[6] == v5[6] && v49 == v50;
      if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (v50)
    {
      goto LABEL_97;
    }

    v119 = v16;
    v120 = v21;
    v118 = v0;
    v121 = type metadata accessor for TSDataSyncDatasetState(0);
    v52 = v121[8];
    v53 = *(v36 + 48);
    sub_10003D1E4();
    v54 = v53;
    sub_10003D1E4();
    v55 = v128;
    sub_10000B3A0(v3, 1, v128);
    if (v44)
    {
      sub_1001183F8(v3 + v53);
      if (v44)
      {
        sub_100004E24(v3, &qword_1002DA970, &qword_1002318B0);
        goto LABEL_40;
      }
    }

    else
    {
      sub_10003D1E4();
      sub_1001183F8(v3 + v53);
      if (!v56)
      {
        v61 = v127;
        (*(v127 + 32))(v126, v3 + v54, v55);
        sub_100004AF4();
        sub_100111ED0(v62);
        v117 = dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = *(v61 + 8);
        v63(v126, v55);
        v63(v2, v55);
        sub_100004E24(v3, &qword_1002DA970, &qword_1002318B0);
        if ((v117 & 1) == 0)
        {
          goto LABEL_97;
        }

LABEL_40:
        v64 = v121;
        v65 = v121[9];
        if ((static Date.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_97;
        }

        v66 = v64[10];
        v67 = *(v36 + 48);
        sub_10003D1E4();
        sub_10003D1E4();
        v68 = v128;
        sub_10000B3A0(v1, 1, v128);
        if (v44)
        {
          sub_1001183F8(v1 + v67);
          if (v44)
          {
            sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
            goto LABEL_51;
          }
        }

        else
        {
          sub_100007B1C();
          sub_10003D1E4();
          sub_1001183F8(v1 + v67);
          if (!v69)
          {
            v73 = v126;
            v72 = v127;
            sub_100118914();
            v74(v73, v1 + v67, v68);
            sub_100004AF4();
            sub_100111ED0(v75);
            v76 = dispatch thunk of static Equatable.== infix(_:_:)();
            v77 = *(v72 + 8);
            v78 = v73;
            v64 = v121;
            v77(v78, v68);
            v79 = sub_100118870();
            (v77)(v79);
            sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
            if ((v76 & 1) == 0)
            {
              goto LABEL_97;
            }

LABEL_51:
            if (*(v7 + v64[11]) != *(v5 + v64[11]))
            {
              goto LABEL_97;
            }

            v80 = v64[12];
            v81 = *(v36 + 48);
            v82 = v125;
            sub_10003D1E4();
            sub_10003D1E4();
            sub_1001183F8(v82);
            if (v44)
            {
              sub_1001183F8(v82 + v81);
              if (v44)
              {
                sub_100004E24(v82, &qword_1002DA970, &qword_1002318B0);
LABEL_62:
                v91 = v64[13];
                sub_100118900();
                if (v94)
                {
                  if (!v92)
                  {
                    goto LABEL_97;
                  }

                  sub_10000AD74(v93);
                  v97 = v44 && v95 == v96;
                  if (!v97 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_97;
                  }
                }

                else if (v92)
                {
                  goto LABEL_97;
                }

                v98 = v64[14];
                v99 = *(v7 + v98 + 8);
                v100 = *(v5 + v98 + 8);
                if (v99)
                {
                  if (!v100)
                  {
                    goto LABEL_97;
                  }
                }

                else
                {
                  sub_100118570();
                  if (v101)
                  {
                    goto LABEL_97;
                  }
                }

                v102 = v64[15];
                sub_100118900();
                if (v105)
                {
                  if (!v103)
                  {
                    goto LABEL_97;
                  }

                  sub_10000AD74(v104);
                  v108 = v44 && v106 == v107;
                  if (!v108 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_97;
                  }
                }

                else if (v103)
                {
                  goto LABEL_97;
                }

                if (*(v7 + v64[16]) != *(v5 + v64[16]))
                {
                  goto LABEL_97;
                }

                if (*(v7 + v64[17]) != *(v5 + v64[17]))
                {
                  goto LABEL_97;
                }

                sub_10011209C(*(v7 + v121[18]), *(v5 + v121[18]));
                if ((v109 & 1) == 0 || (sub_100142CA4(*(v7 + v121[19]), *(v5 + v121[19])) & 1) == 0)
                {
                  goto LABEL_97;
                }

                v110 = v121[20];
                v111 = *(v122 + 48);
                v112 = v120;
                sub_10000F3D0();
                sub_10003D1E4();
                sub_10000F3D0();
                sub_10003D1E4();
                sub_10000B3A0(v112, 1, v123);
                if (v44)
                {
                  sub_10000B3A0(&v120[v111], 1, v123);
                  if (v44)
                  {
                    sub_100004E24(v120, &qword_1002DCC10, &unk_100238220);
                    goto LABEL_97;
                  }
                }

                else
                {
                  v113 = v120;
                  sub_10003D1E4();
                  sub_10000B3A0(v113 + v111, 1, v123);
                  if (!v114)
                  {
                    sub_1001184D4();
                    v115 = v120;
                    sub_100116B20();
                    sub_10003CF90();
                    sub_10010E020();
                    sub_100116B78();
                    sub_100116B78();
                    sub_100004E24(v115, &qword_1002DCC10, &unk_100238220);
                    goto LABEL_97;
                  }

                  sub_10000CFFC();
                  sub_100116B78();
                }

                v58 = &qword_1002DD0A0;
                v59 = &qword_100236CB8;
                v60 = v120;
LABEL_38:
                sub_100004E24(v60, v58, v59);
                goto LABEL_97;
              }
            }

            else
            {
              v83 = v124;
              sub_10003D1E4();
              sub_1001183F8(v82 + v81);
              if (!v84)
              {
                v86 = v127;
                (*(v127 + 32))(v126, v82 + v81, v68);
                sub_100004AF4();
                sub_100111ED0(v87);
                sub_100007B1C();
                v88 = dispatch thunk of static Equatable.== infix(_:_:)();
                v89 = *(v86 + 8);
                v90 = sub_100118870();
                v89(v90);
                (v89)(v83, v68);
                sub_100004E24(v82, &qword_1002DA970, &qword_1002318B0);
                if ((v88 & 1) == 0)
                {
                  goto LABEL_97;
                }

                goto LABEL_62;
              }

              sub_100118858();
              v85(v83, v68);
            }

            v58 = &qword_1002DACF0;
            v59 = &qword_100232140;
            v60 = v82;
            goto LABEL_38;
          }

          sub_100118858();
          v70 = sub_100118870();
          v71(v70);
        }

        v58 = &qword_1002DACF0;
        v59 = &qword_100232140;
        v60 = v1;
        goto LABEL_38;
      }

      sub_100118858();
      v57(v2, v55);
    }

    v58 = &qword_1002DACF0;
    v59 = &qword_100232140;
    v60 = v3;
    goto LABEL_38;
  }

  if (v46)
  {
    v47 = v7[2] == v5[2] && v45 == v46;
    if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_97:
  sub_1000027F8();
}

void sub_10010C69C()
{
  sub_100004868();
  v2 = v0;
  v3 = sub_100099DF4(&qword_1002DD0E8, &qword_100236CE8);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100002970();
  sub_100002810();
  sub_100116FA8();
  sub_10000EE2C();
  v7 = *v0;
  v8 = v0[1];
  sub_10000EE1C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = v0[2];
    v10 = v0[3];
    sub_1000052E8(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = v0[4];
    v12 = v0[5];
    sub_1000052E8(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v0[6];
    v14 = v0[7];
    sub_1000052E8(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = type metadata accessor for TSDataSyncDatasetState(0);
    v16 = v15[8];
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v17);
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v15[9];
    sub_100004598();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v15[10];
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v2 + v15[11]);
    sub_1001183CC(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v15[12];
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = (v2 + v15[13]);
    v23 = *v22;
    v24 = v22[1];
    sub_1000052E8(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100118560(v15[14]);
    sub_1000052E8(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = (v2 + v15[15]);
    v26 = *v25;
    v27 = v25[1];
    sub_1000052E8(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = *(v2 + v15[16]);
    sub_1001183CC(12);
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v2 + v15[17]);
    sub_1001183CC(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = *(v2 + v15[18]);
    sub_100099DF4(&qword_1002DBF90, &qword_100233528);
    sub_100116FFC(&qword_1002DBFA8);
    sub_10000F3D0();
    sub_100118418();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v35 = *(v2 + v15[19]);
    sub_100099DF4(&qword_1002DD0D0, &qword_100236CE0);
    sub_100117064(&unk_1002DD0F0);
    sub_10000F3D0();
    sub_100118418();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v30 = v15[20];
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100004070();
    sub_100111ED0(v31);
    sub_10000F3D0();
    sub_100118418();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v32 = sub_100118790();
  v33(v32);
  sub_100005074();
}

void sub_10010CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004868();
  v95 = v11;
  v16 = v15;
  v91 = v17;
  v18 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v18);
  v20 = *(v19 + 64);
  sub_100003774();
  __chkstk_darwin(v21);
  v88[1] = v88 - v22;
  v23 = type metadata accessor for Date();
  v24 = sub_100003724(v23);
  v89 = v25;
  v90 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_10000306C();
  sub_1001189B8();
  v28 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v29 = sub_1000030B8(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_10000308C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  sub_10011845C();
  __chkstk_darwin(v36);
  sub_10011853C();
  v93 = sub_100099DF4(&qword_1002DD0C0, &unk_100236CD0);
  sub_100003724(v93);
  v38 = v37;
  v40 = *(v39 + 64);
  sub_100003774();
  __chkstk_darwin(v41);
  sub_100002970();
  v97 = type metadata accessor for TSDataSyncDatasetState(0);
  v42 = sub_10000307C(v97);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_1000030E4();
  v96 = v45;
  v47 = v16[3];
  v46 = v16[4];
  v94 = v16;
  sub_1000075BC(v16);
  sub_100116FA8();
  v92 = v13;
  sub_1001185EC();
  v48 = v95;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v48)
  {
    v95 = v48;
    v50 = 0;
    sub_1001187DC();
    v51 = 0;
    sub_10000AFE0();
  }

  else
  {
    v46 = v10;
    v12 = v34;
    LODWORD(v16) = v92;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v59 = v96;
    *v96 = v49;
    v59[1] = v60;
    sub_1001184EC(1);
    v59[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59[3] = v61;
    sub_1001184EC(2);
    v59[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v59[5] = v62;
    sub_1001184EC(3);
    v59[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59[7] = v63;
    sub_100004AF4();
    v65 = sub_100111ED0(v64);
    v88[0] = v14;
    v95 = v65;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v66 = v97[8];
    sub_100012D44();
    v67 = v95;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v68 = v97;
    (*(v89 + 32))(v59 + v97[9], v46, v90);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LODWORD(v46) = v67;
    v51 = v68;
    v69 = v68[10];
    sub_100012D44();
    sub_1001184EC(7);
    v50 = v93;
    *(v96 + v68[11]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(a10) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v95 = 0;
    v70 = v97[12];
    sub_100012D44();
    sub_1001184EC(9);
    v71 = v95;
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v95 = v71;
    if (!v71)
    {
      v76 = (v96 + v97[13]);
      *v76 = v72;
      v76[1] = v73;
      sub_100118434(10);
      v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v95 = 0;
      sub_100118584(v77, v78, v96 + v97[14]);
      sub_100118434(11);
      v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v95 = 0;
      v80 = (v96 + v97[15]);
      *v80 = v79;
      v80[1] = v81;
      sub_100118434(12);
      v82 = KeyedDecodingContainer.decode(_:forKey:)();
      v95 = 0;
      *(v96 + v97[16]) = v82 & 1;
      sub_100118434(13);
      v83 = KeyedDecodingContainer.decode(_:forKey:)();
      v95 = 0;
      *(v96 + v97[17]) = v83 & 1;
      sub_100099DF4(&qword_1002DBF90, &qword_100233528);
      v98 = 14;
      sub_100116FFC(&qword_1002DBF98);
      sub_1001185A4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v95 = 0;
      *(v96 + v97[18]) = a10;
      sub_100099DF4(&qword_1002DD0D0, &qword_100236CE0);
      v98 = 15;
      sub_100117064(&unk_1002DD0D8);
      sub_1001185A4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v95 = 0;
      *(v96 + v97[19]) = a10;
      type metadata accessor for TSDataSyncDatasetMetricsFields(0);
      sub_100004070();
      sub_100111ED0(v84);
      sub_1001185A4();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v95 = 0;
      v85 = sub_100118610();
      v86(v85);
      v87 = v97[20];
      sub_100012D44();
      sub_100116BCC();
      sub_100004118(v94);
      sub_100116B78();
      goto LABEL_22;
    }

    v74 = sub_100118610();
    v75(v74);
    LODWORD(v92) = 0;
    LODWORD(v93) = 0;
    sub_10000AAF8();
    sub_100118448();
  }

  v52 = v96;
  sub_100004118(v94);
  if (v50)
  {
    v53 = *(v52 + 1);
  }

  if (!v12)
  {
    if (!v16)
    {
      goto LABEL_16;
    }

LABEL_7:
    v54 = *(v52 + 7);

    v55 = v97;
    if (v51)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (!v38)
    {
      goto LABEL_18;
    }

LABEL_9:
    (*(v89 + 8))(&v52[v55[9]], v90);
    if (v46)
    {
      goto LABEL_19;
    }

LABEL_10:
    if (!v91)
    {
      goto LABEL_20;
    }

LABEL_11:
    sub_100004E24(&v52[v55[12]], &qword_1002DA970, &qword_1002318B0);
    if (v92)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v57 = *(v52 + 5);

  if (v16)
  {
    goto LABEL_7;
  }

LABEL_16:
  v55 = v97;
  if (!v51)
  {
    goto LABEL_8;
  }

LABEL_17:
  sub_100004E24(&v52[v55[8]], &qword_1002DA970, &qword_1002318B0);
  if (v38)
  {
    goto LABEL_9;
  }

LABEL_18:
  if (!v46)
  {
    goto LABEL_10;
  }

LABEL_19:
  sub_100004E24(&v52[v55[10]], &qword_1002DA970, &qword_1002318B0);
  if (v91)
  {
    goto LABEL_11;
  }

LABEL_20:
  if (v92)
  {
LABEL_21:
    v58 = *&v52[v55[13] + 8];

    if ((v93 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (v93)
  {
LABEL_13:
    v56 = *&v52[v55[15] + 8];
  }

LABEL_22:
  sub_100005074();
}

uint64_t sub_10010DA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5674657361746164 && a2 == 0xEE006E6F69737265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001002725F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746544726F727265 && a2 == 0xEC000000736C6961;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001002739F0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x8000000100273A10 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6465766965636572 && a2 == 0xEE00616D65686353;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000100273A30 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x8000000100273A50 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x5274657361746164 && a2 == 0xEF746E756F43776FLL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x8000000100273A70 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x617275446C6C7570 && a2 == 0xEC0000006E6F6974)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_10010DE64(char a1)
{
  result = 0x5674657361746164;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x646F43726F727265;
      break;
    case 3:
      result = 0x6D6F44726F727265;
      break;
    case 4:
      result = 0x746544726F727265;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6465766965636572;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x5274657361746164;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x617275446C6C7570;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10010E020()
{
  sub_100004168();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Date();
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  sub_1000051B0();
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v14 = sub_1000030B8(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000BA50();
  __chkstk_darwin(v17);
  sub_10011853C();
  v18 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v19 = sub_10000307C(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10000308C();
  sub_1000035D4();
  __chkstk_darwin(v22);
  sub_10011852C();
  v23 = *(v6 + 8);
  v24 = *(v4 + 8);
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_62;
    }

    v25 = *v6 == *v4 && v23 == v24;
    if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v24)
  {
    goto LABEL_62;
  }

  v26 = *(v6 + 24);
  v27 = *(v4 + 24);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_62;
    }

    v28 = *(v6 + 16) == *(v4 + 16) && v26 == v27;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v27)
  {
    goto LABEL_62;
  }

  v29 = *(v4 + 40);
  if (*(v6 + 40))
  {
    if (!*(v4 + 40))
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (*(v6 + 32) != *(v4 + 32))
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_62;
    }
  }

  v30 = *(v6 + 56);
  v31 = *(v4 + 56);
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_62;
    }

    v32 = *(v6 + 48) == *(v4 + 48) && v30 == v31;
    if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v31)
  {
    goto LABEL_62;
  }

  v33 = *(v6 + 72);
  v34 = *(v4 + 72);
  if (v33)
  {
    if (!v34)
    {
      goto LABEL_62;
    }

    v35 = *(v6 + 64) == *(v4 + 64) && v33 == v34;
    if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v34)
  {
    goto LABEL_62;
  }

  v36 = *(v6 + 88);
  v37 = *(v4 + 88);
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_62;
    }

    v38 = *(v6 + 80) == *(v4 + 80) && v36 == v37;
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v37)
  {
    goto LABEL_62;
  }

  v76 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v77 = v76[10];
  v78 = *(v18 + 48);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v2);
  if (v25)
  {
    sub_1000071D8(v2 + v78);
    if (v25)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_64;
    }

LABEL_60:
    v43 = v2;
LABEL_61:
    sub_100004E24(v43, &qword_1002DACF0, &qword_100232140);
    goto LABEL_62;
  }

  sub_10003D1E4();
  sub_1000071D8(v2 + v78);
  if (v39)
  {
    v40 = *(v10 + 8);
    v41 = sub_10011887C();
    v42(v41);
    goto LABEL_60;
  }

  sub_100118914();
  v44 = sub_1000035AC();
  v45(v44);
  sub_100004AF4();
  sub_100111ED0(v46);
  v75 = sub_1000AC3D8();
  v79 = *(v10 + 8);
  v79(v0, v7);
  v47 = sub_10011887C();
  (v79)(v47);
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v48 = v76[11];
  v49 = *(v6 + v48);
  v50 = *(v4 + v48);
  if (v49 == 2)
  {
    if (v50 != 2)
    {
      goto LABEL_62;
    }
  }

  else if (v50 == 2 || ((v50 ^ v49) & 1) != 0)
  {
    goto LABEL_62;
  }

  v51 = v76[12];
  v52 = *(v6 + v51);
  v53 = *(v4 + v51);
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      goto LABEL_62;
    }
  }

  else if (v53 == 2 || ((v53 ^ v52) & 1) != 0)
  {
    goto LABEL_62;
  }

  v54 = v76[13];
  v55 = *(v18 + 48);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v1);
  if (!v25)
  {
    sub_10000B80C();
    sub_10003D1E4();
    sub_1000071D8(v1 + v55);
    if (!v56)
    {
      sub_100118914();
      v60 = sub_1000035AC();
      v61(v60);
      sub_100004AF4();
      sub_100111ED0(v62);
      sub_100005CF0();
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v10 + 8);
      v64(v0, v7);
      v65 = sub_1000B31F0();
      (v64)(v65);
      sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
      if ((v63 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_84;
    }

    v57 = *(v10 + 8);
    v58 = sub_1000B31F0();
    v59(v58);
    goto LABEL_82;
  }

  sub_1000071D8(v1 + v55);
  if (!v25)
  {
LABEL_82:
    v43 = v1;
    goto LABEL_61;
  }

  sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
LABEL_84:
  sub_10003CF48(v76[14]);
  if (v68)
  {
    if (!v66)
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_100118570();
    if (v69)
    {
      goto LABEL_62;
    }
  }

  sub_10003CF48(*(v67 + 60));
  if (v72)
  {
    if (!v70)
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_100118570();
    if (v73)
    {
      goto LABEL_62;
    }
  }

  sub_10003CF48(*(v71 + 64));
  if ((v74 & 1) == 0)
  {
    sub_10003CF28();
  }

LABEL_62:
  sub_1000027F8();
}

void sub_10010E654()
{
  sub_100004868();
  v2 = v0;
  v3 = sub_100099DF4(&qword_1002DD128, &qword_100236D08);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100002970();
  sub_100002810();
  sub_100117140();
  sub_10000EE2C();
  v7 = *v0;
  v8 = v0[1];
  sub_10000EE1C();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v9 = v0[2];
    v10 = v0[3];
    sub_10000355C();
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = v0[4];
    v12 = *(v0 + 40);
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = v0[6];
    v14 = v0[7];
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v0[8];
    v16 = v0[9];
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v0[10];
    v18 = v0[11];
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    v20 = v19[10];
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v21);
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v2 + v19[11]);
    sub_1001183CC(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v2 + v19[12]);
    sub_100118418();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v19[13];
    sub_100004598();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100118560(v19[14]);
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100118560(v19[15]);
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100118560(v19[16]);
    sub_10000EE1C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v25 = sub_100118790();
  v26(v25);
  sub_100005074();
}

void sub_10010E91C()
{
  sub_100004168();
  sub_100002834();
  v3 = type metadata accessor for Date();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v10 = sub_1000030B8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000BA50();
  __chkstk_darwin(v13);
  sub_10000A850();
  if (v0[1])
  {
    v14 = *v0;
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  if (v0[3])
  {
    v15 = v0[2];
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  if (*(v0 + 40) == 1)
  {
    sub_100008C3C();
  }

  else
  {
    v16 = v0[4];
    sub_100005C20();
    Hasher._combine(_:)(v16);
  }

  if (v0[7])
  {
    v17 = v0[6];
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  if (v0[9])
  {
    v18 = v0[8];
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  if (v0[11])
  {
    v19 = v0[10];
    sub_100005C20();
    sub_1001185D0();
  }

  else
  {
    sub_100008C3C();
  }

  v20 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v21 = v20[10];
  sub_10003D1E4();
  sub_10000B3A0(v2, 1, v3);
  if (v22)
  {
    sub_100008C3C();
  }

  else
  {
    v23 = sub_100013D98(v6);
    v24(v23);
    sub_100005C20();
    sub_100004AF4();
    sub_100111ED0(v25);
    sub_100004218();
    v26 = *(v6 + 8);
    v27 = sub_100007B1C();
    v28(v27);
  }

  v29 = *(v0 + v20[11]);
  if (v29 == 2)
  {
    v30 = 0;
  }

  else
  {
    sub_100005C20();
    v30 = v29 & 1;
  }

  Hasher._combine(_:)(v30);
  v31 = *(v0 + v20[12]);
  if (v31 == 2)
  {
    v32 = 0;
  }

  else
  {
    sub_100005C20();
    v32 = v31 & 1;
  }

  Hasher._combine(_:)(v32);
  v33 = v20[13];
  sub_10003D1E4();
  sub_10000B3A0(v1, 1, v3);
  if (v22)
  {
    sub_100008C3C();
  }

  else
  {
    v34 = *(v6 + 32);
    v35 = sub_10000B80C();
    v36(v35);
    sub_100005C20();
    sub_100004AF4();
    sub_100111ED0(v37);
    sub_100004218();
    v38 = *(v6 + 8);
    v39 = sub_100007B1C();
    v40(v39);
  }

  sub_10000A840(v20[14]);
  if (v22)
  {
    sub_100008C3C();
  }

  else
  {
    v42 = *v41;
    sub_100005C20();
    Hasher._combine(_:)(v42);
  }

  sub_10000A840(v20[15]);
  if (v22)
  {
    sub_100008C3C();
  }

  else
  {
    v44 = *v43;
    sub_100005C20();
    Hasher._combine(_:)(v44);
  }

  sub_10000A840(v20[16]);
  if (v22)
  {
    sub_100008C3C();
  }

  else
  {
    v46 = *v45;
    sub_100005C20();
    if ((v46 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    Hasher._combine(_:)(v47);
  }

  sub_1000027F8();
}

void sub_10010ECAC()
{
  sub_100004868();
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v6 = sub_1000030B8(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000308C();
  __chkstk_darwin(v9);
  sub_10011852C();
  v40 = sub_100099DF4(&qword_1002DD118, &qword_100236D00);
  sub_100003724(v40);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  v15 = sub_10011854C();
  v43 = type metadata accessor for TSDataSyncDatasetMetricsFields(v15);
  v16 = sub_10000307C(v43);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_1000030E4();
  v41 = v4;
  v42 = v19;
  v20 = v4[4];
  sub_10000C4FC(v4, v4[3]);
  sub_100117140();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100118604();
    sub_100004118(v4);
    if (v20)
    {
      v21 = *(v42 + 24);

      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v2)
    {
      goto LABEL_9;
    }

    v22 = *(v42 + 56);
  }

  else
  {
    sub_100014024();
    *v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v42 + 8) = v23;
    sub_10000355C();
    sub_100014024();
    *(v42 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v42 + 24) = v24;
    sub_100014024();
    *(v42 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v42 + 40) = v25 & 1;
    sub_100014024();
    *(v42 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v42 + 56) = v26;
    sub_100014024();
    *(v42 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v42 + 72) = v27;
    sub_100014024();
    *(v42 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v42 + 88) = v28;
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v29);
    sub_100004FBC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v43[10];
    sub_100012D44();
    sub_1001184EC(7);
    sub_100014024();
    *(v42 + v43[11]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100014024();
    *(v42 + v43[12]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004FBC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v43[13];
    sub_100012D44();
    sub_100004FBC();
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100118584(v32, v33, v42 + v43[14]);
    sub_100004FBC();
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100118584(v34, v35, v42 + v43[15]);
    sub_100004FBC();
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v37;
    (*(v11 + 8))(v1, v40);
    v39 = v42 + v43[16];
    *v39 = v36;
    *(v39 + 8) = v38 & 1;
    sub_100116BCC();
    sub_100004118(v41);
    sub_10000CFFC();
    sub_100116B78();
  }

LABEL_9:
  sub_100003550();
  sub_100005074();
}

uint64_t sub_10010F300(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29793 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65447265746661 && a2 == 0xEA00000000007961;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7869666675536469 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_10010F4A0(char a1)
{
  result = 29793;
  switch(a1)
  {
    case 1:
      result = 0x72656767697274;
      break;
    case 2:
      result = 0x6C65447265746661;
      break;
    case 3:
      result = 0x7869666675536469;
      break;
    case 4:
      result = 0x4449746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10010F534()
{
  sub_100002FBC();
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for TSDataSyncTriggerEvent(0);
  if (*(v1 + *(v2 + 20)) != *(v0 + *(v2 + 20)))
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *(v1 + v4 + 8);
  v6 = *(v0 + v4 + 8);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    sub_10003CF28();
    if (v7)
    {
      return 0;
    }
  }

  v8 = *(v3 + 28);
  v9 = *(v0 + v8 + 8);
  if (!*(v1 + v8 + 8))
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  sub_10000AD74((v1 + v8));
  v12 = v12 && v10 == v11;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v13 = *(v3 + 32);
  v14 = *(v1 + v13);
  v15 = *(v1 + v13 + 8);
  v16 = (v0 + v13);
  if (v14 == *v16 && v15 == v16[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10010F634()
{
  v3 = sub_100099DF4(&qword_1002DD110, &qword_100236CF8);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_1000051B0();
  sub_100002810();
  sub_1001170EC();
  sub_10000EE2C();
  type metadata accessor for Date();
  sub_100004AF4();
  sub_100111ED0(v9);
  sub_1001189AC();
  sub_10000F3D0();
  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v10 = type metadata accessor for TSDataSyncTriggerEvent(0);
    v21 = *(v0 + v10[5]);
    sub_100008AD0();
    sub_1000F72DC();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v0 + v10[6]);
    v12 = *v11;
    v13 = *(v11 + 8);
    sub_100118988();
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = (v0 + v10[7]);
    v15 = *v14;
    v16 = v14[1];
    sub_10011889C();
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = (v0 + v10[8]);
    v18 = *v17;
    v19 = v17[1];
    sub_10011897C();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v2, v3);
}

uint64_t sub_10010F824()
{
  sub_100002834();
  type metadata accessor for Date();
  sub_100004AF4();
  sub_100111ED0(v1);
  sub_100008A44();
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for TSDataSyncTriggerEvent(0);
  Hasher._combine(_:)(*(v0 + v2[5]));
  sub_10000A840(v2[6]);
  if (v4)
  {
    sub_100008C3C();
  }

  else
  {
    v5 = *v3;
    sub_100005C20();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  v7 = (v0 + v2[7]);
  if (v7[1])
  {
    v8 = *v7;
    sub_100005C20();
    sub_1001187F4();
    String.hash(into:)();
  }

  else
  {
    sub_100008C3C();
  }

  sub_100118844();

  return String.hash(into:)();
}

void sub_10010F914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_100004868();
  v16 = v15;
  v17 = type metadata accessor for Date();
  v18 = sub_100003724(v17);
  v49 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_1000030E4();
  sub_1001189A0(v22);
  v23 = sub_100099DF4(&qword_1002DD100, &qword_100236CF0);
  v24 = sub_100003724(v23);
  v50 = v25;
  v51 = v24;
  v27 = *(v26 + 64);
  sub_100003774();
  __chkstk_darwin(v28);
  v29 = sub_10011854C();
  v30 = type metadata accessor for TSDataSyncTriggerEvent(v29);
  v31 = sub_10000307C(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_10000306C();
  sub_1001189B8();
  v35 = v16[3];
  v34 = v16[4];
  sub_1000075BC(v16);
  sub_1001170EC();
  v52 = v14;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    sub_100004118(v16);
  }

  else
  {
    sub_100004AF4();
    sub_100111ED0(v36);
    sub_1001189AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = *(v49 + 32);
    v38 = sub_100002CC0();
    v39(v38);
    sub_100008AD0();
    sub_1000F71DC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v12 + v30[5]) = a12;
    sub_100118988();
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100118584(v40, v41, v12 + v30[6]);
    sub_10011889C();
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = (v12 + v30[7]);
    *v43 = v42;
    v43[1] = v44;
    sub_10011897C();
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v46;
    (*(v50 + 8))(v52, v51);
    v48 = (v12 + v30[8]);
    *v48 = v45;
    v48[1] = v47;
    sub_1000038C4();
    sub_100116BCC();
    sub_100004118(v16);
    sub_100006D34();
    sub_100116B78();
  }

  sub_100005074();
}

uint64_t sub_10010FCB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4572656767697274 && a2 == 0xEC000000746E6576;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x537478654E776172 && a2 == 0xED00007441636E79;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10010FDDC(char a1)
{
  if (!a1)
  {
    return 0x4572656767697274;
  }

  if (a1 == 1)
  {
    return 0x537478654E776172;
  }

  return 0x636E79537478656ELL;
}

uint64_t sub_10010FE4C()
{
  sub_100002FBC();
  if ((sub_10010F534() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for TSDataSyncCalculatedEvent(0);
  v1 = *(v0 + 20);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);

  return static Date.== infix(_:_:)();
}

void sub_10010FECC()
{
  sub_100004868();
  v1 = sub_100099DF4(&qword_1002DD2C8, &unk_100237560);
  sub_100003724(v1);
  v3 = *(v2 + 64);
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100002970();
  sub_100002810();
  sub_100118150();
  sub_10000EE2C();
  type metadata accessor for TSDataSyncTriggerEvent(0);
  sub_10000B828();
  sub_100111ED0(v5);
  sub_1001189AC();
  sub_10000F3D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v6 = type metadata accessor for TSDataSyncCalculatedEvent(0);
    v7 = *(v6 + 20);
    sub_10000355C();
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v8);
    sub_10000F028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v6 + 24);
    sub_10000F028();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v10 = sub_100118790();
  v11(v10);
  sub_100005074();
}

uint64_t sub_10011007C()
{
  v1 = v0;
  sub_10010F824();
  v2 = type metadata accessor for TSDataSyncCalculatedEvent(0);
  v3 = *(v2 + 20);
  type metadata accessor for Date();
  sub_100004AF4();
  sub_100111ED0(v4);
  sub_1000028B0();
  dispatch thunk of Hashable.hash(into:)();
  v5 = v1 + *(v2 + 24);
  sub_1000028B0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10011011C()
{
  v1 = v0;
  sub_100005BE8();
  sub_10010F824();
  v2 = type metadata accessor for TSDataSyncCalculatedEvent(0);
  v3 = *(v2 + 20);
  type metadata accessor for Date();
  sub_100004AF4();
  sub_100111ED0(v4);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v1 + *(v2 + 24);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001101D8()
{
  sub_100004868();
  v3 = v2;
  v38[1] = v4;
  v42 = type metadata accessor for Date();
  v5 = sub_100003724(v42);
  v40 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000308C();
  v39 = (v9 - v10);
  sub_100005238();
  __chkstk_darwin(v11);
  v13 = v38 - v12;
  v14 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v15 = sub_10000307C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000030E4();
  sub_1001189A0(v18);
  v44 = sub_100099DF4(&qword_1002DD2B8, &qword_100237558);
  sub_100003724(v44);
  v41 = v19;
  v21 = *(v20 + 64);
  sub_100003774();
  __chkstk_darwin(v22);
  sub_100002970();
  v23 = type metadata accessor for TSDataSyncCalculatedEvent(0);
  v24 = sub_10000307C(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_10000306C();
  v29 = v28 - v27;
  v30 = v3[3];
  v31 = v3[4];
  sub_1000075BC(v3);
  sub_100118150();
  v45 = v1;
  sub_1001185EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v3);
  }

  else
  {
    v38[0] = v23;
    v46 = v29;
    v32 = v41;
    v33 = v42;
    sub_10000B828();
    sub_100111ED0(v34);
    sub_1001189AC();
    sub_100118824();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100007C18();
    sub_100116B20();
    sub_10000355C();
    sub_100004AF4();
    sub_100111ED0(v35);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v46 + *(v38[0] + 20);
    v43 = *(v40 + 32);
    v43(v36, v13, v33);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = v46;
    (*(v32 + 8))(v45, v44);
    v43(v37 + *(v38[0] + 24), v39, v33);
    sub_100116BCC();
    sub_100004118(v3);
    sub_100116B78();
  }

  sub_100003550();
  sub_100005074();
}

uint64_t sub_100110628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100109AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110650(uint64_t a1)
{
  v2 = sub_100116C24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011068C(uint64_t a1)
{
  v2 = sub_100116C24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011074C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010AFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110774(uint64_t a1)
{
  v2 = sub_100116F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001107B0(uint64_t a1)
{
  v2 = sub_100116F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100110804()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_10010B2A4(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

void sub_100110860(void *a1@<X8>)
{
  sub_10010B3A8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_100110890()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10010B15C();
}

uint64_t sub_1001108D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010B540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001108FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10010BA78();
  *a1 = result;
  return result;
}

uint64_t sub_100110924(uint64_t a1)
{
  v2 = sub_100116FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110960(uint64_t a1)
{
  v2 = sub_100116FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100110A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010DA58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110A48(uint64_t a1)
{
  v2 = sub_100117140();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110A84(uint64_t a1)
{
  v2 = sub_100117140();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100110B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010F300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110B6C(uint64_t a1)
{
  v2 = sub_1001170EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110BA8(uint64_t a1)
{
  v2 = sub_1001170EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100110C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010FCB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110C90(uint64_t a1)
{
  v2 = sub_100118150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110CCC(uint64_t a1)
{
  v2 = sub_100118150();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100110D10(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  sub_10010F824();
  v5 = *(a2 + 20);
  type metadata accessor for Date();
  sub_100111ED0(&qword_1002DAC90);
  dispatch thunk of Hashable.hash(into:)();
  v6 = v4 + *(a2 + 24);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100110EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F536469 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F446469 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100111098(char a1)
{
  result = 0x63617073656D616ELL;
  switch(a1)
  {
    case 1:
      result = 0x656372756F536469;
      break;
    case 2:
      result = 0x6E69616D6F446469;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x49746E756F636361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100111138()
{
  sub_100002FBC();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100152BEC(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);

  return static AccountIdentity.== infix(_:_:)();
}

uint64_t sub_100111200()
{
  v3 = sub_100099DF4(&qword_1002DD158, &qword_100236D28);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_1000051B0();
  sub_100002810();
  sub_1001171E8();
  sub_10000EE2C();
  v9 = *v0;
  v10 = v0[1];
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v18 = *(v0 + 16);
    sub_100008AD0();
    sub_1000BA430();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v0[3];
    v12 = v0[4];
    sub_100118988();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v0[5];
    v14 = v0[6];
    sub_10011889C();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
    sub_10011897C();
    type metadata accessor for AccountIdentity();
    sub_100008DA8();
    sub_100111ED0(v16);
    sub_10000F3D0();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v2, v3);
}

uint64_t sub_1001113D4()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(v0 + 16);
  sub_100002700();
  String.hash(into:)();

  v4 = v0[3];
  v5 = v0[4];
  String.hash(into:)();
  v6 = v0[5];
  v7 = v0[6];
  String.hash(into:)();
  v8 = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
  type metadata accessor for AccountIdentity();
  sub_100008DA8();
  sub_100111ED0(v9);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001114BC(void (*a1)(_BYTE *))
{
  sub_100005BE8();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1001114FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_100004868();
  v15 = v14;
  v16 = type metadata accessor for AccountIdentity();
  v17 = sub_100003724(v16);
  v40 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_10000306C();
  sub_1001189B8();
  v21 = sub_100099DF4(&qword_1002DD148, &qword_100236D20);
  sub_100003724(v21);
  v23 = *(v22 + 64);
  sub_100003774();
  __chkstk_darwin(v24);
  sub_100002970();
  v25 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v26 = sub_10000307C(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_10000306C();
  v31 = v30 - v29;
  v32 = v15[3];
  v33 = v15[4];
  sub_1000075BC(v15);
  sub_1001171E8();
  sub_1001185EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    sub_100004118(v15);
  }

  else
  {
    sub_100118824();
    *v31 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v31 + 8) = v34;
    sub_100008AD0();
    sub_1000BA3DC();
    sub_100118824();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v31 + 16) = a12;
    sub_100118988();
    sub_100118824();
    *(v31 + 24) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v31 + 32) = v35;
    sub_10011889C();
    sub_100118824();
    *(v31 + 40) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v31 + 48) = v36;
    sub_10011897C();
    sub_100008DA8();
    sub_100111ED0(v37);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = sub_100008C9C();
    v39(v38);
    (*(v40 + 32))(v31 + *(v25 + 32), v12, v16);
    sub_1001184BC();
    sub_100116BCC();
    sub_100004118(v15);
    sub_100002E78();
    sub_100116B78();
  }

  sub_100003550();
  sub_100005074();
}

uint64_t sub_1001118B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_100111938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_100099DF4(&qword_1002DD140, &qword_100236D18);
  sub_100003724(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  sub_100003774();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  v32 = v23[4];
  sub_10000C4FC(v23, v23[3]);
  sub_100117194();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100007B1C();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v26 + 8))(v31, v24);
  sub_100005074();
}

uint64_t sub_100111A54(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002DD130, &qword_100236D10);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100004880();
  v9 = a1[3];
  v10 = a1[4];
  sub_1000075BC(a1);
  sub_100117194();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = *(v5 + 8);
    v12 = sub_100005CF0();
    v13(v12);
  }

  sub_100004118(a1);
  return sub_10000492C();
}

Swift::Int sub_100111B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_100111BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100110EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100111C04(uint64_t a1)
{
  v2 = sub_1001171E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100111C40(uint64_t a1)
{
  v2 = sub_1001171E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100111CF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100111D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001118B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100111DB4(uint64_t a1)
{
  v2 = sub_100117194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100111DF0(uint64_t a1)
{
  v2 = sub_100117194();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100111E2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100111A54(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100111ED0(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100111FA8()
{
  result = qword_1002DD028;
  if (!qword_1002DD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD028);
  }

  return result;
}

unint64_t sub_100112048()
{
  result = qword_1002DD038;
  if (!qword_1002DD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD038);
  }

  return result;
}

void sub_10011209C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = sub_100005CFC(a1, a2);
    if (v19)
    {
      v4 = 0;
      v6 = v3 + 64;
      v5 = *(v3 + 64);
      v7 = *(v3 + 32);
      sub_100007FC0();
      sub_1001185F8();
      v10 = v9 >> 6;
      while (v8)
      {
        sub_10000C63C();
LABEL_12:
        sub_10011861C(v11, v12);

        v14 = sub_10000B80C();
        sub_10014EB30(v14, v15);
        v17 = v16;

        if ((v17 & 1) == 0)
        {

          return;
        }

        sub_100118954();
        v19 = v19 && v18 == v2;
        if (v19)
        {

          sub_100118948();
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_100118948();
          if ((v20 & 1) == 0)
          {
            return;
          }
        }
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v10)
        {
          return;
        }

        ++v13;
        if (*(v6 + 8 * v4))
        {
          sub_100118424();
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_1001121D0()
{
  sub_100004168();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000BA50();
  __chkstk_darwin(v13);
  sub_1000035D4();
  __chkstk_darwin(v14);
  sub_10000D478();
  v15 = sub_100099DF4(&qword_1002DD2D8, &unk_1002375A0);
  v16 = sub_1000030B8(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000308C();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  sub_10011851C();
  if (v6 != v4 && v6[2] == v4[2])
  {
    v73 = v7;
    v74 = v23;
    v24 = 0;
    v25 = v6;
    sub_1001187E8();
    v26 = *(v6 - 32);
    sub_1000069C0();
    sub_10000D448();
    v71 = v21;
    v72 = v10;
    v68 = v6;
    v69 = v1;
    v70 = v4;
    if (!v27)
    {
      goto LABEL_5;
    }

    while (1)
    {
      sub_10000C63C();
      v75 = v28;
      v30 = v29 | (v24 << 6);
LABEL_9:
      v35 = v6[7];
      v36 = (v6[6] + 16 * v30);
      v38 = *v36;
      v37 = v36[1];
      v39 = *(v10 + 72);
      sub_1000038C4();
      sub_100116BCC();
      v40 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
      sub_1001188E8(v40);
      *v71 = v38;
      v71[1] = v37;
      sub_100007C18();
      v21 = v41;
      sub_100116B20();
      sub_10000B7B0();
      sub_100002728(v42, v43, v44, v10);

      v1 = v69;
      v4 = v70;
LABEL_10:
      sub_100012D44();
      v45 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
      sub_10000B3A0(v74, 1, v45);
      if (v61)
      {
        break;
      }

      v46 = *(v45 + 48);
      v47 = *v74;
      v48 = v74[1];
      sub_100007C18();
      sub_100116B20();
      sub_10014EB30(v47, v48);
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_37;
      }

      v51 = v4[7];
      v10 = v72;
      v52 = *(v72 + 72);
      sub_1000038C4();
      sub_100116BCC();
      if ((static Date.== infix(_:_:)() & 1) == 0 || *(v1 + v73[5]) != *(v0 + v73[5]))
      {
LABEL_36:
        sub_100006D34();
        sub_100116B78();
LABEL_37:
        sub_100116B78();
        break;
      }

      v53 = v73[6];
      v54 = *(v1 + v53 + 8);
      v55 = *(v0 + v53 + 8);
      if (v54)
      {
        if (!v55)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_10003CF28();
        if (v56)
        {
          goto LABEL_36;
        }
      }

      v57 = v73[7];
      v58 = *(v0 + v57 + 8);
      if (*(v1 + v57 + 8))
      {
        if (!v58)
        {
          goto LABEL_36;
        }

        sub_10000AD74((v1 + v57));
        v61 = v61 && v59 == v60;
        if (!v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (v58)
      {
        goto LABEL_36;
      }

      v62 = v73[8];
      v63 = *(v1 + v62);
      v64 = *(v1 + v62 + 8);
      v65 = (v0 + v62);
      v66 = v63 == *v65 && v64 == v65[1];
      if (!v66 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_36;
      }

      sub_100116B78();
      sub_100007B1C();
      sub_100116B78();
      v6 = v68;
      if (!v75)
      {
LABEL_5:
        while (1)
        {
          v31 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v31 >= v2)
          {
            v67 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
            sub_100002728(v21, 1, 1, v67);
            v75 = 0;
            goto LABEL_10;
          }

          ++v24;
          if (v25[v31])
          {
            sub_10000A234();
            v75 = v32;
            v30 = v34 | (v33 << 6);
            v24 = v33;
            goto LABEL_9;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  sub_1001188DC();
  sub_1000027F8();
}

void sub_100112600(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = sub_100005CFC(a1, a2);
    if (v38)
    {
      v4 = 0;
      v6 = v3 + 64;
      v5 = *(v3 + 64);
      v7 = *(v3 + 32);
      sub_100007FC0();
      sub_1001185F8();
      v9 = v8 >> 6;
      if (v10)
      {
        while (1)
        {
          v11 = v2;
          sub_10000C63C();
          v49 = v14;
LABEL_11:
          v18 = v13 | (v4 << 6);
          v19 = *(v12 + 56);
          v20 = (*(v12 + 48) + 16 * v18);
          v22 = *v20;
          v21 = v20[1];
          v23 = sub_1001188C8(v18);
          v56 = v24;
          v57 = v25;
          *v58 = v26;
          *&v58[9] = v23;
          v50 = v24;
          v51 = v25;
          v28 = *&v58[8];
          v27 = v26;
          v29 = *(v23.n128_i64 + 7);
          v30 = v23.n128_u8[15];

          sub_1000BA2CC(&v56, &v53);
          if (!v21)
          {
            return;
          }

          v56 = v50;
          v57 = v51;
          *v58 = __PAIR128__(v28, v27);
          *&v58[16] = v29;
          v58[24] = v30;
          v2 = v11;
          v31 = sub_10014EB30(v22, v21);
          v33 = v32;

          if ((v33 & 1) == 0)
          {
            break;
          }

          v34 = (*(v11 + 56) + (v31 << 6));
          v36 = v34[1];
          v35 = v34[2];
          v37 = *v34;
          *&v55[9] = *(v34 + 41);
          v54 = v36;
          *v55 = v35;
          v53 = v37;
          v38 = v37 == v56 && *(&v37 + 1) == *(&v56 + 1);
          if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v39 = v54 == v57 && *(&v54 + 1) == *(&v57 + 1);
          if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v40 = 0xD000000000000013;
          v41 = 0xD000000000000013;
          v42 = "priority";
          switch(v55[0])
          {
            case 1:
              v41 = 0xD000000000000020;
              v42 = "scheduledDevicePull";
              break;
            case 2:
              v41 = 0xD000000000000020;
              v42 = "ediateDevicePull";
              break;
            case 3:
              v41 = 0xD00000000000001DLL;
              v42 = "eduledDevicePull";
              break;
            case 4:
              v41 = 0xD00000000000001DLL;
              v42 = "appTriggerImmediateDevicePull";
              break;
            default:
              break;
          }

          v43 = v42 | 0x8000000000000000;
          v44 = "priority";
          switch(v58[0])
          {
            case 1:
              v40 = 0xD000000000000020;
              v44 = "scheduledDevicePull";
              break;
            case 2:
              v40 = 0xD000000000000020;
              v44 = "ediateDevicePull";
              break;
            case 3:
              v40 = 0xD00000000000001DLL;
              v44 = "eduledDevicePull";
              break;
            case 4:
              v40 = 0xD00000000000001DLL;
              v44 = "appTriggerImmediateDevicePull";
              break;
            default:
              break;
          }

          if (v41 == v40 && v43 == (v44 | 0x8000000000000000))
          {
            sub_1000BA2CC(&v53, v52);
          }

          else
          {
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1000BA2CC(&v53, v52);

            if ((v46 & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          v47 = *&v55[8] == *&v58[8] && *&v55[16] == *&v58[16];
          if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_50:
            sub_1000BA304(&v56);
            v48 = &v53;
            goto LABEL_51;
          }

          sub_1000BA304(&v53);
          sub_1000BA304(&v56);
          if (v55[24] != v58[24])
          {
            return;
          }

          if (!v49)
          {
            goto LABEL_6;
          }
        }

        v48 = &v56;
LABEL_51:
        sub_1000BA304(v48);
        return;
      }

LABEL_6:
      v15 = v4;
      while (1)
      {
        v4 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v4 >= v9)
        {
          return;
        }

        ++v15;
        if (*(v6 + 8 * v4))
        {
          v11 = v2;
          sub_100118424();
          v49 = v17 & v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void sub_100112990()
{
  sub_100004168();
  if (v2 != v3 && (v4 = v3, v5 = v2, sub_100005CFC(v2, v3), v6))
  {
    v7 = 0;
    v8 = *(v5 + 64);
    v9 = *(v5 + 32);
    sub_100007FC0();
    sub_1000062F0();
    while (v1)
    {
      sub_100118830();
LABEL_12:
      sub_1001187C0(v10);
      v15 = *v14;
      v16 = v14[1];
      v19 = *(v18 + 8 * v17);

      v20 = sub_10014EB30(v15, v16);
      v22 = v21;

      if ((v22 & 1) == 0 || *(*(v4 + 56) + 8 * v20) != v19)
      {
        goto LABEL_14;
      }
    }

    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v0)
      {
        goto LABEL_14;
      }

      ++v11;
      if (*(v5 + 64 + 8 * v7))
      {
        sub_100118424();
        v1 = v13 & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1000027F8();
  }
}

void sub_100112A74()
{
  sub_100004168();
  if (v2 != v3 && (v4 = v3, v5 = v2, sub_100005CFC(v2, v3), v6))
  {
    v7 = 0;
    v8 = *(v5 + 64);
    v9 = *(v5 + 32);
    sub_100007FC0();
    sub_1000062F0();
    while (v1)
    {
      sub_100118830();
LABEL_12:
      sub_1001187C0(v10);
      v15 = *v14;
      v16 = v14[1];
      v19 = *(v18 + v17);

      v20 = sub_10014EB30(v15, v16);
      v22 = v21;

      if ((v22 & 1) == 0 || *(*(v4 + 56) + v20) != v19)
      {
        goto LABEL_14;
      }
    }

    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v0)
      {
        goto LABEL_14;
      }

      ++v11;
      if (*(v5 + 64 + 8 * v7))
      {
        sub_100118424();
        v1 = v13 & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1000027F8();
  }
}

void sub_100112B58()
{
  sub_100004168();
  v3 = v2;
  sub_100002834();
  v4 = type metadata accessor for Date();
  v5 = sub_100003724(v4);
  v60 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000308C();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_10000D478();
  v59 = v13;
  v14 = sub_100099DF4(&qword_1002DD2D0, &unk_100237590);
  v15 = sub_1000030B8(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000308C();
  __chkstk_darwin(v18);
  sub_10011851C();
  v57 = v3;
  if (v0 == v3 || *(v0 + 16) != *(v3 + 16))
  {
LABEL_18:
    sub_1001188DC();
    sub_1000027F8();
  }

  else
  {
    v55 = v19;
    v56 = v20;
    v54 = v11;
    v21 = 0;
    v53 = v0;
    sub_1001187E8();
    v52 = v0;
    v22 = *(v0 - 32);
    sub_1000069C0();
    sub_10000D448();
    while (v23)
    {
      sub_10000C63C();
      v58 = v24;
      v26 = v25 | (v21 << 6);
LABEL_10:
      v31 = (*(v53 + 48) + 16 * v26);
      v32 = *v31;
      v33 = v31[1];
      (*(v60 + 16))(v59, *(v53 + 56) + *(v60 + 72) * v26, v4);
      v34 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
      sub_1001188E8(v34);
      *v56 = v32;
      *(v56 + 1) = v33;
      (*(v60 + 32))(&v56[v35], v59, v4);
      sub_10000B7B0();
      sub_100002728(v36, v37, v38, &qword_1002DBC48);

LABEL_11:
      sub_100012D44();
      v39 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
      sub_1000071D8(v55);
      if (v40)
      {
        goto LABEL_18;
      }

      v42 = *v55;
      v41 = *(v55 + 1);
      (*(v60 + 32))(v54, &v55[*(v39 + 48)], v4);
      v43 = sub_10003CF90();
      v45 = sub_10014EB30(v43, v44);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        (*(v60 + 8))(v54, v4);
        goto LABEL_18;
      }

      (*(v60 + 16))(v59, *(v57 + 56) + *(v60 + 72) * v45, v4);
      sub_100004AF4();
      sub_100111ED0(&qword_1002E27C0);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v60 + 8);
      v50 = sub_100005CF0();
      v49(v50);
      (v49)(v54, v4);
      v23 = v58;
      if ((v48 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v27 >= v1)
      {
        v51 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
        sub_100002728(v56, 1, 1, v51);
        v58 = 0;
        goto LABEL_11;
      }

      ++v21;
      if (*(v52 + 8 * v27))
      {
        sub_10000A234();
        v58 = v28;
        v26 = v30 | (v29 << 6);
        v21 = v29;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_100112F4C()
{
  sub_100004168();
  v4 = v3;
  v5 = sub_100002834();
  v6 = type metadata accessor for TSDataSyncDatasetScheduleInput(v5);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_10000308C();
  sub_100118780();
  __chkstk_darwin(v8);
  sub_100118770();
  v9 = sub_100099DF4(&qword_1002DC230, &qword_100234850);
  v10 = sub_1000030B8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000308C();
  v39 = (v13 - v14);
  sub_100005238();
  __chkstk_darwin(v15);
  sub_10011851C();
  if (v0 == v4 || *(v0 + 16) != *(v4 + 16))
  {
LABEL_19:
    sub_1001188DC();
    sub_1000027F8();
  }

  else
  {
    v38 = v16;
    v17 = 0;
    sub_1001187E8();
    v37 = v0;
    v18 = *(v0 - 32);
    sub_1000069C0();
    sub_1001185F8();
    v21 = v20 >> 6;
    while (v19)
    {
      sub_10000C63C();
      v40 = v22;
      v23 = v39;
LABEL_11:
      sub_100118708();
      sub_1001183B4();
      sub_100116BCC();
      v27 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
      sub_1001188E8(v27);
      *v23 = v4;
      v23[1] = v2;
      sub_100007670();
      sub_100116B20();
      sub_10000B7B0();
      sub_100002728(v28, v29, v30, &qword_1002DC238);

      v4 = v38;
LABEL_12:
      sub_100012D44();
      v31 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
      sub_10000B3A0(v4, 1, v31);
      if (v32)
      {
        goto LABEL_19;
      }

      sub_100118934();
      sub_100007670();
      sub_100116B20();
      sub_10014EB30(v31, v1);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        sub_100116B78();
        goto LABEL_19;
      }

      sub_100118968();
      sub_1001183B4();
      v1 = v23;
      sub_100116BCC();
      sub_1000F1650();
      v4 = v35;
      v2 = type metadata accessor for TSDataSyncDatasetScheduleInput;
      sub_100116B78();
      sub_100002CC0();
      sub_100116B78();
      v19 = v40;
      if ((v4 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v4 = v38;
    v23 = v39;
    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v36 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
        sub_100010438(v36);
        v40 = 0;
        goto LABEL_12;
      }

      ++v17;
      if (*(v37 + 8 * v24))
      {
        sub_10000A234();
        v40 = v25;
        v17 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100113274()
{
  sub_100004168();
  v4 = v3;
  v5 = sub_100002834();
  v6 = type metadata accessor for TSDataSyncDatasetSchedule(v5);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_10000308C();
  sub_100118780();
  __chkstk_darwin(v8);
  sub_100118770();
  v9 = sub_100099DF4(&qword_1002DC210, &qword_100234838);
  v10 = sub_1000030B8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000308C();
  v39 = (v13 - v14);
  sub_100005238();
  __chkstk_darwin(v15);
  sub_10011851C();
  if (v0 == v4 || *(v0 + 16) != *(v4 + 16))
  {
LABEL_19:
    sub_1001188DC();
    sub_1000027F8();
  }

  else
  {
    v38 = v16;
    v17 = 0;
    sub_1001187E8();
    v37 = v0;
    v18 = *(v0 - 32);
    sub_1000069C0();
    sub_1001185F8();
    v21 = v20 >> 6;
    while (v19)
    {
      sub_10000C63C();
      v40 = v22;
      v23 = v39;
LABEL_11:
      sub_100118708();
      sub_10000B3C8();
      sub_100116BCC();
      v27 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
      sub_1001188E8(v27);
      *v23 = v4;
      v23[1] = v2;
      sub_1000031BC();
      sub_100116B20();
      sub_10000B7B0();
      sub_100002728(v28, v29, v30, &qword_1002DC218);

      v4 = v38;
LABEL_12:
      sub_100012D44();
      v31 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
      sub_10000B3A0(v4, 1, v31);
      if (v32)
      {
        goto LABEL_19;
      }

      sub_100118934();
      sub_1000031BC();
      sub_100116B20();
      sub_10014EB30(v31, v1);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        sub_100116B78();
        goto LABEL_19;
      }

      sub_100118968();
      sub_10000B3C8();
      v1 = v23;
      sub_100116BCC();
      sub_1000F3A30();
      v4 = v35;
      v2 = type metadata accessor for TSDataSyncDatasetSchedule;
      sub_100116B78();
      sub_100002CC0();
      sub_100116B78();
      v19 = v40;
      if ((v4 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v4 = v38;
    v23 = v39;
    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v36 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
        sub_100010438(v36);
        v40 = 0;
        goto LABEL_12;
      }

      ++v17;
      if (*(v37 + 8 * v24))
      {
        sub_10000A234();
        v40 = v25;
        v17 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_10011359C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = a2;
    v49 = (&v46 - v14);
    v15 = 0;
    v47 = a1;
    v16 = *(a1 + 64);
    v46 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    while (v19)
    {
      v51 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v15 << 6);
      v22 = v50;
LABEL_13:
      v26 = (*(v47 + 48) + 16 * v21);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v47 + 56) + *(v5 + 72) * v21;
      sub_100116BCC();
      v30 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      v31 = *(v30 + 48);
      *v22 = v27;
      v22[1] = v28;
      sub_100116B20();
      sub_100002728(v22, 0, 1, v30);

      v23 = v49;
LABEL_14:
      sub_100012D44();
      v32 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      if (sub_100004DFC(v23, 1, v32) == 1)
      {
        return;
      }

      v33 = v9;
      v34 = v5;
      v35 = *(v32 + 48);
      v37 = *v23;
      v36 = v23[1];
      sub_100116B20();
      v38 = v48;
      sub_10014EB30(v37, v36);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        sub_100116B78();
        return;
      }

      v41 = *(v38 + 56);
      v5 = v34;
      v42 = *(v34 + 72);
      v9 = v33;
      sub_100116BCC();
      sub_10010BC9C();
      v44 = v43;
      sub_100116B78();
      sub_100116B78();
      v19 = v51;
      if ((v44 & 1) == 0)
      {
        return;
      }
    }

    v23 = v49;
    v22 = v50;
    while (1)
    {
      v24 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v45 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
        sub_100002728(v22, 1, 1, v45);
        v51 = 0;
        goto LABEL_14;
      }

      v25 = *(v46 + 8 * v24);
      ++v15;
      if (v25)
      {
        v51 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v15 = v24;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1001139C4()
{
  sub_100004168();
  v2 = v1;
  sub_100002834();
  v3 = type metadata accessor for Date();
  v4 = sub_100003724(v3);
  v76 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000308C();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_10000D478();
  sub_1001189A0(v12);
  v75 = type metadata accessor for AccountIdentity();
  v13 = sub_100003724(v75);
  v69 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_10000308C();
  v70 = v17 - v18;
  sub_100005238();
  __chkstk_darwin(v19);
  sub_10000D478();
  v68 = v20;
  v21 = sub_100099DF4(&qword_1002DD160, &qword_100236D30);
  v22 = sub_1000030B8(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_10000308C();
  __chkstk_darwin(v25);
  sub_10000D478();
  v72 = v27;
  if (v0 == v2 || *(v0 + 16) != *(v2 + 16))
  {
LABEL_19:
    sub_1000027F8();
  }

  else
  {
    v71 = v26;
    v66 = v10;
    v67 = v2;
    v28 = 0;
    v65 = v0;
    sub_1001187E8();
    v29 = *(v0 - 32);
    sub_1000069C0();
    v32 = v31 & v30;
    v63 = (v33 + 63) >> 6;
    v64 = v0;
    while (v32)
    {
      v73 = (v32 - 1) & v32;
      v34 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_11:
      (*(v69 + 16))(v68, *(v65 + 48) + *(v69 + 72) * v34, v75);
      (*(v76 + 16))(v74, *(v65 + 56) + *(v76 + 72) * v34, v3);
      v40 = sub_100099DF4(&qword_1002DD168, &qword_100236D38);
      v41 = *(v40 + 48);
      v42 = *(v69 + 32);
      v43 = sub_100002CC0();
      v44(v43);
      (*(v76 + 32))(v71 + v41, v74, v3);
      sub_10000B7B0();
      sub_100002728(v45, v46, v47, v40);
      v35 = v72;
      v32 = v73;
LABEL_12:
      sub_100012D44();
      v48 = sub_100005CF0();
      v50 = sub_100099DF4(v48, v49);
      sub_1000071D8(v35);
      if (v51)
      {
        goto LABEL_19;
      }

      v52 = *(v50 + 48);
      (*(v69 + 32))(v70, v35, v75);
      (*(v76 + 32))(v66, v35 + v52, v3);
      v53 = sub_10000DA08();
      v55 = v54;
      (*(v69 + 8))(v70, v75);
      if ((v55 & 1) == 0)
      {
        v60 = *(v76 + 8);
        v61 = sub_100007B1C();
        v62(v61);
        goto LABEL_19;
      }

      (*(v76 + 16))(v74, *(v67 + 56) + *(v76 + 72) * v53, v3);
      sub_100004AF4();
      sub_100111ED0(&qword_1002E27C0);
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *(v76 + 8);
      v57(v74, v3);
      v58 = sub_100007B1C();
      (v57)(v58);
      if ((v56 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v35 = v72;
    while (1)
    {
      v36 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v36 >= v63)
      {
        v59 = sub_100099DF4(&qword_1002DD168, &qword_100236D38);
        sub_100002728(v71, 1, 1, v59);
        v32 = 0;
        goto LABEL_12;
      }

      ++v28;
      if (*(v64 + 8 * v36))
      {
        sub_10000A234();
        v73 = v37;
        v34 = v39 | (v38 << 6);
        v28 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100113EE0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100005CFC(a1, a2);
    if (v5)
    {
      v6 = 0;
      v7 = *(a1 + 64);
      v8 = *(a1 + 32);
      sub_100007FC0();
      v11 = v10 & v9;
      sub_10000D448();
      while (v11)
      {
        v12 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        sub_1001187C0(v12);
        v18 = *v16;
        v17 = v16[1];
        sub_10011723C(v20 + 40 * v19, &v29);
        v26 = v29;
        v27 = v30;
        v21 = v31;

        if (!v17)
        {
          return;
        }

        v29 = v26;
        v30 = v27;
        v31 = v21;
        v22 = sub_10014EB30(v18, v17);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          sub_100117298(&v29);
          return;
        }

        sub_10011723C(*(a2 + 56) + 40 * v22, v28);
        v25 = static AnyHashable.== infix(_:_:)();
        sub_100117298(v28);
        sub_100117298(&v29);
        if ((v25 & 1) == 0)
        {
          return;
        }
      }

      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v2)
        {
          return;
        }

        ++v13;
        if (*(a1 + 64 + 8 * v6))
        {
          sub_100118424();
          v11 = v15 & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_10011404C(uint64_t a1, uint64_t a2)
{
  sub_10011849C(a1, a2);
  if (v2)
  {
    v4 = (v3 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v8 = *v4;
      v7 = v4[1];
      v9 = *(v4 + 16);
      v11 = v4[3];
      v10 = v4[4];
      v12 = *(v4 + 40);

      String.hash(into:)();
      sub_1000E5AA8();
      String.hash(into:)();
      switch(v9)
      {
        case 1:
        case 2:
          sub_1001184F8();
          break;
        case 3:
        case 4:
          sub_1001185B8();
          break;
        default:
          break;
      }

      String.hash(into:)();

      sub_10000492C();
      String.hash(into:)();
      Hasher._combine(_:)(v12);

      v4 += 8;
      --v2;
    }

    while (v2);
  }
}

void sub_1001141DC()
{
  sub_100002FBC();
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  v20 = v2;
  if (v2)
  {
    v3 = 0;
    v19 = v0 + 32;
    do
    {
      v21 = v3;
      v4 = (v19 + 40 * v3);
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[3];
      v9 = v4[4];

      String.hash(into:)();
      sub_100007198();
      String.hash(into:)();
      Hasher._combine(_:)(*(v9 + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = (v9 + 56);
        do
        {
          v13 = *(v11 - 3);
          v12 = *(v11 - 2);
          v14 = *(v11 - 8);
          v15 = *v11;
          v16 = v11[1];
          v22 = *(v11 + 16);
          v17 = v11[4];
          v23 = v11[3];
          v24 = *(v11 + 40);
          v18 = v11[7];
          v25 = v11[6];

          sub_1000E5AA8();
          String.hash(into:)();
          String.hash(into:)();

          sub_100007198();
          String.hash(into:)();
          switch(v22)
          {
            case 3:
            case 4:
              sub_100118994();
              break;
            default:
              break;
          }

          String.hash(into:)();

          String.hash(into:)();
          Hasher._combine(_:)(v24);
          String.hash(into:)();

          v11 += 11;
          --v10;
        }

        while (v10);
      }

      v3 = v21 + 1;
    }

    while (v21 + 1 != v20);
  }
}

void sub_1001144B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, Swift::UInt8 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_100118668();
  sub_10011849C(v33, v34);
  if (v31)
  {
    v35 = (v32 + 56);
    do
    {
      v37 = *(v35 - 3);
      v36 = *(v35 - 2);
      v38 = *(v35 - 8);
      v40 = *v35;
      v39 = v35[1];
      v43 = *(v35 + 16);
      v41 = v35[4];
      v44 = v35[3];
      v45 = *(v35 + 40);
      v42 = v35[7];
      v46 = v35[6];

      String.hash(into:)();
      String.hash(into:)();

      sub_10000492C();
      String.hash(into:)();
      switch(v43)
      {
        case 3:
        case 4:
          sub_100118994();
          break;
        default:
          break;
      }

      String.hash(into:)();

      String.hash(into:)();
      Hasher._combine(_:)(v45);
      String.hash(into:)();

      v35 += 11;
      --v31;
    }

    while (v31);
  }

  sub_10011864C();
}

void sub_1001146DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1000E385C(__dst, &v5);
      sub_1000DE6A4();
      sub_1000E3894(__dst);
      v4 += 136;
      --v3;
    }

    while (v3);
  }
}

void sub_10011476C()
{
  sub_100004168();
  v1 = v0;
  v2 = sub_100002834();
  v3 = type metadata accessor for TSDataSyncTriggerEvent(v2);
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = *(v1 + 16);
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v23 = v3[5];
    v13 = v11 + v3[6];
    v14 = (v11 + v3[7]);
    v15 = (v11 + v3[8]);
    v16 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v22 = *(v6 + 72);
    do
    {
      sub_1000038C4();
      sub_10003CF90();
      sub_100116BCC();
      type metadata accessor for Date();
      sub_100004AF4();
      sub_100111ED0(&qword_1002DAC90);
      sub_100008A44();
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v11 + v23));
      if (*(v13 + 8) == 1)
      {
        sub_100008C3C();
      }

      else
      {
        v17 = *v13;
        sub_100005C20();
        if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        Hasher._combine(_:)(v18);
      }

      if (v14[1])
      {
        v19 = *v14;
        sub_100005C20();
        String.hash(into:)();
      }

      else
      {
        sub_100008C3C();
      }

      v20 = *v15;
      v21 = v15[1];
      String.hash(into:)();
      sub_100006D34();
      sub_100116B78();
      v16 += v22;
      --v12;
    }

    while (v12);
  }

  sub_1000027F8();
}

void sub_100114920(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      String.hash(into:)();

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

void sub_100114998(uint64_t a1, uint64_t a2)
{
  sub_10011849C(a1, a2);
  if (v2)
  {
    v4 = (v3 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_100007198();
      String.hash(into:)();
      sub_1000028B0();
      String.hash(into:)();

      v4 += 4;
      --v2;
    }

    while (v2);
  }
}

void sub_100114A24()
{
  sub_100004168();
  sub_10011849C(v2, v3);
  if (v0)
  {
    v4 = (v1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      *(v4 - 16);

      String.hash(into:)();

      sub_100118864();
      String.hash(into:)();

      v4 += 3;
      --v0;
    }

    while (v0);
  }

  sub_1000027F8();
}

void sub_100114B5C(uint64_t a1, uint64_t a2)
{
  sub_10011849C(a1, a2);
  if (v2)
  {
    v4 = (v3 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_100007198();
      String.hash(into:)();

      sub_1000028B0();
      String.hash(into:)();
      swift_bridgeObjectRelease_n();

      v4 += 4;
      --v2;
    }

    while (v2);
  }
}

void sub_100114BF4()
{
  v0 = sub_100002834();
  v1 = type metadata accessor for TSDataSyncTriggerEvent(v0);
  v2 = sub_10000307C(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  sub_1000030B8(v8);
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  sub_10003D1E4();
  sub_10000B3A0(v13, 1, v1);
  if (v15)
  {
    sub_100008C3C();
  }

  else
  {
    sub_100007198();
    sub_100116B20();
    sub_100005C20();
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v14);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v7 + v1[5]));
    sub_10000A840(v1[6]);
    if (v15)
    {
      sub_100008C3C();
    }

    else
    {
      v17 = *v16;
      sub_100005C20();
      if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      Hasher._combine(_:)(v18);
    }

    v19 = (v7 + v1[7]);
    if (v19[1])
    {
      v20 = *v19;
      sub_100005C20();
      sub_1001187F4();
      String.hash(into:)();
    }

    else
    {
      sub_100008C3C();
    }

    sub_100118844();
    String.hash(into:)();
    sub_100006D34();
    sub_100116B78();
  }
}

void sub_100114DC0()
{
  sub_100004168();
  v2 = v1;
  v51 = v3;
  v54 = type metadata accessor for Date();
  v4 = sub_100003724(v54);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000030E4();
  v53 = v9;
  v10 = sub_100099DF4(&qword_1002DD2D0, &unk_100237590);
  v11 = sub_1000030B8(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000308C();
  v52 = (v14 - v15);
  sub_100005238();
  __chkstk_darwin(v16);
  sub_10011852C();
  v18 = v2 + 64;
  v17 = *(v2 + 8);
  v19 = v2[32];
  sub_100007FC0();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v25 = (v6 + 4);
  v48 = v6;
  v50 = v6 + 1;

  v26 = 0;
  v27 = 0;
  v47 = v0;
  v46 = (v6 + 4);
  for (i = v2 + 64; ; v18 = i)
  {
    v55 = v26;
    if (!v22)
    {
      break;
    }

    v28 = v27;
LABEL_9:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    sub_100118740(v29 | (v28 << 6));
    (v48[2])(v53, v31 + v48[9] * v30, v54);
    v32 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
    v33 = *(v32 + 48);
    *v52 = v6;
    *(v52 + 1) = v2;
    v25 = v46;
    (v48[4])(&v52[v33], v53, v54);
    sub_10000B7B0();
    sub_100002728(v34, v35, v36, v32);

    v0 = v47;
LABEL_10:
    sub_100118870();
    sub_100012D44();
    v37 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
    sub_1000071D8(v0);
    if (v38)
    {

      Hasher._combine(_:)(v55);
      sub_1000027F8();
      return;
    }

    v39 = *(v37 + 48);
    v40 = *v0;
    v41 = v0[1];
    v6 = v54;
    (*v25)(v53, v0 + v39, v54);
    memcpy(v56, v51, 0x48uLL);

    sub_1001187D0();
    String.hash(into:)();
    swift_bridgeObjectRelease_n();
    sub_100004AF4();
    sub_100111ED0(&qword_1002DAC90);
    sub_100118818();
    dispatch thunk of Hashable.hash(into:)();
    v42 = *v50;
    v43 = sub_100005CF0();
    v44(v43);
    v2 = v56;
    v26 = Hasher._finalize()() ^ v55;
  }

  v6 = v52;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      v45 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
      sub_100118684(v45);
      v22 = 0;
      goto LABEL_10;
    }

    v22 = *&v18[8 * v28];
    ++v27;
    if (v22)
    {
      v27 = v28;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100115128(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100118668();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v34 + 64;
  v38 = *(v34 + 64);
  v40 = *(v34 + 32);
  sub_100007FC0();
  sub_1000062F0();

  v41 = 0;
  v42 = 0;
  if (v31)
  {
    while (1)
    {
LABEL_5:
      sub_100118484();
      v45 = (*(v35 + 48) + 16 * v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = *(*(v35 + 56) + v44);
      memcpy(&__dst, v37, 0x48uLL);
      sub_100108334();
      swift_bridgeObjectRetain_n();
      sub_100118724();
      sub_100108334();
      swift_bridgeObjectRelease_n();
      Hasher._combine(_:)(v48);
      v41 ^= Hasher._finalize()();
    }
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v43 >= v30)
    {

      Hasher._combine(_:)(0);
      sub_10011864C();
      return;
    }

    ++v42;
    if (*(v39 + 8 * v43))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_10011521C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100118668();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v34 + 64;
  v38 = *(v34 + 64);
  v40 = *(v34 + 32);
  sub_100007FC0();
  sub_1000062F0();

  v41 = 0;
  v42 = 0;
  if (v31)
  {
    while (1)
    {
LABEL_5:
      sub_100118484();
      v45 = (*(v35 + 48) + 16 * v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = *(*(v35 + 56) + 8 * v44);
      memcpy(&__dst, v37, 0x48uLL);
      sub_100108334();
      swift_bridgeObjectRetain_n();
      sub_100118724();
      sub_100108334();
      swift_bridgeObjectRelease_n();
      Hasher._combine(_:)(v48);
      v41 ^= Hasher._finalize()();
    }
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v43 >= v30)
    {

      Hasher._combine(_:)(0);
      sub_10011864C();
      return;
    }

    ++v42;
    if (*(v39 + 8 * v43))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_100115310(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  sub_100007FC0();
  v8 = v7 & v6;
  sub_10000D448();

  v27 = 0;
  v9 = 0;
  if (!v8)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v11 = __clz(__rbit64(v8)) | (v9 << 6);
    v12 = *(a2 + 56);
    v13 = (*(a2 + 48) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = sub_1001188C8(v11);
    *__dst = v17;
    *&__dst[16] = v18;
    *&__dst[32] = v19;
    *&__dst[41] = v16;
    v25 = v17;
    v26 = v18;
    v20 = *&__dst[32];
    v21 = *(v16.n128_i64 + 7);
    v22 = v16.n128_u8[15];

    sub_1000BA2CC(__dst, v29);
    if (!v14)
    {
LABEL_12:

      Hasher._combine(_:)(v27);
      return;
    }

    v8 &= v8 - 1;
    v29[0] = v25;
    v29[1] = v26;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    memcpy(__dst, a1, sizeof(__dst));

    String.hash(into:)();
    swift_bridgeObjectRelease_n();
    String.hash(into:)();
    String.hash(into:)();
    switch(v30)
    {
      case 1:
      case 2:
        sub_1001184F8();
        break;
      case 3:
      case 4:
        sub_1001185B8();
        break;
      default:
        break;
    }

    String.hash(into:)();

    String.hash(into:)();
    Hasher._combine(_:)(v32);
    sub_1000BA304(v29);
    v27 ^= Hasher._finalize()();
  }

  while (v8);
LABEL_2:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v2)
    {
      goto LABEL_12;
    }

    v8 = *(v4 + 8 * v10);
    ++v9;
    if (v8)
    {
      v9 = v10;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_100115578()
{
  sub_100004168();
  v3 = v2;
  v60 = v4;
  v62 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v5 = sub_100003724(v62);
  v57 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000BA50();
  __chkstk_darwin(v9);
  sub_10000D478();
  v10 = sub_100099DF4(&qword_1002DD2D8, &unk_1002375A0);
  v11 = sub_1000030B8(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000308C();
  v61 = (v14 - v15);
  sub_100005238();
  __chkstk_darwin(v16);
  sub_10000A850();
  v18 = v3 + 64;
  v17 = *(v3 + 64);
  v19 = *(v3 + 32);
  sub_100007FC0();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v58 = v3;

  v25 = 0;
  v26 = 0;
  v56 = v1;
  v59 = v3 + 64;
  if (!v22)
  {
    goto LABEL_3;
  }

  do
  {
    v27 = v25;
    v28 = v26;
LABEL_7:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v30 = *(v58 + 56);
    v31 = (*(v58 + 48) + 16 * (v29 | (v28 << 6)));
    v32 = *v31;
    v33 = v31[1];
    v34 = *(v57 + 72);
    sub_1000038C4();
    sub_100116BCC();
    v35 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
    v36 = *(v35 + 48);
    *v61 = v32;
    v61[1] = v33;
    sub_100007C18();
    sub_100116B20();
    sub_10000B7B0();
    sub_100002728(v37, v38, v39, v35);

    v25 = v27;
    v1 = v56;
LABEL_8:
    sub_100012D44();
    v40 = sub_10003CF90();
    v42 = sub_100099DF4(v40, v41);
    sub_1000071D8(v1);
    if (v43)
    {

      Hasher._combine(_:)(v25);
      sub_1000027F8();
      return;
    }

    v44 = *(v42 + 48);
    v45 = *v1;
    v46 = v1[1];
    sub_100007C18();
    sub_100116B20();
    memcpy(v63, v60, sizeof(v63));

    String.hash(into:)();
    sub_100108334();
    swift_bridgeObjectRelease_n();
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(&qword_1002DAC90);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v0 + v62[5]));
    v47 = v0 + v62[6];
    if (*(v47 + 8) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v48 = *v47;
      Hasher._combine(_:)(1u);
      if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      Hasher._combine(_:)(v49);
    }

    v18 = v59;
    v50 = (v0 + v62[7]);
    if (v50[1])
    {
      v51 = *v50;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v52 = (v0 + v62[8]);
    v53 = *v52;
    v54 = v52[1];
    String.hash(into:)();
    sub_100006D34();
    sub_100116B78();
    v25 ^= Hasher._finalize()();
  }

  while (v22);
LABEL_3:
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      v55 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
      sub_100010438(v55);
      v22 = 0;
      goto LABEL_8;
    }

    v22 = *(v18 + 8 * v28);
    ++v26;
    if (v22)
    {
      v27 = v25;
      v26 = v28;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_100115A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v102 = v25;
  v26 = type metadata accessor for Date();
  v27 = sub_100003724(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_1000030E4();
  v93 = v32;
  v33 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v33);
  v35 = *(v34 + 64);
  sub_100003774();
  __chkstk_darwin(v36);
  v38 = v89 - v37;
  v39 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  v40 = sub_100003724(v39);
  v95 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_10000BA50();
  __chkstk_darwin(v44);
  sub_10000D478();
  v94 = v45;
  v46 = sub_100099DF4(&qword_1002DC230, &qword_100234850);
  v47 = sub_1000030B8(v46);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_10000308C();
  sub_10011845C();
  __chkstk_darwin(v50);
  sub_10000D478();
  v101 = v51;
  v53 = v24 + 64;
  v52 = *(v24 + 64);
  v54 = *(v24 + 32);
  sub_100007FC0();
  v57 = v56 & v55;
  v90 = (v58 + 63) >> 6;
  v92 = v29 + 32;
  v91 = v29 + 8;
  v96 = v24;

  v59 = 0;
  v60 = 0;
  v97 = "priority";
  v89[4] = "scheduledDevicePull";
  v89[3] = "ediateDevicePull";
  v89[2] = "eduledDevicePull";
  v89[1] = "appTriggerImmediateDevicePull";
  v99 = v38;
  v100 = v26;
  v98 = v24 + 64;
  while (1)
  {
    v103 = v59;
    if (!v57)
    {
      break;
    }

    v61 = v26;
    v62 = v60;
LABEL_8:
    v63 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    sub_100118740(v63 | (v62 << 6));
    v64 = *(v95 + 72);
    sub_1001183B4();
    sub_100116BCC();
    v65 = &unk_100237570;
    v66 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
    sub_100118800(v66);
    sub_100007670();
    sub_100116B20();
    sub_10000B7B0();
    sub_100002728(v67, v68, v69, &qword_1002DC238);

LABEL_9:
    v70 = v101;
    sub_100012D44();
    v71 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
    sub_1000071D8(v70);
    if (v72)
    {

      Hasher._combine(_:)(v103);
      sub_1000027F8();
      return;
    }

    v73 = *(v71 + 48);
    v74 = *v70;
    v75 = v70[1];
    sub_100007670();
    sub_100116B20();
    memcpy(v104, v102, sizeof(v104));

    sub_1001187D0();
    String.hash(into:)();
    swift_bridgeObjectRelease_n();
    v76 = v99;
    sub_10003D1E4();
    sub_10000B3A0(v76, 1, v61);
    if (v72)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      sub_100008AA4(&a18);
      v77 = v93;
      v78(v93, v76, v61);
      Hasher._combine(_:)(1u);
      sub_100004AF4();
      sub_100111ED0(&qword_1002DAC90);
      sub_100118818();
      dispatch thunk of Hashable.hash(into:)();
      sub_100008AA4(&a17);
      v79(v77, v61);
    }

    v80 = v39[5];
    sub_100004AF4();
    sub_100111ED0(&qword_1002DAC90);
    sub_100118818();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v20 + v39[6]));
    v81 = v20 + v39[7];
    v82 = *(v81 + 8);
    if (v82)
    {
      v65 = *v81;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    sub_1001186DC(v39[8]);
    String.hash(into:)();
    switch(v65)
    {
      case 1uLL:
        v83 = &a15;
        goto LABEL_21;
      case 2uLL:
        v83 = &a14;
        goto LABEL_21;
      case 3uLL:
        sub_1001185B8();
        v83 = &a13;
        goto LABEL_21;
      case 4uLL:
        sub_1001185B8();
        v83 = &a12;
LABEL_21:
        v84 = *(v83 - 32);
        break;
      default:
        break;
    }

    String.hash(into:)();

    sub_1001187D0();
    String.hash(into:)();
    Hasher._combine(_:)(v82);
    v85 = *(v20 + v39[9]);
    sub_10011476C();
    v86 = *(v20 + v39[10]);
    if (v86 == 2)
    {
      v87 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v87 = v86 & 1;
    }

    v26 = v100;
    v53 = v98;
    Hasher._combine(_:)(v87);
    sub_100116B78();
    v59 = Hasher._finalize()() ^ v103;
  }

  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v62 >= v90)
    {
      v61 = v26;
      v65 = &unk_100237570;
      v88 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
      sub_100118684(v88);
      v57 = 0;
      goto LABEL_9;
    }

    v57 = *(v53 + 8 * v62);
    ++v60;
    if (v57)
    {
      v61 = v26;
      v60 = v62;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1001160A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v83 = v27;
  v28 = type metadata accessor for Date();
  v29 = sub_100003724(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_1000030E4();
  v77 = v32;
  v33 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v33);
  v35 = *(v34 + 64);
  sub_100003774();
  __chkstk_darwin(v36);
  v37 = sub_10011854C();
  v79 = type metadata accessor for TSDataSyncDatasetSchedule(v37);
  v38 = sub_100003724(v79);
  v78 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_10000BA50();
  __chkstk_darwin(v42);
  sub_10000D478();
  v43 = sub_100099DF4(&qword_1002DC210, &qword_100234838);
  v44 = sub_1000030B8(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_10000308C();
  sub_10011845C();
  __chkstk_darwin(v47);
  sub_10000D478();
  v82 = v48;
  v49 = *(v26 + 64);
  v84 = v26 + 64;
  v50 = *(v26 + 32);
  sub_100007FC0();
  v53 = v52 & v51;
  v76 = (v54 + 63) >> 6;

  v55 = 0;
  v56 = 0;
  v80 = v22;
  for (i = v28; ; v28 = i)
  {
    v85 = v55;
    if (!v53)
    {
      break;
    }

    v20 = v22;
LABEL_8:
    sub_100118484();
    sub_100118740(v58);
    v59 = *(v78 + 72);
    sub_10000B3C8();
    sub_100116BCC();
    v60 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
    sub_100118800(v60);
    sub_1000031BC();
    sub_100116B20();
    sub_10000B7B0();
    sub_100002728(v61, v62, v63, &qword_1002DC218);

    v22 = v20;
LABEL_9:
    sub_100012D44();
    v64 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
    sub_1000071D8(v82);
    if (v65)
    {

      Hasher._combine(_:)(v85);
      sub_1000027F8();
      return;
    }

    v66 = *(v64 + 48);
    v67 = *v82;
    v68 = v82[1];
    sub_1000031BC();
    sub_100116B20();
    memcpy(v86, v83, sizeof(v86));

    sub_1001187D0();
    String.hash(into:)();
    swift_bridgeObjectRelease_n();
    sub_10003D1E4();
    sub_10000B3A0(v22, 1, v28);
    if (v65)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      sub_100008AA4(&a17);
      v69(v77, v22, v28);
      Hasher._combine(_:)(1u);
      sub_100004AF4();
      sub_100111ED0(&qword_1002DAC90);
      sub_100118818();
      dispatch thunk of Hashable.hash(into:)();
      sub_100008AA4(&a16);
      v70(v77, v28);
    }

    v71 = v79[5];
    sub_100004AF4();
    sub_100111ED0(&qword_1002DAC90);
    sub_100118818();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v21 + v79[6]));
    Hasher._combine(_:)(*(v21 + v79[7]));
    v72 = v21 + v79[8];
    sub_100114BF4();
    sub_1001186DC(v79[9]);
    String.hash(into:)();
    switch(v20)
    {
      case 1:
        v73 = &a14;
        goto LABEL_18;
      case 2:
        v73 = &a13;
        goto LABEL_18;
      case 3:
        sub_1001185B8();
        v73 = &a12;
        goto LABEL_18;
      case 4:
        sub_1001185B8();
        v73 = &a11;
LABEL_18:
        v74 = *(v73 - 32);
        break;
      default:
        break;
    }

    String.hash(into:)();

    sub_1001187D0();
    String.hash(into:)();
    Hasher._combine(_:)(v79);
    sub_100116B78();
    v55 = Hasher._finalize()() ^ v85;
    v22 = v80;
  }

  while (1)
  {
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v57 >= v76)
    {
      v75 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
      sub_100118684(v75);
      v53 = 0;
      goto LABEL_9;
    }

    v53 = *(v84 + 8 * v57);
    ++v56;
    if (v53)
    {
      v20 = v22;
      v56 = v57;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100116780(const void *a1, uint64_t a2)
{
  v38 = a1;
  v3 = type metadata accessor for TSDataSyncDatasetState(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v39 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v35 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v37 = a2;

  v17 = 0;
  v18 = 0;
  v35 = v11;
  if (v15)
  {
    while (1)
    {
      v40 = v17;
      v19 = v18;
LABEL_10:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v19 << 6);
      v23 = (*(v37 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v37 + 56) + *(v36 + 72) * v22;
      sub_100116BCC();
      v27 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      v28 = *(v27 + 48);
      v29 = v39;
      *v39 = v25;
      *(v29 + 8) = v24;
      sub_100116B20();
      sub_100002728(v29, 0, 1, v27);

      v17 = v40;
      v11 = v35;
LABEL_11:
      sub_100012D44();
      v30 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      if (sub_100004DFC(v11, 1, v30) == 1)
      {
        break;
      }

      v31 = *(v30 + 48);
      v32 = *v11;
      v33 = v11[1];
      sub_100116B20();
      memcpy(__dst, v38, sizeof(__dst));
      String.hash(into:)();

      sub_10010CAAC(__dst);
      sub_100116B78();
      v17 ^= Hasher._finalize()();
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v17);
  }

  else
  {
LABEL_5:
    v20 = v39;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v34 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
        sub_100002728(v20, 1, 1, v34);
        v15 = 0;
        goto LABEL_11;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v40 = v17;
        v18 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100116B20()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_100116B78()
{
  v1 = sub_100002834();
  v3 = v2(v1);
  sub_10000307C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_100116BCC()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

unint64_t sub_100116C24()
{
  result = qword_1002DD048;
  if (!qword_1002DD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD048);
  }

  return result;
}

unint64_t sub_100116C78()
{
  result = qword_1002DD058;
  if (!qword_1002DD058)
  {
    sub_10009A468(&qword_1002DD050, &qword_100236C98);
    sub_1000F6B30();
    sub_100111ED0(&unk_1002DD060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD058);
  }

  return result;
}

unint64_t sub_100116D34()
{
  result = qword_1002DD070;
  if (!qword_1002DD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD070);
  }

  return result;
}

unint64_t sub_100116D88()
{
  result = qword_1002DD080;
  if (!qword_1002DD080)
  {
    sub_10009A468(&qword_1002DD050, &qword_100236C98);
    sub_1000F6C98();
    sub_100111ED0(&unk_1002DD088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD080);
  }

  return result;
}

unint64_t sub_100116E44(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10009A468(&qword_1002DC7C8, &qword_100236CA0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100116EB8()
{
  result = qword_1002DD098;
  if (!qword_1002DD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD098);
  }

  return result;
}

uint64_t sub_100116F0C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_100116F54()
{
  result = qword_1002DD0B0;
  if (!qword_1002DD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD0B0);
  }

  return result;
}

unint64_t sub_100116FA8()
{
  result = qword_1002DD0C8;
  if (!qword_1002DD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD0C8);
  }

  return result;
}

unint64_t sub_100116FFC(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_10009A468(&qword_1002DBF90, &qword_100233528);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100117064(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10009A468(&qword_1002DD0D0, &qword_100236CE0);
    sub_10000B828();
    sub_100111ED0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001170EC()
{
  result = qword_1002DD108;
  if (!qword_1002DD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD108);
  }

  return result;
}

unint64_t sub_100117140()
{
  result = qword_1002DD120;
  if (!qword_1002DD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD120);
  }

  return result;
}

unint64_t sub_100117194()
{
  result = qword_1002DD138;
  if (!qword_1002DD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD138);
  }

  return result;
}

unint64_t sub_1001171E8()
{
  result = qword_1002DD150;
  if (!qword_1002DD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD150);
  }

  return result;
}

uint64_t sub_100117334()
{
  result = type metadata accessor for TSDataSyncTriggerEvent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetIdentifier.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TSDataSyncDatasetMetricsFields.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetMetricsFields.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1001175D8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncDatasetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetGroupMetricsFields.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TSDataSyncDatasetGroupState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001179D4()
{
  result = qword_1002DD208;
  if (!qword_1002DD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD208);
  }

  return result;
}

unint64_t sub_100117A2C()
{
  result = qword_1002DD210;
  if (!qword_1002DD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD210);
  }

  return result;
}

unint64_t sub_100117A84()
{
  result = qword_1002DD218;
  if (!qword_1002DD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD218);
  }

  return result;
}

unint64_t sub_100117ADC()
{
  result = qword_1002DD220;
  if (!qword_1002DD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD220);
  }

  return result;
}

unint64_t sub_100117B34()
{
  result = qword_1002DD228;
  if (!qword_1002DD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD228);
  }

  return result;
}

unint64_t sub_100117B8C()
{
  result = qword_1002DD230;
  if (!qword_1002DD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD230);
  }

  return result;
}

unint64_t sub_100117BE4()
{
  result = qword_1002DD238;
  if (!qword_1002DD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD238);
  }

  return result;
}

unint64_t sub_100117C84()
{
  result = qword_1002DD248;
  if (!qword_1002DD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD248);
  }

  return result;
}

unint64_t sub_100117CDC()
{
  result = qword_1002DD250;
  if (!qword_1002DD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD250);
  }

  return result;
}

unint64_t sub_100117D34()
{
  result = qword_1002DD258;
  if (!qword_1002DD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD258);
  }

  return result;
}

unint64_t sub_100117D8C()
{
  result = qword_1002DD260;
  if (!qword_1002DD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD260);
  }

  return result;
}

unint64_t sub_100117DE4()
{
  result = qword_1002DD268;
  if (!qword_1002DD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD268);
  }

  return result;
}

unint64_t sub_100117E3C()
{
  result = qword_1002DD270;
  if (!qword_1002DD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD270);
  }

  return result;
}

unint64_t sub_100117E94()
{
  result = qword_1002DD278;
  if (!qword_1002DD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD278);
  }

  return result;
}

unint64_t sub_100117EEC()
{
  result = qword_1002DD280;
  if (!qword_1002DD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD280);
  }

  return result;
}

unint64_t sub_100117F44()
{
  result = qword_1002DD288;
  if (!qword_1002DD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD288);
  }

  return result;
}

unint64_t sub_100117F9C()
{
  result = qword_1002DD290;
  if (!qword_1002DD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD290);
  }

  return result;
}

unint64_t sub_100117FF4()
{
  result = qword_1002DD298;
  if (!qword_1002DD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD298);
  }

  return result;
}

unint64_t sub_10011804C()
{
  result = qword_1002DD2A0;
  if (!qword_1002DD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD2A0);
  }

  return result;
}

unint64_t sub_1001180A4()
{
  result = qword_1002DD2A8;
  if (!qword_1002DD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD2A8);
  }

  return result;
}

unint64_t sub_1001180FC()
{
  result = qword_1002DD2B0;
  if (!qword_1002DD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD2B0);
  }

  return result;
}

unint64_t sub_100118150()
{
  result = qword_1002DD2C0;
  if (!qword_1002DD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD2C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncCalculatedEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100118284()
{
  result = qword_1002DD2E0;
  if (!qword_1002DD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD2E0);
  }

  return result;
}

unint64_t sub_1001182DC()
{
  result = qword_1002DD2E8;
  if (!qword_1002DD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD2E8);
  }

  return result;
}

unint64_t sub_100118334()
{
  result = qword_1002DD2F0;
  if (!qword_1002DD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD2F0);
  }

  return result;
}

void sub_10011839C()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t sub_100118434@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v4 = *(v1 - 136);
  v3 = *(v1 - 128);
  v5 = *(v1 - 112);
  return result;
}

void sub_10011849C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  Hasher._combine(_:)(v3);
}

uint64_t sub_100118560@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100118584@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1001185A4()
{
  result = v0;
  v4 = *(v1 - 136);
  v3 = *(v1 - 128);
  v5 = *(v1 - 112);
  return result;
}

uint64_t sub_1001185D0()
{

  return String.hash(into:)();
}

uint64_t sub_100118610()
{
  v2 = *(v0 + 8);
  result = *(v1 - 136);
  v4 = *(v1 - 128);
  return result;
}

uint64_t sub_10011861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 | (v2 << 6);
  v5 = (*(a1 + 48) + 16 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = (*(a1 + 56) + 16 * v4);
  v10 = *v8;
  v9 = v8[1];
}

uint64_t sub_100118684(uint64_t a1)
{

  return sub_100002728(v1, 1, 1, a1);
}

uint64_t sub_1001186DC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = *(v3 + 32);
  v9 = v3[5];
  v10 = v3[6];
  v11 = *(v3 + 56);

  return String.hash(into:)();
}

uint64_t sub_100118708()
{
  v3 = *(v2 - 120);
  v4 = (*(v3 + 48) + 16 * v0);
  v5 = *v4;
  v6 = v4[1];
  return *(v3 + 56) + *(v1 + 72) * v0;
}

uint64_t sub_100118724()
{

  return String.hash(into:)();
}

void sub_100118740(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = (v2 + 16 * a1);
  v6 = *v4;
  v5 = v4[1];
}

uint64_t sub_1001187B0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_100118800(uint64_t result)
{
  v4 = *(result + 48);
  v5 = *(v3 - 176);
  *v5 = v2;
  v5[1] = v1;
  return result;
}

uint64_t sub_100118844()
{
  v3 = (v1 + *(v2 + 32));
  v4 = *v3;
  v5 = v3[1];
  return v0;
}

__n128 sub_1001188C8@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + (a1 << 6));
  result = *(v2 + 41);
  v5 = v2[1];
  v4 = v2[2];
  v6 = *v2;
  return result;
}

void sub_100118934()
{
  v2 = *(v1 + 48);
  v4 = *v0;
  v3 = v0[1];
}

uint64_t sub_100118954()
{
  v2 = (*(v0 + 56) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1001189D0()
{
}

uint64_t sub_1001189F0()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_100118A10()
{

  return sub_10003D1E4();
}

uint64_t sub_100118A30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = type metadata accessor for TSDataSyncDatasetGroupStoreCore();
  v14 = *(v13 + 20);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(a1, v2 + v14, v15);
  v16 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v23 = *(v7 + 104);
  v23(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  v17 = *(v7 + 8);
  v18 = v17(v12, v4);
  v19 = *(v13 + 24);
  v20 = sub_100110E0C(v18);
  sub_10000F598(v20, v21);

  v23(v12, v16, v4);
  URL.append<A>(component:directoryHint:)();
  v17(v12, v4);
}

uint64_t sub_100118C3C()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = sub_100003724(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v9 = v8 - v7;
  v27 = type metadata accessor for URL();
  v10 = sub_100003724(v27);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v17 = v16 - v15;
  v18 = v0[4];
  sub_10000C4FC(v0, v0[3]);
  sub_100118A30(v17);
  sub_100007FDC();
  (*(v4 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v4 + 8))(v9, v1);
  v19 = dispatch thunk of FileStore.contents(at:)();
  if (v28)
  {
    return (*(v12 + 8))(v17, v27);
  }

  v22 = v19;
  v23 = v20;
  (*(v12 + 8))(v17, v27);
  v24 = type metadata accessor for PropertyListDecoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_100119558(&qword_1002DD300);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10000D170(v22, v23);
}

uint64_t sub_100118EB4()
{
  v1 = type metadata accessor for FileStoreProtectionType();
  v2 = sub_100003724(v1);
  v56 = v3;
  v57 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v58 = v7 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = sub_100003724(v8);
  v55 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = type metadata accessor for URL();
  v17 = sub_100003724(v16);
  v59 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v47 - v24;
  v26 = type metadata accessor for PropertyListEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_100119558(&qword_1002DD2F8);
  v29 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v31 = v30;

  if (!v0)
  {
    v53 = v29;
    v54 = v31;
    v51 = v15;
    v52 = v22;
    v33 = v8;
    v34 = v58;
    v35 = v60[4];
    sub_10000C4FC(v60, v60[3]);
    sub_100118A30(v25);
    dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
    v36 = *(v59 + 1);
    v50 = v16;
    v59 = v36;
    v36(v25, v16);
    v37 = v60[4];
    v48 = v60[3];
    v49 = v37;
    v47[1] = sub_10000C4FC(v60, v48);
    v38 = v52;
    sub_100118A30(v52);
    sub_100007FDC();
    v39 = v55;
    v40 = v51;
    (*(v55 + 104))(v51, enum case for URL.DirectoryHint.inferFromPath(_:), v33);
    sub_1000BBBB0();
    URL.append<A>(component:directoryHint:)();
    (*(v39 + 8))(v40, v33);
    v41 = v56;
    v42 = v34;
    v43 = v38;
    v44 = v57;
    (*(v56 + 104))(v42, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v57);
    v46 = v53;
    v45 = v54;
    dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
    sub_10000D170(v46, v45);
    (*(v41 + 8))(v42, v44);
    return v59(v43, v50);
  }

  return result;
}

uint64_t sub_1001192A0()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = sub_100003724(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v9 = v8 - v7;
  v29 = type metadata accessor for URL();
  v10 = sub_100003724(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v26 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  v19 = v0[3];
  v27 = v0[4];
  sub_10000C4FC(v0, v19);
  sub_100118A30(v18);
  sub_100007FDC();
  (*(v4 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v4 + 8))(v9, v1);
  v20 = v28;
  dispatch thunk of FileStore.removeItem(at:)();
  if (v20)
  {
    return (*(v12 + 8))(v18, v29);
  }

  v22 = v18;
  v23 = v29;
  v28 = *(v12 + 8);
  v28(v22, v29);
  v24 = v0[4];
  sub_10000C4FC(v0, v0[3]);
  sub_100118A30(v26);
  dispatch thunk of FileStore.removeItem(at:)();
  return (v28)(v26, v23);
}

uint64_t type metadata accessor for TSDataSyncDatasetGroupStoreCore()
{
  result = qword_1002DD360;
  if (!qword_1002DD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100119558(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TSDataSyncDatasetGroupState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001195C4()
{
  result = sub_1000BBCF4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_100119660(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3AB0, v2);

  return v3 != 0;
}

uint64_t sub_1001196C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100119700(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099DF4(&qword_1002DD440, &qword_100237AF8);
  sub_100003724(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10011C914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[0] = a2;
  v16[1] = a3;
  sub_10011C9BC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_100119844()
{
  String.hash(into:)();
  sub_100007FFC();

  return String.hash(into:)();
}

void *sub_100119880(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002DD428, &qword_100237AF0);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_1000072D8();
  v7 = a1[4];
  v8 = sub_10000C4FC(a1, a1[3]);
  sub_10011C914();
  sub_100003C48();
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    sub_10011C968();
    sub_100008DC0();
    v9 = sub_100002980();
    v10(v9);
    v8 = v12;
    sub_100004118(a1);
  }

  return v8;
}

uint64_t sub_1001199B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3AE8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100119A08(char a1)
{
  if (a1)
  {
    return 0x745F64726F636572;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_100119A48(void *a1)
{
  v3 = sub_100099DF4(&qword_1002DD498, &unk_100237D50);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10011CC64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v14 = 1;
    sub_10011CD0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v10, v3);
}

Swift::Int sub_100119BB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100007FFC();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100119C10(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002DD480, &qword_100237D48);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_1000072D8();
  v7 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10011CC64();
  sub_100003C48();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10011CCB8();
    sub_100008DC0();
    v9 = sub_100002980();
    v10(v9);
  }

  sub_100004118(a1);
  return v7;
}

BOOL sub_100119DA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3B38, v2);

  return v3 != 0;
}

BOOL sub_100119DF8@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100119660(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100119E2C@<X0>(void *a1@<X8>)
{
  result = sub_1001196A8();
  *a1 = 0xD000000000000015;
  a1[1] = v3;
  return result;
}

BOOL sub_100119E7C@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100119660(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100119EA8(uint64_t a1)
{
  v2 = sub_10011C914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100119EE4(uint64_t a1)
{
  v2 = sub_10011C914();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100119F20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100119880(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100119F8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001199B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100119FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100119A08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100119FF0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001199B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10011A018(uint64_t a1)
{
  v2 = sub_10011CC64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011A054(uint64_t a1)
{
  v2 = sub_10011CC64();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10011A090()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100007FFC();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011A0E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100119C10(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10011A110(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_100119A48(a1);
}

BOOL sub_10011A138@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100119DA4(*a1);
  *a2 = result;
  return result;
}

void sub_10011A16C(uint64_t a1@<X8>)
{
  strcpy(a1, "csv_gzip_b64");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_10011A240(uint64_t a1)
{
  v2 = sub_10011C7B8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10011A27C(uint64_t a1)
{
  v2 = sub_10011C7B8();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10011A2D4(uint64_t a1)
{
  v2 = sub_10011CA10();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10011A310(uint64_t a1)
{
  v2 = sub_10011CA10();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10011A364(void *a1)
{
  *&v4 = 1635018093;
  *(&v4 + 1) = 0xE400000000000000;
  v1 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
  if ((sub_10000D014() & 1) == 0)
  {
    return 0;
  }

  sub_1001ABEF4(0x615F6E6F6D6D6F63, 0xEA00000000006C6CLL, v3, &v6);

  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if ((sub_10000D014() & 1) == 0)
  {
    return 0;
  }

  sub_1001ABEF4(0xD000000000000018, 0x8000000100271E40, v4, &v6);

  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_100004E24(&v6, &unk_1002DFC10, &qword_10022E6D0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t sub_10011A504(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v4 = *(*(sub_100099DF4(&qword_1002DD3C0, &qword_100237720) - 8) + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  v7 = &v93 - v6;
  v8 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v9 = sub_100003724(v8);
  v98 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v93 - v16;
  v18 = type metadata accessor for CharacterSet();
  v19 = sub_100003724(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_10000306C();
  sub_1000072D8();
  v24 = type metadata accessor for String.Encoding();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  sub_10000306C();
  v26 = v107;
  result = sub_10017A790(a1);
  v107 = v28;
  if (v26)
  {
    return result;
  }

  v97 = v2;
  v99 = v7;
  v100 = v21;
  v29 = v101;
  v102 = v18;
  v103 = v17;
  v104 = v14;
  v95 = v8;
  v30 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v30 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = result;
    v32 = Data.init(base64Encoded:options:)();
    if (v33 >> 60 == 15)
    {
LABEL_48:
      sub_10011C4D0();
      swift_allocError();
      v91 = v107;
      *v92 = v31;
      v92[1] = v91;
      v92[2] = 1;
      return swift_willThrow();
    }

    v34 = v32;
    v35 = v33;
    v36 = v29;
    v37 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v39 = [v37 decompressedDataWithGzippedData:isa];

    if (!v39)
    {
      sub_10009A7A0(v34, v35);
      goto LABEL_48;
    }

    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v34;
    v43 = v42;
    sub_10009A7A0(v41, v35);

    v7 = v99;
  }

  else
  {
    v31 = result;
    v40 = 0;
    v43 = 0xC000000000000000;
    v36 = v101;
  }

  static String.Encoding.utf8.getter();
  v44 = String.init(data:encoding:)();
  if (!v45)
  {
    sub_10000D170(v40, v43);
    goto LABEL_48;
  }

  v46 = v44;
  v47 = v45;
  v94 = v43;

  sub_100099DF4(&qword_1002DC7C8, &qword_100236CA0);
  sub_100007C30();
  sub_10011C604(v48, v49);
  v107 = Dictionary.init(dictionaryLiteral:)();
  v105 = v46;
  v106 = v47;
  v50 = v97;
  CharacterSet.init(charactersIn:)();
  sub_1000BBBB0();
  v51 = StringProtocol.components(separatedBy:)();
  (v100[1])(v50, v102);

  v52 = *(v51 + 16);
  if (v52)
  {
    v93 = v40;
    v53 = 0;
    v102 = v51 + 32;
    v54 = v103;
    v96 = v51;
    v97 = v52;
    while (v53 < *(v51 + 16))
    {
      v55 = (v102 + 16 * v53);
      v57 = *v55;
      v56 = v55[1];

      sub_10011AC70(v57, v56, v36, v7);

      v58 = sub_100099DF4(&qword_1002DD3D0, &qword_100237728);
      if (sub_100004DFC(v7, 1, v58) == 1)
      {
        sub_100004E24(v7, &qword_1002DD3C0, &qword_100237720);
      }

      else
      {
        v59 = *&v7[*(v58 + 48)];
        isUniquelyReferenced_nonNull_native = sub_1000E3C44(v7, v54);
        v61 = v107;
        if (*(v107 + 16) && (isUniquelyReferenced_nonNull_native = sub_10014EC40(), (v62 & 1) != 0))
        {
          v63 = *(*(v61 + 56) + 8 * isUniquelyReferenced_nonNull_native);
        }

        else
        {
          v63 = _swiftEmptyArrayStorage;
        }

        if (v59)
        {
          v64 = v59;
        }

        else
        {
          v64 = _swiftEmptyArrayStorage;
        }

        v65 = v64[2];
        v100 = v64;
        if (v65)
        {
          v66 = v64 + 5;
          do
          {
            v68 = *(v66 - 1);
            v67 = *v66;
            v105 = v68;
            v106 = v67;
            __chkstk_darwin(isUniquelyReferenced_nonNull_native);
            *(&v93 - 2) = &v105;

            if (sub_10015D6FC(sub_10011C524, (&v93 - 4), v63))
            {
            }

            else
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v71 = v63[2];
                sub_10000657C();
                sub_10013C0F0();
                v63 = isUniquelyReferenced_nonNull_native;
              }

              v69 = v63[2];
              if (v69 >= v63[3] >> 1)
              {
                sub_10013C0F0();
                v63 = isUniquelyReferenced_nonNull_native;
              }

              v63[2] = v69 + 1;
              v70 = &v63[2 * v69];
              v70[4] = v68;
              v70[5] = v67;
            }

            v66 += 2;
            --v65;
          }

          while (v65);
        }

        sub_10011C544(v103, v104);
        v72 = v107;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v105 = v72;
        v74 = sub_10014EC40();
        v76 = *(v72 + 16);
        v77 = (v75 & 1) == 0;
        v78 = v76 + v77;
        if (__OFADD__(v76, v77))
        {
          goto LABEL_51;
        }

        v79 = v74;
        v80 = v75;
        sub_100099DF4(&qword_1002DD3D8, &unk_100237730);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v73, v78))
        {
          v81 = sub_10014EC40();
          v36 = v101;
          v7 = v99;
          if ((v80 & 1) != (v82 & 1))
          {
            goto LABEL_53;
          }

          v79 = v81;
        }

        else
        {
          v36 = v101;
          v7 = v99;
        }

        v52 = v97;
        v83 = v105;
        v107 = v105;
        if (v80)
        {
          v84 = *(v105 + 56);
          v85 = *(v84 + 8 * v79);
          *(v84 + 8 * v79) = v63;
        }

        else
        {
          *(v105 + 8 * (v79 >> 6) + 64) |= 1 << v79;
          sub_10011C544(v104, *(v83 + 48) + *(v98 + 72) * v79);
          v86 = v107;
          *(*(v107 + 56) + 8 * v79) = v63;
          v87 = *(v86 + 16);
          v88 = __OFADD__(v87, 1);
          v89 = v87 + 1;
          if (v88)
          {
            goto LABEL_52;
          }

          *(v86 + 16) = v89;
        }

        sub_10011C5A8(v104);
        v54 = v103;
        sub_10011C5A8(v103);
        v51 = v96;
      }

      if (++v53 == v52)
      {
        v90 = v93;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v90 = v40;
LABEL_46:
    sub_10000D170(v90, v94);

    return v107;
  }

  return result;
}

uint64_t sub_10011AC70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for AccountIdentity.DSID();
  v10 = sub_100003724(v9);
  v82 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v81 = v15 - v14;
  v80 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v16 = sub_10000307C(v80);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000306C();
  sub_1000072D8();
  v19 = type metadata accessor for CharacterSet();
  v20 = sub_100003724(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10000306C();
  v27 = v26 - v25;
  v85 = 44;
  v86 = 0xE100000000000000;
  v84 = &v85;

  v28 = sub_10011BF54(0x7FFFFFFFFFFFFFFFLL, 1, sub_10011D0A8, v83, a1, a2);
  v29 = v28;
  if (v28[2] != 4)
  {
    v61 = sub_100099DF4(&qword_1002DD3D0, &qword_100237728);
    sub_100002728(a4, 1, 1, v61);
  }

  v74 = v9;
  v75 = v4;
  v76 = a3;
  v30 = v28[4];
  v31 = v28[5];
  v32 = v28[6];
  v33 = v28[7];

  sub_1000050CC();
  static String._fromSubstring(_:)();
  sub_10000A574();
  v85 = v30;
  v86 = v4;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000BBBB0();
  v34 = StringProtocol.trimmingCharacters(in:)();
  v36 = v35;
  v37 = *(v22 + 8);
  v37(v27, v19);

  if (v29[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  v73 = v34;
  v79 = v36;
  v39 = v29[8];
  v40 = v29[9];
  v41 = v29[10];
  v42 = v29[11];

  sub_1000050CC();
  static String._fromSubstring(_:)();
  sub_10000A574();
  v85 = v39;
  v86 = v41;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10011D134();
  v43 = sub_100013CA0();
  (v37)(v43);

  if (v29[2] < 3uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v72 = v40;
  v78 = v39;
  v44 = v29[12];
  v45 = v29[13];
  v46 = v29[14];
  v47 = v29[15];

  sub_1000050CC();
  static String._fromSubstring(_:)();
  sub_10000A574();
  v85 = v44;
  v86 = v46;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10011D134();
  v48 = sub_100013CA0();
  (v37)(v48);

  if (v29[2] < 4uLL)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v77 = a4;
  v49 = v29[16];
  v50 = v29[17];
  v51 = v29[18];
  v52 = v29[19];

  v53 = static String._fromSubstring(_:)();
  v55 = v54;

  v85 = v53;
  v86 = v55;
  static CharacterSet.whitespacesAndNewlines.getter();
  v56 = sub_10011D134();
  v58 = v57;
  v37(v27, v19);

  v59 = sub_1000B90C4();

  if (v59 == 3)
  {
    v60 = sub_100099DF4(&qword_1002DD3D0, &qword_100237728);
    sub_100002728(v77, 1, 1, v60);
  }

  AccountIdentity.dsid.getter();
  sub_10011C604(&qword_1002DD3E0, &type metadata accessor for AccountIdentity.DSID);
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  v64 = v63;
  (*(v82 + 8))(v81, v74);
  v65 = *(v80 + 32);
  v66 = type metadata accessor for AccountIdentity();
  sub_10000307C(v66);
  (*(v67 + 16))(v75 + v65, v76);
  *v75 = v73;
  *(v75 + 8) = v79;
  *(v75 + 16) = v59;
  *(v75 + 24) = v72;
  *(v75 + 32) = v78;
  *(v75 + 40) = v62;
  *(v75 + 48) = v64;
  v68 = sub_100099DF4(&qword_1002DD3D0, &qword_100237728);
  v69 = *(v68 + 48);
  sub_10011C544(v75, v77);
  sub_10011B9F4(v56, v58);
  v71 = v70;

  sub_10011C5A8(v75);
  *(v77 + v69) = v71;
  return sub_100002728(v77, 0, 1, v68);
}

uint64_t sub_10011B1E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for UUID();
  v4 = sub_100003724(v3);
  v89 = v5;
  v90 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v88 = v9 - v8;
  v10 = type metadata accessor for Date();
  v11 = sub_100003724(v10);
  v96 = v12;
  v97 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v17 = v16 - v15;
  v18 = type metadata accessor for AccountIdentity();
  v19 = sub_100003724(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v82 - v28;
  v30 = [a1 accountIdentity];
  AccountIdentity.init(amsAccountID:)();
  v31 = [a1 afterDelay];
  v32 = v31;
  if (v31)
  {
    [v31 doubleValue];
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  static Date.now.getter();
  v95 = v21;
  v87 = *(v21 + 16);
  v87(v25, v29, v18);
  sub_100099DF4(&qword_1002DD3A0, &qword_100237700);
  v100 = v18;
  v35 = sub_100099DF4(&qword_1002DD3A8, &qword_100237708);
  v36 = *(*(v35 - 8) + 72);
  v37 = *(*(v35 - 8) + 80);
  v94 = v17;
  v38 = (v37 + 32) & ~v37;
  v98 = swift_allocObject();
  v86 = xmmword_10022E400;
  *(v98 + 16) = xmmword_10022E400;
  v39 = [a1 datasetNamespace];
  v92 = v25;
  v40 = v39;
  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = [a1 idSource];
  v99 = v29;
  v44 = v43;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = v93;
  v46 = sub_10011B81C();
  v93 = v45;
  if (v45)
  {

    v47 = *(v95 + 8);
    v48 = v100;
    v47(v92, v100);
    (*(v96 + 8))(v94, v97);
    v47(v99, v48);
    *(v98 + 16) = 0;
    swift_setDeallocating();
    return sub_10011C2FC();
  }

  else
  {
    v50 = v46;
    v84 = v32 == 0;

    v51 = v98 + v38;
    v83 = *(v35 + 48);
    v52 = [a1 idDomain];
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = [a1 identifier];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    v87((v51 + *(v59 + 32)), v99, v100);
    *v51 = v85;
    *(v51 + 8) = v42;
    *(v51 + 16) = v50;
    *(v51 + 24) = v82;
    *(v51 + 32) = v54;
    *(v51 + 40) = v56;
    *(v51 + 48) = v58;
    sub_100099DF4(&qword_1002DD3B0, &unk_100237710);
    v60 = swift_allocObject();
    *(v60 + 16) = v86;
    v61 = [a1 datasetName];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    *(v60 + 32) = v62;
    *(v60 + 40) = v64;
    *(v51 + v83) = v60;
    sub_100099DF4(&qword_1002DC7C8, &qword_100236CA0);
    sub_100007C30();
    sub_10011C604(v65, v66);
    v67 = Dictionary.init(dictionaryLiteral:)();
    v68 = sub_10011C418(a1);
    v70 = v69;
    v71 = v88;
    UUID.init()();
    v72 = UUID.uuidString.getter();
    v74 = v73;
    (*(v89 + 8))(v71, v90);
    v75 = v95;
    v76 = v100;
    (*(v95 + 8))(v99, v100);
    v77 = v91;
    (*(v96 + 32))(v91, v94, v97);
    v78 = type metadata accessor for TSDataSyncExternalEvent(0);
    result = (*(v75 + 32))(v77 + v78[5], v92, v76);
    v79 = v77 + v78[6];
    *v79 = v34;
    *(v79 + 8) = v84;
    *(v77 + v78[7]) = 12;
    *(v77 + v78[8]) = v67;
    v80 = (v77 + v78[9]);
    *v80 = v68;
    v80[1] = v70;
    v81 = (v77 + v78[10]);
    *v81 = v72;
    v81[1] = v74;
  }

  return result;
}

uint64_t sub_10011B81C()
{
  String.lowercased()();
  sub_10000833C();
  v1 = v1 && v0 == 0xE400000000000000;
  if (v1)
  {

    return 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10000AFF8();
    sub_10000B840();
    sub_10000833C();
    if (v1 && v2 == 0xE800000000000000)
    {
    }

    else
    {
      sub_1000028B0();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10000AFF8();
    }

    return 2;
  }
}

void sub_10011B9F4(uint64_t a1, unint64_t a2)
{
  v62[0] = 124;
  v62[1] = 0xE100000000000000;
  v61 = v62;

  v5 = sub_10011BF54(0x7FFFFFFFFFFFFFFFLL, 1, sub_10011D0A8, v60, a1, a2);
  v6 = v5;
  v7 = v5[2];
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 4;
    v10 = _swiftEmptyArrayStorage;
    v53 = v5[2];
    v54 = v5;
    v55 = v5 + 4;
    while (v8 < v6[2])
    {
      v11 = &v9[4 * v8];
      v12 = *v11;
      v13 = v11[1] >> 14;
      if (v13 != *v11 >> 14)
      {
        v57 = v8;
        v58 = v10;
        v15 = v11[2];
        v14 = v11[3];

        v16 = v12;
        v59 = _swiftEmptyArrayStorage;
LABEL_6:
        for (i = v16; ; i = Substring.index(after:)())
        {
          v18 = i >> 14;
          v19 = v16 >> 14;
          if (i >> 14 == v13)
          {
            break;
          }

          sub_10000BA6C();
          v2 = v15;
          v6 = v14;
          if (Substring.subscript.getter() == 58 && v20 == 0xE100000000000000)
          {

LABEL_15:
            if (v19 != v18)
            {
              if (v18 < v19)
              {
                goto LABEL_45;
              }

              v23 = Substring.subscript.getter();
              v56 = v24;
              v26 = v25;
              v28 = v27;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = v59[2];
                sub_10000657C();
                sub_10013BC44();
                v59 = v32;
              }

              v29 = v59[2];
              if (v29 >= v59[3] >> 1)
              {
                sub_10000AB10();
                v59 = v33;
              }

              v59[2] = v29 + 1;
              v30 = &v59[4 * v29];
              v30[4] = v23;
              v30[5] = v56;
              v30[6] = v26;
              v30[7] = v28;
              v14 = v6;
            }

            v15 = v2;
            sub_10000BA6C();
            v16 = Substring.index(after:)();
            goto LABEL_6;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_15;
          }

          sub_10000BA6C();
          v15 = v2;
        }

        if (v19 == v13)
        {

          v10 = v58;
          v34 = v59[2];
          v7 = v53;
          v6 = v54;
          v8 = v57;
        }

        else
        {
          if (v13 < v19)
          {
            goto LABEL_46;
          }

          v35 = Substring.subscript.getter();
          sub_1000072C8();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = v59[2];
            sub_10000657C();
            sub_10013BC44();
            v59 = v51;
          }

          v7 = v53;
          v8 = v57;
          v36 = v59[2];
          v34 = v36 + 1;
          if (v36 >= v59[3] >> 1)
          {
            sub_10000AB10();
            v59 = v52;
          }

          v59[2] = v34;
          v37 = &v59[4 * v36];
          v37[4] = v35;
          v37[5] = v2;
          v37[6] = v6;
          v37[7] = i;
          v6 = v54;
          v10 = v58;
        }

        if (v34 == 2)
        {
          v38 = v59[4];
          v39 = v59[5];
          v40 = v59[6];
          v41 = v59[7];

          sub_1000050CC();
          v42 = static String._fromSubstring(_:)();
          v44 = v43;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = v10[2];
            sub_10000657C();
            sub_10013C0F0();
            v10 = v48;
          }

          v45 = v10[2];
          v9 = v55;
          if (v45 >= v10[3] >> 1)
          {
            sub_10013C0F0();
            v9 = v55;
            v10 = v49;
          }

          v10[2] = v45 + 1;
          v46 = &v10[2 * v45];
          v46[4] = v42;
          v46[5] = v44;
        }

        else
        {

          v9 = v55;
        }
      }

      if (++v8 == v7)
      {

        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_41:
    if (!v10[2])
    {
    }
  }
}

uint64_t sub_10011BE0C(uint64_t a1)
{
  v2 = sub_10011C6B0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10011BE48(uint64_t a1)
{
  v2 = sub_10011C6B0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10011BEA0(uint64_t a1)
{
  v2 = sub_10011CA64();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10011BEDC(uint64_t a1)
{
  v2 = sub_10011CA64();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

void *sub_10011BF54(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v6 = String.subscript.getter();
    sub_1000072C8();

    sub_10013BC44();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_10013BC44();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = _swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      sub_100007688();
      v17 = String.subscript.getter();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      sub_100007688();
      v16 = String.index(after:)();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = String.subscript.getter();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v43[2];
      sub_10000657C();
      sub_10013BC44();
      v43 = v28;
    }

    v12 = v43[2];
    v11 = v12 + 1;
    if (v12 >= v43[3] >> 1)
    {
      sub_10013BC44();
      v43 = v29;
    }

    v43[2] = v11;
    v26 = &v43[4 * v12];
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    sub_100007688();
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && v43[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        sub_1000072C8();

        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      sub_10000657C();
      sub_10013BC44();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011C2B8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10011C2FC()
{
  v1 = *(*(sub_100099DF4(&qword_1002DD3A8, &qword_100237708) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10011C380(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = 0, (v5 & 1) != 0))
  {
    memcpy(__dst, a1 + 2, 0x62uLL);
    memcpy(v8, a2 + 2, 0x62uLL);
    v6 = static AvroSchema.== infix(_:_:)(__dst, v8);
  }

  return v6 & 1;
}

uint64_t sub_10011C418(void *a1)
{
  v1 = [a1 idSuffix];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10011C47C()
{
  result = qword_1002DD3B8;
  if (!qword_1002DD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD3B8);
  }

  return result;
}

unint64_t sub_10011C4D0()
{
  result = qword_1002DD3C8;
  if (!qword_1002DD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD3C8);
  }

  return result;
}

uint64_t sub_10011C544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011C5A8(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011C604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10011C664(uint64_t result, int a2, int a3)
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

      return sub_100005254(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return sub_100005254(result, a2);
    }
  }

  return result;
}

unint64_t sub_10011C6B0()
{
  result = qword_1002DD3F0;
  if (!qword_1002DD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD3F0);
  }

  return result;
}

unint64_t sub_10011C708()
{
  result = qword_1002DD3F8;
  if (!qword_1002DD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD3F8);
  }

  return result;
}

unint64_t sub_10011C760()
{
  result = qword_1002DD400;
  if (!qword_1002DD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD400);
  }

  return result;
}

unint64_t sub_10011C7B8()
{
  result = qword_1002DD408;
  if (!qword_1002DD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD408);
  }

  return result;
}

unint64_t sub_10011C810()
{
  result = qword_1002DD410;
  if (!qword_1002DD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD410);
  }

  return result;
}

unint64_t sub_10011C868()
{
  result = qword_1002DD418;
  if (!qword_1002DD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD418);
  }

  return result;
}

unint64_t sub_10011C8C0()
{
  result = qword_1002DD420;
  if (!qword_1002DD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD420);
  }

  return result;
}

unint64_t sub_10011C914()
{
  result = qword_1002DD430;
  if (!qword_1002DD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD430);
  }

  return result;
}

unint64_t sub_10011C968()
{
  result = qword_1002DD438;
  if (!qword_1002DD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD438);
  }

  return result;
}

unint64_t sub_10011C9BC()
{
  result = qword_1002DD448;
  if (!qword_1002DD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD448);
  }

  return result;
}

unint64_t sub_10011CA10()
{
  result = qword_1002DD450;
  if (!qword_1002DD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD450);
  }

  return result;
}

unint64_t sub_10011CA64()
{
  result = qword_1002DD458;
  if (!qword_1002DD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD458);
  }

  return result;
}

uint64_t sub_10011CAC4(uint64_t result, int a2, int a3)
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

      return sub_100005254(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_100005254(result, a2);
    }
  }

  return result;
}

unint64_t sub_10011CB08()
{
  result = qword_1002DD460;
  if (!qword_1002DD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD460);
  }

  return result;
}

unint64_t sub_10011CB60()
{
  result = qword_1002DD468;
  if (!qword_1002DD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD468);
  }

  return result;
}

unint64_t sub_10011CBB8()
{
  result = qword_1002DD470;
  if (!qword_1002DD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD470);
  }

  return result;
}

unint64_t sub_10011CC10()
{
  result = qword_1002DD478;
  if (!qword_1002DD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD478);
  }

  return result;
}

unint64_t sub_10011CC64()
{
  result = qword_1002DD488;
  if (!qword_1002DD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD488);
  }

  return result;
}

unint64_t sub_10011CCB8()
{
  result = qword_1002DD490;
  if (!qword_1002DD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD490);
  }

  return result;
}

unint64_t sub_10011CD0C()
{
  result = qword_1002DD4A0;
  if (!qword_1002DD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4A0);
  }

  return result;
}

_BYTE *sub_10011CD60(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10011CE38(_BYTE *result, int a2, int a3)
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

unint64_t sub_10011CEE4()
{
  result = qword_1002DD4A8;
  if (!qword_1002DD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4A8);
  }

  return result;
}

unint64_t sub_10011CF3C()
{
  result = qword_1002DD4B0;
  if (!qword_1002DD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4B0);
  }

  return result;
}

unint64_t sub_10011CF94()
{
  result = qword_1002DD4B8;
  if (!qword_1002DD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4B8);
  }

  return result;
}

unint64_t sub_10011CFEC()
{
  result = qword_1002DD4C0;
  if (!qword_1002DD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4C0);
  }

  return result;
}

unint64_t sub_10011D040()
{
  result = qword_1002DD4C8;
  if (!qword_1002DD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4C8);
  }

  return result;
}

uint64_t sub_10011D134()
{
  v2 = *(v0 - 152);

  return StringProtocol.trimmingCharacters(in:)();
}

uint64_t sub_10011D150(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10011D190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10011D1F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C626174 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616261746164 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10011D348(char a1)
{
  result = 0x656C626174;
  switch(a1)
  {
    case 1:
      result = 0x6573616261746164;
      break;
    case 2:
      result = 0x69746E6564657263;
      break;
    case 3:
      result = 0x444972657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10011D3C8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10011D490(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DD4E8, &qword_1002380D0);
  v6 = sub_100003724(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10011DB1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v23[15] = 0;
  sub_10000801C();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v23[14] = 1;
    sub_10000801C();
    v18 = v3[4];
    v19 = v3[5];
    v23[13] = 2;
    sub_10000801C();
    v20 = v3[6];
    v21 = v3[7];
    v23[12] = 3;
    sub_10000801C();
  }

  return (*(v8 + 8))(v12, v5);
}