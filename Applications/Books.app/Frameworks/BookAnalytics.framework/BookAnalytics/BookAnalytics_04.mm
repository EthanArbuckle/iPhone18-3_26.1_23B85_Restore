uint64_t sub_5B518()
{
  if (*v0)
  {
    return 0x74614464656D6974;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_5B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_5B634(uint64_t a1)
{
  v2 = sub_5B8AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5B670(uint64_t a1)
{
  v2 = sub_5B8AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GetStartedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2808E8, &qword_1EAC10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_5B8AC();
  sub_1E1E00();
  v11[15] = 0;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
  sub_1E1CF0();
  if (!v1)
  {
    v9 = *(type metadata accessor for GetStartedViewEvent.Model(0) + 20);
    v11[14] = 1;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_5B8AC()
{
  result = qword_2808F0;
  if (!qword_2808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808F0);
  }

  return result;
}

uint64_t GetStartedViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E11A0();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E1150();
  v28 = *(v32 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v32);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3D68(&qword_2808F8, &qword_1EAC18);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v33);
  v11 = &v24 - v10;
  StartedView = type metadata accessor for GetStartedViewEvent.Model(0);
  v13 = *(*(StartedView - 8) + 64);
  __chkstk_darwin(StartedView);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_5B8AC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v25 = StartedView;
  v17 = v15;
  v19 = v28;
  v18 = v29;
  v35 = 0;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v20 = v30;
  sub_1E1C20();
  v21 = *(v19 + 32);
  v24 = v17;
  v21(v17, v20, v32);
  v34 = 1;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v31 + 8))(v11, v33);
  v22 = v24;
  (*(v26 + 32))(v24 + *(v25 + 20), v6, v18);
  sub_5BD20(v22, v27);
  sub_4E48(a1);
  return sub_5BD84(v22);
}

uint64_t sub_5BD20(uint64_t a1, uint64_t a2)
{
  StartedView = type metadata accessor for GetStartedViewEvent.Model(0);
  (*(*(StartedView - 8) + 16))(a2, a1, StartedView);
  return a2;
}

uint64_t sub_5BD84(uint64_t a1)
{
  StartedView = type metadata accessor for GetStartedViewEvent.Model(0);
  (*(*(StartedView - 8) + 8))(a1, StartedView);
  return a1;
}

uint64_t sub_5BE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_5BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_5C088(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_5C1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E11A0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_5C2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E1150();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E11A0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_5C408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_5C4AC()
{
  result = qword_280A20;
  if (!qword_280A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A20);
  }

  return result;
}

unint64_t sub_5C504()
{
  result = qword_280A28;
  if (!qword_280A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A28);
  }

  return result;
}

unint64_t sub_5C55C()
{
  result = qword_280A30;
  if (!qword_280A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A30);
  }

  return result;
}

uint64_t CollectionSummaryData.collectionSummary.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_5C5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1E1D30() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_5C688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1E1D30();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v4 += 6;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_5C744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 24)
    {
      v7 = *(a1 + i + 48);
      v8 = *(a1 + i + 52);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 52);
      if (*(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40))
      {
        if (v7 != v9)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1E1D30();
        result = 0;
        if ((v12 & 1) == 0 || v7 != v9)
        {
          return result;
        }
      }

      if (v8 <= 2)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v14 = 0xE600000000000000;
            v15 = 0x746E65636572;
            if (v10 <= 2)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v14 = 0xE800000000000000;
            v15 = 0x676E69646E657274;
            if (v10 <= 2)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v14 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E75;
          if (v10 <= 2)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_39;
      }

      if (v8 <= 4)
      {
        break;
      }

      if (v8 == 5)
      {
        v16 = 0x636572726F63;
LABEL_38:
        v15 = v16 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
        v14 = 0xED00006D72655464;
        if (v10 <= 2)
        {
          goto LABEL_27;
        }

        goto LABEL_39;
      }

      v15 = 0xD000000000000014;
      v14 = 0x8000000000212960;
      if (v10 <= 2)
      {
LABEL_27:
        if (v10)
        {
          if (v10 == 1)
          {
            v17 = 0xE600000000000000;
            if (v15 != 0x746E65636572)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v17 = 0xE800000000000000;
            if (v15 != 0x676E69646E657274)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v17 = 0xE700000000000000;
          if (v15 != 0x6E776F6E6B6E75)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_51;
      }

LABEL_39:
      if (v10 <= 4)
      {
        if (v10 == 3)
        {
          v17 = 0xE700000000000000;
          if (v15 != 0x64656863746566)
          {
            goto LABEL_5;
          }

          goto LABEL_51;
        }

        v18 = 0x736567677573;
        goto LABEL_48;
      }

      if (v10 == 5)
      {
        v18 = 0x636572726F63;
LABEL_48:
        v17 = 0xED00006D72655464;
        if (v15 != (v18 & 0xFFFFFFFFFFFFLL | 0x6574000000000000))
        {
          goto LABEL_5;
        }

        goto LABEL_51;
      }

      v17 = 0x8000000000212960;
      if (v15 != 0xD000000000000014)
      {
        goto LABEL_5;
      }

LABEL_51:
      if (v14 != v17)
      {
LABEL_5:
        v6 = sub_1E1D30();

        if ((v6 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      if (!--v2)
      {
        return 1;
      }
    }

    if (v8 == 3)
    {
      v14 = 0xE700000000000000;
      v15 = 0x64656863746566;
      if (v10 <= 2)
      {
        goto LABEL_27;
      }

      goto LABEL_39;
    }

    v16 = 0x736567677573;
    goto LABEL_38;
  }

  return 1;
}

uint64_t sub_5CA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = 0x6F6F626F69647561;
    v5 = 0x6E776F6E6B6E75;
    while (1)
    {
      v7 = v5;
      v8 = v4;
      v9 = *(a1 + v3 + 48);
      v10 = *(a1 + v3 + 64);
      v34 = *(a1 + v3 + 80);
      v35 = *(a1 + v3 + 56);
      v11 = *(a2 + v3 + 48);
      v36 = *(a2 + v3 + 56);
      v12 = *(a2 + v3 + 64);
      v13 = *(a2 + v3 + 72);
      v31 = v13;
      v32 = *(a1 + v3 + 72);
      v33 = *(a2 + v3 + 80);
      if ((*(a1 + v3 + 32) != *(a2 + v3 + 32) || *(a1 + v3 + 40) != *(a2 + v3 + 40)) && (sub_1E1D30() & 1) == 0)
      {
        break;
      }

      if ((v9 != v11 || v35 != v36) && (sub_1E1D30() & 1) == 0)
      {
        break;
      }

      if (v10 <= 2)
      {
        if (v10 == 1)
        {
          v16 = 1802465122;
        }

        else
        {
          v16 = v8;
        }

        v17 = 0xE90000000000006BLL;
        if (v10 == 1)
        {
          v17 = 0xE400000000000000;
        }

        v18 = v10 == 0;
        v4 = v8;
        v5 = v7;
        if (v18)
        {
          v14 = v7;
        }

        else
        {
          v14 = v16;
        }

        if (v18)
        {
          v15 = 0xE700000000000000;
        }

        else
        {
          v15 = v17;
        }
      }

      else
      {
        if (v10 > 4)
        {
          if (v10 == 5)
          {
            v15 = 0xE300000000000000;
            v14 = 4276809;
          }

          else
          {
            v14 = 0x694773656E757469;
            v15 = 0xEE00647261437466;
          }
        }

        else
        {
          if (v10 == 3)
          {
            v14 = 4605008;
          }

          else
          {
            v14 = 5527636;
          }

          v15 = 0xE300000000000000;
        }

        v4 = v8;
        v5 = v7;
      }

      v19 = 0x694773656E757469;
      if (v12 == 5)
      {
        v19 = 4276809;
      }

      v20 = 0xEE00647261437466;
      if (v12 == 5)
      {
        v20 = 0xE300000000000000;
      }

      v21 = 5527636;
      if (v12 == 3)
      {
        v21 = 4605008;
      }

      if (v12 <= 4)
      {
        v19 = v21;
        v20 = 0xE300000000000000;
      }

      if (v12 == 1)
      {
        v22 = 1802465122;
      }

      else
      {
        v22 = v4;
      }

      if (v12 == 1)
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE90000000000006BLL;
      }

      if (!v12)
      {
        v22 = v5;
        v23 = 0xE700000000000000;
      }

      if (v12 <= 2)
      {
        v24 = v22;
      }

      else
      {
        v24 = v19;
      }

      if (v12 <= 2)
      {
        v25 = v23;
      }

      else
      {
        v25 = v20;
      }

      if (v14 == v24 && v15 == v25)
      {

        v26 = v33;
      }

      else
      {
        v27 = sub_1E1D30();

        v26 = v33;

        if ((v27 & 1) == 0)
        {

          return 0;
        }
      }

      if (v32 == v31 && v34 == v26)
      {
      }

      else
      {
        v6 = sub_1E1D30();

        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_5CE6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    v13 = _s13BookAnalytics25RemoteConfigNamespaceDataV2eeoiySbAC_ACtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_5E410(v24, v15);
    sub_5E410(v27, v15);
    sub_5E46C(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_5E46C(v31);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_5CF88(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    result = *v6;
    v7 = v6[1];
    v8 = v6[2];
    v9 = (v5 + 24 * v3);
    v10 = v9[2];
    if (result != *v9 || v7 != v9[1])
    {
      result = sub_1E1D30();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(v8 + 16);
    if (v12 != *(v10 + 16))
    {
      return 0;
    }

    if (v12)
    {
      v13 = v8 == v10;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = (v8 + 32);
      v15 = (v10 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          return 0;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_5D094(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_5D0F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v16 = a1;
      while (1)
      {
        v5 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v7 = *(a1 + v4 + 64);
        v28 = *(a1 + v4 + 72);
        v29 = *(a1 + v4 + 80);
        v26 = *(a1 + v4 + 96);
        v27 = *(a1 + v4 + 88);
        v20 = *(a1 + v4 + 120);
        v21 = *(a1 + v4 + 112);
        v8 = *(v3 + v4 + 48);
        v9 = *(v3 + v4 + 56);
        v10 = *(v3 + v4 + 64);
        v12 = *(v3 + v4 + 72);
        v11 = *(v3 + v4 + 80);
        v24 = *(v3 + v4 + 96);
        v25 = *(v3 + v4 + 88);
        v22 = *(v3 + v4 + 104);
        v23 = *(a1 + v4 + 104);
        v18 = *(v3 + v4 + 120);
        v19 = *(v3 + v4 + 112);
        if (*(a1 + v4 + 32) != *(v3 + v4 + 32))
        {
          goto LABEL_11;
        }

        if (*(a1 + v4 + 40) == *(v3 + v4 + 40))
        {
          if (v5 != v8)
          {
            return 0;
          }
        }

        else
        {
LABEL_11:
          v13 = sub_1E1D30();
          result = 0;
          if ((v13 & 1) == 0 || v5 != v8)
          {
            return result;
          }
        }

        if ((v6 != v9 || v7 != v10) && (sub_1E1D30() & 1) == 0 || (v28 != v12 || v29 != v11) && (sub_1E1D30() & 1) == 0)
        {
          return 0;
        }

        if (v27 == v25 && v26 == v24)
        {
          if (v23 != v22)
          {
            return 0;
          }
        }

        else
        {
          v15 = sub_1E1D30();
          result = 0;
          if ((v15 & 1) == 0 || v23 != v22)
          {
            return result;
          }
        }

        if ((v21 != v19 || v20 != v18) && (sub_1E1D30() & 1) == 0)
        {
          return 0;
        }

        v4 += 96;
        --v2;
        a1 = v16;
        v3 = a2;
        if (!v2)
        {
          return 1;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_5D2E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v24 = v2;
  v25 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v18 = *v5;
    v19 = v8;
    v20[0] = v5[2];
    *&v20[1] = *(v5 + 6);
    v9 = v6[1];
    v21 = *v6;
    v10 = v6[2];
    v22 = v9;
    *v23 = v10;
    *&v23[16] = *(v6 + 6);
    if (v18 != v21 && (sub_1E1D30() & 1) == 0 || v19 != v22 && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

    if (LOBYTE(v20[0]) <= 2u)
    {
      if (LOBYTE(v20[0]))
      {
        if (LOBYTE(v20[0]) == 1)
        {
          v11 = 0xE400000000000000;
          v12 = 1802465122;
        }

        else
        {
          v12 = 0x6F6F626F69647561;
          v11 = 0xE90000000000006BLL;
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        v12 = 0x6E776F6E6B6E75;
      }
    }

    else if (LOBYTE(v20[0]) > 4u)
    {
      if (LOBYTE(v20[0]) == 5)
      {
        v11 = 0xE300000000000000;
        v12 = 4276809;
      }

      else
      {
        v12 = 0x694773656E757469;
        v11 = 0xEE00647261437466;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      v12 = LOBYTE(v20[0]) == 3 ? 4605008 : 5527636;
    }

    if (v23[0] <= 2u)
    {
      if (v23[0])
      {
        if (v23[0] == 1)
        {
          v13 = 0xE400000000000000;
          if (v12 != 1802465122)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v13 = 0xE90000000000006BLL;
          if (v12 != 0x6F6F626F69647561)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v12 != 0x6E776F6E6B6E75)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v23[0] > 4u)
    {
      if (v23[0] == 5)
      {
        v13 = 0xE300000000000000;
        if (v12 != 4276809)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xEE00647261437466;
        if (v12 != 0x694773656E757469)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v23[0] == 3)
      {
        if (v12 != 4605008)
        {
          goto LABEL_43;
        }
      }

      else if (v12 != 5527636)
      {
        goto LABEL_43;
      }
    }

    if (v11 == v13)
    {
      sub_5E2B0(&v18, v17);
      sub_5E2B0(&v21, v17);

      goto LABEL_44;
    }

LABEL_43:
    v14 = sub_1E1D30();
    sub_5E2B0(&v18, v17);
    sub_5E2B0(&v21, v17);

    if ((v14 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_44:
    if (*(v20 + 1) != *&v23[4])
    {
LABEL_52:
      sub_5E30C(&v21);
      sub_5E30C(&v18);
      return 0;
    }

    if (*(v20 + 8) == *&v23[8])
    {
      sub_5E30C(&v21);
      sub_5E30C(&v18);
    }

    else
    {
      v15 = sub_1E1D30();
      sub_5E30C(&v21);
      sub_5E30C(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 56);
    v5 = (v5 + 56);
  }

  return 1;
}

uint64_t sub_5D680(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1E1D30() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_1E1D30() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1E1D30() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_5D7A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v23 = v2;
  v24 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v17 = *v5;
    v18 = v8;
    *v19 = v5[2];
    *&v19[9] = *(v5 + 41);
    v9 = v6[1];
    v20 = *v6;
    v21 = v9;
    *v22 = v6[2];
    *&v22[9] = *(v6 + 41);
    if (v17 != v20 && (sub_1E1D30() & 1) == 0)
    {
      break;
    }

    if (v18 != v21 && (sub_1E1D30() & 1) == 0)
    {
      break;
    }

    if (v19[0] <= 2u)
    {
      if (v19[0])
      {
        if (v19[0] == 1)
        {
          v10 = 0xE400000000000000;
          v11 = 1802465122;
        }

        else
        {
          v11 = 0x6F6F626F69647561;
          v10 = 0xE90000000000006BLL;
        }
      }

      else
      {
        v10 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E75;
      }
    }

    else if (v19[0] > 4u)
    {
      if (v19[0] == 5)
      {
        v10 = 0xE300000000000000;
        v11 = 4276809;
      }

      else
      {
        v11 = 0x694773656E757469;
        v10 = 0xEE00647261437466;
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v19[0] == 3)
      {
        v11 = 4605008;
      }

      else
      {
        v11 = 5527636;
      }
    }

    if (v22[0] <= 2u)
    {
      if (v22[0])
      {
        if (v22[0] == 1)
        {
          v12 = 0xE400000000000000;
          if (v11 != 1802465122)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v12 = 0xE90000000000006BLL;
          if (v11 != 0x6F6F626F69647561)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v22[0] > 4u)
    {
      if (v22[0] == 5)
      {
        v12 = 0xE300000000000000;
        if (v11 != 4276809)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v12 = 0xEE00647261437466;
        if (v11 != 0x694773656E757469)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v22[0] == 3)
      {
        if (v11 != 4605008)
        {
          goto LABEL_43;
        }
      }

      else if (v11 != 5527636)
      {
        goto LABEL_43;
      }
    }

    if (v10 == v12)
    {
      sub_5E360(&v17, v16);
      sub_5E360(&v20, v16);

      goto LABEL_44;
    }

LABEL_43:
    v13 = sub_1E1D30();
    sub_5E360(&v17, v16);
    sub_5E360(&v20, v16);

    if ((v13 & 1) == 0)
    {
      sub_5E3BC(&v20);
      sub_5E3BC(&v17);
      return 0;
    }

LABEL_44:
    if (*&v19[8] == *&v22[8])
    {
      sub_5E3BC(&v20);
      sub_5E3BC(&v17);
    }

    else
    {
      v14 = sub_1E1D30();
      sub_5E3BC(&v20);
      sub_5E3BC(&v17);
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    if (v19[24] != v22[24])
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

    v5 += 4;
    v6 += 4;
  }

  return 0;
}

uint64_t sub_5DB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000214180 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E1D30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_5DBE0(uint64_t a1)
{
  v2 = sub_5DDFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5DC1C(uint64_t a1)
{
  v2 = sub_5DDFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionSummaryData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280A38, &qword_1EAE20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_5DDFC();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_280A48, &qword_1EAE28);
  sub_5E048(&qword_280A50, sub_66E8);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_5DDFC()
{
  result = qword_280A40;
  if (!qword_280A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A40);
  }

  return result;
}

uint64_t sub_5DE50(uint64_t *a1, uint64_t *a2)
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

uint64_t CollectionSummaryData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_280A58, &qword_1EAE30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_5DDFC();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_280A48, &qword_1EAE28);
    sub_5E048(&qword_280A60, sub_6690);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

uint64_t sub_5E048(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_280A48, &qword_1EAE28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5E104(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_5E14C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_5E1AC()
{
  result = qword_280A68;
  if (!qword_280A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A68);
  }

  return result;
}

unint64_t sub_5E204()
{
  result = qword_280A70;
  if (!qword_280A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A70);
  }

  return result;
}

unint64_t sub_5E25C()
{
  result = qword_280A78;
  if (!qword_280A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A78);
  }

  return result;
}

BookAnalytics::ViewAction_optional __swiftcall ViewAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F988;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ViewAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 6579297;
  if (v1 != 5)
  {
    v3 = 0x65766F6D6572;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x63656C6553626174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x6570697773;
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

unint64_t sub_5E60C()
{
  result = qword_280A80;
  if (!qword_280A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A80);
  }

  return result;
}

uint64_t sub_5E66C()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_5E790(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 6579297;
  if (v2 != 5)
  {
    v6 = 0x65766F6D6572;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000000002128B0;
  if (v2 == 3)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x63656C6553626174;
  }

  if (v2 != 3)
  {
    v7 = 0xEC0000006E6F6974;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000015;
  v10 = 0x8000000000212890;
  if (v2 != 1)
  {
    v9 = 0x6570697773;
    v10 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_5E930()
{
  result = qword_280A88;
  if (!qword_280A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A88);
  }

  return result;
}

uint64_t UserEventStorageData.productCardViewCount.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t UserEventStorageData.productCardViewCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.readingSampleCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t UserEventStorageData.readingSampleCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.previewAudiobookCount.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t UserEventStorageData.previewAudiobookCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.readCount.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t UserEventStorageData.readCount.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.playCount.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t UserEventStorageData.playCount.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.addToWantToReadCount.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t UserEventStorageData.addToWantToReadCount.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.sampleBooksDownloadedCount.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t UserEventStorageData.sampleBooksDownloadedCount.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.ratedBookCount.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t UserEventStorageData.ratedBookCount.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.likedCount.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t UserEventStorageData.likedCount.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.shareCount.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t UserEventStorageData.shareCount.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.totalContentExposedCount.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t UserEventStorageData.totalContentExposedCount.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.unLikedEventCount.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t UserEventStorageData.unLikedEventCount.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.hiddenEventCount.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t UserEventStorageData.hiddenEventCount.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.removefromWTRCount.getter()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t UserEventStorageData.removefromWTRCount.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.deleteSampleCount.getter()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t UserEventStorageData.deleteSampleCount.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.lastSyncFromCloudTimestamp.getter()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t UserEventStorageData.lastSyncFromCloudTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.lastSyncFromCloudError.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t UserEventStorageData.lastSyncFromCloudError.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 264);

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t UserEventStorageData.lastSyncErrorFromCloudTimestamp.getter()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t UserEventStorageData.lastSyncErrorFromCloudTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.lastSyncToCloudTimestamp.getter()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  return result;
}

uint64_t UserEventStorageData.lastSyncToCloudTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t UserEventStorageData.lastSyncToCloudError.getter()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return v1;
}

uint64_t UserEventStorageData.lastSyncToCloudError.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 312);

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return result;
}

uint64_t UserEventStorageData.lastSyncToFromCloudTimestamp.getter()
{
  result = *(v0 + 320);
  v2 = *(v0 + 328);
  return result;
}

uint64_t UserEventStorageData.lastSyncToFromCloudTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 320) = result;
  *(v2 + 328) = a2 & 1;
  return result;
}

void __swiftcall UserEventStorageData.init(productCardViewCount:readingSampleCount:previewAudiobookCount:readCount:playCount:addToWantToReadCount:sampleBooksDownloadedCount:ratedBookCount:likedCount:shareCount:totalContentExposedCount:unLikedEventCount:hiddenEventCount:removefromWTRCount:deleteSampleCount:lastSyncFromCloudTimestamp:lastSyncFromCloudError:lastSyncErrorFromCloudTimestamp:lastSyncToCloudTimestamp:lastSyncToCloudError:lastSyncToFromCloudTimestamp:)(BookAnalytics::UserEventStorageData *__return_ptr retstr, Swift::Int64_optional productCardViewCount, Swift::Int64_optional readingSampleCount, Swift::Int64_optional previewAudiobookCount, Swift::Int64_optional readCount, Swift::Int64_optional playCount, Swift::Int64_optional addToWantToReadCount, Swift::Int64_optional sampleBooksDownloadedCount, Swift::Int64_optional ratedBookCount, Swift::Int64_optional likedCount, Swift::Int64_optional shareCount, Swift::Int64_optional totalContentExposedCount, Swift::Int64_optional unLikedEventCount, Swift::Int64_optional hiddenEventCount, Swift::Int64_optional removefromWTRCount, Swift::Int64_optional deleteSampleCount, Swift::Int64_optional lastSyncFromCloudTimestamp, Swift::String_optional lastSyncFromCloudError, Swift::Int64_optional lastSyncErrorFromCloudTimestamp, Swift::Int64_optional lastSyncToCloudTimestamp, Swift::String_optional lastSyncToCloudError, Swift::Int64_optional lastSyncToFromCloudTimestamp)
{
  retstr->productCardViewCount.value = productCardViewCount.value;
  retstr->productCardViewCount.is_nil = productCardViewCount.is_nil;
  *(&retstr->readingSampleCount.value + 7) = readingSampleCount.value;
  BYTE6(retstr->previewAudiobookCount.value) = readingSampleCount.is_nil;
  *(&retstr->readCount.value + 5) = previewAudiobookCount.value;
  BYTE4(retstr->playCount.value) = previewAudiobookCount.is_nil;
  *(&retstr->addToWantToReadCount.value + 3) = readCount.value;
  BYTE2(retstr->sampleBooksDownloadedCount.value) = readCount.is_nil;
  *(&retstr->ratedBookCount.value + 1) = playCount.value;
  LOBYTE(retstr->likedCount.value) = playCount.is_nil;
  *&retstr->likedCount.is_nil = addToWantToReadCount.value;
  HIBYTE(retstr->shareCount.value) = addToWantToReadCount.is_nil;
  *(&retstr->totalContentExposedCount.value + 6) = sampleBooksDownloadedCount.value;
  BYTE5(retstr->unLikedEventCount.value) = sampleBooksDownloadedCount.is_nil;
  *(&retstr->hiddenEventCount.value + 4) = ratedBookCount.value;
  BYTE3(retstr->removefromWTRCount.value) = ratedBookCount.is_nil;
  *(&retstr->deleteSampleCount.value + 2) = likedCount.value;
  BYTE1(retstr->lastSyncFromCloudTimestamp.value) = likedCount.is_nil;
  retstr->lastSyncFromCloudError.value._countAndFlagsBits = shareCount.value;
  LOBYTE(retstr->lastSyncFromCloudError.value._object) = shareCount.is_nil;
  retstr->lastSyncErrorFromCloudTimestamp.value = totalContentExposedCount.value;
  retstr->lastSyncErrorFromCloudTimestamp.is_nil = totalContentExposedCount.is_nil;
  *(&retstr->lastSyncToCloudTimestamp.value + 7) = unLikedEventCount.value;
  LOBYTE(retstr->lastSyncToCloudError.value._countAndFlagsBits) = unLikedEventCount.is_nil;
  retstr->lastSyncToCloudError.value._object = hiddenEventCount.value;
  LOBYTE(retstr->lastSyncToFromCloudTimestamp.value) = hiddenEventCount.is_nil;
  *&retstr->lastSyncToFromCloudTimestamp.is_nil = removefromWTRCount.value;
  LOBYTE(retstr[1].productCardViewCount.value) = removefromWTRCount.is_nil;
  *&retstr[1].productCardViewCount.is_nil = deleteSampleCount.value;
  HIBYTE(retstr[1].readingSampleCount.value) = deleteSampleCount.is_nil;
  *(&retstr[1].previewAudiobookCount.value + 6) = lastSyncFromCloudTimestamp.value;
  BYTE5(retstr[1].readCount.value) = lastSyncFromCloudTimestamp.is_nil;
  *(&retstr[1].sampleBooksDownloadedCount.value + 2) = lastSyncErrorFromCloudTimestamp.value;
  BYTE1(retstr[1].ratedBookCount.value) = lastSyncErrorFromCloudTimestamp.is_nil;
  retstr[1].likedCount.value = lastSyncToCloudTimestamp.value;
  retstr[1].likedCount.is_nil = lastSyncToCloudTimestamp.is_nil;
  *(&retstr[1].unLikedEventCount.value + 5) = lastSyncToFromCloudTimestamp.value;
  BYTE4(retstr[1].hiddenEventCount.value) = lastSyncToFromCloudTimestamp.is_nil;
  *(&retstr[1].playCount.value + 4) = lastSyncFromCloudError;
  *(&retstr[1].shareCount.value + 7) = lastSyncToCloudError;
}

uint64_t sub_5EF84(char a1)
{
  result = 0x6E756F4364616572;
  switch(a1)
  {
    case 1:
    case 13:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6E756F4379616C70;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x6F6F426465746172;
      break;
    case 8:
      v3 = 0x4364656B696CLL;
      goto LABEL_17;
    case 9:
      v3 = 0x436572616873;
LABEL_17:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x756F000000000000;
      break;
    case 10:
    case 18:
      result = 0xD000000000000018;
      break;
    case 11:
    case 14:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD00000000000001FLL;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0xD00000000000001CLL;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_5F21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_6166C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5F250(uint64_t a1)
{
  v2 = sub_61188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5F28C(uint64_t a1)
{
  v2 = sub_61188();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserEventStorageData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280A90, &qword_1EB180);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v56 = *(v1 + 24);
  v53 = v1[4];
  v54 = v10;
  v52 = *(v1 + 40);
  v51 = v1[6];
  v50 = *(v1 + 56);
  v49 = v1[8];
  LODWORD(v10) = *(v1 + 72);
  v46 = v1[10];
  v47 = *(v1 + 88);
  v48 = v10;
  v44 = v1[12];
  v45 = *(v1 + 104);
  v42 = v1[14];
  v43 = *(v1 + 120);
  v40 = v1[16];
  v41 = *(v1 + 136);
  v38 = v1[18];
  v39 = *(v1 + 152);
  v36 = v1[20];
  v37 = *(v1 + 168);
  v34 = v1[22];
  v35 = *(v1 + 184);
  v32 = v1[24];
  v33 = *(v1 + 200);
  v30 = v1[26];
  v31 = *(v1 + 216);
  v28 = v1[28];
  v29 = *(v1 + 232);
  v26 = v1[30];
  v27 = *(v1 + 248);
  v11 = v1[33];
  v24 = v1[32];
  v25 = v11;
  v16 = v1[34];
  v17 = *(v1 + 280);
  v18 = v1[36];
  v19 = *(v1 + 296);
  v12 = v1[39];
  v20 = v1[38];
  v21 = v12;
  v22 = v1[40];
  v23 = *(v1 + 328);
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_61188();
  sub_1E1E00();
  v57 = 0;
  v14 = v55;
  sub_1E1CA0();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v55 = v4;
  v57 = 1;
  sub_1E1CA0();
  v57 = 2;
  sub_1E1CA0();
  v57 = 3;
  sub_1E1CA0();
  v57 = 4;
  sub_1E1CA0();
  v57 = 5;
  sub_1E1CA0();
  v57 = 6;
  sub_1E1CA0();
  v57 = 7;
  sub_1E1CA0();
  v57 = 8;
  sub_1E1CA0();
  v57 = 9;
  sub_1E1CA0();
  v57 = 10;
  sub_1E1CA0();
  v57 = 11;
  sub_1E1CA0();
  v57 = 12;
  sub_1E1CA0();
  v57 = 13;
  sub_1E1CA0();
  v57 = 14;
  sub_1E1CA0();
  v57 = 15;
  sub_1E1CA0();
  v57 = 16;
  sub_1E1C50();
  v57 = 17;
  sub_1E1CA0();
  v57 = 18;
  sub_1E1CA0();
  v57 = 19;
  sub_1E1C50();
  v57 = 20;
  sub_1E1CA0();
  return (*(v55 + 8))(v7, v3);
}

uint64_t UserEventStorageData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v69 = sub_3D68(&qword_280AA0, &qword_1EB188);
  v5 = *(v69 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v69);
  v8 = &v46 - v7;
  v184 = 1;
  v182 = 1;
  v180 = 1;
  v178 = 1;
  v176 = 1;
  v174 = 1;
  v172 = 1;
  v170 = 1;
  v168 = 1;
  v166 = 1;
  v164 = 1;
  v162 = 1;
  v160 = 1;
  v158 = 1;
  v156 = 1;
  v154 = 1;
  v152 = 1;
  v150 = 1;
  v148 = 1;
  v9 = a1[3];
  v10 = a1[4];
  v79 = a1;
  sub_48B8(a1, v9);
  sub_61188();
  sub_1E1DF0();
  if (v2)
  {
    v185 = v2;
    v75 = 0;
    v76 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v70 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v77 = 0;
    v78 = 0;
    sub_4E48(v79);
    v88 = 0;
    v89 = v184;
    *v90 = *v183;
    *&v90[3] = *&v183[3];
    v91 = 0;
    v92 = v182;
    *v93 = *v181;
    *&v93[3] = *&v181[3];
    v94 = 0;
    v95 = v180;
    *&v96[3] = *&v179[3];
    *v96 = *v179;
    v97 = 0;
    v98 = v178;
    *v99 = *v177;
    *&v99[3] = *&v177[3];
    v100 = 0;
    v101 = v176;
    *v102 = *v175;
    *&v102[3] = *&v175[3];
    v103 = 0;
    v104 = v174;
    *&v105[3] = *&v173[3];
    *v105 = *v173;
    v106 = 0;
    v107 = v172;
    *&v108[3] = *&v171[3];
    *v108 = *v171;
    v109 = v78;
    v110 = v170;
    *&v111[3] = *&v169[3];
    *v111 = *v169;
    v112 = v77;
    v113 = v168;
    *&v114[3] = *&v167[3];
    *v114 = *v167;
    v115 = v85;
    v116 = v166;
    *&v117[3] = *&v165[3];
    *v117 = *v165;
    v118 = v84;
    v119 = v164;
    *&v120[3] = *&v163[3];
    *v120 = *v163;
    v121 = v83;
    v122 = v162;
    *&v123[3] = *&v161[3];
    *v123 = *v161;
    v124 = v82;
    v125 = v160;
    *&v126[3] = *&v159[3];
    *v126 = *v159;
    v127 = v81;
    v128 = v158;
    *&v129[3] = *&v157[3];
    *v129 = *v157;
    v130 = v80;
    v131 = v156;
    *&v132[3] = *&v155[3];
    *v132 = *v155;
    v133 = v70;
    v134 = v154;
    *&v135[3] = *&v153[3];
    *v135 = *v153;
    v136 = v74;
    v137 = v73;
    v138 = v72;
    v139 = v152;
    *v140 = *v151;
    *&v140[3] = *&v151[3];
    v141 = v75;
    v142 = v150;
    *v143 = *v149;
    *&v143[3] = *&v149[3];
    v144 = v71;
    v145 = v76;
    v146 = 0;
    v12 = v148;
  }

  else
  {
    v11 = v5;
    LOBYTE(v88) = 0;
    v68 = sub_1E1BD0();
    v184 = v14 & 1;
    LOBYTE(v88) = 1;
    v67 = sub_1E1BD0();
    v182 = v15 & 1;
    LOBYTE(v88) = 2;
    v66 = sub_1E1BD0();
    v180 = v16 & 1;
    LOBYTE(v88) = 3;
    v65 = sub_1E1BD0();
    v178 = v17 & 1;
    LOBYTE(v88) = 4;
    v64 = sub_1E1BD0();
    v176 = v18 & 1;
    LOBYTE(v88) = 5;
    v63 = sub_1E1BD0();
    v174 = v19 & 1;
    LOBYTE(v88) = 6;
    v62 = sub_1E1BD0();
    v172 = v20 & 1;
    LOBYTE(v88) = 7;
    v78 = sub_1E1BD0();
    v170 = v21 & 1;
    LOBYTE(v88) = 8;
    v22 = sub_1E1BD0();
    v185 = 0;
    v23 = a2;
    v77 = v22;
    v168 = v24 & 1;
    LOBYTE(v88) = 9;
    v85 = sub_1E1BD0();
    v185 = 0;
    v166 = v25 & 1;
    LOBYTE(v88) = 10;
    v84 = sub_1E1BD0();
    v185 = 0;
    v164 = v26 & 1;
    LOBYTE(v88) = 11;
    v83 = sub_1E1BD0();
    v185 = 0;
    v162 = v27 & 1;
    LOBYTE(v88) = 12;
    v82 = sub_1E1BD0();
    v185 = 0;
    v160 = v28 & 1;
    LOBYTE(v88) = 13;
    v81 = sub_1E1BD0();
    v185 = 0;
    v158 = v29 & 1;
    LOBYTE(v88) = 14;
    v80 = sub_1E1BD0();
    v185 = 0;
    v156 = v30 & 1;
    LOBYTE(v88) = 15;
    v70 = sub_1E1BD0();
    v185 = 0;
    v154 = v31 & 1;
    LOBYTE(v88) = 16;
    v32 = sub_1E1B80();
    v73 = v33;
    v74 = v32;
    v185 = 0;
    LOBYTE(v88) = 17;
    v72 = sub_1E1BD0();
    v185 = 0;
    v152 = v34 & 1;
    LOBYTE(v88) = 18;
    v75 = sub_1E1BD0();
    v185 = 0;
    v150 = v35 & 1;
    LOBYTE(v88) = 19;
    v71 = sub_1E1B80();
    v76 = v36;
    v185 = 0;
    v87 = 20;
    v37 = sub_1E1BD0();
    v185 = 0;
    v38 = v37;
    v40 = v39;
    (*(v11 + 8))(v8, v69);
    v148 = v40 & 1;
    *v86 = v68;
    v57 = v184;
    v86[8] = v184;
    *&v86[9] = *v183;
    *&v86[12] = *&v183[3];
    *&v86[16] = v67;
    v52 = v182;
    v86[24] = v182;
    *&v86[25] = *v181;
    *&v86[28] = *&v181[3];
    *&v86[32] = v66;
    v51 = v180;
    v86[40] = v180;
    *&v86[44] = *&v179[3];
    *&v86[41] = *v179;
    v41 = v64;
    *&v86[48] = v65;
    v48 = v178;
    v86[56] = v178;
    *&v86[57] = *v177;
    *&v86[60] = *&v177[3];
    *&v86[64] = v64;
    v46 = v176;
    v86[72] = v176;
    *&v86[73] = *v175;
    *&v86[76] = *&v175[3];
    v42 = v62;
    v43 = v63;
    *&v86[80] = v63;
    v44 = v174;
    v86[88] = v174;
    *&v86[92] = *&v173[3];
    *&v86[89] = *v173;
    *&v86[96] = v62;
    v45 = v172;
    v86[104] = v172;
    *&v86[108] = *&v171[3];
    *&v86[105] = *v171;
    *&v86[112] = v78;
    LODWORD(v69) = v170;
    v86[120] = v170;
    *&v86[124] = *&v169[3];
    *&v86[121] = *v169;
    *&v86[128] = v77;
    v61 = v168;
    v86[136] = v168;
    *&v86[140] = *&v167[3];
    *&v86[137] = *v167;
    *&v86[144] = v85;
    v60 = v166;
    v86[152] = v166;
    *&v86[156] = *&v165[3];
    *&v86[153] = *v165;
    *&v86[160] = v84;
    v59 = v164;
    v86[168] = v164;
    *&v86[172] = *&v163[3];
    *&v86[169] = *v163;
    *&v86[176] = v83;
    v58 = v162;
    v86[184] = v162;
    *&v86[188] = *&v161[3];
    *&v86[185] = *v161;
    *&v86[192] = v82;
    v56 = v160;
    v86[200] = v160;
    *&v86[204] = *&v159[3];
    *&v86[201] = *v159;
    *&v86[208] = v81;
    v55 = v158;
    v86[216] = v158;
    *&v86[220] = *&v157[3];
    *&v86[217] = *v157;
    *&v86[224] = v80;
    v54 = v156;
    v86[232] = v156;
    *&v86[236] = *&v155[3];
    *&v86[233] = *v155;
    *&v86[240] = v70;
    v53 = v154;
    v86[248] = v154;
    *&v86[252] = *&v153[3];
    *&v86[249] = *v153;
    *&v86[256] = v74;
    *&v86[264] = v73;
    *&v86[272] = v72;
    *&v86[281] = *v151;
    v50 = v152;
    v86[280] = v152;
    *&v86[284] = *&v151[3];
    *&v86[288] = v75;
    *&v86[297] = *v149;
    v47 = v150;
    v86[296] = v150;
    *&v86[300] = *&v149[3];
    *&v86[304] = v71;
    *&v86[312] = v76;
    *&v86[320] = v38;
    v49 = v148;
    v86[328] = v148;
    memcpy(v23, v86, 0x149uLL);
    sub_6120C(v86, &v88);
    sub_4E48(v79);
    v88 = v68;
    v89 = v57;
    v91 = v67;
    v92 = v52;
    v94 = v66;
    v95 = v51;
    v97 = v65;
    v98 = v48;
    v100 = v41;
    v101 = v46;
    v103 = v43;
    v104 = v44;
    v106 = v42;
    v107 = v45;
    *v90 = *v183;
    *&v90[3] = *&v183[3];
    *v93 = *v181;
    *&v93[3] = *&v181[3];
    *v96 = *v179;
    *&v96[3] = *&v179[3];
    *v99 = *v177;
    *&v99[3] = *&v177[3];
    *v102 = *v175;
    *&v102[3] = *&v175[3];
    *v105 = *v173;
    *&v105[3] = *&v173[3];
    *&v108[3] = *&v171[3];
    *v108 = *v171;
    v109 = v78;
    v110 = v69;
    *&v111[3] = *&v169[3];
    *v111 = *v169;
    v112 = v77;
    v113 = v61;
    *&v114[3] = *&v167[3];
    *v114 = *v167;
    v115 = v85;
    v116 = v60;
    *&v117[3] = *&v165[3];
    *v117 = *v165;
    v118 = v84;
    v119 = v59;
    *&v120[3] = *&v163[3];
    *v120 = *v163;
    v121 = v83;
    v122 = v58;
    *&v123[3] = *&v161[3];
    *v123 = *v161;
    v124 = v82;
    v125 = v56;
    *&v126[3] = *&v159[3];
    *v126 = *v159;
    v127 = v81;
    v128 = v55;
    *&v129[3] = *&v157[3];
    *v129 = *v157;
    v130 = v80;
    v131 = v54;
    *&v132[3] = *&v155[3];
    *v132 = *v155;
    v133 = v70;
    v134 = v53;
    *&v135[3] = *&v153[3];
    *v135 = *v153;
    v136 = v74;
    v137 = v73;
    v138 = v72;
    v139 = v50;
    *v140 = *v151;
    *&v140[3] = *&v151[3];
    v141 = v75;
    v142 = v47;
    *v143 = *v149;
    *&v143[3] = *&v149[3];
    v144 = v71;
    v145 = v76;
    v146 = v38;
    v12 = v49;
  }

  v147 = v12;
  return sub_611DC(&v88);
}

BOOL _s13BookAnalytics20UserEventStorageDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v103 = *(a1 + 80);
  v105 = *(a1 + 88);
  v101 = *(a1 + 96);
  v104 = *(a1 + 104);
  v99 = *(a1 + 112);
  v102 = *(a1 + 120);
  v97 = *(a1 + 128);
  v100 = *(a1 + 136);
  v94 = *(a1 + 144);
  v98 = *(a1 + 152);
  v90 = *(a1 + 160);
  v95 = *(a1 + 168);
  v86 = *(a1 + 176);
  v91 = *(a1 + 184);
  v82 = *(a1 + 192);
  v87 = *(a1 + 200);
  v76 = *(a1 + 208);
  v83 = *(a1 + 216);
  v64 = *(a1 + 224);
  v79 = *(a1 + 232);
  v59 = *(a1 + 240);
  v65 = *(a1 + 248);
  v57 = *(a1 + 256);
  v61 = *(a1 + 264);
  v77 = *(a1 + 272);
  v75 = *(a1 + 280);
  v78 = *(a1 + 288);
  v74 = *(a1 + 296);
  v52 = *(a1 + 304);
  v54 = *(a1 + 312);
  v73 = *(a1 + 320);
  v72 = *(a1 + 328);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 80);
  v23 = *(a2 + 88);
  v24 = *(a2 + 96);
  v25 = *(a2 + 104);
  v26 = *(a2 + 112);
  v27 = *(a2 + 120);
  v28 = *(a2 + 128);
  v29 = *(a2 + 136);
  v92 = *(a2 + 144);
  v96 = *(a2 + 152);
  v88 = *(a2 + 160);
  v93 = *(a2 + 168);
  v84 = *(a2 + 176);
  v89 = *(a2 + 184);
  v80 = *(a2 + 192);
  v85 = *(a2 + 200);
  v70 = *(a2 + 208);
  v81 = *(a2 + 216);
  v62 = *(a2 + 224);
  v71 = *(a2 + 232);
  v58 = *(a2 + 240);
  v63 = *(a2 + 248);
  v56 = *(a2 + 256);
  v60 = *(a2 + 264);
  v69 = *(a2 + 272);
  v68 = *(a2 + 280);
  v67 = *(a2 + 288);
  v66 = *(a2 + 296);
  v53 = *(a2 + 304);
  v55 = *(a2 + 312);
  v51 = *(a2 + 320);
  v30 = *(a2 + 328);
  if (v4)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v31 = v13;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v14)
    {
      v32 = v15;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v16)
    {
      v33 = v17;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v18)
    {
      v34 = v19;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == v20)
    {
      v35 = v21;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  if (v105)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v103 == v22)
    {
      v36 = v23;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  if (v104)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v101 == v24)
    {
      v37 = v25;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  if (v102)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v99 == v26)
    {
      v38 = v27;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  if (v100)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v97 == v28)
    {
      v39 = v29;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  if (v98)
  {
    if (!v96)
    {
      return 0;
    }
  }

  else
  {
    v40 = v96;
    if (v94 != v92)
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  if (v95)
  {
    if (!v93)
    {
      return 0;
    }
  }

  else
  {
    v41 = v93;
    if (v90 != v88)
    {
      v41 = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  if (v91)
  {
    if (!v89)
    {
      return 0;
    }
  }

  else
  {
    v42 = v89;
    if (v86 != v84)
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  if (v87)
  {
    if (!v85)
    {
      return 0;
    }
  }

  else
  {
    v43 = v85;
    if (v82 != v80)
    {
      v43 = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  if (v83)
  {
    if (!v81)
    {
      return 0;
    }
  }

  else
  {
    v44 = v81;
    if (v76 != v70)
    {
      v44 = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v106 = v30;
  if (v79)
  {
    if (!v71)
    {
      return 0;
    }
  }

  else
  {
    v45 = v71;
    if (v64 != v62)
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  if (v65)
  {
    if (!v63)
    {
      return 0;
    }
  }

  else
  {
    v46 = v63;
    if (v59 != v58)
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  if (v61)
  {
    if (!v60 || (v57 != v56 || v61 != v60) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v60)
  {
    return 0;
  }

  if (v75)
  {
    if (!v68)
    {
      return 0;
    }
  }

  else
  {
    if (v77 == v69)
    {
      v47 = v68;
    }

    else
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  if (v74)
  {
    if (!v66)
    {
      return 0;
    }
  }

  else
  {
    if (v78 == v67)
    {
      v48 = v66;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  if (v54)
  {
    if (!v55 || (v52 != v53 || v54 != v55) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  if ((v72 & 1) == 0)
  {
    v50 = v106;
    if (v73 != v51)
    {
      v50 = 1;
    }

    return (v50 & 1) == 0;
  }

  return (v106 & 1) != 0;
}

unint64_t sub_61188()
{
  result = qword_280A98;
  if (!qword_280A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A98);
  }

  return result;
}

unint64_t sub_61248()
{
  result = qword_280AA8;
  if (!qword_280AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AA8);
  }

  return result;
}

unint64_t sub_612A0()
{
  result = qword_280AB0;
  if (!qword_280AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AB0);
  }

  return result;
}

uint64_t sub_612FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 329))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 264);
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

uint64_t sub_61358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 329) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 329) = 0;
    }

    if (a2)
    {
      *(result + 264) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserEventStorageData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserEventStorageData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_61568()
{
  result = qword_280AB8;
  if (!qword_280AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AB8);
  }

  return result;
}

unint64_t sub_615C0()
{
  result = qword_280AC0;
  if (!qword_280AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC0);
  }

  return result;
}

unint64_t sub_61618()
{
  result = qword_280AC8;
  if (!qword_280AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC8);
  }

  return result;
}

uint64_t sub_6166C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000000002141A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000002141C0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000002141E0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F4364616572 && a2 == 0xE900000000000074 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E756F4379616C70 && a2 == 0xE900000000000074 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000214200 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000214220 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6F426465746172 && a2 == 0xEE00746E756F436BLL || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x756F4364656B696CLL && a2 == 0xEA0000000000746ELL || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x756F436572616873 && a2 == 0xEA0000000000746ELL || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000214240 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000214260 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000214280 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000002142A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002142C0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000002142E0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000214300 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000000214320 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000214340 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000214360 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000000214380 == a2)
  {

    return 20;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

BookAnalytics::NotificationType_optional __swiftcall NotificationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FA50;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t NotificationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1818324839;
  v4 = 0x4D64656966696E75;
  if (v1 != 3)
  {
    v4 = 0x6F72446563697270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1868785010;
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

unint64_t sub_61E04()
{
  result = qword_280AD0;
  if (!qword_280AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AD0);
  }

  return result;
}

Swift::Int sub_61E58()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_61F3C()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_6200C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_620F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1818324839;
  v7 = 0xEE00656761737365;
  v8 = 0x4D64656966696E75;
  if (v2 != 3)
  {
    v8 = 0x6F72446563697270;
    v7 = 0xE900000000000070;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1868785010;
    v3 = 0xE400000000000000;
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

unint64_t sub_62258()
{
  result = qword_280AD8;
  if (!qword_280AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AD8);
  }

  return result;
}

uint64_t ThemesAndSettingViewEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemesAndSettingViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemesAndSettingViewEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemesAndSettingViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemesAndSettingViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemesAndSettingViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemesAndSettingViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemesAndSettingViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemesAndSettingViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ThemesAndSettingViewEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t ThemesAndSettingViewEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v10 = *(v1 + 72);
  v11 = v2;
  v4 = *(v1 + 120);
  v12 = *(v1 + 104);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_437B4(v9, &v8);
}

uint64_t ThemesAndSettingViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemesAndSettingViewEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemesAndSettingViewEvent.Model.init(themesData:contentData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  v6 = a2[3];
  *(a4 + 72) = a2[2];
  *(a4 + 88) = v6;
  v7 = a2[5];
  *(a4 + 104) = a2[4];
  *(a4 + 120) = v7;
  v8 = a2[1];
  *(a4 + 40) = *a2;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 56) = v8;
  v11 = *(type metadata accessor for ThemesAndSettingViewEvent.Model(0) + 24);
  v12 = sub_1E1150();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

uint64_t sub_6292C()
{
  v1 = 0x44746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614473656D656874;
  }
}

uint64_t sub_62998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_63BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_629C0(uint64_t a1)
{
  v2 = sub_62D6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_629FC(uint64_t a1)
{
  v2 = sub_62D6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ThemesAndSettingViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_280B10, &qword_1EB540);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_62D6C();
  sub_1E1E00();
  v10 = v2[3];
  v11 = *(v2 + 32);
  v31 = *v2;
  v32 = *(v2 + 1);
  v33 = v10;
  v34 = v11;
  v30 = 0;
  sub_7B78();

  v12 = v35;
  sub_1E1CF0();

  if (!v12)
  {
    v14 = *(v2 + 9);
    v15 = *(v2 + 13);
    v29[3] = *(v2 + 11);
    v29[4] = v15;
    v29[5] = *(v2 + 15);
    v16 = *(v2 + 5);
    v29[1] = *(v2 + 7);
    v29[2] = v14;
    v17 = *(v2 + 9);
    v18 = *(v2 + 13);
    v26 = *(v2 + 11);
    v27 = v18;
    v28 = *(v2 + 15);
    v29[0] = v16;
    v23 = *(v2 + 5);
    v24 = *(v2 + 7);
    v25 = v17;
    v22 = 1;
    sub_437B4(v29, v21);
    sub_143D0();
    sub_1E1C80();
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[5] = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_440C0(v21);
    v19 = *(type metadata accessor for ThemesAndSettingViewEvent.Model(0) + 24);
    v20[15] = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_62D6C()
{
  result = qword_280B18;
  if (!qword_280B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B18);
  }

  return result;
}

uint64_t ThemesAndSettingViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1E1150();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_280B20, &qword_1EB548);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ThemesAndSettingViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v31 = a1;
  sub_48B8(a1, v16);
  sub_62D6C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v31);
  }

  v18 = v29;
  v26 = v7;
  v39 = 0;
  sub_8248();
  v19 = v30;
  sub_1E1C20();
  v20 = v33;
  v21 = v34;
  *v15 = v32;
  *(v15 + 1) = v20;
  v15[32] = v21;
  v39 = 1;
  sub_14CB8();
  sub_1E1BB0();
  v22 = v35;
  *(v15 + 72) = v34;
  *(v15 + 88) = v22;
  v23 = v37;
  *(v15 + 104) = v36;
  *(v15 + 120) = v23;
  v24 = v33;
  *(v15 + 40) = v32;
  *(v15 + 56) = v24;
  v38 = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v18 + 8))(v11, v19);
  (*(v27 + 32))(&v15[*(v12 + 24)], v26, v4);
  sub_631AC(v15, v28);
  sub_4E48(v31);
  return sub_63210(v15);
}

uint64_t sub_631AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThemesAndSettingViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_63210(uint64_t a1)
{
  v2 = type metadata accessor for ThemesAndSettingViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6330C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_63458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_635D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_63740()
{
  sub_6384C(319, &qword_27DB48, sub_8248, sub_7B78);
  if (v0 <= 0x3F)
  {
    sub_6384C(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6384C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_638DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6399C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_63A40()
{
  sub_45610();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_63AE8()
{
  result = qword_280C58;
  if (!qword_280C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C58);
  }

  return result;
}

unint64_t sub_63B40()
{
  result = qword_280C60;
  if (!qword_280C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C60);
  }

  return result;
}

unint64_t sub_63B98()
{
  result = qword_280C68;
  if (!qword_280C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C68);
  }

  return result;
}

uint64_t sub_63BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614473656D656874 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_63D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_63DC8(uint64_t a1)
{
  v2 = sub_64128();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_63E04(uint64_t a1)
{
  v2 = sub_64128();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryDisplayData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280C70, &qword_1EB770);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_64128();
  sub_1E1E00();
  v12 = v8;
  sub_6417C();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t LibraryDisplayData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_280C88, &qword_1EB778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_64128();
  sub_1E1DF0();
  if (!v2)
  {
    sub_641D0();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_64128()
{
  result = qword_280C78;
  if (!qword_280C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C78);
  }

  return result;
}

unint64_t sub_6417C()
{
  result = qword_280C80;
  if (!qword_280C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C80);
  }

  return result;
}

unint64_t sub_641D0()
{
  result = qword_280C90;
  if (!qword_280C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C90);
  }

  return result;
}

unint64_t sub_64228()
{
  result = qword_280C98;
  if (!qword_280C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98);
  }

  return result;
}

unint64_t sub_64280()
{
  result = qword_280CA0;
  if (!qword_280CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CA0);
  }

  return result;
}

unint64_t sub_642F8()
{
  result = qword_280CA8;
  if (!qword_280CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CA8);
  }

  return result;
}

unint64_t sub_64350()
{
  result = qword_280CB0;
  if (!qword_280CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB0);
  }

  return result;
}

unint64_t sub_643A8()
{
  result = qword_280CB8;
  if (!qword_280CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB8);
  }

  return result;
}

unint64_t sub_64418()
{
  v1 = 0x6F43746E65726170;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_644AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_64DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_644D4(uint64_t a1)
{
  v2 = sub_64BAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_64510(uint64_t a1)
{
  v2 = sub_64BAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UppParentContentData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280CC0, &qword_1EB9A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v11 = v1[4];
  v17 = v1[5];
  v18 = v11;
  HIDWORD(v16) = *(v1 + 48);
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_64BAC();
  sub_1E1E00();
  v26 = 0;
  v13 = v21;
  sub_1E1CB0();
  if (!v13)
  {
    v14 = BYTE4(v16);
    v25 = 1;
    sub_1E1CB0();
    v24 = 2;
    sub_1E1CB0();
    v23 = v14;
    v22 = 3;
    sub_C480();
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t UppParentContentData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_280CD0, &qword_1EB9A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_64BAC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v32 = 0;
  v11 = sub_1E1BE0();
  v27 = v12;
  v31 = 1;
  v13 = sub_1E1BE0();
  v26 = v14;
  v24 = v13;
  v30 = 2;
  v23 = sub_1E1BE0();
  v25 = v15;
  v28 = 3;
  sub_C4D4();
  sub_1E1C20();
  (*(v6 + 8))(v9, v5);
  v17 = v29;
  v19 = v26;
  v18 = v27;
  *a2 = v11;
  *(a2 + 8) = v18;
  v20 = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v19;
  v21 = v25;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v17;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics20UppParentContentDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1E1D30() & 1) == 0 || (v3 != v9 || v5 != v10) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  return sub_218F4(v6, v11);
}

unint64_t sub_64BAC()
{
  result = qword_280CC8;
  if (!qword_280CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC8);
  }

  return result;
}

__n128 sub_64C08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_64C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_64C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_64CE0()
{
  result = qword_280CD8;
  if (!qword_280CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD8);
  }

  return result;
}

unint64_t sub_64D38()
{
  result = qword_280CE0;
  if (!qword_280CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CE0);
  }

  return result;
}

unint64_t sub_64D90()
{
  result = qword_280CE8;
  if (!qword_280CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CE8);
  }

  return result;
}

uint64_t sub_64DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65726170 && a2 == 0xEF4449746E65746ELL;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000002143A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000002143C0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002143E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

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

BookAnalytics::GoalType_optional __swiftcall GoalType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FAE8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t GoalType.rawValue.getter()
{
  v1 = 0x47676E6964616572;
  if (*v0 != 1)
  {
    v1 = 0x616F47736B6F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t _s13BookAnalytics18GoalAdjustTypeDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x47676E6964616572;
  v4 = 0xEB000000006C616FLL;
  if (v2 != 1)
  {
    v3 = 0x616F47736B6F6F62;
    v4 = 0xE90000000000006CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x47676E6964616572;
  v8 = 0xEB000000006C616FLL;
  if (*a2 != 1)
  {
    v7 = 0x616F47736B6F6F62;
    v8 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_6513C()
{
  result = qword_280CF0;
  if (!qword_280CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF0);
  }

  return result;
}

Swift::Int sub_65190()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_65240()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_652DC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_65394(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB000000006C616FLL;
  v5 = 0x47676E6964616572;
  if (v2 != 1)
  {
    v5 = 0x616F47736B6F6F62;
    v4 = 0xE90000000000006CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_654C0()
{
  result = qword_280CF8;
  if (!qword_280CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF8);
  }

  return result;
}

BookAnalytics::TextData __swiftcall TextData.init(fontName:isBold:)(BookAnalytics::TextData fontName, Swift::Bool isBold)
{
  *v2 = fontName.fontName;
  *(v2 + 16) = isBold;
  fontName.isBold = isBold;
  return fontName;
}

uint64_t static TextData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1E1D30();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_65590()
{
  if (*v0)
  {
    result = 0x646C6F427369;
  }

  else
  {
    result = 0x656D614E746E6F66;
  }

  *v0;
  return result;
}

uint64_t sub_655C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E746E6F66 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C6F427369 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_656A0(uint64_t a1)
{
  v2 = sub_658AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_656DC(uint64_t a1)
{
  v2 = sub_658AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280D00, &qword_1EBCF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_658AC();
  sub_1E1E00();
  v16 = 0;
  v11 = v13[1];
  sub_1E1CB0();
  if (!v11)
  {
    v15 = 1;
    sub_1E1CC0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_658AC()
{
  result = qword_280D08;
  if (!qword_280D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D08);
  }

  return result;
}

uint64_t TextData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_280D10, &qword_1EBD00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_658AC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v19 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_1E1BF0();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;

  sub_4E48(a1);
}

__n128 sub_65B18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_65B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_65B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_65BD8()
{
  result = qword_280D18;
  if (!qword_280D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D18);
  }

  return result;
}

unint64_t sub_65C30()
{
  result = qword_280D20;
  if (!qword_280D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D20);
  }

  return result;
}

unint64_t sub_65C88()
{
  result = qword_280D28;
  if (!qword_280D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D28);
  }

  return result;
}

uint64_t ReadEvent.readingSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadEvent.readingSessionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReadEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.readingSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 24);
  v4 = sub_3D68(&qword_280D68, &qword_1EBF28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.readingSettingsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 24);
  v4 = sub_3D68(&qword_280D68, &qword_1EBF28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.contentSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 32);
  v4 = sub_3D68(&qword_280D70, &qword_1EBF30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.contentSettingsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 32);
  v4 = sub_3D68(&qword_280D70, &qword_1EBF30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 36);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 36);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.doNotDisturbData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.doNotDisturbData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.userEmbeddingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 56);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.userEmbeddingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadEvent(0) + 56);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for ReadEvent(0);
  v5 = Event[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  v8 = sub_3D68(&qword_280D68, &qword_1EBF28);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = Event[8];
  v13 = sub_3D68(&qword_280D70, &qword_1EBF30);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = Event[9];
  v15 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = Event[10];
  v17 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = Event[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = Event[12];
  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = Event[13];
  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = Event[14];
  v25 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

void ReadEvent.Model.readingSessionData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = *(v1 + 13);
  v6 = *(v1 + 14);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 13) = v5;
  *(a1 + 14) = v6;
}

uint64_t ReadEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v10 = v1[3];
  v11 = v2;
  v4 = v1[6];
  v12 = v1[5];
  v3 = v12;
  v13 = v4;
  v6 = v1[2];
  v9[0] = v1[1];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_13A5C(v9, &v8);
}

uint64_t ReadEvent.Model.readingSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 114);
  v4 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 2) = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 136);
}

uint64_t ReadEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = *(v1 + 144);
  *(a1 + 16) = v2;
}

void ReadEvent.Model.contentSettingsData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 180);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

__n128 ReadEvent.Model.orientationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 200);
  result = *(v1 + 184);
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t ReadEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[26];
  v3 = v1[27];
  v4 = v1[28];
  v5 = v1[29];
  v6 = v1[30];
  v7 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t ReadEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent.Model(0) + 48);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadEvent.Model(0) + 52);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadEvent.Model.userEmbeddingData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ReadEvent.Model(0) + 56));
}

uint64_t ReadEvent.Model.init(readingSessionData:contentData:readingSettingsData:upSellData:contentSettingsData:orientationData:doNotDisturbData:seriesData:eventData:timedData:userEmbeddingData:)@<X0>(int *a1@<X0>, _OWORD *a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v13 = *a1;
  v14 = *(a1 + 4);
  v15 = a1[2];
  v16 = *(a1 + 12);
  v17 = *(a1 + 13);
  v18 = *(a1 + 14);
  v19 = *a3;
  v20 = *(a3 + 2);
  v22 = *(a3 + 1);
  v21 = *(a3 + 2);
  v23 = *(a4 + 16);
  v24 = *a5;
  v25 = *(a5 + 2);
  v26 = *(a5 + 12);
  v27 = *(a6 + 16);
  v28 = *a7;
  v29 = *a12;
  *a9 = v13;
  *(a9 + 4) = v14;
  *(a9 + 8) = v15;
  *(a9 + 12) = v16;
  *(a9 + 13) = v17;
  *(a9 + 14) = v18;
  v30 = a2[3];
  *(a9 + 48) = a2[2];
  *(a9 + 64) = v30;
  v31 = a2[5];
  *(a9 + 80) = a2[4];
  *(a9 + 96) = v31;
  v32 = a2[1];
  *(a9 + 16) = *a2;
  *(a9 + 32) = v32;
  *(a9 + 112) = v19;
  *(a9 + 114) = v20;
  *(a9 + 120) = v22;
  *(a9 + 128) = v21;
  *(a9 + 136) = *(a3 + 3);
  *(a9 + 144) = *a4;
  *(a9 + 160) = v23;
  *(a9 + 168) = v24;
  *(a9 + 176) = v25;
  *(a9 + 180) = v26;
  *(a9 + 184) = *a6;
  *(a9 + 200) = v27;
  *(a9 + 204) = v28;
  v33 = a8[1];
  *(a9 + 208) = *a8;
  *(a9 + 224) = v33;
  *(a9 + 240) = a8[2];
  v34 = type metadata accessor for ReadEvent.Model(0);
  v35 = v34[12];
  v36 = sub_1E1150();
  (*(*(v36 - 8) + 32))(a9 + v35, a10, v36);
  v37 = v34[13];
  v38 = sub_1E11A0();
  result = (*(*(v38 - 8) + 32))(a9 + v37, a11, v38);
  *(a9 + v34[14]) = v29;
  return result;
}

unint64_t sub_673AC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x44746E65746E6F63;
    v7 = 0xD000000000000013;
    v8 = 0x61446C6C65537075;
    if (a1 != 3)
    {
      v8 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000012;
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
    v1 = 0x746144746E657665;
    v2 = 0x74614464656D6974;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7461746E6569726FLL;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0x6144736569726573;
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

uint64_t sub_67544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_69E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6756C(uint64_t a1)
{
  v2 = sub_67B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_675A8(uint64_t a1)
{
  v2 = sub_67B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_280D80, &qword_1EBF38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_67B94();
  sub_1E1E00();
  v11 = *(v3 + 4);
  v12 = v3[2];
  v13 = *(v3 + 12);
  v14 = *(v3 + 13);
  v15 = *(v3 + 14);
  v55 = *v3;
  v56 = v11;
  v57 = v12;
  v58 = v13;
  v59 = v14;
  v60 = v15;
  v63 = 0;
  sub_67BE8();
  sub_1E1CF0();
  if (!v2)
  {
    v16 = *(v3 + 4);
    v17 = *(v3 + 2);
    v51 = *(v3 + 3);
    v52 = v16;
    v18 = *(v3 + 4);
    v19 = *(v3 + 6);
    v53 = *(v3 + 5);
    v54 = v19;
    v20 = *(v3 + 2);
    v50[0] = *(v3 + 1);
    v50[1] = v20;
    v46 = v51;
    v47 = v18;
    v21 = *(v3 + 6);
    v48 = v53;
    v49 = v21;
    v44 = v50[0];
    v45 = v17;
    v62 = 1;
    sub_13A5C(v50, v43);
    sub_143D0();
    sub_1E1CF0();
    v43[2] = v46;
    v43[3] = v47;
    v43[4] = v48;
    v43[5] = v49;
    v43[0] = v44;
    v43[1] = v45;
    sub_14424(v43);
    v22 = *(v3 + 114);
    v23 = *(v3 + 15);
    v24 = *(v3 + 16);
    LOWORD(v38) = *(v3 + 56);
    BYTE2(v38) = v22;
    *(&v38 + 1) = v23;
    v39 = v24;
    v40 = *(v3 + 17);
    v61 = 2;
    sub_67C3C();

    sub_1E1CF0();

    v25 = *(v3 + 20);
    v38 = *(v3 + 9);
    v39 = v25;
    v61 = 3;
    sub_28450();

    sub_1E1C80();

    v27 = v3[44];
    v28 = *(v3 + 180);
    *&v38 = *(v3 + 21);
    DWORD2(v38) = v27;
    BYTE12(v38) = v28;
    v61 = 4;
    sub_67C90();
    sub_1E1C80();
    v29 = v3[50];
    v38 = *(v3 + 46);
    LODWORD(v39) = v29;
    v61 = 5;
    sub_67CE4();
    sub_1E1C80();
    LOWORD(v38) = *(v3 + 102);
    v61 = 6;
    sub_3E6E0();
    sub_1E1CF0();
    v30 = *(v3 + 27);
    v31 = *(v3 + 28);
    v32 = *(v3 + 29);
    v33 = *(v3 + 30);
    v34 = *(v3 + 31);
    *&v38 = *(v3 + 26);
    *(&v38 + 1) = v30;
    v39 = v31;
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v61 = 7;
    sub_13BDC(v38, v30, v31, v32, v33, v34);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v38, *(&v38 + 1), v39, v40, v41, v42);
    v35 = type metadata accessor for ReadEvent.Model(0);
    v36 = v35[12];
    LOBYTE(v38) = 8;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v37 = v35[13];
    LOBYTE(v38) = 9;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    *&v38 = *(v3 + v35[14]);
    v61 = 10;
    sub_3E734();

    sub_1E1C80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_67B94()
{
  result = qword_280D88;
  if (!qword_280D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D88);
  }

  return result;
}

unint64_t sub_67BE8()
{
  result = qword_280D90;
  if (!qword_280D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D90);
  }

  return result;
}

unint64_t sub_67C3C()
{
  result = qword_280D98;
  if (!qword_280D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D98);
  }

  return result;
}

unint64_t sub_67C90()
{
  result = qword_280DA0;
  if (!qword_280DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DA0);
  }

  return result;
}

unint64_t sub_67CE4()
{
  result = qword_280DA8;
  if (!qword_280DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DA8);
  }

  return result;
}

uint64_t ReadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = sub_1E11A0();
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v43);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_3D68(&qword_280DB0, &qword_1EBF40);
  v44 = *(v45 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v45);
  v12 = v38 - v11;
  v13 = type metadata accessor for ReadEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v48 = a1;
  sub_48B8(a1, v18);
  sub_67B94();
  v46 = v12;
  v19 = v47;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v48);
  }

  v39 = v5;
  v20 = v44;
  v47 = v13;
  LOBYTE(v49) = 0;
  sub_686E8();
  sub_1E1C20();
  v21 = BYTE4(v52);
  v22 = DWORD2(v52);
  v23 = BYTE12(v52);
  v24 = BYTE13(v52);
  v25 = BYTE14(v52);
  *v16 = v52;
  v16[4] = v21;
  *(v16 + 2) = v22;
  v16[12] = v23;
  v16[13] = v24;
  v16[14] = v25;
  v59 = 1;
  sub_14CB8();
  sub_1E1C20();
  v26 = v55;
  *(v16 + 3) = v54;
  *(v16 + 4) = v26;
  v27 = v57;
  *(v16 + 5) = v56;
  *(v16 + 6) = v27;
  v28 = v53;
  *(v16 + 1) = v52;
  *(v16 + 2) = v28;
  v58 = 2;
  sub_6873C();
  sub_1E1C20();
  v29 = BYTE2(v49);
  v30 = *(&v49 + 1);
  v31 = v50;
  *(v16 + 56) = v49;
  v16[114] = v29;
  *(v16 + 15) = v30;
  *(v16 + 8) = __PAIR128__(*(&v50 + 1), v31);
  v58 = 3;
  sub_28EF4();
  v38[1] = 0;
  sub_1E1BB0();
  v32 = v50;
  *(v16 + 9) = v49;
  *(v16 + 20) = v32;
  v58 = 4;
  sub_68790();
  sub_1E1BB0();
  v33 = DWORD2(v49);
  v34 = BYTE12(v49);
  *(v16 + 21) = v49;
  *(v16 + 44) = v33;
  v16[180] = v34;
  v58 = 5;
  sub_687E4();
  sub_1E1BB0();
  v35 = v50;
  *(v16 + 184) = v49;
  *(v16 + 50) = v35;
  v58 = 6;
  sub_3F2AC();
  sub_1E1C20();
  *(v16 + 102) = v49;
  v58 = 7;
  sub_DAD8();
  sub_1E1BB0();
  v36 = v50;
  *(v16 + 13) = v49;
  *(v16 + 14) = v36;
  *(v16 + 15) = v51;
  LOBYTE(v49) = 8;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v42 + 32))(&v16[v47[12]], v9, v6);
  LOBYTE(v49) = 9;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v41 + 32))(&v16[v47[13]], v39, v43);
  v58 = 10;
  sub_3F300();
  sub_1E1BB0();
  (*(v20 + 8))(v46, v45);
  *&v16[v47[14]] = v49;
  sub_68838(v16, v40);
  sub_4E48(v48);
  return sub_6889C(v16);
}

unint64_t sub_686E8()
{
  result = qword_280DB8;
  if (!qword_280DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DB8);
  }

  return result;
}

unint64_t sub_6873C()
{
  result = qword_280DC0;
  if (!qword_280DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DC0);
  }

  return result;
}

unint64_t sub_68790()
{
  result = qword_280DC8;
  if (!qword_280DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DC8);
  }

  return result;
}

unint64_t sub_687E4()
{
  result = qword_280DD0;
  if (!qword_280DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD0);
  }

  return result;
}

uint64_t sub_68838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6889C(uint64_t a1)
{
  v2 = type metadata accessor for ReadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_68998@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_280D68, &qword_1EBF28);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_280D70, &qword_1EBF30);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

uint64_t sub_68D44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_280D68, &qword_1EBF28);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_280D70, &qword_1EBF30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_280D78, &unk_1ED080);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_6915C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_280D68, &qword_1EBF28);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_280D70, &qword_1EBF30);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_280D78, &unk_1ED080);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

void sub_6956C()
{
  sub_698C0(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_698C0(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_698C0(319, &qword_280E48, sub_6873C, sub_67C3C);
      if (v2 <= 0x3F)
      {
        sub_698C0(319, &qword_27EAE8, sub_28EF4, sub_28450);
        if (v3 <= 0x3F)
        {
          sub_698C0(319, &qword_280E50, sub_68790, sub_67C90);
          if (v4 <= 0x3F)
          {
            sub_698C0(319, &qword_280E58, sub_687E4, sub_67CE4);
            if (v5 <= 0x3F)
            {
              sub_698C0(319, &qword_27F9A0, sub_3F2AC, sub_3E6E0);
              if (v6 <= 0x3F)
              {
                sub_698C0(319, &qword_27DE18, sub_DAD8, sub_D57C);
                if (v7 <= 0x3F)
                {
                  sub_5684();
                  if (v8 <= 0x3F)
                  {
                    sub_5750();
                    if (v9 <= 0x3F)
                    {
                      sub_698C0(319, &unk_27F9A8, sub_3F300, sub_3E734);
                      if (v10 <= 0x3F)
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

void sub_698C0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_69950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_69A88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_69BAC()
{
  sub_19FE0(319, &qword_27EBC8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_280F18);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_280F20);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_27E398);
        if (v3 <= 0x3F)
        {
          sub_1E1150();
          if (v4 <= 0x3F)
          {
            sub_1E11A0();
            if (v5 <= 0x3F)
            {
              sub_19FE0(319, &unk_27FA68);
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

unint64_t sub_69D3C()
{
  result = qword_280F78;
  if (!qword_280F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F78);
  }

  return result;
}

unint64_t sub_69D94()
{
  result = qword_280F80;
  if (!qword_280F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F80);
  }

  return result;
}

unint64_t sub_69DEC()
{
  result = qword_280F88;
  if (!qword_280F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F88);
  }

  return result;
}

uint64_t sub_69E40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000000214400 == a2;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000214420 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000214440 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213DA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000213DC0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1E1D30();

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

BookAnalytics::GetStartedActionType_optional __swiftcall GetStartedActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FB50;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t GetStartedActionType.rawValue.getter()
{
  v1 = 0x65756E69746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x616E614D61746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_6A298()
{
  result = qword_280F90;
  if (!qword_280F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F90);
  }

  return result;
}

Swift::Int sub_6A2EC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_6A394()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_6A428()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_6A4D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x65756E69746E6F63;
  if (v2 != 1)
  {
    v5 = 0x616E614D61746164;
    v4 = 0xEA00000000006567;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_6A5FC()
{
  result = qword_280F98;
  if (!qword_280F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F98);
  }

  return result;
}

BookAnalytics::SuggestionType_optional __swiftcall SuggestionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FBB8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t SuggestionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6574636572726F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x64656863746566;
  if (v1 != 3)
  {
    v4 = 0x6574736567677573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E65636572;
  if (v1 != 1)
  {
    v5 = 0x676E69646E657274;
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

unint64_t sub_6A7B0()
{
  result = qword_280FA0;
  if (!qword_280FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0);
  }

  return result;
}

uint64_t sub_6A810()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_6A94C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x6574636572726F63;
  v6 = 0x8000000000212960;
  if (v2 == 5)
  {
    v6 = 0xED00006D72655464;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656863746566;
  if (v2 != 3)
  {
    v8 = 0x6574736567677573;
    v7 = 0xED00006D72655464;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x746E65636572;
  if (v2 != 1)
  {
    v10 = 0x676E69646E657274;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_6AB04()
{
  result = qword_280FA8;
  if (!qword_280FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA8);
  }

  return result;
}

BookAnalytics::SeriesUserSubStatus_optional __swiftcall SeriesUserSubStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FC80;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t SeriesUserSubStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6153736569726573;
  v3 = 0x6E776F6E6B6E75;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x7265537472617473;
  if (v1 != 3)
  {
    v4 = 0x65756E69746E6F63;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x65536E497478656ELL;
  if (v1 != 1)
  {
    v5 = 0x7265536572616873;
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
    return v4;
  }
}

unint64_t sub_6ACD0()
{
  result = qword_280FB0;
  if (!qword_280FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FB0);
  }

  return result;
}

uint64_t sub_6AD30()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_6AE84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656C706DLL;
  v4 = 0x6153736569726573;
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000000002129B0;
  }

  v7 = 0x7265537472617473;
  v8 = 0xEB00000000736569;
  if (v2 != 3)
  {
    v7 = 0x65756E69746E6F63;
    v8 = 0xEE00736569726553;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0xEC00000073656972;
  v10 = 0x65536E497478656ELL;
  if (v2 != 1)
  {
    v10 = 0x7265536572616873;
    v9 = 0xEB00000000736569;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v7;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_6B054()
{
  result = qword_280FB8;
  if (!qword_280FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FB8);
  }

  return result;
}

BookAnalytics::FeatureEnabled_optional __swiftcall FeatureEnabled.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FD48;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t FeatureEnabled.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_6B160(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64656C62616E65;
  if (*a2 != 1)
  {
    v8 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_6B264()
{
  result = qword_280FC0;
  if (!qword_280FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FC0);
  }

  return result;
}

Swift::Int sub_6B2B8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_6B35C()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_6B3EC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_6B498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_6B5B8()
{
  result = qword_280FC8;
  if (!qword_280FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FC8);
  }

  return result;
}

BookAnalytics::SectionType_optional __swiftcall SectionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FDB0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t SectionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x736C616F67;
  if (v1 != 5)
  {
    v3 = 0x6573776F7262;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x65736163776F6C66;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x68736F6F7773;
  if (v1 != 1)
  {
    v5 = 0x6B63697262;
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

unint64_t sub_6B748()
{
  result = qword_280FD0;
  if (!qword_280FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FD0);
  }

  return result;
}

uint64_t sub_6B7A8()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_6B8C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x736C616F67;
  if (v2 != 5)
  {
    v6 = 0x6573776F7262;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000000002129E0;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x65736163776F6C66;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x68736F6F7773;
  if (v2 != 1)
  {
    v10 = 0x6B63697262;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_6BA54()
{
  result = qword_280FD8;
  if (!qword_280FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FD8);
  }

  return result;
}

uint64_t CollectionScreenViewEvent.singleCollectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CollectionScreenViewEvent.singleCollectionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CollectionScreenViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionScreenViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionScreenViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionScreenViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionScreenViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionScreenViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for CollectionScreenViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t CollectionScreenViewEvent.Model.singleCollectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t CollectionScreenViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionScreenViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionScreenViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionScreenViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionScreenViewEvent.Model.init(singleCollectionData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  v9 = type metadata accessor for CollectionScreenViewEvent.Model(0);
  v10 = *(v9 + 20);
  v11 = sub_1E1150();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 24);
  v13 = sub_1E11A0();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

unint64_t sub_6C258()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_6C2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_6D55C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6C2E0(uint64_t a1)
{
  v2 = sub_6C5BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6C31C(uint64_t a1)
{
  v2 = sub_6C5BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_281018, &qword_1EC778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_6C5BC();
  sub_1E1E00();
  v11 = v3[1];
  v12 = *(v3 + 4);
  v18 = *v3;
  v19 = v11;
  v20 = v12;
  v17[7] = 0;
  sub_12578();

  sub_1E1CF0();

  if (!v2)
  {
    v13 = type metadata accessor for CollectionScreenViewEvent.Model(0);
    v14 = *(v13 + 20);
    LOBYTE(v18) = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v15 = *(v13 + 24);
    LOBYTE(v18) = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_6C5BC()
{
  result = qword_281020;
  if (!qword_281020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281020);
  }

  return result;
}

uint64_t CollectionScreenViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = sub_1E11A0();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3D68(&qword_281028, &qword_1EC780);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = type metadata accessor for CollectionScreenViewEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v40 = a1;
  sub_48B8(a1, v18);
  sub_6C5BC();
  v38 = v13;
  v20 = v39;
  sub_1E1DF0();
  if (v20)
  {
    return sub_4E48(v40);
  }

  v39 = v14;
  v21 = v36;
  v22 = v17;
  v31 = v5;
  v44 = 0;
  sub_12520();
  v23 = v37;
  sub_1E1C20();
  v24 = v42;
  v25 = v43;
  *v22 = v41;
  *(v22 + 8) = v24;
  *(v22 + 16) = v25;
  LOBYTE(v41) = 1;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v35 + 32))(v22 + *(v39 + 20), v9, v6);
  LOBYTE(v41) = 2;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v26 = v31;
  v27 = v34;
  v28 = v38;
  sub_1E1C20();
  (*(v21 + 8))(v28, v23);
  (*(v32 + 32))(v22 + *(v39 + 24), v26, v27);
  sub_6CABC(v22, v33);
  sub_4E48(v40);
  return sub_6CB20(v22);
}

uint64_t sub_6CABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6CB20(uint64_t a1)
{
  v2 = type metadata accessor for CollectionScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6CC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_6CD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281010, &qword_1EC770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_6CECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281010, &qword_1EC770);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_6D03C()
{
  sub_6D0D8();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      sub_5750();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6D0D8()
{
  if (!qword_281098)
  {
    sub_12520();
    sub_12578();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_281098);
    }
  }
}

uint64_t sub_6D154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_6D28C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_6D3B0()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_6D458()
{
  result = qword_281168;
  if (!qword_281168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281168);
  }

  return result;
}

unint64_t sub_6D4B0()
{
  result = qword_281170;
  if (!qword_281170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281170);
  }

  return result;
}

unint64_t sub_6D508()
{
  result = qword_281178;
  if (!qword_281178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281178);
  }

  return result;
}

uint64_t sub_6D55C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000000214460 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t DealsData.originalPricePoint.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t DealsData.originalPricePoint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

__n128 NotificationData.init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v14;
  *(a9 + 25) = v15;
  *(a9 + 26) = v16;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  return result;
}

unint64_t sub_6D7A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6163696669746F6ELL;
    v6 = 0x657079546F636572;
    if (a1 == 2)
    {
      v6 = 0xD000000000000010;
    }

    if (!a1)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656C746974;
    v2 = 0x436567617373656DLL;
    if (a1 != 7)
    {
      v2 = 0x6567617373656DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x657079546C616F67;
    if (a1 != 4)
    {
      v3 = 0x646F43656C746974;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_6D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_6EC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6D90C(uint64_t a1)
{
  v2 = sub_6E6A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6D948(uint64_t a1)
{
  v2 = sub_6E6A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281180, &unk_1EC9A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  v10 = *v1;
  v9 = v1[1];
  v25 = v1[2];
  v26 = v9;
  LODWORD(v9) = *(v1 + 24);
  v23 = *(v1 + 25);
  v24 = v9;
  v22 = *(v1 + 26);
  v11 = v1[5];
  v21[7] = v1[4];
  v21[8] = v11;
  v12 = v1[7];
  v21[5] = v1[6];
  v21[6] = v12;
  v13 = v1[9];
  v21[3] = v1[8];
  v21[4] = v13;
  v14 = v1[11];
  v21[1] = v1[10];
  v21[2] = v14;
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_6E6A0();

  v16 = v4;
  sub_1E1E00();
  v28 = v10;
  v27 = 0;
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_6E7F0(&qword_281190);
  sub_1E1C80();
  if (v2)
  {
  }

  else
  {
    v18 = v23;
    v17 = v24;
    v19 = v22;

    LOBYTE(v28) = 1;
    sub_1E1CB0();
    LOBYTE(v28) = v17;
    v27 = 2;
    sub_6E6F4();
    sub_1E1CF0();
    LOBYTE(v28) = v18;
    v27 = 3;
    sub_6E748();
    sub_1E1CF0();
    LOBYTE(v28) = v19;
    v27 = 4;
    sub_6E79C();
    sub_1E1CF0();
    LOBYTE(v28) = 5;
    sub_1E1C50();
    LOBYTE(v28) = 6;
    sub_1E1CB0();
    LOBYTE(v28) = 7;
    sub_1E1C50();
    LOBYTE(v28) = 8;
    sub_1E1C50();
  }

  return (*(v5 + 8))(v8, v16);
}

uint64_t NotificationData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_2811B0, &qword_1EC9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_6E6A0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    LOBYTE(v44) = 0;
    sub_6E7F0(&qword_2811B8);
    sub_1E1BB0();
    v42 = v50[0];
    LOBYTE(v50[0]) = 1;
    v11 = sub_1E1BE0();
    v43 = v12;
    LOBYTE(v44) = 2;
    sub_6E85C();
    sub_1E1C20();
    v13 = LOBYTE(v50[0]);
    LOBYTE(v44) = 3;
    sub_6E8B0();
    sub_1E1C20();
    v62 = LOBYTE(v50[0]);
    LOBYTE(v44) = 4;
    sub_6E904();
    sub_1E1C20();
    v40 = a2;
    v41 = LOBYTE(v50[0]);
    LOBYTE(v50[0]) = 5;
    v14 = sub_1E1B80();
    v16 = v15;
    v38 = v14;
    v39 = v13;
    LOBYTE(v50[0]) = 6;
    v17 = sub_1E1BE0();
    v19 = v18;
    v37 = v17;
    v36 = v11;
    LOBYTE(v50[0]) = 7;
    v20 = sub_1E1B80();
    v22 = v21;
    v35 = v20;
    v63 = 8;
    v34 = sub_1E1B80();
    v24 = v23;
    (*(v6 + 8))(v9, v5);
    v25 = v42;
    *&v44 = v42;
    v26 = v36;
    *(&v44 + 1) = v36;
    v27 = v43;
    *&v45 = v43;
    BYTE8(v45) = v39;
    BYTE9(v45) = v62;
    BYTE10(v45) = v41;
    *&v46 = v38;
    *(&v46 + 1) = v16;
    *&v47 = v37;
    *(&v47 + 1) = v19;
    *&v48 = v35;
    *(&v48 + 1) = v22;
    *&v49 = v34;
    *(&v49 + 1) = v24;
    v28 = v47;
    v29 = v40;
    v40[2] = v46;
    v29[3] = v28;
    v30 = v49;
    v29[4] = v48;
    v29[5] = v30;
    v31 = v45;
    *v29 = v44;
    v29[1] = v31;
    sub_6E958(&v44, v50);
    sub_4E48(a1);
    v50[0] = v25;
    v50[1] = v26;
    v50[2] = v27;
    v51 = v39;
    v52 = v62;
    v53 = v41;
    v54 = v38;
    v55 = v16;
    v56 = v37;
    v57 = v19;
    v58 = v35;
    v59 = v22;
    v60 = v34;
    v61 = v24;
    return sub_6E990(v50);
  }
}

BOOL _s13BookAnalytics16NotificationDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 25);
  v9 = *(a1 + 26);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 80);
  v16 = *(a1 + 88);
  v18 = *a2;
  v20 = *(a2 + 8);
  v19 = *(a2 + 16);
  v21 = *(a2 + 24);
  v22 = *(a2 + 25);
  v23 = *(a2 + 26);
  v25 = *(a2 + 32);
  v24 = *(a2 + 40);
  v26 = *(a2 + 48);
  v27 = *(a2 + 56);
  v29 = *(a2 + 64);
  v28 = *(a2 + 72);
  v31 = *(a2 + 80);
  v30 = *(a2 + 88);
  if (v4)
  {
    if (!v18)
    {
      return 0;
    }

    v58 = v25;
    v59 = v10;
    v65 = v24;
    v66 = v11;
    v67 = v27;
    v68 = v31;
    v62 = v13;
    v63 = v26;
    v64 = v12;
    v55 = v29;
    v56 = v14;
    v60 = v28;
    v61 = v15;
    v57 = v30;
    v69 = v16;
    v70 = v17;
    if ((sub_5C5F8(v4, v18) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v58 = v25;
    v59 = v10;
    v65 = v24;
    v66 = v11;
    v67 = v27;
    v68 = v31;
    v62 = v13;
    v63 = v26;
    v64 = v12;
    v55 = v29;
    v56 = v14;
    v60 = v28;
    v61 = v15;
    v57 = v30;
    v69 = v16;
    v70 = v17;
    if (v18)
    {
      return 0;
    }
  }

  if ((v6 != v20 || v5 != v19) && (sub_1E1D30() & 1) == 0 || (sub_23544(v7, v21) & 1) == 0 || (sub_20F18(v8, v22) & 1) == 0)
  {
    return 0;
  }

  v32 = 0x47676E6964616572;
  v33 = 0xEB000000006C616FLL;
  if (v9 != 1)
  {
    v32 = 0x616F47736B6F6F62;
    v33 = 0xE90000000000006CLL;
  }

  if (v9)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0x6E776F6E6B6E75;
  }

  if (v9)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0xE700000000000000;
  }

  v36 = 0x47676E6964616572;
  v37 = 0xEB000000006C616FLL;
  if (v23 != 1)
  {
    v36 = 0x616F47736B6F6F62;
    v37 = 0xE90000000000006CLL;
  }

  if (v23)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0x6E776F6E6B6E75;
  }

  if (v23)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0xE700000000000000;
  }

  if (v34 == v38 && v35 == v39)
  {
  }

  else
  {
    v40 = sub_1E1D30();

    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  if (v66)
  {
    v42 = v69;
    v41 = v70;
    v44 = v67;
    v43 = v68;
    if (!v65)
    {
      return 0;
    }

    if (v59 != v58 || v66 != v65)
    {
      v45 = sub_1E1D30();
      v44 = v67;
      v43 = v68;
      v42 = v69;
      v41 = v70;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v42 = v69;
    v41 = v70;
    v44 = v67;
    v43 = v68;
    if (v65)
    {
      return 0;
    }
  }

  if (v64 != v63 || v62 != v44)
  {
    v46 = v43;
    v47 = v41;
    v48 = v42;
    v49 = sub_1E1D30();
    v43 = v46;
    v42 = v48;
    v41 = v47;
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  if (v61)
  {
    if (!v60)
    {
      return 0;
    }

    if (v56 != v55 || v61 != v60)
    {
      v50 = v43;
      v51 = v41;
      v52 = v42;
      v53 = sub_1E1D30();
      v43 = v50;
      v42 = v52;
      v41 = v51;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v60)
  {
    return 0;
  }

  if (v42)
  {
    return v57 && (v41 == v43 && v42 == v57 || (sub_1E1D30() & 1) != 0);
  }

  return !v57;
}

unint64_t sub_6E6A0()
{
  result = qword_281188;
  if (!qword_281188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281188);
  }

  return result;
}

unint64_t sub_6E6F4()
{
  result = qword_281198;
  if (!qword_281198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281198);
  }

  return result;
}

unint64_t sub_6E748()
{
  result = qword_2811A0;
  if (!qword_2811A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811A0);
  }

  return result;
}

unint64_t sub_6E79C()
{
  result = qword_2811A8;
  if (!qword_2811A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811A8);
  }

  return result;
}

uint64_t sub_6E7F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_281BC0, &unk_1EDD80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6E85C()
{
  result = qword_2811C0;
  if (!qword_2811C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0);
  }

  return result;
}

unint64_t sub_6E8B0()
{
  result = qword_2811C8;
  if (!qword_2811C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8);
  }

  return result;
}

unint64_t sub_6E904()
{
  result = qword_2811D0;
  if (!qword_2811D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811D0);
  }

  return result;
}

unint64_t sub_6E9C4()
{
  result = qword_2811D8;
  if (!qword_2811D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811D8);
  }

  return result;
}

unint64_t sub_6EA1C()
{
  result = qword_2811E0;
  if (!qword_2811E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811E0);
  }

  return result;
}

uint64_t sub_6EA70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_6EAB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_6EB34()
{
  result = qword_2811E8;
  if (!qword_2811E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811E8);
  }

  return result;
}

unint64_t sub_6EB8C()
{
  result = qword_2811F0;
  if (!qword_2811F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811F0);
  }

  return result;
}

unint64_t sub_6EBE4()
{
  result = qword_2811F8;
  if (!qword_2811F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811F8);
  }

  return result;
}

uint64_t sub_6EC38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000000214480 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000002144A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657079546F636572 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657079546C616F67 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646F43656C746974 && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEB0000000065646FLL || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void __swiftcall YIRDetailedData.init(totalCardCount:cardViewedCount:)(BookAnalytics::YIRDetailedData *__return_ptr retstr, Swift::Int64_optional totalCardCount, Swift::Int64_optional cardViewedCount)
{
  retstr->totalCardCount.value = totalCardCount.value;
  retstr->totalCardCount.is_nil = totalCardCount.is_nil;
  *(&retstr->cardViewedCount.value + 7) = cardViewedCount.value;
  BYTE6(retstr[1].totalCardCount.value) = cardViewedCount.is_nil;
}

uint64_t sub_6EF60()
{
  if (*v0)
  {
    result = 0x7765695664726163;
  }

  else
  {
    result = 0x7261436C61746F74;
  }

  *v0;
  return result;
}

uint64_t sub_6EFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261436C61746F74 && a2 == 0xEE00746E756F4364;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7765695664726163 && a2 == 0xEF746E756F436465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_6F0A0(uint64_t a1)
{
  v2 = sub_6F508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6F0DC(uint64_t a1)
{
  v2 = sub_6F508();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YIRDetailedData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_281200, &qword_1ECC28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13[0] = v1[2];
  v14 = *(v1 + 24);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_6F508();
  sub_1E1E00();
  v16 = 0;
  v11 = v13[1];
  sub_1E1CA0();
  if (!v11)
  {
    v15 = 1;
    sub_1E1CA0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t YIRDetailedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_281210, &qword_1ECC30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_6F508();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_1E1BD0();
    v19 = v12;
    v13 = v11;
    v20 = 1;
    v15 = sub_1E1BD0();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
    *(a2 + 8) = v19 & 1;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17 & 1;
  }

  return sub_4E48(a1);
}

BOOL _s13BookAnalytics15YIRDetailedDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

unint64_t sub_6F508()
{
  result = qword_281208;
  if (!qword_281208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281208);
  }

  return result;
}

unint64_t sub_6F560()
{
  result = qword_281218;
  if (!qword_281218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218);
  }

  return result;
}

unint64_t sub_6F5B8()
{
  result = qword_281220;
  if (!qword_281220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281220);
  }

  return result;
}

uint64_t sub_6F60C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6F62C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_6F680()
{
  result = qword_281228;
  if (!qword_281228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228);
  }

  return result;
}

unint64_t sub_6F6D8()
{
  result = qword_281230;
  if (!qword_281230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281230);
  }

  return result;
}

unint64_t sub_6F730()
{
  result = qword_281238;
  if (!qword_281238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281238);
  }

  return result;
}

uint64_t GetStartedActionEvent.getStartedActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281270, &unk_1ECE60);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GetStartedActionEvent.getStartedActionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281270, &unk_1ECE60);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GetStartedActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GetStartedActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GetStartedActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetStartedActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GetStartedActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281270, &unk_1ECE60);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for GetStartedActionEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t GetStartedActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GetStartedActionEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GetStartedActionEvent.Model.init(getStartedActionData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for GetStartedActionEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

unint64_t sub_6FCA4()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_6FCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000000002144C0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_6FDD8(uint64_t a1)
{
  v2 = sub_7000C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6FE14(uint64_t a1)
{
  v2 = sub_7000C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GetStartedActionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_281278, &qword_1ECE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_7000C();
  sub_1E1E00();
  v13[15] = *v3;
  v13[14] = 0;
  sub_10F68();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(type metadata accessor for GetStartedActionEvent.Model(0) + 20);
    v13[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_7000C()
{
  result = qword_281280;
  if (!qword_281280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280);
  }

  return result;
}

uint64_t GetStartedActionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_281288, &qword_1ECE78);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  StartedAction = type metadata accessor for GetStartedActionEvent.Model(0);
  v11 = *(*(StartedAction - 8) + 64);
  __chkstk_darwin(StartedAction);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_7000C();
  sub_1E1DF0();
  if (!v2)
  {
    v15 = v13;
    v23 = StartedAction;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_10F10();
    v18 = v28;
    sub_1E1C20();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_14E5C(&qword_27D830);
    v21 = v6;
    sub_1E1C20();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v21, v17);
    sub_7035C(v19, v25);
  }

  return sub_4E48(a1);
}

uint64_t sub_7035C(uint64_t a1, uint64_t a2)
{
  StartedAction = type metadata accessor for GetStartedActionEvent.Model(0);
  (*(*(StartedAction - 8) + 32))(a2, a1, StartedAction);
  return a2;
}

uint64_t sub_70460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281270, &unk_1ECE60);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_7054C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281270, &unk_1ECE60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_70668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281270, &unk_1ECE60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_7077C()
{
  sub_70800();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_70800()
{
  if (!qword_2812F8)
  {
    sub_10F10();
    sub_10F68();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_2812F8);
    }
  }
}

uint64_t sub_7087C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_70934(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}