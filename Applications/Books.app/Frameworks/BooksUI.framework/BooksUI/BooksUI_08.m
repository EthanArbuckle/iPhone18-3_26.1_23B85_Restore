uint64_t (*static Defaults.shelfGridDebugUIEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_315938 != -1)
  {
    swift_once();
  }

  v9 = sub_B080(v4, qword_31CB20);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_260730();
  return sub_D4C14;
}

uint64_t sub_D42A0()
{
  v0 = sub_2EF0(&qword_31CB50, &qword_273B98);
  sub_B600(v0, qword_31CB20);
  sub_B080(v0, qword_31CB20);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_260760();
}

uint64_t sub_D4374(void *a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_B080(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  sub_260740();
  (*(v5 + 8))(v8, v4);
  return v11[15];
}

uint64_t sub_D44A8@<X0>(void *a1@<X3>, uint64_t a2@<X4>, _BYTE *a3@<X8>)
{
  v6 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_B080(v6, a2);
  (*(v7 + 16))(v10, v11, v6);
  sub_260740();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v13[15];
  return result;
}

uint64_t sub_D45EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-v12];
  v14 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  v15 = sub_B080(v9, a6);
  (*(v10 + 16))(v13, v15, v9);
  v17[15] = v14;
  sub_260750();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_D4754(char a1, void *a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_B080(v6, a3);
  (*(v7 + 16))(v10, v11, v6);
  v13[15] = a1 & 1;
  sub_260750();
  return (*(v7 + 8))(v10, v6);
}

uint64_t (*static Defaults.useOldCollageSwoosh.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_315940 != -1)
  {
    swift_once();
  }

  v9 = sub_B080(v4, qword_31CB38);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_260730();
  return sub_D49F8;
}

void sub_D49FC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_D4A74()
{
  v0 = sub_2EF0(&qword_31CB50, &qword_273B98);
  sub_B600(v0, qword_31CB38);
  sub_B080(v0, qword_31CB38);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_260760();
}

uint64_t sub_D4C18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C797473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6769736564;
    }

    else
    {
      v4 = 0x746867696577;
    }

    v5 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 1702521203;
    }

    else
    {
      v4 = 0x656C797473;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6E6769736564;
  if (a2 != 2)
  {
    v7 = 0x746867696577;
  }

  if (a2)
  {
    v2 = 1702521203;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264F10();
  }

  return v10 & 1;
}

uint64_t sub_D4D38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7368560;
  v6 = 0xE400000000000000;
  v7 = 1952867692;
  if (a1 != 4)
  {
    v7 = 0x7468676972;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x64726177726F66;
  if (a1 != 1)
  {
    v9 = 1752397168;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1801675106;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7368560)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952867692)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7468676972)
      {
LABEL_34:
        v13 = sub_264F10();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64726177726F66)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1752397168)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1801675106)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_D4EE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F74747562;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE400000000000000;
    v13 = 1802398060;
    if (a1 != 2)
    {
      v13 = 0x70756B636F6CLL;
      v12 = 0xE600000000000000;
    }

    v14 = 0x7265746C6966;
    if (!a1)
    {
      v14 = 0x6E6F74747562;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x6E6F6974636573;
    v6 = 0xE600000000000000;
    v7 = 0x68736F6F7773;
    if (a1 != 7)
    {
      v7 = 0x6B636F6C5F707075;
      v6 = 0xEA00000000007075;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE400000000000000;
    v9 = 1701273968;
    if (a1 != 4)
    {
      v9 = 0x77656976657270;
      v8 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE400000000000000;
        if (v10 != 1802398060)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v10 != 0x70756B636F6CLL)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v15 = 0xE600000000000000;
    if (a2)
    {
      if (v10 != 0x7265746C6966)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0xE400000000000000;
        if (v10 != 1701273968)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v10 != 0x77656976657270)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v15 = 0xE700000000000000;
      if (v10 != 0x6E6F6974636573)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v15 = 0xE600000000000000;
      if (v10 != 0x68736F6F7773)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0x6B636F6C5F707075;
    v15 = 0xEA00000000007075;
  }

  if (v10 != v2)
  {
LABEL_49:
    v16 = sub_264F10();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_D5154(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F74747562;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F6974636573;
  v6 = 0xE600000000000000;
  if (a1 != 5)
  {
    v5 = 0x68736F6F7773;
    v4 = 0xE600000000000000;
  }

  v7 = 0x70756B636F6CLL;
  if (a1 != 3)
  {
    v7 = 0x77656976657270;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6E6D756C6F63;
  if (a1 != 1)
  {
    v8 = 0x7265746C6966;
  }

  if (!a1)
  {
    v8 = 0x6E6F74747562;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x6E6D756C6F63)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 0x7265746C6966)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x6E6F6974636573)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0xE600000000000000;
        if (v9 != 0x68736F6F7773)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x70756B636F6CLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v11 = 0xE700000000000000;
    v2 = 0x77656976657270;
  }

  if (v9 != v2)
  {
LABEL_36:
    v12 = sub_264F10();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_D5344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802398060;
  v6 = 0xE600000000000000;
  v7 = 0x70756B636F6CLL;
  if (a1 != 4)
  {
    v7 = 0x77656976657270;
    v6 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6954656C62627562;
  v9 = 0xE900000000000070;
  if (a1 != 1)
  {
    v8 = 0x7265746C6966;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E6F74747562;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802398060)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x70756B636F6CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x77656976657270)
      {
LABEL_34:
        v13 = sub_264F10();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000070;
      if (v10 != 0x6954656C62627562)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7265746C6966)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6E6F74747562)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_D5510(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C746974627573;
    }

    else
    {
      v3 = 7107189;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D496C6F626D7973;
    v4 = 0xEF646E694B656761;
  }

  else if (a1 == 3)
  {
    v3 = 0x7365527465737361;
    v4 = 0xED0000656372756FLL;
  }

  else
  {
    v3 = 0x7463656C65537369;
    v4 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656C746974627573;
    }

    else
    {
      v9 = 7107189;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x7365527465737361;
    v6 = 0xED0000656372756FLL;
    if (a2 != 3)
    {
      v5 = 0x7463656C65537369;
      v6 = 0xEA00000000006465;
    }

    if (a2 == 2)
    {
      v7 = 0x6D496C6F626D7973;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEF646E694B656761;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_264F10();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_D56CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6B63616C62;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1818322292;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 6579570;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1702194274;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6B63616C62;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 6579570;
    if (a2 != 3)
    {
      v6 = 1702194274;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1818322292;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_264F10();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_D5820(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E696C6E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656772616CLL;
    }

    else
    {
      v4 = 0x6974616D6F747561;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000063;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x614C656E696C6E69;
    }

    else
    {
      v4 = 0x656E696C6E69;
    }

    if (v3)
    {
      v5 = 0xEB00000000656772;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656772616CLL;
  if (a2 != 2)
  {
    v8 = 0x6974616D6F747561;
    v7 = 0xE900000000000063;
  }

  if (a2)
  {
    v2 = 0x614C656E696C6E69;
    v6 = 0xEB00000000656772;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

uint64_t sub_D5970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6564616568657270;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x727574616E676973;
    if (a1 == 6)
    {
      v12 = 0xE900000000000065;
    }

    else
    {
      v11 = 0xD000000000000011;
      v12 = 0x800000000028FE80;
    }

    v13 = 0xE800000000000000;
    v14 = 0x656372756F736572;
    if (a1 != 4)
    {
      v14 = 0xD000000000000011;
      v13 = 0x800000000028FE60;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0xE900000000000072;
    v6 = 0xE800000000000000;
    v7 = 0x656C746974627573;
    if (a1 != 2)
    {
      v7 = 0x6E49676E69746172;
      v6 = 0xEA00000000006F66;
    }

    v8 = 0x656C746974;
    if (a1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v8 = 0x6564616568657270;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = 0x727574616E676973;
        goto LABEL_40;
      }

      v3 = 0xD000000000000011;
      v15 = "useLightColorText";
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0xE800000000000000;
        v3 = 0x656372756F736572;
        goto LABEL_40;
      }

      v3 = 0xD000000000000011;
      v15 = "reviewDescription";
    }

    v2 = (v15 - 32) | 0x8000000000000000;
    goto LABEL_40;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xE800000000000000;
      v3 = 0x656C746974627573;
    }

    else
    {
      v3 = 0x6E49676E69746172;
      v2 = 0xEA00000000006F66;
    }
  }

  else if (a2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x656C746974;
  }

  else
  {
    v2 = 0xE900000000000072;
  }

LABEL_40:
  if (v9 == v3 && v10 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_264F10();
  }

  return v16 & 1;
}

uint64_t sub_D5BB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006567;
  v3 = 0x6150736569726573;
  v4 = a1;
  v5 = 0xEF68736F6F775373;
  v6 = 0xD000000000000017;
  if (a1 == 5)
  {
    v6 = 0x7472616843706F74;
  }

  else
  {
    v5 = 0x800000000028FAB0;
  }

  v7 = 0x800000000028FA70;
  v8 = 0x7472616843706F74;
  if (a1 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xED00007473694C73;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x800000000028FA50;
  v10 = 0xD000000000000012;
  if (a1 != 1)
  {
    v10 = 0x736E6F6974696465;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x6150736569726573;
    v9 = 0xEA00000000006567;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x800000000028FA50;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x736E6F6974696465)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF68736F6F775373;
        if (v11 != 0x7472616843706F74)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0x800000000028FAB0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0x800000000028FA70;
      if (v11 != 0xD000000000000017)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v3 = 0x7472616843706F74;
    v2 = 0xED00007473694C73;
  }

  if (v11 != v3)
  {
LABEL_39:
    v13 = sub_264F10();
    goto LABEL_40;
  }

LABEL_36:
  if (v12 != v2)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_D5DFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE800000000000000;
      v5 = 0x4449736569726573;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000012;
      }

      else
      {
        v5 = 0xD000000000000013;
      }

      if (v2 == 4)
      {
        v6 = 0x800000000028FA10;
      }

      else
      {
        v6 = 0x800000000028FA30;
      }
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656372756F736572;
    if (a1 != 1)
    {
      v4 = 0x4E6E6F6974636573;
      v3 = 0xEB00000000656D61;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x747865746E6F63;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE800000000000000;
      if (v5 != 0x4449736569726573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000012;
      }

      else
      {
        v8 = 0xD000000000000013;
      }

      if (a2 == 4)
      {
        v7 = 0x800000000028FA10;
      }

      else
      {
        v7 = 0x800000000028FA30;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE800000000000000;
      if (v5 != 0x656372756F736572)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xEB00000000656D61;
      if (v5 != 0x4E6E6F6974636573)
      {
LABEL_39:
        v9 = sub_264F10();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x747865746E6F63)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_D5FF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x63657053746E6F66;
    if (a1 != 2)
    {
      v13 = 0x6D614E6567616D69;
      v12 = 0xE900000000000065;
    }

    v14 = 0x7365527465737361;
    if (a1)
    {
      v11 = 0xED0000656372756FLL;
    }

    else
    {
      v14 = 0x6E6F69746361;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656C746974627573;
    v5 = 0x6D496C6F626D7973;
    v6 = 0xEF646E694B656761;
    if (a1 != 7)
    {
      v5 = 0x656C746974;
      v6 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE500000000000000;
    v8 = 0x73756E656DLL;
    if (a1 != 4)
    {
      v8 = 1701605234;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x63657053746E6F66)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE900000000000065;
        if (v9 != 0x6D614E6567616D69)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xED0000656372756FLL;
      if (v9 != 0x7365527465737361)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6E6F69746361)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x73756E656DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1701605234)
      {
LABEL_52:
        v16 = sub_264F10();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x656C746974627573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEF646E694B656761;
    if (v9 != 0x6D496C6F626D7973)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    if (v9 != 0x656C746974)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_D62C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000756E65;
  v3 = 0x4D747865746E6F63;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x70756B636F6CLL;
  if (a1 != 5)
  {
    v6 = 0xD000000000000016;
    v5 = 0x800000000028FB90;
  }

  v7 = 0x69576E6F74747562;
  v8 = 0xEF656C7469546874;
  if (a1 != 3)
  {
    v7 = 0x75426D6574737973;
    v8 = 0xEC0000006E6F7474;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000014;
  v11 = 0x800000000028FB40;
  if (a1 != 1)
  {
    v10 = 0x69576E6F74747562;
    v11 = 0xEF6567616D496874;
  }

  if (!a1)
  {
    v10 = 0x4D747865746E6F63;
    v11 = 0xEB00000000756E65;
  }

  if (a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE600000000000000;
        if (v12 != 0x70756B636F6CLL)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0x800000000028FB90;
        if (v12 != 0xD000000000000016)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v14 = 0x6C7469546874;
      goto LABEL_30;
    }

    v3 = 0x75426D6574737973;
    v2 = 0xEC0000006E6F7474;
    goto LABEL_33;
  }

  if (!a2)
  {
LABEL_33:
    if (v12 != v3)
    {
LABEL_37:
      v15 = sub_264F10();
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (a2 != 1)
  {
    v14 = 0x67616D496874;
LABEL_30:
    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
    if (v12 != 0x69576E6F74747562)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v2 = 0x800000000028FB40;
  if (v12 != 0xD000000000000014)
  {
    goto LABEL_37;
  }

LABEL_34:
  if (v13 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}

uint64_t sub_D6518(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006570795464;
  v3 = 0x6E656E6F706D6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x726550736D657469;
    }

    else
    {
      v5 = 0x67616C6C6F437369;
    }

    if (v4 == 2)
    {
      v6 = 0xEE006E6D756C6F43;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x697247666C656873;
    }

    else
    {
      v5 = 0x6E656E6F706D6F63;
    }

    if (v4)
    {
      v6 = 0xED00006570795464;
    }

    else
    {
      v6 = 0xED00006570795474;
    }
  }

  v7 = 0x726550736D657469;
  v8 = 0xEE006E6D756C6F43;
  if (a2 != 2)
  {
    v7 = 0x67616C6C6F437369;
    v8 = 0xE900000000000065;
  }

  if (a2)
  {
    v3 = 0x697247666C656873;
  }

  else
  {
    v2 = 0xED00006570795474;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

uint64_t sub_D6684(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v7 = 0xE500000000000000;
        v6 = 0x6B72616D78;
      }

      else
      {
        v7 = 0x800000000028FD40;
        v6 = 0xD000000000000011;
      }
    }

    else if (a1 == 4)
    {
      v7 = 0xE400000000000000;
      v6 = 1937075312;
    }

    else
    {
      v7 = 0x800000000028FD20;
      v6 = 0xD000000000000013;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    if (a1 != 2)
    {
      v3 = 0xEF656C637269632ELL;
    }

    v4 = 0xD000000000000010;
    v5 = 0x800000000028FCE0;
    if (a1)
    {
      v4 = 0x72616D6B63656863;
      v5 = 0xE90000000000006BLL;
    }

    if (a1 <= 1u)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x73697370696C6C65;
    }

    if (v2 <= 1)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v9 = 0xE500000000000000;
        if (v6 != 0x6B72616D78)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v9 = 0x800000000028FD40;
        if (v6 != 0xD000000000000011)
        {
LABEL_46:
          v10 = sub_264F10();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v9 = 0xE400000000000000;
      if (v6 != 1937075312)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v9 = 0x800000000028FD20;
      if (v6 != 0xD000000000000013)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xE800000000000000;
      if (v6 != 0x73697370696C6C65)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v9 = 0xEF656C637269632ELL;
      if (v6 != 0x73697370696C6C65)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0x72616D6B63656863;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a2)
    {
      v9 = 0xE90000000000006BLL;
    }

    else
    {
      v9 = 0x800000000028FCE0;
    }

    if (v6 != v8)
    {
      goto LABEL_46;
    }
  }

  if (v7 != v9)
  {
    goto LABEL_46;
  }

  v10 = 1;
LABEL_47:

  return v10 & 1;
}

uint64_t sub_D6920(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726564616568;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x70756B636F6CLL;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7265746F6F66;
    }

    else
    {
      v4 = 0x726564616568;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x70756B636F6CLL;
  if (a2 != 2)
  {
    v7 = 0x726568746FLL;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x7265746F6F66;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264F10();
  }

  return v10 & 1;
}

BooksUI::NavigationBarTitleStyle_optional __swiftcall NavigationBarTitleStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_300468;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t NavigationBarTitleStyle.rawValue.getter()
{
  v1 = 0x656E696C6E69;
  v2 = 0x656772616CLL;
  if (*v0 != 2)
  {
    v2 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    v1 = 0x614C656E696C6E69;
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

Swift::Int sub_D6B88()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_D6C50()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

Swift::Int sub_D6D04()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_D6DD4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656E696C6E69;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  if (*v1 != 2)
  {
    v5 = 0x6974616D6F747561;
    v4 = 0xE900000000000063;
  }

  if (*v1)
  {
    v3 = 0x614C656E696C6E69;
    v2 = 0xEB00000000656772;
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

double sub_D6EB8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t EnvironmentValues.navigationBarTransitionInfo.getter@<X0>(uint64_t a1@<X8>)
{
  sub_D6F64();
  result = sub_261CB0();
  if (v4)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6 & 1;
  }

  else
  {
    sub_2EF0(&qword_31CB60, &qword_273BC0);
    return sub_263370();
  }

  return result;
}

unint64_t sub_D6F64()
{
  result = qword_31CB58;
  if (!qword_31CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CB58);
  }

  return result;
}

uint64_t sub_D6FB8@<X0>(uint64_t a1@<X8>)
{
  sub_D6F64();
  result = sub_261CB0();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    v5 = &v7;
    v6 = v10;
  }

  else
  {
    sub_2EF0(&qword_31CB60, &qword_273BC0);
    v5 = &v11;
    result = sub_263370();
    v3 = v12;
    v4 = v13;
    v6 = v14;
  }

  *a1 = *v5;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v6 & 1;
  return result;
}

uint64_t sub_D706C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 32);
  sub_D6F64();

  return sub_261CC0();
}

uint64_t View.navigationStyle(_:scrollContentOffset:hideToolbarButtons:navigationBarTransitionInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v86 = a6;
  v89 = a5;
  v90 = a3;
  v87 = a4;
  v88 = a2;
  v93 = a9;
  v92 = a12;
  v17 = type metadata accessor for ToolbarPrincipalType(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v76 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_260BD0();
  v20 = *(v83 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v83);
  v82 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NavigationStyle(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = &v75 - v28;
  v30 = type metadata accessor for NavigationStyleViewModifier(0);
  v31 = *(*(v30 - 1) + 64);
  v32 = __chkstk_darwin(v30);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v75 - v35;
  v91 = a8;
  v85 = sub_261730();
  v84 = *(v85 - 8);
  v37 = *(v84 + 64);
  __chkstk_darwin(v85);
  v39 = &v75 - v38;
  v40 = a7[1];
  v81 = *a7;
  v80 = v40;
  v41 = a7[3];
  v79 = a7[2];
  v78 = v41;
  v77 = *(a7 + 32);
  sub_E1C8C(a1, v29, type metadata accessor for NavigationStyle);
  v42 = &v34[v30[8]];
  *v42 = swift_getKeyPath();
  *(v42 + 1) = 0;
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 16) = 0;
  v43 = &v34[v30[9]];
  v101 = 0;
  v102 = 1;
  sub_2EF0(&qword_319918, &qword_273BF0);
  sub_2631D0();
  v44 = v97;
  v45 = v98;
  *v43 = v96;
  v43[8] = v44;
  *(v43 + 2) = v45;
  v46 = v30[10];
  *&v34[v46] = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v47 = v30[11];
  *&v34[v47] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v48 = v30[12];
  *&v34[v48] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v49 = &v34[v30[13]];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  sub_E1C8C(v29, &v34[v30[5]], type metadata accessor for NavigationStyle);
  sub_D78BC(v29, v27, type metadata accessor for NavigationStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = *v27;
    v50 = v27[1];

    v52 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v53 = v52[12];
    v54 = *(v27 + v52[16]);

    v55 = *(v27 + v52[20]);

    v75 = v36;
    v56 = v39;
    v57 = v76;
    sub_D78BC(v27 + v53, v76, type metadata accessor for ToolbarPrincipalType);
    v58 = *(sub_2EF0(&qword_31CB70, &unk_273CB8) + 48);
    v59 = *(v20 + 32);
    v60 = v82;
    v61 = v83;
    v59(v82, v57, v83);
    v62 = v57 + v58;
    v39 = v56;
    v36 = v75;
    sub_8E80(v62, &qword_316208, &qword_268BD0);
  }

  else
  {
    v63 = sub_2EF0(&qword_31CB80, &qword_273CC8);
    v64 = *(v27 + *(v63 + 48));

    v65 = *(v27 + *(v63 + 64));

    v59 = *(v20 + 32);
    v60 = v82;
    v61 = v83;
    v59(v82, v27, v83);
  }

  v59(v34, v60, v61);
  v66 = &v34[v30[6]];
  v67 = v87;
  v69 = v89;
  v68 = v90;
  *v66 = v88;
  *(v66 + 1) = v68;
  *(v66 + 2) = a10;
  *(v66 + 3) = a11;
  v70 = &v34[v30[7]];
  *v70 = v67;
  *(v70 + 1) = v69;
  v70[16] = v86 & 1;
  sub_D78BC(v34, v36, type metadata accessor for NavigationStyleViewModifier);

  v71 = v92;
  sub_262E30();
  sub_E0F58(v36, type metadata accessor for NavigationStyleViewModifier);
  swift_getKeyPath();
  v96 = v81;
  v97 = v80;
  v98 = v79;
  v99 = v78;
  v100 = v77;
  v72 = sub_E0978(&qword_31CB78, type metadata accessor for NavigationStyleViewModifier);
  v94 = v71;
  v95 = v72;
  v73 = v85;
  swift_getWitnessTable();
  sub_262A90();

  return (*(v84 + 8))(v39, v73);
}

uint64_t sub_D78BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_D7928()
{
  result = qword_31CB88;
  if (!qword_31CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CB88);
  }

  return result;
}

unint64_t sub_D797C(uint64_t a1)
{
  result = sub_D79A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_D79A4()
{
  result = qword_31CB90;
  if (!qword_31CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CB90);
  }

  return result;
}

uint64_t sub_D7A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31CB70, &unk_273CB8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_D7A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_31CB70, &unk_273CB8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_D7B0C(uint64_t a1)
{
  sub_D7C48();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_260BD0();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      sub_D8800(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
      v3 = v8;
      if (v9 <= 0x3F)
      {
        v10 = *(v8 - 8);
        swift_getTupleTypeLayout2();
        v3 = 0;
        *(*(a1 - 8) + 84) = v12;
      }
    }
  }

  return v3;
}

void sub_D7C48()
{
  if (!qword_31CC38)
  {
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_31CC38);
    }
  }
}

void sub_D7CE8()
{
  sub_D7D5C(319);
  if (v0 <= 0x3F)
  {
    sub_D7E84(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_D7D5C(uint64_t a1)
{
  if (!qword_31CCE0)
  {
    __chkstk_darwin(a1);
    sub_260BD0();
    sub_2F9C(&qword_31C8D0, &qword_273588);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_31CCE0);
    }
  }
}

void sub_D7E84(uint64_t a1)
{
  if (!qword_31CCE8)
  {
    __chkstk_darwin(a1);
    sub_2F9C(&unk_31CCF0, &qword_273ED0);
    type metadata accessor for ToolbarPrincipalType(255);
    sub_2F9C(&qword_31C8D0, &qword_273588);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_31CCE8);
    }
  }
}

uint64_t sub_D7FBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for NavigationStyleViewModifier(255);
  sub_261730();
  sub_2F9C(&qword_31CD20, &unk_273EE0);
  sub_261730();
  sub_E0978(&qword_31CB78, type metadata accessor for NavigationStyleViewModifier);
  swift_getWitnessTable();
  sub_8E38(&qword_31CD28, &qword_31CD20, &unk_273EE0);
  return swift_getWitnessTable();
}

uint64_t sub_D80F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NavigationStyle(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_2EF0(&qword_31A748, &unk_26F940);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v17 = sub_2EF0(&qword_317BF8, &unk_26F930);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    v18 = sub_2EF0(&qword_316F68, &unk_269C50);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[12];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_D8330(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for NavigationStyle(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v18 = sub_2EF0(&qword_316F68, &unk_269C50);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[12];

  return v19(v20, a2, a2, v18);
}

void sub_D855C()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NavigationStyle(319);
    if (v1 <= 0x3F)
    {
      sub_D8800(319, &qword_31CD98, type metadata accessor for CGPoint, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_D8864(319, &qword_31CDA0, &type metadata for Bool, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_2CC54(319, &qword_31CDA8, &qword_31CDB0, &unk_273F10, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_2CC54(319, &qword_31CDB8, &qword_319918, &qword_273BF0, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_D8800(319, &qword_31A7B8, type metadata accessor for FontConstants, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_D8800(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_D8800(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
                  {
                    sub_D8864(319, &unk_319020, &type metadata for HostingViewBarType, &type metadata accessor for Environment);
                    if (v9 <= 0x3F)
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

void sub_D8800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_D8864(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_D88E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a2;
  v170 = a3;
  v150 = sub_2EF0(&qword_31CEF8, &qword_274050);
  v148 = *(v150 - 8);
  v4 = *(v148 + 64);
  __chkstk_darwin(v150);
  v147 = &v132 - v5;
  v153 = sub_2EF0(&qword_31CEE8, &qword_274040);
  v152 = *(v153 - 8);
  v6 = *(v152 + 64);
  __chkstk_darwin(v153);
  v151 = &v132 - v7;
  v157 = sub_2EF0(&qword_31CF18, &qword_274060);
  v156 = *(v157 - 8);
  v8 = *(v156 + 64);
  __chkstk_darwin(v157);
  v149 = &v132 - v9;
  v155 = sub_2EF0(&qword_31CED8, &qword_274038);
  v10 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v154 = &v132 - v11;
  v161 = sub_2EF0(&qword_31CF20, &qword_274068);
  v160 = *(v161 - 8);
  v12 = *(v160 + 64);
  __chkstk_darwin(v161);
  v159 = &v132 - v13;
  v169 = sub_2EF0(&qword_31CED0, &qword_274030);
  v14 = *(*(v169 - 8) + 64);
  v15 = __chkstk_darwin(v169);
  v158 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v132 - v17;
  v19 = type metadata accessor for ToolbarPrincipalType(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v171 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_2EF0(&qword_31CF28, &qword_274070);
  v22 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v167 = &v132 - v23;
  v136 = sub_262240();
  v135 = *(v136 - 8);
  v24 = *(v135 + 64);
  v25 = __chkstk_darwin(v136);
  v133 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v134 = &v132 - v27;
  v28 = sub_2EF0(&qword_31CE78, &qword_274008);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v132 - v30;
  v162 = sub_2EF0(&qword_31CE60, &qword_274000);
  v32 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v34 = &v132 - v33;
  v139 = sub_2EF0(&qword_31CE50, &qword_273FF0);
  v138 = *(v139 - 8);
  v35 = *(v138 + 64);
  __chkstk_darwin(v139);
  v137 = &v132 - v36;
  v145 = sub_2EF0(&qword_31CF30, &qword_274078);
  v144 = *(v145 - 8);
  v37 = *(v144 + 8);
  __chkstk_darwin(v145);
  v143 = &v132 - v38;
  v141 = sub_2EF0(&qword_31CE48, &qword_273FE8);
  v39 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v142 = &v132 - v40;
  v165 = sub_2EF0(&qword_31CE38, &qword_273FE0);
  v41 = *(*(v165 - 8) + 64);
  v42 = __chkstk_darwin(v165);
  v140 = &v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v146 = &v132 - v44;
  v45 = sub_260BD0();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v132 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NavigationStyle(0);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = (&v132 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = type metadata accessor for NavigationStyleViewModifier(0);
  sub_E1C8C(a1 + *(v163 + 20), v53, type metadata accessor for NavigationStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v168 = a1;
  if (EnumCaseMultiPayload == 1)
  {
    v144 = v18;
    v55 = v53[1];
    v162 = *v53;
    v146 = v55;
    v56 = v53[2];
    v57 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v58 = v57[12];
    v143 = *(v53 + v57[16]);
    v145 = *(v53 + v57[20]);
    sub_D78BC(v53 + v58, v171, type metadata accessor for ToolbarPrincipalType);
    sub_263500();
    v59 = v147;
    v60 = sub_261DF0();
    v142 = &v132;
    __chkstk_darwin(v60);
    v61 = a1;
    v62 = sub_2EF0(&qword_31CE88, &qword_274010);
    v141 = sub_2EF0(&qword_31CF00, &qword_274058);
    v63 = sub_8E38(&qword_31CE80, &qword_31CE88, &qword_274010);
    v175 = &type metadata for Solarium;
    v176 = &protocol witness table for Solarium;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v175 = v62;
    v176 = v63;
    v65 = swift_getOpaqueTypeConformance2();
    v131 = v65;
    v66 = v151;
    v67 = v150;
    sub_262E80();
    v68 = (*(v148 + 8))(v59, v67);
    v164 = &v132;
    __chkstk_darwin(v68);
    v69 = v162;
    *(&v132 - 8) = v171;
    *(&v132 - 7) = v69;
    *(&v132 - 6) = v146;
    *(&v132 - 5) = v56;
    v70 = v145;
    *(&v132 - 4) = v61;
    *(&v132 - 3) = v70;
    v71 = v143;
    v131 = v143;
    sub_2EF0(&qword_31CEF0, &qword_274048);
    v175 = v62;
    v176 = v67;
    v177 = v141;
    v178 = v63;
    v179 = OpaqueTypeConformance2;
    v180 = v65;
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31CF08, &qword_31CEF0, &qword_274048);
    v72 = v149;
    v73 = v153;
    sub_262E10();
    (*(v152 + 8))(v66, v73);
    v74 = *(v71 + 2);

    v75 = v72;
    if (v74)
    {
    }

    else
    {
      v84 = *(v145 + 16);

      if (!v84)
      {
        v85 = 0;
        goto LABEL_10;
      }
    }

    v85 = sub_263620();
LABEL_10:
    v86 = v144;
    v87 = v171;
    v88 = v168 + *(v163 + 28);
    v89 = *v88;
    v90 = *(v88 + 8);
    LOBYTE(v88) = *(v88 + 16);
    v175 = v89;
    v176 = v90;
    LOBYTE(v177) = v88;
    sub_2EF0(&qword_31CF38, &qword_274080);
    sub_263320();
    v91 = v172;
    v92 = v154;
    (*(v156 + 32))(v154, v75, v157);
    v93 = v92 + *(v155 + 36);
    *v93 = v85;
    *(v93 + 8) = v91;
    sub_E0BE0();
    v94 = v159;
    sub_262920();
    sub_8E80(v92, &qword_31CED8, &qword_274038);
    swift_getKeyPath();
    v175 = v162;
    v176 = v146;
    v177 = v56;
    sub_2EF0(&unk_31CCF0, &qword_273ED0);
    sub_263340();

    v95 = v172;
    v96 = v173;
    v97 = v174;
    KeyPath = swift_getKeyPath();
    v99 = v158;
    (*(v160 + 32))(v158, v94, v161);
    v100 = v99 + *(v169 + 36);
    *v100 = v95;
    *(v100 + 8) = v96;
    *(v100 + 16) = v97;
    *(v100 + 24) = KeyPath;
    *(v100 + 32) = 0;
    sub_22148(v99, v86, &qword_31CED0, &qword_274030);
    sub_8198(v86, v167, &qword_31CED0, &qword_274030);
    swift_storeEnumTagMultiPayload();
    sub_E05D8();
    sub_E0B18();
    sub_261F80();

    sub_8E80(v86, &qword_31CED0, &qword_274030);
    return sub_E0F58(v87, type metadata accessor for ToolbarPrincipalType);
  }

  v76 = sub_2EF0(&qword_31CB80, &qword_273CC8);
  v159 = *(v53 + v76[12]);
  v160 = *(v53 + v76[16]);
  v77 = *(v53 + v76[20]);
  v161 = v46;
  v78 = *(v46 + 32);
  v171 = v45;
  v78(v49, v53, v45);
  v79 = &v31[*(v28 + 36)];
  v80 = type metadata accessor for NavigationTitleForNonRootPage();
  sub_D9CC8(v49, &v79[*(v80 + 20)]);
  *v79 = swift_getKeyPath();
  v79[8] = 0;
  v81 = sub_2EF0(&qword_31CE88, &qword_274010);
  (*(*(v81 - 8) + 16))(v31, v164, v81);
  v82 = a1;
  v164 = v49;
  if (v77 > 1)
  {
    v83 = v133;
    if (v77 == 2)
    {

      sub_22148(v31, v34, &qword_31CE78, &qword_274008);
      v34[*(v162 + 36)] = 1;
      sub_262210();
      goto LABEL_16;
    }
  }

  else
  {
    v83 = v133;
  }

  v102 = sub_264F10();

  sub_22148(v31, v34, &qword_31CE78, &qword_274008);
  v34[*(v162 + 36)] = v102 & 1;
  if (v77)
  {
    if (v77 == 1)
    {
      sub_262200();
    }

    else
    {
      sub_262230();
    }
  }

  else
  {
    sub_262220();
  }

LABEL_16:
  v103 = v135;
  v104 = v134;
  v105 = v83;
  v106 = v136;
  (*(v135 + 32))(v134, v105, v136);
  v107 = sub_E0804();
  v108 = v137;
  v109 = v162;
  sub_262D20();
  (*(v103 + 8))(v104, v106);
  v110 = sub_8E80(v34, &qword_31CE60, &qword_274000);
  __chkstk_darwin(v110);
  *(&v132 - 4) = v82;
  v111 = v160;
  v112 = v159;
  *(&v132 - 3) = v160;
  v131 = v112;
  sub_2EF0(&qword_31CE58, &qword_273FF8);
  v175 = v109;
  v176 = v107;
  swift_getOpaqueTypeConformance2();
  v113 = sub_2F9C(&qword_31CEA0, &qword_274018);
  v114 = sub_E0A14();
  v175 = v113;
  v176 = v114;
  swift_getOpaqueTypeConformance2();
  v115 = v143;
  v116 = v139;
  sub_262E10();
  (*(v138 + 8))(v108, v116);
  v117 = *(v112 + 2);

  if (v117)
  {

    v118 = v171;
LABEL_19:
    v119 = sub_263620();
    goto LABEL_20;
  }

  v119 = *(v111 + 16);

  v118 = v171;
  if (v119)
  {
    goto LABEL_19;
  }

LABEL_20:
  v120 = v168 + *(v163 + 28);
  v121 = *v120;
  v122 = *(v120 + 8);
  LOBYTE(v120) = *(v120 + 16);
  v175 = v121;
  v176 = v122;
  LOBYTE(v177) = v120;
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  v123 = v172;
  v124 = v142;
  (*(v144 + 4))(v142, v115, v145);
  v125 = &v124[*(v141 + 36)];
  *v125 = v119;
  v125[8] = v123;
  v126 = swift_getKeyPath();
  v127 = v124;
  v128 = v140;
  sub_22148(v127, v140, &qword_31CE48, &qword_273FE8);
  v129 = v128 + *(v165 + 36);
  *v129 = v126;
  *(v129 + 8) = 0;
  v130 = v146;
  sub_22148(v128, v146, &qword_31CE38, &qword_273FE0);
  sub_8198(v130, v167, &qword_31CE38, &qword_273FE0);
  swift_storeEnumTagMultiPayload();
  sub_E05D8();
  sub_E0B18();
  sub_261F80();
  sub_8E80(v130, &qword_31CE38, &qword_273FE0);
  return (*(v161 + 8))(v164, v118);
}

uint64_t sub_D9CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationStyleViewModifier(0);
  v11 = v2 + *(v10 + 32);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 32);
  LODWORD(v11) = *(v11 + 33);
  v28 = v14;
  if (v11 == 1)
  {
    v33 = v12;
    v34 = v13;
    v35 = v14;
    v36 = v15 & 1;

    v16 = v28;
  }

  else
  {

    sub_264900();
    v17 = sub_2624B0();
    v26 = v5;
    v18 = v10;
    v19 = a2;
    v20 = v17;
    sub_260D10();

    a2 = v19;
    v10 = v18;
    sub_261C80();
    swift_getAtKeyPath();
    sub_E1CF8(v12, v13, v28, *(&v28 + 1), v15, 0);
    (*(v6 + 8))(v9, v26);
    v12 = v33;
    v13 = v34;
    v16 = v35;
    LOBYTE(v15) = v36;
  }

  v29 = v12;
  v30 = *&v13;
  v31 = v16;
  v32 = v15 & 1;
  sub_2EF0(&qword_31CDB0, &unk_273F10);
  sub_263320();

  if ((v38 & 1) == 0)
  {
    v21 = v37;
    v22 = v3 + *(v10 + 24);
    v23 = *(v22 + 8);
    v33 = *v22;
    v34 = v23;
    v35 = *(v22 + 16);
    sub_2EF0(&qword_31D108, &qword_2742D8);
    sub_263320();
    if (v21 >= v30)
    {
      return sub_260BC0();
    }
  }

  v24 = sub_260BD0();
  return (*(*(v24 - 8) + 16))(a2, v27, v24);
}

uint64_t sub_D9F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v55 = a2;
  v66 = a4;
  v5 = sub_2EF0(&qword_31CF40, &qword_274100);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v62 = v51 - v7;
  v8 = sub_2EF0(&qword_31CEB8, &unk_274020);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v57 = v51 - v11;
  v12 = sub_262040();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v54 = sub_2EF0(&qword_31CF48, &qword_274108);
  v56 = *(v54 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v54);
  v16 = v51 - v15;
  v17 = sub_2EF0(&qword_31CF50, &qword_274110);
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = *(v60 + 64);
  v19 = __chkstk_darwin(v17);
  v58 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v51 - v21;
  v65 = sub_2EF0(&qword_31CEA0, &qword_274018);
  v23 = *(*(v65 - 8) + 64);
  v24 = __chkstk_darwin(v65);
  v63 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v64 = v51 - v26;
  v27 = type metadata accessor for NavigationStyleViewModifier(0);
  v28 = (a1 + *(v27 + 28));
  v29 = *v28;
  v30 = v28[1];
  LOBYTE(v28) = *(v28 + 16);
  v68 = v29;
  v69 = v30;
  v70 = v28;
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  if (v67)
  {
    v31 = v63;
    (*(v9 + 56))(v63, 1, 1, v8);
    sub_8E38(&qword_31CEB0, &qword_31CEB8, &unk_274020);
    v32 = v64;
    sub_2620A0();
    sub_8E80(v31, &qword_31CEA0, &qword_274018);
  }

  else
  {
    v33 = sub_262020();
    v53 = v5;
    __chkstk_darwin(v33);
    v51[-2] = v55;
    v51[-1] = a1;
    v51[3] = sub_2EF0(&qword_31CF58, &qword_274118);
    v34 = sub_E1004();
    v52 = v22;
    v51[2] = v34;
    sub_261250();
    v51[1] = *(v27 + 20);
    sub_DCEEC();
    sub_8E38(&qword_31D0A0, &qword_31CF48, &qword_274108);
    v35 = v54;
    sub_2615A0();
    v55 = v8;
    v36 = *(v56 + 8);
    v36(v16, v35);
    v37 = sub_262010();
    __chkstk_darwin(v37);
    v51[-2] = v59;
    v51[-1] = a1;
    sub_261250();
    sub_DD414();
    v38 = v58;
    sub_2615A0();
    v36(v16, v35);
    v39 = v52;
    v40 = *(v53 + 48);
    v42 = v60;
    v41 = v61;
    v43 = *(v60 + 16);
    v44 = v62;
    v43(v62, v52, v61);
    v43(&v44[v40], v38, v41);
    v45 = v57;
    sub_261E90();
    v46 = v63;
    v47 = v45;
    v48 = v55;
    (*(v9 + 16))(v63, v45, v55);
    (*(v9 + 56))(v46, 0, 1, v48);
    sub_8E38(&qword_31CEB0, &qword_31CEB8, &unk_274020);
    v32 = v64;
    sub_2620A0();
    sub_8E80(v46, &qword_31CEA0, &qword_274018);
    (*(v9 + 8))(v47, v48);
    v49 = *(v42 + 8);
    v49(v38, v41);
    v49(v39, v41);
  }

  sub_E0A14();
  sub_262090();
  return sub_8E80(v32, &qword_31CEA0, &qword_274018);
}

uint64_t sub_DA6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v273 = a1;
  v278 = a2;
  v232 = sub_2EF0(&qword_31D088, &qword_2741B8);
  v2 = *(*(v232 - 8) + 64);
  __chkstk_darwin(v232);
  v233 = &v225 - v3;
  v266 = sub_2EF0(&qword_31D080, &qword_2741B0);
  v4 = *(*(v266 - 8) + 64);
  __chkstk_darwin(v266);
  v239 = &v225 - v5;
  v227 = type metadata accessor for NavigationStyleViewModifier(0);
  v235 = *(v227 - 8);
  v6 = *(v235 + 64);
  __chkstk_darwin(v227);
  v236 = v7;
  v237 = &v225 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_2EF0(&qword_31D028, &qword_274188);
  v8 = *(*(v229 - 8) + 64);
  __chkstk_darwin(v229);
  v228 = (&v225 - v9);
  v230 = sub_2EF0(&qword_31D020, &qword_274180);
  v10 = *(*(v230 - 8) + 64);
  __chkstk_darwin(v230);
  v231 = &v225 - v11;
  v257 = sub_2EF0(&qword_31D008, &qword_274178);
  v12 = *(*(v257 - 8) + 64);
  __chkstk_darwin(v257);
  v234 = &v225 - v13;
  v261 = sub_2EF0(&qword_31D0B8, &qword_2741C8);
  v240 = *(v261 - 8);
  v14 = *(v240 + 64);
  __chkstk_darwin(v261);
  v253 = &v225 - v15;
  v262 = sub_2EF0(&qword_31D0C0, &qword_2741D0);
  v16 = *(*(v262 - 8) + 64);
  __chkstk_darwin(v262);
  v264 = &v225 - v17;
  v254 = sub_2EF0(&qword_31D0C8, &qword_2741D8);
  v18 = *(*(v254 - 8) + 64);
  __chkstk_darwin(v254);
  v256 = &v225 - v19;
  v263 = sub_2EF0(&qword_31CFE8, &qword_274160);
  v20 = *(*(v263 - 8) + 64);
  __chkstk_darwin(v263);
  v258 = &v225 - v21;
  v277 = sub_2EF0(&qword_31CFD8, &qword_274158);
  v22 = *(*(v277 - 8) + 64);
  __chkstk_darwin(v277);
  v265 = &v225 - v23;
  v260 = sub_2EF0(&qword_31CEF8, &qword_274050);
  v252 = *(v260 - 8);
  v24 = *(v252 + 64);
  __chkstk_darwin(v260);
  v251 = &v225 - v25;
  v259 = sub_2EF0(&qword_31CFF0, &qword_274168);
  v26 = *(*(v259 - 8) + 64);
  __chkstk_darwin(v259);
  v226 = &v225 - v27;
  v255 = sub_2EF0(&qword_31D0D0, &qword_2741E0);
  v250 = *(v255 - 8);
  v28 = *(v250 + 64);
  __chkstk_darwin(v255);
  v249 = &v225 - v29;
  v248 = sub_2EF0(&qword_316938, &qword_274150);
  v30 = *(*(v248 - 8) + 64);
  __chkstk_darwin(v248);
  v32 = &v225 - v31;
  v245 = sub_2610B0();
  v244 = *(v245 - 8);
  v33 = *(v244 + 64);
  __chkstk_darwin(v245);
  v241 = &v225 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_2EF0(&qword_31D0D8, &unk_2741E8);
  v35 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v246 = &v225 - v36;
  v271 = sub_2EF0(&qword_31CFB8, &unk_274140);
  v37 = *(*(v271 - 8) + 64);
  __chkstk_darwin(v271);
  v247 = &v225 - v38;
  v39 = sub_2604E0();
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v242 = sub_2EF0(&qword_316948, &qword_2689E0);
  v41 = *(*(v242 - 8) + 64);
  __chkstk_darwin(v242);
  v43 = &v225 - v42;
  v44 = sub_2EF0(&qword_316960, &unk_2689F0);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v272 = &v225 - v46;
  v274 = sub_2EF0(&qword_31D0E0, &qword_2741F8);
  v47 = *(*(v274 - 8) + 64);
  __chkstk_darwin(v274);
  v276 = &v225 - v48;
  v267 = sub_2EF0(&qword_31D0E8, &qword_274200);
  v49 = *(*(v267 - 8) + 64);
  __chkstk_darwin(v267);
  v269 = &v225 - v50;
  v51 = sub_2EF0(&qword_31D0F0, &qword_274208);
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v54 = &v225 - v53;
  v268 = sub_2EF0(&qword_31CFA0, &qword_274138);
  v55 = *(*(v268 - 8) + 64);
  __chkstk_darwin(v268);
  v57 = &v225 - v56;
  v275 = sub_2EF0(&qword_31CF90, &qword_274130);
  v58 = *(*(v275 - 8) + 64);
  __chkstk_darwin(v275);
  v270 = &v225 - v59;
  v60 = type metadata accessor for NavigationActionMenuButtonView(0);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v63 = &v225 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ToolbarItemType(0);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v67 = &v225 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E1C8C(v273, v67, type metadata accessor for ToolbarItemType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v173 = *(v67 + 1);
        v266 = *v67;
        v265 = v173;
        v174 = sub_2EF0(&qword_31B7C8, &qword_270F70);
        v175 = v174[12];
        v176 = v174[16];
        *&v273 = *&v67[v174[20]];
        v177 = v272;
        sub_22148(&v67[v175], v272, &qword_316960, &unk_2689F0);
        sub_F7CC(&v67[v176], &v287);
        v178 = v242;
        v179 = &v43[*(v242 + 48)];
        v180 = sub_2EF0(&qword_316950, &qword_2689E8);
        v179[3] = v180;
        v179[4] = sub_8E38(&qword_316958, &qword_316950, &qword_2689E8);
        v181 = sub_10934(v179);
        sub_8198(v177, v181, &qword_316960, &unk_2689F0);
        sub_30CC(&v287, &v43[v178[13]]);
        v182 = swift_allocObject();
        v183 = v265;
        *(v182 + 2) = v266;
        *(v182 + 3) = v183;
        *(v182 + 4) = v273;

        sub_2604C0();
        sub_260420();
        v184 = &v43[v178[9]];
        *v184 = swift_getKeyPath();
        v184[8] = 0;
        v185 = v178[10];
        *&v43[v185] = swift_getKeyPath();
        sub_2EF0(&qword_316930, &qword_2689A0);
        swift_storeEnumTagMultiPayload();
        v186 = &v43[v178[11]];
        *v186 = swift_getKeyPath();
        v186[40] = 0;
        v187 = (v181 + *(v180 + 36));
        *v187 = sub_E236C;
        v187[1] = v182;
        sub_8198(v43, v246, &qword_316948, &qword_2689E0);
        swift_storeEnumTagMultiPayload();
        sub_8E38(&qword_31CFC0, &qword_316948, &qword_2689E0);
        sub_8E38(&qword_31CFC8, &qword_316938, &qword_274150);
        v188 = v247;
        sub_261F80();
        sub_8198(v188, v269, &qword_31CFB8, &unk_274140);
        swift_storeEnumTagMultiPayload();
        sub_E1258();
        sub_E130C();
        v189 = v270;
        sub_261F80();
        sub_8E80(v188, &qword_31CFB8, &unk_274140);
        sub_8198(v189, v276, &qword_31CF90, &qword_274130);
        swift_storeEnumTagMultiPayload();
        sub_E11CC();
        sub_E13EC();
        sub_261F80();

        sub_8E80(v189, &qword_31CF90, &qword_274130);
        sub_8E80(v43, &qword_316948, &qword_2689E0);
        v99 = &v287;
        goto LABEL_13;
      }

      v273 = *v67;
      v100 = *(v67 + 2);
      v101 = *(v60 + 28);
      *&v63[v101] = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v102 = &v63[*(v60 + 32)];
      *v102 = swift_getKeyPath();
      v102[8] = 0;
      *(v63 + 8) = v273;
      *v63 = 8;
      *(v63 + 3) = v100;
      sub_E1C8C(v63, v54, type metadata accessor for NavigationActionMenuButtonView);
    }

    else
    {
      v168 = *v67;
      v169 = *(v67 + 1);
      v170 = *(v60 + 28);
      *&v63[v170] = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v171 = &v63[*(v60 + 32)];
      *v171 = swift_getKeyPath();
      v171[8] = 0;
      *v63 = v168;
      *(v63 + 1) = 0;
      *(v63 + 2) = 0;
      *(v63 + 3) = v169;
      sub_E1C8C(v63, v54, type metadata accessor for NavigationActionMenuButtonView);
    }

    swift_storeEnumTagMultiPayload();
    sub_E0978(&qword_31CFA8, type metadata accessor for NavigationActionMenuButtonView);
    sub_261F80();
    sub_8198(v57, v269, &qword_31CFA0, &qword_274138);
    swift_storeEnumTagMultiPayload();
    sub_E1258();
    sub_E130C();
    v172 = v270;
    sub_261F80();
    sub_8E80(v57, &qword_31CFA0, &qword_274138);
    sub_8198(v172, v276, &qword_31CF90, &qword_274130);
    swift_storeEnumTagMultiPayload();
    sub_E11CC();
    sub_E13EC();
    sub_261F80();
    sub_8E80(v172, &qword_31CF90, &qword_274130);
    return sub_E0F58(v63, type metadata accessor for NavigationActionMenuButtonView);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v103 = *(v67 + 5);
      v291 = *(v67 + 4);
      v292 = v103;
      v104 = *(v67 + 7);
      v293 = *(v67 + 6);
      v294 = v104;
      v105 = *(v67 + 1);
      v287 = *v67;
      v288 = v105;
      v106 = *(v67 + 3);
      v289 = *(v67 + 2);
      v290 = v106;
      v108 = *(v67 + 16);
      v107 = *(v67 + 17);
      v110 = *(v67 + 18);
      v109 = *(v67 + 19);
      v111 = v67[160];
      v112 = v238;
      v113 = (v238 + *(v227 + 24));
      v114 = v113[1];
      *&v273 = *v113;
      v115 = v113[2];
      v116 = v113[3];
      *&v279 = v273;
      *(&v279 + 1) = v114;
      v280 = v115;
      v281 = v116;
      sub_2EF0(&qword_31D108, &qword_2742D8);
      sub_263320();
      v284 = v286;
      v279 = xmmword_273BB0;
      sub_E1D74();
      sub_264350();
      v117 = v285;
      v118 = v285 / 20.0 * -0.25 + 1.0;
      v119 = sub_261D30();
      v120 = v228;
      *v228 = v119;
      *(v120 + 8) = 0x4030000000000000;
      *(v120 + 16) = 0;
      v121 = sub_2EF0(&qword_31D118, &unk_2742E0);
      sub_DF1B0(v112, &v287, v108, v107, v110, v109, v120 + *(v121 + 44));
      sub_2F8C4(&v287);

      v122 = sub_262510();
      sub_2610C0();
      v124 = v123;
      v126 = v125;
      v128 = v127;
      v130 = v129;
      v131 = v120 + *(sub_2EF0(&qword_31D048, &qword_274198) + 36);
      *v131 = v122;
      *(v131 + 8) = v124;
      *(v131 + 16) = v126;
      *(v131 + 24) = v128;
      *(v131 + 32) = v130;
      *(v131 + 40) = 0;
      sub_2636D0();
      v132 = v120 + *(v229 + 36);
      *v132 = v118;
      *(v132 + 8) = v118;
      *(v132 + 16) = v133;
      *(v132 + 24) = v134;
      sub_263500();
      sub_2EF0(&qword_31D030, &qword_274190);
      sub_E1870();
      sub_E19B4();
      v135 = v231;
      sub_262E80();
      sub_8E80(v120, &qword_31D028, &qword_274188);
      v136 = sub_2635F0();
      v137 = (v135 + *(v230 + 36));
      *v137 = v136;
      *(v137 + 1) = v117;
      LOBYTE(v120) = sub_262530();
      sub_2634F0();
      sub_2610C0();
      v139 = v138;
      v141 = v140;
      v143 = v142;
      v145 = v144;
      v146 = v234;
      sub_22148(v135, v234, &qword_31D020, &qword_274180);
      v147 = v257;
      v148 = v146 + *(v257 + 36);
      *v148 = v120;
      *(v148 + 8) = v139;
      *(v148 + 16) = v141;
      *(v148 + 24) = v143;
      *(v148 + 32) = v145;
      *(v148 + 40) = 0;
      *&v279 = v273;
      *(&v279 + 1) = v114;
      v280 = v115;
      v281 = v116;
      sub_263320();
      *&v279 = v286;
      v149 = v237;
      sub_E1C8C(v112, v237, type metadata accessor for NavigationStyleViewModifier);
      v150 = (*(v235 + 80) + 16) & ~*(v235 + 80);
      v151 = (v236 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
      v152 = swift_allocObject();
      sub_D78BC(v149, v152 + v150, type metadata accessor for NavigationStyleViewModifier);
      *(v152 + v151) = 0x4034000000000000;
      *(v152 + ((v151 + 15) & 0xFFFFFFFFFFFFFFF8)) = v117;
      v153 = sub_E16B0();
      v154 = sub_6EBA4();
      v155 = v253;
      sub_262E50();

      sub_8E80(v146, &qword_31D008, &qword_274178);
      v156 = v240;
      (*(v240 + 16))(v256, v155, v261);
      swift_storeEnumTagMultiPayload();
      v157 = sub_2F9C(&qword_31CFF8, &qword_274170);
      v158 = sub_8E38(&qword_31D000, &qword_31CFF0, &qword_274168);
      *&v279 = &type metadata for Solarium;
      *(&v279 + 1) = &protocol witness table for Solarium;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v160 = sub_261760();
      v161 = sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle);
      v162 = v259;
      *&v279 = v259;
      *(&v279 + 1) = v160;
      v280 = v158;
      v281 = v161;
      v163 = swift_getOpaqueTypeConformance2();
      v279 = __PAIR128__(v260, v162);
      v280 = v157;
      v281 = v158;
      v282 = OpaqueTypeConformance2;
      v283 = v163;
      swift_getOpaqueTypeConformance2();
      *&v279 = v147;
      *(&v279 + 1) = &type metadata for CGFloat;
      v280 = v153;
      v281 = v154;
      swift_getOpaqueTypeConformance2();
      v164 = v258;
      v165 = v261;
      sub_261F80();
      sub_8198(v164, v264, &qword_31CFE8, &qword_274160);
      swift_storeEnumTagMultiPayload();
      sub_E1478();
      sub_E1A40();
      v166 = v265;
      sub_261F80();
      sub_8E80(v164, &qword_31CFE8, &qword_274160);
      sub_8198(v166, v276, &qword_31CFD8, &qword_274158);
      swift_storeEnumTagMultiPayload();
      sub_E11CC();
      sub_E13EC();
      sub_261F80();
      sub_8E80(v166, &qword_31CFD8, &qword_274158);
      return (*(v156 + 8))(v253, v165);
    }

    else
    {
      v202 = *v67;
      sub_F7CC((v67 + 8), &v287);
      v203 = v232;
      v204 = v233;
      v205 = &v233[*(v232 + 48)];
      v206 = sub_2EF0(&qword_31D0F8, &qword_274210);
      v205[3] = v206;
      v205[4] = sub_8E38(&qword_31D100, &qword_31D0F8, &qword_274210);
      v207 = sub_10934(v205);
      (*(v244 + 56))(v207, 1, 1, v245);
      sub_30CC(&v287, v204 + v203[13]);
      v208 = swift_allocObject();
      *(v208 + 16) = v202;
      sub_2604C0();
      sub_260420();
      v209 = v204 + v203[9];
      *v209 = swift_getKeyPath();
      *(v209 + 8) = 0;
      v210 = v203[10];
      *(v204 + v210) = swift_getKeyPath();
      sub_2EF0(&qword_316930, &qword_2689A0);
      swift_storeEnumTagMultiPayload();
      v211 = v204 + v203[11];
      *v211 = swift_getKeyPath();
      *(v211 + 40) = 0;
      v212 = (v207 + *(v206 + 36));
      *v212 = sub_E1D4C;
      v212[1] = v208;
      sub_263500();
      v213 = v251;
      sub_261DF0();
      sub_2EF0(&qword_31D090, &qword_2741C0);
      v214 = sub_8E38(&qword_31D098, &qword_31D088, &qword_2741B8);
      *&v279 = &type metadata for Solarium;
      *(&v279 + 1) = &protocol witness table for Solarium;
      swift_getOpaqueTypeConformance2();
      v215 = sub_261760();
      v216 = sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle);
      *&v279 = v203;
      *(&v279 + 1) = v215;
      v280 = v214;
      v281 = v216;
      swift_getOpaqueTypeConformance2();
      v217 = v239;
      v218 = v260;
      sub_262E80();
      (*(v252 + 8))(v213, v218);
      sub_8E80(v204, &qword_31D088, &qword_2741B8);
      v219 = (v217 + *(v266 + 36));
      v220 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
      v221 = enum case for Image.Scale.medium(_:);
      v222 = sub_2630F0();
      (*(*(v222 - 8) + 104))(v219 + v220, v221, v222);
      *v219 = swift_getKeyPath();
      sub_8198(v217, v264, &qword_31D080, &qword_2741B0);
      swift_storeEnumTagMultiPayload();
      sub_E1478();
      sub_E1A40();
      v223 = v265;
      sub_261F80();
      sub_8198(v223, v276, &qword_31CFD8, &qword_274158);
      swift_storeEnumTagMultiPayload();
      sub_E11CC();
      sub_E13EC();
      sub_261F80();
      sub_8E80(v223, &qword_31CFD8, &qword_274158);
      sub_8E80(v217, &qword_31D080, &qword_2741B0);
      return sub_3080(&v287);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v69 = *(v67 + 1);
      *&v273 = *v67;
      v271 = v69;
      v70 = sub_2EF0(&qword_31B7C0, &unk_270F60);
      v71 = *(v70 + 64);
      v72 = v272;
      sub_22148(&v67[*(v70 + 48)], v272, &qword_316960, &unk_2689F0);
      sub_F7CC(&v67[v71], &v279);
      v73 = v259;
      v74 = v226;
      v75 = &v226[*(v259 + 48)];
      v76 = sub_2EF0(&qword_31D120, &unk_2742F0);
      v75[3] = v76;
      v75[4] = sub_8E38(&qword_31D128, &qword_31D120, &unk_2742F0);
      v77 = sub_10934(v75);
      sub_8198(v72, v77, &qword_316960, &unk_2689F0);
      sub_30CC(&v279, v74 + v73[13]);
      v78 = swift_allocObject();
      v79 = v271;
      *(v78 + 16) = v273;
      *(v78 + 24) = v79;
      sub_2604C0();
      sub_260420();
      v80 = v74 + v73[9];
      *v80 = swift_getKeyPath();
      *(v80 + 8) = 0;
      v81 = v73[10];
      *(v74 + v81) = swift_getKeyPath();
      sub_2EF0(&qword_316930, &qword_2689A0);
      swift_storeEnumTagMultiPayload();
      v82 = v74 + v73[11];
      *v82 = swift_getKeyPath();
      *(v82 + 40) = 0;
      v83 = (v77 + *(v76 + 36));
      *v83 = sub_E22E8;
      v83[1] = v78;
      sub_263500();
      v84 = v251;
      sub_261DF0();
      v85 = sub_2EF0(&qword_31CFF8, &qword_274170);
      v86 = sub_8E38(&qword_31D000, &qword_31CFF0, &qword_274168);
      *&v287 = &type metadata for Solarium;
      *(&v287 + 1) = &protocol witness table for Solarium;
      v87 = swift_getOpaqueTypeConformance2();
      v88 = sub_261760();
      v89 = sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle);
      *&v287 = v73;
      *(&v287 + 1) = v88;
      v90 = v86;
      *&v288 = v86;
      *(&v288 + 1) = v89;
      v224 = swift_getOpaqueTypeConformance2();
      v91 = v249;
      v92 = v260;
      sub_262E80();
      (*(v252 + 8))(v84, v92);
      sub_8E80(v74, &qword_31CFF0, &qword_274168);
      v93 = v91;
      v94 = v255;
      (*(v250 + 16))(v256, v93, v255);
      swift_storeEnumTagMultiPayload();
      *&v287 = v259;
      *(&v287 + 1) = v92;
      *&v288 = v85;
      *(&v288 + 1) = v90;
      *&v289 = v87;
      *(&v289 + 1) = v224;
      swift_getOpaqueTypeConformance2();
      v95 = sub_E16B0();
      v96 = sub_6EBA4();
      *&v287 = v257;
      *(&v287 + 1) = &type metadata for CGFloat;
      *&v288 = v95;
      *(&v288 + 1) = v96;
      swift_getOpaqueTypeConformance2();
      v97 = v258;
      sub_261F80();
      sub_8198(v97, v264, &qword_31CFE8, &qword_274160);
      swift_storeEnumTagMultiPayload();
      sub_E1478();
      sub_E1A40();
      v98 = v265;
      sub_261F80();
      sub_8E80(v97, &qword_31CFE8, &qword_274160);
      sub_8198(v98, v276, &qword_31CFD8, &qword_274158);
      swift_storeEnumTagMultiPayload();
      sub_E11CC();
      sub_E13EC();
      sub_261F80();
      sub_8E80(v98, &qword_31CFD8, &qword_274158);
      (*(v250 + 8))(v249, v94);
      v99 = &v279;
LABEL_13:
      sub_3080(v99);
      return sub_8E80(v272, &qword_316960, &unk_2689F0);
    }

    v190 = *(sub_2EF0(&qword_31B7B8, &unk_277F10) + 48);
    v191 = v244;
    v192 = v241;
    v193 = v245;
    (*(v244 + 32))(v241, v67, v245);
    sub_F7CC(&v67[v190], &v287);
    v194 = v248;
    v195 = &v32[*(v248 + 48)];
    v195[3] = type metadata accessor for DefaultLabelButtonContent();
    v195[4] = sub_E0978(&qword_316940, type metadata accessor for DefaultLabelButtonContent);
    v196 = sub_10934(v195);
    (*(v191 + 16))(v196, v192, v193);
    sub_30CC(&v287, &v32[v194[13]]);
    sub_2604C0();
    sub_260420();
    v197 = &v32[v194[9]];
    *v197 = swift_getKeyPath();
    v197[8] = 0;
    v198 = v194[10];
    *&v32[v198] = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v199 = &v32[v194[11]];
    *v199 = swift_getKeyPath();
    v199[40] = 0;
    sub_8198(v32, v246, &qword_316938, &qword_274150);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31CFC0, &qword_316948, &qword_2689E0);
    sub_8E38(&qword_31CFC8, &qword_316938, &qword_274150);
    v200 = v247;
    sub_261F80();
    sub_8198(v200, v269, &qword_31CFB8, &unk_274140);
    swift_storeEnumTagMultiPayload();
    sub_E1258();
    sub_E130C();
    v201 = v270;
    sub_261F80();
    sub_8E80(v200, &qword_31CFB8, &unk_274140);
    sub_8198(v201, v276, &qword_31CF90, &qword_274130);
    swift_storeEnumTagMultiPayload();
    sub_E11CC();
    sub_E13EC();
    sub_261F80();
    sub_8E80(v201, &qword_31CF90, &qword_274130);
    sub_8E80(v32, &qword_316938, &qword_274150);
    sub_3080(&v287);
    return (*(v191 + 8))(v241, v193);
  }
}

uint64_t sub_DCEEC()
{
  v1 = v0;
  v2 = type metadata accessor for ToolbarItemType(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NavigationStyle(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E1C8C(v1, v13, type metadata accessor for NavigationStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    v14 = v13[1];

    v16 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v17 = v16[12];
    v18 = *(v13 + v16[16]);

    v19 = *(v13 + v16[20]);
    result = sub_E0F58(v13 + v17, type metadata accessor for ToolbarPrincipalType);
    v21 = *(v19 + 16);
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v22 = sub_2EF0(&qword_31CB80, &qword_273CC8);
    v23 = *(v13 + *(v22 + 48));

    v19 = *(v13 + *(v22 + 64));
    v24 = sub_260BD0();
    result = (*(*(v24 - 8) + 8))(v13, v24);
    v21 = *(v19 + 16);
    if (!v21)
    {
LABEL_9:

      return 0;
    }
  }

  v25 = 0;
  while (v25 < *(v19 + 16))
  {
    sub_E1C8C(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, v9, type metadata accessor for ToolbarItemType);
    sub_D78BC(v9, v7, type metadata accessor for ToolbarItemType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      sub_E0F58(v7, type metadata accessor for ToolbarItemType);
      return 2;
    }

    ++v25;
    result = sub_E0F58(v7, type metadata accessor for ToolbarItemType);
    if (v21 == v25)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_DD1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NavigationStyleViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v13[1] = a1;
  sub_E1C8C(a2, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationStyleViewModifier);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_D78BC(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for NavigationStyleViewModifier);

  sub_2EF0(&qword_31C8D0, &qword_273588);
  sub_2EF0(&qword_31CF80, &qword_274128);
  sub_8E38(&qword_31D0A8, &qword_31C8D0, &qword_273588);
  sub_E1140();
  sub_E0978(&qword_31D0B0, type metadata accessor for ToolbarItemType);
  sub_2633C0();
  v11 = sub_262EF0();
  result = sub_2EF0(&qword_31CF58, &qword_274118);
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_DD414()
{
  v1 = v0;
  v2 = type metadata accessor for ToolbarItemType(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NavigationStyle(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E1C8C(v1, v13, type metadata accessor for NavigationStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    v14 = v13[1];

    v16 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v17 = v16[12];
    v18 = *(v13 + v16[16]);
    v19 = *(v13 + v16[20]);

    result = sub_E0F58(v13 + v17, type metadata accessor for ToolbarPrincipalType);
    v21 = *(v18 + 16);
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v22 = sub_2EF0(&qword_31CB80, &qword_273CC8);
    v18 = *(v13 + *(v22 + 48));
    v23 = *(v13 + *(v22 + 64));

    v24 = sub_260BD0();
    result = (*(*(v24 - 8) + 8))(v13, v24);
    v21 = *(v18 + 16);
    if (!v21)
    {
LABEL_9:

      return 0;
    }
  }

  v25 = 0;
  while (v25 < *(v18 + 16))
  {
    sub_E1C8C(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, v9, type metadata accessor for ToolbarItemType);
    sub_D78BC(v9, v7, type metadata accessor for ToolbarItemType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      sub_E0F58(v7, type metadata accessor for ToolbarItemType);
      return 2;
    }

    ++v25;
    result = sub_E0F58(v7, type metadata accessor for ToolbarItemType);
    if (v21 == v25)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_DD710(uint64_t a1, uint64_t a2)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + *(type metadata accessor for NavigationStyleViewModifier(0) + 52);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v9, 0);
    (*(v4 + 8))(v7, v3);
  }

  sub_2EF0(&qword_31D218, &unk_2744A8);
  v11 = *(sub_261820() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_267D30;
  sub_261810();
  sub_2EF0(&qword_31CE88, &qword_274010);
  sub_8E38(&qword_31CE80, &qword_31CE88, &qword_274010);
  sub_262E20();
}

uint64_t sub_DD97C@<X0>(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, int *a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v112 = a6;
  v107 = a5;
  v133 = a1;
  v127 = a7;
  v131 = sub_2EF0(&qword_31D160, &qword_2743F0);
  v12 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v130 = &v103 - v13;
  v116 = sub_2EF0(&qword_31D168, &qword_2743F8);
  v14 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v114 = &v103 - v15;
  v16 = sub_2EF0(&qword_31D170, &qword_274400);
  v128 = *(v16 - 8);
  v129 = v16;
  v17 = *(v128 + 64);
  __chkstk_darwin(v16);
  v117 = &v103 - v18;
  v110 = sub_2EF0(&qword_31D178, &qword_274408);
  v109 = *(v110 - 8);
  v19 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v103 - v20;
  v115 = sub_2EF0(&qword_31D180, &qword_274410);
  v113 = *(v115 - 8);
  v21 = *(v113 + 64);
  v22 = __chkstk_darwin(v115);
  v111 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v126 = &v103 - v24;
  v25 = sub_2EF0(&qword_31D188, &qword_274418);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v125 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v134 = &v103 - v29;
  v124 = sub_2EF0(&qword_31D190, &qword_274420);
  v119 = *(v124 - 1);
  v30 = *(v119 + 64);
  __chkstk_darwin(v124);
  v106 = &v103 - v31;
  v120 = sub_2EF0(&qword_31D198, &qword_274428);
  v105 = *(v120 - 8);
  v32 = *(v105 + 64);
  __chkstk_darwin(v120);
  v104 = &v103 - v33;
  v34 = sub_261C90();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2EF0(&qword_31D1A0, &qword_274430);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v43 = &v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v103 - v44;
  v46 = sub_262040();
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = &v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2EF0(&qword_31D1A8, &qword_274438);
  v122 = *(v123 - 8);
  v50 = *(v122 + 64);
  __chkstk_darwin(v123);
  v52 = &v103 - v51;
  sub_262030();
  v135 = v133;
  v136 = a2;
  v132 = a3;
  v133 = a2;
  v137 = a3;
  v138 = a8;
  sub_2EF0(&qword_31D1B0, &qword_274440);
  sub_E295C();
  v121 = v52;
  v118 = v49;
  sub_261250();
  v53 = type metadata accessor for NavigationStyleViewModifier(0);
  v54 = a4 + v53[13];
  v55 = *v54;
  if (*(v54 + 8) == 1)
  {
    if (v55)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_264900();
    v56 = a4;
    v57 = sub_2624B0();
    sub_260D10();

    a4 = v56;
    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v55, 0);
    (*(v35 + 8))(v38, v34);
    if (v140)
    {
LABEL_6:
      (*(v119 + 56))(v43, 1, 1, v124);
      v58 = sub_8E38(&qword_31D1D8, &qword_31D198, &qword_274428);
      v140 = v120;
      v141 = v58;
      swift_getOpaqueTypeConformance2();
      sub_2620A0();
      sub_8E80(v43, &qword_31D1A0, &qword_274430);
      goto LABEL_8;
    }
  }

  if (_UISolariumEnabled())
  {
    goto LABEL_6;
  }

  v59 = sub_262010();
  __chkstk_darwin(v59);
  v60 = v132;
  *(&v103 - 4) = v133;
  *(&v103 - 3) = v60;
  *(&v103 - 2) = a8;
  v103 = v53;
  sub_2EF0(&qword_31D200, &qword_274458);
  sub_E2A64(&qword_31D208, &qword_31D200, &qword_274458, sub_E2B6C);
  v61 = v104;
  sub_261250();
  v62 = sub_8E38(&qword_31D1D8, &qword_31D198, &qword_274428);
  v63 = v106;
  v64 = v120;
  sub_262090();
  v65 = v119;
  v66 = v124;
  (*(v119 + 16))(v43, v63, v124);
  (*(v65 + 56))(v43, 0, 1, v66);
  v140 = v64;
  v141 = v62;
  swift_getOpaqueTypeConformance2();
  sub_2620A0();
  sub_8E80(v43, &qword_31D1A0, &qword_274430);
  v67 = v66;
  v53 = v103;
  (*(v65 + 8))(v63, v67);
  (*(v105 + 8))(v61, v64);
LABEL_8:
  v124 = v45;
  v68 = a4 + v53[7];
  v69 = *v68;
  v70 = *(v68 + 8);
  LOBYTE(v68) = *(v68 + 16);
  v140 = v69;
  v141 = v70;
  v142 = v68;
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  if (v139)
  {
    v71 = v125;
    (*(v128 + 56))(v125, 1, 1, v129);
    sub_8E38(&qword_31D1F8, &qword_31D170, &qword_274400);
    sub_2620A0();
    sub_8E80(v71, &qword_31D188, &qword_274418);
  }

  else
  {
    v72 = sub_262020();
    __chkstk_darwin(v72);
    *(&v103 - 6) = v107;
    *(&v103 - 5) = a4;
    v73 = v132;
    *(&v103 - 4) = v133;
    *(&v103 - 3) = v73;
    *(&v103 - 2) = a8;
    v74 = a4;
    v120 = sub_2EF0(&qword_31D1E0, &qword_274450);
    sub_E2A64(&qword_31D1E8, &qword_31D1E0, &qword_274450, sub_E1004);
    v75 = v108;
    sub_261250();
    v76 = v53[5];
    sub_DCEEC();
    sub_8E38(&qword_31D1F0, &qword_31D178, &qword_274408);
    v77 = v110;
    sub_2615A0();
    v78 = *(v109 + 8);
    v78(v75, v77);
    v79 = sub_262010();
    __chkstk_darwin(v79);
    *(&v103 - 6) = v112;
    *(&v103 - 5) = v74;
    v80 = v132;
    *(&v103 - 4) = v133;
    *(&v103 - 3) = v80;
    *(&v103 - 2) = a8;
    sub_261250();
    sub_DD414();
    v81 = v111;
    sub_2615A0();
    v78(v75, v77);
    v82 = *(v116 + 48);
    v83 = v113;
    v84 = *(v113 + 16);
    v85 = v114;
    v86 = v126;
    v87 = v115;
    v84(v114, v126, v115);
    v84(&v85[v82], v81, v87);
    v88 = v117;
    sub_261E90();
    v90 = v128;
    v89 = v129;
    v91 = v125;
    (*(v128 + 16))(v125, v88, v129);
    (*(v90 + 56))(v91, 0, 1, v89);
    sub_8E38(&qword_31D1F8, &qword_31D170, &qword_274400);
    sub_2620A0();
    sub_8E80(v91, &qword_31D188, &qword_274418);
    (*(v90 + 8))(v88, v89);
    v92 = *(v83 + 8);
    v92(v81, v87);
    v92(v86, v87);
  }

  v93 = v130;
  v94 = *(v131 + 48);
  v95 = *(v131 + 64);
  v96 = v122;
  v97 = v121;
  v98 = v123;
  (*(v122 + 16))(v130, v121, v123);
  v99 = v124;
  sub_8198(v124, &v93[v94], &qword_31D1A0, &qword_274430);
  v100 = &v93[v95];
  v101 = v134;
  sub_8198(v134, v100, &qword_31D188, &qword_274418);
  sub_261E90();
  sub_8E80(v101, &qword_31D188, &qword_274418);
  sub_8E80(v99, &qword_31D1A0, &qword_274430);
  return (*(v96 + 8))(v97, v98);
}

uint64_t sub_DE900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_2EF0(&qword_316208, &qword_268BD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v34 - v12;
  v14 = sub_260BD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ToolbarPrincipalType(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E1C8C(a1, v22, type metadata accessor for ToolbarPrincipalType);
  v23 = *(sub_2EF0(&qword_31CB70, &unk_273CB8) + 48);
  (*(v15 + 32))(v18, v22, v14);
  sub_22148(&v22[v23], v13, &qword_316208, &qword_268BD0);
  (*(v15 + 16))(a4, v18, v14);
  v24 = type metadata accessor for UberNavigationTitleView();
  sub_8198(v13, a4 + v24[5], &qword_316208, &qword_268BD0);
  v25 = v24[6];
  *(a4 + v25) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v26 = v24[7];
  *(a4 + v26) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v27 = a4 + v24[8];
  *v27 = a2;
  *(v27 + 8) = a3;
  *(v27 + 16) = a5;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v36 = a2;
  v37 = a3;
  v38 = a5;

  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263340();

  sub_8E80(v13, &qword_316208, &qword_268BD0);
  (*(v15 + 8))(v18, v14);
  v29 = v34[4];
  v30 = v34[5];
  LOBYTE(v14) = v35;
  v34[0] = v24;
  v34[1] = &type metadata for Bool;
  v34[2] = sub_E0978(&qword_31D1C0, type metadata accessor for UberNavigationTitleView);
  v31 = swift_getKeyPath();
  result = sub_2EF0(&qword_31D1B0, &qword_274440);
  v33 = a4 + *(result + 36);
  *v33 = KeyPath;
  *(v33 + 8) = v29;
  *(v33 + 16) = v30;
  *(v33 + 24) = v14;
  *(v33 + 32) = v31;
  return result;
}

uint64_t sub_DECDC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263340();

  sub_E2B6C();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_DEDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for NavigationStyleViewModifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v27 = a1;
  sub_E1C8C(a2, v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationStyleViewModifier);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  sub_D78BC(v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for NavigationStyleViewModifier);

  sub_2EF0(&qword_31C8D0, &qword_273588);
  sub_2EF0(&qword_31CF80, &qword_274128);
  sub_8E38(&qword_31D0A8, &qword_31C8D0, &qword_273588);
  sub_E1140();
  sub_E0978(&qword_31D0B0, type metadata accessor for ToolbarItemType);
  sub_2633C0();
  v17 = sub_262EF0();
  v18 = sub_2EF0(&qword_31CF58, &qword_274118);
  *(a5 + *(v18 + 36)) = v17;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v27 = a3;
  v28 = a4;
  v29 = a6;
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263340();

  v20 = v25[4];
  v21 = v25[5];
  LOBYTE(v15) = v26;
  v25[0] = v18;
  v25[1] = &type metadata for Bool;
  v25[2] = sub_E1004();
  v22 = swift_getKeyPath();
  result = sub_2EF0(&qword_31D1E0, &qword_274450);
  v24 = a5 + *(result + 36);
  *v24 = KeyPath;
  *(v24 + 8) = v20;
  *(v24 + 16) = v21;
  *(v24 + 24) = v15;
  *(v24 + 32) = v22;
  return result;
}

uint64_t sub_DF0BC@<X0>(uint64_t a1@<X8>)
{
  sub_10A84();

  v2 = sub_2628F0();
  v4 = v3;
  v6 = v5;
  v7 = sub_262840();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_39DBC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_DF1B0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v78 = a5;
  v79 = a6;
  v76 = a3;
  v77 = a4;
  v75 = a1;
  v80 = a7;
  v8 = type metadata accessor for CoverView();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_3188E0, &qword_274300);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v73 - v15;
  v73 = sub_2EF0(&qword_31D130, &qword_274308);
  v17 = *(*(v73 - 8) + 64);
  v18 = __chkstk_darwin(v73);
  v81 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v73 - v21;
  __chkstk_darwin(v20);
  v74 = &v73 - v23;
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  *(v12 + 6) = swift_getKeyPath();
  v12[56] = 0;
  v24 = v9[8];
  *&v12[v24] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v25 = v9[9];
  *&v12[v25] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v26 = &v12[v9[10]];
  sub_5757C(a2, v103);
  type metadata accessor for ProfileRestrictions();
  sub_E0978(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v26 = sub_261900();
  v26[1] = v27;
  v28 = &v12[v9[11]];
  LOBYTE(v102[0]) = 1;
  sub_2631D0();
  v29 = *(&v103[0] + 1);
  *v28 = v103[0];
  *(v28 + 1) = v29;
  v30 = &v12[v9[12]];
  v31 = a2[3];
  v33 = a2[4];
  v32 = a2[5];
  *(v30 + 4) = v33;
  *(v30 + 5) = v32;
  v34 = a2[5];
  v36 = a2[6];
  v35 = a2[7];
  *(v30 + 6) = v36;
  *(v30 + 7) = v35;
  v37 = a2[1];
  *v30 = *a2;
  *(v30 + 1) = v37;
  v38 = a2[3];
  v40 = *a2;
  v39 = a2[1];
  *(v30 + 2) = a2[2];
  *(v30 + 3) = v38;
  v41 = v9[13];
  v42 = a2[5];
  v97 = a2[4];
  v98 = v42;
  v43 = a2[7];
  v99 = a2[6];
  v100 = v43;
  v44 = a2[3];
  v95 = a2[2];
  v96 = v44;
  v45 = a2[1];
  v93 = *a2;
  v94 = v45;
  v103[2] = v95;
  v103[3] = v31;
  v12[v41] = 0;
  v103[0] = v40;
  v103[1] = v39;
  v46 = a2[7];
  v103[6] = v36;
  v103[7] = v46;
  v103[4] = v33;
  v103[5] = v34;
  LODWORD(v9) = sub_2F8B8(v103);
  v47 = sub_2F950(v103);
  if (!v9)
  {
    v49 = *(v47 + 16);
  }

  v48 = v80;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_D78BC(v12, v16, type metadata accessor for CoverView);
  v50 = &v16[*(v13 + 36)];
  v51 = *&v92[39];
  *v50 = *&v92[23];
  *(v50 + 1) = v51;
  v52 = v93;
  *(v50 + 2) = *&v92[55];
  v102[4] = v97;
  v102[5] = v98;
  v102[6] = v99;
  v102[7] = v100;
  v102[2] = v95;
  v102[3] = v96;
  v102[0] = v52;
  v102[1] = v94;
  v53 = sub_2F8B8(v102);
  v54 = sub_2F950(v102);
  if (v53 || (v55 = *(v54 + 64)) == 0)
  {
    v56 = 0;
    v55 = 0xE000000000000000;
  }

  else
  {
    v56 = *(v54 + 56);
    v57 = *(v54 + 64);
  }

  *&v101[0] = v56;
  *(&v101[0] + 1) = v55;
  sub_E2390();
  sub_10A84();
  sub_262C00();

  sub_8E80(v16, &qword_3188E0, &qword_274300);
  v101[4] = v97;
  v101[5] = v98;
  v101[6] = v99;
  v101[7] = v100;
  v101[0] = v93;
  v101[1] = v94;
  v101[2] = v95;
  v101[3] = v96;
  v58 = sub_2F8B8(v101);
  v59 = sub_2F950(v101);
  if (v58 || !v59[8])
  {
    v60 = 0;
    v61 = 0xE000000000000000;
  }

  else
  {
    v60 = v59[9];
    v61 = v59[10];
  }

  v86 = v60;
  v87 = v61;
  v62 = v74;
  sub_261710();

  sub_8E80(v22, &qword_31D130, &qword_274308);
  v63 = sub_261E60();
  LOBYTE(v86) = 0;
  sub_DF8E0(v76, v77, v75, v78, v79, v83);
  *&v82[7] = v83[0];
  *&v82[23] = v83[1];
  *&v82[39] = v83[2];
  *&v82[55] = v83[3];
  v64 = v86;
  v65 = v81;
  sub_8198(v62, v81, &qword_31D130, &qword_274308);
  sub_8198(v65, v48, &qword_31D130, &qword_274308);
  v66 = v48 + *(sub_2EF0(&qword_31D140, &qword_274398) + 48);
  *&v84 = v63;
  *(&v84 + 1) = 0x4008000000000000;
  v85[0] = v64;
  *&v85[1] = *v82;
  *&v85[17] = *&v82[16];
  *&v85[33] = *&v82[32];
  *&v85[49] = *&v82[48];
  v67 = *&v82[63];
  *&v85[64] = *&v82[63];
  v68 = *v85;
  *v66 = v84;
  *(v66 + 16) = v68;
  v69 = *&v85[16];
  v70 = *&v85[32];
  v71 = *&v85[48];
  *(v66 + 80) = v67;
  *(v66 + 48) = v70;
  *(v66 + 64) = v71;
  *(v66 + 32) = v69;
  sub_8198(&v84, &v86, &qword_31D148, &unk_2743A0);
  sub_8E80(v62, &qword_31D130, &qword_274308);
  v86 = v63;
  v87 = 0x4008000000000000;
  v88 = v64;
  v90 = *&v82[16];
  v91 = *&v82[32];
  *v92 = *&v82[48];
  *&v92[15] = *&v82[63];
  v89 = *v82;
  sub_8E80(&v86, &qword_31D148, &unk_2743A0);
  return sub_8E80(v65, &qword_31D130, &qword_274308);
}

uint64_t sub_DF8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v82 = a4;
  v83 = a5;
  v86 = a6;
  v87 = a3;
  v8 = sub_2EF0(&qword_318458, &unk_26B270);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v85 = &v68 - v10;
  v84 = sub_262730();
  v81 = *(v84 - 8);
  v11 = *(v81 + 64);
  __chkstk_darwin(v84);
  v80 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ColorConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v88 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FontConstants.SheetHeader(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FontConstants(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v23;
  v90 = a1;
  v91 = a2;
  v72 = sub_10A84();

  v24 = sub_2628F0();
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for NavigationStyleViewModifier(0);
  v71 = *(v29 + 40);
  sub_40D40(v23);
  v70 = type metadata accessor for FontConstants.Environment;
  v68 = v19;
  sub_D78BC(v23, v19, type metadata accessor for FontConstants.Environment);
  sub_2626A0();
  sub_2625A0();

  v75 = type metadata accessor for FontConstants.SheetHeader;
  sub_E0F58(v19, type metadata accessor for FontConstants.SheetHeader);
  v30 = sub_262840();
  v32 = v31;
  v34 = v33;
  sub_39DBC(v24, v26, v28 & 1);

  v74 = *(v29 + 48);
  v35 = v88;
  sub_404B8(v88);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v73 = type metadata accessor for ColorConstants;
  sub_E0F58(v35, type metadata accessor for ColorConstants);
  v36 = sub_2627E0();
  v78 = v37;
  v79 = v36;
  v77 = v38;
  v76 = v39;
  sub_39DBC(v30, v32, v34 & 1);

  v90 = v82;
  v91 = v83;

  v40 = sub_2628F0();
  v42 = v41;
  LOBYTE(v29) = v43;
  v44 = v69;
  sub_40D40(v69);
  v45 = v68;
  sub_D78BC(v44, v68, v70);
  v47 = v80;
  v46 = v81;
  v48 = v84;
  (*(v81 + 104))(v80, enum case for Font.TextStyle.subheadline(_:), v84);
  v49 = sub_2625C0();
  v50 = v85;
  (*(*(v49 - 8) + 56))(v85, 1, 1, v49);
  sub_262630();
  sub_262680();
  sub_8E80(v50, &qword_318458, &unk_26B270);
  (*(v46 + 8))(v47, v48);
  sub_E0F58(v45, v75);
  v51 = sub_262840();
  v53 = v52;
  LOBYTE(v45) = v54;
  sub_39DBC(v40, v42, v29 & 1);

  v55 = v88;
  sub_404B8(v88);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_E0F58(v55, v73);
  v56 = sub_2627E0();
  v58 = v57;
  LOBYTE(v40) = v59;
  v61 = v60;
  sub_39DBC(v51, v53, v45 & 1);

  v62 = v76 & 1;
  v89 = v76 & 1;
  LOBYTE(v90) = v76 & 1;
  v92 = v40 & 1;
  v63 = v86;
  v64 = v78;
  v65 = v79;
  v66 = v77;
  *v86 = v79;
  v63[1] = v66;
  *(v63 + 16) = v62;
  v63[3] = v64;
  v63[4] = v56;
  v63[5] = v58;
  *(v63 + 48) = v40 & 1;
  v63[7] = v61;
  sub_43B58(v65, v66, v62);

  sub_43B58(v56, v58, v40 & 1);

  sub_39DBC(v56, v58, v40 & 1);

  sub_39DBC(v65, v66, v89);
}

uint64_t sub_DFF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, a2, &qword_31D028, &qword_274188);
  result = sub_2EF0(&qword_31D030, &qword_274190);
  *(a2 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_DFF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for NavigationStyleViewModifier(0) + 36));
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v3[2];
  sub_2EF0(&qword_31CE10, &qword_273FD0);
  return sub_2631F0();
}

uint64_t sub_E0008()
{
  sub_263500();
  type metadata accessor for PlainToolbarIconView();
  sub_E0978(&qword_31D150, type metadata accessor for PlainToolbarIconView);
  sub_6684C();
  return sub_263510();
}

uint64_t sub_E00EC@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for PlainToolbarIconView() + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t sub_E0178(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = sub_261760();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261750();
  sub_2EF0(a2, a3);
  sub_8E38(a4, a2, a3);
  sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle);
  sub_262A50();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_E02EC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_2620F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_31CE08, &qword_273FC8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v19 - v12;
  sub_D88E0(v2, a1, v19 - v12);
  sub_262510();
  v14 = v2 + *(a2 + 36);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v19[3] = v15;
  v20 = v16;
  v21 = v17;
  sub_2EF0(&qword_31CE10, &qword_273FD0);
  sub_2631E0();
  sub_2620D0();
  sub_E04C8();
  sub_262B30();
  (*(v6 + 8))(v9, v5);
  return sub_8E80(v13, &qword_31CE08, &qword_273FC8);
}

unint64_t sub_E04C8()
{
  result = qword_31CE18;
  if (!qword_31CE18)
  {
    sub_2F9C(&qword_31CE08, &qword_273FC8);
    sub_E054C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE18);
  }

  return result;
}

unint64_t sub_E054C()
{
  result = qword_31CE20;
  if (!qword_31CE20)
  {
    sub_2F9C(&qword_31CE28, &qword_273FD8);
    sub_E05D8();
    sub_E0B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE20);
  }

  return result;
}

unint64_t sub_E05D8()
{
  result = qword_31CE30;
  if (!qword_31CE30)
  {
    sub_2F9C(&qword_31CE38, &qword_273FE0);
    sub_E0664();
    sub_E0AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE30);
  }

  return result;
}

unint64_t sub_E0664()
{
  result = qword_31CE40;
  if (!qword_31CE40)
  {
    sub_2F9C(&qword_31CE48, &qword_273FE8);
    sub_2F9C(&qword_31CE50, &qword_273FF0);
    sub_2F9C(&qword_31CE58, &qword_273FF8);
    sub_2F9C(&qword_31CE60, &qword_274000);
    sub_E0804();
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31CEA0, &qword_274018);
    sub_E0A14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE40);
  }

  return result;
}

unint64_t sub_E0804()
{
  result = qword_31CE68;
  if (!qword_31CE68)
  {
    sub_2F9C(&qword_31CE60, &qword_274000);
    sub_E0890();
    sub_E09C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE68);
  }

  return result;
}

unint64_t sub_E0890()
{
  result = qword_31CE70;
  if (!qword_31CE70)
  {
    sub_2F9C(&qword_31CE78, &qword_274008);
    sub_8E38(&qword_31CE80, &qword_31CE88, &qword_274010);
    sub_E0978(&qword_31CE90, type metadata accessor for NavigationTitleForNonRootPage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE70);
  }

  return result;
}

uint64_t sub_E0978(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_E09C0()
{
  result = qword_31CE98;
  if (!qword_31CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE98);
  }

  return result;
}

unint64_t sub_E0A14()
{
  result = qword_31CEA8;
  if (!qword_31CEA8)
  {
    sub_2F9C(&qword_31CEA0, &qword_274018);
    sub_8E38(&qword_31CEB0, &qword_31CEB8, &unk_274020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CEA8);
  }

  return result;
}

unint64_t sub_E0AC4()
{
  result = qword_31CEC0;
  if (!qword_31CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CEC0);
  }

  return result;
}

unint64_t sub_E0B18()
{
  result = qword_31CEC8;
  if (!qword_31CEC8)
  {
    sub_2F9C(&qword_31CED0, &qword_274030);
    sub_2F9C(&qword_31CED8, &qword_274038);
    sub_E0BE0();
    swift_getOpaqueTypeConformance2();
    sub_E0E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CEC8);
  }

  return result;
}

unint64_t sub_E0BE0()
{
  result = qword_31CEE0;
  if (!qword_31CEE0)
  {
    sub_2F9C(&qword_31CED8, &qword_274038);
    sub_2F9C(&qword_31CEE8, &qword_274040);
    sub_2F9C(&qword_31CEF0, &qword_274048);
    sub_2F9C(&qword_31CE88, &qword_274010);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31CF00, &qword_274058);
    sub_8E38(&qword_31CE80, &qword_31CE88, &qword_274010);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31CF08, &qword_31CEF0, &qword_274048);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CEE0);
  }

  return result;
}

unint64_t sub_E0E44()
{
  result = qword_31CF10;
  if (!qword_31CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF10);
  }

  return result;
}

uint64_t sub_E0ED4@<X0>(_BYTE *a1@<X8>)
{
  sub_6E2E0();
  result = sub_261CA0();
  if (v5 == 1)
  {
    sub_E28F8();
    result = sub_261CA0();
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_E0F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_E1004()
{
  result = qword_31CF60;
  if (!qword_31CF60)
  {
    sub_2F9C(&qword_31CF58, &qword_274118);
    sub_E10BC();
    sub_8E38(&qword_317598, &qword_3175A0, &qword_269A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF60);
  }

  return result;
}

unint64_t sub_E10BC()
{
  result = qword_31CF68;
  if (!qword_31CF68)
  {
    sub_2F9C(&qword_31CF70, &qword_274120);
    sub_E1140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF68);
  }

  return result;
}

unint64_t sub_E1140()
{
  result = qword_31CF78;
  if (!qword_31CF78)
  {
    sub_2F9C(&qword_31CF80, &qword_274128);
    sub_E11CC();
    sub_E13EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF78);
  }

  return result;
}

unint64_t sub_E11CC()
{
  result = qword_31CF88;
  if (!qword_31CF88)
  {
    sub_2F9C(&qword_31CF90, &qword_274130);
    sub_E1258();
    sub_E130C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF88);
  }

  return result;
}

unint64_t sub_E1258()
{
  result = qword_31CF98;
  if (!qword_31CF98)
  {
    sub_2F9C(&qword_31CFA0, &qword_274138);
    sub_E0978(&qword_31CFA8, type metadata accessor for NavigationActionMenuButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF98);
  }

  return result;
}

unint64_t sub_E130C()
{
  result = qword_31CFB0;
  if (!qword_31CFB0)
  {
    sub_2F9C(&qword_31CFB8, &unk_274140);
    sub_8E38(&qword_31CFC0, &qword_316948, &qword_2689E0);
    sub_8E38(&qword_31CFC8, &qword_316938, &qword_274150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CFB0);
  }

  return result;
}

unint64_t sub_E13EC()
{
  result = qword_31CFD0;
  if (!qword_31CFD0)
  {
    sub_2F9C(&qword_31CFD8, &qword_274158);
    sub_E1478();
    sub_E1A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CFD0);
  }

  return result;
}

unint64_t sub_E1478()
{
  result = qword_31CFE0;
  if (!qword_31CFE0)
  {
    sub_2F9C(&qword_31CFE8, &qword_274160);
    sub_2F9C(&qword_31CFF0, &qword_274168);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31CFF8, &qword_274170);
    sub_8E38(&qword_31D000, &qword_31CFF0, &qword_274168);
    swift_getOpaqueTypeConformance2();
    sub_261760();
    sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31D008, &qword_274178);
    sub_E16B0();
    sub_6EBA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CFE0);
  }

  return result;
}

unint64_t sub_E16B0()
{
  result = qword_31D010;
  if (!qword_31D010)
  {
    sub_2F9C(&qword_31D008, &qword_274178);
    sub_E173C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D010);
  }

  return result;
}

unint64_t sub_E173C()
{
  result = qword_31D018;
  if (!qword_31D018)
  {
    sub_2F9C(&qword_31D020, &qword_274180);
    sub_2F9C(&qword_31D028, &qword_274188);
    sub_2F9C(&qword_31D030, &qword_274190);
    sub_E1870();
    sub_E19B4();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31D068, &qword_31D070, &qword_2741A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D018);
  }

  return result;
}

unint64_t sub_E1870()
{
  result = qword_31D038;
  if (!qword_31D038)
  {
    sub_2F9C(&qword_31D028, &qword_274188);
    sub_E18FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D038);
  }

  return result;
}

unint64_t sub_E18FC()
{
  result = qword_31D040;
  if (!qword_31D040)
  {
    sub_2F9C(&qword_31D048, &qword_274198);
    sub_8E38(&qword_31D050, &qword_31D058, &qword_2741A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D040);
  }

  return result;
}

unint64_t sub_E19B4()
{
  result = qword_31D060;
  if (!qword_31D060)
  {
    sub_2F9C(&qword_31D030, &qword_274190);
    sub_E1870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D060);
  }

  return result;
}

unint64_t sub_E1A40()
{
  result = qword_31D078;
  if (!qword_31D078)
  {
    sub_2F9C(&qword_31D080, &qword_2741B0);
    sub_2F9C(&qword_31D088, &qword_2741B8);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31D090, &qword_2741C0);
    sub_8E38(&qword_31D098, &qword_31D088, &qword_2741B8);
    swift_getOpaqueTypeConformance2();
    sub_261760();
    sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D078);
  }

  return result;
}

uint64_t sub_E1C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_E1CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

unint64_t sub_E1D74()
{
  result = qword_31D110;
  if (!qword_31D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D110);
  }

  return result;
}

uint64_t sub_E1DC8()
{
  v1 = type metadata accessor for NavigationStyleViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = (v3 + v1[5]);
  type metadata accessor for NavigationStyle(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;

    v9 = v7[1];

    v10 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v11 = v7 + *(v10 + 48);
    v6(v11, v4);
    v12 = *(sub_2EF0(&qword_31CB70, &unk_273CB8) + 48);
    if (!(*(v5 + 48))(&v11[v12], 1, v4))
    {
      v6(&v11[v12], v4);
    }

    v13 = *(v7 + *(v10 + 64));

    v14 = (v10 + 80);
  }

  else
  {
    v6(v7, v4);
    v15 = sub_2EF0(&qword_31CB80, &qword_273CC8);
    v16 = *(v7 + *(v15 + 48));

    v14 = (v15 + 64);
  }

  v17 = *(v7 + *v14);

  v18 = (v3 + v1[6]);
  v19 = *v18;

  v20 = v18[1];

  v21 = (v3 + v1[7]);
  v22 = *v21;

  v23 = v21[1];

  v24 = v3 + v1[8];
  sub_E1CF8(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32), *(v24 + 33));
  v25 = *(v3 + v1[9] + 16);

  v26 = (v3 + v1[10]);
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v28 = sub_261690();
    (*(*(v28 - 8) + 8))(&v26[v27], v28);
  }

  else
  {
    v29 = *v26;
  }

  v30 = (v3 + v1[11]);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v32 = sub_261690();
    (*(*(v32 - 8) + 8))(&v30[v31], v32);
  }

  else
  {
    v33 = *v30;
  }

  v34 = v1[12];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_261180();
    (*(*(v35 - 8) + 8))(v3 + v34, v35);
  }

  else
  {
    v36 = *(v3 + v34);
  }

  sub_3074(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_E21F8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationStyleViewModifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_DFF80(a1, a2, v2 + v6);
}

uint64_t sub_E22B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_E22E8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_E232C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_E236C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_DF0BC(a1);
}

unint64_t sub_E2390()
{
  result = qword_31D138;
  if (!qword_31D138)
  {
    sub_2F9C(&qword_3188E0, &qword_274300);
    sub_E0978(&qword_317D60, type metadata accessor for CoverView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D138);
  }

  return result;
}

uint64_t sub_E2468()
{
  v1 = type metadata accessor for NavigationStyleViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = (v3 + v1[5]);
  type metadata accessor for NavigationStyle(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;

    v9 = v7[1];

    v10 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v11 = v7 + *(v10 + 48);
    v6(v11, v4);
    v12 = *(sub_2EF0(&qword_31CB70, &unk_273CB8) + 48);
    if (!(*(v5 + 48))(&v11[v12], 1, v4))
    {
      v6(&v11[v12], v4);
    }

    v13 = *(v7 + *(v10 + 64));

    v14 = (v10 + 80);
  }

  else
  {
    v6(v7, v4);
    v15 = sub_2EF0(&qword_31CB80, &qword_273CC8);
    v16 = *(v7 + *(v15 + 48));

    v14 = (v15 + 64);
  }

  v17 = *(v7 + *v14);

  v18 = (v3 + v1[6]);
  v19 = *v18;

  v20 = v18[1];

  v21 = (v3 + v1[7]);
  v22 = *v21;

  v23 = v21[1];

  v24 = v3 + v1[8];
  sub_E1CF8(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32), *(v24 + 33));
  v25 = *(v3 + v1[9] + 16);

  v26 = (v3 + v1[10]);
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v28 = sub_261690();
    (*(*(v28 - 8) + 8))(&v26[v27], v28);
  }

  else
  {
    v29 = *v26;
  }

  v30 = (v3 + v1[11]);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v32 = sub_261690();
    (*(*(v32 - 8) + 8))(&v30[v31], v32);
  }

  else
  {
    v33 = *v30;
  }

  v34 = v1[12];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_261180();
    (*(*(v35 - 8) + 8))(v3 + v34, v35);
  }

  else
  {
    v36 = *(v3 + v34);
  }

  sub_3074(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_E2884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationStyleViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_DA6A8(a1, a2);
}

unint64_t sub_E28F8()
{
  result = qword_31D158;
  if (!qword_31D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D158);
  }

  return result;
}

unint64_t sub_E295C()
{
  result = qword_31D1B8;
  if (!qword_31D1B8)
  {
    sub_2F9C(&qword_31D1B0, &qword_274440);
    sub_E0978(&qword_31D1C0, type metadata accessor for UberNavigationTitleView);
    sub_8E38(&qword_31D1C8, &qword_31D1D0, &qword_274448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D1B8);
  }

  return result;
}

uint64_t sub_E2A64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_8E38(&qword_31D1C8, &qword_31D1D0, &qword_274448);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E2B60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_DECDC(a1);
}

unint64_t sub_E2B6C()
{
  result = qword_31D210;
  if (!qword_31D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D210);
  }

  return result;
}

unint64_t sub_E2BC8()
{
  result = qword_31D220;
  if (!qword_31D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D220);
  }

  return result;
}

uint64_t sub_E2C1C()
{
  sub_2F9C(&qword_31CE08, &qword_273FC8);
  sub_E04C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PageScrollActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316408, &qword_26DE30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PageScrollAction();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_E3274(a1, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_E32DC(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_2EF0(&qword_31D228, &unk_27B470);

  v13 = sub_2641C0();
  v14 = sub_264770();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2744E0;
  v15[5] = v12;
  v15[6] = v13;

  sub_E39C4(0, 0, v7, &unk_27DF80, v15);

  return v13;
}

uint64_t sub_E2EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = sub_264750();
  v3[10] = sub_264740();
  v4 = sub_2EF0(&qword_31D238, &qword_274588);
  v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_E2F94;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_E2F94()
{
  v2 = v0;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 96) = v2;

  v7 = sub_264730();
  if (v2)
  {
    v8 = sub_E3210;
  }

  else
  {
    v8 = sub_E30F0;
  }

  return (_swift_task_switch)(v8, v7, v6);
}

uint64_t sub_E30F0()
{
  v12 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[5];
  v5 = v0[6];
  sub_2E18(v0 + 2, v4);
  v11 = *(v3 + *(type metadata accessor for PageScrollAction() + 24));
  v6 = (*(v5 + 8))(&v11, v4, v5);
  v7 = sub_263B00();
  v8 = &enum case for ActionOutcome.performed(_:);
  if ((v6 & 1) == 0)
  {
    v8 = &enum case for ActionOutcome.unsupported(_:);
  }

  (*(*(v7 - 8) + 104))(v2, *v8, v7);
  sub_3080(v0 + 2);
  v9 = v0[1];

  return v9();
}

uint64_t sub_E3210()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_E3274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageScrollAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E32DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageScrollAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3340(uint64_t a1)
{
  v4 = *(type metadata accessor for PageScrollAction() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_160A8;

  return sub_E2EB8(a1, v6, v1 + v5);
}

uint64_t sub_E3424(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316408, &qword_26DE30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PageScrollAction();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_E3274(a1, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_E32DC(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_2EF0(&qword_31D228, &unk_27B470);

  v13 = sub_2641C0();
  v14 = sub_264770();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_274560;
  v15[5] = v12;
  v15[6] = v13;

  sub_E39C4(0, 0, v7, &unk_274568, v15);

  return v13;
}

uint64_t sub_E3648(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_263B00();
  v6[3] = v8;
  v9 = *(v8 - 8);
  v6[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_E37A8;

  return v15(v11);
}

uint64_t sub_E37A8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_E394C;
  }

  else
  {
    v3 = sub_E38BC;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_E38BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_2641B0();
  (*(v2 + 8))(v1, v4);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_E394C()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_2641A0();

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_E39C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2EF0(&qword_316408, &qword_26DE30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1582C(a3, v25 - v11);
  v13 = sub_264770();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_157C4(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_264760();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_264730();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2644C0() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_157C4(a3);

    return v23;
  }

LABEL_8:
  sub_157C4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_E3C84()
{
  result = qword_31D230;
  if (!qword_31D230)
  {
    type metadata accessor for PageScrollAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D230);
  }

  return result;
}

uint64_t sub_E3CEC()
{
  v1 = type metadata accessor for PageScrollAction();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = sub_260620();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = *(v1 + 20);
  v8 = sub_263AF0();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_E3E50(uint64_t a1)
{
  v4 = *(type metadata accessor for PageScrollAction() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_156D0;

  return sub_E2EB8(a1, v6, v1 + v5);
}

uint64_t sub_E3F38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_E3F80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_156D0;

  return sub_E3648(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_E405C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E4154;

  return v7(a1);
}

uint64_t sub_E4154()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_E424C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_E4284(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_160A8;

  return sub_E405C(a1, v5);
}

double DefaultShelfHeaderComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_E4358()
{
  sub_E46C0();

  return sub_261CB0();
}

uint64_t View._localizerForAnalytics(_:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_30CC(a1, v3);
  sub_262A90();

  return sub_E450C(v3);
}

uint64_t sub_E44A8(uint64_t a1)
{
  sub_E4650(a1, v3);
  sub_E4650(v3, &v2);
  sub_E46C0();
  sub_261CC0();
  return sub_E450C(v3);
}

uint64_t sub_E450C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31D240, &qword_279000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E4574(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_31D248, &qword_2745B8);
  sub_261730();
  sub_E45EC();
  return swift_getWitnessTable();
}

unint64_t sub_E45EC()
{
  result = qword_31D250;
  if (!qword_31D250)
  {
    sub_2F9C(&qword_31D248, &qword_2745B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D250);
  }

  return result;
}

uint64_t sub_E4650(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31D240, &qword_279000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_E46C0()
{
  result = qword_31D258;
  if (!qword_31D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D258);
  }

  return result;
}

uint64_t sub_E4788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_E480C(uint64_t a1)
{
  v2 = sub_E4A1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E4848(uint64_t a1)
{
  v2 = sub_E4A1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfHeaderComponentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_31D2B8, &qword_274628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_E4A1C();
  sub_265120();
  if (!v2)
  {
    sub_2EF0(&qword_31D2B0, &qword_274620);
    sub_E4A70();
    sub_264DF0();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v18 = v15;
    v19 = v16;
    v12 = v17;
    v20 = v17;
    *a2 = v15;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
  }

  return sub_3080(a1);
}

unint64_t sub_E4A1C()
{
  result = qword_31D2C0;
  if (!qword_31D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D2C0);
  }

  return result;
}

unint64_t sub_E4A70()
{
  result = qword_31D2C8;
  if (!qword_31D2C8)
  {
    sub_2F9C(&qword_31D2B0, &qword_274620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D2C8);
  }

  return result;
}

unint64_t sub_E4AEC()
{
  qword_31D278 = &type metadata for DefaultShelfHeaderComponentModel;
  result = sub_E53B8();
  qword_31D280 = result;
  return result;
}

uint64_t sub_E4B80()
{
  v0 = sub_2EF0(&qword_315D48, &qword_266E40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v10 - v2;
  *&v12[0] = 0xD000000000000012;
  *(&v12[0] + 1) = 0x8000000000292090;
  v4 = type metadata accessor for EmptyComponentModel();
  v15 = v4;
  v16 = sub_E5A08(&qword_31D3A8, type metadata accessor for EmptyComponentModel);
  v5 = sub_10934(&v14);
  sub_264B70();
  v6 = sub_263E50();
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *(v5 + 7) = 0u;
  v5[9] = 0;
  *(v5 + 5) = 0u;
  sub_34A0(v10, (v5 + 5), &qword_315D38, &unk_266E30);
  v8 = *(v4 + 24);
  v7(v5 + v8, 1, 1, v6);
  sub_34A0(v12, (v5 + 5), &qword_315D38, &unk_266E30);
  sub_34A0(v3, v5 + v8, &qword_315D48, &qword_266E40);
  return sub_F7CC(&v14, &unk_31D288);
}

uint64_t sub_E4DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_E4B48(a2, v4);
}

uint64_t DefaultShelfHeaderComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_263E50();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_E4EC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_E59A0(v12, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t DefaultShelfHeaderComponent.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);

  return swift_storeEnumTagMultiPayload();
}

double DefaultShelfHeaderComponent.content(for:)@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_262FA0();
  sub_E4EC4(v9);
  sub_E59A0(v9, v5, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v5);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  result = *&v20;
  *(a1 + 40) = v20;
  return result;
}

uint64_t sub_E5250(uint64_t a1)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_E52B0()
{
  result = qword_31D2D0;
  if (!qword_31D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D2D0);
  }

  return result;
}

uint64_t type metadata accessor for DefaultShelfHeaderComponent()
{
  result = qword_31D348;
  if (!qword_31D348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_E53B8()
{
  result = qword_31D2E0;
  if (!qword_31D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D2E0);
  }

  return result;
}

uint64_t sub_E54D4(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  sub_E593C(v3, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5A08(&qword_31D2E8, type metadata accessor for DefaultShelfHeaderComponent);
  return sub_260B30();
}

uint64_t sub_E5628(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_E56B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_E5730()
{
  sub_3E754();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_E57A0()
{
  result = qword_31D380;
  if (!qword_31D380)
  {
    sub_2F9C(&qword_31D388, &qword_274840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D380);
  }

  return result;
}

unint64_t sub_E5838()
{
  result = qword_31D390;
  if (!qword_31D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D390);
  }

  return result;
}

unint64_t sub_E5890()
{
  result = qword_31D398;
  if (!qword_31D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D398);
  }

  return result;
}

unint64_t sub_E58E8()
{
  result = qword_31D3A0;
  if (!qword_31D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3A0);
  }

  return result;
}

uint64_t sub_E593C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultShelfHeaderComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E59A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_E5A08(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 CoverViewModel.init(style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

double static CoverViewModel.CoverStyle.image(assetInfo:intrinsicSize:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D1>)
{
  sub_30CC(a1, v10);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(v10, v11);
  *(&v17 + 1) = a3;
  sub_230A8(v11);
  v5 = v15;
  a2[4] = v14;
  a2[5] = v5;
  v6 = v17;
  a2[6] = v16;
  a2[7] = v6;
  v7 = v11[1];
  *a2 = v11[0];
  a2[1] = v7;
  result = *&v12;
  v9 = v13;
  a2[2] = v12;
  a2[3] = v9;
  return result;
}

uint64_t CoverViewModel.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v11[4] = v1[4];
  v11[5] = v3;
  v4 = v1[7];
  v11[6] = v1[6];
  v11[7] = v4;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  v6 = v1[3];
  v11[2] = v1[2];
  v11[3] = v6;
  result = sub_2F8B8(v11);
  if (result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  else
  {
    v8 = sub_2F950(v11);
    v9 = v8[5];
    if (v9)
    {
      *a1 = v8[4];
      *(a1 + 8) = v9;
      *(a1 + 16) = 1;
    }

    else
    {
      v10 = v8[1];
      *a1 = *v8;
      *(a1 + 8) = v10;
      *(a1 + 16) = 0;
    }
  }

  return result;
}

uint64_t CoverViewModel.intrinsicSize.getter()
{
  v1 = v0[5];
  v16[4] = v0[4];
  v16[5] = v1;
  v2 = v0[7];
  v16[6] = v0[6];
  v16[7] = v2;
  v3 = v0[1];
  v16[0] = *v0;
  v16[1] = v3;
  v4 = v0[3];
  v16[2] = v0[2];
  v16[3] = v4;
  v5 = sub_2F8B8(v16);
  if (v5)
  {
    if (v5 == 1)
    {
      result = sub_2F950(v16);
      v7 = *result;
    }

    else
    {
      result = sub_2F950(v16);
      v14 = *result * 0.641025641;
    }
  }

  else
  {
    v8 = *(sub_2F950(v16) + 120);
    v9 = v0[5];
    v15[4] = v0[4];
    v15[5] = v9;
    v10 = v0[7];
    v15[6] = v0[6];
    v15[7] = v10;
    v11 = v0[1];
    v15[0] = *v0;
    v15[1] = v11;
    v12 = v0[3];
    v15[2] = v0[2];
    v15[3] = v12;
    result = sub_2F950(v15);
    v13 = v8 * *(result + 16);
  }

  return result;
}

double CoverViewModel.aspectRatio.getter()
{
  v1 = v0[5];
  v8[4] = v0[4];
  v8[5] = v1;
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = sub_2F8B8(v8);
  v6 = sub_2F950(v8);
  if (!v5)
  {
    return *(v6 + 16);
  }

  result = 1.0;
  if (v5 != 1)
  {
    return 0.641025641;
  }

  return result;
}

unint64_t CoverViewModel.id.getter()
{
  v1 = v0[5];
  v10[4] = v0[4];
  v10[5] = v1;
  v2 = v0[7];
  v10[6] = v0[6];
  v10[7] = v2;
  v3 = v0[1];
  v10[0] = *v0;
  v10[1] = v3;
  v4 = v0[3];
  v10[2] = v0[2];
  v10[3] = v4;
  v5 = sub_2F8B8(v10);
  v6 = sub_2F950(v10);
  if (v5)
  {
    if (v5 == 1)
    {
      return 0xD00000000000001BLL;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    v9 = *v6;
    v8 = v6[1];

    return v9;
  }
}

uint64_t CoverViewModel.axCustomContentLabel.getter()
{
  v1 = v0[5];
  v10[4] = v0[4];
  v10[5] = v1;
  v2 = v0[7];
  v10[6] = v0[6];
  v10[7] = v2;
  v3 = v0[1];
  v10[0] = *v0;
  v10[1] = v3;
  v4 = v0[3];
  v10[2] = v0[2];
  v10[3] = v4;
  v5 = sub_2F8B8(v10);
  v6 = sub_2F950(v10);
  if (v5)
  {
    return 0;
  }

  v7 = v6;
  result = *(v6 + 64);
  if (result)
  {
    v9 = *(v7 + 56);

    return v9;
  }

  return result;
}

uint64_t CoverViewModel.axCustomContentValue.getter()
{
  v1 = v0[5];
  v10[4] = v0[4];
  v10[5] = v1;
  v2 = v0[7];
  v10[6] = v0[6];
  v10[7] = v2;
  v3 = v0[1];
  v10[0] = *v0;
  v10[1] = v3;
  v4 = v0[3];
  v10[2] = v0[2];
  v10[3] = v4;
  v5 = sub_2F8B8(v10);
  v6 = sub_2F950(v10);
  if (v5 || !v6[8])
  {
    return 0;
  }

  v8 = v6[9];
  v7 = v6[10];

  return v8;
}

uint64_t CoverViewModel.CoverImageInfo.init(assetInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_31C238, &qword_274960);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  v9 = *(v8 + 8);
  v10 = sub_2606E0();
  v51 = v11;
  v52 = v10;
  v12 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_260950();
  v14 = v13;
  sub_30CC(a1, v53);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v15 = sub_260680();
  v16 = swift_dynamicCast();
  v17 = *(*(v15 - 8) + 56);
  if (v16)
  {
    v18 = *(v15 - 8);
    v17(v7, 0, 1, v15);
    v19 = sub_260670();
    (*(v18 + 8))(v7, v15);
  }

  else
  {
    v17(v7, 1, 1, v15);
    sub_8E80(v7, &qword_31C238, &qword_274960);
    v19 = 0;
  }

  v50 = v19 & 1;
  v20 = a1[4];
  sub_2E18(a1, a1[3]);
  v49 = sub_260860();
  v21 = a1[4];
  sub_2E18(a1, a1[3]);
  v22 = sub_260900();
  v47 = v23;
  v48 = v22;
  v24 = a1[4];
  sub_2E18(a1, a1[3]);
  LOBYTE(v46) = sub_260870() & 1;
  v46 = v46;
  v25 = a1[4];
  sub_2E18(a1, a1[3]);
  v26 = sub_2609A0();
  v44 = v27;
  v45 = v26;
  v28 = a1[4];
  sub_2E18(a1, a1[3]);
  v29 = sub_2609B0();
  v31 = v30;
  v32 = a1[4];
  sub_2E18(a1, a1[3]);
  LOBYTE(v32) = sub_260910();
  v33 = a1[4];
  sub_2E18(a1, a1[3]);
  v34 = sub_2608A0();
  v36 = v35;
  v37 = a1[4];
  sub_2E18(a1, a1[3]);
  v38 = sub_260860();
  v39 = v51;
  *a2 = v52;
  *(a2 + 8) = v39;
  *(a2 + 16) = v14;
  LOBYTE(v39) = v49;
  *(a2 + 24) = v50;
  *(a2 + 25) = v39;
  v40 = v47;
  *(a2 + 32) = v48;
  *(a2 + 40) = v40;
  *(a2 + 48) = v46;
  v41 = v44;
  *(a2 + 56) = v45;
  *(a2 + 64) = v41;
  *(a2 + 72) = v29;
  *(a2 + 80) = v31;
  *(a2 + 88) = v32 & 1;
  *(a2 + 96) = v34;
  *(a2 + 104) = v36;
  *(a2 + 112) = v38;
  return sub_3080(a1);
}

uint64_t CoverViewModel.axCoverProperties.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v11[4] = v1[4];
  v11[5] = v3;
  v4 = v1[7];
  v11[6] = v1[6];
  v11[7] = v4;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  v6 = v1[3];
  v11[2] = v1[2];
  v11[3] = v6;
  v7 = sub_2F8B8(v11);
  result = sub_2F950(v11);
  if (v7)
  {
    *(a1 + 41) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    v9 = *(result + 72);
    *a1 = *(result + 56);
    a1[1] = v9;
    a1[2] = *(result + 88);
    *(a1 + 41) = *(result + 97);
    return sub_8198(result + 56, &v10, &qword_31C388, &qword_2728F0);
  }

  return result;
}

uint64_t CoverViewModel.axSeriesLabel.getter()
{
  v1 = v0[5];
  v11[4] = v0[4];
  v11[5] = v1;
  v2 = v0[7];
  v11[6] = v0[6];
  v11[7] = v2;
  v3 = v0[1];
  v11[0] = *v0;
  v11[1] = v3;
  v4 = v0[3];
  v11[2] = v0[2];
  v11[3] = v4;
  v5 = sub_2F8B8(v11);
  v6 = sub_2F950(v11);
  if (v5)
  {
    return 0;
  }

  v7 = v6;
  result = 0;
  if (v7[8])
  {
    if (v7[13])
    {
      v9 = v7[12];
      v10 = v7[13];

      return v9;
    }
  }

  return result;
}

uint64_t CoverViewModel.style.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_E656C(v11, &v10);
}

uint64_t CoverViewModel.isRTL.getter()
{
  v1 = v0[5];
  v9[4] = v0[4];
  v9[5] = v1;
  v2 = v0[7];
  v9[6] = v0[6];
  v9[7] = v2;
  v3 = v0[1];
  v9[0] = *v0;
  v9[1] = v3;
  v4 = v0[3];
  v9[2] = v0[2];
  v9[3] = v4;
  v5 = sub_2F8B8(v9);
  v6 = sub_2F950(v9);
  if (v5)
  {
    if (v5 == 1)
    {
      return 0;
    }

    v8 = 8;
  }

  else
  {
    v8 = 24;
  }

  return *(v6 + v8);
}

uint64_t CoverViewModel.assetType.getter()
{
  v1 = v0[5];
  v8[4] = v0[4];
  v8[5] = v1;
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = sub_2F8B8(v8);
  v6 = sub_2F950(v8);
  if (v5)
  {
    return v5 != 1;
  }

  else
  {
    return *(v6 + 25);
  }
}

uint64_t CoverViewModel.CoverImageInfo.accessibilityInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 72);
  v7[0] = *(v1 + 56);
  v7[1] = v2;
  v8[0] = *(v1 + 88);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 97);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_8198(v7, &v6, &qword_31C388, &qword_2728F0);
}

__n128 CoverViewModel.CoverImageInfo.init(id:aspectRatio:isRTL:assetType:coverURLString:isExplicit:accessibilityInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *(a9 + 16) = a10;
  v10 = *(a8 + 16);
  *(a9 + 56) = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 25) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 72) = v10;
  *(a9 + 88) = *(a8 + 32);
  result = *(a8 + 41);
  *(a9 + 97) = result;
  return result;
}

uint64_t CoverViewModel.AccessibilityInfo.init(title:author:isSeries:seriesName:assetType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

unint64_t sub_E65A8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x63696C7078457369;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x7079547465737361;
  if (v1 != 3)
  {
    v4 = 0x4C52557265766F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6152746365707361;
  if (v1 != 1)
  {
    v5 = 0x4C54527369;
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

uint64_t sub_E6694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_EB454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E66C8(uint64_t a1)
{
  v2 = sub_EA5D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E6704(uint64_t a1)
{
  v2 = sub_EA5D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CoverViewModel.CoverImageInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_2EF0(&qword_31D3B0, &qword_274968);
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34);
  v8 = &v29 - v7;
  v9 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_EA5D4();
  v35 = v8;
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v10 = v5;
  LOBYTE(v40[0]) = 0;
  v11 = v34;
  v12 = sub_264DC0();
  v14 = v13;
  v33 = v12;
  LOBYTE(v36) = 1;
  sub_6E08();
  sub_264DF0();
  v15 = v40[0];
  LOBYTE(v40[0]) = 2;
  v16 = a1;
  v32 = sub_264DD0();
  LOBYTE(v36) = 3;
  sub_EA628();
  sub_264DF0();
  v17 = LOBYTE(v40[0]);
  LOBYTE(v40[0]) = 4;
  v29 = sub_264D70();
  v31 = v18;
  v30 = v17;
  LOBYTE(v40[0]) = 5;
  LOBYTE(v17) = sub_264DD0();
  v50 = 6;
  sub_EA67C();
  sub_264DB0();
  v32 &= 1u;
  v19 = v32;
  LOBYTE(v17) = v17 & 1;
  (*(v10 + 8))(v35, v11);
  *&v54[23] = v52;
  *&v54[7] = v51;
  *&v54[39] = v53[0];
  *&v54[48] = *(v53 + 9);
  *&v36 = v33;
  *(&v36 + 1) = v14;
  *&v37 = v15;
  BYTE8(v37) = v19;
  LOBYTE(v11) = v30;
  BYTE9(v37) = v30;
  v20 = v29;
  v21 = v31;
  *&v38 = v29;
  *(&v38 + 1) = v31;
  v39[0] = v17;
  *&v39[1] = *v54;
  *&v39[49] = *(v53 + 9);
  *&v39[33] = *&v54[32];
  *&v39[17] = *&v54[16];
  v22 = v36;
  v23 = v37;
  v24 = *v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v24;
  *a2 = v22;
  *(a2 + 16) = v23;
  v25 = *&v39[16];
  v26 = *&v39[32];
  v27 = *&v39[48];
  *(a2 + 112) = v39[64];
  *(a2 + 80) = v26;
  *(a2 + 96) = v27;
  *(a2 + 64) = v25;
  sub_EA6D0(&v36, v40);
  sub_3080(v16);
  v40[2] = v15;
  v46 = *v54;
  v47 = *&v54[16];
  v48 = *&v54[32];
  v40[0] = v33;
  v40[1] = v14;
  v41 = v32;
  v42 = v11;
  v43 = v20;
  v44 = v21;
  v45 = v17;
  v49 = *&v54[48];
  return sub_EA708(v40);
}

uint64_t PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.shelfID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_E6BF8()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x7365697265537369;
  v4 = 0x614E736569726573;
  if (v1 != 3)
  {
    v4 = 0x7079547465737361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F68747561;
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

uint64_t sub_E6C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_EB6B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E6CBC(uint64_t a1)
{
  v2 = sub_EA738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E6CF8(uint64_t a1)
{
  v2 = sub_EA738();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CoverViewModel.AccessibilityInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_31D3D0, &qword_274970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_EA738();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_264DC0();
  v30 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_264DC0();
  v29 = v14;
  v27 = v13;
  LOBYTE(v34[0]) = 2;
  v39 = sub_264DD0();
  LOBYTE(v34[0]) = 3;
  v26 = sub_264D70();
  v28 = v15;
  v40 = 4;
  sub_EA628();
  sub_264DB0();
  v39 &= 1u;
  v16 = v39;
  (*(v6 + 8))(v9, v5);
  v25 = v41;
  v18 = v29;
  v17 = v30;
  *&v31 = v11;
  *(&v31 + 1) = v30;
  v19 = v27;
  v20 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v33[0] = v16;
  v21 = v26;
  *&v33[8] = v26;
  *&v33[16] = v28;
  v33[24] = v41;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  a2[2] = *v33;
  *(a2 + 41) = *&v33[9];
  sub_EA78C(&v31, v34);
  sub_3080(a1);
  v34[0] = v11;
  v34[1] = v17;
  v34[2] = v19;
  v34[3] = v18;
  v35 = v39;
  v36 = v21;
  v37 = v20;
  v38 = v25;
  return sub_EA7C4(v34);
}

uint64_t sub_E70A4()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x6C6F686563616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_E710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_EB86C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E7134(uint64_t a1)
{
  v2 = sub_EA7F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E7170(uint64_t a1)
{
  v2 = sub_EA7F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_E71AC()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x666E496567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_E71E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666E496567616D69 && a2 == 0xE90000000000006FLL;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_E72C8(uint64_t a1)
{
  v2 = sub_EA8F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E7304(uint64_t a1)
{
  v2 = sub_EA8F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_E7354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_E73D8(uint64_t a1)
{
  v2 = sub_EA89C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E7414(uint64_t a1)
{
  v2 = sub_EA89C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_E7450()
{
  if (*v0)
  {
    result = 0x4C54527369;
  }

  else
  {
    result = 0x746867696568;
  }

  *v0;
  return result;
}

uint64_t sub_E7484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4C54527369 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_E7558(uint64_t a1)
{
  v2 = sub_EA848();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E7594(uint64_t a1)
{
  v2 = sub_EA848();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CoverViewModel.CoverStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v53 = a2;
  v3 = sub_2EF0(&qword_31D3E0, &qword_274978);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v54 = &v46 - v6;
  v7 = sub_2EF0(&qword_31D3E8, &qword_274980);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = sub_2EF0(&qword_31D3F0, &qword_274988);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = sub_2EF0(&qword_31D3F8, &qword_274990);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v57 = a1;
  sub_2E18(a1, v19);
  sub_EA7F4();
  v21 = v56;
  sub_265120();
  if (!v21)
  {
    v56 = v14;
    v22 = sub_264E00();
    v23 = (2 * *(v22 + 16)) | 1;
    v93 = v22;
    v94 = v22 + 32;
    v95 = 0;
    v96 = v23;
    v24 = sub_AFAC();
    if (v24 == 3 || v95 != v96 >> 1)
    {
      v27 = sub_264C10();
      swift_allocError();
      v28 = v18;
      v30 = v29;
      v31 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
      *v30 = &type metadata for CoverViewModel.CoverStyle;
      sub_264D60();
      sub_264BF0();
      (*(*(v27 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v27);
      swift_willThrow();
      (*(v55 + 8))(v28, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = v15;
      if (v24)
      {
        if (v24 == 1)
        {
          LOBYTE(v77) = 1;
          sub_EA89C();
          v25 = v10;
          sub_264D50();
          v26 = v53;
          v34 = v18;
          sub_6E08();
          v35 = v49;
          sub_264DF0();
          v36 = (v55 + 8);
          (*(v48 + 8))(v25, v35);
          (*v36)(v34, v47);
          swift_unknownObjectRelease();
          *&v77 = v69;
          sub_23050(&v77);
        }

        else
        {
          LOBYTE(v77) = 2;
          sub_EA848();
          sub_264D50();
          v26 = v53;
          LOBYTE(v77) = 0;
          sub_6E08();
          v37 = v51;
          sub_264DF0();
          v38 = v55;
          v39 = v69;
          LOBYTE(v60) = 1;
          v41 = sub_264DD0();
          (*(v52 + 8))(0, v37);
          (*(v38 + 8))(v18, v47);
          swift_unknownObjectRelease();
          *&v77 = v39;
          BYTE8(v77) = v41 & 1;
          sub_2307C(&v77);
        }

        v89 = v81;
        v90 = v82;
        v91 = v83;
        v92 = v84;
        v85 = v77;
        v86 = v78;
        v87 = v79;
        v88 = v80;
      }

      else
      {
        LOBYTE(v77) = 0;
        sub_EA8F0();
        v32 = v56;
        sub_264D50();
        v68 = 0;
        sub_EA944();
        sub_264DF0();
        v33 = v55;
        v64 = v73;
        v65 = v74;
        v66 = v75;
        v67 = v76;
        v60 = v69;
        v61 = v70;
        v62 = v71;
        v63 = v72;
        v58 = 1;
        sub_6E08();
        sub_264DF0();
        (*(v50 + 8))(v32, v11);
        (*(v33 + 8))(v18, v47);
        swift_unknownObjectRelease();
        v81 = v64;
        v82 = v65;
        v83 = v66;
        v77 = v60;
        v78 = v61;
        v79 = v62;
        LOBYTE(v84) = v67;
        v80 = v63;
        *(&v84 + 1) = v59;
        sub_230A8(&v77);
        v89 = v81;
        v90 = v82;
        v91 = v83;
        v92 = v84;
        v85 = v77;
        v86 = v78;
        v87 = v79;
        v88 = v80;
        v26 = v53;
      }

      v42 = v90;
      v26[4] = v89;
      v26[5] = v42;
      v43 = v92;
      v26[6] = v91;
      v26[7] = v43;
      v44 = v86;
      *v26 = v85;
      v26[1] = v44;
      v45 = v88;
      v26[2] = v87;
      v26[3] = v45;
    }
  }

  return sub_3080(v57);
}

uint64_t CoverViewModel.placeholderImageName.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = v0[5];
  v14[4] = v0[4];
  v14[5] = v2;
  v3 = v0[7];
  v14[6] = v0[6];
  v14[7] = v3;
  v4 = v0[1];
  v14[0] = *v0;
  v14[1] = v4;
  v5 = v0[3];
  v14[2] = v0[2];
  v14[3] = v5;
  v6 = sub_2F8B8(v14);
  v7 = sub_2F950(v14);
  if (v6)
  {
    if (v6 == 1)
    {
      return 0xD00000000000001BLL;
    }

    *(v7 + 8);
    return v1;
  }

  if (!*(v7 + 25))
  {
    return 0xD00000000000001BLL;
  }

  if (*(v7 + 25) == 1)
  {
    v8 = v0[5];
    v13[4] = v0[4];
    v13[5] = v8;
    v9 = v0[7];
    v13[6] = v0[6];
    v13[7] = v9;
    v10 = v0[1];
    v13[0] = *v0;
    v13[1] = v10;
    v11 = v0[3];
    v13[2] = v0[2];
    v13[3] = v11;
    *(sub_2F950(v13) + 24);
    return v1;
  }

  result = sub_264CD0();
  __break(1u);
  return result;
}

uint64_t CoverViewModel.axLabel.getter()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v54 - v7;
  v9 = sub_264410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = v0[5];
  v66[4] = v0[4];
  v66[5] = v17;
  v18 = v0[7];
  v66[6] = v0[6];
  v66[7] = v18;
  v19 = v0[1];
  v66[0] = *v0;
  v66[1] = v19;
  v20 = v0[3];
  v66[2] = v0[2];
  v66[3] = v20;
  v21 = sub_2F8B8(v66);
  v22 = sub_2F950(v66);
  if (v21)
  {
    return 0;
  }

  v62 = v5;
  v63 = v8;
  v25 = *(v22 + 56);
  v24 = *(v22 + 64);
  v23 = v22 + 56;
  if (!v24)
  {
    return 0;
  }

  v59 = v10;
  v64 = v9;
  v60 = v2;
  v61 = v1;
  v26 = *(v22 + 80);
  v57 = *(v22 + 72);
  v56 = *(v22 + 88);
  v27 = *(v22 + 104);
  v55 = *(v22 + 96);
  v58 = *(v22 + 112);
  sub_8198(v22 + 56, &v65, &qword_31C388, &qword_2728F0);

  v28 = sub_E9098(0, 1, 1, _swiftEmptyArrayStorage);
  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  v31 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
    v28 = sub_E9098((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v31;
  v32 = &v28[16 * v30];
  *(v32 + 4) = v25;
  *(v32 + 5) = v24;
  v33 = *(v28 + 3);
  v34 = v30 + 2;

  if ((v30 + 2) > (v33 >> 1))
  {
    v28 = sub_E9098((v33 > 1), v30 + 2, 1, v28);
  }

  *(v28 + 2) = v34;
  v35 = &v28[16 * v31];
  *(v35 + 4) = v57;
  *(v35 + 5) = v26;
  if (v56)
  {
    v36 = v59;
    if (v27)
    {
      v37 = *(v28 + 3);
      v38 = v30 + 3;

      if ((v30 + 3) > (v37 >> 1))
      {
        v28 = sub_E9098((v37 > 1), v30 + 3, 1, v28);
      }

      v39 = v61;
      v40 = v60;
      *(v28 + 2) = v38;
      v41 = &v28[16 * v34];
      *(v41 + 4) = v55;
      *(v41 + 5) = v27;
    }

    else
    {
      v39 = v61;
      v40 = v60;
    }
  }

  else
  {
    v39 = v61;
    v40 = v60;
    v36 = v59;
  }

  v43 = v64;
  if (v58 > 2)
  {
    sub_8E80(v23, &qword_31C388, &qword_2728F0);
  }

  else
  {
    v44 = v39;
    sub_2643A0();
    v45 = v63;
    sub_260260();
    (*(v36 + 16))(v13, v16, v43);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v40 + 16))(v62, v45, v44);
    v47 = sub_264490();
    v49 = v48;
    (*(v40 + 8))(v45, v44);
    (*(v36 + 8))(v16, v64);
    v51 = *(v28 + 2);
    v50 = *(v28 + 3);
    if (v51 >= v50 >> 1)
    {
      v28 = sub_E9098((v50 > 1), v51 + 1, 1, v28);
    }

    sub_8E80(v23, &qword_31C388, &qword_2728F0);
    *(v28 + 2) = v51 + 1;
    v52 = &v28[16 * v51];
    *(v52 + 4) = v47;
    *(v52 + 5) = v49;
  }

  v65 = v28;
  sub_2EF0(&qword_3160B0, &qword_267D40);
  sub_DDE0();
  v53 = sub_264340();

  return v53;
}

uint64_t static CoverViewModel.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v43 = a1[4];
  v44 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v45 = a1[6];
  v46 = v5;
  v6 = a1[1];
  v40[0] = *a1;
  v40[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v41 = a1[2];
  v42 = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  v47[2] = a2[2];
  v47[3] = v12;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a2;
  v47[0] = v10;
  v47[1] = v13;
  v16 = a2[5];
  v17 = a2[7];
  v50 = a2[6];
  v51 = v17;
  v18 = a2[5];
  v19 = a2[3];
  v48 = a2[4];
  v49 = v18;
  v36 = v43;
  v37 = v4;
  v20 = a1[7];
  v38 = v45;
  v39 = v20;
  v32 = v9;
  v33 = v8;
  v34 = v41;
  v35 = v3;
  v28 = v48;
  v29 = v16;
  v21 = a2[7];
  v30 = v50;
  v31 = v21;
  v24 = v15;
  v25 = v11;
  v26 = v14;
  v27 = v19;
  sub_E656C(v40, v53);
  sub_E656C(v47, v53);
  v22 = _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(&v32, &v24);
  v52[4] = v28;
  v52[5] = v29;
  v52[6] = v30;
  v52[7] = v31;
  v52[0] = v24;
  v52[1] = v25;
  v52[2] = v26;
  v52[3] = v27;
  sub_EA998(v52);
  v53[4] = v36;
  v53[5] = v37;
  v53[6] = v38;
  v53[7] = v39;
  v53[0] = v32;
  v53[1] = v33;
  v53[2] = v34;
  v53[3] = v35;
  sub_EA998(v53);
  return v22 & 1;
}

uint64_t sub_E890C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_E8990(uint64_t a1)
{
  v2 = sub_EA9C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E89CC(uint64_t a1)
{
  v2 = sub_EA9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CoverViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_31D428, &qword_274998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_EA9C8();
  sub_265120();
  if (!v2)
  {
    sub_EAA1C();
    sub_264DF0();
    (*(v6 + 8))(v9, v5);
    v11 = v16[5];
    a2[4] = v16[4];
    a2[5] = v11;
    v12 = v16[7];
    a2[6] = v16[6];
    a2[7] = v12;
    v13 = v16[1];
    *a2 = v16[0];
    a2[1] = v13;
    v14 = v16[3];
    a2[2] = v16[2];
    a2[3] = v14;
  }

  return sub_3080(a1);
}

uint64_t sub_E8B90@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1[5];
  v13[4] = v1[4];
  v13[5] = v3;
  v4 = v1[7];
  v13[6] = v1[6];
  v13[7] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  v6 = v1[3];
  v13[2] = v1[2];
  v13[3] = v6;
  v7 = sub_2F8B8(v13);
  v8 = sub_2F950(v13);
  if (v7)
  {
    v9 = v7 == 1;
    if (v7 == 1)
    {
      v10 = 0xD00000000000001BLL;
    }

    else
    {
      v10 = 0xD000000000000016;
    }

    if (v9)
    {
      result = 0x8000000000291580;
    }

    else
    {
      result = 0x8000000000291560;
    }
  }

  else
  {
    v10 = *v8;
    v12 = v8[1];
  }

  *a1 = v10;
  a1[1] = result;
  return result;
}

double CoverViewModel.init(assetInfo:intrinsicSize:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>, double a3@<D1>)
{
  sub_30CC(a1, &v15);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v15, v13);
  sub_3080(a1);
  v20 = v13[5];
  v21 = v13[6];
  v15 = v13[0];
  v16 = v13[1];
  v17 = v13[2];
  *&v22 = v14;
  v18 = v13[3];
  v19 = v13[4];
  *(&v22 + 1) = a3;
  sub_230A8(&v15);
  v6 = v20;
  v7 = v21;
  v8 = v18;
  a2[4] = v19;
  a2[5] = v6;
  v9 = v22;
  a2[6] = v7;
  a2[7] = v9;
  result = *&v15;
  v11 = v16;
  v12 = v17;
  *a2 = v15;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v8;
  return result;
}

char *sub_E8D1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_31D548, &qword_275610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_E8E6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_31D560, &unk_275630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E8F8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_317290, &qword_2697F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E9098(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_317240, &qword_269790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E91CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_31D4F0, &qword_2755B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_E92D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_31D540, &qword_275608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_E941C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2EF0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_E958C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2EF0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_E9768(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_31D530, &qword_2755F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E9894(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_31D508, &unk_2755D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_E99B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_31D520, &qword_2755E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_31D528, &qword_2755F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_E9AE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_317218, &unk_269760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_3160D0, &unk_270CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_E9C1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2EF0(&qword_31D520, &qword_2755E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v55 = a1[4];
  v56 = v3;
  v4 = a1[5];
  v5 = a1[7];
  v57 = a1[6];
  v58 = v5;
  v6 = a1[1];
  v51 = *a1;
  v52 = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v53 = a1[2];
  v54 = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  v61 = a2[2];
  v62 = v12;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a2;
  v59 = v10;
  v60 = v13;
  v16 = a2[5];
  v17 = a2[7];
  v65 = a2[6];
  v66 = v17;
  v18 = a2[3];
  v19 = a2[5];
  v63 = a2[4];
  v64 = v19;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[3];
  v67[2] = a1[2];
  v67[3] = v22;
  v67[0] = v20;
  v67[1] = v21;
  v23 = a1[7];
  v67[6] = a1[6];
  v67[7] = v23;
  v24 = a1[5];
  v67[4] = a1[4];
  v67[5] = v24;
  v67[10] = v14;
  v67[11] = v18;
  v67[8] = v15;
  v67[9] = v11;
  v25 = a2[7];
  v67[14] = v65;
  v67[15] = v25;
  v67[12] = v63;
  v67[13] = v16;
  v68[2] = v53;
  v68[3] = v2;
  v68[0] = v9;
  v68[1] = v8;
  v26 = a1[7];
  v68[6] = v57;
  v68[7] = v26;
  v68[4] = v55;
  v68[5] = v4;
  v27 = sub_2F8B8(v68);
  if (!v27)
  {
    v30 = sub_2F950(v68);
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v46 = v62;
    if (!sub_2F8B8(&v43))
    {
      v39 = sub_2F950(&v43);
      v28 = *(v30 + 120);
      v29 = *(v39 + 120);
      if (*v30 == *v39 && *(v30 + 8) == *(v39 + 8))
      {
        sub_E656C(&v59, v42);
        sub_E656C(&v51, v42);
        goto LABEL_15;
      }

      v40 = sub_264F10();
      sub_E656C(&v59, v42);
      sub_E656C(&v51, v42);
      sub_8E80(v67, &qword_31C3F0, &unk_272A40);
      if (v40)
      {
        return v28 == v29;
      }

      return 0;
    }

    v42[4] = v55;
    v42[5] = v56;
    v42[6] = v57;
    v42[7] = v58;
    v42[0] = v51;
    v42[1] = v52;
    v42[2] = v53;
    v42[3] = v54;
    v31 = sub_2F950(v42);
    sub_8198(v31, &v41, &qword_31D550, &qword_275618);
    goto LABEL_10;
  }

  if (v27 != 1)
  {
    v32 = sub_2F950(v68);
    v33 = *v32;
    v34 = *(v32 + 8);
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v46 = v62;
    if (sub_2F8B8(&v43) == 2)
    {
      v35 = sub_2F950(&v43);
      v36 = *v35;
      v37 = *(v35 + 8);
      sub_8E80(v67, &qword_31C3F0, &unk_272A40);
      if (v33 == v36)
      {
        return v34 ^ v37 ^ 1u;
      }

      return 0;
    }

    goto LABEL_10;
  }

  v28 = *sub_2F950(v68);
  v45 = v61;
  v46 = v62;
  v43 = v59;
  v44 = v60;
  v49 = v65;
  v50 = v66;
  v47 = v63;
  v48 = v64;
  if (sub_2F8B8(&v43) != 1)
  {
LABEL_10:
    sub_E656C(&v59, &v43);
    sub_8E80(v67, &qword_31C3F0, &unk_272A40);
    return 0;
  }

  v29 = *sub_2F950(&v43);
LABEL_15:
  sub_8E80(v67, &qword_31C3F0, &unk_272A40);
  return v28 == v29;
}

uint64_t _s7BooksUI14CoverViewModelV17AccessibilityInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v19 = *(a1 + 56);
  v20 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_264F10() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }

LABEL_10:
    if (v6)
    {
      if (!v10 || (v5 != v11 || v6 != v10) && (sub_264F10() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v19 == 3)
    {
      if (v20 == 3)
      {
        return 1;
      }
    }

    else if (v20 != 3)
    {
      v14 = sub_2609D0();
      v16 = v15;
      if (v14 == sub_2609D0() && v16 == v17)
      {
      }

      else
      {
        v18 = sub_264F10();

        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  v12 = sub_264F10();
  result = 0;
  if ((v12 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}