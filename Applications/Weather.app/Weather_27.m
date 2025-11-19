void sub_1002DCC84()
{
  sub_100020DF0();
  if (v5 != v6 && (sub_1000131F4(), v16))
  {
    v7 = 0;
    sub_1002E4F88();
    sub_100030378();
    sub_1002E56A0();
LABEL_5:
    while (v3)
    {
      sub_100086718();
LABEL_12:
      v12 = sub_1002E5940(v8);
      if ((v13 & 1) == 0)
      {
        goto LABEL_23;
      }

      v14 = *(*(v1 + 56) + 8 * v12);
      v15 = v14[1].i64[0];
      if (v15 != v4[1].i64[0])
      {
        goto LABEL_23;
      }

      if (v15)
      {
        v16 = v14 == v4;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v17 = v14 + 2;
        v18 = v4 + 2;
        while (v15)
        {
          v19 = vmovn_s64(vceqq_s64(*v17, *v18));
          if ((v19.i32[0] & v19.i32[1] & 1) == 0)
          {
            goto LABEL_23;
          }

          ++v17;
          ++v18;
          if (!--v15)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_25;
      }
    }

    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v7 >= v2)
      {
        goto LABEL_23;
      }

      ++v9;
      if (*(v0 + 64 + 8 * v7))
      {
        sub_1000C825C();
        v3 = v11 & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_23:
    sub_1000212EC();
  }
}

unint64_t sub_1002DD234()
{
  result = qword_100CAA870;
  if (!qword_100CAA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA870);
  }

  return result;
}

unint64_t sub_1002DD288()
{
  result = qword_100CAA878;
  if (!qword_100CAA878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA878);
  }

  return result;
}

unint64_t sub_1002DD2DC()
{
  result = qword_100CAA880;
  if (!qword_100CAA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA880);
  }

  return result;
}

unint64_t sub_1002DD330()
{
  result = qword_100CAA888;
  if (!qword_100CAA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA888);
  }

  return result;
}

unint64_t sub_1002DD384()
{
  result = qword_100CAA890;
  if (!qword_100CAA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA890);
  }

  return result;
}

unint64_t sub_1002DD3D8()
{
  result = qword_100CAA8A0;
  if (!qword_100CAA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA8A0);
  }

  return result;
}

unint64_t sub_1002DD42C()
{
  result = qword_100CAA8B0;
  if (!qword_100CAA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA8B0);
  }

  return result;
}

unint64_t sub_1002DD480()
{
  result = qword_100CAA8B8;
  if (!qword_100CAA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA8B8);
  }

  return result;
}

unint64_t sub_1002DD4D4()
{
  result = qword_100CAA8C0;
  if (!qword_100CAA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA8C0);
  }

  return result;
}

unint64_t sub_1002DD528()
{
  result = qword_100CAA8D0;
  if (!qword_100CAA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA8D0);
  }

  return result;
}

unint64_t sub_1002DD57C()
{
  result = qword_100CAA8D8;
  if (!qword_100CAA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA8D8);
  }

  return result;
}

unint64_t sub_1002DD5D0()
{
  result = qword_100CAA8E0;
  if (!qword_100CAA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA8E0);
  }

  return result;
}

unint64_t sub_1002DD624()
{
  result = qword_100CAA928;
  if (!qword_100CAA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA928);
  }

  return result;
}

unint64_t sub_1002DD678()
{
  result = qword_100CAA930;
  if (!qword_100CAA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA930);
  }

  return result;
}

unint64_t sub_1002DD6CC()
{
  result = qword_100CAA938;
  if (!qword_100CAA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA938);
  }

  return result;
}

unint64_t sub_1002DD720()
{
  result = qword_100CAA948;
  if (!qword_100CAA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA948);
  }

  return result;
}

unint64_t sub_1002DD774()
{
  result = qword_100CAA950;
  if (!qword_100CAA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA950);
  }

  return result;
}

unint64_t sub_1002DD7C8()
{
  result = qword_100CAA970;
  if (!qword_100CAA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA970);
  }

  return result;
}

unint64_t sub_1002DD81C()
{
  result = qword_100CAA978;
  if (!qword_100CAA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA978);
  }

  return result;
}

unint64_t sub_1002DD870()
{
  result = qword_100CAA980;
  if (!qword_100CAA980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA980);
  }

  return result;
}

unint64_t sub_1002DD8C4()
{
  result = qword_100CAA988;
  if (!qword_100CAA988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA988);
  }

  return result;
}

unint64_t sub_1002DD918()
{
  result = qword_100CAA990;
  if (!qword_100CAA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA990);
  }

  return result;
}

unint64_t sub_1002DD96C()
{
  result = qword_100CAA9A8;
  if (!qword_100CAA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA9A8);
  }

  return result;
}

uint64_t sub_1002DD9C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CAA9B0);
    a2();
    sub_1000B0C38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002DDA34()
{
  result = qword_100CAA9C0;
  if (!qword_100CAA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA9C0);
  }

  return result;
}

unint64_t sub_1002DDA88()
{
  result = qword_100CAA9D0;
  if (!qword_100CAA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA9D0);
  }

  return result;
}

unint64_t sub_1002DDADC()
{
  result = qword_100CAA9E0;
  if (!qword_100CAA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA9E0);
  }

  return result;
}

unint64_t sub_1002DDB30()
{
  result = qword_100CAA9E8;
  if (!qword_100CAA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAA9E8);
  }

  return result;
}

unint64_t sub_1002DDB84()
{
  result = qword_100CAAA48;
  if (!qword_100CAAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAA48);
  }

  return result;
}

unint64_t sub_1002DDBD8()
{
  result = qword_100CAAA70;
  if (!qword_100CAAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAA70);
  }

  return result;
}

unint64_t sub_1002DDC2C()
{
  result = qword_100CAAA98;
  if (!qword_100CAAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAA98);
  }

  return result;
}

unint64_t sub_1002DDC80()
{
  result = qword_100CAAAC0;
  if (!qword_100CAAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAAC0);
  }

  return result;
}

unint64_t sub_1002DDCD4()
{
  result = qword_100CAAB00;
  if (!qword_100CAAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB00);
  }

  return result;
}

unint64_t sub_1002DDD28()
{
  result = qword_100CAAB28;
  if (!qword_100CAAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB28);
  }

  return result;
}

uint64_t sub_1002DDD7C(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

unint64_t sub_1002DDDF8()
{
  result = qword_100CAAB38;
  if (!qword_100CAAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB38);
  }

  return result;
}

unint64_t sub_1002DDE4C()
{
  result = qword_100CAAB40;
  if (!qword_100CAAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB40);
  }

  return result;
}

unint64_t sub_1002DDEA0()
{
  result = qword_100CAAB48;
  if (!qword_100CAAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB48);
  }

  return result;
}

unint64_t sub_1002DDEF4()
{
  result = qword_100CAAB50;
  if (!qword_100CAAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB50);
  }

  return result;
}

uint64_t sub_1002DDF48(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CAA998);
    a2();
    sub_1000B0C38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002DDFBC()
{
  result = qword_100CAAB60;
  if (!qword_100CAAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB60);
  }

  return result;
}

unint64_t sub_1002DE010()
{
  result = qword_100CAAB70;
  if (!qword_100CAAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB70);
  }

  return result;
}

unint64_t sub_1002DE064()
{
  result = qword_100CAAB80;
  if (!qword_100CAAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB80);
  }

  return result;
}

unint64_t sub_1002DE0B8()
{
  result = qword_100CAAB90;
  if (!qword_100CAAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAB90);
  }

  return result;
}

unint64_t sub_1002DE10C()
{
  result = qword_100CAABA0;
  if (!qword_100CAABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAABA0);
  }

  return result;
}

unint64_t sub_1002DE160()
{
  result = qword_100CAABA8;
  if (!qword_100CAABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAABA8);
  }

  return result;
}

unint64_t sub_1002DE1B4()
{
  result = qword_100CAABF0;
  if (!qword_100CAABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAABF0);
  }

  return result;
}

unint64_t sub_1002DE208()
{
  result = qword_100CAABF8;
  if (!qword_100CAABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAABF8);
  }

  return result;
}

unint64_t sub_1002DE25C()
{
  result = qword_100CAAC00;
  if (!qword_100CAAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC00);
  }

  return result;
}

unint64_t sub_1002DE2B0()
{
  result = qword_100CAAC18;
  if (!qword_100CAAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC18);
  }

  return result;
}

unint64_t sub_1002DE304()
{
  result = qword_100CAAC20;
  if (!qword_100CAAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC20);
  }

  return result;
}

unint64_t sub_1002DE358()
{
  result = qword_100CAAC28;
  if (!qword_100CAAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC28);
  }

  return result;
}

unint64_t sub_1002DE3AC()
{
  result = qword_100CAAC30;
  if (!qword_100CAAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC30);
  }

  return result;
}

unint64_t sub_1002DE400()
{
  result = qword_100CAAC40;
  if (!qword_100CAAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC40);
  }

  return result;
}

unint64_t sub_1002DE454()
{
  result = qword_100CAAC48;
  if (!qword_100CAAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC48);
  }

  return result;
}

unint64_t sub_1002DE4A8()
{
  result = qword_100CAAC60;
  if (!qword_100CAAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC60);
  }

  return result;
}

unint64_t sub_1002DE4FC()
{
  result = qword_100CAAC70;
  if (!qword_100CAAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC70);
  }

  return result;
}

unint64_t sub_1002DE550()
{
  result = qword_100CAAC80;
  if (!qword_100CAAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC80);
  }

  return result;
}

unint64_t sub_1002DE5A4()
{
  result = qword_100CAAC90;
  if (!qword_100CAAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAC90);
  }

  return result;
}

unint64_t sub_1002DE5F8()
{
  result = qword_100CAACA0;
  if (!qword_100CAACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAACA0);
  }

  return result;
}

unint64_t sub_1002DE64C()
{
  result = qword_100CAACB0;
  if (!qword_100CAACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAACB0);
  }

  return result;
}

unint64_t sub_1002DE6A0()
{
  result = qword_100CAACC0;
  if (!qword_100CAACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAACC0);
  }

  return result;
}

unint64_t sub_1002DE6F4()
{
  result = qword_100CAACD0;
  if (!qword_100CAACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAACD0);
  }

  return result;
}

unint64_t sub_1002DE748()
{
  result = qword_100CAACE0;
  if (!qword_100CAACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAACE0);
  }

  return result;
}

unint64_t sub_1002DE79C()
{
  result = qword_100CAACF0;
  if (!qword_100CAACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAACF0);
  }

  return result;
}

unint64_t sub_1002DE7F0()
{
  result = qword_100CAAD00;
  if (!qword_100CAAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD00);
  }

  return result;
}

unint64_t sub_1002DE844()
{
  result = qword_100CAAD10;
  if (!qword_100CAAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD10);
  }

  return result;
}

unint64_t sub_1002DE898()
{
  result = qword_100CAAD20;
  if (!qword_100CAAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD20);
  }

  return result;
}

unint64_t sub_1002DE8EC()
{
  result = qword_100CAAD30;
  if (!qword_100CAAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD30);
  }

  return result;
}

unint64_t sub_1002DE940()
{
  result = qword_100CAAD40;
  if (!qword_100CAAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD40);
  }

  return result;
}

unint64_t sub_1002DE994()
{
  result = qword_100CAAD50;
  if (!qword_100CAAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD50);
  }

  return result;
}

unint64_t sub_1002DE9E8()
{
  result = qword_100CAAD60;
  if (!qword_100CAAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD60);
  }

  return result;
}

unint64_t sub_1002DEA3C()
{
  result = qword_100CAAD70;
  if (!qword_100CAAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD70);
  }

  return result;
}

unint64_t sub_1002DEA90()
{
  result = qword_100CAAD80;
  if (!qword_100CAAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD80);
  }

  return result;
}

unint64_t sub_1002DEAE4()
{
  result = qword_100CAAD90;
  if (!qword_100CAAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAD90);
  }

  return result;
}

unint64_t sub_1002DEB38()
{
  result = qword_100CAADA0;
  if (!qword_100CAADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAADA0);
  }

  return result;
}

unint64_t sub_1002DEB8C()
{
  result = qword_100CAADB0;
  if (!qword_100CAADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAADB0);
  }

  return result;
}

unint64_t sub_1002DEBE0()
{
  result = qword_100CAADC0;
  if (!qword_100CAADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAADC0);
  }

  return result;
}

unint64_t sub_1002DEC34()
{
  result = qword_100CAADD0;
  if (!qword_100CAADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAADD0);
  }

  return result;
}

unint64_t sub_1002DEC88()
{
  result = qword_100CAADE0;
  if (!qword_100CAADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAADE0);
  }

  return result;
}

unint64_t sub_1002DECDC()
{
  result = qword_100CAADF0;
  if (!qword_100CAADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAADF0);
  }

  return result;
}

unint64_t sub_1002DED30()
{
  result = qword_100CAADF8;
  if (!qword_100CAADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAADF8);
  }

  return result;
}

unint64_t sub_1002DED84()
{
  result = qword_100CAAE00;
  if (!qword_100CAAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationCommonConfigurationComponents._Storage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationCommonConfigurationComponents._Storage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationNoAqiConfiguration._Storage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002DF108(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_100020180((*a1 | (v4 << 8)) - 3);
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

      return sub_100020180((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100020180((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100020180(v8);
}

_BYTE *sub_1002DF18C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
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
          result = sub_100020E50(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1002DF288(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
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
      return sub_100020180((*a1 | (v4 << 8)) - 4);
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

      return sub_100020180((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100020180((*a1 | (v4 << 8)) - 4);
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

  return sub_100020180(v8);
}

_BYTE *sub_1002DF30C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
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
          result = sub_100020E50(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1002DF3F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_100020180((*a1 | (v4 << 8)) - 5);
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

      return sub_100020180((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100020180((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100020180(v8);
}

_BYTE *sub_1002DF47C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
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
          result = sub_100020E50(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1002DF5DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_100020180((*a1 | (v4 << 8)) - 13);
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

      return sub_100020180((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100020180((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100020180(v8);
}

_BYTE *sub_1002DF660(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
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
          result = sub_100020E50(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1002DF72C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_100020180((*a1 | (v4 << 8)) - 6);
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

      return sub_100020180((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100020180((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100020180(v8);
}

_BYTE *sub_1002DF7B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
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
          result = sub_100020E50(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListViewState._Storage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ListViewState._Storage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1002DFD44()
{
  result = qword_100CAAE08;
  if (!qword_100CAAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE08);
  }

  return result;
}

unint64_t sub_1002DFD9C()
{
  result = qword_100CAAE10;
  if (!qword_100CAAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE10);
  }

  return result;
}

unint64_t sub_1002DFDF4()
{
  result = qword_100CAAE18;
  if (!qword_100CAAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE18);
  }

  return result;
}

unint64_t sub_1002DFE4C()
{
  result = qword_100CAAE20;
  if (!qword_100CAAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE20);
  }

  return result;
}

unint64_t sub_1002DFEA4()
{
  result = qword_100CAAE28;
  if (!qword_100CAAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE28);
  }

  return result;
}

unint64_t sub_1002DFEFC()
{
  result = qword_100CAAE30;
  if (!qword_100CAAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE30);
  }

  return result;
}

unint64_t sub_1002DFF54()
{
  result = qword_100CAAE38;
  if (!qword_100CAAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE38);
  }

  return result;
}

unint64_t sub_1002DFFAC()
{
  result = qword_100CAAE40;
  if (!qword_100CAAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE40);
  }

  return result;
}

unint64_t sub_1002E0004()
{
  result = qword_100CAAE48;
  if (!qword_100CAAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE48);
  }

  return result;
}

unint64_t sub_1002E005C()
{
  result = qword_100CAAE50;
  if (!qword_100CAAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE50);
  }

  return result;
}

unint64_t sub_1002E00B4()
{
  result = qword_100CAAE58;
  if (!qword_100CAAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE58);
  }

  return result;
}

unint64_t sub_1002E010C()
{
  result = qword_100CAAE60;
  if (!qword_100CAAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE60);
  }

  return result;
}

unint64_t sub_1002E0164()
{
  result = qword_100CAAE68;
  if (!qword_100CAAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE68);
  }

  return result;
}

unint64_t sub_1002E01BC()
{
  result = qword_100CAAE70;
  if (!qword_100CAAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE70);
  }

  return result;
}

unint64_t sub_1002E0214()
{
  result = qword_100CAAE78;
  if (!qword_100CAAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE78);
  }

  return result;
}

unint64_t sub_1002E026C()
{
  result = qword_100CAAE80;
  if (!qword_100CAAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE80);
  }

  return result;
}

unint64_t sub_1002E02C4()
{
  result = qword_100CAAE88;
  if (!qword_100CAAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE88);
  }

  return result;
}

unint64_t sub_1002E031C()
{
  result = qword_100CAAE90;
  if (!qword_100CAAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE90);
  }

  return result;
}

unint64_t sub_1002E0374()
{
  result = qword_100CAAE98;
  if (!qword_100CAAE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAE98);
  }

  return result;
}

unint64_t sub_1002E03CC()
{
  result = qword_100CAAEA0;
  if (!qword_100CAAEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEA0);
  }

  return result;
}

unint64_t sub_1002E0424()
{
  result = qword_100CAAEA8;
  if (!qword_100CAAEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEA8);
  }

  return result;
}

unint64_t sub_1002E047C()
{
  result = qword_100CAAEB0;
  if (!qword_100CAAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEB0);
  }

  return result;
}

unint64_t sub_1002E04D4()
{
  result = qword_100CAAEB8;
  if (!qword_100CAAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEB8);
  }

  return result;
}

unint64_t sub_1002E052C()
{
  result = qword_100CAAEC0;
  if (!qword_100CAAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEC0);
  }

  return result;
}

unint64_t sub_1002E0584()
{
  result = qword_100CAAEC8;
  if (!qword_100CAAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEC8);
  }

  return result;
}

unint64_t sub_1002E05DC()
{
  result = qword_100CAAED0;
  if (!qword_100CAAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAED0);
  }

  return result;
}

unint64_t sub_1002E0634()
{
  result = qword_100CAAED8;
  if (!qword_100CAAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAED8);
  }

  return result;
}

unint64_t sub_1002E068C()
{
  result = qword_100CAAEE0;
  if (!qword_100CAAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEE0);
  }

  return result;
}

unint64_t sub_1002E06E4()
{
  result = qword_100CAAEE8;
  if (!qword_100CAAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEE8);
  }

  return result;
}

unint64_t sub_1002E073C()
{
  result = qword_100CAAEF0;
  if (!qword_100CAAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEF0);
  }

  return result;
}

unint64_t sub_1002E0794()
{
  result = qword_100CAAEF8;
  if (!qword_100CAAEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAEF8);
  }

  return result;
}

unint64_t sub_1002E07EC()
{
  result = qword_100CAAF00;
  if (!qword_100CAAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF00);
  }

  return result;
}

unint64_t sub_1002E0844()
{
  result = qword_100CAAF08;
  if (!qword_100CAAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF08);
  }

  return result;
}

unint64_t sub_1002E089C()
{
  result = qword_100CAAF10;
  if (!qword_100CAAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF10);
  }

  return result;
}

unint64_t sub_1002E08F4()
{
  result = qword_100CAAF18;
  if (!qword_100CAAF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF18);
  }

  return result;
}

unint64_t sub_1002E094C()
{
  result = qword_100CAAF20;
  if (!qword_100CAAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF20);
  }

  return result;
}

unint64_t sub_1002E09A4()
{
  result = qword_100CAAF28;
  if (!qword_100CAAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF28);
  }

  return result;
}

unint64_t sub_1002E09FC()
{
  result = qword_100CAAF30;
  if (!qword_100CAAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF30);
  }

  return result;
}

unint64_t sub_1002E0A54()
{
  result = qword_100CAAF38;
  if (!qword_100CAAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF38);
  }

  return result;
}

unint64_t sub_1002E0AAC()
{
  result = qword_100CAAF40;
  if (!qword_100CAAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF40);
  }

  return result;
}

unint64_t sub_1002E0B04()
{
  result = qword_100CAAF48;
  if (!qword_100CAAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF48);
  }

  return result;
}

unint64_t sub_1002E0B5C()
{
  result = qword_100CAAF50;
  if (!qword_100CAAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF50);
  }

  return result;
}

unint64_t sub_1002E0BB4()
{
  result = qword_100CAAF58;
  if (!qword_100CAAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF58);
  }

  return result;
}

unint64_t sub_1002E0C0C()
{
  result = qword_100CAAF60;
  if (!qword_100CAAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF60);
  }

  return result;
}

unint64_t sub_1002E0C64()
{
  result = qword_100CAAF68;
  if (!qword_100CAAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF68);
  }

  return result;
}

unint64_t sub_1002E0CBC()
{
  result = qword_100CAAF70;
  if (!qword_100CAAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF70);
  }

  return result;
}

unint64_t sub_1002E0D14()
{
  result = qword_100CAAF78;
  if (!qword_100CAAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF78);
  }

  return result;
}

unint64_t sub_1002E0D6C()
{
  result = qword_100CAAF80;
  if (!qword_100CAAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF80);
  }

  return result;
}

unint64_t sub_1002E0DC4()
{
  result = qword_100CAAF88;
  if (!qword_100CAAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF88);
  }

  return result;
}

unint64_t sub_1002E0E1C()
{
  result = qword_100CAAF90;
  if (!qword_100CAAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF90);
  }

  return result;
}

unint64_t sub_1002E0E74()
{
  result = qword_100CAAF98;
  if (!qword_100CAAF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAF98);
  }

  return result;
}

unint64_t sub_1002E0ECC()
{
  result = qword_100CAAFA0;
  if (!qword_100CAAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFA0);
  }

  return result;
}

unint64_t sub_1002E0F24()
{
  result = qword_100CAAFA8;
  if (!qword_100CAAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFA8);
  }

  return result;
}

unint64_t sub_1002E0F7C()
{
  result = qword_100CAAFB0;
  if (!qword_100CAAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFB0);
  }

  return result;
}

unint64_t sub_1002E0FD4()
{
  result = qword_100CAAFB8;
  if (!qword_100CAAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFB8);
  }

  return result;
}

unint64_t sub_1002E102C()
{
  result = qword_100CAAFC0;
  if (!qword_100CAAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFC0);
  }

  return result;
}

unint64_t sub_1002E1084()
{
  result = qword_100CAAFC8;
  if (!qword_100CAAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFC8);
  }

  return result;
}

unint64_t sub_1002E10DC()
{
  result = qword_100CAAFD0;
  if (!qword_100CAAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFD0);
  }

  return result;
}

unint64_t sub_1002E1134()
{
  result = qword_100CAAFD8;
  if (!qword_100CAAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFD8);
  }

  return result;
}

unint64_t sub_1002E118C()
{
  result = qword_100CAAFE0;
  if (!qword_100CAAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFE0);
  }

  return result;
}

unint64_t sub_1002E11E4()
{
  result = qword_100CAAFE8;
  if (!qword_100CAAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFE8);
  }

  return result;
}

unint64_t sub_1002E123C()
{
  result = qword_100CAAFF0;
  if (!qword_100CAAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFF0);
  }

  return result;
}

unint64_t sub_1002E1294()
{
  result = qword_100CAAFF8;
  if (!qword_100CAAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAAFF8);
  }

  return result;
}

unint64_t sub_1002E12EC()
{
  result = qword_100CAB000;
  if (!qword_100CAB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB000);
  }

  return result;
}

unint64_t sub_1002E1344()
{
  result = qword_100CAB008;
  if (!qword_100CAB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB008);
  }

  return result;
}

unint64_t sub_1002E139C()
{
  result = qword_100CAB010;
  if (!qword_100CAB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB010);
  }

  return result;
}

unint64_t sub_1002E13F4()
{
  result = qword_100CAB018;
  if (!qword_100CAB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB018);
  }

  return result;
}

unint64_t sub_1002E144C()
{
  result = qword_100CAB020;
  if (!qword_100CAB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB020);
  }

  return result;
}

unint64_t sub_1002E14A4()
{
  result = qword_100CAB028;
  if (!qword_100CAB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB028);
  }

  return result;
}

unint64_t sub_1002E14FC()
{
  result = qword_100CAB030;
  if (!qword_100CAB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB030);
  }

  return result;
}

unint64_t sub_1002E1554()
{
  result = qword_100CAB038;
  if (!qword_100CAB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB038);
  }

  return result;
}

unint64_t sub_1002E15AC()
{
  result = qword_100CAB040;
  if (!qword_100CAB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB040);
  }

  return result;
}

unint64_t sub_1002E1604()
{
  result = qword_100CAB048;
  if (!qword_100CAB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB048);
  }

  return result;
}

unint64_t sub_1002E165C()
{
  result = qword_100CAB050;
  if (!qword_100CAB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB050);
  }

  return result;
}

unint64_t sub_1002E16B4()
{
  result = qword_100CAB058;
  if (!qword_100CAB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB058);
  }

  return result;
}

unint64_t sub_1002E170C()
{
  result = qword_100CAB060;
  if (!qword_100CAB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB060);
  }

  return result;
}

unint64_t sub_1002E1764()
{
  result = qword_100CAB068;
  if (!qword_100CAB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB068);
  }

  return result;
}

unint64_t sub_1002E17BC()
{
  result = qword_100CAB070;
  if (!qword_100CAB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB070);
  }

  return result;
}

unint64_t sub_1002E1814()
{
  result = qword_100CAB078;
  if (!qword_100CAB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB078);
  }

  return result;
}

unint64_t sub_1002E186C()
{
  result = qword_100CAB080;
  if (!qword_100CAB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB080);
  }

  return result;
}

unint64_t sub_1002E18C4()
{
  result = qword_100CAB088;
  if (!qword_100CAB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB088);
  }

  return result;
}

unint64_t sub_1002E191C()
{
  result = qword_100CAB090;
  if (!qword_100CAB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB090);
  }

  return result;
}

unint64_t sub_1002E1974()
{
  result = qword_100CAB098;
  if (!qword_100CAB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB098);
  }

  return result;
}

unint64_t sub_1002E19CC()
{
  result = qword_100CAB0A0;
  if (!qword_100CAB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0A0);
  }

  return result;
}

unint64_t sub_1002E1A24()
{
  result = qword_100CAB0A8;
  if (!qword_100CAB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0A8);
  }

  return result;
}

unint64_t sub_1002E1A7C()
{
  result = qword_100CAB0B0;
  if (!qword_100CAB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0B0);
  }

  return result;
}

unint64_t sub_1002E1AD4()
{
  result = qword_100CAB0B8;
  if (!qword_100CAB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0B8);
  }

  return result;
}

unint64_t sub_1002E1B2C()
{
  result = qword_100CAB0C0;
  if (!qword_100CAB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0C0);
  }

  return result;
}

unint64_t sub_1002E1B84()
{
  result = qword_100CAB0C8;
  if (!qword_100CAB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0C8);
  }

  return result;
}

unint64_t sub_1002E1BDC()
{
  result = qword_100CAB0D0;
  if (!qword_100CAB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0D0);
  }

  return result;
}

unint64_t sub_1002E1C34()
{
  result = qword_100CAB0D8;
  if (!qword_100CAB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0D8);
  }

  return result;
}

unint64_t sub_1002E1C8C()
{
  result = qword_100CAB0E0;
  if (!qword_100CAB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0E0);
  }

  return result;
}

unint64_t sub_1002E1CE4()
{
  result = qword_100CAB0E8;
  if (!qword_100CAB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0E8);
  }

  return result;
}

unint64_t sub_1002E1D3C()
{
  result = qword_100CAB0F0;
  if (!qword_100CAB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0F0);
  }

  return result;
}

unint64_t sub_1002E1D94()
{
  result = qword_100CAB0F8;
  if (!qword_100CAB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB0F8);
  }

  return result;
}

unint64_t sub_1002E1DEC()
{
  result = qword_100CAB100;
  if (!qword_100CAB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB100);
  }

  return result;
}

unint64_t sub_1002E1E44()
{
  result = qword_100CAB108;
  if (!qword_100CAB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB108);
  }

  return result;
}

unint64_t sub_1002E1E9C()
{
  result = qword_100CAB110;
  if (!qword_100CAB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB110);
  }

  return result;
}

unint64_t sub_1002E1EF4()
{
  result = qword_100CAB118;
  if (!qword_100CAB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB118);
  }

  return result;
}

unint64_t sub_1002E1F4C()
{
  result = qword_100CAB120;
  if (!qword_100CAB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB120);
  }

  return result;
}

unint64_t sub_1002E1FA4()
{
  result = qword_100CAB128;
  if (!qword_100CAB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB128);
  }

  return result;
}

unint64_t sub_1002E1FFC()
{
  result = qword_100CAB130;
  if (!qword_100CAB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB130);
  }

  return result;
}

unint64_t sub_1002E2054()
{
  result = qword_100CAB138;
  if (!qword_100CAB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB138);
  }

  return result;
}

unint64_t sub_1002E20AC()
{
  result = qword_100CAB140;
  if (!qword_100CAB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB140);
  }

  return result;
}

unint64_t sub_1002E2104()
{
  result = qword_100CAB148;
  if (!qword_100CAB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB148);
  }

  return result;
}

unint64_t sub_1002E215C()
{
  result = qword_100CAB150;
  if (!qword_100CAB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB150);
  }

  return result;
}

unint64_t sub_1002E21B4()
{
  result = qword_100CAB158;
  if (!qword_100CAB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB158);
  }

  return result;
}

unint64_t sub_1002E220C()
{
  result = qword_100CAB160;
  if (!qword_100CAB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB160);
  }

  return result;
}

unint64_t sub_1002E2264()
{
  result = qword_100CAB168;
  if (!qword_100CAB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB168);
  }

  return result;
}

unint64_t sub_1002E22BC()
{
  result = qword_100CAB170;
  if (!qword_100CAB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB170);
  }

  return result;
}

unint64_t sub_1002E2314()
{
  result = qword_100CAB178;
  if (!qword_100CAB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB178);
  }

  return result;
}

unint64_t sub_1002E2368()
{
  result = qword_100CAB188;
  if (!qword_100CAB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB188);
  }

  return result;
}

unint64_t sub_1002E23BC()
{
  result = qword_100CAB1B0;
  if (!qword_100CAB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB1B0);
  }

  return result;
}

unint64_t sub_1002E2410()
{
  result = qword_100CAB1D8;
  if (!qword_100CAB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB1D8);
  }

  return result;
}

unint64_t sub_1002E2464()
{
  result = qword_100CAB1F0;
  if (!qword_100CAB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB1F0);
  }

  return result;
}

unint64_t sub_1002E24B8()
{
  result = qword_100CAB208;
  if (!qword_100CAB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB208);
  }

  return result;
}

unint64_t sub_1002E250C()
{
  result = qword_100CAB220;
  if (!qword_100CAB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB220);
  }

  return result;
}

unint64_t sub_1002E2560()
{
  result = qword_100CAB238;
  if (!qword_100CAB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB238);
  }

  return result;
}

unint64_t sub_1002E25B4()
{
  result = qword_100CAB250;
  if (!qword_100CAB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB250);
  }

  return result;
}

unint64_t sub_1002E2608()
{
  result = qword_100CAB268;
  if (!qword_100CAB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB268);
  }

  return result;
}

unint64_t sub_1002E265C()
{
  result = qword_100CAB280;
  if (!qword_100CAB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB280);
  }

  return result;
}

unint64_t sub_1002E26B0()
{
  result = qword_100CAB298;
  if (!qword_100CAB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB298);
  }

  return result;
}

unint64_t sub_1002E2704()
{
  result = qword_100CAB2B0;
  if (!qword_100CAB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB2B0);
  }

  return result;
}

unint64_t sub_1002E2758()
{
  result = qword_100CAB2C8;
  if (!qword_100CAB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB2C8);
  }

  return result;
}

unint64_t sub_1002E27AC()
{
  result = qword_100CAB2E0;
  if (!qword_100CAB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB2E0);
  }

  return result;
}

unint64_t sub_1002E2800()
{
  result = qword_100CAB2F8;
  if (!qword_100CAB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB2F8);
  }

  return result;
}

unint64_t sub_1002E2854()
{
  result = qword_100CAB310;
  if (!qword_100CAB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB310);
  }

  return result;
}

unint64_t sub_1002E28A8()
{
  result = qword_100CAB328;
  if (!qword_100CAB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB328);
  }

  return result;
}

unint64_t sub_1002E28FC()
{
  result = qword_100CAB340;
  if (!qword_100CAB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB340);
  }

  return result;
}

unint64_t sub_1002E2950()
{
  result = qword_100CAB358;
  if (!qword_100CAB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB358);
  }

  return result;
}

unint64_t sub_1002E29A4()
{
  result = qword_100CAB370;
  if (!qword_100CAB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB370);
  }

  return result;
}

unint64_t sub_1002E29F8()
{
  result = qword_100CAB388;
  if (!qword_100CAB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB388);
  }

  return result;
}

unint64_t sub_1002E2A4C()
{
  result = qword_100CAB3A0;
  if (!qword_100CAB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB3A0);
  }

  return result;
}

unint64_t sub_1002E2AA0()
{
  result = qword_100CAB3B8;
  if (!qword_100CAB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB3B8);
  }

  return result;
}

unint64_t sub_1002E2AF4()
{
  result = qword_100CAB3D0;
  if (!qword_100CAB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB3D0);
  }

  return result;
}

unint64_t sub_1002E2B48()
{
  result = qword_100CAB3E8;
  if (!qword_100CAB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB3E8);
  }

  return result;
}

unint64_t sub_1002E2B9C()
{
  result = qword_100CAB400;
  if (!qword_100CAB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB400);
  }

  return result;
}

unint64_t sub_1002E2BF0()
{
  result = qword_100CAB418;
  if (!qword_100CAB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeAction(unsigned int *a1, int a2)
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

_BYTE *sub_1002E2E34(_BYTE *result, int a2, int a3)
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

unint64_t sub_1002E2EE4()
{
  result = qword_100CAB428;
  if (!qword_100CAB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB428);
  }

  return result;
}

unint64_t sub_1002E2F3C()
{
  result = qword_100CAB430;
  if (!qword_100CAB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB430);
  }

  return result;
}

unint64_t sub_1002E2F94()
{
  result = qword_100CAB438;
  if (!qword_100CAB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB438);
  }

  return result;
}

unint64_t sub_1002E2FEC()
{
  result = qword_100CAB440;
  if (!qword_100CAB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB440);
  }

  return result;
}

unint64_t sub_1002E3044()
{
  result = qword_100CAB448;
  if (!qword_100CAB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB448);
  }

  return result;
}

unint64_t sub_1002E309C()
{
  result = qword_100CAB450;
  if (!qword_100CAB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB450);
  }

  return result;
}

unint64_t sub_1002E30F4()
{
  result = qword_100CAB458;
  if (!qword_100CAB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB458);
  }

  return result;
}

unint64_t sub_1002E314C()
{
  result = qword_100CAB460;
  if (!qword_100CAB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB460);
  }

  return result;
}

unint64_t sub_1002E31A4()
{
  result = qword_100CAB468;
  if (!qword_100CAB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB468);
  }

  return result;
}

unint64_t sub_1002E31FC()
{
  result = qword_100CAB470;
  if (!qword_100CAB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB470);
  }

  return result;
}

unint64_t sub_1002E3254()
{
  result = qword_100CAB478;
  if (!qword_100CAB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB478);
  }

  return result;
}

unint64_t sub_1002E32AC()
{
  result = qword_100CAB480;
  if (!qword_100CAB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB480);
  }

  return result;
}

unint64_t sub_1002E3304()
{
  result = qword_100CAB488;
  if (!qword_100CAB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB488);
  }

  return result;
}

unint64_t sub_1002E335C()
{
  result = qword_100CAB490;
  if (!qword_100CAB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB490);
  }

  return result;
}

unint64_t sub_1002E33B4()
{
  result = qword_100CAB498;
  if (!qword_100CAB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB498);
  }

  return result;
}

unint64_t sub_1002E340C()
{
  result = qword_100CAB4A0;
  if (!qword_100CAB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4A0);
  }

  return result;
}

unint64_t sub_1002E3464()
{
  result = qword_100CAB4A8;
  if (!qword_100CAB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4A8);
  }

  return result;
}

unint64_t sub_1002E34BC()
{
  result = qword_100CAB4B0;
  if (!qword_100CAB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4B0);
  }

  return result;
}

unint64_t sub_1002E3514()
{
  result = qword_100CAB4B8;
  if (!qword_100CAB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4B8);
  }

  return result;
}

unint64_t sub_1002E356C()
{
  result = qword_100CAB4C0;
  if (!qword_100CAB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4C0);
  }

  return result;
}

unint64_t sub_1002E35C4()
{
  result = qword_100CAB4C8;
  if (!qword_100CAB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4C8);
  }

  return result;
}

unint64_t sub_1002E361C()
{
  result = qword_100CAB4D0;
  if (!qword_100CAB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4D0);
  }

  return result;
}

unint64_t sub_1002E3674()
{
  result = qword_100CAB4D8;
  if (!qword_100CAB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4D8);
  }

  return result;
}

unint64_t sub_1002E36CC()
{
  result = qword_100CAB4E0;
  if (!qword_100CAB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4E0);
  }

  return result;
}

unint64_t sub_1002E3724()
{
  result = qword_100CAB4E8;
  if (!qword_100CAB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4E8);
  }

  return result;
}

unint64_t sub_1002E377C()
{
  result = qword_100CAB4F0;
  if (!qword_100CAB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4F0);
  }

  return result;
}

unint64_t sub_1002E37D4()
{
  result = qword_100CAB4F8;
  if (!qword_100CAB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB4F8);
  }

  return result;
}

unint64_t sub_1002E382C()
{
  result = qword_100CAB500;
  if (!qword_100CAB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB500);
  }

  return result;
}

unint64_t sub_1002E3884()
{
  result = qword_100CAB508;
  if (!qword_100CAB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB508);
  }

  return result;
}

unint64_t sub_1002E38DC()
{
  result = qword_100CAB510;
  if (!qword_100CAB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB510);
  }

  return result;
}

unint64_t sub_1002E3934()
{
  result = qword_100CAB518;
  if (!qword_100CAB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB518);
  }

  return result;
}

unint64_t sub_1002E398C()
{
  result = qword_100CAB520;
  if (!qword_100CAB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB520);
  }

  return result;
}

unint64_t sub_1002E39E4()
{
  result = qword_100CAB528;
  if (!qword_100CAB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB528);
  }

  return result;
}

unint64_t sub_1002E3A3C()
{
  result = qword_100CAB530;
  if (!qword_100CAB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB530);
  }

  return result;
}

unint64_t sub_1002E3A94()
{
  result = qword_100CAB538;
  if (!qword_100CAB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB538);
  }

  return result;
}

unint64_t sub_1002E3AEC()
{
  result = qword_100CAB540;
  if (!qword_100CAB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB540);
  }

  return result;
}

unint64_t sub_1002E3B44()
{
  result = qword_100CAB548;
  if (!qword_100CAB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB548);
  }

  return result;
}

unint64_t sub_1002E3B9C()
{
  result = qword_100CAB550;
  if (!qword_100CAB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB550);
  }

  return result;
}

unint64_t sub_1002E3BF4()
{
  result = qword_100CAB558;
  if (!qword_100CAB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB558);
  }

  return result;
}

unint64_t sub_1002E3C4C()
{
  result = qword_100CAB560;
  if (!qword_100CAB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB560);
  }

  return result;
}

unint64_t sub_1002E3CA4()
{
  result = qword_100CAB568;
  if (!qword_100CAB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB568);
  }

  return result;
}

unint64_t sub_1002E3CFC()
{
  result = qword_100CAB570;
  if (!qword_100CAB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB570);
  }

  return result;
}

unint64_t sub_1002E3D54()
{
  result = qword_100CAB578;
  if (!qword_100CAB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB578);
  }

  return result;
}

unint64_t sub_1002E3DAC()
{
  result = qword_100CAB580;
  if (!qword_100CAB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB580);
  }

  return result;
}

unint64_t sub_1002E3E04()
{
  result = qword_100CAB588;
  if (!qword_100CAB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB588);
  }

  return result;
}

unint64_t sub_1002E3E5C()
{
  result = qword_100CAB590;
  if (!qword_100CAB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB590);
  }

  return result;
}

unint64_t sub_1002E3EB4()
{
  result = qword_100CAB598;
  if (!qword_100CAB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB598);
  }

  return result;
}

unint64_t sub_1002E3F0C()
{
  result = qword_100CAB5A0;
  if (!qword_100CAB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5A0);
  }

  return result;
}

unint64_t sub_1002E3F64()
{
  result = qword_100CAB5A8;
  if (!qword_100CAB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5A8);
  }

  return result;
}

unint64_t sub_1002E3FBC()
{
  result = qword_100CAB5B0;
  if (!qword_100CAB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5B0);
  }

  return result;
}

unint64_t sub_1002E4014()
{
  result = qword_100CAB5B8;
  if (!qword_100CAB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5B8);
  }

  return result;
}

unint64_t sub_1002E406C()
{
  result = qword_100CAB5C0;
  if (!qword_100CAB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5C0);
  }

  return result;
}

unint64_t sub_1002E40C4()
{
  result = qword_100CAB5C8;
  if (!qword_100CAB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5C8);
  }

  return result;
}

unint64_t sub_1002E411C()
{
  result = qword_100CAB5D0;
  if (!qword_100CAB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5D0);
  }

  return result;
}

unint64_t sub_1002E4174()
{
  result = qword_100CAB5D8;
  if (!qword_100CAB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5D8);
  }

  return result;
}

unint64_t sub_1002E41CC()
{
  result = qword_100CAB5E0;
  if (!qword_100CAB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5E0);
  }

  return result;
}

unint64_t sub_1002E4224()
{
  result = qword_100CAB5E8;
  if (!qword_100CAB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5E8);
  }

  return result;
}

unint64_t sub_1002E427C()
{
  result = qword_100CAB5F0;
  if (!qword_100CAB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5F0);
  }

  return result;
}

unint64_t sub_1002E42D4()
{
  result = qword_100CAB5F8;
  if (!qword_100CAB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB5F8);
  }

  return result;
}

unint64_t sub_1002E432C()
{
  result = qword_100CAB600;
  if (!qword_100CAB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB600);
  }

  return result;
}

unint64_t sub_1002E4384()
{
  result = qword_100CAB608;
  if (!qword_100CAB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB608);
  }

  return result;
}

unint64_t sub_1002E43DC()
{
  result = qword_100CAB610;
  if (!qword_100CAB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB610);
  }

  return result;
}

unint64_t sub_1002E4434()
{
  result = qword_100CAB618;
  if (!qword_100CAB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB618);
  }

  return result;
}

unint64_t sub_1002E448C()
{
  result = qword_100CAB620;
  if (!qword_100CAB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB620);
  }

  return result;
}

unint64_t sub_1002E44E4()
{
  result = qword_100CAB628;
  if (!qword_100CAB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB628);
  }

  return result;
}

unint64_t sub_1002E453C()
{
  result = qword_100CAB630;
  if (!qword_100CAB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB630);
  }

  return result;
}

unint64_t sub_1002E4594()
{
  result = qword_100CAB638;
  if (!qword_100CAB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB638);
  }

  return result;
}

unint64_t sub_1002E45EC()
{
  result = qword_100CAB640;
  if (!qword_100CAB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB640);
  }

  return result;
}

unint64_t sub_1002E4644()
{
  result = qword_100CAB648;
  if (!qword_100CAB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB648);
  }

  return result;
}

unint64_t sub_1002E469C()
{
  result = qword_100CAB650;
  if (!qword_100CAB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB650);
  }

  return result;
}

unint64_t sub_1002E46F4()
{
  result = qword_100CAB658;
  if (!qword_100CAB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB658);
  }

  return result;
}

unint64_t sub_1002E474C()
{
  result = qword_100CAB660;
  if (!qword_100CAB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB660);
  }

  return result;
}

unint64_t sub_1002E47A4()
{
  result = qword_100CAB668;
  if (!qword_100CAB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB668);
  }

  return result;
}

unint64_t sub_1002E47FC()
{
  result = qword_100CAB670;
  if (!qword_100CAB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB670);
  }

  return result;
}

unint64_t sub_1002E4854()
{
  result = qword_100CAB678;
  if (!qword_100CAB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB678);
  }

  return result;
}

unint64_t sub_1002E48AC()
{
  result = qword_100CAB680;
  if (!qword_100CAB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB680);
  }

  return result;
}

unint64_t sub_1002E4904()
{
  result = qword_100CAB688;
  if (!qword_100CAB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB688);
  }

  return result;
}

unint64_t sub_1002E495C()
{
  result = qword_100CAB690;
  if (!qword_100CAB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB690);
  }

  return result;
}

unint64_t sub_1002E49B4()
{
  result = qword_100CAB698;
  if (!qword_100CAB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB698);
  }

  return result;
}

unint64_t sub_1002E4A0C()
{
  result = qword_100CAB6A0;
  if (!qword_100CAB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB6A0);
  }

  return result;
}

unint64_t sub_1002E4A64()
{
  result = qword_100CAB6A8;
  if (!qword_100CAB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAB6A8);
  }

  return result;
}

unint64_t sub_1002E4B78()
{
  *(v2 - 152) = v1;
  *(v2 - 104) = v0;
  *(v2 - 81) = 0;

  return sub_1002DE454();
}

uint64_t sub_1002E4C54()
{

  return sub_100066B44();
}

uint64_t sub_1002E4C70()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1002E4C98()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1002E4D28()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void sub_1002E4DA4()
{
  *(v2 - 248) = (v0 + 63) >> 6;
  *(v2 - 240) = v1;
  v3 = *(v2 - 176);
  *(v2 - 232) = v3 + 16;
  v4 = *(v2 - 96);
  *(v2 - 120) = v3 + 32;
  *(v2 - 136) = v4 + 16;
  *(v2 - 128) = v4 + 32;
  *(v2 - 216) = v3 + 8;
  *(v2 - 208) = v4 + 8;
}

uint64_t sub_1002E4ECC()
{

  return swift_beginAccess();
}

uint64_t sub_1002E5308()
{

  return sub_100040B64();
}

uint64_t sub_1002E5330()
{

  return sub_100040B64();
}

uint64_t sub_1002E54B8()
{

  return sub_100006F14(v0);
}

uint64_t sub_1002E54EC(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1002E5540()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1002E558C()
{
}

uint64_t sub_1002E5638()
{

  return sub_100040B64();
}

unint64_t sub_1002E57B4()
{
  *(v1 - 104) = v0;
  *(v1 - 81) = 0;

  return sub_1002DE454();
}

uint64_t sub_1002E57CC()
{

  return sub_100095588();
}

uint64_t sub_1002E57E4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1002E5808()
{

  return sub_10003DE74();
}

uint64_t sub_1002E5824()
{

  return sub_100095588();
}

uint64_t sub_1002E5920()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1002E5940@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v1 + 48) + 8 * (a1 | (v2 << 6)));

  return sub_1000D5F5C(v4);
}

uint64_t sub_1002E5960()
{
}

uint64_t sub_1002E5980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001B350(a1, a2, a3, a4);
}

uint64_t sub_1002E59A8@<X0>(char a1@<W8>)
{
  *(v1 + 40) = a1;
}

uint64_t sub_1002E59C0()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1002E59D8@<X0>(uint64_t a1@<X8>)
{
  sub_100035B30(v1 + 16, v4);

  return sub_1003581B4(v4, a1);
}

uint64_t sub_1002E5A2C()
{
  sub_100006F14(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1002E5A90@<X0>(uint64_t a1@<X8>)
{
  CurrentWeather.humidity.getter();
  v3 = v2;
  CurrentWeather.humidity.getter();
  v4 = StringBuilder.makeString(for:data:formattedForAccessibility:)();
  v6 = v5;
  v7 = [objc_opt_self() mainBundle];
  v19._object = 0x8000000100ABED10;
  v8._countAndFlagsBits = 0x79746964696D7548;
  v8._object = 0xE800000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD00000000000003ALL;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v19);

  *a1 = v10;
  strcpy((a1 + 16), "humidity.fill");
  *(a1 + 30) = -4864;
  *(a1 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for LocationComponentContainerViewModel();
  v12 = (a1 + v11[5]);
  *v12 = v3;
  v12[1] = v4;
  v12[2] = v6;
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v13 = a1 + v11[8];
  v14 = *(sub_10022C350(&qword_100CA6690) + 48);
  v15 = enum case for DetailCondition.humidity(_:);
  v16 = type metadata accessor for DetailCondition();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  *(v13 + v14) = 0;
  v17 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v13, 0, 1, v17);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a1 + v11[6]) = 256;
  *(a1 + v11[7]) = result;
  return result;
}

uint64_t sub_1002E5CD0(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapPurpose();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((a1 + 16), *(a1 + 40));
  (*(v3 + 104))(v5, enum case for WeatherMapPurpose.none(_:), v2);
  dispatch thunk of WeatherMapOverlayMetaDataRefresherType.refreshMetadata(purpose:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t LocalSearchRequestService.__deallocating_deinit()
{
  sub_100006F14(v0 + 16);

  return swift_deallocClassInstance();
}

BOOL sub_1002E5E50(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NotificationsOptInComponentViewModel() + 20);
  v5 = *(a1 + v4) | (*(a1 + v4 + 2) << 16);
  v6 = *(a2 + v4) | (*(a2 + v4 + 2) << 16);
  if (v5 != 2)
  {
    if (v5 == 3)
    {
      if (v6 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v6 & 0xFE) == 2 || ((v6 ^ v5) & 1) != 0 || (((v6 ^ v5) >> 8))
      {
        return 0;
      }

      v8 = BYTE2(v6);
      v9 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(v5));
      v11 = v10;
      if (v9 == PredictedLocationsAuthorizationState.rawValue.getter(v8) && v11 == v12)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 1;
  }

  return v6 == 2;
}

uint64_t sub_1002E5F80@<X0>(void (**a1)(char *, uint64_t)@<X0>, double *a2@<X8>)
{
  v211 = a2;
  v3 = type metadata accessor for DetailHeroChartLollipopModel(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v234 = (v6 - v5);
  v7 = sub_1000038CC();
  v210 = type metadata accessor for PeakUpperMarkModel(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100003848();
  v233 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_10000E70C();
  sub_100003918(v11);
  v231 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v242 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v230 = v15 - v14;
  v16 = sub_10022C350(&qword_100CAA9F0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003918(v191 - v18);
  v224 = type metadata accessor for WeatherFormatScaling();
  sub_1000037C4();
  v239 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100003918(v22 - v21);
  v250 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  sub_1000037C4();
  v244 = v23;
  __chkstk_darwin(v24);
  sub_100003848();
  v243 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_10000E70C();
  sub_100003918(v27);
  v227 = type metadata accessor for AttributedString.CharacterView();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000037D8();
  sub_100003918(v30 - v29);
  v222 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  sub_1000037C4();
  v238 = v31;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v236 = (v34 - v33);
  sub_1000038CC();
  v226 = type metadata accessor for AveragesComparisonStrings();
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  v229 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v228 = v38;
  v39 = sub_10022C350(&qword_100CAB930);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  v235 = v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  v44 = v191 - v43;
  v249 = sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v209 = v45;
  __chkstk_darwin(v46);
  sub_100003848();
  v225 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  v248 = v191 - v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  v241 = v191 - v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_10000E70C();
  v240 = v53;
  sub_1000038CC();
  v54 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v56 = v55;
  __chkstk_darwin(v57);
  sub_1000037D8();
  v60 = v59 - v58;
  v61 = sub_10022C350(&unk_100CB2CF0);
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  v64 = v191 - v63;
  v207 = type metadata accessor for Calendar();
  sub_1000037C4();
  v206 = v65;
  __chkstk_darwin(v66);
  sub_1000037D8();
  v69 = v68 - v67;
  v70 = type metadata accessor for Date();
  sub_1000037C4();
  v247 = v71;
  __chkstk_darwin(v72);
  sub_100003848();
  v246 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  v76 = v191 - v75;
  type metadata accessor for PrecipitationAveragesHeroChartInput();
  Date.startOfDay(timeZone:)();
  v245 = a1;
  static Calendar.currentCalendar(with:)();
  result = (*(v56 + 104))(v60, enum case for Calendar.Component.day(_:), v54);
  v78 = v251[7];
  v79 = -v78;
  if (__OFSUB__(0, v78))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v221 = v69;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v56 + 8))(v60, v54);
  if (sub_100024D10(v64, 1, v70) == 1)
  {
    (*(v247 + 16))(v246, v76, v70);
    result = sub_100024D10(v64, 1, v70);
    v80 = v236;
    if (result != 1)
    {
      result = sub_1000180EC(v64, &unk_100CB2CF0);
    }
  }

  else
  {
    result = (*(v247 + 32))(v246, v64, v70);
    v80 = v236;
  }

  if (v79 > 10)
  {
    goto LABEL_22;
  }

  v237 = v70;
  __chkstk_darwin(result);
  v191[-2] = v221;
  v191[-1] = v76;
  sub_1008EE9A0();
  v82 = v81;
  v83 = v245;
  v84 = sub_1002E7340(v240, v245, v81, v76);
  v85 = sub_1002E8B2C(v241, v83, v82, v76);

  sub_1002F5488(v84, v44);
  v86 = type metadata accessor for DetailChartDataElement();
  if (sub_100024D10(v44, 1, v86) == 1)
  {
    sub_1000180EC(v44, &qword_100CAB930);
    v87 = 0.0;
  }

  else
  {
    DetailChartDataElement.value.getter();
    v87 = v88;
    (*(*(v86 - 8) + 8))(v44, v86);
  }

  v89 = v235;
  sub_1002F5488(v85, v235);
  if (sub_100024D10(v89, 1, v86) == 1)
  {
    sub_1000180EC(v89, &qword_100CAB930);
    v90 = 0.0;
  }

  else
  {
    DetailChartDataElement.value.getter();
    v90 = v91;
    (*(*(v86 - 8) + 8))(v89, v86);
  }

  if (v87 <= v90)
  {
    v87 = v90;
  }

  v92 = v251;
  v93 = *v251;
  v94 = v251[1];
  ObjectType = swift_getObjectType();
  v203 = v93;
  v201 = ObjectType;
  v202 = v94;
  v96 = dispatch thunk of UnitManagerType.precipitationRainfall.getter();
  v97 = sub_1002EA120(v96);
  v99 = v98;
  v235 = v97;

  v220 = v84;
  v219 = v85;
  v236 = v76;
  v204 = sub_1002EA3D0(v245, v84, v85);
  sub_1000161C0(v92 + 2, v92[5]);
  v100 = enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:);
  v101 = v238;
  v102 = v238 + 104;
  v217 = *(v238 + 104);
  v103 = v80;
  v104 = v80;
  v216 = enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:);
  v105 = v222;
  v217(v104, enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:), v222);
  v106 = v228;
  sub_10049CCA8();
  v107 = *(v101 + 8);
  v107(v103, v105);
  v218 = v107;
  sub_1000161C0(v92 + 2, v92[5]);
  v108 = v100;
  v109 = v217;
  v217(v103, v108, v105);
  sub_10049CCA8();
  v107(v103, v105);
  v110 = v106[1];
  v199 = *v106;
  v200 = v110;

  AttributedString.characters.getter();
  v196 = sub_1002ED1D4(&qword_100CAB940, &type metadata accessor for AttributedString.CharacterView);
  v198 = String.init<A>(_:)();
  v197 = v111;
  Measurement<>.converted(to:)();
  Measurement<>.converted(to:)();
  static Set<>.unit.getter();
  v195 = v102;
  v109(v103, v216, v105);
  v112 = v239;
  v113 = *(v239 + 104);
  v114 = v223;
  v115 = v224;
  v191[3] = v239 + 104;
  v191[2] = v113;
  v113(v223, enum case for WeatherFormatScaling.asProvided(_:), v224);
  type metadata accessor for Locale();
  v116 = v208;
  v117 = sub_100016774();
  *(v119 - 256) = v118;
  sub_10001B350(v117, v120, v121, v118);
  v122 = v205;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1000180EC(v116, &qword_100CAA9F0);
  v123 = *(v112 + 8);
  v239 = v112 + 8;
  v192 = v123;
  v123(v114, v115);
  v238 = v101 + 8;
  v218(v103, v105);
  v124 = v103;
  v125 = v242;
  v126 = *(v242 + 104);
  v127 = v230;
  v215 = enum case for WeatherFormatPlaceholder.none(_:);
  v128 = v231;
  v214 = v242 + 104;
  v213 = v126;
  v126(v230);
  v212 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v129 = sub_1002ED1D4(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle);
  v130 = v250;
  v194 = v129;
  Measurement.formatted<A>(_:placeholder:unitManager:)();

  v132 = *(v125 + 8);
  v131 = v125 + 8;
  v193 = v132;
  v132(v127, v128);
  v133 = *(v244 + 8);
  v244 += 8;
  v205 = v133;
  v133(v122, v130);
  v134 = String.count.getter();

  if (v134 < 5)
  {
    v143 = sub_100074744();
    v144(v143);
    v145 = sub_100019324();
    v146(v145);
    v147 = sub_100016774();
    sub_10001B350(v147, v149, v150, *(v148 - 256));
    static Set<>.full.getter();
  }

  else
  {
    static Set<>.value.getter();
    v135 = sub_100074744();
    v136(v135);
    v137 = sub_100019324();
    v138(v137);
    v139 = sub_100016774();
    sub_10001B350(v139, v141, v142, *(v140 - 256));
  }

  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1000180EC(v116, &qword_100CAA9F0);
  v192(v124, v130);
  v218(v122, v128);
  v239 = *(v247 + 16);
  (v239)(v232, v236, v237);
  v151 = v230;
  v152 = v231;
  sub_1000314D4();
  v153();
  static UnitManager.standard.getter();
  v154 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v156 = v155;

  v242 = v131;
  v157 = v193;
  v193(v151, v152);
  sub_1000250AC();
  *v158 = v154;
  v158[1] = v156;
  sub_10003C31C();
  v159 = v246;
  (v239)(v233, v246, v237);
  sub_1000314D4();
  v160();
  static UnitManager.standard.getter();
  v161 = v225;
  v162 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v164 = v163;

  v157(v151, v152);
  sub_1000250AC();
  *v165 = v162;
  v165[1] = v164;
  sub_10003C31C();
  v166 = dispatch thunk of UnitManagerType.precipitationRainfall.getter();
  sub_1002EAAB8(v220, v219, v159, v236, v245, v166, v235, v234);

  v167 = v229;
  v168 = *(v229 + 8);
  v245 = *v229;

  AttributedString.characters.getter();
  v242 = String.init<A>(_:)();
  v239 = v169;
  v238 = dispatch thunk of UnitManagerType.precipitationRainfall.getter();
  v170 = dispatch thunk of UnitManagerType.precipitationRainfall.getter();
  v171 = NSUnitLength.isMetricPrecipitation.getter();

  v172 = 1;
  if ((v171 & 1) == 0)
  {
    v172 = 2;
  }

  v231 = v172;
  v173 = sub_1002EB968();
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v205(v243, v250);
  v180 = *(v209 + 8);
  v181 = v249;
  v180(v161, v249);
  v180(v248, v181);
  sub_1002ED278(v167, type metadata accessor for AveragesComparisonStrings);
  sub_1002ED278(v228, type metadata accessor for AveragesComparisonStrings);
  v180(v241, v181);
  v180(v240, v181);
  (*(v206 + 8))(v221, v207);
  v182 = v211;
  v183 = v200;
  *v211 = v199;
  *(v182 + 1) = v183;
  *(v182 + 2) = v245;
  *(v182 + 3) = v168;
  v184 = v197;
  *(v182 + 4) = v198;
  *(v182 + 5) = v184;
  v185 = v239;
  *(v182 + 6) = v242;
  *(v182 + 7) = v185;
  v186 = v219;
  *(v182 + 8) = v220;
  *(v182 + 9) = v186;
  *(v182 + 10) = v204;
  *(v182 + 11) = v99;
  v182[12] = v87;
  v187 = v238;
  *(v182 + 13) = v235;
  *(v182 + 14) = v187;
  *(v182 + 15) = v231;
  *(v182 + 128) = 1;
  *(v182 + 17) = v173;
  *(v182 + 18) = v175;
  *(v182 + 19) = v177;
  *(v182 + 160) = v179 & 1;
  v188 = type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  sub_1002ED21C(v232, v182 + v188[12]);
  sub_1002ED21C(v233, v182 + v188[13]);
  sub_1002ED21C(v234, v182 + v188[14]);
  v189 = *(v247 + 32);
  v190 = v237;
  v189(v182 + v188[15], v246, v237);
  return (v189)(v182 + v188[16], v236, v190);
}

void *sub_1002E7340(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, unint64_t a4)
{
  v144 = a4;
  v191 = a3;
  v141 = a1;
  v6 = sub_10022C350(&qword_100CAB9B0);
  __chkstk_darwin(v6 - 8);
  v135 = &v129 - v7;
  v136 = type metadata accessor for DayWeather();
  v130 = *(v136 - 8);
  __chkstk_darwin(v136);
  v129 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v198 = *(v186 - 8);
  __chkstk_darwin(v186);
  v138 = (&v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v153 = (&v129 - v11);
  v185 = type metadata accessor for Date();
  v190 = *(v185 - 8);
  __chkstk_darwin(v185);
  v137 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v152 = &v129 - v14;
  v203 = type metadata accessor for DetailChartDataElement();
  v15 = *(v203 - 8);
  __chkstk_darwin(v203);
  v140 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v139 = (&v129 - v18);
  __chkstk_darwin(v19);
  v201 = &v129 - v20;
  __chkstk_darwin(v21);
  v200 = &v129 - v22;
  v184 = type metadata accessor for WeatherFormatPlaceholder();
  v197 = *(v184 - 8);
  __chkstk_darwin(v184);
  v183 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for WeatherFormatScaling();
  v196 = *(v181 - 8);
  __chkstk_darwin(v181);
  v179 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v25 - 8);
  v177 = &v129 - v26;
  v178 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v195 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v194 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for DayPrecipitationSummary();
  v188 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10022C350(&qword_100CAB9B8);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v129 - v32;
  v204 = sub_10022C350(&qword_100CAB938);
  v170 = *(v204 - 8);
  __chkstk_darwin(v204);
  v143 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v154 = &v129 - v36;
  __chkstk_darwin(v37);
  v199 = (&v129 - v38);
  __chkstk_darwin(v39);
  v41 = &v129 - v40;
  v134 = type metadata accessor for Calendar();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v43 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = v4;
  swift_getObjectType();
  v44 = dispatch thunk of UnitManagerType.precipitationRainfall.getter();
  v45 = type metadata accessor for PrecipitationAveragesHeroChartInput();
  v189 = *(v45 + 28);
  v142 = v43;
  static Calendar.currentCalendar(with:)();
  v46 = sub_1002ED0CC();
  v47 = v44;
  v175 = v41;
  v192 = v47;
  v174 = v46;
  Measurement.init(value:unit:)();
  v132 = v45;
  v193 = a2;
  WeatherStatisticsModel.dailyPrecipitationSummary.getter();
  v48 = DailyWeatherSummary.days.getter();
  (*(v31 + 8))(v33, v30);
  v49 = objc_opt_self();
  v50 = [v49 mainBundle];
  v205._object = 0x8000000100ABEF70;
  v51._countAndFlagsBits = 0x6F676120646425;
  v205._countAndFlagsBits = 0xD00000000000003BLL;
  v51._object = 0xE700000000000000;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, v50, v52, v205);
  countAndFlagsBits = v53._countAndFlagsBits;
  object = v53._object;

  sub_10022C350(&qword_100CA40C8);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100A2C3F0;
  *(v56 + 56) = &type metadata for Int;
  *(v56 + 64) = &protocol witness table for Int;
  *(v56 + 32) = 30;
  v149 = static String.localizedStringWithFormat(_:_:)();
  v173 = v57;

  v187 = v202[7];
  if (v187 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    sub_10069E354();
    v122 = v127;
    goto LABEL_16;
  }

  v131 = v49;
  countAndFlagsBits = 0;
  object = v188;
  v147 = (v188 + 2);
  v146 = (v188 + 1);
  v58 = v170;
  a2 = (v170 + 8);
  v145 = (v170 + 32);
  v156 = enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:);
  v155 = (v195 + 104);
  v158 = enum case for WeatherFormatScaling.automatic(_:);
  v157 = (v196 + 104);
  v159 = (v196 + 8);
  v160 = (v195 + 8);
  v162 = enum case for WeatherFormatPlaceholder.none(_:);
  v161 = (v197 + 104);
  v163 = (v197 + 8);
  v164 = (v194 + 8);
  v59 = v190;
  v165 = (v190 + 16);
  v167 = enum case for DetailChartDataElement.ValueLabel.text(_:);
  v166 = (v198 + 104);
  v168 = (v15 + 16);
  v169 = v15 + 8;
  v170 = v15 + 32;
  v60 = _swiftEmptyArrayStorage;
  v61 = v204;
  v172 = v15;
  v171 = (v58 + 8);
  v148 = v48;
  while (1)
  {
    v202 = v60;
    if (v187 == countAndFlagsBits || countAndFlagsBits >= *(v48 + 16) || countAndFlagsBits >= *(v191 + 16))
    {
      break;
    }

    v62 = v191 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * countAndFlagsBits;
    v63 = Date.formattedShortMonthAndDay(timeZone:)();
    if (countAndFlagsBits >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v65 = v48 + ((*(object + 80) + 32) & ~*(object + 80));
    v66 = object[9];
    v197 = v64;
    v67 = v65 + v66 * countAndFlagsBits;
    v68 = object[2];
    v69 = v150;
    v195 = countAndFlagsBits;
    v196 = v63;
    v70 = v151;
    v68(v150, v67, v151);
    v71 = v154;
    DayPrecipitationSummary.precipitationAmount.getter();
    (object[1])(v69, v70);
    Measurement<>.converted(to:)();
    v72 = *a2;
    (*a2)(v71, v61);
    v73 = v175;
    static Measurement<>.+ infix(_:_:)();
    v198 = v72;
    v72(v73, v61);
    (*v145)(v73, v71, v61);
    v74 = v176;
    v75 = v178;
    (*v155)(v176, v156, v178);
    v76 = type metadata accessor for Locale();
    v77 = v177;
    sub_10001B350(v177, 1, 1, v76);
    static Set<>.full.getter();
    v78 = v179;
    v79 = v181;
    (*v157)(v179, v158, v181);
    v194 = v62;
    v80 = v180;
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    (*v159)(v78, v79);
    sub_1000180EC(v77, &qword_100CAA9F0);
    (*v160)(v74, v75);
    v81 = v183;
    v82 = v184;
    (*v161)(v183, v162, v184);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_1002ED1D4(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle);
    v83 = v182;
    Measurement.formatted<A>(_:placeholder:unitManager:)();

    (*v163)(v81, v82);
    (*v164)(v80, v83);
    (*v165)(v152, v194, v185);
    Measurement.value.getter();
    v84 = v153;
    *v153 = 0;
    v84[1] = 0xE000000000000000;
    (*v166)(v84, v167, v186);
    v85 = v195;

    v86 = v200;
    v60 = v202;
    v87 = v203;
    DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
    (*v168)(v201, v86, v87);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069E354();
      v60 = v92;
    }

    v88 = v172;
    v89 = v60[2];
    a2 = v171;
    object = v188;
    v48 = v148;
    v90 = v85;
    v61 = v204;
    if (v89 >= v60[3] >> 1)
    {
      sub_10069E354();
      v60 = v93;
    }

    v91 = v203;
    (*(v88 + 8))(v200, v203);
    (v198)(v199, v61);
    v60[2] = v89 + 1;
    (*(v88 + 32))(v60 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v89, v201, v91);
    countAndFlagsBits = v90 + 1;
    v59 = v190;
  }

  v94 = [v131 mainBundle];
  v206._object = 0x8000000100ABEFF0;
  v95._countAndFlagsBits = 0x7961646F54;
  v96._object = 0x8000000100ABEFB0;
  v206._countAndFlagsBits = 0xD0000000000000CCLL;
  v96._countAndFlagsBits = 0xD000000000000034;
  v95._object = 0xE500000000000000;
  v97 = NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v94, v95, v206);

  __chkstk_darwin(v98);
  v99 = v135;
  sub_1001190BC();
  v100 = v99;
  v101 = v99;
  v102 = v136;
  v103 = sub_100024D10(v101, 1, v136);
  v200 = v97._object;
  v201 = v97._countAndFlagsBits;
  if (v103 == 1)
  {
    sub_1000180EC(v100, &qword_100CAB9B0);
    v104 = v192;
    Measurement.init(value:unit:)();
  }

  else
  {
    v105 = v130;
    v106 = v129;
    (*(v130 + 32))(v129, v100, v102);
    v107 = v154;
    DayWeather.precipitationAmount.getter();
    Measurement<>.converted(to:)();
    (*a2)(v107, v61);
    (*(v105 + 8))(v106, v102);
  }

  v108 = Date.formattedShortMonthAndDay(timeZone:)();
  v197 = v109;
  v198 = v108;
  v110 = v175;
  static Measurement<>.+ infix(_:_:)();
  v199 = *a2;
  v199(v110, v61);
  v111 = v176;
  v112 = v178;
  (*v155)(v176, v156, v178);
  v113 = type metadata accessor for Locale();
  v114 = v177;
  sub_10001B350(v177, 1, 1, v113);
  static Set<>.full.getter();
  v115 = v179;
  v116 = v181;
  (*v157)(v179, v158, v181);
  v117 = v180;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  (*v159)(v115, v116);
  sub_1000180EC(v114, &qword_100CAA9F0);
  (*v160)(v111, v112);
  v118 = v183;
  v119 = v184;
  (*v161)(v183, v162, v184);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_1002ED1D4(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle);
  v120 = v182;
  Measurement.formatted<A>(_:placeholder:unitManager:)();

  (*v163)(v118, v119);
  (*v164)(v117, v120);
  (*v165)(v137, v144, v185);
  Measurement.value.getter();
  v121 = v138;
  *v138 = 0;
  v121[1] = 0xE000000000000000;
  (*v166)(v121, v167, v186);
  a2 = v139;
  DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
  object = v140;
  countAndFlagsBits = v203;
  (*v168)(v140, a2, v203);
  v122 = v202;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v123 = v172;
  v124 = v122[2];
  v125 = v122;
  if (v124 >= v122[3] >> 1)
  {
    sub_10069E354();
    v125 = v128;
  }

  (*(v123 + 8))(a2, countAndFlagsBits);
  v199(v143, v204);
  v125[2] = v124 + 1;
  (*(v123 + 32))(v125 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v124, object, countAndFlagsBits);
  (*(v133 + 8))(v142, v134);
  return v125;
}

void *sub_1002E8B2C(char *a1, uint64_t a2, void (**a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v139 = a4;
  v187 = a3;
  v176 = a2;
  v107 = a1;
  v138 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v182 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = (&v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = type metadata accessor for DetailChartDataElement();
  v140 = *(v170 - 8);
  __chkstk_darwin(v170);
  v169 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v168 = &v104 - v7;
  v136 = type metadata accessor for WeatherFormatPlaceholder();
  v181 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for WeatherFormatScaling();
  v179 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v10 - 8);
  v132 = &v104 - v11;
  v131 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v149 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v148 = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_10022C350(&qword_100CAB988);
  __chkstk_darwin(v167);
  v15 = &v104 - v14;
  v16 = sub_10022C350(&qword_100CAB990);
  v151 = *(v16 - 8);
  __chkstk_darwin(v16);
  v166 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v183 = &v104 - v19;
  v20 = sub_10022C350(&qword_100CAB998);
  __chkstk_darwin(v20 - 8);
  v165 = &v104 - v21;
  v22 = type metadata accessor for DayPrecipitationStatistics();
  v185 = *(v22 - 8);
  __chkstk_darwin(v22);
  v188 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v186 = &v104 - v25;
  __chkstk_darwin(v26);
  v164 = &v104 - v27;
  v163 = type metadata accessor for Calendar.Component();
  v184 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v161 = &v104 - v30;
  v180 = sub_10022C350(&qword_100CAB938);
  v175 = *(v180 - 8);
  __chkstk_darwin(v180);
  v127 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v160 = &v104 - v33;
  __chkstk_darwin(v34);
  v36 = &v104 - v35;
  v105 = type metadata accessor for Calendar();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v38 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for Date();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v126 = &v104 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v171 = &v104 - v41;
  __chkstk_darwin(v42);
  v44 = &v104 - v43;
  swift_getObjectType();
  v45 = dispatch thunk of UnitManagerType.precipitationRainfall.getter();
  v46 = type metadata accessor for PrecipitationAveragesHeroChartInput();
  v47 = v176 + *(v46 + 28);
  v142 = v44;
  Date.startOfDay(timeZone:)();
  v174 = v38;
  v125 = v47;
  static Calendar.gregorianCalendar(with:)();
  v48 = sub_1002ED0CC();
  v49 = v45;
  v177 = v36;
  Measurement.init(value:unit:)();
  v141 = v49;
  v124 = v48;
  Measurement.init(value:unit:)();
  v159 = v187[2];
  if (v159)
  {
    v50 = 0;
    v178 = *(v172 + 16);
    v158 = v187 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
    v157 = (v184 + 13);
    v156 = (v184 + 1);
    v155 = *(v46 + 20);
    v154 = (v151 + 2);
    v184 = (v185 + 2);
    v153 = enum case for Calendar.Component.day(_:);
    v187 = (v185 + 4);
    ++v185;
    v152 = enum case for Calendar.Component.year(_:);
    ++v151;
    v150 = (v175 + 8);
    v123 = (v175 + 32);
    v122 = (v149 + 13);
    v121 = enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:);
    v120 = enum case for WeatherFormatScaling.automatic(_:);
    v119 = (v179 + 104);
    v118 = (v179 + 8);
    v117 = v149 + 1;
    v116 = (v181 + 13);
    v115 = (v181 + 1);
    v114 = (v148 + 8);
    v113 = enum case for WeatherFormatPlaceholder.none(_:);
    v112 = (v182 + 104);
    v111 = (v140 + 16);
    v110 = enum case for DetailChartDataElement.ValueLabel.text(_:);
    v109 = v140 + 32;
    v108 = v140 + 8;
    v149 = (v172 + 8);
    v106 = (v175 + 16);
    v179 = v172 + 16;
    v148 = *(v172 + 72);
    v181 = _swiftEmptyArrayStorage;
    v51 = v173;
    v52 = v171;
    do
    {
      v182 = v50 + 1;
      v178(v52, &v158[v148 * v50], v51);
      v53 = *v157;
      v54 = v161;
      v55 = v163;
      (*v157)(v161, v153, v163);
      v56 = v162;
      v53(v162, v152, v55);
      v57 = Calendar.ordinality(of:in:for:)();
      v59 = v58;
      v60 = *v156;
      (*v156)(v56, v55);
      v60(v54, v55);
      v61 = v183;
      WeatherStatisticsModel.dailyPrecipitationStatistics.getter();
      (*v154)(v166, v61, v16);
      sub_1002EE69C(&qword_100CAB9A0);
      dispatch thunk of Sequence.makeIterator()();
      v62 = *(v167 + 36);
      sub_1002EE69C(&qword_100CAB9A8);
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter();
        if (*&v15[v62] == v189)
        {
          sub_1000180EC(v15, &qword_100CAB988);
          (*v151)(v183, v16);
          v67 = 1;
          v68 = v165;
          goto LABEL_10;
        }

        v63 = dispatch thunk of Collection.subscript.read();
        v64 = v186;
        (*v184)(v186);
        v63(&v189, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v65 = *v187;
        (*v187)(v188, v64, v22);
        v66 = DayPrecipitationStatistics.day.getter();
        if ((v59 & 1) == 0 && v66 == v57)
        {
          break;
        }

        (*v185)(v188, v22);
      }

      sub_1000180EC(v15, &qword_100CAB988);
      (*v151)(v183, v16);
      v68 = v165;
      v65(v165, v188, v22);
      v67 = 0;
LABEL_10:
      sub_10001B350(v68, v67, 1, v22);
      if (sub_100024D10(v68, 1, v22) == 1)
      {
        v52 = v171;
        v51 = v173;
        (*v149)(v171, v173);
        sub_1000180EC(v68, &qword_100CAB998);
        v69 = v180;
      }

      else
      {
        (*v187)(v164, v68, v22);
        v70 = v127;
        DayPrecipitationStatistics.averagePrecipitationAmount.getter();
        v71 = v180;
        Measurement<>.converted(to:)();
        v72 = *v150;
        (*v150)(v70, v71);
        v146 = Date.formattedShortMonthAndDay(timeZone:)();
        v145 = v73;
        v74 = v177;
        static Measurement<>.+ infix(_:_:)();
        v147 = v72;
        v72(v74, v71);
        (*v123)(v74, v70, v71);
        v75 = v130;
        v76 = v131;
        (*v122)(v130, v121, v131);
        v77 = type metadata accessor for Locale();
        v78 = v132;
        sub_10001B350(v132, 1, 1, v77);
        static Set<>.full.getter();
        v79 = v133;
        v80 = v134;
        (*v119)(v133, v120, v134);
        v81 = v128;
        static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

        (*v118)(v79, v80);
        sub_1000180EC(v78, &qword_100CAA9F0);
        (*v117)(v75, v76);
        v82 = v135;
        v83 = v136;
        (*v116)(v135, v113, v136);
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        sub_1002ED1D4(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle);
        v84 = v180;
        v85 = v129;
        v144 = Measurement.formatted<A>(_:placeholder:unitManager:)();
        v143 = v86;

        (*v115)(v82, v83);
        (*v114)(v81, v85);
        v52 = v171;
        v51 = v173;
        v178(v126, v171, v173);
        v87 = v84;
        Measurement.value.getter();
        v88 = v137;
        *v137 = 0;
        v88[1] = 0xE000000000000000;
        (*v112)(v88, v110, v138);

        v89 = v168;
        DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
        (*v111)(v169, v89, v170);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069E354();
          v181 = v101;
        }

        v90 = v181[2];
        v91 = v140;
        v69 = v87;
        if (v90 >= v181[3] >> 1)
        {
          sub_10069E354();
          v91 = v140;
          v181 = v102;
        }

        v92 = v181;
        v181[2] = v90 + 1;
        v93 = v92 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v90;
        v94 = v170;
        v95 = v91;
        (*(v91 + 32))(v93, v169, v170);
        v96 = static Date.== infix(_:_:)();
        (*(v95 + 8))(v168, v94);
        v97 = v147;
        v147(v160, v87);
        (*v185)(v164, v22);
        (*v149)(v52, v51);
        if (v96)
        {
          v98 = v107;
          v97(v107, v87);
          (*v106)(v98, v177, v87);
        }
      }

      v99 = v175;
      v100 = v172;
      v50 = v182;
    }

    while (v182 != v159);
  }

  else
  {
    v181 = _swiftEmptyArrayStorage;
    v99 = v175;
    v51 = v173;
    v100 = v172;
    v69 = v180;
  }

  (*(v99 + 8))(v177, v69);
  (*(v104 + 8))(v174, v105);
  (*(v100 + 8))(v142, v51);
  return v181;
}

uint64_t sub_1002EA120(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAB938);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v18 = type metadata accessor for RoundedPrecipitation();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002ED0CC();
  v13 = a1;
  Measurement.init(value:unit:)();
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  static Locale.current.getter();
  Measurement<>.convertAndRoundPrecipitation(unitManager:locale:)();

  (*(v3 + 8))(v5, v2);
  v14 = *(v7 + 8);
  v14(v9, v6);
  RoundedPrecipitation.measurement.getter();
  v15 = Measurement.unit.getter();
  v14(v9, v6);
  sub_1002EBFE0();
  (*(v10 + 8))(v12, v18);
  return v15;
}

void *sub_1002EA3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = type metadata accessor for Date();
  v5 = *(v83 - 8);
  __chkstk_darwin(v83);
  v76 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  __chkstk_darwin(v10);
  v81 = &v67 - v11;
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  v15 = type metadata accessor for Calendar();
  v77 = *(v15 - 8);
  __chkstk_darwin(v15);
  v78 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v17 - 8);
  v19 = &v67 - v18;
  v20 = type metadata accessor for DetailChartDataElement();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v82 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v27 = *(a3 + 16);
  if (!v27)
  {
    return _swiftEmptyArrayStorage;
  }

  v74 = a2;
  v75 = v5;
  v28 = *(v21 + 16);
  v72 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v29 = &v67 - v24;
  v30 = v25;
  v28(v26);
  sub_1002F5488(a3, v19);
  if (sub_100024D10(v19, 1, v30) == 1)
  {
    (*(v21 + 8))(v29, v30);
    sub_1000180EC(v19, &qword_100CAB930);
    return _swiftEmptyArrayStorage;
  }

  v73 = v29;
  v32 = *(v21 + 32);
  v71 = v30;
  v32(v82, v19, v30);
  type metadata accessor for PrecipitationAveragesHeroChartInput();
  v33 = v78;
  static Calendar.currentCalendar(with:)();
  v34 = Date.startOfDay(timeZone:)();
  __chkstk_darwin(v34);
  *(&v67 - 2) = v33;
  *(&v67 - 1) = v14;
  v35 = sub_1008EF6B8(sub_1002ED338, (&v67 - 4), v74);
  if ((v36 & 1) == 0 && ((v37 = v35, v35 >= 1) ? (v38 = v35 < v27) : (v38 = 0), v38))
  {
    v45 = v81;
    DetailChartDataElement.date.getter();
    sub_10069E4F4();
    v31 = v46;
    v48 = *(v46 + 16);
    v47 = *(v46 + 24);
    v49 = v48 + 1;
    v50 = v75;
    v70 = v15;
    if (v48 >= v47 >> 1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v68 = v14;
      *(v31 + 16) = v49;
      v51 = *(v50 + 32);
      v50 += 32;
      v80 = (*(v50 + 48) + 32) & ~*(v50 + 48);
      v81 = v51;
      v79 = *(v50 + 40);
      (v51)(v31 + v80 + v79 * v48, v45, v83);
      sub_1002EC188(v37, 1, -10);
      v37 = *(v52 + 16);
      v69 = v52;
      if (!v37)
      {
        break;
      }

      v45 = (v52 + 32);
      v48 = v74 + v72;
      v14 = *(v74 + 16);
      while (1)
      {
        v53 = *v45++;
        if (v53 >= v14)
        {
          break;
        }

        DetailChartDataElement.date.getter();
        v54 = *(v31 + 16);
        v49 = v54 + 1;
        if (v54 >= *(v31 + 24) >> 1)
        {
          sub_10069E4F4();
          v31 = v55;
        }

        *(v31 + 16) = v49;
        (v81)(v31 + v80 + v54 * v79, v9, v83);
        if (!--v37)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_23:
      sub_10069E4F4();
      v31 = v65;
    }

LABEL_18:

    DetailChartDataElement.date.getter();
    v56 = *(v31 + 16);
    if (v56 >= *(v31 + 24) >> 1)
    {
      sub_10069E4F4();
      v31 = v66;
    }

    v57 = v75;
    v58 = v77;
    v59 = v68;
    v60 = v71;
    v61 = *(v21 + 8);
    v61(v82, v71);
    v61(v73, v60);
    *(v31 + 16) = v56 + 1;
    v62 = v31 + v80 + v56 * v79;
    v63 = v83;
    (v81)(v62, v76, v83);
    (*(v57 + 8))(v59, v63);
    (*(v58 + 8))(v78, v70);
  }

  else
  {
    sub_10022C350(&qword_100CAB978);
    v39 = v75;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100A2D320;
    v40 = v73;
    DetailChartDataElement.date.getter();
    v41 = v82;
    DetailChartDataElement.date.getter();
    v42 = *(v21 + 8);
    v43 = v41;
    v44 = v71;
    v42(v43, v71);
    v42(v40, v44);
    (*(v39 + 8))(v14, v83);
    (*(v77 + 8))(v33, v15);
  }

  return v31;
}

uint64_t sub_1002EAAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v9 = v8;
  v123 = a6;
  v146 = a5;
  v133 = a4;
  v144 = a3;
  v128 = a2;
  v136 = a1;
  v147 = a8;
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  v126 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DetailChartDataElement();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CAB958);
  __chkstk_darwin(v14 - 8);
  v137 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v134 = &v110 - v17;
  v135 = type metadata accessor for ClosestData();
  __chkstk_darwin(v135);
  v131 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v143 = &v110 - v20;
  v142 = type metadata accessor for Date();
  v139 = *(v142 - 8);
  __chkstk_darwin(v142);
  v132 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v141 = &v110 - v23;
  v24 = sub_10022C350(&qword_100CAB960);
  __chkstk_darwin(v24 - 8);
  v26 = &v110 - v25;
  v27 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  __chkstk_darwin(v27);
  v145 = (&v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for DetailHeroChartLollipopModel(0);
  __chkstk_darwin(v125);
  v30 = (&v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_10022C350(&qword_100CAB938);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v119 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v117 = &v110 - v35;
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  __chkstk_darwin(v39);
  v41 = &v110 - v40;
  v42 = *(v9 + 40);
  v138 = v9;
  sub_1000161C0((v9 + 16), v42);
  v43 = sub_1002ED0CC();
  v44 = a7;
  Measurement.init(value:unit:)();
  v45 = v44;
  v46 = v30;
  v116 = v45;
  v114 = v43;
  Measurement.init(value:unit:)();
  v47 = type metadata accessor for PrecipitationAveragesHeroChartInput();
  v48 = v146;
  v115 = v146 + *(v47 + 32);
  sub_10049DFC0();
  v49 = *(v32 + 8);
  v130 = v38;
  v49(v38, v31);
  v129 = v41;
  v124 = v31;
  v50 = v31;
  v51 = v27;
  v52 = v144;
  v127 = v32 + 8;
  v49(v41, v50);
  sub_1002EC484(v148, v46);
  v162 = v148[0];
  sub_1002ED110(&v162);
  v161 = v148[1];
  sub_1000180EC(&v161, &qword_100CA6078);
  v160 = v148[2];
  sub_1002ED110(&v160);
  v118 = v47;
  sub_1002ED164(v48 + *(v47 + 36), v26);
  v140 = v51;
  if (sub_100024D10(v26, 1, v51) == 1)
  {
    sub_1000180EC(v26, &qword_100CAB960);
    v53 = v46;
    return sub_1002ED21C(v53, v147);
  }

  v111 = v49;
  v113 = v46;
  v54 = v145;
  sub_1002ED21C(v26, v145);
  v55 = v140[5];
  sub_1002ED1D4(&qword_100CA7020, &type metadata accessor for Date);
  v56 = v133;
  v57 = v142;
  v58 = dispatch thunk of static Comparable.< infix(_:_:)();
  v59 = v139;
  v61 = v139 + 16;
  v60 = *(v139 + 16);
  v112 = v60;
  if (v58)
  {
    v62 = v132;
    v63 = v132;
    v64 = v56;
  }

  else
  {
    v64 = v54 + v55;
    v62 = v132;
    v63 = v132;
  }

  v60(v63, v64, v57);
  v65 = v138;
  v66 = v134;
  v67 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v68 = v62;
  v69 = v59;
  v110 = v61;
  if (v67)
  {
    (*(v59 + 8))(v68, v57);
    v70 = v52;
    v71 = v141;
    v112(v141, v70, v57);
  }

  else
  {
    v71 = v141;
    (*(v59 + 32))(v141, v68, v57);
  }

  v72 = v143;
  v73 = v137;
  v74 = v135;
  sub_1002EC5F0(v71, v136, v66);
  if (sub_100024D10(v66, 1, v74) == 1)
  {
    v73 = v66;
LABEL_13:
    (*(v69 + 8))(v71, v57);
    sub_1002ED278(v145, type metadata accessor for DetailHeroChartLollipopPosition);
    sub_1000180EC(v73, &qword_100CAB958);
    v53 = v113;
    return sub_1002ED21C(v53, v147);
  }

  sub_1002ED21C(v66, v72);
  sub_1002EC5F0(v71, v128, v73);
  if (sub_100024D10(v73, 1, v74) == 1)
  {
    sub_1002ED278(v72, type metadata accessor for ClosestData);
    goto LABEL_13;
  }

  sub_1002ED21C(v73, v131);
  v76 = v120;
  sub_1002EC8D0(v71, v120);
  DetailChartDataElement.value.getter();
  v77 = *(v121 + 8);
  v78 = v122;
  v77(v76, v122);
  v79 = v71;
  v80 = v123;
  Measurement.init(value:unit:)();
  sub_1002EC8D0(v79, v76);
  DetailChartDataElement.value.getter();
  v77(v76, v78);
  v81 = v80;
  Measurement.init(value:unit:)();
  sub_1000161C0((v65 + 16), *(v65 + 40));
  v82 = v117;
  v83 = v124;
  Measurement<>.converted(to:)();
  v84 = v119;
  Measurement<>.converted(to:)();
  sub_10049DFC0();
  v85 = v111;
  v111(v84, v83);
  v85(v82, v83);
  sub_1000161C0((v65 + 16), *(v65 + 40));
  Measurement<>.converted(to:)();
  Measurement<>.converted(to:)();
  sub_10049DFC0();
  v85(v84, v83);
  v85(v82, v83);
  v138 = v149;
  v158 = v150;
  v159 = v151;
  sub_1000180EC(&v158, &qword_100CA6078);
  v86 = v145;
  v87 = *v145;
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  v89 = v147;
  v90 = active;
  v91 = v147 + *(active + 20);
  v92 = v141;
  v112(v91, v141, v142);
  v93 = sub_1002ECBFC(v92);
  v94 = *(v86 + v140[6]);
  v95 = *(v86 + v140[7]);
  v96 = type metadata accessor for LollipopMarkModel(0);
  *&v91[v96[5]] = v93;
  *&v91[v96[6]] = v94;
  *&v91[v96[7]] = v95;
  v97 = (v89 + *(v90 + 24));
  v98 = v92;
  v146 = Date.formattedShortMonthAndDay(timeZone:)();
  v144 = v99;
  AttributeContainer.init()();
  v100 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
  AttributedString.init(_:attributes:)();
  v101 = v152;
  v102 = v153;

  v85(v130, v83);
  v85(v129, v83);
  sub_1002ED278(v131, type metadata accessor for ClosestData);
  sub_1002ED278(v143, type metadata accessor for ClosestData);
  (*(v139 + 8))(v98, v142);
  sub_1002ED278(v86, type metadata accessor for DetailHeroChartLollipopPosition);
  sub_1002ED278(v113, type metadata accessor for DetailHeroChartLollipopModel);
  v104 = v155;
  v103 = v156;

  v157 = v154;
  sub_1000180EC(&v157, &qword_100CA6078);

  v105 = v144;
  *v97 = v146;
  v97[1] = v105;
  v106 = (v97 + v100[6]);
  *v106 = v101;
  v106[1] = v102;
  v107 = (v97 + v100[7]);
  *v107 = 0;
  v107[1] = 0xE000000000000000;
  v108 = (v97 + v100[8]);
  *v108 = 0;
  v108[1] = 0;
  *(v97 + v100[9]) = v159;
  v109 = (v97 + v100[10]);
  *v109 = v104;
  v109[1] = v103;
  *(v97 + v100[11]) = 0;
  type metadata accessor for LollipopDetailViewModel(0);
  swift_storeEnumTagMultiPayload();
  *v147 = v87;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1002EB968()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray3Color];
  v38 = Color.init(uiColor:)();
  v2 = [v0 systemGray3Color];
  v3 = [v2 accessibilityName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v5;
  v36 = v4;

  sub_10022C350(&qword_100CAB950);
  v6 = (type metadata accessor for ConditionDetailLegend(0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100A2D320;
  v9 = (v37 + v8);
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v39._object = 0x8000000100ABEDB0;
  v12._countAndFlagsBits = 0x206425207473614CLL;
  v12._object = 0xEC00000073796164;
  v39._countAndFlagsBits = 0xD000000000000092;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v39);

  sub_10022C350(&qword_100CA40C8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2C3F0;
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = 30;
  v15 = static String.localizedStringWithFormat(_:_:)();
  v17 = v16;

  v18 = v6[8];
  *(v9 + v18) = static Color.cyan.getter();
  type metadata accessor for ConditionDetailLegendForeground(0);
  swift_storeEnumTagMultiPayload();
  v19 = [v0 cyanColor];
  v20 = [v19 accessibilityName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *v9 = v15;
  v9[1] = v17;
  v9[2] = v15;
  v9[3] = v17;
  v24 = (v9 + v6[9]);
  *v24 = v21;
  v24[1] = v23;
  v25 = (v9 + v7);

  v26 = [v10 mainBundle];
  v40._object = 0x8000000100ABEE90;
  v27._countAndFlagsBits = 0x65676172657641;
  v28._countAndFlagsBits = 0xD000000000000030;
  v28._object = 0x8000000100ABEE50;
  v40._countAndFlagsBits = 0xD000000000000065;
  v27._object = 0xE700000000000000;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v26, v27, v40);

  *(&v25->_countAndFlagsBits + v6[8]) = v38;
  swift_storeEnumTagMultiPayload();
  *v25 = v29;
  v25[1] = v29;
  v30 = (&v25->_countAndFlagsBits + v6[9]);
  *v30 = v36;
  v30[1] = v35;

  v31 = [v10 mainBundle];
  v41._object = 0x8000000100ABEF20;
  v32._object = 0x8000000100ABEF00;
  v41._countAndFlagsBits = 0xD000000000000045;
  v32._countAndFlagsBits = 0xD00000000000001DLL;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v41);

  return v37;
}

uint64_t sub_1002EBD90@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&unk_100CB2CF0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v16 - v10;
  (*(v5 + 104))(v7, enum case for Calendar.Component.day(_:), v4, v9);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for Date();
  v13 = sub_100024D10(v11, 1, v12);
  v14 = *(v12 - 8);
  if (v13 != 1)
  {
    return (*(v14 + 32))(a2, v11, v12);
  }

  (*(v14 + 16))(a2, a1, v12);
  result = sub_100024D10(v11, 1, v12);
  if (result != 1)
  {
    return sub_1000180EC(v11, &unk_100CB2CF0);
  }

  return result;
}

double sub_1002EBFE0()
{
  v0 = objc_opt_self();
  v1 = [v0 millimeters];
  sub_1002ED0CC();
  v2 = static NSObject.== infix(_:_:)();

  result = 10.0;
  if ((v2 & 1) == 0)
  {
    v4 = [v0 inches];
    v5 = static NSObject.== infix(_:_:)();

    result = 1.0;
    if (v5)
    {
      return 0.5;
    }
  }

  return result;
}

uint64_t sub_1002EC09C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1000038D8();
  v5 = type metadata accessor for Date();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  a4();
  LOBYTE(a4) = Calendar.isDate(_:inSameDayAs:)();
  (*(v7 + 8))(v11, v5);
  return a4 & 1;
}

void sub_1002EC188(int64_t a1, int64_t a2, uint64_t a3)
{
  v3 = sub_1002ED36C(a1, a2, a3);
  v4 = *(v3 + 16);
  if (v4 < 2)
  {
    return;
  }

  v5 = v4 >> 1;
  v6 = v4 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v6)
    {
      goto LABEL_9;
    }

    v8 = *(v3 + 16);
    if (i - 4 >= v8)
    {
      break;
    }

    if (v6 - 4 >= v8)
    {
      goto LABEL_12;
    }

    v9 = *(v3 + 8 * i);
    v10 = *(v3 + 8 * v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1008FBA88();
      v3 = v11;
    }

    *(v3 + 8 * i) = v10;
    *(v3 + 8 * v6) = v9;
LABEL_9:
    --v6;
    if (!--v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1002EC244(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1008FBD1C();
      v1 = v9;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_9:
    --v4;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1002EC2FC()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for ScrubberHour(0);
  v4 = sub_100003AE8(v3);
  v17 = v5;
  __chkstk_darwin(v4);
  sub_100003C38();
  sub_10000C930();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v18 = v7;
  v8 = *(v2 + 16);
  if (v8 < 2)
  {
LABEL_2:
    sub_10000536C();
    return;
  }

  v9 = 0;
  v10 = v8 >> 1;
  v11 = v8 - 1;
  while (1)
  {
    if (v9 == v11)
    {
      goto LABEL_11;
    }

    v12 = *(v2 + 16);
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v14 = *(v17 + 72);
    sub_100003D08();
    sub_1002EE91C(v2 + v13 + v14 * v9, v15);
    if (v11 >= v12)
    {
      goto LABEL_14;
    }

    sub_100003D08();
    sub_1002EE91C(v2 + v13 + v14 * v11, v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1008FBD34();
      v2 = v16;
    }

    sub_1002EE978(v0, v2 + v13 + v14 * v9);
    if (v11 >= *(v2 + 16))
    {
      goto LABEL_15;
    }

    sub_1002EE978(v18, v2 + v13 + v14 * v11);
LABEL_11:
    ++v9;
    --v11;
    if (v10 == v9)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1002EC484@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for PrecipitationAveragesHeroChartInput();
  v5 = Date.formattedShortMonthAndDay(timeZone:)();
  v7 = v6;

  AttributeContainer.init()();
  v8 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
  AttributedString.init(_:attributes:)();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *a2 = v5;
  a2[1] = v7;
  *(a2 + v8[6]) = xmmword_100A3A770;
  v11 = (a2 + v8[7]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (a2 + v8[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v8[9]);
  *v13 = v9;
  v13[1] = v10;
  *(a2 + v8[10]) = xmmword_100A3A770;
  *(a2 + v8[11]) = 0;
  type metadata accessor for LollipopDetailViewModel(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DetailHeroChartLollipopModel(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1002EC5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v6 - 8);
  v8 = &v31[-v7];
  v9 = type metadata accessor for DetailChartDataElement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = a1;
  sub_1008DBA9C();
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    v27 = *(v10 + 32);
    v27(v12, v8, v9);
    v27(a3, v12, v9);
    v26 = type metadata accessor for ClosestData();
    goto LABEL_8;
  }

  v13 = sub_1000180EC(v8, &qword_100CAB930);
  __chkstk_darwin(v13);
  *&v31[-16] = a1;
  v14 = sub_1008EF6B8(sub_1002ED304, &v31[-32], a2);
  if ((v15 & 1) != 0 || (v16 = v14, v17 = v14 - 1, v14 < 1))
  {
    v30 = type metadata accessor for ClosestData();
    v28 = a3;
    v29 = 1;
    return sub_10001B350(v28, v29, 1, v30);
  }

  result = sub_10022C350(&qword_100CAB970);
  v19 = *(a2 + 16);
  if (v16 > v19)
  {
    __break(1u);
  }

  else
  {
    v20 = *(result + 48);
    v23 = *(v10 + 16);
    v22 = v10 + 16;
    v21 = v23;
    v24 = a2 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v25 = *(v22 + 56);
    result = (v23)(a3, v24 + v25 * v17, v9);
    if (v16 < v19)
    {
      v21(a3 + v20, v24 + v25 * v16, v9);
      v26 = type metadata accessor for ClosestData();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      v28 = a3;
      v29 = 0;
      v30 = v26;
      return sub_10001B350(v28, v29, 1, v30);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EC8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = type metadata accessor for Date();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailChartDataElement();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for ClosestData();
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EE91C(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v8 + 32))(a2, v16, v7);
  }

  v34 = a2;
  v18 = *(sub_10022C350(&qword_100CAB970) + 48);
  v19 = *(v8 + 32);
  v19(v13, v16, v7);
  v32 = v19;
  v19(v10, &v16[v18], v7);
  DetailChartDataElement.date.getter();
  Date.distance(to:)();
  v21 = v20;
  v22 = *(v4 + 8);
  v23 = v10;
  v24 = v36;
  v22(v6, v36);
  v25 = fabs(v21);
  v33 = v23;
  DetailChartDataElement.date.getter();
  Date.distance(to:)();
  v27 = v26;
  v22(v6, v24);
  v28 = *(v8 + 8);
  if (v25 >= fabs(v27))
  {
    v28(v13, v7);
    v30 = v33;
    v29 = v34;
  }

  else
  {
    v28(v33, v7);
    v29 = v34;
    v30 = v13;
  }

  return v32(v29, v30, v7);
}

double sub_1002ECBFC(uint64_t a1)
{
  v44 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for DetailChartDataElement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for ClosestData();
  __chkstk_darwin(v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EE91C(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v14, v17, v8);
    DetailChartDataElement.value.getter();
    v19 = v18;
    (*(v9 + 8))(v14, v8);
  }

  else
  {
    v20 = *(sub_10022C350(&qword_100CAB970) + 48);
    v21 = v8;
    v43 = v2;
    v22 = *(v9 + 32);
    v23 = v11;
    v24 = v21;
    v22(v14, v17);
    (v22)(v23, &v17[v20], v24);
    DetailChartDataElement.date.getter();
    Date.distance(to:)();
    v26 = v25;
    v27 = *(v3 + 8);
    v28 = v43;
    v27(v7, v43);
    v29 = fabs(v26);
    DetailChartDataElement.date.getter();
    v30 = v45;
    DetailChartDataElement.date.getter();
    Date.distance(to:)();
    v32 = v31;
    v27(v30, v28);
    v27(v7, v28);
    v33 = fabs(v32);
    DetailChartDataElement.value.getter();
    v35 = v34;
    DetailChartDataElement.value.getter();
    v37 = v29 * (v35 - v36) / v33;
    DetailChartDataElement.value.getter();
    v39 = v38;
    v40 = *(v9 + 8);
    v40(v23, v24);
    v40(v14, v24);
    return v39 + v37;
  }

  return v19;
}

uint64_t sub_1002ECF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1000038D8();
  v5 = type metadata accessor for Date();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  DetailChartDataElement.date.getter();
  LOBYTE(a3) = a3(v11, a2);
  (*(v7 + 8))(v11, v5);
  return a3 & 1;
}

uint64_t type metadata accessor for ClosestData()
{
  result = qword_100CABA50;
  if (!qword_100CABA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002ED0CC()
{
  result = qword_100CAB968;
  if (!qword_100CAB968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CAB968);
  }

  return result;
}

uint64_t sub_1002ED164(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAB960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ED1D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002ED21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1002ED278(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1002ED36C(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = sub_1003094F0(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10022C350(&qword_100CAB980);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 8);
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = v8[3];

  if (v7 < 0)
  {
    goto LABEL_48;
  }

  v12 = v8 + 4;
  v13 = v10 >> 1;
  if (!v7)
  {
    goto LABEL_17;
  }

  v13 -= v7;
  do
  {
    v14 = v5 <= v4;
    if (a3 > 0)
    {
      v14 = v5 >= v4;
    }

    if (v14)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v15 = v5 + a3;
    if (__OFADD__(v5, a3))
    {
      v15 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
    }

    *v12++ = v5;
    v5 = v15;
    --v7;
  }

  while (v7);
  v5 = v15;
LABEL_17:
  v16 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v33 = v4;
  while (2)
  {
    v17 = v5 <= v4;
    if (a3 > 0)
    {
      v17 = v5 >= v4;
    }

    if (!v17)
    {
      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = v16;
        if (!v13)
        {
          goto LABEL_26;
        }

        v18 = v16;
      }

      else if (!v13)
      {
LABEL_26:
        v19 = v8[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v20 = v16;
        v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_10022C350(&qword_100CAB980);
        v23 = swift_allocObject();
        v24 = (j__malloc_size(v23) - 32) / 8;
        v23[2] = v22;
        v23[3] = 2 * v24;
        v25 = (v23 + 4);
        v26 = v8[3];
        v27 = v26 >> 1;
        if (v8[2])
        {
          if (v23 != v8 || v25 >= &v8[v27 + 4])
          {
            memmove(v23 + 4, v8 + 4, 8 * v27);
          }

          v8[2] = 0;
        }

        v12 = (v25 + 8 * v27);
        v13 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - (v26 >> 1);

        v8 = v23;
        v16 = v20;
        v4 = v33;
      }

      v29 = __OFSUB__(v13--, 1);
      if (v29)
      {
        __break(1u);
        goto LABEL_46;
      }

      *v12++ = v5;
      v5 = v18;
      continue;
    }

    break;
  }

  v30 = v8[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v13);
    v32 = v31 - v13;
    if (v29)
    {
      goto LABEL_49;
    }

    v8[2] = v32;
  }

  return v8;
}

void sub_1002ED5C8(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  v4 = &_swiftEmptyArrayStorage[4];
  v5 = (a1 + 64);
  while (v21 != v2)
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *v5;
    v22 = *(v5 - 4);
    if (v1)
    {

      sub_100024584();
      v10 = v3;
      goto LABEL_21;
    }

    sub_100017680();
    if (v11)
    {
      goto LABEL_28;
    }

    sub_100069480();
    if (v11 ^ v14 | v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    sub_10022C350(&qword_100CABAA8);
    v10 = swift_allocObject();
    v16 = (j__malloc_size(v10) - 32) / 48;
    v10[2] = v15;
    v10[3] = 2 * v16;
    v17 = v3[3];
    v1 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v17 >> 1);
    v4 = &v10[6 * (v17 >> 1) + 4];
    if (v3[2])
    {
      v20 = 48 * (v17 >> 1);
      if (v10 >= v3 && v10 + 4 < &v3[6 * (v17 >> 1) + 4])
      {

        sub_100024584();
        if (v10 != v3)
        {
LABEL_18:
          memmove(v10 + 4, v3 + 4, v20);
        }

        v3[2] = 0;
        goto LABEL_20;
      }

      sub_100024584();
      goto LABEL_18;
    }

    sub_100024584();
LABEL_20:

LABEL_21:
    v14 = __OFSUB__(v1--, 1);
    if (v14)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    *v4 = v2;
    v4[1] = v22;
    v4[2] = v6;
    v4[3] = v7;
    v4[4] = v8;
    *(v4 + 40) = v9;
    v4 += 6;
    v5 += 40;
    ++v2;
    v3 = v10;
  }

  if (v3[3] < 2uLL)
  {
    return;
  }

  sub_10002FDC0();
  if (!v14)
  {
    v3[2] = v19;
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1002ED7A0()
{
  sub_10000C778();
  v1 = v0;
  v91 = v2;
  v4 = v3;
  v89 = sub_10022C350(&qword_100CAB9C8);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003848();
  v82 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v84 = v10;
  sub_1000038CC();
  v92 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003848();
  v87 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v17 = &v77 - v16;
  v18 = sub_10022C350(&qword_100CAB9D0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  v22 = 0;
  v83 = v6;
  v79 = *(v6 + 80);
  v80 = (v79 + 32) & ~v79;
  v90 = _swiftEmptyArrayStorage + v80;
  v88 = v12 + 16;
  v85 = v4;
  v86 = (v12 + 32);
  v78 = v1;
  v23 = v1 & ~(v1 >> 63);
  v24 = v89;
  while (1)
  {
    if (v23 == v22)
    {
      v36 = v23;
      v37 = v78;
      goto LABEL_12;
    }

    v25 = *(v4 + 16);
    if (v22 == v25)
    {
      v36 = v22;
      goto LABEL_11;
    }

    if (v22 >= v25)
    {
      break;
    }

    sub_1000379C4();
    (*(v12 + 16))(v17, v26 + v27 * v22, v92);
    v28 = *(v91 + 16);
    if (v22 == v28)
    {
      (*(v12 + 8))(v17, v92);
      v36 = v22 + 1;
LABEL_11:
      v37 = v78;
      sub_10001B350(v21, 1, 1, v89);
      sub_1000180EC(v21, &qword_100CAB9D0);
      v23 = v22;
LABEL_12:
      v38 = 0;
      v39 = v22 < v37;
      v40 = _swiftEmptyArrayStorage;
      v41 = &qword_100CAB9C8;
      v81 = v12;
      if (!v39)
      {
        while (1)
        {
          v42 = *(v4 + 16);
          if (v36 == v42)
          {
            break;
          }

          if (v36 >= v42)
          {
            goto LABEL_47;
          }

          sub_1000379C4();
          (*(v12 + 16))(v87, v43 + v44 * v36, v92);
          v45 = *(v91 + 16);
          if (v23 == v45)
          {
            (*(v12 + 8))(v87, v92);
            break;
          }

          if (v23 >= v45)
          {
            goto LABEL_49;
          }

          v46 = v36;
          v47 = type metadata accessor for HourTemperatureStatistics();
          sub_1000037C4();
          v49 = v48;
          v51 = v41;
          v52 = v91 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v50 + 72) * v23;
          v53 = *(v89 + 48);
          v54 = v82;
          (*v86)(v82, v87, v92);
          v55 = v52;
          v41 = v51;
          (*(v49 + 16))(v54 + v53, v55, v47);
          sub_1002AB08C(v54, v84, v51);
          if (v38)
          {
            v56 = v40;
            v57 = v46;
            v12 = v81;
          }

          else
          {
            sub_100017680();
            v58 = v80;
            if (v59)
            {
              goto LABEL_51;
            }

            sub_100069480();
            if (v59 ^ v61 | v66)
            {
              v62 = 1;
            }

            else
            {
              v62 = v60;
            }

            sub_10022C350(&qword_100CAB9D8);
            v63 = *(v83 + 72);
            v56 = swift_allocObject();
            v64 = j__malloc_size(v56);
            if (!v63)
            {
              goto LABEL_52;
            }

            v65 = v64 - v58;
            v66 = v64 - v58 == 0x8000000000000000 && v63 == -1;
            if (v66)
            {
              goto LABEL_53;
            }

            v67 = v58;
            v68 = v65 / v63;
            v56[2] = v62;
            v56[3] = 2 * (v65 / v63);
            v69 = v56 + v67;
            v70 = v40[3];
            v71 = (v70 >> 1) * v63;
            v57 = v46;
            v12 = v81;
            if (v40[2])
            {
              if (v56 < v40 || v69 >= v40 + v80 + v71)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v56 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v40[2] = 0;
            }

            v90 = &v69[v71];
            v38 = (v68 & 0x7FFFFFFFFFFFFFFFLL) - (v70 >> 1);
          }

          v61 = __OFSUB__(v38--, 1);
          v4 = v85;
          if (v61)
          {
            goto LABEL_50;
          }

          v73 = v90;
          sub_1002AB08C(v84, v90, v41);
          v90 = (v73 + *(v83 + 72));
          ++v23;
          v36 = v57 + 1;
          v40 = v56;
        }
      }

      v74 = v40[3];
      if (v74 >= 2)
      {
        v75 = v74 >> 1;
        v61 = __OFSUB__(v75, v38);
        v76 = v75 - v38;
        if (v61)
        {
          goto LABEL_54;
        }

        v40[2] = v76;
      }

      sub_10000536C();
      return;
    }

    if (v22 >= v28)
    {
      goto LABEL_48;
    }

    v29 = type metadata accessor for HourTemperatureStatistics();
    sub_1000037C4();
    v31 = v30;
    v33 = v91 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v32 + 72) * v22;
    v34 = *(v24 + 48);
    (*v86)(v21, v17, v92);
    v35 = v29;
    v4 = v85;
    (*(v31 + 16))(&v21[v34], v33, v35);
    sub_10001B350(v21, 0, 1, v24);
    sub_1000180EC(v21, &qword_100CAB9D0);
    ++v22;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1002EDDD0(double a1, double a2, double a3)
{
  v6 = sub_1002EE720(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10022C350(&qword_100CAB9C0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * ((v9 - 32) / 8);
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = *(v8 + 3);

  if (v7 < 0)
  {
    goto LABEL_52;
  }

  v11 = v8 + 4;
  v12 = v10 >> 1;
  v13 = 0;
  v14 = 0;
  if (!v7)
  {
    v15 = a1;
    goto LABEL_20;
  }

  v12 -= v7;
  v15 = a1;
  do
  {
    v16 = v15;
    v17 = v15 <= a2;
    if (a3 > 0.0)
    {
      v17 = v15 >= a2;
    }

    if (v17)
    {
      if (!(v13 & 1 | (v15 != a2)))
      {
        v13 = 1;
        goto LABEL_17;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v18 = __OFADD__(v14++, 1);
    if (v18)
    {
      goto LABEL_51;
    }

    v15 = a1 + v14 * a3;
LABEL_17:
    *v11++ = v16;
    --v7;
  }

  while (v7);
  while (1)
  {
LABEL_20:
    v19 = v15 <= a2;
    if (a3 > 0.0)
    {
      v19 = v15 >= a2;
    }

    if (!v19)
    {
      v18 = __OFADD__(v14++, 1);
      if (v18)
      {
        goto LABEL_48;
      }

      v20 = a1 + v14 * a3;
      if (v12)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if ((v15 != a2) | v13 & 1)
    {
      break;
    }

    v13 = 1;
    v20 = v15;
    if (v12)
    {
      v20 = v15;
      goto LABEL_41;
    }

LABEL_28:
    sub_100017680();
    if (v21)
    {
      goto LABEL_49;
    }

    sub_100069480();
    if (v21 ^ v18 | v23)
    {
      v24 = 1;
    }

    else
    {
      v24 = v22;
    }

    sub_10022C350(&qword_100CAB9C0);
    v25 = swift_allocObject();
    v26 = (j__malloc_size(v25) - 32) / 8;
    *(v25 + 2) = v24;
    *(v25 + 3) = 2 * v26;
    v27 = (v25 + 4);
    v28 = *(v8 + 3);
    v29 = v28 >> 1;
    if (*(v8 + 2))
    {
      if (v25 != v8 || v27 >= &v8[v29 + 4])
      {
        memmove(v25 + 4, v8 + 4, 8 * v29);
      }

      v8[2] = 0.0;
    }

    v11 = (v27 + 8 * v29);
    v12 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - (v28 >> 1);

    v8 = v25;
LABEL_41:
    v18 = __OFSUB__(v12--, 1);
    if (v18)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    *v11++ = v15;
    v15 = v20;
  }

  v31 = *(v8 + 3);
  if (v31 < 2)
  {
    return;
  }

  v32 = v31 >> 1;
  v18 = __OFSUB__(v32, v12);
  v33 = v32 - v12;
  if (!v18)
  {
    *(v8 + 2) = v33;
    return;
  }

LABEL_53:
  __break(1u);
}

void sub_1002EE078()
{
  sub_10000C778();
  v5 = v4;
  v6 = sub_10022C350(&qword_100CABA90);
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003C38();
  sub_10000C930();
  __chkstk_darwin(v8);
  sub_100022870(v9, v10, v11, v12, v13, v14, v15, v16, v32);
  sub_100030398(v17);
  while (1)
  {
    if (v33 == v1)
    {
      if (_swiftEmptyArrayStorage[3] >= 2uLL)
      {
        sub_10002FDC0();
        if (v30)
        {
          goto LABEL_31;
        }

        _swiftEmptyArrayStorage[2] = v31;
      }

      sub_10000536C();
      return;
    }

    v18 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100003AE8(v18);
    v21 = v5 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v20 + 72) * v1;
    v22 = *(v6 + 48);
    *v2 = v1;
    sub_1002EE91C(v21, v2 + v22);
    sub_10003BD20();
    if (!v0)
    {
      sub_100017680();
      if (v23)
      {
        goto LABEL_28;
      }

      sub_100069480();
      sub_10022C350(&qword_100CABA98);
      v24 = sub_100018360();
      v25 = j__malloc_size(v24);
      if (!&unk_100A3A8D0)
      {
        goto LABEL_29;
      }

      if (v25 - v3 == 0x8000000000000000 && &unk_100A3A8D1 == 0)
      {
        goto LABEL_30;
      }

      sub_10001354C(v25 - v3);
      if (v27)
      {
        sub_1000370BC();
        v29 = !v29 || v3 >= v28;
        if (v29)
        {
          sub_10003A134();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v24 != _swiftEmptyArrayStorage)
        {
          sub_10003A134();
          swift_arrayInitWithTakeBackToFront();
        }

        _swiftEmptyArrayStorage[2] = 0;
      }

      sub_1000418EC();
    }

    v30 = __OFSUB__(v0--, 1);
    if (v30)
    {
      break;
    }

    sub_1000213A0();
    sub_10002C5A4();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1002EE2B8()
{
  sub_10000C778();
  v5 = v4;
  v6 = sub_10022C350(&qword_100CABAB8);
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003C38();
  sub_10000C930();
  __chkstk_darwin(v8);
  sub_100022870(v9, v10, v11, v12, v13, v14, v15, v16, v32);
  sub_100030398(v17);
  while (1)
  {
    if (v33 == v1)
    {
      if (_swiftEmptyArrayStorage[3] >= 2uLL)
      {
        sub_10002FDC0();
        if (v30)
        {
          goto LABEL_31;
        }

        _swiftEmptyArrayStorage[2] = v31;
      }

      sub_10000536C();
      return;
    }

    v18 = type metadata accessor for DetailChartViewModel();
    sub_100003AE8(v18);
    v21 = v5 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v20 + 72) * v1;
    v22 = *(v6 + 48);
    *v2 = v1;
    sub_1002EE91C(v21, v2 + v22);
    sub_10003BD20();
    if (!v0)
    {
      sub_100017680();
      if (v23)
      {
        goto LABEL_28;
      }

      sub_100069480();
      sub_10022C350(&qword_100CABAC0);
      v24 = sub_100018360();
      v25 = j__malloc_size(v24);
      if (!&unk_100A58600)
      {
        goto LABEL_29;
      }

      if (v25 - v3 == 0x8000000000000000 && &unk_100A58601 == 0)
      {
        goto LABEL_30;
      }

      sub_10001354C(v25 - v3);
      if (v27)
      {
        sub_1000370BC();
        v29 = !v29 || v3 >= v28;
        if (v29)
        {
          sub_10003A134();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v24 != _swiftEmptyArrayStorage)
        {
          sub_10003A134();
          swift_arrayInitWithTakeBackToFront();
        }

        _swiftEmptyArrayStorage[2] = 0;
      }

      sub_1000418EC();
    }

    v30 = __OFSUB__(v0--, 1);
    if (v30)
    {
      break;
    }

    sub_1000213A0();
    sub_10002C5A4();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1002EE4F8(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v4 = &_swiftEmptyArrayStorage[4];
  v5 = (a1 + 56);
  v23 = *(a1 + 16);
  while (v23 != v2)
  {
    v7 = *(v5 - 3);
    v6 = *(v5 - 2);
    v9 = *(v5 - 1);
    v8 = *v5;
    if (v1)
    {

      v10 = v3;
    }

    else
    {
      sub_100017680();
      if (v11)
      {
        goto LABEL_23;
      }

      sub_100069480();
      sub_10022C350(&qword_100CABAB0);
      v10 = swift_allocObject();
      j__malloc_size(v10);
      v12 = sub_100051D7C();
      v4 = &v12[v13 * v14];
      v1 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - (v16 >> 1);
      if (v17)
      {
        if (v10 != v3 || v12 >= v3 + v13 * v14 + 32)
        {
          memmove(v12, v3 + 4, 40 * v13);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v19 = __OFSUB__(v1--, 1);
    if (v19)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    *v4 = v2;
    *(v4 + 1) = v7;
    *(v4 + 2) = v6;
    *(v4 + 3) = v9;
    *(v4 + 4) = v8;
    v4 += 40;
    v5 += 4;
    ++v2;
    v3 = v10;
  }

  v20 = v3[3];
  if (v20 < 2)
  {
    return;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v1);
  v22 = v21 - v1;
  if (!v19)
  {
    v3[2] = v22;
    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1002EE69C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CAB990);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002EE720(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  while (1)
  {
    v7 = v6 <= a2;
    if (a3 > 0.0)
    {
      v7 = v6 >= a2;
    }

    if (v7)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
      goto LABEL_9;
    }

    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      break;
    }

    v6 = a1 + v5 * a3;
LABEL_9:
    v8 = __OFADD__(result++, 1);
    if (v8)
    {
      __break(1u);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EE78C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1002EE7CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1002EE82C()
{
  sub_1002EE8A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailChartDataElement();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1002EE8A0()
{
  if (!qword_100CABA60)
  {
    type metadata accessor for DetailChartDataElement();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CABA60);
    }
  }
}

uint64_t sub_1002EE904(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1002EE91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1002EE978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubberHour(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EE9DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DebugLocationIntelligenceView();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10022C350(&qword_100CABB88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v20 = v2;
  sub_10022C350(&qword_100CABB90);
  sub_100006F64(&qword_100CABB98, &qword_100CABB90);
  List<>.init(content:)();
  sub_100006F64(&qword_100CABBA0, &qword_100CABB88);
  View.navigationTitle(_:)();
  (*(v7 + 8))(v9, v6);
  sub_1002F0E10(v2, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v11 = swift_allocObject();
  sub_1002F0E74(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (a1 + *(sub_10022C350(&qword_100CABBA8) + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v12 = &unk_100A3A9C8;
  v12[1] = v11;
  v13 = [objc_opt_self() defaultCenter];
  v14 = sub_10022C350(&qword_100CABBB0);
  NSNotificationCenter.publisher(for:object:)();

  sub_1002F0E10(v2, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  result = sub_1002F0E74(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v10);
  v17 = (a1 + *(v14 + 56));
  *v17 = sub_1002F0F9C;
  v17[1] = v15;
  return result;
}

uint64_t sub_1002EED38@<X0>(void (*a1)(void, void, void)@<X0>, char *a2@<X8>)
{
  v54 = a1;
  v56 = a2;
  v3 = sub_10022C350(&qword_100CABBB8);
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v55 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = v52 - v6;
  v7 = type metadata accessor for PredictedLocationIntentDonationsDebugView();
  __chkstk_darwin(v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10022C350(&qword_100CABBC0);
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = v52 - v12;
  v13 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v53 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PredictedLocationNotificationsDebugView();
  __chkstk_darwin(v17);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CABBC8);
  v21 = *(v20 - 8);
  v59 = v20;
  v60 = v21;
  __chkstk_darwin(v20);
  v57 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v52 - v24;
  sub_100035B30(a1, &v19[v17[10]]);
  static Settings.LocationIntelligence.Debug.Notifications.enableLocIntelOverrides.getter();
  UISettingProperty.init(_:)();
  static Settings.LocationIntelligence.Debug.Notifications.refreshInterval.getter();
  UISettingProperty.init(_:)();
  static Settings.LocationIntelligence.Debug.Notifications.minProbabilityThreshold.getter();
  UISettingProperty.init(_:)();
  static Settings.LocationIntelligence.Debug.Notifications.debugSendPredictedLocationNotificationAfterTogglingFeature.getter();
  UISettingProperty.init(_:)();
  v26 = v17[8];
  v27 = v14 + 104;
  v28 = *(v14 + 104);
  v52[1] = v27;
  v28(v16, enum case for PredictedLocationsScheduleStore.Feature.notifications(_:), v13);
  type metadata accessor for PredictedLocationsScheduleStore();
  swift_allocObject();
  *&v19[v26] = PredictedLocationsScheduleStore.init(feature:)();
  v29 = &v19[v17[9]];
  v72 = 1;
  State.init(wrappedValue:)();
  v30 = v69;
  *v29 = v68;
  *(v29 + 1) = v30;
  sub_1002F11E0(&qword_100CABBD0, type metadata accessor for PredictedLocationNotificationsDebugView);
  v52[0] = v25;
  NavigationLink.init(destination:label:)();
  v31 = v54;
  sub_100035B30(v54, &v9[v7[9]]);
  static Settings.LocationIntelligence.Debug.IntentDonations.enableLocIntelOverrides.getter();
  UISettingProperty.init(_:)();
  static Settings.LocationIntelligence.Debug.IntentDonations.refreshInterval.getter();
  UISettingProperty.init(_:)();
  static Settings.LocationIntelligence.Debug.IntentDonations.minProbabilityThreshold.getter();
  UISettingProperty.init(_:)();
  v32 = v7[7];
  v28(v16, enum case for PredictedLocationsScheduleStore.Feature.intentDonations(_:), v53);
  swift_allocObject();
  *&v9[v32] = PredictedLocationsScheduleStore.init(feature:)();
  v33 = &v9[v7[8]];
  v72 = 1;
  State.init(wrappedValue:)();
  v34 = v69;
  *v33 = v68;
  *(v33 + 1) = v34;
  sub_1002F11E0(&qword_100CABBD8, type metadata accessor for PredictedLocationIntentDonationsDebugView);
  v35 = v58;
  NavigationLink.init(destination:label:)();
  v68 = 0xD000000000000014;
  v69 = 0x8000000100ABF0E0;
  v70 = 0;
  v71 = _swiftEmptyArrayStorage;
  v67 = v31;
  sub_10022C350(&qword_100CABBE0);
  sub_100006F64(&qword_100CABBE8, &qword_100CABBE0);
  v36 = v63;
  Section<>.init(header:content:)();
  v37 = v59;
  v38 = *(v60 + 16);
  v39 = v57;
  v38(v57, v25, v59);
  v54 = *(v64 + 16);
  v40 = v61;
  v54(v61, v35, v62);
  v41 = *(v65 + 16);
  v42 = v55;
  v41(v55, v36, v66);
  v43 = v56;
  v38(v56, v39, v37);
  v44 = sub_10022C350(&qword_100CABBF0);
  v45 = v62;
  v54(&v43[*(v44 + 48)], v40, v62);
  v46 = v66;
  v41(&v43[*(v44 + 64)], v42, v66);
  v47 = *(v65 + 8);
  v47(v63, v46);
  v48 = *(v64 + 8);
  v48(v58, v45);
  v49 = v59;
  v50 = *(v60 + 8);
  v50(v52[0], v59);
  v47(v42, v46);
  v48(v61, v45);
  return v50(v57, v49);
}

double sub_1002EF568@<D0>(uint64_t a1@<X8>)
{
  result = 1.36455703e161;
  *a1 = xmmword_100A3A910;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

void sub_1002EF588(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x8000000100ABF140;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_1002EF5B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = sub_10022C350(&qword_100CABBF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  v35 = a1;
  LabeledContent<>.init(content:label:)();
  v34 = a1;
  v29 = v17;
  LabeledContent<>.init(content:label:)();
  v33 = a1;
  LabeledContent<>.init(content:label:)();
  v21 = *(v4 + 16);
  v22 = v11;
  v30 = v11;
  v21(v11, v20, v3);
  v23 = v8;
  v21(v8, v17, v3);
  v24 = v31;
  v21(v31, v14, v3);
  v25 = v32;
  v21(v32, v22, v3);
  v26 = sub_10022C350(&qword_100CABC00);
  v21(&v25[*(v26 + 48)], v23, v3);
  v21(&v25[*(v26 + 64)], v24, v3);
  v27 = *(v4 + 8);
  v27(v14, v3);
  v27(v29, v3);
  v27(v20, v3);
  v27(v24, v3);
  v27(v23, v3);
  return (v27)(v30, v3);
}

uint64_t sub_1002EF974()
{
  v0 = sub_10022C350(&qword_100CABAC8);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for PredictedLocationsFeatureState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugLocationIntelligenceView();
  sub_10022C350(&qword_100CABAD0);
  State.wrappedValue.getter();
  if (sub_100024D10(v2, 1, v3) == 1)
  {
    sub_1002F0C38(v2);
    return 0x676E6964616F4CLL;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = PredictedLocationsFeatureState.description.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

void sub_1002EFB1C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000014;
  *(a1 + 8) = 0x8000000100ABF120;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_1002EFB4C@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1002EFBAC()
{
  v0 = sub_10022C350(&qword_100CABAC8);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for PredictedLocationsFeatureState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugLocationIntelligenceView();
  sub_10022C350(&qword_100CABAD0);
  State.wrappedValue.getter();
  if (sub_100024D10(v2, 1, v3) == 1)
  {
    sub_1002F0C38(v2);
    return 0x676E6964616F4CLL;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = PredictedLocationsFeatureState.description.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

void sub_1002EFD54(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x8000000100ABF100;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_1002EFD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000161C0((a1 + 40), *(a1 + 64));
  dispatch thunk of PredictedLocationsFeatureStateManagerType.isOSEligible.getter();
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

double sub_1002EFE34@<D0>(uint64_t a1@<X8>)
{
  result = 5.6001815e199;
  *a1 = xmmword_100A3A920;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1002EFE54()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002EFF00;

  return sub_1002F0030();
}

uint64_t sub_1002EFF00()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F129C, v4, v3);
}

uint64_t sub_1002F0030()
{
  v1[2] = v0;
  sub_10022C350(&qword_100CABAC8);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_1002F010C, v3, v2);
}

uint64_t sub_1002F010C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for PredictedLocationsFeatureState();
  *(v0 + 64) = v3;
  sub_100003934();
  sub_10001B350(v4, v5, v6, v3);
  v7 = type metadata accessor for DebugLocationIntelligenceView();
  *(v0 + 96) = *(v7 + 24);
  v8 = sub_10001920C();
  sub_1002F0BC8(v8, v9);
  *(v0 + 72) = sub_10022C350(&qword_100CABAD0);
  State.wrappedValue.setter();
  sub_1002F0C38(v1);
  sub_100003934();
  sub_10001B350(v10, v11, v12, v3);
  *(v0 + 100) = *(v7 + 28);
  v13 = sub_10001920C();
  sub_1002F0BC8(v13, v14);
  State.wrappedValue.setter();
  sub_1002F0C38(v1);
  sub_1000161C0((v2 + 40), *(v2 + 64));
  swift_task_alloc();
  sub_10000C7D8();
  *(v0 + 80) = v15;
  *v15 = v16;
  v17 = sub_10000808C(v15);

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v17);
}

uint64_t sub_1002F0274()
{
  sub_100003B08();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_1002F0388, v5, v4);
}

uint64_t sub_1002F0388()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_10001B350(v1, 0, 1, v0[8]);
  sub_1002F0BC8(v1, v2);
  State.wrappedValue.setter();
  sub_1002F0C38(v1);
  sub_1000161C0((v3 + 40), *(v3 + 64));
  swift_task_alloc();
  sub_10000C7D8();
  v0[11] = v4;
  *v4 = v5;
  v6 = sub_10000808C(v4);

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.intentDonationFeatureState()(v6);
}

uint64_t sub_1002F047C()
{
  sub_100003B08();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_1002F0590, v5, v4);
}

uint64_t sub_1002F0590()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[3];

  sub_10001B350(v2, 0, 1, v1);
  sub_1002F0BC8(v2, v3);
  State.wrappedValue.setter();
  sub_1002F0C38(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002F0654(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DebugLocationIntelligenceView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_10001B350(v8, 1, 1, v9);
  sub_1002F0E10(a2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1002F0E74(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_1006C0138();
}

uint64_t sub_1002F07E8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002F0894;

  return sub_1002F0030();
}

uint64_t sub_1002F0894()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F09C4, v4, v3);
}

uint64_t sub_1002F09C4()
{
  sub_100003B08();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F0A20@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CABAC8);
  v7 = __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_100013188(a1, a3);
  sub_100013188(a2, a3 + 40);
  type metadata accessor for DebugLocationIntelligenceView();
  v12 = type metadata accessor for PredictedLocationsFeatureState();
  sub_100003934();
  sub_10001B350(v13, v14, v15, v12);
  sub_1002F0BC8(v11, v9);
  State.init(wrappedValue:)();
  sub_1002F0C38(v11);
  sub_100003934();
  sub_10001B350(v16, v17, v18, v12);
  sub_1002F0BC8(v11, v9);
  State.init(wrappedValue:)();
  return sub_1002F0C38(v11);
}

uint64_t type metadata accessor for DebugLocationIntelligenceView()
{
  result = qword_100CABB30;
  if (!qword_100CABB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F0BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CABAC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F0C38(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CABAC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002F0CC8()
{
  sub_100007A00(319, &qword_100CABB40);
  if (v0 <= 0x3F)
  {
    sub_100007A00(319, &qword_100CABB48);
    if (v1 <= 0x3F)
    {
      sub_1002F0D84();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002F0D84()
{
  if (!qword_100CABB50)
  {
    sub_10022E824(&qword_100CABAC8);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CABB50);
    }
  }
}

uint64_t sub_1002F0E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationIntelligenceView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F0E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationIntelligenceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F0ED8()
{
  sub_100003B08();
  type metadata accessor for DebugLocationIntelligenceView();
  swift_task_alloc();
  sub_10000C7D8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1002F1298;

  return sub_1002EFE54();
}

uint64_t sub_1002F0F9C(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugLocationIntelligenceView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002F0654(a1, v4);
}

uint64_t sub_1002F100C()
{
  type metadata accessor for DebugLocationIntelligenceView();
  swift_task_alloc();
  sub_10000C7D8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1002F10F8;

  return sub_1002F07E8();
}

uint64_t sub_1002F10F8()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1002F11E0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1002F12A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002F12B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_1002F12F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1002F1364@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.leading.getter();
  sub_1002F13E0(v5);
  *&v4[7] = v5[0];
  *&v4[23] = v5[1];
  *&v4[39] = v5[2];
  *&v4[55] = v5[3];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return memcpy((a1 + 17), v4, 0x47uLL);
}

uint64_t sub_1002F13E0@<X0>(uint64_t a1@<X8>)
{
  sub_10002D5A4();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v31 = v8;
  v32 = v7;
  v30 = v9;
  v33 = v10;

  sub_10010CD64(v2, v4, v6 & 1);

  v11 = sub_1008E5D24();
  sub_1002F1644(v11);

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.footnote.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10010CD64(v12, v14, v16 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10010CD64(v17, v19, v21 & 1);

  *a1 = v32;
  *(a1 + 8) = v31;
  *(a1 + 16) = v30 & 1;
  *(a1 + 24) = v33;
  *(a1 + 32) = v22;
  *(a1 + 40) = v24;
  *(a1 + 48) = v26 & 1;
  *(a1 + 56) = v28;
  sub_10010CD54(v32, v31, v30 & 1);

  sub_10010CD54(v22, v24, v26 & 1);

  sub_10010CD64(v22, v24, v26 & 1);

  sub_10010CD64(v32, v31, v30 & 1);
}

uint64_t sub_1002F1644(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100ABF160;
  v3._countAndFlagsBits = 6710863;
  v3._object = 0xE300000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000043;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7)._countAndFlagsBits;

  if (*(a1 + 16))
  {

    sub_10022C350(&qword_100CCC930);
    sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
    return BidirectionalCollection<>.joined(separator:)();
  }

  return countAndFlagsBits;
}

uint64_t type metadata accessor for TemperatureAveragesDetailInput()
{
  result = qword_100CABC80;
  if (!qword_100CABC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002F1818()
{
  type metadata accessor for TemperatureAveragesHeroChartInput();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MonthlyAveragesChartInput();
    if (v1 <= 0x3F)
    {
      sub_1002F1934();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NewsDataModel();
        if (v3 <= 0x3F)
        {
          sub_1002F1984();
          if (v4 <= 0x3F)
          {
            type metadata accessor for TimeZone();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Date();
              if (v6 <= 0x3F)
              {
                type metadata accessor for Calendar();
                if (v7 <= 0x3F)
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

void sub_1002F1934()
{
  if (!qword_100CABC90)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CABC90);
    }
  }
}

void sub_1002F1984()
{
  if (!qword_100CABC98)
  {
    sub_10022E824(&unk_100CABCA0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CABC98);
    }
  }
}

uint64_t sub_1002F19E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CABCA0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = sub_10022C350(&qword_100CABC20);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_10022C350(&qword_100CABCF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  if ((sub_100383BA0(a1, a2) & 1) == 0)
  {
    goto LABEL_23;
  }

  v18 = type metadata accessor for TemperatureAveragesDetailInput();
  sub_10001136C(v18[5]);
  if ((sub_1008B4E08() & 1) == 0)
  {
    goto LABEL_23;
  }

  v38 = v6;
  v19 = v18[6];
  v20 = *(a2 + v19);
  if (*(a1 + v19))
  {
    if (!v20)
    {
      goto LABEL_23;
    }

    sub_1009EE7CC();
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v20)
  {
LABEL_23:
    v35 = 0;
    return v35 & 1;
  }

  v23 = sub_10001136C(v18[7]);
  if ((sub_1009D82EC(v23, v24) & 1) == 0)
  {
    goto LABEL_23;
  }

  v25 = v18[8];
  v26 = *(v14 + 48);
  sub_100035AD0(a1 + v25, v17, &qword_100CABC20);
  sub_100035AD0(a2 + v25, &v17[v26], &qword_100CABC20);
  sub_1000038B4(v17, 1, v4);
  if (v27)
  {
    sub_1000038B4(&v17[v26], 1, v4);
    if (v27)
    {
      sub_1000180EC(v17, &qword_100CABC20);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_100035AD0(v17, v13, &qword_100CABC20);
  sub_1000038B4(&v17[v26], 1, v4);
  if (v27)
  {
    (*(v38 + 8))(v13, v4);
LABEL_17:
    sub_1000180EC(v17, &qword_100CABCF0);
    goto LABEL_23;
  }

  v28 = v38;
  (*(v38 + 32))(v9, &v17[v26], v4);
  sub_1002F3344();
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v28 + 8);
  v30(v9, v4);
  v30(v13, v4);
  sub_1000180EC(v17, &qword_100CABC20);
  if ((v29 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  sub_10001136C(v18[9]);
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10001136C(v18[10]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  v31 = (a1 + v18[11]);
  v32 = v31[2];
  v39[1] = v31[1];
  v39[2] = v32;
  v39[0] = *v31;
  v33 = (a2 + v18[11]);
  v34 = v33[2];
  v40[1] = v33[1];
  v40[2] = v34;
  v40[0] = *v33;
  if ((sub_1000B8A2C(v39, v40) & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10001136C(v18[12]);
  v35 = static Calendar.== infix(_:_:)();
  return v35 & 1;
}

uint64_t sub_1002F1DA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v200 = a4;
  v202 = a2;
  v218 = a5;
  type metadata accessor for Location();
  sub_1000037C4();
  v216 = v7;
  v217 = v8;
  __chkstk_darwin(v7);
  v214 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v207 = &v187 - v11;
  __chkstk_darwin(v12);
  v201 = (&v187 - v13);
  __chkstk_darwin(v14);
  sub_100003918(&v187 - v15);
  v191 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v190 = v16;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v189 = v18;
  v19 = sub_10022C350(&qword_100CA3898);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  v192 = &v187 - v21;
  v22 = sub_10022C350(&qword_100CABD00);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  sub_100003918(&v187 - v24);
  v194 = type metadata accessor for HistoricalFacts();
  sub_1000037C4();
  v188 = v25;
  __chkstk_darwin(v26);
  sub_1000038E4();
  sub_100003918(v27);
  v28 = type metadata accessor for AppConfigurationState();
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000038E4();
  sub_100003918(v30);
  v31 = type metadata accessor for TimeState();
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_1000038E4();
  v203 = v33;
  v198 = type metadata accessor for Locale();
  sub_1000037C4();
  v196 = v34;
  __chkstk_darwin(v35);
  sub_1000038E4();
  sub_100003918(v36);
  v197 = type metadata accessor for MonthlyAveragesChartInput();
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_1000038E4();
  v205 = v38;
  v39 = sub_10022C350(&qword_100CABD08);
  sub_100003810(v39);
  sub_100003828();
  __chkstk_darwin(v40);
  v42 = &v187 - v41;
  v43 = type metadata accessor for TemperatureAveragesHeroChartInput();
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_1000038E4();
  v204 = v45;
  v46 = sub_10022C350(&qword_100CABD10);
  sub_100003810(v46);
  sub_100003828();
  __chkstk_darwin(v47);
  v49 = &v187 - v48;
  v50 = sub_10022C350(&qword_100CABC20);
  sub_100003810(v50);
  sub_100003828();
  __chkstk_darwin(v51);
  v53 = &v187 - v52;
  v213 = sub_10022C350(&unk_100CABCA0);
  sub_1000037C4();
  v208 = v54;
  sub_100003828();
  __chkstk_darwin(v55);
  v211 = &v187 - v56;
  v57 = type metadata accessor for NewsDataModel();
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_1000038E4();
  v215 = v59;
  v210 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_1000038E4();
  v212 = v61;
  v62 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v62);
  sub_100003828();
  __chkstk_darwin(v63);
  v65 = &v187 - v64;
  v66 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v67);
  v69 = &v187 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v72 = &v187 - v71;
  v206 = a1;
  v73 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v219 = a3;
  v74 = Location.id.getter();
  sub_1000864C0(v74, v75, v73);

  sub_1000038B4(v65, 1, v66);
  if (v114)
  {
    sub_1000180EC(v65, &qword_100CA37B0);
    if (qword_100CA2720 != -1)
    {
      sub_100005680();
    }

    v76 = type metadata accessor for Logger();
    sub_10000703C(v76, qword_100D90BB8);
    sub_100018384();
    v77 = v214;
    v78(v214, v219, v53);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (sub_1000176AC(v80))
    {
      sub_100011450();
      v81 = sub_10000C940();
      sub_10002C5BC(v81);
      sub_100019354(7.2225e-34);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v49 + 1))(v77, v53);
      sub_10000C95C();
      sub_100031C20();
      *(v43 + 14) = v82;
      sub_10001768C(&_mh_execute_header, v83, v84, "Failed to create averages temperature detail input due to missing weather data for location; location=%{private,mask.hash}s");
      sub_10001356C();
      sub_100007E54();
    }

    else
    {

      (*(v49 + 1))(v77, v53);
    }

    goto LABEL_38;
  }

  sub_100106F88(v65, v72);
  sub_1001AF604(v72, v69);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1000080A4();
    sub_100105E88(v69, v102);
    if (qword_100CA2720 != -1)
    {
      sub_100005680();
    }

    v103 = type metadata accessor for Logger();
    sub_10000703C(v103, qword_100D90BB8);
    sub_100018384();
    v104 = v207;
    v105(v207, v219, v53);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (sub_1000176AC(v107))
    {
      sub_100011450();
      v108 = sub_10000C940();
      sub_10002C5BC(v108);
      sub_100019354(7.2225e-34);
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v49 + 1))(v104, v53);
      sub_10000C95C();
      sub_100031C20();
      *(v43 + 14) = v109;
      sub_10001768C(&_mh_execute_header, v110, v111, "Failed to create averages temperature detail input due to missing weather data; location=%{private,mask.hash}s");
      sub_10001356C();
      sub_100007E54();
    }

    else
    {

      (*(v49 + 1))(v104, v53);
    }

    goto LABEL_37;
  }

  v86 = sub_10022C350(&qword_100CA75D8);
  v87 = *(v86 + 48);
  v88 = *(v86 + 64);
  v89 = v212;
  sub_100106F88(v69, v212);
  sub_100106F88(&v69[v88], v215);
  sub_100105E88(&v69[v87], type metadata accessor for PreprocessedWeatherData);
  WeatherDataModel.historicalComparisons.getter();
  v90 = v209;
  sub_1002F3038(v49, v53);
  sub_1000180EC(v49, &qword_100CABD10);
  v91 = v213;
  sub_1000038B4(v53, 1, v213);
  if (!v114)
  {
    v112 = v211;
    (*(v208 + 32))(v211, v53, v91);
    sub_1000161C0(v90 + 5, v90[8]);
    v113 = v206;
    sub_100383E88(v206, v89, v202, v219, v112, v200, v42);
    sub_1000038B4(v42, 1, v43);
    if (!v114)
    {
      v217 = v72;
      sub_100106F88(v42, v204);
      v127 = v113 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      v128 = type metadata accessor for EnvironmentState();
      v129 = *(v128 + 32);
      v130 = v196;
      v201 = *(v196 + 16);
      v131 = v195;
      v132 = v198;
      v201(v195, &v127[v129], v198);
      v133 = v205;
      Locale.calendar.getter();
      (*(v130 + 8))(v131, v132);
      sub_100074790();
      v216 = v134;
      v135 = v203;
      sub_1001AF604(v134 + v113, v203);
      v136 = v197;
      v137 = *(v197 + 20);
      type metadata accessor for Date();
      sub_1000037E8();
      v139 = v135;
      v141 = v140;
      v214 = *(v138 + 32);
      v207 = (v138 + 32);
      (v214)(v133 + v137, v139, v140);
      v142 = v199;
      sub_1001AF604(v113 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v199);
      AppConfiguration.temperatureScale.getter();
      type metadata accessor for AppConfiguration();
      sub_1000037E8();
      (*(v143 + 8))(v142);
      WeatherStatisticsModel.monthlyTemperatureStatistics.getter();
      WeatherStatisticsModel.monthlyPrecipitationStatistics.getter();
      v144 = *(v136 + 36);
      v145 = v127;
      v201(v133 + v144, &v127[*(v128 + 32)], v132);
      type metadata accessor for SettingReader();
      static SettingReader.shared.getter();
      if (qword_100CA24D8 != -1)
      {
        swift_once();
      }

      v146 = SettingReader.isEnabled(_:with:)();

      v147 = v210;
      if (v146)
      {
        v148 = v192;
        sub_1001A0D3C();
        sub_1000038B4(v148, 1, v147);
        if (v114)
        {
          sub_1000180EC(v148, &qword_100CA3898);
          v160 = v193;
          sub_10001B350(v193, 1, 1, v194);
        }

        else
        {
          v154 = *(v147 + 24);
          v155 = v190;
          v156 = v189;
          v157 = v191;
          (*(v190 + 16))(v189, v148 + v154, v191);
          sub_10001E79C();
          sub_100105E88(v148, v158);
          v159 = v193;
          WeatherDataModel.historicalFacts.getter();
          (*(v155 + 8))(v156, v157);
          v160 = v159;
          v161 = v194;
          sub_1000038B4(v159, 1, v194);
          if (!v162)
          {
            v185 = v188;
            v186 = v187;
            (*(v188 + 32))(v187, v160, v161);
            sub_1000161C0(v209, v209[3]);
            v210 = sub_100627AA8(v186);
            (*(v185 + 8))(v186, v161);
LABEL_44:
            v163 = v218;
            sub_1001AF604(v204, v218);
            v164 = type metadata accessor for TemperatureAveragesDetailInput();
            sub_1001AF604(v205, v163 + v164[5]);
            sub_1001AF604(v215, v163 + v164[7]);
            v165 = v164[8];
            v166 = v208;
            v167 = v213;
            (*(v208 + 16))(v163 + v165, v211, v213);
            sub_10001B350(v163 + v165, 0, 1, v167);
            Location.timeZone.getter();
            sub_100074790();
            v168 = v203;
            sub_1001AF604(v216 + v206, v203);
            (v214)(v163 + v164[10], v168, v141);
            v169 = &v145[*(v128 + 72)];
            v171 = v169[1];
            v216 = *v169;
            v170 = v216;
            v172 = v169[2];
            v173 = v169[3];
            v174 = v169[4];
            v219 = v169[5];
            v175 = v219;
            v176 = v170;
            v177 = v171;
            v178 = v172;
            v179 = v173;
            v180 = v174;
            static Calendar.current.getter();
            sub_100105E88(v205, type metadata accessor for MonthlyAveragesChartInput);
            sub_100105E88(v204, type metadata accessor for TemperatureAveragesHeroChartInput);
            (*(v166 + 8))(v211, v213);
            sub_100003D70();
            sub_10001E79C();
            sub_100105E88(v212, v181);
            sub_1000080A4();
            sub_100105E88(v217, v182);
            *(v163 + v164[6]) = v210;
            v183 = (v163 + v164[11]);
            *v183 = v216;
            v183[1] = v171;
            v183[2] = v172;
            v183[3] = v173;
            v184 = v219;
            v183[4] = v174;
            v183[5] = v184;
            v151 = v163;
            v152 = 0;
            v150 = v164;
            return sub_10001B350(v151, v152, 1, v150);
          }
        }

        sub_1000180EC(v160, &qword_100CABD00);
      }

      v210 = 0;
      goto LABEL_44;
    }

    sub_1000180EC(v42, &qword_100CABD08);
    if (qword_100CA2720 != -1)
    {
      sub_100005680();
    }

    v115 = type metadata accessor for Logger();
    sub_10000703C(v115, qword_100D90BB8);
    sub_100051D94();
    v116 = sub_10000E8C4();
    v117(v116);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (sub_1000176AC(v119))
    {
      sub_100011450();
      v120 = sub_10000C940();
      sub_10002C5BC(v120);
      sub_100019354(7.2225e-34);
      dispatch thunk of CustomStringConvertible.description.getter();
      v121 = sub_1000245A0();
      v122(v121);
      sub_10000C95C();
      sub_100031C20();
      *(v43 + 14) = v49;
      sub_10001768C(&_mh_execute_header, v123, v124, "Failed to create hero chart input; location=%{private,mask.hash}s");
      sub_10001356C();
      sub_100007E54();

      (*(v208 + 8))(v211, v213);
      goto LABEL_25;
    }

    (*(v53 + 1))(v49, v42);
    (*(v208 + 8))(v211, v91);
LABEL_35:
    sub_100003D70();
    sub_10001E79C();
    v126 = v89;
    goto LABEL_36;
  }

  sub_1000180EC(v53, &qword_100CABC20);
  if (qword_100CA2720 != -1)
  {
    sub_100005680();
  }

  v92 = type metadata accessor for Logger();
  sub_10000703C(v92, qword_100D90BB8);
  sub_100051D94();
  v93 = sub_10000E8C4();
  v94(v93);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();
  if (!sub_1000176AC(v96))
  {

    (*(v53 + 1))(v49, v42);
    goto LABEL_35;
  }

  sub_100011450();
  v97 = sub_10000C940();
  sub_10002C5BC(v97);
  sub_100019354(7.2225e-34);
  dispatch thunk of CustomStringConvertible.description.getter();
  v98 = sub_1000245A0();
  v99(v98);
  sub_10000C95C();
  sub_100031C20();
  *(v43 + 14) = v49;
  sub_10001768C(&_mh_execute_header, v100, v101, "Failed to get temperature averages from weather comparisons; location=%{private,mask.hash}s");
  sub_10001356C();
  sub_100007E54();

LABEL_25:
  sub_100003D70();
  sub_10001E79C();
  v126 = v49;
LABEL_36:
  sub_100105E88(v126, v125);
LABEL_37:
  sub_1000080A4();
  sub_100105E88(v72, v149);
LABEL_38:
  v150 = type metadata accessor for TemperatureAveragesDetailInput();
  v151 = v218;
  v152 = 1;
  return sub_10001B350(v151, v152, 1, v150);
}