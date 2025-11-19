uint64_t sub_1000171A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1000F832C();
  }

  else
  {
    v10 = type metadata accessor for Date();
    sub_1000071F8(v10);
    if (*(v11 + 84) != a2)
    {
      return sub_100002840(*(a1 + *(a3 + 32) + 8));
    }

    v8 = sub_1000F8314();
  }

  return sub_100004DFC(v8, a2, v9);
}

uint64_t sub_100017290()
{
  sub_10000AAE4();
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    v6 = type metadata accessor for Date();
    result = sub_1000071F8(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = (v0 - 1);
      return result;
    }

    sub_1000F8314();
  }

  sub_10000A828();

  return sub_100002728(v9, v10, v11, v12);
}

uint64_t sub_100017370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C62C();
  v6 = type metadata accessor for Date();
  sub_1000071F8(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1000F832C();
  }

  else
  {
    v10 = type metadata accessor for AccountIdentity();
    sub_1000071F8(v10);
    if (*(v11 + 84) != v3)
    {
      return sub_100002840(*(v4 + *(a3 + 32)));
    }

    v8 = sub_1000F8314();
  }

  return sub_100004DFC(v8, v3, v9);
}

uint64_t sub_100017440()
{
  sub_10000AAE4();
  v4 = type metadata accessor for Date();
  sub_1000071F8(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    v6 = type metadata accessor for AccountIdentity();
    result = sub_1000071F8(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 32)) = (v0 - 1);
      return result;
    }

    sub_1000F8314();
  }

  sub_10000A828();

  return sub_100002728(v9, v10, v11, v12);
}

uint64_t sub_1000175B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002FBC();
  v6 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v7 = sub_1000071F8(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100002840(*(v4 + *(a3 + 20)));
    }

    v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    v10 = v4 + *(a3 + 24);
  }

  return sub_100004DFC(v10, v3, v9);
}

uint64_t sub_100017680()
{
  v4 = sub_10011846C();
  v5 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v4);
  result = sub_1000071F8(v5);
  if (*(v7 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return result;
    }

    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    v8 = v1 + *(v2 + 24);
  }

  sub_10000A828();

  return sub_100002728(v9, v10, v11, v12);
}

uint64_t sub_100017740(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v8 = sub_1000071F8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[8];
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = sub_1000071F8(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[9];
    }

    else
    {
      v10 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
      v11 = a3[20];
    }
  }

  return sub_100004DFC(a1 + v11, a2, v10);
}

void sub_100017854()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[8];
    }

    else
    {
      v9 = type metadata accessor for Date();
      sub_1000071F8(v9);
      if (*(v10 + 84) == v5)
      {
        v11 = v4[9];
      }

      else
      {
        sub_100099DF4(&qword_1002DCC10, &unk_100238220);
        v12 = v4[20];
      }
    }

    sub_10000A828();

    sub_100002728(v13, v14, v15, v16);
  }
}

uint64_t sub_100017968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002834();
  v6 = type metadata accessor for Date();
  sub_1000071F8(v6);
  if (*(v7 + 84) != a2)
  {
    return sub_100002840(*(v3 + *(a3 + 32) + 8));
  }

  v8 = sub_100008A44();

  return sub_100004DFC(v8, a2, v9);
}

uint64_t sub_100017A00()
{
  sub_10011846C();
  v4 = type metadata accessor for Date();
  result = sub_1000071F8(v4);
  if (*(v6 + 84) == v3)
  {
    sub_10000A828();

    return sub_100002728(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 32) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_100017A94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    v10 = a1 + *(a3 + 40);

    return sub_100004DFC(v10, a2, v9);
  }
}

void sub_100017B34()
{
  sub_100002FBC();
  if (v3 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    v5 = *(v4 + 40);
    sub_10000A828();

    sub_100002728(v6, v7, v8, v9);
  }
}

uint64_t sub_100017BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  v7 = type metadata accessor for AccountIdentity();
  v8 = a1 + *(a3 + 32);

  return sub_100004DFC(v8, a2, v7);
}

void sub_100017C34()
{
  sub_100002FBC();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for AccountIdentity();
    v5 = *(v4 + 32);
    sub_10000A828();

    sub_100002728(v6, v7, v8, v9);
  }
}

uint64_t sub_100017E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002FBC();
  v6 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v7 = sub_1000071F8(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = v4 + *(a3 + 20);
  }

  return sub_100004DFC(v10, v3, v9);
}

uint64_t sub_100017EBC()
{
  v3 = sub_10011846C();
  v4 = type metadata accessor for TSDataSyncTriggerEvent(v3);
  sub_1000071F8(v4);
  if (*(v5 + 84) != v2)
  {
    type metadata accessor for Date();
    v6 = v0 + *(v1 + 20);
  }

  sub_10000A828();

  return sub_100002728(v7, v8, v9, v10);
}

uint64_t sub_100018064(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
      v10 = *(a3 + 24);
    }

    return sub_100004DFC(a1 + v10, a2, v9);
  }
}

uint64_t sub_100018130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
      v10 = *(a4 + 24);
    }

    return sub_100002728(v5 + v10, a2, a2, v9);
  }

  return result;
}

Swift::Int sub_1000181F8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_100119BB4();
}

uint64_t sub_100018214()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_100119844();
}

uint64_t sub_100018234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10001838C(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    sub_10012ECB8();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8(v8);
    if (*(v9 + 84) == a2)
    {
      v10 = a3[5];
    }

    else
    {
      v11 = type metadata accessor for Date();
      sub_1000071F8(v11);
      if (*(v12 + 84) == a2)
      {
        v10 = a3[7];
      }

      else
      {
        sub_100099DF4(&qword_1002DB940, &qword_100232B48);
        v10 = a3[13];
      }
    }

    v13 = sub_100003F68(v10);

    return sub_100004DFC(v13, v14, v15);
  }
}

void sub_1000184A8()
{
  sub_100002FBC();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[5];
    }

    else
    {
      v9 = type metadata accessor for Date();
      sub_1000071F8(v9);
      if (*(v10 + 84) == v5)
      {
        v8 = v4[7];
      }

      else
      {
        sub_100099DF4(&qword_1002DB940, &qword_100232B48);
        v8 = v4[13];
      }
    }

    v11 = sub_100003F68(v8);

    sub_100002728(v11, v12, v0, v13);
  }
}

uint64_t sub_1000186A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002834();
  v6 = type metadata accessor for AccountIdentity.DSID();
  sub_1000071F8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_100008A44();

    return sub_100004DFC(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24));
    if (v11 >= 2)
    {
      v12 = ((v11 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v12 = -2;
    }

    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100018760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100002FBC();
  v8 = type metadata accessor for AccountIdentity.DSID();
  result = sub_1000071F8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_1000F8344();

    return sub_100002728(v11, v12, v4, v13);
  }

  else
  {
    *(v5 + *(a4 + 24)) = v4 + 2;
  }

  return result;
}

uint64_t sub_1000187FC()
{
  sub_100002FBC();
  type metadata accessor for AccountIdentity.DSID();
  v0 = sub_1000F8344();

  return sub_100004DFC(v0, v1, v2);
}

uint64_t sub_10001883C()
{
  sub_100002FBC();
  type metadata accessor for AccountIdentity.DSID();
  v1 = sub_1000F8344();

  return sub_100002728(v1, v2, v0, v3);
}

uint64_t sub_100018880()
{
  sub_100002FBC();
  sub_100099DF4(&qword_1002DDA10, &qword_100238900);
  v0 = sub_1000F8344();
  v3 = sub_100004DFC(v0, v1, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000188CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100099DF4(&qword_1002DDA10, &qword_100238900);

  return sub_100002728(a1, v5, a3, v6);
}

uint64_t sub_100018934(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    sub_10012ECB8();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for Date();
    v6 = sub_100003F68(*(a3 + 20));

    return sub_100004DFC(v6, v7, v8);
  }
}

void sub_1000189AC()
{
  sub_100002FBC();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_100003F68(*(v4 + 20));

    sub_100002728(v5, v6, v0, v7);
  }
}

uint64_t sub_100018AC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_100004DFC(v9, a2, v8);
  }
}

uint64_t sub_100018B50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_100002728(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100018C38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return _s12amsaccountsd4AvroC20schemaEncodingOption33_E75BE20988CE4C068FC731DDC06586E6LLAA0b6SchemadE0Ovpfi_0();
  }
}

uint64_t sub_100018C54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

void sub_100018C8C()
{
  sub_100002FBC();
  if (v3 == 245)
  {
    *v1 = v0 + 10;
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_100003F68(*(v4 + 20));

    sub_100002728(v5, v6, v0, v7);
  }
}

uint64_t sub_100018DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002FBC();
  v6 = type metadata accessor for AccountIdentity();
  v7 = sub_1000071F8(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = sub_1000071F8(v11);
    if (*(v13 + 84) != v3)
    {
      return sub_100002840(*(v4 + *(a3 + 32) + 8));
    }

    v9 = v12;
    v10 = v4 + *(a3 + 20);
  }

  return sub_100004DFC(v10, v3, v9);
}

uint64_t sub_100018EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100002FBC();
  v8 = type metadata accessor for AccountIdentity();
  v9 = sub_1000071F8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = type metadata accessor for Date();
    result = sub_1000071F8(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 32) + 8) = (v4 - 1);
      return result;
    }

    v11 = result;
    v12 = v5 + *(a4 + 20);
  }

  return sub_100002728(v12, v4, v4, v11);
}

uint64_t sub_100018F9C(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  v6 = type metadata accessor for AccountIdentity();
  sub_1000071F8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[5];
  }

  else
  {
    v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[13];
    }

    else
    {
      sub_100099DF4(&qword_1002DB940, &qword_100232B48);
      v8 = a3[18];
    }
  }

  v11 = sub_100003F68(v8);

  return sub_100004DFC(v11, v12, v13);
}

void sub_1000190AC()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = type metadata accessor for AccountIdentity();
    sub_1000071F8(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[5];
    }

    else
    {
      v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
      sub_1000071F8(v9);
      if (*(v10 + 84) == v5)
      {
        v8 = v4[13];
      }

      else
      {
        sub_100099DF4(&qword_1002DB940, &qword_100232B48);
        v8 = v4[18];
      }
    }

    v11 = sub_100003F68(v8);

    sub_100002728(v11, v12, v0, v13);
  }
}

uint64_t sub_100019244()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_10001928C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

char *sub_1000192B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

uint64_t sub_1000192D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001930C()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001936C()
{
  sub_100004BD4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000193A0()
{
  _Block_release(*(v0 + 16));
  sub_100004BD4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100019498()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000194D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019510()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019548()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019590()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019660()
{
  v1 = *(v0 + 16);

  sub_100008E30();
  v2 = *(v0 + 128);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000196E0()
{
  v1 = *(v0 + 16);

  sub_100008E30();
  v2 = *(v0 + 184);
  v3 = *(v0 + 208);
  v4 = v2 >> 8 != 0xFFFFFFFF || v3 > 1;
  if (v4 || (*(v0 + 224) & 0xFCFE) != 0)
  {
    sub_10014E7B4(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), v2, *(v0 + 192), *(v0 + 200), v3, *(v0 + 216), *(v0 + 224));
  }

  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  sub_10000B894(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 312), *(v0 + 296));
  v7 = *(v0 + 336);

  return _swift_deallocObject(v0, 368, 7);
}

uint64_t sub_1000197A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_1000197D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100019A54()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  sub_1000140AC();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100019B5C()
{
  sub_10014E7B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return _swift_deallocObject(v0, 114, 7);
}

uint64_t sub_100019C18()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[11];

  sub_100004650();

  return _swift_deallocObject(v7, v8, v9);
}

uint64_t sub_100019C74()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  sub_100004650();

  return _swift_deallocObject(v7, v8, v9);
}

uint64_t sub_100019EE8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019F34()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[11];

  sub_100004650();

  return _swift_deallocObject(v7, v8, v9);
}

uint64_t sub_100019F90()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  sub_100004650();

  return _swift_deallocObject(v7, v8, v9);
}

uint64_t sub_100019FEC()
{
  v1 = v0[3];

  sub_10000BB3C();
  v2 = v0[18];

  v3 = v0[20];

  v4 = v0[21];

  v5 = v0[23];

  return _swift_deallocObject(v0, 194, 7);
}

uint64_t sub_10001A404()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A444()
{
  v1 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_100003B78(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 40) & ~v3;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 199) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for Date();
  sub_100003724(v8);
  v10 = v9;
  v11 = *(v9 + 80);
  v13 = *(v12 + 64);
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 32);

  v16 = type metadata accessor for AccountIdentity();
  sub_10000307C(v16);
  (*(v17 + 8))(v0 + v5);
  v18 = *(v0 + v6 + 80);

  v19 = *(v0 + v6 + 96);

  v20 = *(v0 + v6 + 168);

  v21 = *(v0 + v6 + 184);

  v22 = (v0 + v7);
  if (*(v0 + v7 + 8))
  {

    v23 = v22[3];

    v24 = v22[5];

    v25 = v22[7];
  }

  v26 = (v7 + v11 + 64) & ~v11;
  (*(v10 + 8))(v0 + v26, v8);

  return _swift_deallocObject(v0, v26 + v13, v3 | v11 | 7);
}

uint64_t sub_10001A634()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10001A67C()
{
  v1 = v0[12];

  v2 = v0[14];

  v3 = v0[23];

  v4 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_10001A6CC()
{
  v1 = (type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = v1[10];
  v10 = type metadata accessor for AccountIdentity();
  sub_10000307C(v10);
  (*(v11 + 8))(v0 + v3 + v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001A7D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001A820()
{
  v1 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_100003B78(v1);
  v68 = *(v2 + 80);
  v3 = (v68 + 40) & ~v68;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for TSDataSyncDeviceState(0);
  v67 = *(*(v6 - 1) + 80);
  v7 = (v3 + v5 + v67) & ~v67;
  v8 = *(*(v6 - 1) + 64);
  v9 = type metadata accessor for Date();
  sub_100003724(v9);
  v11 = v10;
  v12 = *(v10 + 80);
  v66 = *(v13 + 64);
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 32);

  v16 = v0 + v3;
  v17 = *(v0 + v3 + 8);

  v18 = *(v0 + v3 + 32);

  v19 = *(v0 + v3 + 48);

  v20 = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
  v21 = type metadata accessor for AccountIdentity();
  sub_10000307C(v21);
  (*(v22 + 8))(v16 + v20);
  v23 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v24 = v23[5];
  v25 = type metadata accessor for URL();
  sub_10000307C(v25);
  (*(v26 + 8))(v16 + v24);
  v27 = *(v16 + v23[6] + 8);

  v28 = *(v16 + v23[7]);

  v29 = *(v16 + v23[8]);

  v30 = *(v16 + v23[9]);

  v31 = *(v16 + v23[10]);

  v32 = *(v16 + v23[11]);

  v33 = *(v16 + v23[12]);

  v34 = *(v16 + v23[13]);

  v35 = *(v16 + v23[14]);

  v36 = *(v16 + v23[15]);

  v37 = *(v16 + v23[16]);

  v38 = v0 + v7;
  v39 = *(v0 + v7);

  v40 = *(v0 + v7 + 16);

  v41 = v6[6];
  v42 = sub_100004DFC(v0 + v7 + v41, 1, v9);
  v43 = *(v11 + 8);
  if (!v42)
  {
    v43(v38 + v41, v9);
  }

  v44 = v8 + v7;
  v43(v38 + v6[7], v9);
  v45 = v6[8];
  if (!sub_100197D2C())
  {
    v43(v38 + v45, v9);
  }

  v46 = v44 + 7;
  v47 = v6[9];
  if (!sub_100197D2C())
  {
    v43(v38 + v47, v9);
  }

  v48 = v46 & 0xFFFFFFFFFFFFFFF8;
  v49 = v6[15];
  if (!sub_100197D2C())
  {
    v43(v38 + v49, v9);
  }

  v50 = v6[16];
  if (!sub_100004DFC(v38 + v50, 1, v9))
  {
    v43(v38 + v50, v9);
  }

  v51 = (v48 + 199) & 0xFFFFFFFFFFFFFFF8;
  v52 = *(v38 + v6[17]);

  v53 = (v38 + v6[18]);
  if (v53[1] != 1)
  {

    v54 = v53[5];

    v55 = v53[7];
  }

  v56 = *(v0 + v48 + 80);

  v57 = *(v0 + v48 + 96);

  v58 = *(v0 + v48 + 168);

  v59 = *(v0 + v48 + 184);

  v60 = (v0 + v51);
  if (*(v0 + v51 + 8))
  {

    v61 = v60[3];

    v62 = v60[5];

    v63 = v60[7];
  }

  v64 = (v51 + v12 + 64) & ~v12;
  v43(v0 + v64, v9);

  return _swift_deallocObject(v0, v64 + v66, v68 | v67 | v12 | 7);
}

uint64_t sub_10001AC88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10001ACD0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100099DF4(&qword_1002DFB30, &qword_10023FC78);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10001AD04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AD3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AD80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001AE00()
{
  v1 = sub_100099DF4(&unk_1002DFC00, &qword_10023FEF0);
  sub_100003724(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_10001AF98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AFD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 84, 7);
}

uint64_t sub_10001B008()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10001B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10001B1BC()
{
  result = 4294940294;
  v2 = *(v0 - 104);
  return result;
}

uint64_t sub_10001B34C()
{
  *STACK[0x3B8] = 75;
  *(v2 + 17) = 0x94871355BFFE36D1;
  *(v2 + 25) = 1947997477;
  *(v2 + 29) = -20318;
  *(v5 - 145) = 67;
  if (v1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((((v0 - 16) ^ (v0 - 76) & 0x3F ^ 0x1C) * v7) ^ v0)))();
}

uint64_t sub_10001B3C8()
{
  STACK[0x3B8] = &STACK[0x3D0];
  if (v1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v2 + 8 * ((((v0 - 16) ^ (v0 - 76) & 0x3F ^ 0x1C) * v5) ^ v0)))();
}

uint64_t sub_10001B410@<X0>(unsigned int a1@<W8>)
{
  v3 = ((2 * v1) & 0xDE31A7FE) + (v1 ^ 0x6F18D3FF) - 1108378372;
  v5 = (((((v3 ^ 0x2F) + 44) ^ v3 ^ ((v3 ^ 0xE9) - 18) ^ ((v3 ^ 0xCA) - 49)) ^ ((v3 ^ 0xF7) - 12)) & 0xF) != ((a1 + 1) | 8) - 29 || (((v3 ^ 0x3D13212F) - 270234068) ^ v3 ^ ((v3 ^ 0x64C35EE9) - 1238044178) ^ ((v3 ^ 0xA07D4CA) - 655328305) ^ ((v3 ^ 0x7EDFFBF7) - 1406642956)) == ((a1 - 344965220) & 0x5F) + 755519712;
  return (*(v2 + 8 * ((85 * v5) ^ a1)))();
}

uint64_t sub_10001B534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v47 = (*(v46 + 8 * (v45 + 57)))(1032);
  v48 = (*(v46 + 8 * (v45 + 57)))(1032);
  STACK[0x270] = v47;
  STACK[0x268] = v48;
  if (v47)
  {
    v56 = v48 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = !v56;
  return (*(v46 + 8 * ((v57 * (((v45 - 5) ^ 0x12) - 22)) ^ v45)))(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_10001B5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  STACK[0x3A0] = v59;
  STACK[0x3C8] = v58;
  LODWORD(STACK[0x3B4]) = v57 >> 3;
  v61 = (v57 >> 3) ^ 0x5A10A1F;
  v62 = v56[(v56[(v56[(v56[0x69A4AE39 % v61] + 3195531922) % v61] + 2561233832) % v61] + 1010281663) % v61] + 2952637770;
  STACK[0x3A8] = v61;
  LODWORD(v62) = v62 % v61 - ((2 * (v62 % v61)) & 0x1BB0A5E2) - 841461007;
  v63 = (((v62 ^ 0xB9A64B90) - 957279469) ^ ((v62 ^ 0x660E4112) + 425269649) ^ ((v62 ^ 0x12705873) + 1831272690)) + 1393072888;
  STACK[0x3C0] = v60;
  *v60 = *v56 ^ 0x8A8A8A8A8A8A8A8ALL;
  v64 = v63 > 0x597A56D;
  if (v63 < 0x597A56C)
  {
    v64 = 1;
  }

  return (*(STACK[0x3C8] + 8 * ((30 * !v64) ^ v55)))(32 * !v64, 0x1AEBBB1000000000, 93824364, v63, 0x683A163700000000, 0x3956BC4D00000000, 0x42C3E81200000000, 0x4167DE6C00000000, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_10001D020@<X0>(int a1@<W8>)
{
  v5 = (a1 - 970742834) & 0x39DC5C2D;
  v6 = (((LODWORD(STACK[0x3B4]) ^ 0x61355F33) - 1274375952) ^ ((LODWORD(STACK[0x3B4]) ^ 0x892D3945) + 1544746650) ^ ((LODWORD(STACK[0x3B4]) ^ 0xEDB96C69) + 948347830)) - 1465213416;
  v7 = v6 < (v5 ^ 0x794963D4u);
  v8 = 8 * ((v3 | ((v3 < 0x1642AEC7) << 32)) + 0x292D51176AA1EDA5) - 0x496A88BC0724E360;
  v9 = *(v2 + v8);
  v10 = 0x77338F1D15730F63 * v9 + 0x3BCB0D247B15E35;
  v11 = (v10 ^ 0xFD2A2F093B0EBDE2) & (2 * (v10 & 0xFC434F2DB84EA1CBLL)) ^ v10 & 0xFC434F2DB84EA1CBLL;
  v12 = ((2 * ((v5 + 15) ^ 0x3DAEA95B6B02BFE1 ^ v10)) ^ 0x83DBCCEDA6983C7ALL) & ((v5 + 15) ^ 0x3DAEA95B6B02BFE1 ^ v10) ^ (2 * ((v5 + 15) ^ 0x3DAEA95B6B02BFE1 ^ v10)) & 0xC1EDE676D34C1E3CLL;
  v13 = v12 ^ 0x4024221251440205;
  v14 = (v12 ^ 0x8109446482080C38) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x7B799DB4D3078F4) & v13 ^ (4 * v13) & 0xC1EDE676D34C1E3CLL;
  v16 = (v15 ^ 0x1A5805241001830) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0xC0486624924C0609)) ^ 0x1EDE676D34C1E3D0) & (v15 ^ 0xC0486624924C0609) ^ (16 * (v15 ^ 0xC0486624924C0609)) & 0xC1EDE676D34C1E30;
  v18 = (v17 ^ 0xCC666410400200) & (v16 << 8) ^ v16;
  v19 = (((v17 ^ 0xC1218012C30C1C2DLL) << 8) ^ 0xEDE676D34C1E3D00) & (v17 ^ 0xC1218012C30C1C2DLL) ^ ((v17 ^ 0xC1218012C30C1C2DLL) << 8) & 0xC1EDE676D34C1E00;
  v20 = v18 ^ 0xC1EDE676D34C1E3DLL ^ (v19 ^ 0xC1E46652400C0000) & (v18 << 16);
  v21 = v10 ^ (2 * ((v20 << 32) & 0x41EDE67600000000 ^ v20 ^ ((v20 << 32) ^ 0x534C1E3D00000000) & (((v19 ^ 0x980249340023DLL) << 16) & 0x41EDE67600000000 ^ 0x189243200000000 ^ (((v19 ^ 0x980249340023DLL) << 16) ^ 0x6676D34C00000000) & (v19 ^ 0x980249340023DLL))));
  *(STACK[0x3C0] + v8) = v9 ^ 0x8A8A8A8A8A8A8A8ALL;
  v22 = (v3 | ((v3 < 0x1642AEC7) << 32)) - 0x45082B599CB49A91 + (((v21 ^ 0x248D3C2D1C6142A5 ^ v4 ^ 0x48FADDBD037B2723) - 0x48FADDBD037B2723) ^ ((v21 ^ 0x248D3C2D1C6142A5 ^ v4 ^ 0xC39723D7BE54CB67) + 0x3C68DC2841AB3499) ^ ((v21 ^ 0x248D3C2D1C6142A5 ^ v4 ^ 0x3EFE33512A2B427FLL) - 0x3EFE33512A2B427FLL));
  v23 = (v22 ^ 0xF0D3FA11D9745985) & (2 * (v22 & 0xFA9BF8951D769A05)) ^ v22 & 0xFA9BF8951D769A05;
  v24 = ((2 * (v22 ^ 0x35E42B13F9FC698DLL)) ^ 0x9EFFA70DC915E710) & (v22 ^ 0x35E42B13F9FC698DLL) ^ (2 * (v22 ^ 0x35E42B13F9FC698DLL)) & 0xCF7FD386E48AF388;
  v25 = v24 ^ 0x41005082248A1088;
  v26 = (v24 ^ 0x8E7F8204C000E000) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x3DFF4E1B922BCE20) & v25 ^ (4 * v25) & 0xCF7FD386E48AF388;
  v28 = (v27 ^ 0xD7F4202800AC200) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0xC200918464803188)) ^ 0xF7FD386E48AF3880) & (v27 ^ 0xC200918464803188) ^ (16 * (v27 ^ 0xC200918464803188)) & 0xCF7FD386E48AF380;
  v30 = (v29 ^ 0xC77D1006408A3000) & (v28 << 8) ^ v28;
  v31 = (((v29 ^ 0x802C380A400C308) << 8) ^ 0x7FD386E48AF38800) & (v29 ^ 0x802C380A400C308) ^ ((v29 ^ 0x802C380A400C308) << 8) & 0xCF7FD386E48AF300;
  v32 = v30 ^ 0xCF7FD386E48AF388 ^ (v31 ^ 0x4F53828480820000) & (v30 << 16);
  v33 = (v22 ^ (2 * ((v32 << 32) & 0x4F7FD38600000000 ^ v32 ^ ((v32 << 32) ^ 0x648AF38800000000) & (((v31 ^ 0x802C510264087388) << 16) & 0x4F7FD38600000000 ^ 0xC79130400000000 ^ (((v31 ^ 0x802C510264087388) << 16) ^ 0x5386E48A00000000) & (v31 ^ 0x802C510264087388))))) >> 32;
  v34 = v22 + 0x40264AE58AD6B142 + (((v33 ^ 0x2AB0B6868CA672A3) - 0x6F3AE4D60DB79D06) ^ ((v33 ^ 0x427CE4052E82BB09) - 0x7F6B655AF9354ACLL) ^ ((v33 ^ 0x68CC52834E553132) - 0x2D4600D3CF44DE97));
  v35 = v34 + (v34 >> 16) + ((v34 + (v34 >> 16)) >> 8);
  v36 = v35 - ((2 * v35) & 0x3FDCE540041CBA9CLL) - 0x60118D5FFDF1A2B2;
  v37 = (v3 | ((v3 < 0x1642AEC7) << 32)) - 0x4E8C0E85C87220F1 + (((v36 ^ v21 ^ 0x248D3C2D1C6142A5 ^ 0x16F96CA64A6F3C6DLL) - 0x16F96CA64A6F3C6DLL) ^ ((v36 ^ v21 ^ 0x248D3C2D1C6142A5 ^ 0x5699B8E93391F3CFLL) - 0x5699B8E93391F3CFLL) ^ ((v36 ^ v21 ^ 0x248D3C2D1C6142A5 ^ 0x603156A79474DF8) - 0x603156A79474DF8));
  v38 = v37 - 0x6B1030554D170B7CLL + (((((v37 ^ 0x40CE6ED3BD135746) - 0x2BDE5E86F0045C3ALL) ^ v37 ^ ((v37 ^ 0x68D9FECF8D237D02) - 0x3C9CE9AC034767ELL) ^ ((v37 ^ 0xFCFAC9B39A40F54ELL) + 0x6815061928A801CELL) ^ ((v37 ^ 0xBFFD69FAE767D476) + 0x2B12A650558F20F6)) >> 32) ^ 0x6B103055);
  v39 = v38 + (v38 >> 16) + ((v38 + (v38 >> 16)) >> 8);
  v40 = (v3 | ((v3 < 0x1642AEC7) << 32)) - 0x787DE4D64F612F88 + (((v39 ^ v21 ^ 0x11A85B319668537ALL) + 0x246D8A83F8E158F3) ^ ((v39 ^ v21 ^ 0xA55599C6E9B2747DLL) - 0x6F6FB78B78C4800ALL) ^ ((v39 ^ v21 ^ 0x49FD4D5F610CBAB6) + 0x7C389CED0F85B13FLL));
  v41 = (v40 ^ 0xFB834B384BCCAA7) & (2 * (v40 & 0xAFB886BBC8BEEA87)) ^ v40 & 0xAFB886BBC8BEEA87;
  v42 = ((2 * (v40 ^ 0x7C93DF215BC9AAFLL)) ^ 0x50E37693BA04E050) & (v40 ^ 0x7C93DF215BC9AAFLL) ^ (2 * (v40 ^ 0x7C93DF215BC9AAFLL)) & 0xA871BB49DD027028;
  v43 = v42 ^ 0xA810894845021028;
  v44 = (v42 ^ 0x70B20100006000) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0xA1C6ED277409C0A0) & v43 ^ (4 * v43) & 0xA871BB49DD027028;
  v46 = (v45 ^ 0xA040A90154004020) & (16 * v44) ^ v44;
  v47 = ((16 * (v45 ^ 0x831124889023008)) ^ 0x871BB49DD0270280) & (v45 ^ 0x831124889023008) ^ (16 * (v45 ^ 0x831124889023008)) & 0xA871BB49DD027020;
  v48 = (v47 ^ 0x8011B009D0020000) & (v46 << 8) ^ v46;
  v49 = (((v47 ^ 0x28600B400D007028) << 8) ^ 0x71BB49DD02702800) & (v47 ^ 0x28600B400D007028) ^ ((v47 ^ 0x28600B400D007028) << 8) & 0xA871BB49DD027000;
  v50 = v48 ^ 0xA871BB49DD027028 ^ (v49 ^ 0x2031094900000000) & (v48 << 16);
  v51 = v40 - 0x5047794437411579 + (((v40 ^ (2 * ((v50 << 32) & 0x2871BB4900000000 ^ v50 ^ ((v50 << 32) ^ 0x5D02702800000000) & (((v49 ^ 0x8840B200DD025028) << 16) & 0x2871BB4900000000 ^ 0x30224900000000 ^ (((v49 ^ 0x8840B200DD025028) << 16) ^ 0x3B49DD0200000000) & (v49 ^ 0x8840B200DD025028))))) >> 32) ^ 0xEF5B9038);
  if (v7 == v3 + 1661383958 < 0x794963DC)
  {
    v7 = v3 + 1661383958 < v6;
  }

  v52 = v51 + (v51 >> 16) + ((v51 + (v51 >> 16)) >> 8);
  return (*(STACK[0x3C8] + 8 * (v5 ^ (4 * v7))))(v36 ^ v1 ^ v39 ^ (v52 - ((2 * v52) & 0x2B66E25E) - 1783402193), 4015755320, 0x4F7FD38600000000, 1661383958);
}

uint64_t sub_10001DB64()
{
  if (((*(STACK[0x3B8] + (*(STACK[0x3B8] + (*(STACK[0x3B8] + ((*(STACK[0x3B8] + 14) + 6) & 0xFLL)) & 0xF)) & 0xF ^ 8)) + 3) & 0xE) != 0)
  {
    v1 = (*(STACK[0x3B8] + (*(STACK[0x3B8] + (*(STACK[0x3B8] + ((*(STACK[0x3B8] + 14) + 6) & 0xFLL)) & 0xF)) & 0xF ^ 8)) + 3) & 0xF;
  }

  else
  {
    v1 = 1;
  }

  v2 = STACK[0x3A0];
  v3 = -177997545 * *STACK[0x3B8];
  return (*(STACK[0x3C8] + 8 * (((16 * (v1 == 1)) | (32 * (v1 == 1))) ^ v0)))(21, 3328166710, 752556415);
}

uint64_t sub_1000212F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, int a52, int a53, int a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v81 = LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x254]) ^ a54 ^ a78 ^ LODWORD(STACK[0x368]) ^ a69 ^ LODWORD(STACK[0x200]) ^ LODWORD(STACK[0x29C]) ^ a74 ^ LODWORD(STACK[0x350]) ^ a80 ^ LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x23C]) ^ LODWORD(STACK[0x228]) ^ a79 ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x2EC]) ^ a53 ^ a72 ^ LODWORD(STACK[0x344]) ^ a75 ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x220]) ^ LODWORD(STACK[0x230]) ^ a63 ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x210]) ^ a52 ^ LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x234]) ^ a70 ^ LODWORD(STACK[0x32C]) ^ LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x37C]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x204]) ^ LODWORD(STACK[0x224]) ^ LODWORD(STACK[0x21C]) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x25C]) ^ LODWORD(STACK[0x264]) ^ a71 ^ LODWORD(STACK[0x2BC]) ^ LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x298]) ^ a55 ^ LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x258]) ^ a73 ^ LODWORD(STACK[0x20C]) ^ LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x334]);
  v86 = v81 ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x364]) ^ a77 ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x22C]) ^ a76 ^ a64 ^ a50;
  LODWORD(v82) = *(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 5) + 11) & 0xFLL)) + 14) & 0xF)) + 10) & 0xF)) & 0xF ^ 8;
  if (v82 <= 1)
  {
    v82 = 1;
  }

  else
  {
    v82 = v82;
  }

  v83 = STACK[0x3C0];
  v84 = -947166359 * *STACK[0x3B8];
  return (*(STACK[0x3C8] + 8 * (((v82 != 1) | (4 * (v82 != 1))) ^ (v80 - 5))))(3159698914);
}

uint64_t sub_100021A0C@<X0>(uint64_t a1@<X4>, int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v68 = a2 + v64;
  v69 = (a2 + v64) >> 16;
  v70 = v58 + a2 + ((a2 + v60 + ((v68 - v69) >> 8) + ((a2 + v60 + ((v68 - v69) >> 8) - v69) >> 11) - v69) >> 4) + ((a2 + v60 + ((v68 - v69) >> 8) - v69) >> 11) + ((v68 - v69) >> 8) - v69 - a3;
  v71 = (v70 ^ 0xB6252153) - ((v70 ^ 0xB6252153) >> 9) + (((v70 ^ 0xB6252153) - ((v70 ^ 0xB6252153) >> 9)) >> 3);
  v72 = v71 ^ v63;
  v73 = v71 - 1726457715 - ((v71 - 1726457715) >> 10) - ((v71 - 1726457715 - ((v71 - 1726457715) >> 10)) >> 8);
  v74 = v73 - 1999805803 + ((v73 - 1999805803) >> 8) - ((v73 - 1999805803 + ((v73 - 1999805803) >> 8)) >> 6);
  v75 = (v74 ^ 0xF28203A6) - ((v74 ^ 0xF28203A6) >> 14) + (((v74 ^ 0xF28203A6) - ((v74 ^ 0xF28203A6) >> 14)) >> 1);
  v76 = v72 ^ v75;
  v77 = v75 - 1158522589 + ((v75 - 1158522589) >> 11) - ((v75 - 1158522589 + ((v75 - 1158522589) >> 11)) >> 2);
  v78 = (v77 ^ 0xCB745339) + ((v77 ^ 0xCB745339) >> 8) + (((v77 ^ 0xCB745339) + ((v77 ^ 0xCB745339) >> 8)) >> 5);
  v79 = v70 ^ v61 ^ v74 ^ (v78 - ((2 * v78) & 0xEAA48A24) - 179157742);
  v80 = (v78 ^ 0xB4E1846A) - ((v78 ^ 0xB4E1846A) >> 12) - (((v78 ^ 0xB4E1846A) - ((v78 ^ 0xB4E1846A) >> 12)) >> 6);
  v81 = v76 ^ v80;
  v82 = v73 ^ v59 ^ v77 ^ (v80 + 1674369025 + ((v80 + 1674369025) >> 8) - ((v80 + 1674369025 + ((v80 + 1674369025) >> 8)) >> 5));
  LODWORD(STACK[0x390]) = v82;
  LODWORD(STACK[0x34C]) = v82 & 7 ^ 2;
  v83 = -(v82 & 7 ^ 2) & 7;
  v84 = (v82 & 7) == 2;
  if ((v82 & 7) == 2)
  {
    v85 = 0;
  }

  else
  {
    v85 = 255;
  }

  LODWORD(STACK[0x348]) = v83;
  v86 = v85 << v83;
  v87 = -117440512 * v86;
  v88 = ((*(v66 + 8 * (((*(v66 + 8 * (((*(v66 + 8 * (((*(v66 + 8 * (0xE3F29D41 % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 2961423375u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 3263808933u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 3092999889u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 4181209568u) % STACK[0x3A8];
  v89 = (v79 ^ 0x5C7D213B) & 0xFE ^ 0x14;
  v90 = 16843009 * v86;
  v91 = v86 ^ 0xB3;
  if (v84)
  {
    v91 = 76;
  }

  LODWORD(STACK[0x280]) = v81;
  LODWORD(STACK[0x310]) = v87 & (v81 ^ 0x82000000);
  LODWORD(STACK[0x32C]) = v79;
  LODWORD(STACK[0x340]) = v90;
  LODWORD(STACK[0x254]) = v90 ^ v79 & 0x4C ^ v91 & (v79 ^ 0x3B);
  LODWORD(STACK[0x290]) = 16843009 * ((v81 ^ BYTE1(v81) ^ BYTE2(v81)) ^ HIBYTE(v81) ^ 0x1D);
  v92 = LODWORD(STACK[0x394]) ^ 0xF42B3858;
  v93 = LODWORD(STACK[0x3A0]) ^ 0xBBFE888E;
  v94 = ((((v88 - ((2 * v88) & 0x11A24B0E) + 147924359) ^ 0x29FAE01) - 951799598) ^ (((v88 - ((2 * v88) & 0x11A24B0E) + 147924359) ^ 0xF26AA7B) - 889342804) ^ (((v88 - ((2 * v88) & 0x11A24B0E) + 147924359) ^ 0x56821FDu) - 1061994706)) + 705096883;
  v95 = LODWORD(STACK[0x39C]) ^ 0x31D49EDE;
  LODWORD(STACK[0x344]) = 16843009 * v89;
  v96 = 3 * (v62 ^ 0x3Bu);
  v97 = (*STACK[0x3C0] ^ 0x8A8A8A8A8A8A8A8ALL) * (v96 ^ 0x6B512F49E9CDF50DLL);
  v98 = (((v97 ^ v65 ^ 0x7CA82CB17018E54ALL) + 0x7E34D12FA767BB0BLL) ^ ((v97 ^ v65 ^ 0xF8C88A1AAF51A948) - 0x5AB887B87D108F7) ^ ((v97 ^ v65 ^ 0x8460A6ABDF494C02) - 0x7903A4CAF7C9EDBDLL)) + 0x37363DC98FB5B5B1;
  v99 = (v98 ^ 0xC50C809758C2E8ACLL) & (2 * (v98 & 0xC62CC49798CAEC0ELL)) ^ v98 & 0xC62CC49798CAEC0ELL;
  v100 = ((2 * (v98 ^ 0xC14D00BA48C3A0A4)) ^ 0xEC3885BA0129954) & (v98 ^ 0xC14D00BA48C3A0A4) ^ (2 * (v98 ^ 0xC14D00BA48C3A0A4)) & 0x761C42DD0094CAALL;
  v101 = (v100 ^ 0x41400890000480) & (4 * v99) ^ v99;
  v102 = ((4 * (v100 ^ 0x1204424500944AALL)) ^ 0x1D8710B7402532A8) & (v100 ^ 0x1204424500944AALL) ^ (4 * (v100 ^ 0x1204424500944AALL)) & 0x761C42DD0094CA8;
  v103 = (v102 ^ 0x5010025400100A0) & (16 * v101) ^ v101;
  v104 = ((16 * (v102 ^ 0x260C40890084C02)) ^ 0x761C42DD0094CAA0) & (v102 ^ 0x260C40890084C02) ^ (16 * (v102 ^ 0x260C40890084C02)) & 0x761C42DD0094CA0;
  v105 = (v104 ^ 0x600400D00004800) & (v103 << 8) ^ v103;
  v106 = (((v104 ^ 0x1618420D009040ALL) << 8) ^ 0x61C42DD0094CAA00) & (v104 ^ 0x1618420D009040ALL) ^ ((v104 ^ 0x1618420D009040ALL) << 8) & 0x761C42DD0094C00;
  v107 = v105 ^ 0x761C42DD0094CAALL ^ (v106 ^ 0x140040000080000) & (v105 << 16);
  v108 = v98 - 0x39D33B68673513F2 + (((v98 ^ (2 * ((v107 << 32) & 0x761C42D00000000 ^ v107 ^ ((v107 << 32) ^ 0x50094CAA00000000) & (((v106 ^ 0x621C02DD00144AALL) << 16) & 0x761C42D00000000 ^ 0x340042400000000 ^ (((v106 ^ 0x621C02DD00144AALL) << 16) ^ 0x442DD00900000000) & (v106 ^ 0x621C02DD00144AALL))))) >> 32) ^ 0xC8EDC49C);
  v109 = v108 + (v108 >> 16) + ((v108 + (v108 >> 16)) >> 8);
  v110 = (v109 + v67) ^ v93;
  v109 -= 0x6D4C1E1C670AB82;
  v111 = v109 ^ v95;
  v112 = (((v109 ^ v97 ^ 0xBCC5290659A76FE3) + 0x3E67D5C2BDB1990CLL) ^ ((v109 ^ v97 ^ 0xDB15FF0154BA3B8DLL) + 0x59B703C5B0ACCD66) ^ ((v109 ^ v97 ^ 0x67D0D6070D1D546ELL) - 0x1A8DD53C16F45D79)) - 0x5EB97FD8350951ECLL;
  v113 = (v112 ^ 0x9B868A5B18F31312) & (2 * (v112 & 0xDC16831350F25B03)) ^ v112 & 0xDC16831350F25B03;
  v114 = ((2 * (v112 ^ 0xB8A8C7B9953A314)) ^ 0xAF381ED19343F02ELL) & (v112 ^ 0xB8A8C7B9953A314) ^ (2 * (v112 ^ 0xB8A8C7B9953A314)) & 0xD79C0F68C9A1F816;
  v115 = v114 ^ 0x5084012848A00811;
  v116 = (v114 ^ 0x80180D608921F004) & (4 * v113) ^ v113;
  v117 = ((4 * v115) ^ 0x5E703DA32687E05CLL) & v115 ^ (4 * v115) & 0xD79C0F68C9A1F814;
  v118 = (v117 ^ 0x56100D200081E010) & (16 * v116) ^ v116;
  v119 = ((16 * (v117 ^ 0x818C0248C9201803)) ^ 0x79C0F68C9A1F8170) & (v117 ^ 0x818C0248C9201803) ^ (16 * (v117 ^ 0x818C0248C9201803)) & 0xD79C0F68C9A1F810;
  v120 = (v119 ^ 0x5180060888018000) & (v118 << 8) ^ v118;
  v121 = (((v119 ^ 0x861C096041A07807) << 8) ^ 0x9C0F68C9A1F81700) & (v119 ^ 0x861C096041A07807) ^ ((v119 ^ 0x861C096041A07807) << 8) & 0xD79C0F68C9A1F800;
  v122 = v120 ^ 0xD79C0F68C9A1F817 ^ (v121 ^ 0x940C084881A00000) & (v120 << 16);
  v123 = v112 - 0x23E97CECAF0DA4FDLL + (((v112 ^ (2 * ((v122 << 32) & 0x579C0F6800000000 ^ v122 ^ ((v122 << 32) ^ 0x49A1F81700000000) & (((v121 ^ 0x439007204801E817) << 16) & 0x579C0F6800000000 ^ 0x5094064800000000 ^ (((v121 ^ 0x439007204801E817) << 16) ^ 0xF68C9A100000000) & (v121 ^ 0x439007204801E817))))) >> 32) ^ 0xF02E8DC2);
  v124 = v123 + (v123 >> 16) + ((v123 + (v123 >> 16)) >> 8);
  LODWORD(v121) = v110 ^ (v124 + v67);
  v124 -= 0x6D4C1E1C670AB82;
  v125 = v111 ^ v124;
  v126 = (((v124 ^ v97 ^ 0xFD75F83355329BE8) + 0x4B637A0D7D06592) ^ ((v124 ^ v97 ^ 0x76D0875403BABD32) - 0x70ECB7387EA7BCB4) ^ ((v124 ^ v97 ^ 0x8BA57F67568826DALL) + 0x7266B0F4D46AD8A4)) + 0x9179F5E98EB7FBBLL;
  v127 = v126 - 0x2DB6EF21BCE7E35 + (((((v126 ^ 0x84FD838E83E9999ELL) + 0x79D9128367D81855) ^ v126 ^ ((v126 ^ 0xF1F5DB6C81430FD6) + 0xCD14A6165728E1DLL) ^ ((v126 ^ 0x80D4AEFE613B7A4) - 0xAD6241DFDDDC991) ^ ((v126 ^ 0x7FDE7CFFFF775FD8) - 0x7D05120DE4B921ECLL)) >> 32) ^ 0x2DB6EF2);
  v128 = v127 + (v127 >> 16) + ((v127 + (v127 >> 16)) >> 8);
  v129 = v121 ^ (v128 + v67);
  v130 = v94 > 0xF711280C;
  if (v94 < 0xF711280B)
  {
    v130 = 1;
  }

  return (*(STACK[0x3C8] + 8 * ((29 * !v130) ^ v62)))(v94 < 0xF711280B, v129, v96, v94, a1, 4145096715, 0xFD24910DE43181CBLL, v125 ^ (v128 + 965694590), a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_10002257C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (a3 + 565884917) & 0xDE4547F9;
  LODWORD(STACK[0x328]) = LODWORD(STACK[0x280]) ^ 0xC94ABE28;
  v100 = LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x340]);
  v102 = (16843009 * a70) ^ LODWORD(STACK[0x290]) ^ 0x84848484;
  v101 = LODWORD(STACK[0x390]) ^ 0x54DC8DAA;
  v74 = (((LODWORD(STACK[0x3B4]) ^ 0xF751A025) + 577662970) ^ ((LODWORD(STACK[0x3B4]) ^ 0xCF06AB69) + 439968950) ^ ((LODWORD(STACK[0x3B4]) ^ v73 ^ 0x3DF60162) - 389427568)) + 8314883;
  v75 = v74 < 0xD11DA5C7;
  v76 = v71 < 0x55860E6;
  v77 = 0x6B512F49E9CDF54FLL * (*(STACK[0x3C0] + 8 * ((v71 | (v76 << 32)) + 0x3824F8884E3D0C1 + ((v73 - 157493946) & 0x9632ACB ^ 0x1C7DB07775C3CE1ALL))) ^ 0x8A8A8A8A8A8A8A8ALL);
  v78 = (v71 | (v76 << 32)) + 0x8606EC372FB0618 + (((v77 ^ v70 ^ 0xADD3A9ABFFB7C74ALL) - 0x753239DA88A55301) ^ ((v77 ^ v70 ^ 0x753FBF67626650E3) + 0x5221D0E9EA8B3B58) ^ ((v77 ^ v70 ^ 0xD8EC16CC9DD197A9) - 0xD86BDEAC303E2));
  v79 = v78 - 0x2F7EDE520140D2B3 + (((((v78 ^ 0x699755F7E1AA52EELL) - 0x46E98BA5E0EA805DLL) ^ v78 ^ ((v78 ^ 0xA70048E9EBBC53C8) + 0x7781694415037E85) ^ ((v78 ^ 0x1B161DB8E3A83C0ALL) - 0x3468C3EAE2E8EEB9) ^ ((v78 ^ 0xFAFFDEF4E8FEEF9CLL) + 0x2A7EFF591641C2D4)) >> 32) ^ 0x2F7EDE52);
  v80 = v79 + (v79 >> 16) + ((v79 + (v79 >> 16)) >> 8);
  v81 = (v80 + v72) ^ a2;
  v82 = (v71 | (v76 << 32)) + 0x7E516E02A76A1969 + ((((v80 - 0x6D4C1E1C670AB82) ^ v77 ^ 0xD040F5DF8C955381) + 0x4D1EBC4F70609DB3) ^ (((v80 - 0x6D4C1E1C670AB82) ^ v77 ^ 0x2B0FA76501D8133) - 0x60114C195317B0FFLL) ^ (((v80 - 0x6D4C1E1C670AB82) ^ v77 ^ 0xD2F00FA9DC88D2B2) + 0x4FAE4639207D1C82));
  v83 = v82 - 0x1BAFB793A9B84883 + (((((v82 ^ 0xD6C5FB97CCCEF3E7) + 0x3295B3FB9A89449CLL) ^ v82 ^ ((v82 ^ 0x7F4D8B6C3FCB0CA3) - 0x64E23CFF96734420) ^ ((v82 ^ 0x4C5031978642B23ALL) - 0x57FF86042FFAFAB9) ^ ((v82 ^ 0xFE77F6FFDCFF05FCLL) + 0x1A27BE938AB8B282)) >> 32) ^ 0x1BAFB793);
  v84 = v83 + (v83 >> 16) + ((v83 + (v83 >> 16)) >> 8);
  v85 = v81 ^ (v84 + v72);
  v86 = (v71 | (v76 << 32)) - 0x7A1554479EA82237 + ((((v84 - 0x6D4C1E1C670AB82) ^ v77 ^ 0x380198034E7B0E6DLL) - 0x44C02C3DE04250A2) ^ (((v84 - 0x6D4C1E1C670AB82) ^ v77 ^ 0x64207062F27E986ELL) - 0x18E1C45C5C47C6A1) ^ (((v84 - 0x6D4C1E1C670AB82) ^ v77 ^ 0x5C21E861BC059603) - 0x20E05C5F123CC8CCLL));
  v87 = (v86 ^ 0xF6D76E4707C41E15) & (2 * (v86 & 0xF6D7088647892020)) ^ v86 & 0xF6D7088647892020;
  v88 = ((2 * (v86 ^ 0x93716F4F06D65E15)) ^ 0xCB4CCF9282BEFC6ALL) & (v86 ^ 0x93716F4F06D65E15) ^ (2 * (v86 ^ 0x93716F4F06D65E15)) & 0x65A667C9415F7E34;
  v89 = v88 ^ 0x24A2204941410215;
  v90 = (v88 ^ 0x41064640410C0214) & (4 * v87) ^ v87;
  v91 = ((4 * v89) ^ 0x96999F25057DF8D4) & v89 ^ (4 * v89) & 0x65A667C9415F7E34;
  v92 = (v91 ^ 0x4800701015D7800) & (16 * v90) ^ v90;
  v93 = ((16 * (v91 ^ 0x612660C840020621)) ^ 0x5A667C9415F7E350) & (v91 ^ 0x612660C840020621) ^ (16 * (v91 ^ 0x612660C840020621)) & 0x65A667C9415F7E30;
  v94 = (v93 ^ 0x4026648001576200) & (v92 << 8) ^ v92;
  v95 = (((v93 ^ 0x2580034940081C25) << 8) ^ 0xA667C9415F7E3500) & (v93 ^ 0x2580034940081C25) ^ ((v93 ^ 0x2580034940081C25) << 8) & 0x65A667C9415F7E00;
  v96 = v94 ^ 0x65A667C9415F7E35 ^ (v95 ^ 0x24264141415E0000) & (v94 << 16);
  v97 = v86 - 0x928F779B876DFE0 + (((v86 ^ (2 * ((v96 << 32) & 0x65A667C900000000 ^ v96 ^ ((v96 << 32) ^ 0x415F7E3500000000) & (((v95 ^ 0x4180268800014A35) << 16) & 0x65A667C900000000 ^ 0x26268000000000 ^ (((v95 ^ 0x4180268800014A35) << 16) ^ 0x67C9415F00000000) & (v95 ^ 0x4180268800014A35))))) >> 32) ^ 0xBF970B16);
  v98 = v85 ^ (v97 + (v97 >> 16) + ((v97 + (v97 >> 16)) >> 8) + v72);
  if (v75 == v71 - 876264222 < 0xD11DA5C7)
  {
    v75 = v74 > v71 - 876264222;
  }

  return (*(STACK[0x3C8] + 8 * ((115 * v75) ^ v73)))(0x415F7E3500000000, v98, 0x26268000000000, 3214347030, a5, 3418703074);
}

uint64_t sub_100022D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v72 ^ 0x40;
  v83 = a72 - (LODWORD(STACK[0x358]) + LODWORD(STACK[0x308])) - 1023109288;
  v74 = STACK[0x390] & 0xFFFFFFF8;
  if (((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 13) + 6) & 0xF)) + 11) & 0xF)) + 9) & 0xF)) + 9) & 0xE) != 0)
  {
    v75 = (*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 13) + 6) & 0xF)) + 11) & 0xF)) + 9) & 0xF)) + 9) & 0xF;
  }

  else
  {
    v75 = 1;
  }

  v76 = STACK[0x3C0];
  v77 = -947166359 * *STACK[0x3B8];
  v78 = ((v77 ^ 0xEF35161F) - 1135268382 - ((v77 ^ 0xEF35161F) >> 16) + (((v77 ^ 0xEF35161F) - ((v77 ^ 0xEF35161F) >> 16)) >> 8)) ^ v77;
  v79 = (v78 - HIWORD(v78)) >> 8;
  v80 = (v78 - 1135268382 - HIWORD(v78) + ((v78 - HIWORD(v78)) >> 8)) ^ v77;
  v81 = *(STACK[0x3C8] + 8 * (v73 | ((v75 != 1) << 6)));
  HIDWORD(a48) = LODWORD(STACK[0x290]) ^ 0x7E15AE58;
  return v81(v81, 0, v80, (v80 - HIWORD(v80)) >> 8, a5, 3159698914, v79, -1135268382, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_100023088@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X4>, int a4@<W7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v46 = LODWORD(STACK[0x254]) ^ 0xCA0F3304;
  v39 = a4 + v36 + a2 + ((a2 + a1 - ((a2 + a1) >> 16)) >> 8) - ((a2 + a1) >> 16) - 1;
  v40 = v37;
  v41 = -947166359 * *(v37 + a5);
  v42 = (a5 - 1135268382 + (v41 ^ v39) - ((a5 + (v41 ^ v39)) >> (v35 + 13)) + (((v41 ^ v39) + a5 - ((a5 + (v41 ^ v39)) >> (v35 + 13))) >> 8)) ^ v41;
  v43 = (a5 - 1135268382 + v42 - ((v42 + a5) >> 16) + ((v42 + a5 - ((v42 + a5) >> 16)) >> 8)) ^ v41;
  v44 = *(v38 + 8 * ((46 * (a5 != 15)) ^ (v35 + 11)));
  return v44((v35 + 577004884), v40, -567634191, -1135268382, a3 - 1, a5, a5 - 1135268382 + v43 - ((v43 + a5) >> 16) + ((v43 + a5 - ((v43 + a5) >> 16)) >> 8), v44, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_100024244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = (v73 + 18) | 0x20;
  LODWORD(STACK[0x200]) = (LODWORD(STACK[0x200]) ^ 0x93) & a69;
  LODWORD(a49) = a71 + LODWORD(STACK[0x358]);
  HIDWORD(v122) = 1635098713 * a37;
  v123 = a68 + LODWORD(STACK[0x2BC]);
  LODWORD(v122) = a70 ^ 0x97A074D8 ^ LODWORD(STACK[0x340]) ^ v76;
  LODWORD(STACK[0x2BC]) = LODWORD(STACK[0x2AC]) + LODWORD(STACK[0x2E8]);
  LODWORD(STACK[0x324]) = LODWORD(STACK[0x324]) - HIDWORD(a48) + HIDWORD(a41);
  LODWORD(STACK[0x2E8]) = 871393671 * a38;
  v77 = (((LODWORD(STACK[0x3B4]) ^ 0x4F7CD13E) - 1706877213) ^ ((LODWORD(STACK[0x3B4]) ^ 0xCDC8306F) + 418906036) ^ ((LODWORD(STACK[0x3B4]) ^ 0x8715EB4E) + 1378493587)) + 719883958;
  v78 = v77 < 0xFB87547A;
  v79 = v72 < 0x6764713A;
  v80 = (v72 | (v79 << 32)) + 0x2EAA89862C5E9335;
  v81 = 0x6B512F49E9CDF54FLL * (v76 ^ 0x8A8A8A8A8A8A8ABELL ^ *(STACK[0x3C0] + 8 * v80 - 0x75544C349E182378));
  v82 = (v72 | (v79 << 32)) + 0x1C4BA1802A090622 + (((v81 ^ v74 ^ 0x39DDF14E17C3DD14) + 0x692E00978D49F0A9) ^ ((v81 ^ v74 ^ 0xC92CA0032955CAFALL) - 0x6620AE254C2018B9) ^ ((v81 ^ v74 ^ 0xF0F1514D3E9617EELL) - 0x5FFD5F6B5BE3C5ADLL));
  v83 = v82 - 0x6D3F935A2BF7A519 + (((((v82 ^ 0xDBDFB64B20F42556) + 0x491FDAEEF4FC7FB1) ^ v82 ^ ((v82 ^ 0x7551A88E1F548621) - 0x186E3BD434A32338) ^ ((v82 ^ 0xB26E6278EA809D90) + 0x20AE0EDD3E88C777) ^ ((v82 ^ 0x71DFEFE7FED79BFELL) - 0x1CE07CBDD5203EE7)) >> 32) ^ 0x6D3F935A);
  v84 = v83 + (v83 >> 16) + ((v83 + (v83 >> 16)) >> 8);
  v85 = v75 & (v84 >> 2) ^ v84 ^ a7;
  v86 = v84 - 0x6D4C1E1C670AB82;
  LODWORD(v84) = v75 & ((v84 + 965694590) >> 2) ^ (v84 + 965694590) ^ a8;
  v87 = v86 ^ v81;
  v88 = (v80 ^ 0xC335543C6FBCFB41) & (2 * (v80 & 0x96C3CFB91)) ^ v80 & 0x96C3CFB91;
  v89 = ((2 * (v80 ^ 0xC335542E3FC42D61)) ^ 0x248044AEA7F1ADE0) & (v80 ^ 0xC335542E3FC42D61) ^ (2 * (v80 ^ 0xC335542E3FC42D61)) & 0x1220225753F8D6F0;
  v90 = v89 ^ 0x1220225150085210;
  v91 = (v89 ^ 0x601F084C0) & (4 * v88) ^ v88;
  v92 = ((4 * v90) ^ 0x4980895D4FE35BC0) & v90 ^ (4 * v90) & 0x1260225753F8D6F0;
  v93 = (v92 ^ 0x5543E052C0) & (16 * v91) ^ v91;
  v94 = ((16 * (v92 ^ 0x1260220210188430)) ^ 0x260225753F8D6F00) & (v92 ^ 0x1260220210188430) ^ (16 * (v92 ^ 0x1260220210188430)) & 0x1260225753F8D6F0;
  v95 = (v94 ^ 0x200205513884600) & (v93 << 8) ^ v93;
  v96 = (((v94 ^ 0x10600202407090F0) << 8) ^ 0x60225753F8D6F000) & (v94 ^ 0x10600202407090F0) ^ ((v94 ^ 0x10600202407090F0) << 8) & 0x1260225753F8D600;
  v97 = v95 ^ 0x1260225753F8D6F0 ^ (v96 ^ 0x20025350D00000) & (v95 << 16);
  v98 = (v97 << 32) & 0x1260225700000000 ^ v97 ^ ((v97 << 32) ^ 0x53F8D6F000000000) & (((v96 ^ 0x12402004032806F0) << 16) & 0x1260225700000000 ^ 0x1020200700000000 ^ (((v96 ^ 0x12402004032806F0) << 16) ^ 0x225753F800000000) & (v96 ^ 0x12402004032806F0));
  v99 = ((v80 ^ 0x658DC7DE6BA3C4E1) - 0x4B274E58F860C08ELL) ^ v80 ^ ((v80 ^ 0xB5BC33EFADCFB984) + 0x64E94596C1F34215) ^ ((v80 ^ 0x81C6104CA8518E21) + 0x50936635C46D75B2) ^ ((v80 ^ 0x7F5D6DFBFDFEF72BLL) - 0x51F7E47D6E3DF344);
  v100 = (v80 ^ v87 ^ (2 * v98) ^ 0xD1553677CBCD5671) + ((2 * ((v87 ^ 0x3CBA8216D97D930FLL) & (v99 ^ 0x2EAA898693C3046FLL) ^ v99 & 0x3CBA8216D97D930FLL)) ^ 0x5955000D2282001ELL);
  v101 = v100 + HIDWORD(v100) + ((v100 + HIDWORD(v100)) >> 16);
  v102 = v101 + (v101 >> 8);
  v103 = v85 ^ v75 & (v102 >> 2) ^ v102;
  v102 -= 0x6D4C1E1C670AB82;
  v104 = v75 & (v102 >> 2) ^ v102;
  v105 = v80 - 0x57FA1F7AE809E106 + (((v102 ^ v81 ^ 0x3A093BD09D4EB499) + 0xE1064099DDF9D4) ^ ((v102 ^ v81 ^ 0xE2CFC65DC3F403DELL) - 0x27D804323898B16BLL) ^ ((v102 ^ v81 ^ 0xD8C6FD8D5EBAB747) - 0x1DD13FE2A5D605F2));
  v106 = (v105 ^ 0xCD6717640FBB2E2FLL) & (2 * (v105 & 0xEE6758644FB38F4CLL)) ^ v105 & 0xEE6758644FB38F4CLL;
  v107 = ((2 * (v105 ^ 0xD12D07A417DB302FLL)) ^ 0x7E94BF80B0D17EC6) & (v105 ^ 0xD12D07A417DB302FLL) ^ (2 * (v105 ^ 0xD12D07A417DB302FLL)) & 0x3F4A5FC05868BF62;
  v108 = v107 ^ 0x14A404048288121;
  v109 = (v107 ^ 0x3A4003C01060BE40) & (4 * v106) ^ v106;
  v110 = ((4 * v108) ^ 0xFD297F0161A2FD8CLL) & v108 ^ (4 * v108) & 0x3F4A5FC05868BF60;
  v111 = (v110 ^ 0x3D085F004020BD00) & (16 * v109) ^ v109;
  v112 = ((16 * (v110 ^ 0x24200C018480263)) ^ 0xF4A5FC05868BF630) & (v110 ^ 0x24200C018480263) ^ (16 * (v110 ^ 0x24200C018480263)) & 0x3F4A5FC05868BF60;
  v113 = (v112 ^ 0x34005C000008B600) & (v111 << 8) ^ v111;
  v114 = (((v112 ^ 0xB4A03C058600943) << 8) ^ 0x4A5FC05868BF6300) & (v112 ^ 0xB4A03C058600943) ^ ((v112 ^ 0xB4A03C058600943) << 8) & 0x3F4A5FC05868BF00;
  v115 = v113 ^ 0x3F4A5FC05868BF63 ^ (v114 ^ 0xA4A404048280000) & (v113 << 16);
  v116 = v105 - 0x1198A79BB04C70B4 + (((v105 ^ (2 * ((v115 << 32) & 0x3F4A5FC000000000 ^ v115 ^ ((v115 << 32) ^ 0x5868BF6300000000) & (((v114 ^ 0x35001F8010409C63) << 16) & 0x3F4A5FC000000000 ^ 0x200A078000000000 ^ (((v114 ^ 0x35001F8010409C63) << 16) ^ 0x5FC0586800000000) & (v114 ^ 0x35001F8010409C63))))) >> 32) ^ 0xA063D964);
  v117 = v116 + (v116 >> 16) + ((v116 + (v116 >> 16)) >> 8);
  v118 = v103 ^ v75 & (v117 >> 2) ^ v117;
  v119 = v84 ^ v104;
  if (v78 == v72 - 1809652927 < 0xFB87547A)
  {
    v78 = v72 - 1809652927 < v77;
  }

  v120 = v75 & ((v117 + 965694590) >> 2) ^ (v117 + 965694590);
  HIDWORD(a41) = a72 ^ 0xCF0F7F0D;
  return (*(STACK[0x3C8] + 8 * ((120 * v78) ^ v76)))(v117, v77, a3, v120, 0x1260225700000000, 0x3CBA8216D97D930FLL, v118, v119 ^ v120, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v122, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_100024C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x204]) ^= a66 ^ LODWORD(STACK[0x200]);
  HIDWORD(a47) = HIDWORD(a36) + LODWORD(STACK[0x304]);
  v106 = LODWORD(STACK[0x330]) + a69 + HIDWORD(a37) + LODWORD(STACK[0x358]) + a36 + 1;
  v72 = LODWORD(STACK[0x2CC]) ^ HIDWORD(a44);
  v73 = a1 - 0x369BE84673CB3440 - ((a1 - 0x369BE84673CB3440) >> 27) + ((a1 - 0x369BE84673CB3440 - ((a1 - 0x369BE84673CB3440) >> 27)) >> 13);
  v74 = v73 + (v73 >> 4);
  v75 = (v74 ^ 0xADAC748FBD04EE8) - ((v74 ^ 0xADAC748FBD04EE8) >> 28) + (((v74 ^ 0xADAC748FBD04EE8) - ((v74 ^ 0xADAC748FBD04EE8) >> 28)) >> 9);
  v76 = v75 - (v75 >> 4);
  v77 = v76 - 0x5C54758B833A97B6 + ((v76 - 0x5C54758B833A97B6) >> 24) + ((v76 - 0x5C54758B833A97B6 + ((v76 - 0x5C54758B833A97B6) >> 24)) >> 15);
  v78 = v77 - (v77 >> 3) - 0x559699A1ED7B6348 - ((v77 - (v77 >> 3) - 0x559699A1ED7B6348) >> 29) + ((v77 - (v77 >> 3) - 0x559699A1ED7B6348 - ((v77 - (v77 >> 3) - 0x559699A1ED7B6348) >> 29)) >> 9);
  v79 = v78 - (v78 >> 2);
  v80 = v79 + 0x146ED71D74A08A22 + ((v79 + 0x146ED71D74A08A22) >> 28) + ((v79 + 0x146ED71D74A08A22 + ((v79 + 0x146ED71D74A08A22) >> 28)) >> 8);
  v81 = v80 + (v80 >> 4);
  v82 = v81 - 0x3470DD8D9748A9B6 - ((v81 - 0x3470DD8D9748A9B6) >> 28) + ((v81 - 0x3470DD8D9748A9B6 - ((v81 - 0x3470DD8D9748A9B6) >> 28)) >> 8);
  v83 = v82 + (v82 >> 4) - 0x67E2EC43689F95D3 - ((v82 + (v82 >> 4) - 0x67E2EC43689F95D3) >> 29) - ((v82 + (v82 >> 4) - 0x67E2EC43689F95D3 - ((v82 + (v82 >> 4) - 0x67E2EC43689F95D3) >> 29)) >> 15);
  v84 = v83 - (v83 >> 3);
  v85 = v71 ^ v76;
  LODWORD(v76) = v81 ^ v76;
  LODWORD(v81) = v85 ^ v81;
  v86 = (v84 ^ 0x234BDBC597D1E217) + ((v84 ^ 0x234BDBC597D1E217) >> 31) - (((v84 ^ 0x234BDBC597D1E217) + ((v84 ^ 0x234BDBC597D1E217) >> 31)) >> 15);
  v87 = v81 ^ (v76 >> 2) & 0x9A0BBEF ^ 0x70EE02CF ^ v70 & ((v86 - (v86 >> 4)) >> 2) ^ (v86 - (v86 >> 4));
  HIDWORD(a37) = 4 * LODWORD(STACK[0x2A8]);
  LODWORD(STACK[0x2BC]) -= a65;
  HIDWORD(a44) = v72;
  LODWORD(STACK[0x330]) = v72 ^ 0xDEF9C00A;
  v88 = a7 ^ v74 ^ v79 ^ v84 ^ 0x1C2B6224 ^ ((v79 ^ v74 ^ v84) >> 2) & 0x9A0BBEF;
  if (((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 3) + 11) & 0xF)) + 4) & 0xF)) + 5) & 0xF)) + 4) & 0xE) != 0)
  {
    v89 = (*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 3) + 11) & 0xF)) + 4) & 0xF)) + 5) & 0xF)) + 4) & 0xF;
  }

  else
  {
    v89 = 1;
  }

  v90 = -947166359 * *STACK[0x3B8];
  v91 = (v90 ^ 0xEF35161F) >> 16;
  v92 = (v90 ^ 0xEF35161F) - v91 + (((v90 ^ 0xEF35161F) - v91) >> 8);
  v93 = (v90 ^ 0xEF35161F) - 567634191 - v91 + (((v90 ^ 0xEF35161F) - v91) >> 8);
  v94 = (v90 ^ 0xEF35161F) - 1135268382 - v91 + (((v90 ^ 0xEF35161F) - v91) >> 8);
  v95 = (v94 ^ v90) >> 16;
  v96 = (v94 ^ v90) - v95;
  v97 = v95 - (v94 ^ v90) - (v96 >> 8);
  v98 = (v94 ^ v90) - 567634191 - v95 + (((v94 ^ v90) - v95) >> 8);
  v99 = (v94 ^ v90) - 1135268382 - v95 + (((v94 ^ v90) - v95) >> 8);
  v100 = v99 ^ v90;
  v101 = v92 ^ v88 ^ (v92 >> (((v69 + 65) | 5) - 85)) & 0x9A0BBEF;
  v102 = HIWORD(v100);
  v103 = (v100 - HIWORD(v100)) >> 8;
  v104 = v100 - 1135268382 - HIWORD(v100) + v103;
  return (*(STACK[0x3C8] + 8 * ((15 * (v89 == 1)) ^ v69)))(v104, (v104 >> 2) & 0x9A0BBEF, a3, v99, v87 ^ 0x9A0BBEF ^ v93 ^ (v93 >> 2) & 0x9A0BBEF ^ v98 ^ ((v97 + 567634190) >> 2) & 0x9A0BBEF ^ (v100 - 567634191 - v102 + v103) ^ ((v100 - 567634191 - v102 + v103) >> 2) & 0x9A0BBEF, v100 - 567634191 - v102 + v103, v101 ^ (v96 + (v96 >> 8)) ^ ((v96 + (v96 >> 8)) >> 2) & 0x9A0BBEF ^ (v100 - v102 + ((v100 - v102) >> 8)) ^ ((v100 - v102 + ((v100 - v102) >> 8)) >> 2) & 0x9A0BBEF, v103, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_100025094@<X0>(uint64_t a1@<X2>, int a2@<W4>, int a3@<W6>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62)
{
  LODWORD(STACK[0x200]) = a62 ^ v69;
  LODWORD(STACK[0x2CC]) = LODWORD(STACK[0x2A0]) ^ 0x9E82FEA0;
  v89 = a34 + LODWORD(STACK[0x2E8]);
  v70 = v68 + v64 - ((v64 + v62) >> 16) + v65 + ((v64 + v62 - ((v64 + v62) >> 16)) >> 8) - 1;
  v71 = -947166359 * *(STACK[0x3B8] + v63);
  v72 = (v71 ^ v70) + v63;
  v73 = HIWORD(v72);
  v74 = (v72 - HIWORD(v72)) >> 8;
  v75 = v72 - HIWORD(v72) + v74;
  v76 = v63 - 567634191 + (v71 ^ v70) - HIWORD(v72) + v74;
  v77 = v63 - 1135268382 + (v71 ^ v70) - v73 + v74;
  v78 = (v77 ^ v71) + v63;
  v79 = v63 - 567634191 + (v77 ^ v71) - HIWORD(v78);
  LODWORD(v74) = v63 - 1135268382 + (v77 ^ v71) - HIWORD(v78);
  v80 = (v78 - HIWORD(v78)) >> 8;
  v81 = v78 - HIWORD(v78) + v80;
  v82 = v79 + v80;
  LODWORD(v74) = v74 + v80;
  v83 = v74 ^ v71;
  v84 = v67 ^ v77 ^ v66 & (v77 >> 2) ^ v74 ^ 0xBC1FBCD1 ^ v66 & (v74 >> 2);
  v85 = (v83 + v63) >> 16;
  v86 = (v83 + v63 - v85) >> 8;
  v87 = v63 + v83 - v85 + v86;
  return (*(STACK[0x3C8] + 8 * ((56 * (v63 == 15)) ^ (a4 - 577004865))))((v63 - 1135268382 + v83 - v85 + v86) ^ ((v84 & 0xFFEE872 ^ 0xDC27D72D) & (v84 & 0xF001178D ^ 0x8FFEFAFF) | v84 & 0x20000080) ^ 0x30396EFC, -460898638, a1, v83, v76 ^ a2 ^ v66 & (v76 >> 2) ^ v82 ^ v66 & (v82 >> 2) ^ (v63 - 567634191 + v83 - v85 + v86) ^ v66 & ((v63 - 567634191 + v83 - v85 + v86) >> 2), 809070332, v75 ^ a3 ^ (v75 >> (5 * (a4 ^ 0x55) - 8)) & v66 ^ v81 ^ v66 & (v81 >> 2) ^ v87 ^ v66 & (v87 >> 2), v87, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_100025338(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = a4 + v71;
  v78 = (a4 + v71) >> 16;
  v79 = v72 + a4 + ((v77 - v78) >> 8) - v78 + ((a4 + ((v77 - v78) >> 8) + v70 - v78) >> 11) + v74 + ((a4 + ((v77 - v78) >> 8) + v70 + ((a4 + ((v77 - v78) >> 8) + v70 - v78) >> 11) - v78) >> 4);
  v80 = (v79 ^ 0xB6252153) - ((v79 ^ 0xB6252153) >> 9) + (((v79 ^ 0xB6252153) - ((v79 ^ 0xB6252153) >> 9)) >> 3);
  LODWORD(STACK[0x304]) = v80;
  v81 = v80 - 1726457715 - ((v80 - 1726457715) >> 10) - ((v80 - 1726457715 - ((v80 - 1726457715) >> 10)) >> 8);
  v82 = v81 - 1999805803 + ((v81 - 1999805803) >> 8) - ((v81 - 1999805803 + ((v81 - 1999805803) >> 8)) >> 6);
  v83 = (v82 ^ 0xF28203A6) - ((v82 ^ 0xF28203A6) >> 14) + (((v82 ^ 0xF28203A6) - ((v82 ^ 0xF28203A6) >> 14)) >> 1);
  LODWORD(STACK[0x2E8]) = v83;
  v84 = v83 - 1158522589 + ((v83 - 1158522589) >> 11) - ((v83 - 1158522589 + ((v83 - 1158522589) >> 11)) >> 2);
  v85 = (v84 ^ 0xCB745339) + ((v84 ^ 0xCB745339) >> 8) + (((v84 ^ 0xCB745339) + ((v84 ^ 0xCB745339) >> 8)) >> 5);
  v86 = (v85 ^ 0xB4E1846A) - ((v85 ^ 0xB4E1846A) >> 12) - (((v85 ^ 0xB4E1846A) - ((v85 ^ 0xB4E1846A) >> 12)) >> 6);
  v87 = LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x32C]);
  v88 = ((*(STACK[0x3C0] + 8 * (((*(STACK[0x3C0] + 8 * (((*(STACK[0x3C0] + 8 * (((*(STACK[0x3C0] + 8 * (0x84FF5F38 % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 2439277448u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 2265876698u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 803491171) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 2306454608u) % STACK[0x3A8];
  v95 = a49 + LODWORD(STACK[0x308]);
  v89 = LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x39C]);
  LODWORD(STACK[0x2AC]) ^= v75 & (LODWORD(STACK[0x368]) >> 2) ^ LODWORD(STACK[0x368]) ^ a68 ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x2A8]) ^ v87 ^ a38 ^ v75 & (v87 >> 2) ^ v89 ^ a43 ^ a40 ^ v75 & ((a45 + a69) >> 2) ^ v75 & (((a45 + a69) ^ v89) >> 2) ^ a42 ^ a41 ^ a70 ^ a7 ^ v76 ^ v79 ^ v81 ^ v82 ^ v84 ^ v85 ^ v75 & ((v82 ^ v79 ^ v85) >> 2) ^ (v86 + 1674369025 + ((v86 + 1674369025) >> 8) - ((v86 + 1674369025 + ((v86 + 1674369025) >> 8)) >> 5)) ^ v75 & ((v84 ^ v81 ^ (v86 + 1674369025 + ((v86 + 1674369025) >> 8) - ((v86 + 1674369025 + ((v86 + 1674369025) >> 8)) >> 5))) >> 2);
  v90 = LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x2E8]);
  LODWORD(STACK[0x3A8]) = v86;
  LODWORD(STACK[0x390]) = (v90 ^ v86) >> 2;
  v91 = ((((v88 - ((2 * v88) & 0xE853524) - 415065454) ^ 0x42312DAF) - 470071950) ^ (((v88 - ((2 * v88) & 0xE853524) - 415065454) ^ 0x97CD95C3) + 906493214) ^ (((v88 - ((2 * v88) & 0xE853524) - 415065454) ^ 0x32BE22FE) - 1821095391)) - 65474921;
  v92 = 0x6B512F49E9CDF54FLL * (((v73 + 2) | 1u) ^ 0x8A8A8A8A8A8A8A87 ^ *STACK[0x3C0]);
  v93 = v91 < 0x42A1E0E4 || v91 > 0x42A1E0E5;
  return (*(STACK[0x3C8] + 8 * (!v93 | (4 * !v93) | v73)))(v91 > 0x42A1E0E5);
}

uint64_t sub_100025EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v61 = (v56 + 24);
  LODWORD(STACK[0x3A8]) ^= LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x354]) ^ a5 ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x2E8]) ^ STACK[0x390] & v59;
  v62 = (((LODWORD(STACK[0x3B4]) ^ 0xCDF40830) + 416008173) ^ ((LODWORD(STACK[0x3B4]) ^ 0xCDFDE954) + 415377033) ^ ((LODWORD(STACK[0x3B4]) ^ 0x5A8EB7B) - 795401048)) + 2048878486;
  v63 = v62 < 0x4ABE2D5A;
  v64 = 0x6B512F49E9CDF54FLL * (*(STACK[0x3C0] + 8 * ((v60 | ((v60 < 0x3ED344D6) << 32)) + 0x681FE467209177DDLL) - 0x40FF233AFB25E598) ^ 0x8A8A8A8A8A8A8A8ALL);
  v65 = (v60 | ((v60 < 0x3ED344D6) << 32)) - 0x5026DB8BB01787E0 + (((((v56 + 55) | 9u) ^ 0xD84DA6AF5D8DCA1ELL ^ v64 ^ v58) - 0x774D22F9F0D47A12) ^ ((v64 ^ v58 ^ 0x80D29CAF46F2C7C6) - 0x2FD218F9EBAB7787) ^ ((v64 ^ v58 ^ 0x589F3A001B7F0D95) + 0x86041A949D9422CLL));
  v66 = v65 - 0xD8A01DE1620CB5 + (((((v65 ^ 0xD918ED12F8C53CF8) + 0x263FB2F0E658CFB3) ^ v65 ^ ((v65 ^ 0x6047991D05C10032) - 0x609F3900E4A30C87) ^ ((v65 ^ 0xD67E2B6BC5BDD7A0) + 0x29597489DB2024EBLL) ^ ((v65 ^ 0x6FF9FF79D9DBE7DELL) - 0x6F215F6438B9EB6ALL)) >> 32) ^ 0xD8A01D);
  v67 = v66 + (v66 >> 16) + ((v66 + (v66 >> 16)) >> 8);
  v68 = v57 & (2 * (v67 + a3)) ^ (v67 + a3) ^ a7;
  v69 = (v60 | ((v60 < 0x3ED344D6) << 32)) - 0x44FED7CE76D60C24 + ((((v67 - 0x6D4C1E1C670AB82) ^ v64 ^ 0x33E293252FC18340) - 0x4117901DB88F6D5BLL) ^ (((v67 - 0x6D4C1E1C670AB82) ^ v64 ^ 0xC774143ED201418FLL) + 0x4A7EE8F9BAB0506CLL) ^ (((v67 - 0x6D4C1E1C670AB82) ^ v64 ^ 0xF496871BFDC0C2CFLL) + 0x799C7BDC9571D32CLL));
  v70 = (v69 ^ 0x27F39306CF452041) & (2 * (v69 & 0xB7F3DB06CF51B569)) ^ v69 & 0xB7F3DB06CF51B569;
  v71 = ((2 * (v69 ^ 0x6F94310E5DE44A51)) ^ 0xB0CFD411256BFE70) & (v69 ^ 0x6F94310E5DE44A51) ^ (2 * (v69 ^ 0x6F94310E5DE44A51)) & 0xD867EA0892B5FF38;
  v72 = v71 ^ 0x48202A0892940108;
  v73 = (v71 ^ 0x9067C2008011FE20) & (4 * v70) ^ v70;
  v74 = ((4 * v72) ^ 0x619FA8224AD7FCE0) & v72 ^ (4 * v72) & 0xD867EA0892B5FF38;
  v75 = (v74 ^ 0x4007A8000295FC20) & (16 * v73) ^ v73;
  v76 = ((16 * (v74 ^ 0x9860420890200318)) ^ 0x867EA0892B5FF380) & (v74 ^ 0x9860420890200318) ^ (16 * (v74 ^ 0x9860420890200318)) & 0xD867EA0892B5FF30;
  v77 = (v76 ^ 0x8066A0080215F300) & (v75 << 8) ^ v75;
  v78 = (((v76 ^ 0x58014A0090A00C38) << 8) ^ 0x67EA0892B5FF3800) & (v76 ^ 0x58014A0090A00C38) ^ ((v76 ^ 0x58014A0090A00C38) << 8) & 0xD867EA0892B5FF00;
  v79 = v77 ^ 0xD867EA0892B5FF38 ^ (v78 ^ 0x4062080090B50000) & (v77 << 16);
  v80 = v69 - 0x480C24F930AE4A97 + (((v69 ^ (2 * ((v79 << 32) & 0x5867EA0800000000 ^ v79 ^ ((v79 << 32) ^ 0x12B5FF3800000000) & (((v78 ^ 0x9805E2080200C738) << 16) & 0x5867EA0800000000 ^ 0x1067680800000000 ^ (((v78 ^ 0x9805E2080200C738) << 16) ^ 0x6A0892B500000000) & (v78 ^ 0x9805E2080200C738))))) >> 32) ^ 0x2777DB07);
  v81 = v80 + (v80 >> 16) + ((v80 + (v80 >> 16)) >> 8);
  v82 = (v60 | ((v60 < 0x3ED344D6) << 32)) - 0x724617328D4A890DLL + ((((v81 - 0x6D4C1E1C670AB82) ^ v64 ^ 0x793C8BC840FE3154) - 0x46AB9AF03F824BC1) ^ (((v81 - 0x6D4C1E1C670AB82) ^ v64 ^ 0xCACA5073720BD21FLL) + 0xAA2BEB4F2885776) ^ (((v81 - 0x6D4C1E1C670AB82) ^ v64 ^ 0xB3F6DBBB32F5E34BLL) + 0x739E357CB2766622));
  v83 = (v82 ^ 0xB5982460EDF33CC9) & (2 * (v82 & 0xB1DD286ACDF3BECCLL)) ^ v82 & 0xB1DD286ACDF3BECCLL;
  v84 = ((2 * (v82 ^ 0xD5B27421E7327DC9)) ^ 0xC8DEB8965583860ALL) & (v82 ^ 0xD5B27421E7327DC9) ^ (2 * (v82 ^ 0xD5B27421E7327DC9)) & 0x646F5C4B2AC1C304;
  v85 = v84 ^ 0x242144492A404105;
  v86 = (v84 ^ 0x604C040200818204) & (4 * v83) ^ v83;
  v87 = ((4 * v85) ^ 0x91BD712CAB070C14) & v85 ^ (4 * v85) & 0x646F5C4B2AC1C304;
  v88 = (v87 ^ 0x2D50082A010000) & (16 * v86) ^ v86;
  v89 = ((16 * (v87 ^ 0x64420C4300C0C301)) ^ 0x46F5C4B2AC1C3050) & (v87 ^ 0x64420C4300C0C301) ^ (16 * (v87 ^ 0x64420C4300C0C301)) & 0x646F5C4B2AC1C300;
  v90 = (v89 ^ 0x4465440228000000) & (v88 << 8) ^ v88;
  v91 = (((v89 ^ 0x200A184902C1C305) << 8) ^ 0x6F5C4B2AC1C30500) & (v89 ^ 0x200A184902C1C305) ^ ((v89 ^ 0x200A184902C1C305) << 8) & 0x646F5C4B2AC1C300;
  v92 = v90 ^ 0x646F5C4B2AC1C305 ^ (v91 ^ 0x644C480A00C10000) & (v90 << 16);
  v93 = v82 - 0x4E22D795320C4134 + (((v82 ^ (2 * ((v92 << 32) & 0x646F5C4B00000000 ^ v92 ^ ((v92 << 32) ^ 0x2AC1C30500000000) & (((v91 ^ 0x2314412A00C205) << 16) & 0x646F5C4B00000000 ^ 0x2024540A00000000 ^ (((v91 ^ 0x2314412A00C205) << 16) ^ 0x5C4B2AC100000000) & (v91 ^ 0x2314412A00C205))))) >> 32) ^ 0x398110FE);
  if (v63 == v60 + 199944325 < 0x4ABE2D5A)
  {
    v63 = v62 > v60 + 199944325;
  }

  v95 = *(STACK[0x3C8] + 8 * (v61 | (16 * v63)));
  v94 = v93 + (v93 >> 16) + ((v93 + (v93 >> 16)) >> 8);
  return v95(v95, a2, a3, v62, 0xF92B3E1E398F547ELL, 0x2AC1C30500000000, v68 ^ v57 & (2 * (v81 + a3)) ^ (v81 + a3) ^ v57 & (2 * (v94 + a3)) ^ (v94 + a3), v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1000267DC()
{
  LODWORD(STACK[0x2A8]) = LODWORD(STACK[0x2AC]) ^ 0xB44F2234;
  if (((*(STACK[0x3B8] + ((*(STACK[0x3B8] + (*(STACK[0x3B8] + ((*(STACK[0x3B8] + 15) + 2) & 0xF)) & 0xF)) + 3) & 0xF)) + 9) & 0xE) != 0)
  {
    v1 = (*(STACK[0x3B8] + ((*(STACK[0x3B8] + (*(STACK[0x3B8] + ((*(STACK[0x3B8] + 15) + 2) & 0xF)) & 0xF)) + 3) & 0xF)) + 9) & 0xF;
  }

  else
  {
    v1 = 1;
  }

  v2 = -947166359 * *STACK[0x3B8];
  return (*(STACK[0x3C8] + 8 * ((103 * (v1 != 1)) ^ (v0 - 35))))();
}

uint64_t sub_100026B70(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x2C4]) ^ 0xEA73F024;
  v6 = -947166359 * *(v4 + v2);
  return (*(v5 + 8 * ((26 * (v2 != 15)) | (v3 - 577004887))))(v2, a2 + 1);
}

uint64_t sub_100026D54@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, uint64_t a62, uint64_t a63)
{
  v71 = (v70 + a1) >> 16;
  v72 = v66 + v70 + ((v70 + a1 - v71) >> 8) - v71 + ((v70 + ((v70 + a1 - v71) >> 8) + v67 - v71) >> 11) + a2 + ((v70 + ((v70 + a1 - v71) >> 8) + v67 + ((v70 + ((v70 + a1 - v71) >> 8) + v67 - v71) >> 11) - v71) >> 4);
  v73 = (v72 ^ 0xB6252153) - ((v72 ^ 0xB6252153) >> 9) + (((v72 ^ 0xB6252153) - ((v72 ^ 0xB6252153) >> 9)) >> 3);
  v74 = v73 - 1726457715 - ((v73 - 1726457715) >> 10) - ((v73 - 1726457715 - ((v73 - 1726457715) >> 10)) >> 8);
  v75 = v74 - 1999805803 + ((v74 - 1999805803) >> 8) - ((v74 - 1999805803 + ((v74 - 1999805803) >> 8)) >> 6);
  v76 = (v75 ^ 0xF28203A6) - ((v75 >> 14) ^ 0x3CA08) + (((v75 ^ 0xF28203A6) - ((v75 >> 14) ^ 0x3CA08)) >> 1);
  v77 = v76 - 1158522589 + ((v76 - 1158522589) >> 11) - ((v76 - 1158522589 + ((v76 - 1158522589) >> 11)) >> 2);
  v78 = (v77 ^ 0xCB745339) + ((v77 ^ 0xCB745339) >> 8) + (((v77 ^ 0xCB745339) + ((v77 ^ 0xCB745339) >> 8)) >> 5);
  v79 = (v78 ^ 0xB4E1846A) - ((v78 ^ 0xB4E1846A) >> 12) - (((v78 ^ 0xB4E1846A) - ((v78 ^ 0xB4E1846A) >> 12)) >> 6);
  v80 = v79 + 1674369025 + ((v79 + 1674369025) >> 8) - ((v79 + 1674369025 + ((v79 + 1674369025) >> 8)) >> 5);
  v81 = LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x32C]) ^ 0x7BCDE333 ^ a4 ^ v72 ^ v75 ^ v78 ^ v68 & (2 * (LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x32C]) ^ 0x7BCDE333 ^ v72 ^ v75 ^ v78));
  v82 = LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x3A0]);
  v83 = STACK[0x39C];
  LODWORD(STACK[0x3A0]) = v73;
  LODWORD(STACK[0x394]) = v76;
  LODWORD(STACK[0x36C]) = v79;
  LODWORD(STACK[0x354]) = 2 * (v82 ^ v73 ^ v76 ^ v79);
  LODWORD(a36) = v81;
  LODWORD(STACK[0x3B4]) = LODWORD(STACK[0x30C]) ^ v83 ^ LODWORD(STACK[0x390]) ^ v83 ^ a38 ^ 0x6C910F4C ^ v69 ^ v74 ^ v77 ^ v80 ^ v68 & (2 * (LODWORD(STACK[0x390]) ^ v83 ^ a38 ^ 0x6C910F4C ^ v74 ^ v77 ^ v80));
  v84 = STACK[0x254];
  LODWORD(STACK[0x30C]) = LODWORD(STACK[0x254]) ^ 8;
  LODWORD(a38) = 2 * a61;
  v85 = STACK[0x200];
  LODWORD(STACK[0x308]) = ~LODWORD(STACK[0x200]);
  v86 = v85 & 0x23AB9781;
  v87 = STACK[0x204];
  LODWORD(STACK[0x304]) = LODWORD(STACK[0x204]) ^ 0x90;
  LODWORD(STACK[0x344]);
  v88 = *(*(&off_1002BCAF0 + v65 - 36) + ((2 * v65) ^ 0x54u) + 28) + 676423364;
  v89 = v88 ^ (((v88 ^ 0xC03FFED8) & STACK[0x310]) >> 1);
  v90 = (v89 ^ 0xE3946959) & STACK[0x308] | v86;
  v91 = (v87 & 0x499398E7 ^ (v89 ^ 0x89AC663F) & STACK[0x304] ^ 0x80) >> LODWORD(STACK[0x340]);
  v92 = (v90 ^ 0x23AB9781) << LODWORD(STACK[0x34C]);
  v93 = (2 * v92) & 0xF4D5551E;
  v94 = 4 * ((a65 ^ (a61 - ((2 * a61) & 0x83) - 63) ^ (((STACK[0x30C] & 0xEC ^ v84 & 0xEC ^ 8) >> LODWORD(STACK[0x348])) | (-115237376 << LODWORD(STACK[0x358])))) ^ 0x55u);
  *(STACK[0x270] + v94) = a39 ^ HIDWORD(a36) ^ (v91 - ((2 * v91) & 0xA1DBA6A8) - 789720236) ^ (v92 - v93 + 2053810831) ^ 0xEF41BB9A;
  v95 = STACK[0x268];
  *(STACK[0x268] + v94) = a39 ^ HIDWORD(a36) ^ 0x45C63D91 ^ (*(*(&off_1002BCAF0 + v65 - 37) + 188) - 17081);
  v96 = *(STACK[0x3C8] + 8 * v65);
  return v96(v96, v95, 4107621662, v93, a3, &off_1002BCAF0, v84 & 0xEC, v86, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

void sub_10002E5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61)
{
  LODWORD(STACK[0x244]) = a58 ^ (v61 - 10) ^ 0x3E028DD6;
  LODWORD(STACK[0x24C]) = a54 ^ 0xB8C758E3;
  LODWORD(STACK[0x240]) = a56 ^ 0x704CAFE7;
  LODWORD(STACK[0x248]) = a55 ^ 0xE4FD9863;
  v62 = STACK[0x35C];
  v63 = STACK[0x278];
  if (STACK[0x35C])
  {
    v64 = a60;
  }

  else
  {
    v64 = STACK[0x278];
  }

  if (v62)
  {
    a59 = a61;
  }

  if (v62)
  {
    v66 = STACK[0x278];
  }

  if ((v62 & 2) != 0)
  {
    v67 = a59;
  }

  else
  {
    v67 = v64;
  }

  LODWORD(STACK[0x278]) = v67;
  JUMPOUT(0x10002BFDCLL);
}

void sub_10002E684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53)
{
  (*(v53 + 8 * (a53 + 37)))(STACK[0x268]);
  (*(v53 + 8 * (a53 ^ 0x27)))(STACK[0x270]);
  JUMPOUT(0x10001B28CLL);
}

char *sub_10002E6C4(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

uint64_t sub_10002E920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P384.Signing.PrivateKey();

  return sub_100004DFC(a1, a2, v4);
}

uint64_t sub_10002E968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P384.Signing.PrivateKey();

  return sub_100002728(a1, a2, a2, v4);
}

uint64_t sub_10002E9DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002EA88(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002E0348, &qword_100243EE8);
    a2();
    sub_10000DBC0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002EB24()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

_OWORD *sub_10002EBAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_1001B788C(&a13, v13, v14, a1);
}

uint64_t sub_10002EBD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

Swift::Int sub_10002EC44(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return AvroSchemaEncodingError.hashValue.getter();
}

void sub_10002EC68(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  AvroSchemaEncodingError.hash(into:)();
}

uint64_t sub_10002EC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_10002EBD4(a1, a2);
  *a4 = result & 1;
  return result;
}

Swift::Int sub_10002ECB0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v7, a2[2], a2[3], a2[4]);
  return Hasher._finalize()();
}

_BYTE *sub_10002ED9C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x10002EE38);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002EF08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10002EF68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_10002EFC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10002F00C()
{
  sub_10000C62C();
  v2 = type metadata accessor for P384.Signing.PrivateKey();

  return sub_100004DFC(v1, v0, v2);
}

uint64_t sub_10002F04C()
{
  sub_10000C62C();
  type metadata accessor for P384.Signing.PrivateKey();
  v0 = sub_10002F210();

  return sub_100002728(v0, v1, v2, v3);
}

uint64_t sub_10002F084()
{
  sub_10000C62C();
  v2 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();

  return sub_100004DFC(v1, v0, v2);
}

uint64_t sub_10002F0C4()
{
  sub_10000C62C();
  type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  v0 = sub_10002F210();

  return sub_100002728(v0, v1, v2, v3);
}

uint64_t sub_10002F0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10002F224()
{

  _StringGuts.grow(_:)(18);
}

_BYTE *sub_10002F2DC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002F3A8);
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

uint64_t sub_10002F3E4()
{
  v2 = *(v0 - 200);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10002F404()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10002F474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002F4BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&unk_1002E2800, &qword_100245380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002F50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10002F56C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10002F5C4()
{
  v2 = sub_10000309C();
  v4 = v1 + *(v3(v2) + 20);

  return sub_1001BDF08(v4, v0);
}

uint64_t sub_10002F60C()
{
  v2 = sub_10000309C();
  v4 = v3(v2);
  return sub_10002F50C(v1 + *(v4 + 24), v0, type metadata accessor for PIAccountKeypair);
}

uint64_t sub_10002F674(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002E0980, &qword_1002453A0);
    sub_10002F474(a2, type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002F714(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v7 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_1000071F8(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = a3[5];
    }

    else
    {
      v10 = type metadata accessor for PIAccountKeypair();
      sub_1000071F8(v10);
      if (*(v11 + 84) == a2)
      {
        v9 = a3[6];
      }

      else
      {
        v12 = type metadata accessor for PIPrivateIdentifierMetadata();
        sub_1000071F8(v12);
        if (*(v13 + 84) == a2)
        {
          v9 = a3[7];
        }

        else
        {
          type metadata accessor for Date();
          v9 = a3[8];
        }
      }
    }

    v14 = sub_100003F68(v9);

    return sub_100004DFC(v14, v15, v16);
  }
}

uint64_t sub_10002F864(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_1000071F8(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = a4[5];
    }

    else
    {
      v10 = type metadata accessor for PIAccountKeypair();
      sub_1000071F8(v10);
      if (*(v11 + 84) == a3)
      {
        v9 = a4[6];
      }

      else
      {
        v12 = type metadata accessor for PIPrivateIdentifierMetadata();
        sub_1000071F8(v12);
        if (*(v13 + 84) == a3)
        {
          v9 = a4[7];
        }

        else
        {
          type metadata accessor for Date();
          v9 = a4[8];
        }
      }
    }

    v14 = sub_100003F68(v9);

    return sub_100002728(v14, v15, a2, v16);
  }

  return result;
}

uint64_t sub_10002F9B0(uint64_t a1, int a2, int *a3)
{
  v6 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_1000071F8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[5];
  }

  else
  {
    v9 = type metadata accessor for PIAccountKeypair();
    sub_1000071F8(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[6];
    }

    else
    {
      v11 = type metadata accessor for Date();
      sub_1000071F8(v11);
      if (*(v12 + 84) != a2)
      {
        v17 = *(a1 + a3[9]);
        if (v17 >= 4)
        {
          return v17 - 3;
        }

        else
        {
          return 0;
        }
      }

      v8 = a3[7];
    }
  }

  v13 = sub_100003F68(v8);

  return sub_100004DFC(v13, v14, v15);
}

uint64_t sub_10002FAE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_1000071F8(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = a4[5];
  }

  else
  {
    v11 = type metadata accessor for PIAccountKeypair();
    sub_1000071F8(v11);
    if (*(v12 + 84) == a3)
    {
      v10 = a4[6];
    }

    else
    {
      v13 = type metadata accessor for Date();
      result = sub_1000071F8(v13);
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 3;
        return result;
      }

      v10 = a4[7];
    }
  }

  v16 = sub_100003F68(v10);

  return sub_100002728(v16, v17, a2, v18);
}

_BYTE *sub_10002FC18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x10002FCE4);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10002FD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10002FE30(unint64_t *a1)
{

  return sub_10002F4BC(a1);
}

uint64_t sub_10002FE54(unint64_t *a1)
{

  return sub_10002F4BC(a1);
}

uint64_t sub_10002FED8()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void sub_10002FEF8(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_10002FF90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002FFD8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 9);
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = sub_1000071F8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = sub_1000071F8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[8];
      }

      else
      {
        v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
        v12 = a3[11];
      }
    }

    return sub_100004DFC(a1 + v12, a2, v11);
  }
}

uint64_t sub_1000300E4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 9) = a2 + 3;
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = sub_1000071F8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = sub_1000071F8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[8];
      }

      else
      {
        v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
        v12 = a4[11];
      }
    }

    return sub_100002728(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100030300@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t sub_1000303A8()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1000303C4()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_1000303E0()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_100030418()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

_BYTE *sub_10003043C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100030508);
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

uint64_t sub_100030578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000305C0()
{
  v2 = sub_10000309C();
  v4 = v1 + *(v3(v2) + 20);

  return sub_1001BDF08(v4, v0);
}

uint64_t sub_100030608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10003067C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000306D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002E0D90, &qword_100246260);
    sub_100030578(a2, type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100030774(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v7 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_1000071F8(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = a3[5];
    }

    else
    {
      v10 = type metadata accessor for PIPrivateIdentifierMetadata();
      sub_1000071F8(v10);
      if (*(v11 + 84) == a2)
      {
        v9 = a3[6];
      }

      else
      {
        type metadata accessor for Date();
        v9 = a3[7];
      }
    }

    v12 = sub_100003F68(v9);

    return sub_100004DFC(v12, v13, v14);
  }
}

uint64_t sub_100030884(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
    sub_1000071F8(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = a4[5];
    }

    else
    {
      v10 = type metadata accessor for PIPrivateIdentifierMetadata();
      sub_1000071F8(v10);
      if (*(v11 + 84) == a3)
      {
        v9 = a4[6];
      }

      else
      {
        type metadata accessor for Date();
        v9 = a4[7];
      }
    }

    v12 = sub_100003F68(v9);

    return sub_100002728(v12, v13, a2, v14);
  }

  return result;
}

uint64_t sub_100030990(uint64_t a1, int a2, int *a3)
{
  v6 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_1000071F8(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[5];
  }

  else
  {
    v9 = type metadata accessor for Date();
    sub_1000071F8(v9);
    if (*(v10 + 84) != a2)
    {
      v15 = *(a1 + a3[8]);
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = a3[6];
  }

  v11 = sub_100003F68(v8);

  return sub_100004DFC(v11, v12, v13);
}

uint64_t sub_100030A80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  sub_1000071F8(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = a4[5];
  }

  else
  {
    v11 = type metadata accessor for Date();
    result = sub_1000071F8(v11);
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8]) = a2 + 3;
      return result;
    }

    v10 = a4[6];
  }

  v14 = sub_100003F68(v10);

  return sub_100002728(v14, v15, a2, v16);
}

_BYTE *sub_100030B74(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100030C40);
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

uint64_t sub_100030CE8()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100030D18()
{
  v2 = *(v0 + 8);
  result = *(v1 - 136);
  v4 = *(v1 - 128);
  return result;
}

uint64_t sub_100030D24()
{
  v2 = *(v0 + 8);
  result = *(v1 - 120);
  v4 = *(v1 - 112);
  return result;
}

uint64_t sub_100030D30(uint64_t result)
{
  v2 = *(result + 20);
  *(v1 - 80) = 1;
  return result;
}

uint64_t sub_100030D44()
{
  v2 = *(v0 + 24);
  *(v1 - 80) = 2;
  return 0;
}

uint64_t sub_100030DE0(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_100030E34(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_100030E60()
{
  sub_100031640();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (sub_100004EE8() & 1) != 0))
  {

    return 0;
  }

  else
  {
    sub_100002860();
    v7 = v4 == 0xD000000000000013 && v6 == v0;
    if (v7 || (sub_100004EE8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_100002860();
      if (v4 == 0xD00000000000001BLL && v8 == v0)
      {

        return 2;
      }

      else
      {
        v10 = sub_100004EE8();

        if (v10)
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
}

uint64_t sub_100030F44()
{
  sub_100031640();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (sub_100004EE8() & 1) != 0))
  {

    return 0;
  }

  else if (v4 == 0x6E6F73616572 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_100004EE8();

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

uint64_t sub_10003100C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100030E60();
  *a1 = result;
  return result;
}

uint64_t sub_10003103C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100030F44();
  *a1 = result;
  return result;
}

void sub_100031074(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10009A468(&qword_1002DA970, &qword_1002318B0);
    sub_10009A468(&qword_1002E1088, qword_100246D30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_100031108(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_10003116C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1000311DC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000312A4);
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
          result = sub_100006284(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000312D0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100031398);
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
          result = sub_100006284(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100031420()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100031440(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = (v1 + *(a1 + 64));
  v5 = v4[1];
  *(v2 - 160) = *v4;
  *(v2 - 144) = v5;
  *(v2 - 128) = v4[2];
  *(v2 - 119) = *(v4 + 41);
  return v1 + v3;
}

uint64_t sub_10003147C()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 144);
  return result;
}

uint64_t sub_10003148C(unint64_t *a1)
{

  return sub_10003116C(a1);
}

uint64_t sub_1000314B0(unint64_t *a1)
{

  return sub_10003116C(a1);
}

uint64_t sub_1000314D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100031518@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  *(v3 - 208) = *(v1 + 8);
  *(v3 - 192) = v4;
  *(v3 - 176) = *(v1 + 40);
  *(v3 - 160) = *(v1 + 56);
  return v2 + a1;
}

unint64_t sub_10003153C()
{
  v2 = *(v0 - 144);
  *(v0 - 224) = *(v0 - 160);
  *(v0 - 208) = v2;
  *(v0 - 192) = *(v0 - 128);
  *(v0 - 183) = *(v0 - 119);
  *(v0 - 65) = 2;

  return sub_1001CB26C();
}

__n128 sub_10003156C()
{
  v1 = *(v0 - 192);
  *(v0 - 144) = *(v0 - 208);
  *(v0 - 128) = v1;
  result = *(v0 - 176);
  *(v0 - 112) = result;
  *(v0 - 96) = *(v0 - 160);
  return result;
}

uint64_t sub_100031604(uint64_t a1)
{
  v3 = *(v1 - 280);

  return sub_1001CB064(a1, v3);
}

unint64_t sub_1000316A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = v4 + 64;
  v9 = ~(-1 << *(v4 + 32));
  for (i = a2 & v9; ((1 << i) & *(v8 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_100003AE0(0, a3, a4);
    v11 = *(*(v7 + 48) + 8 * i);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      break;
    }
  }

  return i;
}

size_t sub_100031778(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100099DF4(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_100031940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_1000319A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  dispatch thunk of Identifiable.id.getter();

  return v4 != 0;
}

uint64_t sub_100031A00(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for Array();
  swift_unknownObjectRetain();
  return Array.append(_:)();
}

uint64_t sub_100031A74(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 96);
  v12 = *(v1 + 88);
  v11 = *(v1 + 80);
  v10 = *(v1 + 64);
  return sub_100031A00(a1);
}

void sub_100031B40()
{
  v3 = *(v0 - 256);
  v2 = *(v0 - 264);
  v1 = *(v0 - 468) & 1;
}

void sub_100031B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(v29 - 456);
  v32 = *(v29 - 376);
  v33 = *(v29 - 352);
  v34 = *(v29 - 224);

  sub_1001CECC8(a1, a2, a3, a4, v31, v32, v28, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_100031BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *(a1 - 32) = *(v1 - 264);
  *(a1 - 24) = v3;
  *(a1 - 16) = v1 - 192;

  return type metadata accessor for Optional();
}

uint64_t sub_100031BE4()
{
  v1 = *(v0 - 224);
  v2 = *(*(v0 - 232) + 312);
  result = *(v0 - 240);
  v4 = *(v0 - 440);
  return result;
}

uint64_t sub_100031C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002FBC();
  v17 = v6[1];
  v18 = v6[2];
  v19 = v6[3];
  sub_100032824();
  v7 = type metadata accessor for Persistence.Mode();
  v8 = sub_1000071F8(v7);
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
    return sub_100004DFC(v11, v3, v10);
  }

  v12 = type metadata accessor for Logger();
  sub_1000071F8(v12);
  if (*(v13 + 84) == v3)
  {
    v11 = sub_1000328EC();
    return sub_100004DFC(v11, v3, v10);
  }

  v15 = *(v4 + *(a3 + 72));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100031D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100002FBC();
  v17 = v8[1];
  v18 = v8[2];
  v19 = v8[3];
  sub_100032824();
  v9 = type metadata accessor for Persistence.Mode();
  v10 = sub_1000071F8(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v5;
    return sub_100002728(v13, v4, v4, v12);
  }

  v14 = type metadata accessor for Logger();
  result = sub_1000071F8(v14);
  if (*(v16 + 84) == a3)
  {
    v13 = sub_1000328EC();
    return sub_100002728(v13, v4, v4, v12);
  }

  *(v5 + *(a4 + 72)) = v4;
  return result;
}

uint64_t sub_100031E10()
{
  sub_100002FBC();
  v2 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  v3 = sub_100004DFC(v1, v0, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100031E60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100099DF4(qword_1002E12D8, &unk_100247550);

  return sub_100002728(a1, v5, a3, v6);
}

uint64_t sub_100031F0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = sub_100099DF4(&qword_1002E18D8, &qword_100247958);
  v28 = sub_100003724(v7);
  v29 = v8;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  sub_10003CF80();
  v12 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  sub_100003724(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_100003774();
  __chkstk_darwin(v17);
  sub_1000327EC();
  v18 = sub_100099DF4(&qword_1002E18E0, &qword_100247960);
  sub_100003724(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_100003774();
  __chkstk_darwin(v23);
  sub_100003B38();
  v24 = *a1;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v14 + 8))(v4, v12);
  type metadata accessor for UUID();
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_100099DF4(&qword_1002E18E8, &qword_100247990);
  a2[4] = sub_1001DBE60();
  sub_100007914(a2);
  sub_1000326A8(&qword_1002E1908, &qword_1002E18E0, &qword_100247960);
  sub_1000326A8(&qword_1002E1910, &qword_1002E18D8, &qword_100247958);
  sub_100032730();
  sub_100032658(v25, v26);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v29 + 8))(v2, v28);
  return (*(v20 + 8))(v3, v18);
}

uint64_t sub_100032250(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    type metadata accessor for Logger();
    v5 = sub_1000328EC();

    return sub_100004DFC(v5, a2, v6);
  }
}

void sub_1000322D4()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    type metadata accessor for Logger();
    v3 = sub_1000328EC();

    sub_100002728(v3, v0, v0, v4);
  }
}

uint64_t sub_100032354@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v11 = v2[9];
  return sub_1001D3CA4(a1, a2);
}

uint64_t sub_100032388(void *a1)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  return v2(*a1);
}

uint64_t sub_1000323B4()
{
  v1 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000323EC()
{
  v1 = v0[5];
  v2 = v0[9];
  v3 = v0[10];
  return dispatch thunk of ModelContext.delete<A>(_:)();
}

uint64_t sub_100032454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DCC48, &qword_100238200);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000324D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[4];
  v5 = v2[7];
  v6 = v2[8];
  result = (*(v5 + 112))(*a1, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000325C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100099DF4(a3, a4);
  sub_100003BF0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_100032658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000326A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100032778()
{
  v1 = *(*(v0 - 312) + 8);
  result = *(v0 - 320);
  v3 = *(v0 - 304);
  return result;
}

uint64_t sub_100032798()
{
}

uint64_t sub_1000327B4()
{
}

uint64_t sub_1000327CC(uint64_t a1)
{

  return sub_100002728(v1, 0, 1, a1);
}

uint64_t sub_1000327FC()
{
  v3 = *(v0 + 168);
  v4 = *(v0 + 184);
  *(v1 - 176) = v3;
  *(v1 - 160) = v4;
  *(v1 - 144) = *(v0 + 200);
  *(v1 - 128) = v4;
  *(v1 - 112) = v3;

  return sub_1001EBA7C();
}

uint64_t sub_100032830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100002728(a1, 0, 1, a4);
}

uint64_t sub_100032848()
{

  return Predicate.init(_:)();
}

uint64_t sub_100032864()
{

  return Predicate.init(_:)();
}

uint64_t sub_100032888(uint64_t a1)
{

  return sub_1001D38F4(v3, v1, v2, a1);
}

uint64_t sub_1000328AC()
{

  return swift_slowAlloc();
}

uint64_t sub_10003290C()
{

  return FetchDescriptor.init(predicate:sortBy:)();
}

void sub_10003292C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10003294C()
{

  return swift_slowAlloc();
}

uint64_t sub_100032964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s29PrivateIdentifierHistoryModelCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000329A8(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  sub_1001E6E14();
  return sub_1001E6E34();
}

uint64_t sub_1000329DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s22PrivateIdentifierModelCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100032A20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_100099DF4(a5, a6);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v20 - v16;
  sub_100012C94(a1, &v20 - v16, a5, a6);
  v18 = *a2;
  return sub_100032AE4(v17, a7, a8, a5, a6);
}

uint64_t sub_100032AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  sub_100033350();
  sub_1000332EC(v8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100004E24(a1, a4, a5);
}

void sub_100032BB4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001512EC(*a1, v2 + 40);
    sub_1000334B8();
    sub_100004118((v3 + 24));
    sub_10000601C((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100004118(v2);
  }

  else
  {
    sub_1000334B8();
    sub_100004118((v3 + 24));
    sub_10000601C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_100032C5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001DD498();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100032C8C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1001DD56C();
}

void sub_100032D84(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1001DDA88();
  *a2 = v4;
  a2[1] = v5;
}

void sub_100032DD8(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_100006D74();
    if (v13 != v14)
    {
      sub_100007310();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_100099DF4(a5, a6);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 16);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v17 != a4 || &a4[2 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 16 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100099DF4(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_100032EF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100099DF4(a3, a4);
  v8 = sub_100033464();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100032FEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_10000B42C();
  if (v8 && (v9 = (a4)(0), result = sub_10000307C(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_100006A90();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_100006A90();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_1000330A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_100033118()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1001DDCB0();
}

unint64_t sub_100033138(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10009A468(&qword_1002E1CA8, &unk_100247FE0);
    v4();
    sub_10000509C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000331A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001DD9A8();
}

void sub_1000331C0()
{
  sub_1000334E8();
  if (!sub_10003CD3C(v1))
  {
    v3 = v2;
    sub_10009A468(&qword_1002E12C8, &qword_100248D50);
    sub_1000332EC(v3);
    sub_10000509C();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_1000334FC();
}

uint64_t sub_100033248()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001DD7CC();
}

void sub_100033264()
{
  sub_1000334E8();
  if (!sub_10003CD3C(v1))
  {
    v3 = v2;
    sub_10009A468(&qword_1002E1AB8, &qword_100247AD0);
    sub_1000332EC(v3);
    sub_10000509C();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_1000334FC();
}

unint64_t sub_1000332EC(uint64_t a1)
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

uint64_t sub_100033330()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001DD628();
}

uint64_t sub_1000333B0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000333D0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

double sub_100033404()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0;
  return result;
}

uint64_t sub_100033428@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_100032FEC(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_100033488()
{

  return PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_1000334B8()
{

  return swift_beginAccess();
}

void *sub_1000334D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100032EF4(v5, a2, a3, a4, v4);
}

uint64_t sub_100033510(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1000346B0(&unk_1002E1E90);
  sub_100034A98(v6, v7, v8, v9, v10, v11, v12, v13, v4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10003491C();
  sub_1000346B0(v14);
  sub_100034A5C();
  v15 = sub_100007B1C();
  a4(v15);
  sub_100034B30();
  sub_100034AC0();

  return v17;
}

uint64_t sub_10003360C()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_100034A8C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v1 = sub_100007B1C();
  sub_10009A7A0(v1, v2);
}

uint64_t sub_1000336C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v10);
  sub_100034A2C();
  a7(a5, a6);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100033790(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = sub_1000346B0(&unk_1002E1E90);
  sub_100033444(v4, v5, v6, v7, v8, v9, v10, v11, v14, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10003491C();
  sub_1000346B0(v12);
  sub_1000346B0(a2);
  sub_100034AC0();
}

uint64_t sub_100033898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v6);
  sub_100034A8C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v7 = a4(0);
  sub_100006EF0(v7);
  return (*(v8 + 8))(a1);
}

uint64_t sub_100033978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v5);
  sub_1000346B0(a4);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100033A2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v14 = a5(0);
  sub_100003724(v14);
  v16 = *(v15 + 64);
  sub_100003774();
  __chkstk_darwin(v17);
  sub_100004880();
  (*(v18 + 16))(v8, a1);
  v19 = *a2;
  return sub_100033898(v8, a6, a7, a8);
}

uint64_t sub_100033BDC()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_100034A8C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100033C94()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_100034A2C();
  sub_1000343EC(v1);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100033D54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = sub_100007B1C();
  sub_1001D035C(v5, v6);
  sub_100007B1C();
  return sub_10003360C();
}

void sub_100033DA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001512EC(*a1, v2 + 40);
    sub_1000334B8();
    sub_100004118((v3 + 24));
    sub_10000601C((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100004118(v2);
  }

  else
  {
    sub_1000334B8();
    sub_100004118((v3 + 24));
    sub_10000601C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_100033E50(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001DFB90(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

uint64_t sub_100033E7C(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001DFE24();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_100033EA8(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001DFF60();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_100033F04(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001DFF9C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_100033F7C(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E01B8(v2);
  *v1 = result;
  return result;
}

uint64_t sub_100033FA4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1001E0288();
}

uint64_t sub_100033FCC(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E03D4(v2);
  *v1 = result;
  return result;
}

uint64_t sub_100033FF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1001E04A8();
}

uint64_t sub_100034240(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_100034278(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001E0DE4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

unint64_t sub_1000342D8(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_10009A468(v3, v4);
    sub_100004938();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_100034318()
{
  sub_100034AB4();
  sub_100034978();
  return sub_1000336C8(v0, v1, v2, v3, v4, v5, sub_10003435C);
}

unint64_t sub_10003435C(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_100034B10();
    sub_10009A468(&qword_1002E1CA8, &unk_100247FE0);
    v2();
    sub_10000509C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000343C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100033C94();
}

unint64_t sub_1000343EC(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_100034B10();
    sub_10009A468(&qword_1002E1EE0, &qword_100248550);
    result = sub_100034B3C();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_100034440()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100033C94();
}

unint64_t sub_100034484(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_100034B10();
    sub_10009A468(&qword_1002E1EF8, &qword_100248558);
    v2();
    sub_10000509C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000344EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001E091C();
}

void sub_100034508()
{
  sub_1000334E8();
  if (!sub_10003CD3C(v1))
  {
    v3 = v2;
    sub_10009A468(&qword_1002DA970, &qword_1002318B0);
    sub_1000346B0(v3);
    sub_10000509C();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_1000334FC();
}

uint64_t sub_100034590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100034990();
  return sub_100033978(v3, v4, v5, v6);
}

uint64_t sub_1000345D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100034990();
  return sub_100033978(v3, v4, v5, v6);
}

uint64_t sub_100034618()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100034990();
  return sub_100033978(v3, v4, v5, v6);
}

unint64_t sub_1000346B0(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v3(255);
    sub_100004938();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000346F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001E0544();
}

uint64_t sub_10003470C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001E0328();
}

uint64_t sub_10003472C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1001E00F8();
}

uint64_t sub_10003474C()
{
  sub_100034AB4();
  sub_100034978();
  return sub_1000336C8(v0, v1, v2, v3, v4, v5, sub_10003435C);
}

uint64_t sub_100034790()
{
  sub_100034AB4();
  sub_100034978();
  return sub_1000336C8(v0, v1, v2, v3, v4, v5, sub_10003435C);
}

unint64_t sub_10003481C(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_100034B10();
    sub_10009A468(&qword_1002DCC48, &qword_100238200);
    result = sub_100034B3C();
    atomic_store(result, v1);
  }

  return result;
}

double sub_100034934()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

double sub_100034964()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t sub_1000349DC()
{

  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100034AB4()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return result;
}

uint64_t sub_100034AC0()
{

  return PersistentModel.getValue<A>(forKey:)();
}

void sub_100034AD8()
{

  sub_1001DEC90();
}

uint64_t sub_100034AFC()
{
  *(v3 + 16) = v1;
  v5 = *(v4 - 192);
  return v3 + *(v4 - 200) + v0 * v2;
}

uint64_t sub_100034B1C(uint64_t result)
{
  *(v2 - 144) = result;
  *(v2 - 176) = v1;
  return result;
}

uint64_t sub_100034B3C()
{

  return swift_getWitnessTable();
}

uint64_t sub_100034B5C()
{

  return swift_allocObject();
}

uint64_t sub_100034B74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  sub_10003511C();
  sub_10003505C(v8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100004E24(a1, a4, a5);
}

uint64_t sub_100034C8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_100099DF4(a5, a6);
  v15 = sub_1000030B8(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v22 - v18;
  sub_100012C94(a1, &v22 - v18, a5, a6);
  v20 = *a2;
  return sub_100034BBC(v19, a7, a8, a5, a6);
}

void sub_100034D4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001512EC(*a1, v2 + 40);
    sub_1000334B8();
    sub_100004118((v3 + 24));
    sub_10000601C((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100004118(v2);
  }

  else
  {
    sub_1000334B8();
    sub_100004118((v3 + 24));
    sub_10000601C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

void sub_100034DF4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1001E2A10();
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_100034E24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1001E308C();
}

uint64_t sub_100034EAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001E2F68();
}

void sub_100034EC8()
{
  sub_1000334E8();
  if (!sub_10003CD3C(v1))
  {
    v3 = v2;
    sub_10009A468(&qword_1002E12C8, &qword_100248D50);
    sub_10003505C(v3);
    sub_10000509C();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_1000334FC();
}

uint64_t sub_100034FB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001E2E88();
}

void sub_100034FD4()
{
  sub_1000334E8();
  if (!sub_10003CD3C(v1))
  {
    v3 = v2;
    sub_10009A468(&qword_1002E1AB8, &qword_100247AD0);
    sub_10003505C(v3);
    sub_10000509C();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_1000334FC();
}

unint64_t sub_10003505C(uint64_t a1)
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

uint64_t sub_1000350A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001E2BF8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000350D0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1001E2D24();
}

uint64_t sub_1000350FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001E2DE0();
}

double sub_1000351C4()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0;
  return result;
}

uint64_t sub_100035300(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Date();
  v4 = sub_100003724(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v9 = v8 - v7;
  v11 = *(v10 + 16);
  v12 = sub_100007B1C();
  v13(v12);
  v14 = *a2;
  return sub_1000353CC(v9);
}

uint64_t sub_1000353CC(uint64_t a1)
{
  swift_getKeyPath();
  sub_10003615C();
  sub_100036118(v2);
  sub_1000361BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v3 = type metadata accessor for Date();
  sub_100006EF0(v3);
  return (*(v4 + 8))(a1);
}

uint64_t sub_100035568()
{
  swift_getKeyPath();
  sub_1000362BC();
  sub_10003615C();
  sub_100036118(v0);
  sub_1000361BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100035608()
{
  sub_10003630C();
  v2 = v1;
  swift_getKeyPath();
  v3 = sub_100036118(&unk_1002E2228);
  sub_100034A98(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100036174();
  sub_100036118(v11);
  v12 = sub_100007B1C();
  v2(v12);
  PersistentModel.getValue<A>(forKey:)();

  sub_100036320();
}

uint64_t sub_100035718()
{
  swift_getKeyPath();
  sub_10003615C();
  sub_100036118(v0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v1 = sub_100007B1C();
  sub_10009A7A0(v1, v2);
}

uint64_t sub_1000357D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_10003615C();
  sub_100036118(v10);
  sub_100034A2C();
  a7(a5, a6);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1000358A0()
{
  sub_10003630C();
  v1 = v0;
  v3 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  swift_getKeyPath();
  sub_100099DF4(&qword_1002E1CA8, &unk_100247FE0);
  sub_100035EE0(&unk_1002E1CA0);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v4 = sub_10000A874();
  sub_10009A7A0(v4, v5);
  *v1 = 0;
  sub_100036320();
}

uint64_t sub_100035988(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = sub_100007B1C();
  sub_1001D035C(v5, v6);
  sub_100007B1C();
  return sub_100035718();
}

uint64_t sub_1000359DC()
{
  sub_1000362D4();
  sub_10003615C();
  sub_100036118(v0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100035A60()
{
  sub_1000362D4();
  sub_10003615C();
  sub_100036118(v0);
  sub_10003618C();
  sub_100036118(v1);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_100035B04(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001512EC(*a1, v2 + 40);
    sub_1000334B8();
    sub_100004118((v3 + 24));
    sub_10000601C((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100004118(v2);
  }

  else
  {
    sub_1000334B8();
    sub_100004118((v3 + 24));
    sub_10000601C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_100035BAC(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001E4880();
  *v1 = result;
  return result;
}

uint64_t sub_100035BD4(uint64_t *a1, uint64_t *a2)
{
  sub_1000362B0(a1, a2);
  sub_1000361E8();
  return sub_100035568();
}

uint64_t sub_100035C04(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001E48E4();
  *v1 = result;
  return result;
}

uint64_t sub_100035C2C(uint64_t *a1, uint64_t *a2)
{
  sub_1000362B0(a1, a2);
  sub_1000361D0();
  return sub_100035568();
}

uint64_t sub_100035CEC(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E4A00(v2);
  *v1 = result;
  *(v1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100035D20(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E4AD8(v2);
  *v1 = result;
  return result;
}

uint64_t sub_100035D48(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1001E4F64();
}

uint64_t sub_100035D70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001E5020();
}

uint64_t sub_100035D90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1001E4EA4();
}

uint64_t sub_100035DB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100035A60();
}

uint64_t sub_100035DD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100035A60();
}

uint64_t sub_100035DF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000359DC();
}

uint64_t sub_100035E1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000359DC();
}

void sub_100035E40(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E49A4();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_100035E9C()
{
  sub_100034AB4();
  sub_100034978();
  return sub_1000357D8(v0, v1, v2, v3, v4, v5, sub_100035EE0);
}

unint64_t sub_100035EE0(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10009A468(&qword_1002E1CA8, &unk_100247FE0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_100035F54(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E4948();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_100035FB0()
{
  sub_100034AB4();
  sub_100034978();
  return sub_1000357D8(v0, v1, v2, v3, v4, v5, sub_100035EE0);
}

void sub_100035FF4(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E46D8();
  *v1 = v2;
  v1[1] = v3;
}

unint64_t sub_100036068(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_10009A468(&qword_1002DCC48, &qword_100238200);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000360D0(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E44DC(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

unint64_t sub_100036118(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v3(255);
    sub_100004938();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_100036274()
{

  return dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_100036298()
{

  return dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_1000362B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t sub_1000362D4()
{

  return swift_getKeyPath();
}

uint64_t sub_1000362F4()
{

  return Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
}

uint64_t sub_100036438(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = sub_100037CD4(&unk_1002E23E8);
  sub_100033444(v4, v5, v6, v7, v8, v9, v10, v11, v14, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100037DF0();
  sub_100037CD4(v12);
  sub_100037CD4(a2);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_100036548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  sub_100037DD8();
  v8 = sub_100037CD4(v7);
  sub_100037EAC(v8, v9, v10, v11, v12, v8, v13, v14, v18, v19, v4, a1, v20, v21);
  sub_1000380EC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v15 = a4(0);
  sub_10000307C(v15);
  return (*(v16 + 8))(a1);
}

uint64_t sub_1000366F0(uint64_t a1)
{
  swift_getKeyPath();
  sub_100037DD8();
  v4 = sub_100037CD4(v3);
  sub_100037EAC(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, a1, v14, v15);
  sub_10003815C();
}

uint64_t sub_100036790()
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v0);
  sub_100034A8C();
  sub_10003815C();
  v1 = sub_100007B1C();
  sub_10009A7A0(v1, v2);
}

void sub_100036844()
{
  sub_10003630C();
  v2 = v1;
  swift_getKeyPath();
  v3 = sub_100037CD4(&unk_1002E23E8);
  sub_100034A98(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100037DF0();
  sub_100037CD4(v11);
  sub_100034A5C();
  v12 = sub_100007B1C();
  v2(v12);
  sub_100034B30();
  PersistentModel.getValue<A>(forKey:)();

  sub_100036320();
}

uint64_t sub_100036940(uint64_t a1)
{
  swift_getKeyPath();
  sub_100037DD8();
  v4 = sub_100037CD4(v3);
  sub_100037EAC(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, a1, v14, v15);
  sub_10003815C();

  return sub_1000ACD3C(a1);
}

uint64_t sub_100036AC8()
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v0);
  sub_100034A8C();
  sub_10003815C();
}

void sub_100036B78()
{
  sub_10003630C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6[4];
  sub_10000C4FC(v6, v6[3]);
  swift_getKeyPath();
  sub_100099DF4(&qword_1002E1CA8, &unk_100247FE0);
  sub_100037624(&unk_1002E1CA0);
  sub_1000380F8();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10009A7A0(v3, v1);
  *v5 = 0;
  sub_100036320();
}

uint64_t sub_100036C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v8);
  sub_100034A2C();
  v9 = sub_1000049C0();
  a7(v9);
  sub_1000380F8();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100036D20()
{
  sub_1000362D4();
  sub_100037DD8();
  sub_100037CD4(v0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100036DA4()
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v0);
  v1 = sub_1000049C0();
  sub_100037CD4(v1);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100036E54(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(sub_100099DF4(&qword_1002DA970, &qword_1002318B0) - 8) + 64);
  sub_100003774();
  __chkstk_darwin(v4);
  v5 = sub_100002A98();
  sub_1000A9914(v5, v6);
  v7 = *a2;
  v8 = sub_10003CF90();
  return sub_100036940(v8);
}

uint64_t sub_100036EF4()
{
  sub_1000362D4();
  sub_100037DD8();
  sub_100037CD4(v0);
  sub_1000377C8();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100036FB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v14 = a5(0);
  sub_100003724(v14);
  v16 = *(v15 + 64);
  sub_100003774();
  __chkstk_darwin(v17);
  sub_100004880();
  (*(v18 + 16))(v8, a1);
  v19 = *a2;
  return sub_100036548(v8, a6, a7, a8);
}

uint64_t sub_100037084()
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v0);
  sub_100034A2C();
  sub_1000343EC(v1);
  sub_1000380F8();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100037140(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = sub_100007B1C();
  sub_1001D035C(v5, v6);
  sub_100007B1C();
  return sub_100036790();
}

void sub_1000371C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001512EC(*a1, v2 + 40);
    sub_1000334B8();
    sub_100004118((v3 + 32));
    sub_10000601C((v2 + 40), v3 + 32);
    swift_endAccess();
    sub_100004118(v2);
  }

  else
  {
    sub_1000334B8();
    sub_100004118((v3 + 32));
    sub_10000601C(v2, v3 + 32);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_100037268(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001E6E08();
  *v1 = result;
  return result;
}

uint64_t sub_100037290(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100037FC4();
  return sub_1000366F0(v4);
}

uint64_t sub_1000372E0(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E7098(v2);
  *v1 = result;
  return result;
}

uint64_t sub_100037330(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001E6DFC();
  *v1 = result;
  return result;
}

uint64_t sub_100037358(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100037FDC();
  return sub_1000366F0(v4);
}

void sub_100037584(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E76E4();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_1000375E0()
{
  sub_100034AB4();
  sub_100034978();
  return sub_100036C60(v0, v1, v2, v3, v4, v5, sub_100037624);
}

unint64_t sub_100037624(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_100034B10();
    sub_10009A468(&qword_1002E1CA8, &unk_100247FE0);
    v2();
    sub_10000509C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000376A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100037084();
}

unint64_t sub_1000376F4(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_100034B10();
    sub_10009A468(&qword_1002E2408, &qword_100249678);
    v2();
    sub_10000509C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000377A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100036EF4();
}

void sub_1000377C8()
{
  sub_1000334E8();
  if (!sub_10003CD3C(v1))
  {
    v3 = v2;
    sub_10009A468(&qword_1002DA970, &qword_1002318B0);
    sub_100037E38();
    sub_100037CD4(v3);
    sub_10000509C();
    atomic_store(swift_getWitnessTable(), v0);
  }

  sub_1000334FC();
}

uint64_t sub_100037840()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100037E20();
  return sub_100036DA4();
}

uint64_t sub_100037884()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100036EF4();
}

uint64_t sub_1000378A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100037E20();
  return sub_100036DA4();
}

uint64_t sub_1000378EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100037E20();
  return sub_100036DA4();
}

uint64_t sub_100037930()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100036DA4();
}

uint64_t sub_100037984()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100036D20();
}

uint64_t sub_1000379A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001E84C8();
}

uint64_t sub_1000379C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1001E8408();
}

void sub_1000379E8(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E6EDC();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_100037A44()
{
  sub_100034AB4();
  sub_100034978();
  return sub_100036C60(v0, v1, v2, v3, v4, v5, sub_100037624);
}

void sub_100037A88(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E6E58();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_100037AE4()
{
  sub_100034AB4();
  sub_100034978();
  return sub_100036C60(v0, v1, v2, v3, v4, v5, sub_100037624);
}

void sub_100037B28(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E6944();
  *v1 = v2;
  v1[1] = v3;
}

unint64_t sub_100037B54(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_100034B10();
    sub_10009A468(&qword_1002DCC48, &qword_100238200);
    result = sub_100034B3C();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_100037BF0(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E6AA0(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

uint64_t sub_100037C38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100036D20();
}

uint64_t sub_100037C74(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_100037CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100037084();
}

unint64_t sub_100037CD4(uint64_t a1)
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

unint64_t sub_100037D1C(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    sub_10009A468(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

double sub_100037EA0()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void sub_1000380A0(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_1000380B8()
{

  return dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_1000380D0()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100038110()
{
  *(v3 + 16) = v1;
  v5 = *(v4 - 192);
  return v3 + *(v4 - 200) + v0 * v2;
}

uint64_t sub_100038144()
{

  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10003815C()
{

  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100038174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100038230(void (*a1)(double), uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100099DF4(a3, a4);
  v6 = sub_10000307C(v5);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  a1(v9);
  swift_storeEnumTagMultiPayload();
  return sub_100012D44();
}

uint64_t sub_100038420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, void *))
{
  v12 = v9;
  v15 = *v9;
  v16 = v9[14];
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  a9(a8, v17, v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v20._object = 0x8000000100277A60;
    v20._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v20);
    _print_unlocked<A, B>(_:_:)();
    v21._countAndFlagsBits = 46;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000385E4()
{
  sub_100004194();
  v1 = *(v0 + 16);
  sub_1001F4048();
  sub_100002E08();

  return v2();
}

uint64_t sub_10003863C()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;
  *(v7 + 32) = v6;
  *(v7 + 40) = v8;

  type metadata accessor for XPCServer.SyncEngineOwner(0);
  sub_10003A4E4();
  sub_1000396D0(v9, v10);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003878C, v12, v11);
}

uint64_t sub_10003878C()
{
  sub_100004194();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult;
  v4 = *(v2 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult);
  v5 = *(v2 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult + 8);
  *v3 = *(v0 + 32);
  *(v3 + 8) = v1 & 1;
  sub_1001FE9B4(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask);
  *(v2 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask) = 0;

  sub_100002E08();

  return v7();
}

uint64_t sub_100038820()
{
  sub_100007F3C();
  v1 = v0[2];
  v0[5] = OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_10003A5EC(v3))
  {
    *sub_10003A5D4() = 0;
    sub_10003A564(&_mh_execute_header, v4, v5, "Loading bag to determine if we need to create the sync engine");
    sub_1000327B4();
  }

  v6 = v0[2];

  v7 = *(v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_shouldCreateSyncEngine + 8);
  v11 = (*(v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_shouldCreateSyncEngine) + **(v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_shouldCreateSyncEngine));
  v8 = *(*(v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_shouldCreateSyncEngine) + 4);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_100038974;

  return v11();
}

uint64_t sub_100038974()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  v6 = *(v4 + 48);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = sub_100038BB0;
  }

  else
  {
    *(v5 + 64) = v3 & 1;
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = sub_100038A90;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100038A90()
{
  sub_100007F3C();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16) + *(v0 + 40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = sub_10003A5EC(v4);
  if (v1 == 1)
  {
    if (v5)
    {
      *sub_10003A5D4() = 0;
      sub_10003A564(&_mh_execute_header, v6, v7, "Bag load succeeded, creating sync engine");
      sub_1000327B4();
    }

    v8 = *(v0 + 16);

    v10 = *(v8 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_syncEngineCreator);
    v9 = *(v8 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_syncEngineCreator + 8);
    v11 = objc_autoreleasePoolPush();
    v12 = v10();
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (v5)
    {
      *sub_10003A5D4() = 0;
      sub_10003A564(&_mh_execute_header, v13, v14, "Bag load succeeded, NOT creating sync engine");
      sub_1000327B4();
    }

    v12 = 0;
  }

  sub_10003A5BC();

  return v15(v12);
}

uint64_t sub_100038BB0()
{
  sub_10000DB4C();
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    sub_10003A604();
    v8 = sub_10003A5A0();
    *v1 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003A628(v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "Bag load failed: %@", v1, 0xCu);
    sub_100004E24(v8, &qword_1002E2700, &unk_1002474D0);
    sub_10003A514();
    sub_10003A540();
  }

  v10 = v0[7];

  sub_10003A5BC();

  return v11(v10);
}

uint64_t sub_100038CE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for UUID();
  sub_1000038DC();
  v31 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  sub_10000306C();
  v22 = v21 - v20;
  v23 = sub_1001F7400(a3, a1, a6, a7, a8);
  if (!v8)
  {
    v24 = v31;
    v25 = *(v23 + 16);
    if (v25)
    {
      v34 = *(a2 + 16);
      v32 = *(v31 + 16);
      v33 = *(a2 + 24);
      v26 = v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v27 = *(v24 + 72);
      v28 = (v24 + 8);
      do
      {
        v32(v22, v26, v15);
        CKSyncEngine.state.getter();
        v29 = *(v33 + 56);
        sub_10020A1EC(v22, v29);

        (*v28)(v22, v15);
        v26 += v27;
        --v25;
      }

      while (v25);
    }
  }

  return sub_10003991C(a1);
}

__n128 sub_100038EA0(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_10000C4FC(a2, v4);
  (*(v5 + 144))(a1, v17, v4, v5);
  if (v2)
  {
    v16 = v18;
    v7 = sub_1000050CC();
    sub_100099DF4(v7, v8);
    sub_1000326A8(&qword_1002E27A0, &qword_1002E2798, &qword_10024A360);
    v14 = v17[2];
    v15 = v17[0];
    v11 = v17[3];
    v12 = v17[1];
    v13 = v17[4];
    v10 = v17[5];
    swift_allocError();
    *v9 = v15;
    *(v9 + 16) = v12;
    *(v9 + 32) = v14;
    *(v9 + 48) = v11;
    result = v13;
    *(v9 + 64) = v13;
    *(v9 + 80) = v10;
    *(v9 + 96) = v16;
  }

  return result;
}

uint64_t sub_100038FD0()
{
  sub_100007F3C();
  v1 = v0[2];
  sub_1001FC9F8(v0[3]);
  v0[10] = 0;
  sub_10003A4FC();

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100039084()
{
  sub_10000DB4C();
  v2 = v0[10];
  v3 = v0[7];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    sub_10003A604();
    v8 = sub_10003A5A0();
    *v1 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003A628(v9);
    sub_10003A530();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100004E24(v8, &qword_1002E2700, &unk_1002474D0);
    sub_10003A514();
    sub_10003A540();
  }

  else
  {
    v15 = v0[10];
  }

  (*(v0[5] + 8))(v0[7], v0[4]);
  sub_10003A4FC();

  return _swift_task_switch(v18, v16, v17);
}

uint64_t sub_1000391B8()
{
  sub_100007F3C();
  v1 = v0[11];
  v2 = v0[2];
  sub_1001FD69C(v0[3]);
  v0[12] = v1;
  if (v1)
  {
    (*(v0[5] + 16))(v0[6], *(v0[2] + 24) + qword_100310708, v0[4]);
    v3 = sub_1000392D0;
  }

  else
  {
    v3 = sub_100039270;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100039270()
{
  sub_100004194();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_100002E08();

  return v3();
}

uint64_t sub_1000392D0()
{
  sub_10000DB4C();
  v2 = v0[12];
  v3 = v0[6];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    sub_10003A604();
    v8 = sub_10003A5A0();
    *v1 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003A628(v9);
    sub_10003A530();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100004E24(v8, &qword_1002E2700, &unk_1002474D0);
    sub_10003A514();
    sub_10003A540();
  }

  else
  {
    v15 = v0[12];
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v17 = v0[6];
  v16 = v0[7];

  sub_100002E08();

  return v18();
}

uint64_t sub_100039418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100099DF4(&qword_1002E2768, &unk_10024A340);
  sub_1000326A8(&unk_1002E2770, &qword_1002E2768, &unk_10024A340);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_100039508(a2, a3, a4);
}

uint64_t sub_100039508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  os_transaction_create();
  swift_beginAccess();
  v8 = *(v3 + 40);
  v7 = *(v3 + 48);
  sub_100008494(v3 + 16, v8);
  v9 = *(v7 + 32);
  v10 = a3(0);
  v9(a1, a2, v10, v8, v7);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000395EC()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100004504();
  *v4 = v3;

  sub_100002E08();

  return v5();
}

uint64_t sub_1000396D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100039718()
{
  if (v0[3])
  {

    v1 = v0[6];

    v2 = v0[8];

    v3 = v0[10];

    v4 = v0[12];

    v5 = v0[13];
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000397A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1000397D4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000397FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039834(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100039860@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[2];
  return sub_1001F5740(v2, v3, v4, v5, a1);
}

uint64_t sub_100039890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[2];
  return sub_1001F4BFC(v2, v3, v4, v5, v6, v7, a1);
}

uint64_t sub_10003991C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_10003A55C(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100039980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000399C8()
{
  v1 = type metadata accessor for Date();
  sub_1000038DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_100039AA0()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = sub_100005380(v6);
  *v7 = v8;
  v7[1] = sub_100039BC0;
  v9 = sub_10000DFBC();

  return sub_1001FDCB8(v9, v10, v3, v4, v11);
}

uint64_t sub_100039BC0()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100004504();
  *v4 = v3;

  sub_100002E08();

  return v5();
}

uint64_t sub_100039CA0()
{
  sub_100007F3C();
  sub_10003A61C();
  v0 = swift_task_alloc();
  v1 = sub_100005380(v0);
  *v1 = v2;
  v3 = sub_100008360(v1);

  return v4(v3);
}

uint64_t sub_100039D30()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100004504();
  *v4 = v3;

  sub_100002E08();

  return v5();
}

uint64_t sub_100039E10(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1001FD960(a1);
}

uint64_t sub_100039E80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100039EA8()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_100039F00@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_1001EF0E0(v2, a1);
}

uint64_t sub_100039FA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100039FFC()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_10003A0B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003A100()
{
  sub_10000DB4C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100005380(v5);
  *v6 = v7;
  v6[1] = sub_10003A464;
  v8 = sub_10000DFBC();

  return sub_1001F418C(v8, v9, v2, v4);
}

void sub_10003A1F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_1001F71D8(a1, a2, a3, a4, a5);
}

uint64_t sub_10003A20C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003A24C()
{
  sub_100007F3C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100005380(v4);
  *v5 = v6;
  v5[1] = sub_10003A468;
  v7 = sub_10000DFBC();

  return sub_1001F3F28(v7, v8, v2, v3);
}

uint64_t sub_10003A2EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = a1 + *(a3 + 20);

    return sub_100004DFC(v9, a2, v8);
  }
}

void *sub_10003A374(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = v5 + *(a4 + 20);

    return sub_100002728(v8, a2, a2, v7);
  }

  return result;
}

void sub_10003A4FC()
{
  v0[11] = 0;
  v1 = v0[8];
  v2 = v0[9];
}

uint64_t sub_10003A514()
{
}

uint64_t sub_10003A540()
{
}

void sub_10003A564(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_10003A584()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[9];
  v8 = v0[10];
}

uint64_t sub_10003A5A0()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A5D4()
{

  return swift_slowAlloc();
}

BOOL sub_10003A5EC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10003A604()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A628(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_10003A634()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
}

void sub_10003A654(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10003A674()
{
  v22 = type metadata accessor for URL();
  sub_1000038DC();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Logger();
  sub_1000038DC();
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v4 + v6 + v12) & ~v12;
  v14 = *(v11 + 64);
  v21 = v3 | v12;
  v15 = (v14 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v12 + v16 + 8) & ~v12;
  (*(v2 + 8))(v0 + v4, v22);
  v18 = *(v9 + 8);
  v18(v0 + v13, v7);
  v19 = *(v0 + v15 + 8);

  v18(v0 + v17, v7);

  return _swift_deallocObject(v0, v17 + v14, v21 | 7);
}

uint64_t sub_10003A80C()
{
  v1 = type metadata accessor for URL();
  sub_100003B78(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Logger();
  sub_100003B78(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v3 + v5 + v11) & ~v11;
  v13 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v0 + v13);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v0 + v14);
  v20 = *(v0 + v15);

  return sub_100200354(v0 + v3, v0 + v12, v17, v18, v19, v20, v0 + ((v11 + v15 + 8) & ~v11));
}

uint64_t sub_10003A920()
{
  v1 = type metadata accessor for Logger();
  sub_10000307C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

void sub_10003A9E0()
{
  v1 = type metadata accessor for Logger();
  sub_100003B78(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001F3050();
}

uint64_t sub_10003AAA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003AAD4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10003AB2C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10003ACE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_10003AD20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 40);
  return sub_100203774(a1, a2, a3, a4, *(v4 + 24), *(v4 + 32));
}

__n128 sub_10003AD50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10003ADAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1002047E8(a1, a2);
}

_OWORD *sub_10003ADC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1002049A8(a1, a2);
}

uint64_t sub_10003ADE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 40);
  result = (*(v2 + 32))(a2 + 1, *(v2 + 48), *(v2 + 56), *(v2 + 64));
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10003AE58()
{

  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_10003AE84()
{

  return Set.init<A>(_:)();
}

__n128 sub_10003AEF4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10003AF08@<X0>(uint64_t *a1@<X8>)
{
  result = UUID.uuidString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003AF38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s20GlobalSyncStateModelCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003AF84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003AFBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  a1[3] = &type metadata for String;
  a1[4] = &protocol witness table for String;
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_10003B000(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

__n128 sub_10003B048(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10003B05C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B0AC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10003B124@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  result = v7();
  a3[3] = a1;
  a3[4] = a2;
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_10003B180@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  a1[3] = &type metadata for Int64;
  a1[4] = &protocol witness table for Int64;
  *a1 = result;
  return result;
}

uint64_t sub_10003B288()
{

  return type metadata accessor for SyncDownIdentifierRecord();
}

uint64_t sub_10003B2BC()
{
  v2 = *(v0 + 16);

  return dispatch thunk of Identifiable.id.getter();
}

uint64_t sub_10003B2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_1001EC54C(v17, v18, v19, v16, a13, a14, a15, a16);
}

uint64_t sub_10003B3A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *(*sub_10003B448())(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1002035C0(v1, v0, v3, v2);
}

void *sub_10003B474(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t sub_10003B490()
{
}

void sub_10003B4AC(Swift::String a1)
{

  String.append(_:)(a1);
}

void sub_10003B4C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_10003B4D0()
{

  return swift_dynamicCast();
}

uint64_t sub_10003B4E8()
{

  return swift_allocObject();
}

uint64_t sub_10003B500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003B560()
{
  result = v0;
  v4 = *(v1 - 216);
  v3 = *(v1 - 208);
  v5 = *(v1 - 224);
  return result;
}

uint64_t sub_10003B57C()
{

  return sub_100009E5C(v0, v1, (v2 - 120));
}

uint64_t sub_10003B5D8()
{

  return sub_100009E5C(v0, v1, (v2 - 120));
}

uint64_t sub_10003B614()
{
}

BOOL sub_10003B62C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10003B648()
{

  return swift_slowAlloc();
}

uint64_t sub_10003B690()
{
  *(v1 - 136) = v0;

  return swift_unknownObjectRelease();
}

void sub_10003B6B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10003B6D0()
{
  v2 = *(v0 - 144);

  return swift_arrayDestroy();
}

uint64_t sub_10003B6F0()
{
}

uint64_t sub_10003B708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100004DFC(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10003B7B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100002728(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003B85C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10003B87C()
{

  return swift_allocError();
}

uint64_t sub_10003B89C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10020A02C(a1);
}

uint64_t sub_10003B8DC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_10020AA30(a1);
}

uint64_t sub_10003B900(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10020AAC0(a1);
}

void sub_10003B91C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_10003B93C(void (*a1)(__n128 *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a4(a3);
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v7 != v8)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v10 = *(a3 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v22 = v10;
    a1(&v21, &v22);
    if (v5)
    {

      return;
    }

    if (v21.n128_u64[0])
    {
      v20 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = v9[2];
        v16 = sub_10000657C();
        v9 = a5(v16);
      }

      v13 = v9[2];
      v12 = v9[3];
      v14 = v20;
      if (v13 >= v12 >> 1)
      {
        v17 = (a5)(v12 > 1, v13 + 1, 1, v9, v20);
        v14 = v20;
        v9 = v17;
      }

      v9[2] = v13 + 1;
      *&v9[2 * v13 + 4] = v14;
    }

    ++v8;
  }
}

uint64_t sub_10003BAD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v24 = a5;
  v8 = result;
  v9 = 0;
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v10 == v9)
    {
      return v11;
    }

    if (v9 >= v10)
    {
      break;
    }

    v12 = a4(0);
    v14 = *(v12 - 8);
    result = v12 - 8;
    v13 = v14;
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_15;
    }

    result = v8(&v23, a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9);
    if (v5)
    {

      return v11;
    }

    ++v9;
    if (v23.n128_u64[0])
    {
      v22 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v20 = v11[2];
        v21 = sub_10000657C();
        result = v24(v21);
        v11 = result;
      }

      v17 = v11[2];
      v16 = v11[3];
      v18 = v17 + 1;
      v19 = v22;
      if (v17 >= v16 >> 1)
      {
        result = (v24)(v16 > 1, v17 + 1, 1, v11, v22);
        v18 = v17 + 1;
        v19 = v22;
        v11 = result;
      }

      v11[2] = v18;
      *&v11[2 * v17 + 4] = v19;
      v9 = v15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_10003BC64(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    sub_100099DF4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_10003BD78(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100099DF4(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_33:

LABEL_34:
    *v5 = v10;
    return result;
  }

  v34 = v5;
  v11 = 0;
  v12 = (v7 + 64);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = result + 64;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      sub_1000EA578(0, (v33 + 63) >> 6, v7 + 64);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = v18 | (v11 << 6);
    v22 = *(*(v7 + 48) + 8 * v21);
    v23 = *(*(v7 + 56) + 8 * v21);
    if ((a2 & 1) == 0)
    {
      v24 = v22;
      swift_errorRetain();
    }

    result = NSObject._rawHashValue(seed:)(*(v10 + 40));
    v25 = -1 << *(v10 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v10 + 48) + 8 * v28) = v22;
    *(*(v10 + 56) + 8 * v28) = v23;
    ++*(v10 + 16);
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

double sub_10003BFFC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v12 = *(v1 + 112);
  v13 = *(v1 + 120);
  v10 = *(v1 + 80);
  v11 = *(v1 + 96);
  v9 = *(v1 + 64);
  *&result = sub_10020ED30(a1, *(v1 + 128)).n128_u64[0];
  return result;
}

uint64_t sub_10003C044(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10003C0A4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return *(v0 + 41);
}

uint64_t sub_10003C0C0()
{
  result = v0;
  *(v2 - 128) = *(v1 + 8);
  return result;
}

uint64_t sub_10003C100()
{
  v2 = *(v1 - 128);
  v3 = *(v1 - 120) + 8;
  return v0;
}

uint64_t sub_10003C1D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003C228()
{
  sub_100004194();
  v1 = v0[4];
  sub_1002180B0(v0[2], v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10003C288()
{
  sub_100004194();
  v1 = v0[5];
  v2 = v0[3];
  sub_1002122AC(v0[4], v0[2]);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10003C2E8()
{
  sub_100004194();
  v1 = v0[5];
  v2 = v0[2];
  sub_10021A314();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10003C348()
{
  sub_100004194();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_10003C440()
{
  sub_100004194();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_10003C538(uint64_t *a1)
{
  v3 = v1[14];
  v4 = v1[15];
  return sub_10021A1DC(a1, v1[16], v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9], v1[10], v1[11], v1[12]);
}

uint64_t sub_10003C580(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003C5E0()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_10003C5F8()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

void sub_10003C610(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_10003C668()
{
  sub_100004118(v0);
}

uint64_t sub_10003C6D8()
{

  return swift_slowAlloc();
}

uint64_t sub_10003C6F4()
{
}

BOOL sub_10003C710(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10003C72C()
{

  return sub_100009E5C(v0, v1, (v2 - 96));
}

void sub_10003C780()
{
  v1 = *(v0 - 144);
  v3 = *(v0 - 176);
  v2 = *(v0 - 168);
}

uint64_t sub_10003C7E8()
{
  v3 = *(v1 - 128) + v0;

  return Logger.logObject.getter();
}

uint64_t sub_10003C828(uint64_t result)
{
  *(v1 - 112) = result;
  *(v1 - 96) = result;
  return result;
}

uint64_t sub_10003C840()
{
  v2 = *(v0 - 160);

  return CKSyncEngine.state.getter();
}

uint64_t getEnumTagSinglePayload for TSDataSyncDeviceMetricsFields.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t getEnumTagSinglePayload for TSDataSyncBagModel.TSDataSyncBagModelInner.TSDataSyncBagAnalytics.TSDataSyncBagData.LowerPriorityDataset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

Swift::Int _s12amsaccountsd16AvroMessageErrorO9hashValueSivg_0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for TSDataSyncConfigServerDatasetSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t getEnumTagSinglePayload for TSDataSyncConfigServerDatasetSyncMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

Swift::Int AvroSchemaEncodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int _s18PrivateIdentifiers26PIKeypairsModificationKindO9hashValueSivg_0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

void sub_10003CC94(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for TSDataSyncDatasetIdentifier.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_10003CD48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100099DF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int sub_10003CDA8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10003CDEC(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_10002F3D0();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10003CE24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10003CEA0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double sub_10003CF28()
{
  result = *v1;
  *v0;
  return result;
}

Swift::Int PIUnpersonalizedPrivateIdentifierMapping.Key.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10003CFEC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10003D038(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_10003D07C()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_10003D0CC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10003D104(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10003D150(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003D16C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return PIPersonalizedPrivateIdentifierMapping.Key.hash(into:)();
}

uint64_t sub_10003D178(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000048AC(a1, a2, a3, a4);
  sub_10000307C(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10003D1E4()
{
  sub_100002FBC();
  v3 = sub_100099DF4(v1, v2);
  sub_10000307C(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000050CC();
  v7(v6);
  return v0;
}

id sub_10003D924(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = [*(a1 + 32) share];
    v8 = AMSHashIfNeeded();
    *buf = 138543874;
    v27 = v5;
    v28 = 2114;
    v29 = v6;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Accepting a home cloud share. share = %{public}@", buf, 0x20u);
  }

  v9 = [*(a1 + 32) controller];
  v10 = [v9 cloudDataManager];
  v11 = [*(a1 + 32) share];
  v12 = [v11 containerIdentifier];
  v13 = [v10 containerWithContainerIdentifier:v12];

  v14 = objc_alloc_init(AMSMutablePromise);
  v15 = [*(a1 + 32) share];
  v16 = [v15 URL];
  v17 = [*(a1 + 32) share];
  v18 = [v17 token];
  v19 = [v13 acceptShareURL:v16 withToken:v18];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10003DBB4;
  v24[3] = &unk_1002AFD88;
  v24[4] = *(a1 + 32);
  v20 = v14;
  v25 = v20;
  [v19 resultWithCompletion:v24];

  v21 = v25;
  v22 = v20;

  return v20;
}

void sub_10003DBB4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully accepted the share invitation.", buf, 0x16u);
    }

    v12 = [*(a1 + 32) _generateInviteCode];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003DE18;
    v19[3] = &unk_1002AFD60;
    v13 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v13;
    [v12 resultWithCompletion:v19];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v7 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSHashIfNeeded();
      *buf = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to accept the share. error = %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v5];
  }
}

void sub_10003DE18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 40) finishWithResult:a2];
  }

  else
  {
    v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded();
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate a muInviteCode. error = %{public}@", &v12, 0x20u);
    }

    [*(a1 + 40) finishWithError:v5];
  }
}

id sub_10003E1B8(uint64_t a1, uint64_t a2)
{
  v3 = [AMSAuthenticateOptions amsd_createAppProvidedDataWithMultiUserAction:@"invite_sent" home:a2];
  v4 = [v3 copy];
  v5 = [AMSAuthenticateOptions amsd_multiUserAuthenticateOptionsWithAppProvidedData:v4];

  v6 = [*(a1 + 32) _performAuthKitUpdateTaskWithOptions:v5];

  return v6;
}

void sub_10003E260(uint64_t a1, void *a2)
{
  v3 = [a2 authenticationResults];
  v4 = [v3 objectForKeyedSubscript:@"AKIDMSToken"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v5 = [v8 objectForKeyedSubscript:@"muInviteCode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 length])
  {
    [*(a1 + 32) finishWithResult:v6];
  }

  else
  {
    v7 = AMSError();
    [*(a1 + 32) finishWithError:v7];
  }
}

void sub_10003E600(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [a3 ams_sanitizedForSecureCoding];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }
}

void sub_10003E76C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 ams_sanitizedForSecureCoding];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

void sub_10003E9E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 ams_sanitizedForSecureCoding];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

void sub_10003EB50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 ams_sanitizedForSecureCoding];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

void sub_10003ECBC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [a3 ams_sanitizedForSecureCoding];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 1);
  }
}

void sub_10003ED9C(id a1)
{
  qword_1002E3188 = objc_alloc_init(AMSDAccountManagementService);

  _objc_release_x1();
}

void sub_10003F25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003F280(id a1)
{
  qword_1002E31A0 = +[NSMutableArray array];

  _objc_release_x1();
}

id sub_10003F2C0(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10003F2F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = AMSSetLogKey();
  v9 = *(a1 + 40);
  v27 = 0;
  v10 = [v9 _getOrCreateLocalAccountWithIdentifier:v7 error:&v27];

  v11 = v27;
  if (!v11)
  {
    if (!v10)
    {
      v17 = AMSError();
      v5[2](v5, 0, v17);

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v12 = +[AMSLogConfig sharedAccountsConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = objc_opt_class();
    if (v15)
    {
      [NSString stringWithFormat:@"%@: [%@] ", v16, *(a1 + 32)];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v16, v26];
    }
    v18 = ;
    v19 = AMSLogableError();
    *buf = 138543618;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Encountered an error while retrieving local account. error = %{public}@", buf, 0x16u);
  }

  if (v10)
  {
LABEL_12:
    v5[2](v5, 1, 0);
    goto LABEL_14;
  }

  v5[2](v5, 0, v11);
LABEL_14:
  os_unfair_lock_lock_with_options();
  [*(a1 + 48) removeObjectAtIndex:0];
  if ([*(a1 + 48) count])
  {
    v20 = [*(a1 + 48) objectAtIndexedSubscript:0];
    os_unfair_lock_unlock(&unk_1002E3190);
    v21 = *(*(*(a1 + 56) + 8) + 40);
    v22 = [v20 first];
    v23 = [v20 second];
    (*(v21 + 16))(v21, v22, v23);
  }

  else
  {
    v24 = *(*(a1 + 56) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = 0;

    os_unfair_lock_unlock(&unk_1002E3190);
  }
}

id sub_10003FEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accountType];
  v5 = [v4 identifier];
  v6 = [*(a1 + 32) identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [v3 ams_isLocalAccount];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10004038C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = *(a1 + 40);
      v9 = AMSHashIfNeeded();
      v10 = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error running account data sync for accountID = %{public}@", &v10, 0x20u);
    }
  }
}