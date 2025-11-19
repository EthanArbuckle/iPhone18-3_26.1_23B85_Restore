uint64_t sub_100375870(unsigned __int16 a1)
{
  v2 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v2;
  }

  result = _s10TVEpisodesVMa(0);
  v4 = *(v1 + *(result + 44));
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 512;
  }

  v6 = 0;
  v7 = v4 + 32;
  while (v6 < *(v4 + 16))
  {
    v8 = *(v7 + v6);
    if (v8 > 3)
    {
      if (*(v7 + v6) > 5u)
      {
        if (v8 == 6)
        {
          v13 = 0xD000000000000010;
          v14 = 0x8000000100E3C6C0;
          if (v2 > 3u)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v13 = 0x7473696C79616C70;
          v14 = 0xEC00000065707954;
          if (v2 > 3u)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        if (v8 == 4)
        {
          v13 = 0x656C746974;
        }

        else
        {
          v13 = 0x79616C507473616CLL;
        }

        if (v8 == 4)
        {
          v14 = 0xE500000000000000;
        }

        else
        {
          v14 = 0xEE00657461446465;
        }

        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v9 = 0x44657361656C6572;
      if (v8 != 2)
      {
        v9 = 1918985593;
      }

      v10 = 0xEB00000000657461;
      if (v8 != 2)
      {
        v10 = 0xE400000000000000;
      }

      v11 = 0xD000000000000010;
      if (!*(v7 + v6))
      {
        v11 = 0x614E747369747261;
      }

      v12 = 0xEA0000000000656DLL;
      if (*(v7 + v6))
      {
        v12 = 0x8000000100E3C680;
      }

      if (*(v7 + v6) <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*(v7 + v6) <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v2 > 3u)
      {
LABEL_33:
        v15 = 0xD000000000000010;
        if (v2 != 6)
        {
          v15 = 0x7473696C79616C70;
        }

        v16 = 0xEC00000065707954;
        if (v2 == 6)
        {
          v16 = 0x8000000100E3C6C0;
        }

        v17 = 0x79616C507473616CLL;
        if (v2 == 4)
        {
          v17 = 0x656C746974;
        }

        v18 = 0xEE00657461446465;
        if (v2 == 4)
        {
          v18 = 0xE500000000000000;
        }

        if (v2 <= 5u)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }

        if (v2 <= 5u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v13 != v19)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }
    }

    if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v23 = 0x44657361656C6572;
      }

      else
      {
        v23 = 1918985593;
      }

      if (v2 == 2)
      {
        v20 = 0xEB00000000657461;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      if (v13 != v23)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v21 = 0x614E747369747261;
      v20 = 0xEA0000000000656DLL;
      if (v2)
      {
        v21 = 0xD000000000000010;
        v20 = 0x8000000100E3C680;
      }

      if (v13 != v21)
      {
        goto LABEL_55;
      }
    }

LABEL_54:
    if (v14 == v20)
    {

      return v2 & 0x1FF;
    }

LABEL_55:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      return v2 & 0x1FF;
    }

    if (v5 == ++v6)
    {
      return 512;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100375B90(unsigned __int16 a1)
{
  v1 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v1;
  }

  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v2 = static MusicLibrary.== infix(_:_:)();

  v4 = &off_101098AB8;
  if (v2)
  {
    v5 = &off_101098A90;
  }

  else
  {
    v5 = &off_101098AB8;
  }

  v6 = v5[2];
  if (!v6)
  {
LABEL_71:

    return 512;
  }

  v7 = 0;
  if (v2)
  {
    v4 = &off_101098A90;
  }

  v8 = v4 + 4;
  while (v7 < v5[2])
  {
    v9 = *(v8 + v7);
    if (v9 > 3)
    {
      if (*(v8 + v7) > 5u)
      {
        if (v9 == 6)
        {
          v14 = 0xD000000000000010;
          v15 = 0x8000000100E3C6C0;
          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v14 = 0x7473696C79616C70;
          v15 = 0xEC00000065707954;
          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        if (v9 == 4)
        {
          v14 = 0x656C746974;
        }

        else
        {
          v14 = 0x79616C507473616CLL;
        }

        if (v9 == 4)
        {
          v15 = 0xE500000000000000;
        }

        else
        {
          v15 = 0xEE00657461446465;
        }

        if (v1 > 3u)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v10 = 0x44657361656C6572;
      if (v9 != 2)
      {
        v10 = 1918985593;
      }

      v11 = 0xEB00000000657461;
      if (v9 != 2)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0xD000000000000010;
      if (!*(v8 + v7))
      {
        v12 = 0x614E747369747261;
      }

      v13 = 0xEA0000000000656DLL;
      if (*(v8 + v7))
      {
        v13 = 0x8000000100E3C680;
      }

      if (*(v8 + v7) <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (*(v8 + v7) <= 1u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      if (v1 > 3u)
      {
LABEL_38:
        v16 = 0xD000000000000010;
        if (v1 != 6)
        {
          v16 = 0x7473696C79616C70;
        }

        v17 = 0xEC00000065707954;
        if (v1 == 6)
        {
          v17 = 0x8000000100E3C6C0;
        }

        v18 = 0x79616C507473616CLL;
        if (v1 == 4)
        {
          v18 = 0x656C746974;
        }

        v19 = 0xEE00657461446465;
        if (v1 == 4)
        {
          v19 = 0xE500000000000000;
        }

        if (v1 <= 5u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v1 <= 5u)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v14 != v20)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    if (v1 > 1u)
    {
      if (v1 == 2)
      {
        v24 = 0x44657361656C6572;
      }

      else
      {
        v24 = 1918985593;
      }

      if (v1 == 2)
      {
        v21 = 0xEB00000000657461;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v14 != v24)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v22 = 0x614E747369747261;
      v21 = 0xEA0000000000656DLL;
      if (v1)
      {
        v22 = 0xD000000000000010;
        v21 = 0x8000000100E3C680;
      }

      if (v14 != v22)
      {
        goto LABEL_60;
      }
    }

LABEL_59:
    if (v15 == v21)
    {

LABEL_73:

      return v1 & 0x1FF;
    }

LABEL_60:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_73;
    }

    if (v6 == ++v7)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100375F40(unsigned __int16 a1, uint64_t (*a2)(void))
{
  v2 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v2;
  }

  result = a2();
  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
LABEL_66:

    return 512;
  }

  v6 = 0;
  while (v6 < *(v4 + 16))
  {
    v7 = *(v4 + v6 + 32);
    if (v7 > 3)
    {
      if (*(v4 + v6 + 32) > 5u)
      {
        if (v7 == 6)
        {
          v12 = 0xD000000000000010;
          v13 = 0x8000000100E3C6C0;
          if (v2 > 3u)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v12 = 0x7473696C79616C70;
          v13 = 0xEC00000065707954;
          if (v2 > 3u)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        if (v7 == 4)
        {
          v12 = 0x656C746974;
        }

        else
        {
          v12 = 0x79616C507473616CLL;
        }

        if (v7 == 4)
        {
          v13 = 0xE500000000000000;
        }

        else
        {
          v13 = 0xEE00657461446465;
        }

        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v8 = 0x44657361656C6572;
      if (v7 != 2)
      {
        v8 = 1918985593;
      }

      v9 = 0xEB00000000657461;
      if (v7 != 2)
      {
        v9 = 0xE400000000000000;
      }

      v10 = 0xD000000000000010;
      if (!*(v4 + v6 + 32))
      {
        v10 = 0x614E747369747261;
      }

      v11 = 0xEA0000000000656DLL;
      if (*(v4 + v6 + 32))
      {
        v11 = 0x8000000100E3C680;
      }

      if (*(v4 + v6 + 32) <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*(v4 + v6 + 32) <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (v2 > 3u)
      {
LABEL_33:
        v14 = 0xD000000000000010;
        if (v2 != 6)
        {
          v14 = 0x7473696C79616C70;
        }

        v15 = 0xEC00000065707954;
        if (v2 == 6)
        {
          v15 = 0x8000000100E3C6C0;
        }

        v16 = 0x79616C507473616CLL;
        if (v2 == 4)
        {
          v16 = 0x656C746974;
        }

        v17 = 0xEE00657461446465;
        if (v2 == 4)
        {
          v17 = 0xE500000000000000;
        }

        if (v2 <= 5u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        if (v2 <= 5u)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }

        if (v12 != v18)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }
    }

    if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v22 = 0x44657361656C6572;
      }

      else
      {
        v22 = 1918985593;
      }

      if (v2 == 2)
      {
        v19 = 0xEB00000000657461;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v12 != v22)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v20 = 0x614E747369747261;
      v19 = 0xEA0000000000656DLL;
      if (v2)
      {
        v20 = 0xD000000000000010;
        v19 = 0x8000000100E3C680;
      }

      if (v12 != v20)
      {
        goto LABEL_55;
      }
    }

LABEL_54:
    if (v13 == v19)
    {

LABEL_68:

      return v2 & 0x1FF;
    }

LABEL_55:
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_68;
    }

    if (v5 == ++v6)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100376264(unsigned __int16 a1)
{
  v2 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v2;
  }

  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 512;
  }

  v5 = a1;
  v6 = (v3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 <= 3)
    {
      break;
    }

    if (v7 > 5)
    {
      if (v7 == 6)
      {
        v13 = 0xD000000000000010;
        v14 = 0x8000000100E3C6C0;
        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v13 = 0x7473696C79616C70;
        v14 = 0xEC00000065707954;
        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v7 == 4)
      {
        v13 = 0x656C746974;
      }

      else
      {
        v13 = 0x79616C507473616CLL;
      }

      if (v7 == 4)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xEE00657461446465;
      }

      if (v2 > 3u)
      {
        goto LABEL_33;
      }
    }

LABEL_20:
    if (v2 > 1u)
    {
      if (v5 == 2)
      {
        v22 = 0x44657361656C6572;
      }

      else
      {
        v22 = 1918985593;
      }

      if (v5 == 2)
      {
        v16 = 0xEB00000000657461;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if (v13 == v22)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0x614E747369747261;
      v16 = 0xEA0000000000656DLL;
      if (v5)
      {
        v15 = 0xD000000000000010;
        v16 = 0x8000000100E3C680;
      }

      if (v13 == v15)
      {
        goto LABEL_56;
      }
    }

LABEL_57:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      return v2 & 0x1FF;
    }

    if (!--v4)
    {
      return 512;
    }
  }

  v9 = 0x44657361656C6572;
  if (v7 != 2)
  {
    v9 = 1918985593;
  }

  v10 = 0xEB00000000657461;
  if (v7 != 2)
  {
    v10 = 0xE400000000000000;
  }

  v11 = 0x614E747369747261;
  if (v7)
  {
    v11 = 0xD000000000000010;
  }

  v12 = 0xEA0000000000656DLL;
  if (v7)
  {
    v12 = 0x8000000100E3C680;
  }

  if (v7 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (v7 <= 1)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (v2 <= 3u)
  {
    goto LABEL_20;
  }

LABEL_33:
  v17 = 0x7473696C79616C70;
  if (v5 == 6)
  {
    v17 = 0xD000000000000010;
  }

  v18 = 0xEC00000065707954;
  if (v5 == 6)
  {
    v18 = 0x8000000100E3C6C0;
  }

  v19 = 0x79616C507473616CLL;
  if (v5 == 4)
  {
    v19 = 0x656C746974;
  }

  v20 = 0xEE00657461446465;
  if (v5 == 4)
  {
    v20 = 0xE500000000000000;
  }

  if (v2 <= 5u)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  if (v2 <= 5u)
  {
    v16 = v20;
  }

  else
  {
    v16 = v18;
  }

  if (v13 != v21)
  {
    goto LABEL_57;
  }

LABEL_56:
  if (v14 != v16)
  {
    goto LABEL_57;
  }

  return v2 & 0x1FF;
}

uint64_t sub_100376548(unsigned __int16 a1)
{
  v1 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v1;
  }

  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v2 = static MusicLibrary.== infix(_:_:)();

  v4 = &off_101098C48;
  if (v2)
  {
    v5 = &off_101098C20;
  }

  else
  {
    v5 = &off_101098C48;
  }

  v6 = v5[2];
  if (!v6)
  {
LABEL_71:

    return 512;
  }

  v7 = 0;
  if (v2)
  {
    v4 = &off_101098C20;
  }

  v8 = v4 + 4;
  while (v7 < v5[2])
  {
    v9 = *(v8 + v7);
    if (v9 > 3)
    {
      if (*(v8 + v7) > 5u)
      {
        if (v9 == 6)
        {
          v14 = 0xD000000000000010;
          v15 = 0x8000000100E3C6C0;
          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v14 = 0x7473696C79616C70;
          v15 = 0xEC00000065707954;
          if (v1 > 3u)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        if (v9 == 4)
        {
          v14 = 0x656C746974;
        }

        else
        {
          v14 = 0x79616C507473616CLL;
        }

        if (v9 == 4)
        {
          v15 = 0xE500000000000000;
        }

        else
        {
          v15 = 0xEE00657461446465;
        }

        if (v1 > 3u)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v10 = 0x44657361656C6572;
      if (v9 != 2)
      {
        v10 = 1918985593;
      }

      v11 = 0xEB00000000657461;
      if (v9 != 2)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0xD000000000000010;
      if (!*(v8 + v7))
      {
        v12 = 0x614E747369747261;
      }

      v13 = 0xEA0000000000656DLL;
      if (*(v8 + v7))
      {
        v13 = 0x8000000100E3C680;
      }

      if (*(v8 + v7) <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (*(v8 + v7) <= 1u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      if (v1 > 3u)
      {
LABEL_38:
        v16 = 0xD000000000000010;
        if (v1 != 6)
        {
          v16 = 0x7473696C79616C70;
        }

        v17 = 0xEC00000065707954;
        if (v1 == 6)
        {
          v17 = 0x8000000100E3C6C0;
        }

        v18 = 0x79616C507473616CLL;
        if (v1 == 4)
        {
          v18 = 0x656C746974;
        }

        v19 = 0xEE00657461446465;
        if (v1 == 4)
        {
          v19 = 0xE500000000000000;
        }

        if (v1 <= 5u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v1 <= 5u)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v14 != v20)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    if (v1 > 1u)
    {
      if (v1 == 2)
      {
        v24 = 0x44657361656C6572;
      }

      else
      {
        v24 = 1918985593;
      }

      if (v1 == 2)
      {
        v21 = 0xEB00000000657461;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v14 != v24)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v22 = 0x614E747369747261;
      v21 = 0xEA0000000000656DLL;
      if (v1)
      {
        v22 = 0xD000000000000010;
        v21 = 0x8000000100E3C680;
      }

      if (v14 != v22)
      {
        goto LABEL_60;
      }
    }

LABEL_59:
    if (v15 == v21)
    {

LABEL_73:

      return v1 & 0x1FF;
    }

LABEL_60:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_73;
    }

    if (v6 == ++v7)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003768C8(unsigned __int16 a1)
{
  v2 = a1;
  if ((a1 & 0xFF00) == 0x200)
  {
    return v2;
  }

  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 512;
  }

  v5 = a1;
  v6 = (v3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 <= 3)
    {
      break;
    }

    if (v7 > 5)
    {
      if (v7 == 6)
      {
        v13 = 0xD000000000000010;
        v14 = 0x8000000100E3C6C0;
        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v13 = 0x7473696C79616C70;
        v14 = 0xEC00000065707954;
        if (v2 > 3u)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v7 == 4)
      {
        v13 = 0x656C746974;
      }

      else
      {
        v13 = 0x79616C507473616CLL;
      }

      if (v7 == 4)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xEE00657461446465;
      }

      if (v2 > 3u)
      {
        goto LABEL_33;
      }
    }

LABEL_20:
    if (v2 > 1u)
    {
      if (v5 == 2)
      {
        v22 = 0x44657361656C6572;
      }

      else
      {
        v22 = 1918985593;
      }

      if (v5 == 2)
      {
        v16 = 0xEB00000000657461;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if (v13 == v22)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0x614E747369747261;
      v16 = 0xEA0000000000656DLL;
      if (v5)
      {
        v15 = 0xD000000000000010;
        v16 = 0x8000000100E3C680;
      }

      if (v13 == v15)
      {
        goto LABEL_56;
      }
    }

LABEL_57:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      return v2 & 0x1FF;
    }

    if (!--v4)
    {
      return 512;
    }
  }

  v9 = 0x44657361656C6572;
  if (v7 != 2)
  {
    v9 = 1918985593;
  }

  v10 = 0xEB00000000657461;
  if (v7 != 2)
  {
    v10 = 0xE400000000000000;
  }

  v11 = 0x614E747369747261;
  if (v7)
  {
    v11 = 0xD000000000000010;
  }

  v12 = 0xEA0000000000656DLL;
  if (v7)
  {
    v12 = 0x8000000100E3C680;
  }

  if (v7 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (v7 <= 1)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (v2 <= 3u)
  {
    goto LABEL_20;
  }

LABEL_33:
  v17 = 0x7473696C79616C70;
  if (v5 == 6)
  {
    v17 = 0xD000000000000010;
  }

  v18 = 0xEC00000065707954;
  if (v5 == 6)
  {
    v18 = 0x8000000100E3C6C0;
  }

  v19 = 0x79616C507473616CLL;
  if (v5 == 4)
  {
    v19 = 0x656C746974;
  }

  v20 = 0xEE00657461446465;
  if (v5 == 4)
  {
    v20 = 0xE500000000000000;
  }

  if (v2 <= 5u)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  if (v2 <= 5u)
  {
    v16 = v20;
  }

  else
  {
    v16 = v18;
  }

  if (v13 != v21)
  {
    goto LABEL_57;
  }

LABEL_56:
  if (v14 != v16)
  {
    goto LABEL_57;
  }

  return v2 & 0x1FF;
}

double sub_100376BEC@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v30 = a4;
  v9 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v11, &unk_10118BCE0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_10118BCE0);
  }

  else
  {
    v16 = (*(v13 + 32))(v15, v11, v12);
    v17 = a2(v16);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v19 = [v17 cellForItemAtIndexPath:isa];

    if (v19)
    {
      v20 = *&v7[*a3];
      v21 = v20;
      [v19 bounds];
      [v21 convertRect:v19 fromCoordinateSpace:?];
      v35[0] = v20;
      v35[1] = v22;
      v35[2] = v23;
      v35[3] = v24;
      v35[4] = v25;
      v36 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v35, 15, v31);
      v37 = v31[0];
      v38 = v31[1];
      v39 = v32;
      *&v40 = v33;
      *(&v40 + 1) = v34;
      v26 = v7;
      PresentationSource.init(viewController:position:)(v26, &v37, v30);

      (*(v13 + 8))(v15, v12);
      return result;
    }

    (*(v13 + 8))(v15, v12);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v40 = xmmword_100EBCEF0;
  v28 = v7;
  *&result = PresentationSource.init(viewController:position:)(v28, &v37, v30).n128_u64[0];
  return result;
}

uint64_t sub_100376F9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100377034(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ImpressionTracker();
    sub_10003D8C4(&qword_1011831E8, type metadata accessor for ImpressionTracker);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      do
      {
        v26 = v18;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for ImpressionTracker();
        swift_dynamicCast();
        v18 = v26;
        v16 = v9;
        v17 = v10;
      }

      while (v26);
    }

    return sub_10005C9F8();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        return sub_10005C9F8();
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100377268(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v3 = a3 + 56;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (*(a3 + 48) + ((v10 << 11) | (32 * __clz(__rbit64(v6)))));
      v12 = v11[1];
      v20[0] = *v11;
      v20[1] = v12;
      v13 = *(&v20[0] + 1);
      v14 = *&v20[0];
      v15 = *(&v12 + 1);
      v16 = v12;
      sub_100198BAC(*&v20[0], *(&v20[0] + 1), v12, *(&v12 + 1));
      v17 = v21;
      a1(v20);
      v21 = v17;
      if (v17)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_100110A18(v14, v13, v16, v15);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    sub_100110A18(v14, v13, v16, v15);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003773C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10037745C(char *a1)
{
  v3 = sub_10010FC20(&qword_10118D050);
  v32 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v31 - v4;
  v6 = sub_10010FC20(&qword_10118D058);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = _s10TVEpisodesVMa(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v33 = v1;
  v15 = *(v1 + 48);
  v16 = *(*v15 + 96);
  swift_beginAccess();
  sub_1003C16C8(v15 + v16, v14, _s10TVEpisodesVMa);
  v17 = sub_1006534A4(v14, a1);
  if ((v17 & 1) == 0)
  {
    sub_1003C16C8(a1, v12, _s10TVEpisodesVMa);
    sub_1003C16C8(v12, v8, _s10TVEpisodesVMa);
    v18 = sub_10003D8C4(&qword_10118D060, _s10TVEpisodesVMa);
    (*(v18 + 48))(v9, v18);
    sub_100020674(&qword_10118D068, &qword_10118D050);
    v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v32 + 8))(v5, v3);
    sub_1003C1730(v12, _s10TVEpisodesVMa);
    *&v8[*(v6 + 36)] = v19;
    v17 = RequestResponse.Controller.request.setter(v8);
  }

  sub_1003A38C8(v17);
  v20 = *(v9 + 52);
  v21 = *&v14[v20];
  v22 = *&v14[v20 + 8];
  v23 = &a1[v20];
  v24 = v21 == *v23 && v22 == *(v23 + 1);
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1003A454C();
  }

  v25 = *(v9 + 40);
  v26 = *&v14[v25];
  v27 = *&v14[v25 + 8];
  v28 = &a1[v25];
  v29 = v26 == *v28 && v27 == *(v28 + 1);
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1003A5634();
  }

  sub_1003C1730(a1, _s10TVEpisodesVMa);
  return sub_1003C1730(v14, _s10TVEpisodesVMa);
}

uint64_t sub_1003777F4(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011828F8);
  v50 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v49 = sub_10010FC20(&unk_10118CE40);
  __chkstk_darwin(v49);
  v10 = &v49 - v9;
  v11 = _s9PlaylistsVMa(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v51 = v1;
  v17 = *(v1 + 48);
  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_1003C16C8(v17 + v18, v16, _s9PlaylistsVMa);
  v52 = v16;
  v53 = a1;
  v19 = sub_10019891C(v16, a1);
  if ((v19 & 1) == 0)
  {
    sub_1003C16C8(v53, v14, _s9PlaylistsVMa);
    sub_1003C16C8(v14, v10, _s9PlaylistsVMa);
    type metadata accessor for TitledSection();
    type metadata accessor for Playlist.Folder.Item();
    sub_10003D8C4(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    sub_10018E714(v6);
    sub_10018ECCC();
    sub_10018EFFC();
    MusicLibrarySectionedRequest.filterItems(text:)(*&v14[*(v11 + 36)]);
    MusicLibrarySectionedRequest.limit.setter();
    v20 = v50;
    (*(v50 + 32))(v8, v6, v3);
    sub_100020674(&qword_10118CE50, &qword_1011828F8);
    v21 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v20 + 8))(v8, v3);
    sub_1003C1730(v14, _s9PlaylistsVMa);
    *&v10[*(v49 + 36)] = v21;
    v19 = RequestResponse.Controller.request.setter(v10);
  }

  sub_1003A3AF8(v19);
  v22 = *(v11 + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v23 = _s9PlaylistsV5ScopeVMa(0);
  v24 = sub_1000060E4(v23, qword_101218730);
  v50 = v22;
  v25 = sub_1001982EC(&v52[v22], v24);
  if (v25)
  {
    v26 = 0xD000000000000011;
  }

  else
  {
    v26 = 0xD000000000000010;
  }

  if (v25)
  {
    v27 = "LibraryPlaylists";
  }

  else
  {
    v27 = "v32@0:8@16@24";
  }

  v54 = v26;
  v55 = v27 | 0x8000000000000000;

  v28._countAndFlagsBits = 0x704F7265746C6946;
  v28._object = 0xEC0000006E6F6974;
  String.append(_:)(v28);

  v30 = v54;
  v29 = v55;
  v31 = *(v11 + 32);
  v32 = sub_1001982EC((v53 + v31), v24);
  if (v32)
  {
    v33 = 0xD000000000000011;
  }

  else
  {
    v33 = 0xD000000000000010;
  }

  if (v32)
  {
    v34 = "LibraryPlaylists";
  }

  else
  {
    v34 = "v32@0:8@16@24";
  }

  v54 = v33;
  v55 = v34 | 0x8000000000000000;

  v35._countAndFlagsBits = 0x704F7265746C6946;
  v35._object = 0xEC0000006E6F6974;
  String.append(_:)(v35);

  if (v30 == v54 && v29 == v55)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {
      sub_1003A47BC();
    }
  }

  v37 = sub_1001982EC(&v52[v50], v24);
  if (v37)
  {
    v38 = 0xD000000000000011;
  }

  else
  {
    v38 = 0xD000000000000010;
  }

  if (v37)
  {
    v39 = "LibraryPlaylists";
  }

  else
  {
    v39 = "v32@0:8@16@24";
  }

  v54 = v38;
  v55 = v39 | 0x8000000000000000;

  v40._countAndFlagsBits = 0x53746E65746E6F43;
  v40._object = 0xEB0000000074726FLL;
  String.append(_:)(v40);

  v42 = v54;
  v41 = v55;
  v43 = sub_1001982EC((v53 + v31), v24);
  if (v43)
  {
    v44 = 0xD000000000000011;
  }

  else
  {
    v44 = 0xD000000000000010;
  }

  if (v43)
  {
    v45 = "LibraryPlaylists";
  }

  else
  {
    v45 = "v32@0:8@16@24";
  }

  v54 = v44;
  v55 = v45 | 0x8000000000000000;

  v46._countAndFlagsBits = 0x53746E65746E6F43;
  v46._object = 0xEB0000000074726FLL;
  String.append(_:)(v46);

  if (v42 == v54 && v41 == v55)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      sub_1003A58A4();
    }
  }

  sub_1003C1730(v53, _s9PlaylistsVMa);
  return sub_1003C1730(v52, _s9PlaylistsVMa);
}

uint64_t sub_100377E84(uint64_t a1)
{
  v78 = a1;
  v2 = type metadata accessor for Artist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11MusicVideosV5ScopeOMa(0);
  v6 = __chkstk_darwin(v5 - 8);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v72 = &v65 - v9;
  v10 = __chkstk_darwin(v8);
  v71 = &v65 - v11;
  v12 = __chkstk_darwin(v10);
  v70 = &v65 - v13;
  __chkstk_darwin(v12);
  v68 = &v65 - v14;
  v15 = sub_10010FC20(&qword_10118CEE8);
  v74 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  v69 = sub_10010FC20(&qword_10118CEF0);
  __chkstk_darwin(v69);
  v19 = &v65 - v18;
  v20 = _s11MusicVideosVMa(0);
  v21 = __chkstk_darwin(v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v65 - v24;
  v75 = v1;
  v26 = *(v1 + 48);
  v27 = *(*v26 + 96);
  swift_beginAccess();
  sub_1003C16C8(v26 + v27, v25, _s11MusicVideosVMa);
  v77 = v25;
  v28 = sub_100701750(v25, v78);
  v76 = v2;
  if ((v28 & 1) == 0)
  {
    sub_1003C16C8(v78, v23, _s11MusicVideosVMa);
    sub_1003C16C8(v23, v19, _s11MusicVideosVMa);
    type metadata accessor for TitledSection();
    type metadata accessor for MusicVideo();
    MusicLibrarySectionedRequest.init()();

    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.filterItems(text:)(*&v23[v20[8]]);
    v29 = v68;
    sub_1003C16C8(&v23[v20[7]], v68, _s11MusicVideosV5ScopeOMa);
    v67 = v3;
    v30 = (*(v3 + 48))(v29, 1, v2);
    v31 = v19;
    if (v30 != 1)
    {
      v32 = v66;
      v33 = v67;
      v34 = *(v67 + 32);
      v65 = v31;
      v35 = v76;
      v34(v66, v29, v76);
      swift_getKeyPath();
      MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

      v31 = v65;
      (*(v33 + 8))(v32, v35);
    }

    sub_1006FDE90();
    sub_1006FF31C(*&v23[v20[9]], v17);
    sub_100020674(&qword_10118CEF8, &qword_10118CEE8);
    v36 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v74 + 8))(v17, v15);
    sub_1003C1730(v23, _s11MusicVideosVMa);
    *(v31 + *(v69 + 36)) = v36;
    RequestResponse.Controller.request.setter(v31);
    v2 = v76;
    v3 = v67;
  }

  v74 = 0xD000000000000012;
  sub_1003A3D20();
  v69 = v20[7];
  v37 = v70;
  sub_1003C16C8(&v77[v69], v70, _s11MusicVideosV5ScopeOMa);
  v38 = *(v3 + 48);
  v39 = v38(v37, 1, v2);
  v40 = "impressionParentId";
  v41 = 0xD000000000000012;
  v42 = "impressionParentId";
  if (v39 != 1)
  {
    sub_1003C1730(v37, _s11MusicVideosV5ScopeOMa);
    v42 = "LibraryArtistDetail";
    v41 = 0xD000000000000013;
  }

  v79 = v41;
  v80 = v42 | 0x8000000000000000;

  v43._countAndFlagsBits = 0x704F7265746C6946;
  v43._object = 0xEC0000006E6F6974;
  String.append(_:)(v43);

  v45 = v79;
  v44 = v80;
  v46 = v20[7];
  v47 = v71;
  sub_1003C16C8(v78 + v46, v71, _s11MusicVideosV5ScopeOMa);
  v48 = v38(v47, 1, v2);
  v49 = 0xD000000000000012;
  v50 = "impressionParentId";
  if (v48 != 1)
  {
    sub_1003C1730(v47, _s11MusicVideosV5ScopeOMa);
    v50 = "LibraryArtistDetail";
    v49 = 0xD000000000000013;
  }

  v79 = v49;
  v80 = v50 | 0x8000000000000000;

  v51._countAndFlagsBits = 0x704F7265746C6946;
  v51._object = 0xEC0000006E6F6974;
  String.append(_:)(v51);

  if (v45 == v79 && v44 == v80)
  {

    v52 = v76;
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v52 = v76;
    if ((v53 & 1) == 0)
    {
      sub_1003A4B5C();
    }
  }

  v54 = v72;
  sub_1003C16C8(&v77[v69], v72, _s11MusicVideosV5ScopeOMa);
  v55 = v38(v54, 1, v52);
  v56 = 0xD000000000000012;
  v57 = "impressionParentId";
  if (v55 != 1)
  {
    sub_1003C1730(v54, _s11MusicVideosV5ScopeOMa);
    v57 = "LibraryArtistDetail";
    v56 = 0xD000000000000013;
  }

  v79 = v56;
  v80 = v57 | 0x8000000000000000;

  v58._countAndFlagsBits = 0x53746E65746E6F43;
  v58._object = 0xEB0000000074726FLL;
  String.append(_:)(v58);

  v60 = v79;
  v59 = v80;
  v61 = v73;
  sub_1003C16C8(v78 + v46, v73, _s11MusicVideosV5ScopeOMa);
  if (v38(v61, 1, v52) != 1)
  {
    sub_1003C1730(v61, _s11MusicVideosV5ScopeOMa);
    v40 = "LibraryArtistDetail";
    v74 = 0xD000000000000013;
  }

  v79 = v74;
  v80 = v40 | 0x8000000000000000;

  v62._countAndFlagsBits = 0x53746E65746E6F43;
  v62._object = 0xEB0000000074726FLL;
  String.append(_:)(v62);

  if (v60 == v79 && v59 == v80)
  {
  }

  else
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0)
    {
      sub_1003A5C44();
    }
  }

  sub_1003C1730(v78, _s11MusicVideosVMa);
  return sub_1003C1730(v77, _s11MusicVideosVMa);
}

uint64_t sub_100378808(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_10118CE70);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v6 = sub_10010FC20(&qword_10118CE78);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = _s6AlbumsVMa(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v34 = v1;
  v15 = *(v1 + 48);
  v16 = *(*v15 + 96);
  swift_beginAccess();
  sub_1003C16C8(v15 + v16, v14, _s6AlbumsVMa);
  v17 = sub_10028CB8C(v14, a1);
  if ((v17 & 1) == 0)
  {
    sub_1003C16C8(a1, v12, _s6AlbumsVMa);
    sub_1003C16C8(v12, v8, _s6AlbumsVMa);
    v18 = sub_10003D8C4(&qword_10118CE80, _s6AlbumsVMa);
    (*(v18 + 48))(v9, v18);
    sub_100020674(&qword_10118CE88, &qword_10118CE70);
    v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v33 + 8))(v5, v3);
    sub_1003C1730(v12, _s6AlbumsVMa);
    *&v8[*(v6 + 36)] = v19;
    v17 = RequestResponse.Controller.request.setter(v8);
  }

  sub_1003A3F48(v17);
  v20 = sub_10028A59C();
  v22 = v21;
  if (v20 == sub_10028A59C() && v22 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      sub_1003A4FF0();
    }
  }

  v26 = sub_100288A9C();
  v28 = v27;
  if (v26 == sub_100288A9C() && v28 == v29)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      sub_1003A60D8();
    }
  }

  sub_1003C1730(a1, _s6AlbumsVMa);
  return sub_1003C1730(v14, _s6AlbumsVMa);
}

uint64_t sub_100378C30(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118B098);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = v8[3];
  v35[1] = v8[2];
  v35[2] = v9;
  v10 = v8[5];
  *v36 = v8[4];
  *&v36[16] = v10;
  v35[0] = v8[1];
  sub_10030DC78(v35, v31);
  v11 = sub_10030D694(v35, a1);
  if ((v11 & 1) == 0)
  {
    v12 = a1[3];
    v28 = a1[2];
    v29 = v12;
    v13 = a1[4];
    v14 = a1[1];
    v26 = *a1;
    v27 = v14;
    v33[2] = v28;
    v33[3] = v12;
    v33[4] = v13;
    v33[0] = v26;
    v33[1] = v14;
    v31[3] = v12;
    v31[4] = v13;
    v31[1] = v14;
    v31[2] = v28;
    v30 = v13;
    v31[0] = v26;
    v15 = sub_1003BEAB8();
    v16 = *(v15 + 48);
    sub_10030DC78(a1, v34);
    sub_10030DC78(v33, v34);
    v25 = v4;
    v17 = v5;
    v16(&_s7ArtistsVN, v15);
    v34[2] = v28;
    v34[3] = v29;
    v34[4] = v30;
    v34[0] = v26;
    v34[1] = v27;
    sub_10030DCB0(v34);
    sub_100020674(&qword_10118CF18, &qword_10118B098);
    v18 = v25;
    v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v17 + 8))(v7, v18);
    v32 = v19;
    v11 = RequestResponse.Controller.request.setter(v31);
  }

  sub_1003A4170(v11);
  v31[0] = *&v36[8];
  v20 = *&v36[8];
  v34[0] = *(a1 + 56);
  v21 = v34[0];
  sub_100118E9C(v31, v33);
  sub_100118E9C(v34, v33);
  sub_10030DCB0(a1);
  if (v20 == v21)
  {
    sub_100015BB0(v34);
    sub_100015BB0(v31);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v34);
    sub_100015BB0(v31);
    if ((v22 & 1) == 0)
    {
      sub_1003A6334();
    }
  }

  return sub_10030DCB0(v35);
}

uint64_t sub_100378EFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_10118CF80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = *(v8 + 80);
  v41 = *(v8 + 64);
  v42 = v9;
  v43 = *(v8 + 96);
  v44 = *(v8 + 112);
  v10 = *(v8 + 32);
  v40[0] = *(v8 + 16);
  v40[1] = v10;
  v40[2] = *(v8 + 48);
  sub_100363198(v40, v33);
  if ((sub_100457548(v40, a1) & 1) == 0)
  {
    v11 = *(a1 + 16);
    v26 = *a1;
    v27 = v11;
    v12 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29 = v12;
    v36[0] = v26;
    v36[1] = v11;
    v36[2] = v28;
    v36[3] = v12;
    v13 = *(a1 + 80);
    v30 = *(a1 + 64);
    v31 = v13;
    v32 = *(a1 + 96);
    v36[4] = v30;
    v36[5] = v13;
    v37 = v32;
    v33[0] = v26;
    v33[1] = v11;
    v34 = *(a1 + 96);
    v14 = *(a1 + 80);
    v33[4] = v30;
    v33[5] = v14;
    v33[2] = v28;
    v33[3] = v12;
    v15 = sub_1003BF19C();
    v16 = *(v15 + 48);
    sub_100363198(a1, v38);
    sub_100363198(v36, v38);
    v25 = v4;
    v17 = v5;
    v16(&_s9ComposersVN, v15);
    v38[4] = v30;
    v38[5] = v31;
    v39 = v32;
    v38[0] = v26;
    v38[1] = v27;
    v38[2] = v28;
    v38[3] = v29;
    sub_1003BF1F0(v38);
    sub_100020674(&qword_10118CF90, &unk_10118CF80);
    v18 = v25;
    v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v17 + 8))(v7, v18);
    v35 = v19;
    RequestResponse.Controller.request.setter(v33);
  }

  sub_10003DD5C(&unk_1010A96A8, sub_1003BF470);
  if (v43 != *(a1 + 80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10003E4A4(&unk_1010A96A8, sub_1003BF378);
  }

  v33[0] = v41;
  v20 = v41;
  v38[0] = *(a1 + 48);
  v21 = v38[0];
  sub_100118E9C(v33, v36);
  sub_100118E9C(v38, v36);
  sub_1003BF1F0(a1);
  if (v20 == v21)
  {
    sub_100015BB0(v38);
    sub_100015BB0(v33);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v38);
    sub_100015BB0(v33);
    if ((v22 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A96A8, sub_1003BF244);
    }
  }

  return sub_1003BF1F0(v40);
}

uint64_t sub_100379288(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CFA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = *(v8 + 80);
  v41 = *(v8 + 64);
  v42 = v9;
  v43 = *(v8 + 96);
  v44 = *(v8 + 112);
  v10 = *(v8 + 32);
  v40[0] = *(v8 + 16);
  v40[1] = v10;
  v40[2] = *(v8 + 48);
  sub_1003BF504(v40, v33);
  if ((sub_100457548(v40, a1) & 1) == 0)
  {
    v11 = *(a1 + 16);
    v26 = *a1;
    v27 = v11;
    v12 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29 = v12;
    v36[0] = v26;
    v36[1] = v11;
    v36[2] = v28;
    v36[3] = v12;
    v13 = *(a1 + 80);
    v30 = *(a1 + 64);
    v31 = v13;
    v32 = *(a1 + 96);
    v36[4] = v30;
    v36[5] = v13;
    v37 = v32;
    v33[0] = v26;
    v33[1] = v11;
    v34 = *(a1 + 96);
    v14 = *(a1 + 80);
    v33[4] = v30;
    v33[5] = v14;
    v33[2] = v28;
    v33[3] = v12;
    v15 = sub_1003BF560();
    v16 = *(v15 + 48);
    sub_1003BF504(a1, v38);
    sub_1003BF504(v36, v38);
    v25 = v4;
    v17 = v5;
    v16(&_s6GenresVN, v15);
    v38[4] = v30;
    v38[5] = v31;
    v39 = v32;
    v38[0] = v26;
    v38[1] = v27;
    v38[2] = v28;
    v38[3] = v29;
    sub_1003BF5B4(v38);
    sub_100020674(&qword_10118CFB0, &qword_10118CFA0);
    v18 = v25;
    v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v17 + 8))(v7, v18);
    v35 = v19;
    RequestResponse.Controller.request.setter(v33);
  }

  sub_10003DD5C(&unk_1010A9770, sub_1003BF834);
  if (v43 != *(a1 + 80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10003E4A4(&unk_1010A9770, sub_1003BF73C);
  }

  v33[0] = v41;
  v20 = v41;
  v38[0] = *(a1 + 48);
  v21 = v38[0];
  sub_100118E9C(v33, v36);
  sub_100118E9C(v38, v36);
  sub_1003BF5B4(a1);
  if (v20 == v21)
  {
    sub_100015BB0(v38);
    sub_100015BB0(v33);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v38);
    sub_100015BB0(v33);
    if ((v22 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A9770, sub_1003BF608);
    }
  }

  return sub_1003BF5B4(v40);
}

uint64_t sub_100379614(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101180370);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = v8[4];
  v40[2] = v8[3];
  v41 = v9;
  v10 = v8[6];
  v42 = v8[5];
  v43 = v10;
  v11 = v8[2];
  v40[0] = v8[1];
  v40[1] = v11;
  sub_1001103E0(v40, v36);
  v12 = sub_10010B864(v40, a1);
  if ((v12 & 1) == 0)
  {
    v13 = a1[3];
    v14 = a1[1];
    v32 = a1[2];
    v33 = v13;
    v15 = a1[1];
    v30 = *a1;
    v31 = v15;
    v38[0] = v30;
    v38[1] = v15;
    v38[2] = v32;
    v38[3] = v13;
    v16 = a1[5];
    v17 = a1[3];
    v34 = a1[4];
    v35 = v16;
    v38[4] = v34;
    v38[5] = v16;
    v18 = a1[5];
    v36[4] = v34;
    v36[5] = v18;
    v36[2] = v32;
    v36[3] = v17;
    v36[0] = v30;
    v36[1] = v14;
    v19 = sub_1003BEDFC();
    v20 = *(v19 + 48);
    sub_1001103E0(a1, v39);
    sub_1001103E0(v38, v39);
    v29 = v4;
    v21 = v5;
    v20(&_s6MoviesVN, v19);
    v39[2] = v32;
    v39[3] = v33;
    v39[4] = v34;
    v39[5] = v35;
    v39[0] = v30;
    v39[1] = v31;
    sub_100110418(v39);
    sub_100020674(&unk_10118CF68, &qword_101180370);
    v22 = v29;
    v23 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v21 + 8))(v7, v22);
    v37 = v23;
    v12 = RequestResponse.Controller.request.setter(v36);
  }

  sub_1003A42EC(v12);
  if (__PAIR128__(v43, *(&v42 + 1)) != *(a1 + 72) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1003A539C();
  }

  v36[0] = v41;
  v24 = v41;
  v39[0] = a1[3];
  v25 = v39[0];
  sub_100118E9C(v36, v38);
  sub_100118E9C(v39, v38);
  sub_100110418(a1);
  if (v24 == v25)
  {
    sub_100015BB0(v39);
    sub_100015BB0(v36);
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v39);
    sub_100015BB0(v36);
    if ((v26 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A95B8, sub_1003BEE50);
    }
  }

  return sub_100110418(v40);
}

uint64_t sub_10037993C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CFC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = *(v8 + 80);
  v41 = *(v8 + 64);
  v42 = v9;
  v43 = *(v8 + 96);
  v44 = *(v8 + 112);
  v10 = *(v8 + 32);
  v40[0] = *(v8 + 16);
  v40[1] = v10;
  v40[2] = *(v8 + 48);
  sub_1003BF8F0(v40, v33);
  if ((sub_100457548(v40, a1) & 1) == 0)
  {
    v11 = *(a1 + 16);
    v26 = *a1;
    v27 = v11;
    v12 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29 = v12;
    v36[0] = v26;
    v36[1] = v11;
    v36[2] = v28;
    v36[3] = v12;
    v13 = *(a1 + 80);
    v30 = *(a1 + 64);
    v31 = v13;
    v32 = *(a1 + 96);
    v36[4] = v30;
    v36[5] = v13;
    v37 = v32;
    v33[0] = v26;
    v33[1] = v11;
    v34 = *(a1 + 96);
    v14 = *(a1 + 80);
    v33[4] = v30;
    v33[5] = v14;
    v33[2] = v28;
    v33[3] = v12;
    v15 = sub_1003BF94C();
    v16 = *(v15 + 48);
    sub_1003BF8F0(a1, v38);
    sub_1003BF8F0(v36, v38);
    v25 = v4;
    v17 = v5;
    v16(&_s7TVShowsVN, v15);
    v38[4] = v30;
    v38[5] = v31;
    v39 = v32;
    v38[0] = v26;
    v38[1] = v27;
    v38[2] = v28;
    v38[3] = v29;
    sub_1003BF9A0(v38);
    sub_100020674(&qword_10118CFD0, &qword_10118CFC0);
    v18 = v25;
    v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v17 + 8))(v7, v18);
    v35 = v19;
    RequestResponse.Controller.request.setter(v33);
  }

  sub_10003DD5C(&unk_1010A9838, sub_1003BFC20);
  if (v43 != *(a1 + 80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10003E4A4(&unk_1010A9838, sub_1003BFB28);
  }

  v33[0] = v41;
  v20 = v41;
  v38[0] = *(a1 + 48);
  v21 = v38[0];
  sub_100118E9C(v33, v36);
  sub_100118E9C(v38, v36);
  sub_1003BF9A0(a1);
  if (v20 == v21)
  {
    sub_100015BB0(v38);
    sub_100015BB0(v33);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v38);
    sub_100015BB0(v33);
    if ((v22 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A9838, sub_1003BF9F4);
    }
  }

  return sub_1003BF9A0(v40);
}

uint64_t sub_100379CC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CF20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = *(v2 + 48);
  swift_beginAccess();
  v9 = *(v8 + 48);
  v36[1] = *(v8 + 32);
  v36[2] = v9;
  v37 = *(v8 + 64);
  v38 = *(v8 + 80);
  v36[0] = *(v8 + 16);
  sub_10021817C(v36, v29);
  v10 = sub_1007B9D2C(v36, a1);
  if ((v10 & 1) == 0)
  {
    v11 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = v11;
    v28 = *(a1 + 64);
    v12 = *(a1 + 16);
    v24 = *a1;
    v25 = v12;
    v32[2] = v26;
    v32[3] = v11;
    v33 = v28;
    v32[0] = v24;
    v32[1] = v12;
    v30 = v28;
    v29[2] = v26;
    v29[3] = v11;
    v29[0] = v24;
    v29[1] = v12;
    v13 = sub_1003BEC68();
    v14 = *(v13 + 48);
    sub_10021817C(a1, v34);
    sub_10021817C(v32, v34);
    v23 = v4;
    v15 = v5;
    v14(&_s5SongsVN, v13);
    v34[2] = v26;
    v34[3] = v27;
    v35 = v28;
    v34[0] = v24;
    v34[1] = v25;
    sub_1003BECBC(v34);
    sub_100020674(&unk_10118CF30, &qword_10118CF20);
    v16 = v23;
    v17 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v15 + 8))(v7, v16);
    v31 = v17;
    v10 = RequestResponse.Controller.request.setter(v29);
  }

  sub_1003A43D0(v10);
  v29[0] = v37;
  v18 = v37;
  v34[0] = *(a1 + 48);
  v19 = v34[0];
  sub_100118E9C(v29, v32);
  sub_100118E9C(v34, v32);
  sub_1003BECBC(a1);
  if (v18 == v19)
  {
    sub_100015BB0(v34);
    sub_100015BB0(v29);
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v34);
    sub_100015BB0(v29);
    if ((v20 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A9568, sub_1003BED10);
    }
  }

  return sub_1003BECBC(v36);
}

uint64_t sub_100379FBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CFF0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v23[-v9];
  v11 = *(v2 + 48);
  swift_beginAccess();
  v12 = *(v11 + 80);
  v29 = *(v11 + 64);
  v30 = v12;
  v31 = *(v11 + 96);
  v32 = *(v11 + 112);
  v13 = *(v11 + 32);
  v28[0] = *(v11 + 16);
  v28[1] = v13;
  v28[2] = *(v11 + 48);
  sub_10003D868(v28, v25);
  if ((sub_100457548(v28, a1) & 1) == 0)
  {
    v14 = *(a1 + 80);
    v25[4] = *(a1 + 64);
    v25[5] = v14;
    v26 = *(a1 + 96);
    v15 = *(a1 + 16);
    v25[0] = *a1;
    v25[1] = v15;
    v16 = *(a1 + 48);
    v25[2] = *(a1 + 32);
    v25[3] = v16;
    sub_10003D868(a1, v24);
    sub_10003D868(a1, v24);
    type metadata accessor for TitledSection();
    type metadata accessor for RecentlyAddedMusicItem();
    sub_10003D8C4(&qword_10118CFF8, &type metadata accessor for RecentlyAddedMusicItem);
    MusicLibrarySectionedRequest.init()();

    MusicLibrarySectionedRequest.library.setter();
    v17 = *(a1 + 16);
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.filterItems(text:)(*(a1 + 24));
    MusicLibrarySectionedRequest.limit.setter();
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
    if (v17 == 1)
    {

      MusicLibrarySectionedRequest.excludeNonPinnedPlaylists.setter();
      sub_10003D90C(a1);
    }

    else
    {
      sub_10003D90C(a1);
    }

    (*(v5 + 32))(v10, v8, v4);
    sub_100020674(&qword_10118D000, &qword_10118CFF0);
    v18 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v5 + 8))(v10, v4);
    v27 = v18;
    RequestResponse.Controller.request.setter(v25);
  }

  sub_10003DD5C(&unk_1010A9928, sub_1003BFFD8);
  if (v31 != *(a1 + 80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10003E4A4(&unk_1010A9928, sub_1003BFEE0);
  }

  v25[0] = v29;
  v19 = v29;
  v24[0] = *(a1 + 48);
  v20 = v24[0];
  sub_100118E9C(v25, v23);
  sub_100118E9C(v24, v23);
  sub_10003D90C(a1);
  if (v19 == v20)
  {
    sub_100015BB0(v24);
    sub_100015BB0(v25);
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100015BB0(v24);
    sub_100015BB0(v25);
    if ((v21 & 1) == 0)
    {
      sub_1003A647C(&unk_1010A9928, sub_1003BFDAC);
    }
  }

  return sub_10003D90C(v28);
}

uint64_t sub_10037A404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&qword_10118C550);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&qword_10118D3E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&unk_10118D3F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&unk_10118C4D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&unk_10118D400);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&unk_10118C4E0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_10118C4D0;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &unk_10118C4E0);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &qword_10118D3E8;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C230, &qword_10118C550);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for Composer();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037AA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&qword_1011828F0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&qword_10118CEB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&unk_10118CEC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&qword_101193C80);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&unk_10118CDD0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_10118CDC0;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &unk_10118CDD0);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &qword_10118CEB8;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&qword_10118C1D0, &qword_1011828F0);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for Playlist.Folder.Item();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037B03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&qword_10118D210);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&qword_10118D218);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&unk_10118D220);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&unk_10118DE60);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&unk_10118D230);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&unk_10118DE70);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_10118DE60;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &unk_10118DE70);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &qword_10118D218;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C240, &qword_10118D210);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for Genre();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037B658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&unk_101181600);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&unk_10118D1D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&qword_101193AF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&unk_101193AA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_1011846C0;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &unk_10118D1E0);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &unk_10118D1D0;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C260, &unk_101181600);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for MusicVideo();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&qword_10118D1A0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&qword_10118D1A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&qword_10118D1B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&qword_10118D1C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&qword_10118D1C8);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &qword_10118D1B8;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &qword_10118D1C8);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &qword_10118D1A8;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C2A0, &qword_10118D1A0);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for Song();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&qword_10118D130);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&qword_10118D138);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&qword_10118D140);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&qword_10118D148);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&qword_10118D150);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&qword_10118D158);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &qword_10118D148;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &qword_10118D158);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &qword_10118D138;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C270, &qword_10118D130);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for TVEpisode();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037C8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&qword_1011815C0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&qword_10118D120);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&qword_1011846D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&unk_10118F1E0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&unk_101184700);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_1011846E0;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &unk_101184700);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &qword_10118D120;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C140, &qword_1011815C0);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for Album();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037CEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&qword_101193B90);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&unk_10118D0E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&qword_1011A1980);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&qword_10118D0F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&qword_10118D0F8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&unk_10118D100);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &qword_10118D0F0;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &unk_10118D100);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &unk_10118D0E0;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&qword_10118C150, &qword_101193B90);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for Artist();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037D4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&qword_10118D0B0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&qword_10118D0B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&unk_10118D0C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&unk_10118D0D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&qword_1011A3880);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_1011A3860;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &qword_1011A3880);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &qword_10118D0B8;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_10118C250, &qword_10118D0B0);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for MusicMovie();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10037DB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_10010FC20(&unk_1011A3E20);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&unk_10118D080);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10010FC20(&unk_101196FB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35 - v9;
  v10 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&unk_101196F90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v20 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = &unk_10118D090;
    v22 = v12;
LABEL_5:
    sub_1000095E8(v22, v21);
LABEL_6:
    v23 = 1;
    v24 = v40;
    goto LABEL_7;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &unk_10118D0A0);
  (*(v14 + 32))(v19, v16, v13);
  MusicLibrarySectionedResponse.sections.getter();
  IndexPath.section.getter();
  Array.subscript.getter(v7, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v19, v13);
    v21 = &unk_10118D080;
    v22 = v6;
    goto LABEL_5;
  }

  v27 = v37;
  (*(v8 + 32))(v37, v6, v7);
  MusicLibrarySection.items.getter();
  sub_100020674(&unk_101197060, &unk_1011A3E20);
  v28 = v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v29 = dispatch thunk of Collection.distance(from:to:)();
  v30 = *(v38 + 8);
  v38 += 8;
  v35 = v30;
  v30(v3, v28);
  if (IndexPath.item.getter() >= v29)
  {
    (*(v8 + 8))(v27, v7);
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  v31 = IndexPath.item.getter();
  v32 = NSNotFound.getter();
  v24 = v40;
  if (v31 == v32)
  {
    (*(v8 + 8))(v37, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 1;
  }

  else
  {
    v33 = v37;
    MusicLibrarySection.items.getter();
    IndexPath.item.getter();
    v34 = v36;
    MusicItemCollection.subscript.getter();
    v35(v3, v34);
    (*(v8 + 8))(v33, v7);
    (*(v14 + 8))(v19, v13);
    v23 = 0;
  }

LABEL_7:
  v25 = type metadata accessor for RecentlyAddedMusicItem();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

id sub_10037E11C(uint64_t *a1, int a2, char a3)
{
  v4 = v3;
  LODWORD(v96) = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v7 - 8);
  v91 = &v91 - v8;
  v9 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v9);
  *&v101 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = _s9PlaylistsVMa(0);
  v11 = __chkstk_darwin(v94);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v91 - v14;
  v15 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_pendingSelectedPlaylistItem;
  v16 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v16 - 8) + 56))(&v3[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___globalHeaderRegistration;
  v18 = sub_10010FC20(&unk_10118A650);
  v19 = *(*(v18 - 8) + 56);
  v19(&v4[v17], 1, 1, v18);
  v19(&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___headerRegistration], 1, 1, v18);
  v20 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listPlaylistCellRegistration;
  v21 = sub_10010FC20(&qword_10118CCD8);
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listFolderCellRegistration;
  v23 = sub_10010FC20(&qword_10118CCE8);
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridPlaylistCellRegistration;
  v25 = sub_10010FC20(&qword_10118CCF8);
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridFolderCellRegistration;
  v27 = sub_10010FC20(&unk_10118CD08);
  (*(*(v27 - 8) + 56))(&v4[v26], 1, 1, v27);
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView] = 0;
  v28 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController;
  v29 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v4[v28] = sub_10003AAD8(0xD000000000000020, 0x8000000100E483C0);
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_dragDropController] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController] = 0;
  v30 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___actionMetricsReportingContext;
  v31 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v31 - 8) + 56))(&v4[v30], 1, 1, v31);
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker] = 0;
  v32 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___pageProperties;
  v33 = sub_10010FC20(&unk_1011839D0);
  (*(*(v33 - 8) + 56))(&v4[v32], 1, 1, v33);
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup] = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse] = 0;
  v34 = &v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponseSubscription];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_foregroundObserver] = 0;
  sub_1003C16C8(a1, &v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope], _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v98 = v9;
  v35 = sub_1000060E4(v9, qword_101218730);
  v36 = sub_1001982EC(a1, v35);
  if (v36)
  {
    v37 = 0xD000000000000011;
  }

  else
  {
    v37 = 0xD000000000000010;
  }

  if (v36)
  {
    v38 = "LibraryPlaylists";
  }

  else
  {
    v38 = "v32@0:8@16@24";
  }

  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController] = sub_10059A684(v37, v38 | 0x8000000000000000, a3 & 1);
  v100 = a1;
  v39 = a1;
  v40 = v101;
  sub_1003C16C8(v39, v101, _s9PlaylistsV5ScopeVMa);
  type metadata accessor for MusicLibrary();
  *v13 = static MusicLibrary.shared.getter();
  *(v13 + 2) = 0;
  v13[24] = 1;
  v41 = v94;
  v42 = &v13[*(v94 + 9)];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  v95 = v41[10];
  *&v13[v95] = &_swiftEmptySetSingleton;
  v43 = &v13[v41[11]];
  *v43 = 263;
  v44 = v41[8];
  sub_1003C16C8(v40, &v13[v44], _s9PlaylistsV5ScopeVMa);
  v13[8] = v96 & 1;
  v13[9] = 0;
  v92 = objc_opt_self();
  v45 = [v92 standardUserDefaults];
  v93 = v44;
  v46 = sub_1001982EC(&v13[v44], v35);
  if (v46)
  {
    v47 = 0xD000000000000011;
  }

  else
  {
    v47 = 0xD000000000000010;
  }

  v96 = "LibraryPlaylists";
  v94 = "v32@0:8@16@24";
  if (v46)
  {
    v48 = "LibraryPlaylists";
  }

  else
  {
    v48 = "v32@0:8@16@24";
  }

  v103 = v47;
  v104 = v48 | 0x8000000000000000;

  v49._countAndFlagsBits = 0x53746E65746E6F43;
  v49._object = 0xEB0000000074726FLL;
  String.append(_:)(v49);

  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v103);

  v50 = sub_100375B90(v103);
  if ((v50 & 0xFF00) == 0x200)
  {
    v51 = v35;
    v52 = sub_1001982EC(v101, v35);
    v50 = sub_10045FDA0(v52 & 1 | 0x80u);
    if ((v50 & 0xFF00) == 0x200)
    {
      LOBYTE(v53) = 1;
      LOBYTE(v50) = 7;
      goto LABEL_20;
    }
  }

  else
  {
    v51 = v35;
  }

  v53 = (v50 >> 8) & 1;
LABEL_20:
  v54 = 0xD000000000000010;
  *v43 = v50;
  v43[1] = v53;
  v55 = [v92 standardUserDefaults];
  v56 = v51;
  v57 = sub_1001982EC(&v13[v93], v51);
  if (v57)
  {
    v54 = 0xD000000000000011;
  }

  v58 = v96;
  if ((v57 & 1) == 0)
  {
    v58 = v94;
  }

  v59 = v58 | 0x8000000000000000;
  v60 = sub_10010FC20(&unk_10118CD70);
  v103 = v54;
  v104 = v59;

  v61._countAndFlagsBits = 0x704F7265746C6946;
  v61._object = 0xEC0000006E6F6974;
  String.append(_:)(v61);

  sub_100178DD8(&unk_101182910, sub_100178D84);
  sub_100178DD8(&unk_101182920, sub_100178E50);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v60, &v103);

  v62 = v103;
  if (!v103)
  {
    v63 = sub_10018F3F4();
    v64 = Optional<A>.convertToSet.getter(v63);
    if (v64)
    {
      v62 = v64;
    }

    else
    {
      v62 = &_swiftEmptySetSingleton;
    }
  }

  v66 = v100;
  v65 = v101;
  v67 = v98;
  v68 = sub_10018F5B8();
  v69 = sub_1003AE5C4(v68, v62);

  sub_1003C1730(v65, _s9PlaylistsV5ScopeVMa);
  *&v13[v95] = v69;
  v70 = v97;
  sub_1003C1790(v13, v97, _s9PlaylistsVMa);
  sub_10010FC20(&qword_101191390);
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] = sub_1003A13B8(v70);
  v102.receiver = v4;
  v102.super_class = ObjectType;
  v71 = objc_msgSendSuper2(&v102, "initWithNibName:bundle:", 0, 0);
  sub_10037EDC4();
  v72 = String._bridgeToObjectiveC()();

  [v71 setTitle:v72];

  if (sub_1001982EC(v66, v56))
  {
    v73 = 6;
  }

  else
  {
    v74 = v66 + *(v67 + 20);
    v75 = v91;
    sub_1000089F8(v74, v91, &unk_10118F670);
    v76 = type metadata accessor for Playlist.Folder();
    v77 = (*(*(v76 - 8) + 48))(v75, 1, v76);
    sub_1000095E8(v75, &unk_10118F670);
    if (v77 == 1)
    {
      v73 = 10;
    }

    else
    {
      v73 = 11;
    }
  }

  UIViewController.playActivityFeatureIdentifier.setter(v73);
  v78 = [v71 traitCollection];

  v79 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v81 = v80;

  if ((v81 & 1) == 0)
  {
    v82 = [v71 navigationItem];
    [v82 setLargeTitleDisplayMode:v79];
  }

  v83 = v71;
  v84 = [v83 navigationItem];
  [v84 _setSupportsTwoLineLargeTitles:1];

  v85 = [v83 navigationItem];
  [v85 _setLargeTitleTwoLineMode:1];

  sub_10010FC20(&unk_101182D80);
  v86 = swift_allocObject();
  v101 = xmmword_100EBC6B0;
  *(v86 + 16) = xmmword_100EBC6B0;
  v87 = sub_100217F14();
  *(v86 + 32) = &type metadata for LibraryFilterTrait;
  *(v86 + 40) = v87;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v88 = swift_allocObject();
  *(v88 + 16) = v101;
  v89 = sub_100137E8C();
  *(v88 + 32) = &type metadata for MusicLibraryTrait;
  *(v88 + 40) = v89;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_1003C1730(v66, _s9PlaylistsV5ScopeVMa);
  return v83;
}

uint64_t sub_10037EDC4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-v4];
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v0 + *(v10 + 20), v5, &unk_10118F670);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_10118F670);
    v11 = *v0;
    sub_10010FC20(&unk_101182940);
    v12 = type metadata accessor for Playlist.Variant();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100EBC6B0;
    (*(v13 + 104))(v15 + v14, enum case for Playlist.Variant.personalMix(_:), v12);
    v16 = sub_10010DF7C(v15);
    swift_setDeallocating();
    (*(v13 + 8))(v15 + v14, v12);
    swift_deallocClassInstance();
    sub_10018FF54(v11, v16);

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v17 = Playlist.Folder.name.getter();
    (*(v7 + 8))(v9, v6);
    return v17;
  }
}

void sub_10037F198()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = sub_100395058();
  v3 = sub_100393588();
  v4 = 1;
  [(objc_class *)v3 setHidden:(sub_1003923F8() & 1) == 0];

  v5 = [v0 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != 1)
  {
    v4 = sub_1003951D4();
  }

  v7 = sub_100394FE0();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_1007E953C(v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v11 setHidden:v4];

      ++v10;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v14 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups];

  sub_1003BBFC8(0, 0, v14);

  v15 = [v1 navigationItem];
  sub_100009F78(0, &unk_1011842F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setTrailingItemGroups:isa];
}

uint64_t sub_10037F3EC()
{

  sub_10010FC20(&unk_10118CE30);
  return MusicLibraryRequest.library.setter();
}

uint64_t sub_10037F438()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v58.receiver = v0;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad");
  v3 = sub_10037FC08();
  v4 = sub_100380204();
  [v3 setCollectionViewLayout:v4];

  v5 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView;
  v6 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView] setPrefetchDataSource:v6];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v10 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v9 = sub_1003C1434;
  v9[1] = v8;

  sub_100020438(v10);

  v11 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v12 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v11 = sub_100380820;
  v11[1] = 0;
  sub_100020438(v12);
  sub_10037F198();
  v13 = *&v1[v5];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v16 = *&v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  *v15 = sub_1003C143C;
  v15[1] = v14;
  v17 = v13;

  sub_100020438(v16);

  v18 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v18 + 16);
  *(v18 + 16) = sub_1003C1444;
  *(v18 + 24) = v19;

  sub_100020438(v20);

  v21 = sub_100380E10();
  v22 = [v1 traitCollection];
  v23 = [v22 horizontalSizeClass];

  [*(v21 + 32) setHidesNavigationBarDuringPresentation:v23 == 1];

  sub_10010FC20(&unk_101182D80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  *(v24 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v24 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v25 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = v25[2];
  v25[2] = sub_1003C1450;
  v25[3] = v26;

  sub_100020438(v27);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v25[4];
  v25[4] = sub_1003C1458;
  v25[5] = v28;

  sub_100020438(v29);

  v30 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = *(v30 + 88);
  *(v30 + 88) = sub_1003C1460;
  *(v30 + 96) = v31;

  sub_100020438(v32);

  v33 = sub_10010FC20(&unk_10118A650);
  v52[3] = v33;
  v34 = sub_10001C8B8(v52);
  sub_1003830C0(v34);
  v53[3] = v33;
  v35 = sub_10001C8B8(v53);
  sub_100383344(v35);
  v54[3] = sub_10010FC20(&qword_10118CCD8);
  v36 = sub_10001C8B8(v54);
  sub_1003835CC(v36);
  v55[3] = sub_10010FC20(&qword_10118CCE8);
  v37 = sub_10001C8B8(v55);
  sub_10038386C(v37);
  v56[3] = sub_10010FC20(&qword_10118CCF8);
  v38 = sub_10001C8B8(v56);
  sub_100383AE4(v38);
  v57[3] = sub_10010FC20(&unk_10118CD08);
  v39 = sub_10001C8B8(v57);
  sub_100383D5C(v39);
  swift_arrayDestroy();
  [*&v1[v5] setSpringLoaded:1];
  v40 = *&v1[v5];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v44 = swift_allocObject();
  *(v44 + 24) = 0u;
  *(v44 + 40) = 0u;
  *(v44 + 56) = 0u;
  *(v44 + 72) = 0u;
  *(v44 + 88) = 1;
  *(v44 + 96) = 0;
  v45 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v46 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v46 - 8) + 56))(v44 + v45, 1, 1, v46);
  *(v44 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v44 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v44 + 16) = v40;
  *(v44 + 24) = sub_1003C1468;
  *(v44 + 32) = v41;
  *(v44 + 40) = sub_1003C1470;
  v47 = *(v44 + 56);
  *(v44 + 64) = 0;
  *(v44 + 48) = v42;
  *(v44 + 56) = 0;
  v48 = v40;
  swift_retain_n();
  swift_retain_n();

  sub_100020438(v47);
  v49 = *(v44 + 72);
  *(v44 + 72) = sub_1003C1478;
  *(v44 + 80) = v43;

  sub_100020438(v49);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_dragDropController] = v44;

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  sub_10038556C();
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_foregroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, 0, 1, 1, sub_1003C1480, v50);
}

id sub_10037FC08()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v5);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView];
  if (v16)
  {
    v17 = *&v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView];
LABEL_14:
    v55 = v16;
    return v17;
  }

  v57 = v5;
  v58 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView;
  sub_100009F78(0, &qword_101184600);
  (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v8);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v18 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v13 + 8))(v15, v12);
  v19 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v19);
  v20 = v18;
  v21 = sub_100188F30(v20, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v23 = result;
    [result bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v60.receiver = v21;
    v60.super_class = v19;
    v32 = v21;
    objc_msgSendSuper2(&v60, "frame");
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v59.receiver = v32;
    v59.super_class = v19;
    objc_msgSendSuper2(&v59, "setFrame:", v25, v27, v29, v31);
    sub_1001891B4(v34, v36, v38, v40);
    [v32 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v41 = result;
      [result addSubview:v32];

      v42 = v32;
      [v42 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v42 setDataSource:v1];
      [v42 setDelegate:v1];
      [v42 setKeyboardDismissMode:1];
      [v42 setAllowsFocus:1];
      [v42 setRemembersLastFocusedIndexPath:1];

      v43 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
      swift_beginAccess();
      sub_1003C16C8(&v1[v43], v7, _s9PlaylistsV5ScopeVMa);
      v44 = v57;
      sub_1000089F8(v7 + *(v57 + 20), v4, &unk_10118F670);
      v45 = type metadata accessor for Playlist.Folder();
      v46 = (*(*(v45 - 8) + 48))(v4, 1, v45);
      sub_1000095E8(v4, &unk_10118F670);
      if (v46 == 1)
      {
        if (qword_10117F298 != -1)
        {
          swift_once();
        }

        v47 = sub_1000060E4(v44, qword_101218730);
        if (sub_1001982EC(v7, v47))
        {
          v48 = AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor();
        }

        else
        {
          v48 = AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor();
        }

        v51 = *v48;
        v52 = v48[1];
      }

      else
      {
        v49._object = 0x8000000100E483F0;
        v49._countAndFlagsBits = 0xD00000000000001CLL;
        v50 = AccessibilityIdentifier.init(name:)(v49);
        v51 = v50;
        v52 = *(&v50 + 1);
      }

      sub_1003C1730(v7, _s9PlaylistsV5ScopeVMa);
      v53 = UIView.withAccessibilityIdentifier(_:)(v51, v52);

      v54 = *&v1[v58];
      *&v1[v58] = v53;
      v17 = v53;

      v16 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100380204()
{
  v1 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v1 - 8);
  v3 = &aBlock[-1] - v2;
  v4 = sub_10037FC08();
  v5 = v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(*&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController] + 32);
  }

  v7 = *&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView];
  v8 = &v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
  swift_beginAccess();
  v9 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(&v8[*(v9 + 20)], v3, &unk_10118F670);
  v10 = type metadata accessor for Playlist.Folder();
  v11 = (*(*(v10 - 8) + 48))(v3, 1, v10);
  v12 = v7;
  sub_1000095E8(v3, &unk_10118F670);
  if (v11 == 1)
  {
    v13 = 0;
    if ((v6 & 1) == 0)
    {
LABEL_6:
      v14 = sub_10059B450(v12, v13, static MPCPlayerCommandRequest.isAvailable(in:), 0);

      return v14;
    }
  }

  else
  {
    v15 = [v0 traitCollection];
    v16 = [v15 horizontalSizeClass];

    v13 = v16 == 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v17 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  if (v13)
  {
    v19 = objc_opt_self();
    v20 = [v19 fractionalWidthDimension:1.0];
    v21 = [v19 estimatedDimension:65.0];
    v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v23 = String._bridgeToObjectiveC()();

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:v23 alignment:1];

    sub_10010FC20(&qword_101183990);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBC6C0;
    *(v25 + 32) = v24;
    sub_100009F78(0, &unk_1011913A0);
    v26 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 setBoundarySupplementaryItems:isa];

    v28 = *(v18 + 16);
    *(v18 + 16) = v26;
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v30 + 80) = 0;
  *(v30 + 88) = v18;
  v31 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010A9EB8;
  v32 = _Block_copy(aBlock);

  v14 = [v31 initWithSectionProvider:v32 configuration:v17];

  _Block_release(v32);

  return v14;
}

void sub_1003806E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(*(Strong + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController) + 32) == 1)
    {
      v6 = [objc_opt_self() currentTraitCollection];
      [v6 displayScale];
    }

    else
    {
      v7 = sub_10037FC08();
      v8 = sub_100189858();

      (v8)(a1, a2);
    }
  }
}

unint64_t sub_100380820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10010FC20(&qword_1011828F0);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_10010FC20(&unk_10118CEC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Playlist.Folder.Item();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_101182900);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_10010FC20(&qword_101193C80);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_1000089F8(a1, v32, &unk_101183F30);
  if (!v33)
  {
    sub_1000095E8(v32, &unk_101183F30);
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v21 = swift_dynamicCast();
  (*(v18 + 56))(v16, v21 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_7:
    sub_1000095E8(v16, &unk_101182900);
    v25 = type metadata accessor for Artwork();
    return (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  }

  (*(v18 + 32))(v20, v16, v17);
  v22 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v22 + 16))
  {
    (*(v8 + 16))(v10, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v24 = v29;
    MusicItemCollection.subscript.getter();
    (*(v28 + 8))(v6, v24);
    Playlist.Folder.Item.artwork.getter();
    (*(v26 + 8))(v13, v27);
    return (*(v18 + 8))(v20, v17);
  }

  __break(1u);
  return result;
}

void sub_100380CF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v6 = sub_10037FC08();
      v7 = sub_100380204();
      sub_100189E04(v7);
    }
  }
}

void sub_100380D88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10037FC08();
    v3 = sub_100380204();

    sub_100189E04(v3);
  }
}

uint64_t sub_100380E10()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_100380EB4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_10010FC20(&qword_101193C80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v56 = &v51 - v8;
  v9 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = sub_10010FC20(&unk_101182900);
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  __chkstk_darwin(v15 - 8);
  v61 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v60 = &v51 - v18;
  __chkstk_darwin(v19);
  v58 = &v51 - v20;
  __chkstk_darwin(v21);
  v57 = &v51 - v22;
  __chkstk_darwin(v23);
  v25 = &v51 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v54 = a2;
  v55 = a1;
  v62 = a3;
  RequestResponse.Revision.content.getter(v14);
  v26 = sub_10010FC20(&unk_10118CDD0);
  v27 = *(*(v26 - 8) + 48);
  if (v27(v14, 1, v26) == 1)
  {
    sub_1000095E8(v14, &unk_10118CDC0);
    v28 = 1;
  }

  else
  {
    (*(v7 + 16))(v25, v14, v6);
    sub_1000095E8(v14, &unk_10118CDD0);
    v28 = 0;
  }

  (*(v7 + 56))(v25, v28, 1, v6);
  v53 = sub_10037FC08();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v11);

  if (v27(v11, 1, v26) == 1)
  {
    sub_1000095E8(v11, &unk_10118CDC0);
    v52 = 0;
  }

  else
  {
    v30 = v56;
    (*(v7 + 16))(v56, v11, v6);
    sub_1000095E8(v11, &unk_10118CDD0);
    v52 = MusicLibrarySectionedResponse.sections.getter();
    (*(v7 + 8))(v30, v6);
  }

  v31 = v54;
  v32 = v57;
  sub_1000089F8(v25, v57, &unk_101182900);
  if ((*(v7 + 48))(v32, 1, v6) == 1)
  {
    sub_1000095E8(v32, &unk_101182900);
    v57 = 0;
  }

  else
  {
    v57 = MusicLibrarySectionedResponse.sections.getter();
    (*(v7 + 8))(v32, v6);
  }

  v33 = Strong;
  v34 = [*(sub_100380E10() + 32) searchBar];
  LODWORD(v56) = [v34 isFirstResponder];

  v35 = v58;
  v36 = v25;
  v51 = v25;
  sub_1000089F8(v25, v58, &unk_101182900);
  v37 = *(v59 + 80);
  v38 = swift_allocObject();
  v39 = v62;
  v38[2] = v31;
  v38[3] = v39;
  v38[4] = v33;
  sub_10003D17C(v35, v38 + ((v37 + 40) & ~v37), &unk_101182900);
  v40 = v60;
  sub_1000089F8(v25, v60, &unk_101182900);
  v41 = swift_allocObject();
  v59 = v41;
  *(v41 + 16) = v33;
  sub_10003D17C(v40, v41 + ((v37 + 24) & ~v37), &unk_101182900);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v61;
  sub_1000089F8(v36, v61, &unk_101182900);
  v44 = (v37 + 32) & ~v37;
  v45 = swift_allocObject();
  v46 = v55;
  *(v45 + 16) = v42;
  *(v45 + 24) = v46;
  sub_10003D17C(v43, v45 + v44, &unk_101182900);
  v47 = v33;

  v48 = sub_10010FC20(&unk_10118CEC0);
  v49 = sub_1003C1614();
  v50 = v53;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v52, v57, 0, 0, 1, v56 ^ 1, sub_1003C14B0, v38, sub_100381808, 0, sub_1003818C8, 0, sub_1003C1524, v59, sub_1003C1594, v45, v48, v49);

  sub_1000095E8(v51, &unk_101182900);
}

uint64_t sub_10038164C(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&unk_101182900);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  a1(v8);
  v11 = *(a3 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController);
  sub_1000089F8(a4, v10, &unk_101182900);
  v12 = sub_10010FC20(&qword_101193C80);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1000095E8(v10, &unk_101182900);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v12;
    v14 = sub_10001C8B8(&v18);
    (*(v13 + 32))(v14, v10, v12);
  }

  v15 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v18, v11 + v15, &unk_101183F30);
  return swift_endAccess();
}

uint64_t sub_100381808()
{
  type metadata accessor for Playlist.Folder.Item();
  sub_10003D8C4(&unk_1011913F0, &type metadata accessor for Playlist.Folder.Item);
  sub_10003D8C4(&qword_10118D3E0, &type metadata accessor for Playlist.Folder.Item);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_1003818C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicFavoriteStatus();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v69 - v7;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v69 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v75);
  v78 = &v69 - v11;
  v12 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v12 - 8);
  v74 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v69 - v15;
  __chkstk_darwin(v16);
  v80 = &v69 - v17;
  v18 = type metadata accessor for Playlist();
  v82 = *(v18 - 8);
  v83 = v18;
  __chkstk_darwin(v18);
  v81 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v84 = &v69 - v21;
  v22 = type metadata accessor for Playlist.Folder.Item();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&unk_101191430);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v69 - v28;
  v31 = *(v30 + 56);
  v32 = *(v23 + 16);
  v32(&v69 - v28, a1, v22, v27);
  (v32)(&v29[v31], a2, v22);
  v33 = *(v23 + 88);
  v34 = v33(v29, v22);
  v35 = v34;
  if (v34 != enum case for Playlist.Folder.Item.folder(_:))
  {
    if (v34 != enum case for Playlist.Folder.Item.playlist(_:))
    {
      goto LABEL_10;
    }

    (v32)(v25, v29, v22);
    v37 = *(v23 + 96);
    v37(v25, v22);
    if (v33(&v29[v31], v22) != v35)
    {
      (*(v82 + 8))(v25, v83);
      goto LABEL_10;
    }

    v37(&v29[v31], v22);
    v38 = v83;
    v39 = *(v82 + 32);
    v39(v84, v25, v83);
    v39(v81, &v29[v31], v38);
    v40 = Playlist.name.getter();
    v42 = v41;
    if (v40 == Playlist.name.getter() && v42 == v43)
    {

      v44 = v79;
      v45 = v80;
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v44 = v79;
      v45 = v80;
      if ((v48 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    Playlist.artwork.getter();
    Playlist.artwork.getter();
    v49 = *(v75 + 48);
    v50 = v78;
    sub_1000089F8(v45, v78, &unk_101188920);
    v51 = v50;
    sub_1000089F8(v44, v50 + v49, &unk_101188920);
    v52 = v76;
    v53 = *(v77 + 48);
    if (v53(v50, 1, v76) == 1)
    {
      sub_1000095E8(v44, &unk_101188920);
      v54 = v78;
      sub_1000095E8(v45, &unk_101188920);
      if (v53(v54 + v49, 1, v52) == 1)
      {
        sub_1000095E8(v54, &unk_101188920);
LABEL_22:
        v61 = v70;
        Playlist.favoriteStatus.getter();
        v62 = v71;
        Playlist.favoriteStatus.getter();
        v46 = static MusicFavoriteStatus.== infix(_:_:)();
        v63 = *(v72 + 8);
        v64 = v62;
        v65 = v73;
        v63(v64, v73);
        v66 = v61;
        v56 = v82;
        v63(v66, v65);
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    v55 = v74;
    sub_1000089F8(v50, v74, &unk_101188920);
    if (v53(v50 + v49, 1, v52) == 1)
    {
      sub_1000095E8(v79, &unk_101188920);
      v54 = v78;
      sub_1000095E8(v80, &unk_101188920);
      (*(v77 + 8))(v55, v52);
LABEL_19:
      sub_1000095E8(v54, &unk_101191420);
      goto LABEL_20;
    }

    v57 = v77;
    v58 = v51 + v49;
    v59 = v69;
    (*(v77 + 32))(v69, v58, v52);
    sub_10003D8C4(&unk_10118D3D0, &type metadata accessor for Artwork);
    LODWORD(v75) = dispatch thunk of static Equatable.== infix(_:_:)();
    v60 = *(v57 + 8);
    v60(v59, v52);
    sub_1000095E8(v79, &unk_101188920);
    sub_1000095E8(v80, &unk_101188920);
    v60(v55, v52);
    sub_1000095E8(v51, &unk_101188920);
    if (v75)
    {
      goto LABEL_22;
    }

LABEL_20:
    v46 = 0;
    v56 = v82;
LABEL_23:
    v67 = *(v56 + 8);
    v68 = v83;
    v67(v81, v83);
    v67(v84, v68);
    (*(v23 + 8))(v29, v22);
    return v46 & 1;
  }

  if (v33(&v29[v31], v22) != v34)
  {
LABEL_10:
    sub_1000095E8(v29, &unk_101191430);
    goto LABEL_11;
  }

  v36 = *(v23 + 8);
  v36(&v29[v31], v22);
  v36(v29, v22);
LABEL_11:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_1003821F0(char *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101182900);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_10010FC20(&qword_101193C80);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  sub_100174190();
  sub_10037F198();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118CDD0);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_10118CDC0);
    v15 = 1;
  }

  else
  {
    (*(v11 + 16))(v13, v9, v10);
    sub_1000095E8(v9, &unk_10118CDD0);
    v16 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v13, v10);
    v15 = !v16;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v17 = sub_10037FC08();
  [v17 setBouncesVertically:v15 & 1];

  [*&a1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v15 & 1];
  v18 = sub_100380E10();
  sub_1000089F8(a2, v6, &unk_101182900);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1000095E8(v6, &unk_101182900);
  }

  else
  {
    v19 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v6, v10);
    if (!v19)
    {
      v28 = *(v18 + 64);
      *(v18 + 64) = 1;
      if (v28)
      {
      }

      goto LABEL_14;
    }
  }

  v20 = (*(*&a1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v21 = v20[1];
  if (!v21)
  {
    v27 = *(v18 + 64);
    *(v18 + 64) = 0;
    if ((v27 & 1) == 0)
    {
    }

    goto LABEL_14;
  }

  v22 = *v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23 != 0;
  v25 = *(v18 + 64);
  *(v18 + 64) = v24;
  if (v25 != v24)
  {
LABEL_14:
    sub_10043EAB8();
  }
}

void sub_1003825F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v5 = sub_10010FC20(&unk_101182900);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for Playlist.Folder.Item();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v35 = v13;

    v23 = RequestResponse.Controller.revision.getter();

    v24 = *(v23 + *(*v23 + 112));

    if (v24 == *(a3 + *(*a3 + 112)))
    {
      v25 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_pendingSelectedPlaylistItem;
      swift_beginAccess();
      sub_1000089F8(v22 + v25, v16, &qword_1011831B0);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {

        sub_1000095E8(v16, &qword_1011831B0);
        return;
      }

      (*(v18 + 32))(v20, v16, v17);
      v34 = sub_10037FC08();
      sub_1000089F8(v36, v7, &unk_101182900);
      v26 = sub_10010FC20(&qword_101193C80);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v7, 1, v26) == 1)
      {
        sub_1000095E8(v7, &unk_101182900);
        v28 = type metadata accessor for IndexPath();
        (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
        isa = 0;
      }

      else
      {
        sub_1005046D4(v20, v10);
        (*(v27 + 8))(v7, v26);
        v30 = type metadata accessor for IndexPath();
        v31 = *(v30 - 8);
        isa = 0;
        if ((*(v31 + 48))(v10, 1, v30) != 1)
        {
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v31 + 8))(v10, v30);
        }
      }

      v32 = v34;
      [v34 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      (*(v18 + 8))(v20, v17);
      v33 = v35;
      (*(v18 + 56))(v35, 1, 1, v17);
      swift_beginAccess();
      sub_10006B010(v33, v22 + v25, &qword_1011831B0);
      swift_endAccess();
    }
  }
}

void sub_100382B34()
{
  v0 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v2);

    v5 = sub_10010FC20(&unk_10118CDD0);
    if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
    {
      sub_1000095E8(v2, &unk_10118CDC0);
      v6 = _swiftEmptyArrayStorage;
    }

    else
    {
      v6 = *&v2[*(v5 + 36)];

      sub_1000095E8(v2, &unk_10118CDD0);
    }

    v7 = v6[2];

    v8 = sub_100382E3C();
    swift_getKeyPath();
    v14 = v8;
    sub_10003D8C4(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + 48);

    if ((v7 == 0) == v9)
    {
    }

    else
    {
      v10 = *&v4[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource];
      v11 = v7 == 0;
      if (((v7 == 0) ^ *(v10 + 48)))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v13[-16] = v10;
        v13[-8] = v11;
        v14 = v10;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v10 + 48) = v11;
      }
    }
  }
}

uint64_t sub_100382E3C()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s17PlayShuffleHeaderV10DataSourceCMa(0);
    v2 = swift_allocObject();
    *(v2 + 48) = 0;

    ObservationRegistrar.init()();
    *(v2 + 16) = sub_1003C18A8;
    *(v2 + 24) = v3;
    *(v2 + 32) = sub_1003C141C;
    *(v2 + 40) = v4;

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100382F60(uint64_t a1, unint64_t a2)
{
  v4 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController);
    v9 = result;

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      a1 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = *(v8 + 48);
    v12 = *(*v11 + 96);
    swift_beginAccess();
    sub_1003C16C8(v11 + v12, v6, _s9PlaylistsVMa);
    v13 = &v6[*(v4 + 36)];

    *v13 = a1;
    v13[1] = v10;
    sub_1003777F4(v6);
  }

  return result;
}

uint64_t sub_1003830C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_100383344@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_1003835CC@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&qword_10118D318);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listPlaylistCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &qword_10118D318);
  v11 = sub_10010FC20(&qword_10118CCD8);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000095E8(v9, &qword_10118D318);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Playlist();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v10, &qword_10118D318);
  return swift_endAccess();
}

uint64_t sub_10038386C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_101191440);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listFolderCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_101191440);
  v10 = sub_10010FC20(&qword_10118CCE8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_101191440);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Playlist.Folder();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_101191440);
  return swift_endAccess();
}

uint64_t sub_100383AE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118D2B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridPlaylistCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10118D2B8);
  v10 = sub_10010FC20(&qword_10118CCF8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_10118D2B8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for Playlist();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_10118D2B8);
  return swift_endAccess();
}

uint64_t sub_100383D5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118D260);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridFolderCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118D260);
  v10 = sub_10010FC20(&unk_10118CD08);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118D260);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for Playlist.Folder();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118D260);
  return swift_endAccess();
}

uint64_t sub_100383FD4(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Folder();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v61 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v53 - v6;
  v7 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v10 - 8);
  v56 = &v53 - v11;
  v58 = type metadata accessor for Playlist();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v53 - v14;
  v15 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  v18 = type metadata accessor for Playlist.Folder.Item();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    v55 = v3;
    v54 = v2;
    v27 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController;

    sub_10037AA20(a1, v17);

    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {

      sub_1000095E8(v17, &qword_1011831B0);
      return 0;
    }

    (*(v19 + 32))(v24, v17, v18);
    (*(v19 + 16))(v21, v24, v18);
    v28 = (*(v19 + 88))(v21, v18);
    v29 = v28;
    if (v28 == enum case for Playlist.Folder.Item.folder(_:))
    {
      (*(v19 + 96))(v21, v18);
      v30 = v55;
      v60 = v24;
      v31 = v62;
      v32 = v21;
      v33 = v54;
      (*(v55 + 32))(v62, v32, v54);
      sub_10010FC20(&qword_101185210);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      v59 = type metadata accessor for DragDropToFolder(0);
      *(inited + 56) = v59;
      *(inited + 64) = sub_10003D8C4(&qword_10118D3B0, type metadata accessor for DragDropToFolder);
      v35 = sub_10001C8B8((inited + 32));
      v36 = *(v30 + 16);
      v36(v35, v31, v33);
      (*(v19 + 104))(v35, v29, v18);
      *(v35 + *(v59 + 5)) = 0;
      v37 = sub_100797240(_swiftEmptyArrayStorage, inited);
      swift_setDeallocating();
      sub_10000959C(inited + 32);
      v38 = v61;
      v36(v61, v31, v33);
      v39 = sub_10079D160(v37, v38);

      (*(v55 + 8))(v31, v33);
      (*(v19 + 8))(v60, v18);
    }

    else
    {
      if (v28 != enum case for Playlist.Folder.Item.playlist(_:))
      {
        v47 = *(v19 + 8);
        v47(v24, v18);

        v47(v21, v18);
        return 0;
      }

      (*(v19 + 96))(v21, v18);
      v40 = v58;
      (*(v60 + 4))(v59, v21, v58);
      v41 = *(*&v26[v27] + 48);
      v42 = *(*v41 + 96);
      swift_beginAccess();
      sub_1003C16C8(v41 + v42, v9, _s9PlaylistsVMa);
      v43 = v56;
      sub_1001917EC(v24, v56);
      sub_1003C1730(v9, _s9PlaylistsVMa);
      v44 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v43, 1, v44) == 1)
      {
        sub_1000095E8(v43, &unk_10118CDB0);
        v46 = 0;
      }

      else
      {
        v46 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v45 + 8))(v43, v44);
      }

      v48 = v59;
      v49 = sub_10079AA48(v46);
      v50 = sub_100797240(&off_10109A928, v49);

      v51 = v60;
      v52 = v57;
      (*(v60 + 2))(v57, v48, v40);
      v39 = sub_10079C9B4(v50, v52);

      (*(v51 + 1))(v48, v40);
      (*(v19 + 8))(v24, v18);
    }

    return v39;
  }

  return result;
}

uint64_t sub_1003847E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = type metadata accessor for Playlist.Folder();
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Playlist();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v85 - v7;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v85 - v14;
  v15 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v15 - 8);
  v96 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v85 - v18;
  v20 = type metadata accessor for IndexPath();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v95 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v24 = result;
  v94 = a2;
  sub_1000089F8(a1, v19, &unk_10118BCE0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v25 = v21;
    v26 = &unk_10118BCE0;
    v27 = v19;
LABEL_7:
    sub_1000095E8(v27, v26);
    v31 = v20;
    v32 = v24;
    v33 = [v32 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v34 = v97;
    v35 = &v32[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
    swift_beginAccess();
    v36 = *(_s9PlaylistsV5ScopeVMa(0) + 20);
    v37 = type metadata accessor for DragDropToFolder.Destination(0);
    v38 = v94;
    v94[3] = v37;
    v38[4] = sub_10003D8C4(&qword_10119E620, type metadata accessor for DragDropToFolder.Destination);
    v39 = sub_10001C8B8(v38);
    sub_1000089F8(&v35[v36], v39 + *(v37 + 20), &unk_10118F670);
    v40 = v96;
    (*(v25 + 56))(v96, 1, 1, v31);
    sub_100376BEC(v40, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, v39 + *(v37 + 24));

    result = sub_1000095E8(v40, &unk_10118BCE0);
    *v39 = v34;
    return result;
  }

  v28 = v95;
  (*(v21 + 32))(v95, v19, v20);

  sub_10037AA20(v28, v8);

  v29 = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v30 = v28;
    v25 = v21;
    (*(v21 + 8))(v30, v20);
    v26 = &qword_1011831B0;
    v27 = v8;
    goto LABEL_7;
  }

  v41 = v20;
  v86 = v21;
  v42 = v93;
  (*(v29 + 32))(v93, v8, v9);
  v43 = v9;
  v44 = sub_10037FC08();
  v45 = UICollectionView.isDraggingCell(at:)();

  v46 = v29;
  if (v45)
  {

    (*(v29 + 8))(v42, v43);
    result = (*(v86 + 8))(v28, v41);
    v47 = v94;
    v94[4] = 0;
    *v47 = 0u;
    *(v47 + 1) = 0u;
  }

  else
  {
    (*(v29 + 16))(v12, v42, v43);
    v48 = (*(v29 + 88))(v12, v43);
    v49 = v43;
    v50 = v94;
    v51 = v41;
    if (v48 == enum case for Playlist.Folder.Item.folder(_:))
    {
      (*(v46 + 96))(v12, v43);
      v52 = v89;
      (*(v89 + 32))(v91, v12, v92);
      v53 = v24;
      v54 = [v53 traitCollection];
      v85 = v49;
      v55 = v54;
      sub_100137E8C();
      UITraitCollection.subscript.getter();

      v90 = v97;
      v56 = type metadata accessor for DragDropToFolder.Destination(0);
      v50[3] = v56;
      v50[4] = sub_10003D8C4(&qword_10119E620, type metadata accessor for DragDropToFolder.Destination);
      v57 = sub_10001C8B8(v50);
      v58 = v41;
      v59 = *(v56 + 20);
      v61 = v91;
      v60 = v92;
      (*(v52 + 16))(v57 + v59, v91, v92);
      v62 = v57 + v59;
      v63 = v60;
      (*(v52 + 56))(v62, 0, 1, v60);
      v64 = v86;
      v65 = v46;
      v66 = v96;
      (*(v86 + 56))(v96, 1, 1, v58);
      sub_100376BEC(v66, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, v57 + *(v56 + 24));

      sub_1000095E8(v66, &unk_10118BCE0);
      (*(v52 + 8))(v61, v63);
      (*(v65 + 8))(v93, v85);
      result = (*(v64 + 8))(v95, v58);
      *v57 = v90;
    }

    else if (v48 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v46 + 96))(v12, v43);
      v67 = v87;
      v68 = v88;
      v69 = v12;
      v70 = v90;
      (*(v87 + 32))(v88, v69, v90);
      v71 = v24;
      v72 = [v71 traitCollection];
      v85 = v43;
      v73 = v72;
      sub_100137E8C();
      UITraitCollection.subscript.getter();

      v92 = v97;
      v74 = type metadata accessor for DragDropToPlaylist.Destination(0);
      v50[3] = v74;
      v50[4] = sub_10003D8C4(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination);
      v94 = sub_10001C8B8(v50);
      v75 = v94 + *(v74 + 20);
      (*(v67 + 16))(v75, v68, v70);
      v76 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
      v77 = v86;
      v78 = v51;
      v79 = *(v86 + 56);
      v79(&v75[*(v76 + 20)], 1, 1, v78);
      v80 = &v75[*(v76 + 24)];
      *v80 = 0;
      *(v80 + 1) = 0;
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      v81 = v46;
      v82 = v96;
      v79(v96, 1, 1, v78);
      v83 = v94;
      sub_100376BEC(v82, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, v94 + *(v74 + 24));

      sub_1000095E8(v82, &unk_10118BCE0);
      (*(v67 + 8))(v88, v90);
      (*(v81 + 8))(v93, v85);
      result = (*(v77 + 8))(v95, v78);
      *v83 = v92;
    }

    else
    {

      v84 = *(v46 + 8);
      v84(v42, v43);
      (*(v86 + 8))(v95, v41);
      v50[4] = 0;
      *v50 = 0u;
      *(v50 + 1) = 0u;
      return (v84)(v12, v43);
    }
  }

  return result;
}

void sub_100385378(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, , v3, v4 = RequestResponse.Controller.revision.getter(), , v5 = *(v4 + *(*v4 + 112)), , v5))
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;

      v8 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
      v9 = (*(*(v8 - 8) + 48))(a1, 1, v8) != 1;
      RequestResponse.Controller.isPaused.setter(v9);
    }
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, qword_1012186C8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Won't pause playlists response controller since initial response hasn't loaded.", v13, 2u);
    }
  }
}

uint64_t sub_10038556C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v32 = sub_10010FC20(&qword_10118D350);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v32 - v5;
  v7 = sub_10010FC20(&qword_10118D358);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v34 = &v32 - v8;
  v40 = sub_10010FC20(&unk_10118CE30);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v32 - v9;
  v11 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Playlist.Folder();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v38 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
  swift_beginAccess();
  v18 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(&v17[*(v18 + 20)], v13, &unk_10118F670);
  v19 = *(v15 + 48);
  v39 = v14;
  if (v19(v13, 1, v14) == 1)
  {
    return sub_1000095E8(v13, &unk_10118F670);
  }

  (*(v15 + 32))(v38, v13, v39);
  type metadata accessor for Playlist.Folder.Item();
  sub_10003D8C4(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
  MusicLibraryRequest.init()();
  v21 = [v1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  MusicLibraryRequest.library.setter();
  swift_getKeyPath();
  *&v41 = Playlist.Folder.id.getter();
  *(&v41 + 1) = v22;
  MusicLibraryRequest.filter<A>(matching:equalTo:)();

  sub_100020674(&qword_10118D360, &unk_10118CE30);
  v23 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v24 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse;
  swift_beginAccess();
  *&v1[v24] = v23;

  swift_beginAccess();
  if (*&v1[v24])
  {
    swift_endAccess();

    dispatch thunk of MusicAutoupdatingResponse.$response.getter();

    sub_100009F78(0, &qword_101182960);
    v25 = static OS_dispatch_queue.main.getter();
    *&v41 = v25;
    v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
    sub_100020674(&unk_10118D368, &qword_10118D350);
    sub_1000206BC();
    v27 = v34;
    v28 = v32;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v4, &qword_101182140);

    (*(v33 + 8))(v6, v28);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_10118D378, &qword_10118D358);
    v29 = v36;
    v30 = Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v27, v29);
    *(&v42 + 1) = type metadata accessor for AnyCancellable();
    v43 = &protocol witness table for AnyCancellable;
    *&v41 = v30;
    (*(v37 + 8))(v10, v40);
    (*(v15 + 8))(v38, v39);
  }

  else
  {
    (*(v37 + 8))(v10, v40);
    (*(v15 + 8))(v38, v39);
    swift_endAccess();
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
  }

  v31 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponseSubscription;
  swift_beginAccess();
  sub_10006B010(&v41, &v1[v31], &qword_10118D380);
  return swift_endAccess();
}

void sub_100385D1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100385D70();
  }
}

void sub_100385D70()
{
  v45 = type metadata accessor for Playlist.Folder.Item();
  v1 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = sub_10037FC08();
  v13 = [v12 indexPathsForVisibleItems];

  v47 = v6;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = v14;
  v54 = *(v14 + 16);
  if (v54)
  {
    v16 = 0;
    v51 = v7 + 16;
    v52 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController;
    v50 = (v1 + 48);
    v40 = (v1 + 88);
    v41 = (v1 + 16);
    v39 = enum case for Playlist.Folder.Item.folder(_:);
    v38 = (v1 + 8);
    v49 = (v7 + 8);
    v36 = (v7 + 32);
    v46 = _swiftEmptyArrayStorage;
    v34 = v0;
    v17 = v45;
    v18 = v47;
    v19 = v0;
    v42 = v7;
    v53 = v15;
    v37 = v5;
    while (v16 < *(v15 + 16))
    {
      v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v21 = *(v7 + 72);
      (*(v7 + 16))(v11, v15 + v20 + v21 * v16, v18);
      sub_10037AA20(v11, v5);
      if ((*v50)(v5, 1, v17) == 1)
      {
        sub_1000095E8(v5, &qword_1011831B0);
        (*v49)(v11, v18);
      }

      else
      {
        v48 = v20;
        v22 = v19;
        v23 = v44;
        (*v41)(v44, v5, v17);
        v24 = (*v40)(v23, v17);
        v25 = *v38;
        (*v38)(v23, v17);
        v25(v5, v17);
        if (v24 == v39)
        {
          v18 = v47;
          v35 = *v36;
          v35(v43, v11, v47);
          v26 = v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10066CB48(0, v26[2] + 1, 1);
            v26 = v55;
          }

          v7 = v42;
          v5 = v37;
          v28 = v48;
          v30 = v26[2];
          v29 = v26[3];
          if (v30 >= v29 >> 1)
          {
            sub_10066CB48(v29 > 1, v30 + 1, 1);
            v26 = v55;
          }

          v26[2] = v30 + 1;
          v46 = v26;
          v35(v26 + v28 + v30 * v21, v43, v18);
          v19 = v34;
          v17 = v45;
        }

        else
        {
          v18 = v47;
          (*v49)(v11, v47);
          v17 = v45;
          v19 = v22;
          v7 = v42;
          v5 = v37;
        }
      }

      ++v16;
      v15 = v53;
      if (v54 == v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
    v19 = v0;
LABEL_15:

    v31 = *(v19 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 reconfigureItemsAtIndexPaths:isa];
  }
}

void sub_1003862E8(char a1)
{
  v2 = v1;
  v22.receiver = v1;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "viewWillAppear:", a1 & 1);
  v4 = sub_10037FC08();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = [v2 transitionCoordinator];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1003C142C;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007E9F28;
    aBlock[3] = &unk_1010A9D78;
    v8 = _Block_copy(aBlock);

    [v6 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  sub_100385D70();
  v20 = v2;
  v9 = sub_100386664();
  *(v9 + 145) = 1;
  v10 = v9[4];
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    v13 = (v10 + 40);
    do
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
        if (byte_101218F00)
        {
          goto LABEL_18;
        }

LABEL_16:
        if (*(v9 + 145))
        {
          sub_10039C59C();
        }

        goto LABEL_18;
      }

      v16 = *v13;
      v17 = qword_10117F808;
      swift_unknownObjectRetain();
      if (v17 == -1)
      {
        if (byte_101218F00)
        {
          goto LABEL_11;
        }
      }

      else
      {
        swift_once();
        if (byte_101218F00)
        {
LABEL_11:
          v14 = 0;
          goto LABEL_7;
        }
      }

      v14 = *(v9 + 145);
LABEL_7:
      ++v12;
      ObjectType = swift_getObjectType();
      (*(v16 + 16))(v14, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
    }

    while (v11 != v12);
  }

  if (qword_10117F808 != -1)
  {
    goto LABEL_22;
  }

  if ((byte_101218F00 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:

  type metadata accessor for ApplicationMainMenu();
  v18 = sub_100314AEC();
  if (v18)
  {
    v19 = v18;
    sub_1007CA708(v20, v18);
  }
}

uint64_t sub_1003865EC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  return result;
}

void *sub_100386664()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    v3 = sub_10037FC08();
    sub_10010FC20(&qword_10118CD20);
    swift_allocObject();
    v2 = sub_10039AEB8(v0, v3, 1, 0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_10038675C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v29[-v9];
  v11 = _s9PlaylistsV5ScopeVMa(0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30.receiver = v2;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "viewDidAppear:", a1 & 1, v12);
  v15 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v16 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v2 + v16, v14, _s9PlaylistsV5ScopeVMa);
  v17 = qword_10117F298;
  v18 = v15;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_1000060E4(v11, qword_101218730);
  if (sub_1001982EC(v14, v19))
  {
    v20 = MetricsEvent.Page.libraryMadeForYou.unsafeMutableAddressor();
  }

  else
  {
    v20 = MetricsEvent.Page.libraryPlaylistsList.unsafeMutableAddressor();
  }

  sub_1003C16C8(v20, v7, type metadata accessor for MetricsEvent.Page);
  sub_1003C1730(v14, _s9PlaylistsV5ScopeVMa);
  sub_1003C1790(v7, v10, type metadata accessor for MetricsEvent.Page);
  v21 = sub_10053771C();
  v23 = v22;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v24 = qword_101218AD0;
  v25 = GroupActivitiesManager.hasJoined.getter();
  v26 = GroupActivitiesManager.participantsCount.getter();
  v27 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v18) + 0xA0))(v10, v21, v23, v25 & 1, v26, *(v24 + v27));

  return sub_1003C1730(v10, type metadata accessor for MetricsEvent.Page);
}

void sub_100386AB4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = _s9PlaylistsV5ScopeVMa(0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewWillDisappear:", a1 & 1, v6);
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v2 + v9, v8, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v10 = sub_1000060E4(v5, qword_101218730);
  v11 = sub_1001982EC(v8, v10);
  sub_1003C1730(v8, _s9PlaylistsV5ScopeVMa);
  if (v11)
  {
    sub_100386C3C();
  }

  type metadata accessor for ApplicationMainMenu();
  v12 = sub_100314AEC();
  if (v12)
  {
    v13 = v12;
    sub_1006F49A4(v2, v12);
  }
}

uint64_t sub_100386C3C()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011839D0);
  __chkstk_darwin(v2 - 8);
  v4 = v35 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v9 - 8);
  v11 = v35 - v10;
  v12 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v12);
  v14 = (v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v1 + v15, v14, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v16 = sub_1000060E4(v12, qword_101218730);
  v17 = sub_1001982EC(v14, v16);
  result = sub_1003C1730(v14, _s9PlaylistsV5ScopeVMa);
  if (v17)
  {
    sub_100386664();
    v19 = type metadata accessor for IndexPath();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    Date.init()();
    v20 = sub_10039EFB0(2u, v8, v11);

    (*(v6 + 8))(v8, v5);
    sub_1000095E8(v11, &unk_10118BCE0);
    if (v20)
    {
      v21 = *(v20 + 16);
      if (v21)
      {
        v35[0] = _swiftEmptyArrayStorage;
        sub_10066CB8C(0, v21, 0);
        v22 = 32;
        v23 = v35[0];
        do
        {
          v24 = *(v20 + v22);
          v35[0] = v23;
          v26 = v23[2];
          v25 = v23[3];

          if (v26 >= v25 >> 1)
          {
            sub_10066CB8C((v25 > 1), v26 + 1, 1);
            v23 = v35[0];
          }

          v23[2] = v26 + 1;
          v23[v26 + 4] = v24;
          v22 += 8;
          --v21;
        }

        while (v21);
      }

      else
      {

        v23 = _swiftEmptyArrayStorage;
      }

      v27 = *MetricsReportingController.shared.unsafeMutableAddressor();
      sub_100391AB0(v4);
      v28 = sub_10053771C();
      v30 = v29;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v31 = qword_101218AD0;
      v32 = GroupActivitiesManager.hasJoined.getter();
      v33 = GroupActivitiesManager.participantsCount.getter();
      v34 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v27) + 0xA8))(v23, v4, v28, v30, v32 & 1, v33, *(v31 + v34));

      sub_1000095E8(v4, &unk_1011839D0);
    }

    sub_10039C118();
  }

  return result;
}

void sub_1003871F0()
{
  v0 = sub_10010FC20(&unk_10118D330);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = Strong;

  v6 = sub_1006E688C();

  if (v6)
  {

LABEL_4:
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  sub_100382E3C();
  sub_1003C13C8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  *(&v8 + 1) = v0;
  v9 = sub_100020674(&unk_10118D340, &unk_10118D330);
  sub_10001C8B8(&v7);
  UIHostingConfiguration.margins(_:_:)();

  (*(v1 + 8))(v3, v0);
  UICollectionViewCell.contentConfiguration.setter();
}

void sub_1003873EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a4;
  v4 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10010FC20(&qword_101193C80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = sub_10010FC20(&unk_10118CEC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v20 = sub_10010FC20(&unk_10118CDD0);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_1000095E8(v6, &unk_10118CDC0);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118CDD0);
    v21 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v22 = IndexPath.section.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v21 + 16))
    {
      (*(v12 + 16))(v14, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v11);

      (*(v12 + 32))(v17, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v23[2], v23[3], v24);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v17, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1003877A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_10118D320);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v20[-4] = a3;
    v20[-3] = v15;
    v20[-2] = a5;
    v16 = v15;
    sub_10010FC20(&unk_1011847A0);
    v17 = _s8ListCellVMa(255);
    v18 = sub_10003D8C4(&qword_10118D2E0, _s8ListCellVMa);
    v20[0] = v17;
    v20[1] = v18;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v19 = *(v8 + 8);
    v19(v10, v7);
    static Edge.Set.vertical.getter();
    v20[3] = v7;
    v20[4] = sub_100020674(&unk_1011847B0, &unk_10118D320);
    sub_10001C8B8(v20);
    UIHostingConfiguration.margins(_:_:)();
    v19(v13, v7);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100387A80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v3 - 8);
  v82 = &v69 - v4;
  v77 = type metadata accessor for MusicFavoriteStatus();
  v5 = *(v77 - 1);
  __chkstk_darwin(v77);
  v76 = (&v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v75 = (&v69 - v8);
  v72 = type metadata accessor for Date();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v10 - 8);
  v70 = &v69 - v11;
  v81 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v81);
  v13 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v69 - v18;
  v20 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s8ListCellVMa(0);
  __chkstk_darwin(v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.artworkViewModel.getter(v19);
  Playlist.variant.getter();
  v26 = sub_10010FC20(&unk_101182950);
  (*(*(v26 - 8) + 56))(v16, 0, 11, v26);
  ArtworkImage.Size.init(cgSize:)(0x4050000000000000, 0x4050000000000000, 0, v86);
  v27 = Corner.small.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  v78 = v22;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v19, v16, 0, 1, v86, v28, v29, v30, v22);
  v74 = Playlist.name.getter();
  v73 = v31;
  v32 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  v79 = a1;
  sub_1003C16C8(a1 + v32, v13, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v33 = sub_1000060E4(v81, qword_101218730);
  v34 = sub_1001982EC(v13, v33);
  sub_1003C1730(v13, _s9PlaylistsV5ScopeVMa);
  if (v34)
  {
    v35 = v70;
    Playlist.lastModifiedDate.getter();
    v36 = v71;
    v37 = v72;
    if ((*(v71 + 48))(v35, 1, v72) == 1)
    {
      sub_1000095E8(v35, &qword_101188C20);
LABEL_9:
      v81 = Playlist.curatorName.getter();
      v72 = v43;

      goto LABEL_10;
    }

    v39 = v69;
    static Date.now.getter();
    v81 = Date.lastUpdatedDateString(relativeTo:)();
    v41 = v40;
    v42 = *(v36 + 8);
    v42(v39, v37);
    v42(v35, v37);
    if (!v41)
    {
      goto LABEL_9;
    }

    v72 = v41;
  }

  else
  {
    v81 = Playlist.curatorName.getter();
    v72 = v38;
  }

LABEL_10:
  v44 = v75;
  Playlist.favoriteStatus.getter();
  v45 = v76;
  v46 = v77;
  (*(v5 + 104))(v76, enum case for MusicFavoriteStatus.favorited(_:), v77);
  LODWORD(v71) = static MusicFavoriteStatus.== infix(_:_:)();
  v47 = *(v5 + 8);
  v47(v45, v46);
  v47(v44, v46);
  v48 = type metadata accessor for ContentRating();
  v49 = *(*(v48 - 8) + 56);
  v49(v82, 1, 1, v48);
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  sub_10010FC20(&unk_1011847C0);
  swift_allocObject();
  v76 = OptionalObservableObject.init(publisher:)(&v83);
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  sub_10010FC20(&unk_10118D300);
  swift_allocObject();
  v75 = OptionalObservableObject.init(publisher:)(&v83);
  v50 = static HierarchicalShapeStyle.primary.getter();
  *(v25 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v25 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v25 = v50;
  v25[40] = 0;
  v51 = &v25[v23[6]];
  v52 = v23[9];
  v53 = v23[10];
  v49(&v25[v53], 1, 1, v48);
  v77 = &v25[v23[11]];
  v54 = v23[14];
  *&v25[v54] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v55 = v78;
  sub_1003C16C8(v78, &v25[v23[5]], type metadata accessor for ArtworkImage.Info);
  *(v51 + 1) = 0;
  *(v51 + 2) = 0;
  *v51 = 0;
  v56 = &v25[v23[7]];
  v57 = v73;
  *v56 = v74;
  v56[1] = v57;
  v58 = &v25[v23[8]];
  v59 = v82;
  v60 = v72;
  *v58 = v81;
  *(v58 + 1) = v60;
  v25[v52] = v71 & 1;
  sub_100123348(v59, &v25[v53]);
  v61 = &v25[v23[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0);

  *v61 = ObservedObject.init(wrappedValue:)();
  v61[1] = v62;
  v63 = &v25[v23[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300);
  v64 = ObservedObject.init(wrappedValue:)();
  v66 = v65;

  sub_1000095E8(v59, &unk_10118D2F0);
  sub_1003C1730(v55, type metadata accessor for ArtworkImage.Info);
  *v63 = v64;
  v63[1] = v66;
  v67 = v77;
  *v77 = 0;
  *(v67 + 1) = 0;
  sub_10003D8C4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_10003D8C4(&qword_10118D2E0, _s8ListCellVMa);

  View.artworkCaching(owner:)();

  return sub_1003C1730(v25, _s8ListCellVMa);
}

void sub_100388498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118D2C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __chkstk_darwin(Strong);
    v14[-2] = a3;
    sub_10010FC20(&qword_10118D2D0);
    sub_1003C12B8();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v13 = *(v5 + 8);
    v13(v7, v4);
    static Edge.Set.vertical.getter();
    v14[3] = v4;
    v14[4] = sub_100020674(&qword_10118D2E8, &qword_10118D2C8);
    sub_10001C8B8(v14);
    UIHostingConfiguration.margins(_:_:)();
    v13(v10, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100388704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v3 - 8);
  v5 = v64 - v4;
  v6 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v6 - 8);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v9 - 8);
  v11 = v64 - v10;
  v12 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s8ListCellVMa(0);
  __chkstk_darwin(v15);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = enum case for Playlist.Variant.folder(_:);
  v20 = type metadata accessor for Playlist.Variant();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v8, v19, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  v22 = sub_10010FC20(&unk_101182950);
  (*(*(v22 - 8) + 56))(v8, 0, 11, v22);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0x4050000000000000, 0, 0x4050000000000000, 0, 0x3FF0000000000000, 0, 2, v79);
  v23 = Corner.small.unsafeMutableAddressor();
  v24 = *v23;
  v25 = v23[1];
  v26 = *(v23 + 16);
  v74 = v14;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v11, v8, 0, 1, v79, v24, v25, v26, v14);
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  sub_1001740C0();
  sub_100177D14(a1);
  v28 = v27;

  if (v28)
  {
    v29 = *(v28 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
    v30 = *(v28 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
    v71 = *(v28 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);
    v72 = v30;
    v73 = v29;
  }

  else
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v72 = v32;
    v73 = v31;
    v71 = v33;
  }

  v34 = Playlist.Folder.name.getter();
  v69 = v35;
  v70 = v34;
  v36 = sub_100174488(a1);
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (v37)
  {
    v39 = v37;
  }

  v67 = v39;
  v68 = v38;
  v40 = type metadata accessor for ContentRating();
  v41 = *(*(v40 - 8) + 56);
  v41(v5, 1, 1, v40);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  sub_10010FC20(&unk_1011847C0);
  v65 = v5;
  swift_allocObject();
  v64[2] = OptionalObservableObject.init(publisher:)(&v76);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  sub_10010FC20(&unk_10118D300);
  swift_allocObject();
  v64[1] = OptionalObservableObject.init(publisher:)(&v76);
  v42 = static HierarchicalShapeStyle.primary.getter();
  *(v17 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v17 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v17 = v42;
  v17[40] = 0;
  v43 = &v17[v15[6]];
  v44 = v15[9];
  v45 = v15[10];
  v41(&v17[v45], 1, 1, v40);
  v66 = &v17[v15[11]];
  v46 = v15[14];
  *&v17[v46] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v47 = v74;
  sub_1003C16C8(v74, &v17[v15[5]], type metadata accessor for ArtworkImage.Info);
  v48 = v72;
  *v43 = v73;
  *(v43 + 1) = v48;
  v49 = v70;
  *(v43 + 2) = v71;
  v50 = &v17[v15[7]];
  v51 = v68;
  v52 = v69;
  *v50 = v49;
  *(v50 + 1) = v52;
  v53 = &v17[v15[8]];
  *v53 = v51;
  *(v53 + 1) = v67;
  v17[v44] = 0;
  v54 = &v17[v45];
  v55 = v65;
  sub_100123348(v65, v54);
  v56 = &v17[v15[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0);

  *v56 = ObservedObject.init(wrappedValue:)();
  v56[1] = v57;
  v58 = &v17[v15[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300);
  v59 = ObservedObject.init(wrappedValue:)();
  v61 = v60;

  sub_1000095E8(v55, &unk_10118D2F0);
  sub_1003C1730(v47, type metadata accessor for ArtworkImage.Info);
  *v58 = v59;
  v58[1] = v61;
  sub_10003D8C4(&qword_10118D2E0, _s8ListCellVMa);
  v62 = v66;
  *v66 = 0;
  *(v62 + 1) = 0;
  View.placeholderStyle(_:)(sub_1003C1884, 0);
  return sub_1003C1730(v17, _s8ListCellVMa);
}

void sub_100388E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118D2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_101184760);
    v11 = _s8GridCellVMa(255);
    v12 = sub_10003D8C4(&qword_10118D290, _s8GridCellVMa);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100389074@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v74 = a2;
  v73 = type metadata accessor for MusicFavoriteStatus();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v68 = &v61 - v5;
  v6 = type metadata accessor for Date();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v8 - 8);
  v63 = &v61 - v9;
  v10 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v10);
  v12 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v61 - v17;
  v19 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s8GridCellVMa(0);
  __chkstk_darwin(v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.artworkViewModel.getter(v18);
  Playlist.variant.getter();
  v25 = sub_10010FC20(&unk_101182950);
  (*(*(v25 - 8) + 56))(v15, 0, 11, v25);
  v26 = sub_10037FC08();
  v27 = *&v26[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v27, 0, 0, 1, 0x3FF0000000000000, 0, 2, v75);
  v28 = Corner.medium.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v28 + 16);
  v69 = v21;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v18, v15, 0, 1, v75, v29, v30, v31, v21);
  v32 = Playlist.name.getter();
  v66 = v33;
  v67 = v32;
  v34 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  v70 = a1;
  sub_1003C16C8(a1 + v34, v12, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v35 = sub_1000060E4(v10, qword_101218730);
  v36 = sub_1001982EC(v12, v35);
  sub_1003C1730(v12, _s9PlaylistsV5ScopeVMa);
  if (v36)
  {
    v37 = v63;
    Playlist.lastModifiedDate.getter();
    v39 = v64;
    v38 = v65;
    if ((*(v64 + 48))(v37, 1, v65) == 1)
    {
      sub_1000095E8(v37, &qword_101188C20);
LABEL_8:
      v40 = Playlist.curatorName.getter();
      v42 = v46;

      goto LABEL_9;
    }

    v43 = v62;
    static Date.now.getter();
    v40 = Date.lastUpdatedDateString(relativeTo:)();
    v42 = v44;
    v45 = *(v39 + 8);
    v45(v43, v38);
    v45(v37, v38);
    if (!v42)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v40 = Playlist.curatorName.getter();
    v42 = v41;
  }

LABEL_9:
  v47 = v68;
  Playlist.favoriteStatus.getter();
  v48 = v71;
  v49 = v72;
  v50 = v73;
  (*(v71 + 104))(v72, enum case for MusicFavoriteStatus.favorited(_:), v73);
  v51 = static MusicFavoriteStatus.== infix(_:_:)();
  v52 = *(v48 + 8);
  v52(v49, v50);
  v52(v47, v50);
  v53 = v22[10];
  v54 = type metadata accessor for ContentRating();
  (*(*(v54 - 8) + 56))(&v24[v53], 1, 1, v54);
  sub_1003C1790(v69, v24, type metadata accessor for ArtworkImage.Info);
  v55 = &v24[v22[5]];
  *v55 = 0;
  *(v55 + 1) = 0;
  *(v55 + 2) = 0;
  *&v24[v22[6]] = 0x3FF0000000000000;
  v56 = &v24[v22[7]];
  v57 = v66;
  *v56 = v67;
  *(v56 + 1) = v57;
  v58 = &v24[v22[8]];
  *v58 = v40;
  v58[1] = v42;
  v24[v22[9]] = v51 & 1;
  v24[v22[11]] = 0;
  v59 = v22[12];
  *&v24[v59] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_10003D8C4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_10003D8C4(&qword_10118D290, _s8GridCellVMa);

  View.artworkCaching(owner:)();

  return sub_1003C1730(v24, _s8GridCellVMa);
}

void sub_100389838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118D270);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v13[-2] = v9;
    v13[-1] = a3;
    v10 = v9;
    sub_10010FC20(&qword_10118D278);
    v11 = sub_1001109D0(&qword_10118D280);
    v12 = sub_1003C0E84();
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&qword_10118D2A0, &qword_10118D270);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100389A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s8GridCellVMa(0);
  __chkstk_darwin(v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10010FC20(&qword_10118D280);
  __chkstk_darwin(v54);
  v55 = &v52 - v17;
  v18 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = enum case for Playlist.Variant.folder(_:);
  v20 = type metadata accessor for Playlist.Variant();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v7, v19, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = sub_10010FC20(&unk_101182950);
  (*(*(v22 - 8) + 56))(v7, 0, 11, v22);
  v23 = sub_10037FC08();
  v24 = *&v23[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  v56 = a1;
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v24, 0, *(*(a1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView) + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48), 0, 0x3FF0000000000000, 0, 2, v58);
  v25 = Corner.medium.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 16);
  v53 = v13;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v10, v7, 0, 1, v58, v26, v27, v28, v13);
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  sub_1001740C0();
  sub_100177D14(a2);
  v30 = v29;

  if (v30)
  {
    v31 = *(v30 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
    v32 = *(v30 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
    v33 = *(v30 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);
  }

  else
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v31 = v34;
    v32 = v35;
    v33 = v36;
  }

  v37 = Playlist.Folder.name.getter();
  v39 = v38;
  v40 = sub_100174488(a2);
  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  v44 = v14[10];
  v45 = type metadata accessor for ContentRating();
  (*(*(v45 - 8) + 56))(&v16[v44], 1, 1, v45);
  sub_1003C1790(v53, v16, type metadata accessor for ArtworkImage.Info);
  v46 = &v16[v14[5]];
  *v46 = v31;
  *(v46 + 1) = v32;
  *(v46 + 2) = v33;
  *&v16[v14[6]] = 0x3FF0000000000000;
  v47 = &v16[v14[7]];
  *v47 = v37;
  v47[1] = v39;
  v48 = &v16[v14[8]];
  *v48 = v42;
  *(v48 + 1) = v43;
  v16[v14[9]] = 0;
  v16[v14[11]] = 0;
  v49 = v14[12];
  *&v16[v49] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_10003D8C4(&qword_10118D290, _s8GridCellVMa);
  v50 = v55;
  View.placeholderStyle(_:)(sub_1003C1884, 0);
  sub_1003C1730(v16, _s8GridCellVMa);
  sub_10003D8C4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1003C0E84();

  View.artworkCaching(owner:)();

  return sub_1000095E8(v50, &qword_10118D280);
}

uint64_t sub_10038A094(uint64_t a1)
{
  v3[3] = &type metadata for Color;
  v3[4] = &protocol witness table for Color;
  v3[0] = static Color.accentColor.getter();
  return sub_10006B010(v3, a1, &unk_10118D2A8);
}

uint64_t sub_10038A0F4@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_1003C1790(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v41 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = MetricsEvent.Page.libraryPlaylistsList.unsafeMutableAddressor();
  sub_1003C16C8(v18, v8, type metadata accessor for MetricsEvent.Page);
  v19 = type metadata accessor for MetricsEvent.Page(0);
  v20 = v5;
  v21 = *(*(v19 - 8) + 56);
  v21(v8, 0, 1, v19);
  v40 = v20;
  sub_1000089F8(v8, v20, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v22 = sub_10053771C();
  v38 = v23;
  v39 = v22;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v24 = qword_101218AD0;
  v37 = GroupActivitiesManager.hasJoined.getter();
  v36 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v8, &unk_1011838F0);
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = v16[5];
  v21(&a1[v27], 1, 1, v19);
  v28 = v16[7];
  v29 = &a1[v16[6]];
  v30 = v16[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v40, &a1[v27], &unk_1011838F0);
  v31 = v38;
  *v29 = v39;
  v29[1] = v31;
  *&a1[v28] = 0;
  *&a1[v30] = 0;
  v32 = &a1[v16[9]];
  *v32 = v37 & 1;
  *(v32 + 1) = v36;
  *(v32 + 2) = v26;
  sub_1003C16C8(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v33 = v41;
  swift_beginAccess();
  sub_10006B010(v11, v33 + v15, &unk_1011838D0);
  return swift_endAccess();
}

uint64_t sub_10038A804(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v10 = *v9 == a2 && v9[1] == a3;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v11 != a3)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
LABEL_14:
        sub_100383344(v8);
        goto LABEL_15;
      }

      strcpy(v17, "Unknown kind=");
      v17[7] = -4864;
      v14._countAndFlagsBits = a2;
      v14._object = a3;
      String.append(_:)(v14);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  sub_1003830C0(v8);
LABEL_15:
  sub_100009F78(0, &unk_101184750);
  v15 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v15;
}

id sub_10038AB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v120 = a1;
  v5 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v5 - 8);
  v112 = &v95 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v113 = *(v7 - 8);
  v114 = v7;
  __chkstk_darwin(v7);
  v110 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for UICellAccessory.DisplayedState();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10010FC20(&qword_10118CCE8);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v95 - v10;
  v11 = sub_10010FC20(&qword_10118CCD8);
  v115 = *(v11 - 8);
  v116 = v11;
  __chkstk_darwin(v11);
  v13 = &v95 - v12;
  v14 = sub_10010FC20(&unk_10118D250);
  __chkstk_darwin(v14 - 8);
  v117 = &v95 - v15;
  v16 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v16 - 8);
  v104 = &v95 - v17;
  v97 = sub_10010FC20(&unk_10118CD08);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v95 - v18;
  v107 = type metadata accessor for Playlist.Folder();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v95 - v21;
  v100 = sub_10010FC20(&qword_10118CCF8);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v24 = &v95 - v23;
  v25 = type metadata accessor for Playlist();
  v118 = *(v25 - 8);
  v119 = v25;
  __chkstk_darwin(v25);
  v98 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v27 - 8);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v95 - v31;
  __chkstk_darwin(v33);
  v35 = &v95 - v34;
  __chkstk_darwin(v36);
  v38 = &v95 - v37;
  __chkstk_darwin(v39);
  v121 = a2;
  v122 = &v95 - v40;
  sub_10037AA20(a2, &v95 - v40);
  v41 = v2;
  v42 = sub_10037FC08();
  v43 = v42[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if ((v43 & 1) == 0 && (*(*&v3[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_layoutVariantController] + 32) & 1) == 0)
  {
    sub_1000089F8(v122, v38, &qword_1011831B0);
    v62 = type metadata accessor for Playlist.Folder.Item();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v38, 1, v62) != 1)
    {
      sub_1000089F8(v38, v35, &qword_1011831B0);
      v80 = (*(v63 + 88))(v35, v62);
      if (v80 == enum case for Playlist.Folder.Item.folder(_:))
      {
        (*(v63 + 96))(v35, v62);
        v81 = v106;
        v82 = v105;
        v83 = v107;
        (*(v106 + 32))(v105, v35, v107);
        v84 = v95;
        sub_100383D5C(v95);
        v85 = v104;
        (*(v81 + 16))(v104, v82, v83);
        (*(v81 + 56))(v85, 0, 1, v83);
        v86 = v121;
        v87 = sub_1007F9980(v84, v121, v85);
        sub_1000095E8(v85, &unk_10118F670);
        (*(v96 + 8))(v84, v97);
        v49 = v87;
        sub_10038BD78(v82, v41, v86);
        (*(v81 + 8))(v82, v83);
        goto LABEL_19;
      }

      if (v80 == enum case for Playlist.Folder.Item.playlist(_:))
      {
        (*(v63 + 96))(v35, v62);
        v89 = v118;
        v88 = v119;
        v90 = v98;
        (*(v118 + 32))(v98, v35, v119);
        sub_100383AE4(v24);
        v91 = *(v89 + 16);
        v91(v22, v90, v88);
        (*(v89 + 56))(v22, 0, 1, v88);
        v92 = sub_1007F9444(v24, v121, v22);
        sub_1000095E8(v22, &unk_1011814D0);
        (*(v99 + 8))(v24, v100);
        v124 = v88;
        v125 = &protocol witness table for Playlist;
        v93 = sub_10001C8B8(v123);
        v91(v93, v90, v88);
        v49 = v92;

        (*(v89 + 8))(v90, v88);
        sub_1000095E8(v123, &qword_1011A3DD0);
        goto LABEL_19;
      }

      (*(v63 + 8))(v35, v62);
    }

    sub_100383AE4(v24);
    (*(v118 + 56))(v22, 1, 1, v119);
    v64 = sub_1007F9444(v24, v121, v22);
    sub_1000095E8(v22, &unk_1011814D0);
    (*(v99 + 8))(v24, v100);
    v65 = type metadata accessor for EntityIdentifier();
    (*(*(v65 - 8) + 56))(v117, 1, 1, v65);
    v49 = v64;
    UIView.appEntityIdentifier.setter();

LABEL_19:
    sub_1000095E8(v38, &qword_1011831B0);
    UICollectionViewCell.configurationUpdateHandler.setter();

    v50 = v122;
    goto LABEL_20;
  }

  v44 = v122;
  sub_1000089F8(v122, v32, &qword_1011831B0);
  v45 = type metadata accessor for Playlist.Folder.Item();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v32, 1, v45) == 1)
  {
LABEL_4:
    sub_1003835CC(v13);
    (*(v118 + 56))(v22, 1, 1, v119);
    v47 = sub_1007F9EBC(v13, v121, v22);
    sub_1000095E8(v22, &unk_1011814D0);
    (*(v115 + 8))(v13, v116);
    v48 = type metadata accessor for EntityIdentifier();
    (*(*(v48 - 8) + 56))(v117, 1, 1, v48);
    v49 = v47;
    UIView.appEntityIdentifier.setter();

    sub_1000095E8(v44, &qword_1011831B0);
    v50 = v32;
    goto LABEL_20;
  }

  sub_1000089F8(v32, v29, &qword_1011831B0);
  v51 = (*(v46 + 88))(v29, v45);
  if (v51 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v46 + 96))(v29, v45);
    v52 = v106;
    v53 = v105;
    v54 = v107;
    (*(v106 + 32))(v105, v29, v107);
    v55 = v41;
    v56 = v101;
    sub_10038386C(v101);
    v57 = v104;
    (*(v52 + 16))(v104, v53, v54);
    (*(v52 + 56))(v57, 0, 1, v54);
    v58 = v121;
    v59 = sub_1007FA3F8(v56, v121, v57);
    sub_1000095E8(v57, &unk_10118F670);
    v60 = v56;
    v41 = v55;
    v61 = v122;
    (*(v102 + 8))(v60, v103);
    v49 = v59;
    sub_10038BD78(v53, v41, v58);
    (*(v52 + 8))(v53, v54);
  }

  else
  {
    if (v51 != enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v46 + 8))(v29, v45);
      goto LABEL_4;
    }

    (*(v46 + 96))(v29, v45);
    v66 = v118;
    v67 = v98;
    v68 = v29;
    v69 = v119;
    (*(v118 + 32))(v98, v68, v119);
    sub_1003835CC(v13);
    v70 = *(v66 + 16);
    v70(v22, v67, v69);
    (*(v66 + 56))(v22, 0, 1, v69);
    v71 = sub_1007F9EBC(v13, v121, v22);
    sub_1000095E8(v22, &unk_1011814D0);
    (*(v115 + 8))(v13, v116);
    v124 = v69;
    v125 = &protocol witness table for Playlist;
    v72 = sub_10001C8B8(v123);
    v70(v72, v67, v69);
    v61 = v122;
    v49 = v71;

    (*(v66 + 8))(v67, v69);
    sub_1000095E8(v123, &qword_1011A3DD0);
  }

  sub_1000095E8(v32, &qword_1011831B0);
  sub_10010FC20(&unk_101184740);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  v73 = v109;
  v74 = v108;
  v75 = v111;
  (*(v109 + 104))(v108, enum case for UICellAccessory.DisplayedState.always(_:), v111);
  v76 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v76 - 8) + 56))(v112, 1, 1, v76);
  v77 = v110;
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v113 + 8))(v77, v114);
  (*(v73 + 8))(v74, v75);
  UICollectionViewListCell.accessories.setter();

  v78 = [v41 traitCollection];
  v79 = [v78 userInterfaceIdiom];

  if (v79 != 6)
  {
    [v49 directionalLayoutMargins];
    [v49 setDirectionalLayoutMargins:?];
  }

  v50 = v61;
LABEL_20:
  sub_1000095E8(v50, &qword_1011831B0);
  return v49;
}

uint64_t sub_10038BD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v50 = type metadata accessor for IndexPath();
  v47 = *(v50 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v50);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Playlist.Folder();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v46);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  v11 = *(*(a2 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController) + 48) + *(**(*(a2 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController) + 48) + 96);
  swift_beginAccess();
  v12 = *v11;
  LODWORD(v11) = *(v11 + 8);

  LOBYTE(v11) = sub_1001747E4(a1, v12, v11);

  if ((v11 & 1) == 0)
  {
    sub_1001740C0();
    sub_100177D14(a1);
    v15 = v14;

    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
      v17 = *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
      v43 = *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);
      v44 = v17;
      v45 = v16;
    }

    else
    {
      ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
      v44 = v19;
      v45 = v18;
      v43 = v20;
    }

    v21 = sub_100174488(a1);
    v41 = v22;
    v42 = v21;
    v23 = type metadata accessor for TaskPriority();
    v24 = *(*(v23 - 8) + 56);
    v40 = v10;
    v24(v10, 1, 1, v23);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v46;
    (*(v6 + 16))(v26, a1, v46);
    v28 = v47;
    (*(v47 + 16))(v49, v48, v50);
    v29 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 31) & 0xFFFFFFFFFFFFFFF8;
    v32 = (*(v28 + 80) + v31 + 16) & ~*(v28 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v25;
    (*(v6 + 32))(&v33[v29], v26, v27);
    v34 = &v33[v30];
    v35 = v44;
    *v34 = v45;
    *(v34 + 1) = v35;
    v36 = v42;
    *(v34 + 2) = v43;
    v37 = &v33[v31];
    v38 = v41;
    *v37 = v36;
    v37[1] = v38;
    (*(v28 + 32))(&v33[v32], v49, v50);
    v39 = v40;
    sub_10035EB10(0, 0, v40, &unk_100EC9008, v33);

    return sub_1000095E8(v39, &unk_101181520);
  }

  return result;
}

uint64_t sub_10038C1DC(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v3 - 8);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v38 - v6;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for UICellConfigurationState.DropState();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  UICellConfigurationState.cellDropState.getter();
  (*(v17 + 104))(v19, enum case for UICellConfigurationState.DropState.targeted(_:), v16);
  v23 = static UICellConfigurationState.DropState.== infix(_:_:)();
  v24 = *(v17 + 8);
  v24(v19, v16);
  v24(v22, v16);
  if (v23)
  {
    static UIBackgroundConfiguration.listCell()();
    v25 = type metadata accessor for UICellConfigurationState();
    v43[3] = v25;
    v43[4] = &protocol witness table for UICellConfigurationState;
    v26 = sub_10001C8B8(v43);
    (*(*(v25 - 8) + 16))(v26, a2, v25);
    UIBackgroundConfiguration.updated(for:)();
    v28 = v40;
    v27 = v41;
    v29 = *(v40 + 8);
    v29(v12, v41);
    sub_10000959C(v43);
    if (qword_10117F258 != -1)
    {
      swift_once();
    }

    UIBackgroundConfiguration.cornerRadius.setter();
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    NSDirectionalEdgeInsets.init(edge:length:)(v30, -8.0);
    UIBackgroundConfiguration.backgroundInsets.setter();
    v31 = v39;
    (*(v28 + 16))(v39, v15, v27);
    (*(v28 + 56))(v31, 0, 1, v27);
    UICollectionViewCell.backgroundConfiguration.setter();
    return (v29)(v15, v27);
  }

  else
  {
    v33 = v40;
    v34 = v41;
    if (UICellConfigurationState.isFocused.getter())
    {
      Corner.medium.unsafeMutableAddressor();
      static UIBackgroundConfiguration.clear()();
      UIBackgroundConfiguration.cornerRadius.setter();
      v35 = [objc_opt_self() tintColor];
      UIBackgroundConfiguration.strokeColor.setter();
      UIBackgroundConfiguration.strokeWidth.setter();
      UIBackgroundConfiguration.strokeOutset.setter();
      v36 = v38;
      (*(v33 + 32))(v38, v9, v34);
      (*(v33 + 56))(v36, 0, 1, v34);
    }

    else
    {
      v37 = v39;
      static UIBackgroundConfiguration.clear()();
      (*(v33 + 56))(v37, 0, 1, v34);
    }

    return UICollectionViewCell.backgroundConfiguration.setter();
  }
}

uint64_t sub_10038C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v16;
  *(v8 + 128) = v15;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = type metadata accessor for Playlist.Folder();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 + 64);
  *(v8 + 176) = swift_task_alloc();
  v11 = type metadata accessor for IndexPath();
  *(v8 + 184) = v11;
  v12 = *(v11 - 8);
  *(v8 + 192) = v12;
  *(v8 + 200) = *(v12 + 64);
  *(v8 + 208) = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  *(v8 + 216) = swift_task_alloc();
  _s9PlaylistsVMa(0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_10038C864, 0, 0);
}

uint64_t sub_10038C864()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    if (qword_10117F238 != -1)
    {
      v6 = Strong;
      swift_once();
      Strong = v6;
    }

    v2 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController;
    v0[31] = qword_101218670;
    v0[32] = v2;
    v0[33] = *(Strong + v2);
    v0[34] = type metadata accessor for MainActor();
    v0[35] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10038C9E8, v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10038C9E8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);

  v3 = *(v1 + 48);
  v4 = *(*v3 + 96);
  swift_beginAccess();
  sub_1003C16C8(v3 + v4, v2, _s9PlaylistsVMa);

  return _swift_task_switch(sub_10038CAAC, 0, 0);
}

uint64_t sub_10038CAAC()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v0[36] = *v2;

  sub_1003C1730(v2, _s9PlaylistsVMa);
  v0[37] = *(v3 + v1);
  v0[38] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10038CB78, v5, v4);
}

uint64_t sub_10038CB78()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 224);

  v3 = *(v1 + 48);
  v4 = *(*v3 + 96);
  swift_beginAccess();
  sub_1003C16C8(v3 + v4, v2, _s9PlaylistsVMa);

  return _swift_task_switch(sub_10038CC38, 0, 0);
}

uint64_t sub_10038CC38()
{
  v1 = v0[28];
  v2 = *(v1 + 8);
  sub_1003C1730(v1, _s9PlaylistsVMa);
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_10038CCF8;
  v4 = v0[36];
  v5 = v0[12];

  return sub_100174920(v5, v4, v2);
}

uint64_t sub_10038CCF8()
{

  return _swift_task_switch(sub_10038CE10, 0, 0);
}

uint64_t sub_10038CE10()
{
  v1 = v0[12];
  sub_1001740C0();
  sub_100177D14(v1);
  v3 = v2;

  if (v3)
  {
    v5 = *(v3 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
    v4 = *(v3 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
    v6 = *(v3 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);

    v7 = v0[13];
    if (v7)
    {
LABEL_3:
      if (!v5)
      {
        goto LABEL_15;
      }

      v8 = static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(v7, v0[14], v0[15], v5, v4, v6);

      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  else
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v5 = v9;
    v4 = v10;
    v6 = v11;
    v7 = v0[13];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  if (v5)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v0[17];
  v13 = sub_100174488(v0[12]);
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_14:

LABEL_15:
    v16 = v0[26];
    v17 = v0[27];
    v38 = v0[30];
    v39 = v17;
    v36 = v16;
    v18 = v0[24];
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[20];
    v37 = v0[25];
    v23 = v0[18];
    v22 = v0[19];
    v34 = v19;
    v35 = v0[12];
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v18 + 16))(v16, v23, v19);
    (*(v21 + 16))(v20, v35, v22);

    v26 = static MainActor.shared.getter();
    v27 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v28 = (v37 + *(v21 + 80) + v27) & ~*(v21 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = v26;
    *(v29 + 3) = &protocol witness table for MainActor;
    *(v29 + 4) = v25;
    (*(v18 + 32))(&v29[v27], v36, v34);
    (*(v21 + 32))(&v29[v28], v20, v22);

    v30 = v29;
    v15 = v38;
    sub_1001F4CB8(0, 0, v39, &unk_100EC9018, v30);

    goto LABEL_16;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  if (v13 == v0[16] && v14 == v0[17])
  {
    v15 = v0[30];

    goto LABEL_16;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  v15 = v0[30];
LABEL_16:

  v31 = v0[1];

  return v31();
}

uint64_t sub_10038D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for Playlist.Folder.Item();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011828F0);
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_10010FC20(&qword_10118CEB8);
  v6[17] = swift_task_alloc();
  v9 = sub_10010FC20(&unk_10118CEC0);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  sub_10010FC20(&unk_10118CDC0);
  v6[21] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101193C80);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[26] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10038D43C, v12, v11);
}

uint64_t sub_10038D43C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[21];
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v4 = sub_10010FC20(&unk_10118CDD0);
    if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
    {
      sub_1000095E8(v0[21], &unk_10118CDC0);
LABEL_14:
      v42 = v0[9];
      v43 = sub_10037FC08();
      v44 = [v43 indexPathsForVisibleItems];

      type metadata accessor for IndexPath();
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = swift_task_alloc();
      *(v46 + 16) = v2;
      *(v46 + 24) = v42;
      sub_1007F4E08(sub_1003C1288, v46, v45);

      v47 = *&v2[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView];
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v47 reconfigureItemsAtIndexPaths:isa];

      goto LABEL_15;
    }

    v55 = v2;
    v6 = v0[24];
    v5 = v0[25];
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[17];
    (*(v7 + 16))(v6, v9, v8);
    sub_1000095E8(v9, &unk_10118CDD0);
    (*(v7 + 32))(v5, v6, v8);
    MusicLibrarySectionedResponse.sections.getter();
    IndexPath.section.getter();
    Array.subscript.getter(v10, v12);

    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      v13 = v0[17];
      (*(v0[23] + 8))(v0[25], v0[22]);
      sub_1000095E8(v13, &qword_10118CEB8);
LABEL_13:
      v2 = v55;
      goto LABEL_14;
    }

    v14 = v0[16];
    v15 = v0[13];
    v16 = v0[14];
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v17 = IndexPath.item.getter();
    MusicLibrarySection.items.getter();
    sub_100020674(&qword_10118C1D0, &qword_1011828F0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v18 = dispatch thunk of Collection.distance(from:to:)();
    v19 = *(v16 + 8);
    v19(v14, v15);
    if (v17 < v18)
    {
      v20 = v0[15];
      v22 = v0[12];
      v21 = v0[13];
      v24 = v0[10];
      v23 = v0[11];
      MusicLibrarySection.items.getter();
      IndexPath.item.getter();
      MusicItemCollection.subscript.getter();
      v19(v20, v21);
      v25 = Playlist.Folder.Item.id.getter();
      v27 = v26;
      (*(v23 + 8))(v22, v24);
      if (v25 == Playlist.Folder.id.getter() && v27 == v28)
      {

LABEL_11:
        v30 = v0[23];
        v53 = v0[22];
        v54 = v0[25];
        v31 = v0[19];
        v51 = v0[18];
        v52 = v0[20];
        v32 = v0[8];
        v33 = sub_10037FC08();
        sub_10010FC20(&qword_10118AC80);
        v34 = type metadata accessor for IndexPath();
        v35 = *(v34 - 8);
        v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_100EBC6B0;
        (*(v35 + 16))(v37 + v36, v32, v34);
        v38 = Array._bridgeToObjectiveC()().super.isa;

        [v33 reconfigureItemsAtIndexPaths:v38];

        (*(v31 + 8))(v52, v51);
        (*(v30 + 8))(v54, v53);
        goto LABEL_15;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_11;
      }
    }

    v39 = v0[25];
    v41 = v0[22];
    v40 = v0[23];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v40 + 8))(v39, v41);
    goto LABEL_13;
  }

LABEL_15:

  v49 = v0[1];

  return v49();
}

uint64_t sub_10038DAC4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  sub_10037AA20(a1, &v15 - v3);
  v5 = type metadata accessor for Playlist.Folder.Item();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011831B0);
    Playlist.Folder.id.getter();
    v7 = 0;
  }

  else
  {
    v8 = Playlist.Folder.Item.id.getter();
    v10 = v9;
    (*(v6 + 8))(v4, v5);
    v11 = Playlist.Folder.id.getter();
    if (v10)
    {
      if (v8 == v11 && v10 == v12)
      {

        v7 = 1;
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

BOOL sub_10038DFB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = UICollectionView.isDraggingCell(at:)();

  (*(v5 + 8))(v7, v4);
  return (v9 & 1) == 0;
}

void sub_10038E0AC(void *a1, uint64_t a2)
{
  v181 = a2;
  v165 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v3 - 8);
  v169 = &v142 - v4;
  v5 = type metadata accessor for Playlist.Folder();
  v172 = *(v5 - 8);
  v173 = v5;
  __chkstk_darwin(v5);
  v171 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Date();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v8 - 8);
  v147 = &v142 - v9;
  v10 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v10 - 8);
  v151 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v12 - 8);
  v145 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v146 = &v142 - v15;
  v16 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v16 - 8);
  v152 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v178);
  v170 = (&v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v142 - v20;
  __chkstk_darwin(v22);
  v144 = (&v142 - v23);
  __chkstk_darwin(v24);
  v164 = (&v142 - v25);
  v166 = type metadata accessor for IndexPath();
  v168 = *(v166 - 8);
  __chkstk_darwin(v166);
  v162 = v26;
  v163 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v27 - 8);
  v167 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v160 = &v142 - v30;
  __chkstk_darwin(v31);
  v161 = &v142 - v32;
  v157 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v157);
  v158 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v159 = &v142 - v35;
  v36 = sub_10010FC20(&qword_1011828F8);
  v154 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v153 = &v142 - v40;
  v177 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v177);
  v42 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Playlist();
  v179 = *(v175 - 8);
  __chkstk_darwin(v175);
  v155 = &v142 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v156 = &v142 - v45;
  __chkstk_darwin(v46);
  v176 = &v142 - v47;
  v48 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v48 - 8);
  v50 = &v142 - v49;
  v51 = type metadata accessor for Playlist.Folder.Item();
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v142 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v142 - v56;
  v180 = v2;
  v58 = *&v2[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController];
  sub_10037AA20(v181, v50);
  if ((*(v52 + 6))(v50, 1, v51) == 1)
  {
    sub_1000095E8(v50, &qword_1011831B0);
    return;
  }

  (*(v52 + 4))(v57, v50, v51);
  v59 = *(v52 + 2);
  v143 = v57;
  v59(v54, v57, v51);
  v60 = (*(v52 + 11))(v54, v51);
  v61 = v51;
  if (v60 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v52 + 12))(v54, v51);
    v63 = v171;
    v62 = v172;
    v64 = v173;
    (*(v172 + 32))(v171, v54, v173);
    v65 = *(v58 + 48) + *(**(v58 + 48) + 96);
    swift_beginAccess();
    sub_1003C16C8(v65 + *(v177 + 32), v21, _s9PlaylistsV5ScopeVMa);
    v66 = *(v178 + 20);
    sub_1000095E8(&v21[v66], &unk_10118F670);
    (*(v62 + 16))(&v21[v66], v63, v64);
    (*(v62 + 56))(&v21[v66], 0, 1, v64);
    v67 = v170;
    sub_1003C16C8(v21, v170, _s9PlaylistsV5ScopeVMa);
    v68 = v180;
    v69 = [v180 traitCollection];
    v70 = [v69 horizontalSizeClass];

    v71 = objc_allocWithZone(ObjectType);
    v72 = sub_10037E11C(v67, 0, v70 != 2);
    (*(v62 + 8))(v63, v64);
    sub_1003C1730(v21, _s9PlaylistsV5ScopeVMa);
  }

  else
  {
    ObjectType = v52;
    if (v60 != enum case for Playlist.Folder.Item.playlist(_:))
    {
      v114 = ObjectType[1];
      v114(v143, v51);
      v114(v54, v51);
      return;
    }

    ObjectType[12](v54, v51);
    v73 = v179;
    v74 = v175;
    v75 = v176;
    (*(v179 + 32))(v176, v54, v175);
    v76 = *(v58 + 48);
    v77 = *(*v76 + 96);
    swift_beginAccess();
    sub_1003C16C8(v76 + v77, v42, _s9PlaylistsVMa);
    type metadata accessor for TitledSection();
    sub_10003D8C4(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
    v173 = v61;
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    sub_10018E714(v38);
    sub_10018ECCC();
    sub_10018EFFC();
    MusicLibrarySectionedRequest.filterItems(text:)(*&v42[*(v177 + 36)]);
    MusicLibrarySectionedRequest.limit.setter();
    v78 = v154;
    v79 = v153;
    (*(v154 + 32))(v153, v38, v36);
    sub_1003C1730(v42, _s9PlaylistsVMa);
    LOBYTE(v76) = MusicLibrarySectionedRequest.includeOnlyDownloadedContent.getter();
    (*(v78 + 8))(v79, v36);
    v80 = *(v73 + 16);
    v81 = v156;
    v80(v156, v75, v74);
    v82 = sub_10010FC20(&qword_10118A430);
    v83 = *(v82 + 64);
    v84 = v159;
    v159[*(v82 + 48)] = v76 & 1;
    v85 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    *(v84 + v83) = 0;
    swift_storeEnumTagMultiPayload();
    v86 = type metadata accessor for URL();
    v87 = *(v86 - 8);
    v88 = v161;
    v171 = *(v87 + 56);
    v172 = v86;
    v170 = (v87 + 56);
    (v171)(v161, 1, 1);
    v89 = v155;
    v80(v155, v81, v74);
    v90 = v158;
    sub_1003C16C8(v84, v158, type metadata accessor for ContainerDetail.Source);
    v91 = v160;
    sub_1000089F8(v88, v160, &qword_101183A20);
    v92 = sub_100866288(v89, v90, 0, 0, v91, 0);
    v93 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v94 = sub_100137F48(v92, v93);
    sub_1000095E8(v88, &qword_101183A20);
    sub_1003C1730(v84, type metadata accessor for ContainerDetail.Source);
    v95 = *(v73 + 8);
    v179 = v73 + 8;
    v177 = v95;
    v95(v81, v74);
    v68 = v180;
    *&v94[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v180[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

    sub_100009F78(0, &qword_101184710);
    v96 = [objc_allocWithZone(UIZoomTransitionOptions) init];
    UIZoomTransitionOptions.alignmentRectProvider.setter();
    v97 = v168;
    v98 = v163;
    v99 = v166;
    (*(v168 + 16))(v163, v181, v166);
    v100 = (*(v97 + 80) + 24) & ~*(v97 + 80);
    v101 = swift_allocObject();
    v102 = v165;
    *(v101 + 16) = v165;
    (*(v97 + 32))(v101 + v100, v98, v99);
    v103 = v102;
    v104 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    v181 = v94;
    [v94 setPreferredTransition:v104];

    v105 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
    swift_beginAccess();
    v106 = v164;
    sub_1003C16C8(v68 + v105, v164, _s9PlaylistsV5ScopeVMa);
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v107 = sub_1000060E4(v178, qword_101218730);
    v108 = sub_1001982EC(v106, v107);
    sub_1003C1730(v106, _s9PlaylistsV5ScopeVMa);
    if (v108)
    {
      v109 = Playlist.id.getter();
      v111 = v110;
      (v171)(v167, 1, 1, v172);
      v112 = v144;
      sub_1003C16C8(v68 + v105, v144, _s9PlaylistsV5ScopeVMa);
      if (sub_1001982EC(v112, v107))
      {
        v113 = MetricsEvent.Page.libraryMadeForYou.unsafeMutableAddressor();
      }

      else
      {
        v113 = MetricsEvent.Page.libraryPlaylistsList.unsafeMutableAddressor();
      }

      v115 = v152;
      v116 = v151;
      v117 = v145;
      sub_1003C16C8(v113, v145, type metadata accessor for MetricsEvent.Page);
      sub_1003C1730(v112, _s9PlaylistsV5ScopeVMa);
      v118 = v117;
      v119 = v146;
      sub_1003C1790(v118, v146, type metadata accessor for MetricsEvent.Page);
      MetricsEvent.Page.metricsPageProperties.getter(v116);
      sub_1003C1730(v119, type metadata accessor for MetricsEvent.Page);
      sub_100386664();
      v120 = v147;
      (*(v168 + 56))(v147, 1, 1, v99);
      v121 = v148;
      Date.init()();
      v122 = sub_10039EFB0(1u, v121, v120);

      (*(v149 + 8))(v121, v150);
      sub_1000095E8(v120, &unk_10118BCE0);
      if (v122)
      {
        v123 = *(v122 + 16);
        if (v123)
        {
          v182 = _swiftEmptyArrayStorage;
          sub_10066CB8C(0, v123, 0);
          v124 = 32;
          v125 = v182;
          do
          {
            v126 = *(v122 + v124);
            v182 = v125;
            v128 = v125[2];
            v127 = v125[3];

            if (v128 >= v127 >> 1)
            {
              sub_10066CB8C((v127 > 1), v128 + 1, 1);
              v125 = v182;
            }

            v125[2] = v128 + 1;
            v125[v128 + 4] = v126;
            v124 += 8;
            --v123;
          }

          while (v123);

          v68 = v180;
          v115 = v152;
          v116 = v151;
        }

        else
        {

          v125 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v125 = 0;
      }

      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v109, v111, 17, 28, v167, 0, 0, 12, v115, 0, 0, 0xFF00u, v116, v125);
      v129 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v130 = sub_10053771C();
      v132 = v131;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v133 = qword_101218AD0;
      v134 = GroupActivitiesManager.hasJoined.getter();
      v135 = GroupActivitiesManager.participantsCount.getter();
      v136 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v129) + 0xB8))(v115, v130, v132, v134 & 1, v135, *(v133 + v136));

      sub_1003C1730(v115, type metadata accessor for MetricsEvent.Click);
    }

    (v177)(v176, v175);
    v61 = v173;
    v52 = ObjectType;
    v72 = v181;
  }

  v137 = [v68 navigationController];
  v138 = v143;
  if (v137)
  {
    v139 = v137;
    v140 = v169;
    UIViewController.traitOverrides.getter();
    v141 = type metadata accessor for UITraitOverrides();
    (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
    UINavigationController.push(_:traitOverrides:animated:)(v72, v140, 1);

    sub_1000095E8(v140, &unk_10119F3A0);
    (*(v52 + 1))(v138, v61);
  }

  else
  {
    (*(v52 + 1))(v143, v61);
  }
}

uint64_t sub_10038F7A0(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Folder.Item();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100735138(v5, 1);
}

unint64_t sub_10038F860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v121 = a4;
  v5 = type metadata accessor for UUID();
  v130 = *(v5 - 8);
  __chkstk_darwin(v5);
  v129 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011838D0);
  v126 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v127 = v8;
  v128 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v133 = &v112 - v10;
  v11 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v112 - v12;
  v14 = sub_10010FC20(&unk_1011845D0);
  v123 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v124 = v15;
  v125 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v135 = &v112 - v17;
  v18 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v21 - 8);
  v23 = &v112 - v22;
  v24 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v24 - 8);
  v120 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v122 = &v112 - v27;
  __chkstk_darwin(v28);
  v30 = &v112 - v29;
  __chkstk_darwin(v31);
  v33 = &v112 - v32;
  v34 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v34 - 8);
  v131 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v134 = &v112 - v37;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v39 = Strong;
  v119 = v5;
  sub_10010FC20(&unk_101183900);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBC6B0;
  v117 = v40;
  sub_10048D214((v40 + 32));
  v41 = [v39 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v118 = v150[0];
  v42 = *(*&v39[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] + 48);
  v43 = *(*v42 + 96);
  swift_beginAccess();
  sub_1003C16C8(v42 + v43, v20, _s9PlaylistsVMa);
  sub_1001917EC(a3, v23);
  sub_1003C1730(v20, _s9PlaylistsVMa);
  PlaybackIntentDescriptor.IntentType.init(_:)(v23, v33);
  memset(v150, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v44 = qword_101218AD8;
  sub_1000089F8(v33, v30, &unk_1011838E0);
  v45 = v44;
  v46 = UIViewController.playActivityInformation.getter();
  v116 = v47;
  v49 = v48;
  v51 = v50;
  sub_1000089F8(v150, &v142, &unk_101183910);
  v132 = v39;
  if (*(&v143 + 1))
  {
    sub_100059A8C(&v142, &v146);
    v52 = v45;
  }

  else
  {
    v115 = v46;
    *&v151 = v39;
    sub_100009F78(0, &qword_101183D40);
    v54 = v39;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v154, &v146);
      v52 = v45;
    }

    else
    {
      v156 = 0;
      v154 = 0u;
      v155 = 0u;
      *&v146 = v54;
      v55 = v54;
      v56 = String.init<A>(reflecting:)();
      v147 = &type metadata for Player.CommandIssuerIdentity;
      v148 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v146 = v56;
      *(&v146 + 1) = v57;
      v52 = v45;
      if (*(&v155 + 1))
      {
        sub_1000095E8(&v154, &unk_101183910);
      }
    }

    v46 = v115;
    if (*(&v143 + 1))
    {
      sub_1000095E8(&v142, &unk_101183910);
    }
  }

  v58 = v134;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v52, v30, v46, v116, v49, v51, &v146, v134);
  sub_1000095E8(v150, &unk_101183910);
  sub_1000095E8(v33, &unk_1011838E0);
  v59 = type metadata accessor for Actions.PlaybackContext();
  v60 = *(v59 - 8);
  (*(v60 + 56))(v58, 0, 1, v59);
  v61 = type metadata accessor for PlaylistContext();
  (*(*(v61 - 8) + 56))(v135, 1, 1, v61);
  v62 = type metadata accessor for IndexPath();
  v63 = *(v62 - 8);
  (*(v63 + 16))(v13, v121, v62);
  (*(v63 + 56))(v13, 0, 1, v62);
  v64 = v132;
  sub_100376BEC(v13, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, v150);
  sub_1000095E8(v13, &unk_10118BCE0);
  v65 = v133;
  sub_10038A0F4(v133);
  v66 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  sub_100008FE4(v117 + 32, v149);

  sub_1000089F8(v150, &v142, &unk_1011845E0);
  if (v145 == 1)
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v157 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v64, &v154, &v146);
    v67 = v131;
    if (v145 != 1)
    {
      sub_1000095E8(&v142, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v142, &v146);
    v67 = v131;
  }

  swift_getObjectType();
  v68 = swift_conformsToProtocol2();
  if (v68)
  {
    v116 = v68;
    v69 = v64;
    v117 = v64;
  }

  else
  {
    v116 = 0;
    v117 = 0;
  }

  v121 = swift_allocBox();
  v71 = v70;
  sub_1000089F8(v134, v67, &unk_10118AB20);
  v72 = *(v60 + 48);
  if (v72(v67, 1, v59) == 1)
  {
    v73 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v74 = v122;
    (*(*(v73 - 8) + 56))(v122, 1, 1, v73);
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    v75 = v74;
    v76 = v120;
    sub_1000089F8(v75, v120, &unk_1011838E0);
    v115 = v52;
    v77 = UIViewController.playActivityInformation.getter();
    v113 = v79;
    v114 = v78;
    v81 = v80;
    sub_1000089F8(&v142, &v140, &unk_101183910);
    if (v141)
    {
      sub_100059A8C(&v140, &v151);
    }

    else
    {
      v139 = v64;
      sub_100009F78(0, &qword_101183D40);
      v82 = v64;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v136, &v151);
        v67 = v131;
      }

      else
      {
        v138 = 0;
        v136 = 0u;
        v137 = 0u;
        *&v151 = v82;
        v83 = v82;
        v84 = String.init<A>(reflecting:)();
        *(&v152 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v153 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v151 = v84;
        *(&v151 + 1) = v85;
        v67 = v131;
        if (*(&v137 + 1))
        {
          sub_1000095E8(&v136, &unk_101183910);
        }
      }

      v64 = v132;
      v76 = v120;
      if (v141)
      {
        sub_1000095E8(&v140, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v115, v76, v77, v114, v113, v81, &v151, v71);
    sub_1000095E8(&v142, &unk_101183910);
    sub_1000095E8(v122, &unk_1011838E0);
    if (v72(v67, 1, v59) != 1)
    {
      sub_1000095E8(v67, &unk_10118AB20);
    }
  }

  else
  {
    sub_1003C1790(v67, v71, type metadata accessor for Actions.PlaybackContext);
  }

  v86 = *(v59 + 28);
  sub_1000089F8(&v71[v86], &v151, &unk_101183910);
  if (*(&v152 + 1))
  {
    sub_100059A8C(&v151, &v142);
  }

  else
  {
    *&v142 = v64;
    v87 = v64;
    v88 = String.init<A>(reflecting:)();
    *(&v143 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v144 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v142 = v88;
    *(&v142 + 1) = v89;
    if (*(&v152 + 1))
    {
      sub_1000095E8(&v151, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100EBDC20;
  *(v90 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v90 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v90 + 32) = 0x4D747865746E6F43;
  *(v90 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v142, v90 + 72);
  v91 = static Player.CommandIssuer<>.combining(_:)();
  v93 = v92;

  sub_10000959C(&v142);
  *(&v143 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v144 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v142 = v91;
  *(&v142 + 1) = v93;
  sub_10006B010(&v142, &v71[v86], &unk_101183910);
  sub_100008FE4(v149, &v142);
  sub_10010FC20(&unk_10118AB50);
  v131 = String.init<A>(describing:)();
  v122 = v94;
  v120 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v149, &v140);
  sub_10012B7A8(&v146, &v142);
  v95 = v128;
  sub_1000089F8(v133, v128, &unk_1011838D0);
  v96 = v125;
  sub_1000089F8(v135, v125, &unk_1011845D0);
  v97 = (*(v126 + 80) + 160) & ~*(v126 + 80);
  v98 = (v127 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v100 = (*(v123 + 80) + v99 + 8) & ~*(v123 + 80);
  v127 = (v100 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v100 + v124 + 31) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  sub_100059A8C(&v140, v102 + 16);
  *(v102 + 56) = v118;
  sub_10012B828(&v142, v102 + 64);
  sub_10003D17C(v95, v102 + v97, &unk_1011838D0);
  v103 = v121;
  *(v102 + v98) = v120;
  *(v102 + v99) = v103;
  sub_10003D17C(v96, v102 + v100, &unk_1011845D0);
  v104 = v102 + v127;
  v105 = v116;
  *v104 = v117;
  *(v104 + 8) = v105;
  *(v104 + 16) = 2;
  v106 = (v102 + v101);
  *v106 = variable initialization expression of Library.Context.playlistVariants;
  v106[1] = 0;
  swift_unknownObjectRetain();

  v107 = v129;
  UUID.init()();
  v108 = UUID.uuidString.getter();
  v110 = v109;
  (*(v130 + 8))(v107, v119);
  v158._countAndFlagsBits = v131;
  v158._object = v122;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v158, v108, v110, sub_1001CFB84, v102, &v151);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v146);
  sub_10000959C(v149);

  v53 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(&off_10109A950, 0);
  v146 = v151;
  sub_100015BB0(&v146);
  v142 = v152;
  sub_100015BB0(&v142);

  sub_1000095E8(v133, &unk_1011838D0);
  sub_1000095E8(v150, &unk_1011845E0);
  sub_1000095E8(v135, &unk_1011845D0);
  sub_1000095E8(v134, &unk_10118AB20);
  return v53;
}

id sub_100390A90(void *a1, void *a2, void *a3)
{
  v6 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v28 - v15;
  aBlock[0] = [a2 identifier];
  sub_10010FC20(&unk_1011846A0);
  v17 = swift_dynamicCast();
  v18 = *(v10 + 56);
  if (v17)
  {
    v18(v8, 0, 1, v9);
    v28 = a1;
    v19 = *(v10 + 32);
    v19(v16, v8, v9);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v10 + 16))(v12, v16, v9);
    v21 = *(v10 + 80);
    v29 = a3;
    v22 = (v21 + 32) & ~v21;
    v23 = swift_allocObject();
    v24 = v28;
    *(v23 + 16) = v20;
    *(v23 + 24) = v24;
    v19((v23 + v22), v12, v9);
    aBlock[4] = sub_1003C0CD8;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010A9BC0;
    v25 = _Block_copy(aBlock);
    v26 = v24;

    [v29 addAnimations:v25];
    _Block_release(v25);
    return (*(v10 + 8))(v16, v9);
  }

  else
  {
    v18(v8, 1, 1, v9);
    sub_1000095E8(v8, &unk_10118BCE0);
    return [a3 setPreferredCommitStyle:0];
  }
}

void sub_100390DD8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10038E0AC(a2, a3);
  }
}

id sub_100390EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = sub_10023D4E4(v7, 0, 1);

  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t sub_100391164()
{
  v0 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&qword_101193C80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&unk_10118CDD0);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &unk_10118CDC0);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118CDD0);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007D8F40(v11);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v4 + 8))(v9, v3);
    }

    (*(v4 + 8))(v9, v3);
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t sub_1003914F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v34 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v34);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*&v2[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] + 48);
  v21 = *(*v20 + 96);
  swift_beginAccess();
  sub_1003C16C8(v20 + v21, v12, _s9PlaylistsVMa);
  v22 = &v2[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
  swift_beginAccess();
  v23 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(&v22[*(v23 + 20)], v9, &unk_10118F670);
  v24 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  sub_1001920C4(v9, v6, v15);
  sub_1000095E8(v6, &qword_1011831B0);
  sub_1000095E8(v9, &unk_10118F670);
  sub_1003C1730(v12, _s9PlaylistsVMa);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000095E8(v15, &unk_10118CDB0);
    v25 = 1;
    v26 = v36;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v27 = v35;
    (*(v17 + 16))(v35, v19, v16);
    swift_storeEnumTagMultiPayload();
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v37[0] = v2;
    v28 = v2;
    v29 = String.init<A>(reflecting:)();
    v37[3] = &type metadata for Player.CommandIssuerIdentity;
    v37[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v37[0] = v29;
    v37[1] = v30;
    v31 = v28;
    v26 = v36;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v27, v38, 3, 0, 0, 1, 0, 1, v36, v2, v37);
    (*(v17 + 8))(v19, v16);
    v25 = 0;
  }

  v32 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v32 - 8) + 56))(v26, v25, 1, v32);
}

void sub_1003919F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationItem];

    v3 = [v2 searchController];
    if (v3)
    {
      v4 = [v3 searchBar];

      [v4 resignFirstResponder];
    }
  }
}

uint64_t sub_100391AB0@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10010FC20(&qword_10118CEE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___pageProperties;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &qword_10118CEE0);
  v16 = sub_10010FC20(&unk_1011839D0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_10003D17C(v14, a1, &unk_1011839D0);
  }

  sub_1000095E8(v14, &qword_10118CEE0);
  v18 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v1 + v18, v8, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v19 = sub_1000060E4(v6, qword_101218730);
  v20 = sub_1001982EC(v8, v19);
  sub_1003C1730(v8, _s9PlaylistsV5ScopeVMa);
  if (v20)
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x59726F466564614DLL, 0xEA0000000000756FLL, 0x7972617262694CLL, 0xE700000000000000, v5, 0, 0, 0, a1);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v24 = type metadata accessor for MetricsPageProperties();
  (*(*(v24 - 8) + 56))(a1, v22, 1, v24);
  sub_1000089F8(a1, v11, &unk_1011839D0);
  (*(v17 + 56))(v11, 0, 1, v16);
  swift_beginAccess();
  sub_10006B010(v11, v1 + v15, &qword_10118CEE0);
  return swift_endAccess();
}

unint64_t sub_100391EC8(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Playlist.Folder.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  sub_10037AA20(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_1011831B0);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    if ((*(v9 + 88))(v11, v8) == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v9 + 96))(v11, v8);
      v16 = v32;
      v17 = v11;
      v18 = v33;
      (*(v32 + 32))(v4, v17, v33);
      v19 = sub_10037FC08();
      v20 = UICollectionView.globalIndex(for:)();
      v22 = v21;

      if (v22)
      {
        (*(v16 + 8))(v4, v18);
        (*(v9 + 8))(v14, v8);
        return 0;
      }

      else
      {
        sub_10010FC20(&unk_1011839E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EC6C60;
        v34[0] = 25705;
        v34[1] = 0xE200000000000000;
        v31 = v20;
        AnyHashable.init<A>(_:)();
        v25 = Playlist.id.getter();
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v25;
        *(inited + 80) = v26;
        v34[0] = 0x6973736572706D69;
        v34[1] = 0xEF7865646E496E6FLL;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for Int;
        *(inited + 144) = v31;
        strcpy(v34, "impressionType");
        HIBYTE(v34[1]) = -18;
        AnyHashable.init<A>(_:)();
        *(inited + 240) = &type metadata for String;
        *(inited + 216) = 0x6D6574497473694CLL;
        *(inited + 224) = 0xE800000000000000;
        v34[0] = 1684957547;
        v34[1] = 0xE400000000000000;
        AnyHashable.init<A>(_:)();
        *(inited + 312) = &type metadata for String;
        *(inited + 288) = 0x7473696C79616C70;
        *(inited + 296) = 0xE800000000000000;
        v34[0] = 1701667182;
        v34[1] = 0xE400000000000000;
        AnyHashable.init<A>(_:)();
        v27 = Playlist.name.getter();
        *(inited + 384) = &type metadata for String;
        *(inited + 360) = v27;
        *(inited + 368) = v28;
        v29 = sub_100060CB0(inited);
        swift_setDeallocating();
        sub_10010FC20(&qword_1011801C8);
        swift_arrayDestroy();
        (*(v16 + 8))(v4, v33);
        (*(v9 + 8))(v14, v8);
        return v29;
      }
    }

    else
    {
      v23 = *(v9 + 8);
      v23(v14, v8);
      v23(v11, v8);
      return 0;
    }
  }
}