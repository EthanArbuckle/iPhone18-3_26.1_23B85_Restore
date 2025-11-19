Swift::Int _CalendarICU._locked_algorithmB(smaller:larger:at:)(char *a1, unsigned __int8 *a2, double *a3)
{
  v3 = *a1;
  v4 = *a3;
  v30 = *a2;
  v29 = v4;
  _CalendarICU._locked_dateInterval(of:at:)(&v30, &v29, &v31);
  if (v33)
  {
    goto LABEL_2;
  }

  time = v31._time;
  v6 = v32;
  v30 = 2;
  v29 = v31._time + 1.0;
  _CalendarICU._locked_dateInterval(of:at:)(&v30, &v29, &v31);
  if (v33)
  {
    v8 = 0;
LABEL_5:
    v5.value = v8;
    return v5.value;
  }

  v10 = v31._time;
  v9 = v32;
  LOBYTE(v29) = v3;
  v30 = 2;
  v31._time = v31._time + 0.1;
  v34 = _CalendarICU._locked_ordinality(of:in:for:)(&v29, &v30, v31);
  if (!v34.is_nil)
  {
    value = v34.value;
    LOBYTE(v29) = v3;
    v30 = 2;
    v12 = v9 + v10;
    v31._time = v12 + -0.1;
    v5 = _CalendarICU._locked_ordinality(of:in:for:)(&v29, &v30, COERCE_FOUNDATION_DATE(v12 + -0.1));
    if (!v5.is_nil)
    {
      v13 = v5.value;
      v5.value = value;
      if (v13 < value)
      {
        return v5.value;
      }

      *&v5.is_nil = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_39:
        __break(1u);
      }

      else if (*&v5.is_nil >= value)
      {
        v15 = v6 + time + -1.0;
        v16 = v12 + 1.0;
        if (v12 + 1.0 >= v15)
        {
          return v5.value;
        }

        v17 = -13;
        v8 = value;
        while (1)
        {
          v18 = *&v5.is_nil;
          v30 = 2;
          v29 = v16;
          _CalendarICU._locked_dateInterval(of:at:)(&v30, &v29, &v31);
          if (v33)
          {
            goto LABEL_5;
          }

          v20 = v31._time;
          v19 = v32;
          LOBYTE(v29) = v3;
          v30 = 2;
          v31._time = v31._time + 0.1;
          v35 = _CalendarICU._locked_ordinality(of:in:for:)(&v29, &v30, v31);
          if (v35.is_nil || (v21 = v35.value, LOBYTE(v29) = v3, v30 = 2, v22 = v19 + v20, v31._time = v22 + -0.1, v5 = _CalendarICU._locked_ordinality(of:in:for:)(&v29, &v30, COERCE_FOUNDATION_DATE(v22 + -0.1)), v5.is_nil))
          {
            v5.value = v8;
            return v5.value;
          }

          if (v8 == v18)
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v23 = v5.value;
          if (v21 >= v8)
          {
            v5.value = v8;
          }

          else
          {
            v5.value = v21;
          }

          v24 = v18 - v8;
          if (__OFSUB__(v18, v8))
          {
            goto LABEL_35;
          }

          v25 = __OFADD__(v5.value, v24);
          v26 = v5.value + v24;
          if (v25)
          {
            goto LABEL_36;
          }

          *&v5.is_nil = v26 + v23;
          if (__OFADD__(v26, v23))
          {
            goto LABEL_37;
          }

          if (*&v5.is_nil < v5.value)
          {
            goto LABEL_38;
          }

          v16 = v22 + 1.0;
          v27 = v22 + 1.0 >= v15 || v17++ == 0;
          v8 = v5.value;
          if (v27)
          {
            return v5.value;
          }
        }
      }

      __break(1u);
      return v5.value;
    }
  }

LABEL_2:
  v5.value = 0;
  return v5.value;
}

Swift::Int _CalendarICU._locked_algorithmC(smaller:larger:at:)(char *a1, unsigned __int8 *a2, double *a3)
{
  v3 = *a1;
  v4 = *a3;
  v11 = *a2;
  v10 = v4;
  _CalendarICU._locked_dateInterval(of:at:)(&v11, &v10, v12);
  if (v13)
  {
    return 0;
  }

  time = v12[0]._time;
  v6 = v12[1]._time;
  LOBYTE(v10) = v3;
  v11 = 1;
  v12[0]._time = v12[0]._time + 0.1;
  v14 = _CalendarICU._locked_ordinality(of:in:for:)(&v10, &v11, v12[0]);
  if (v14.is_nil)
  {
    return 0;
  }

  value = v14.value;
  LOBYTE(v10) = v3;
  v11 = 1;
  v12[0]._time = v6 + time + -0.1;
  v15 = _CalendarICU._locked_ordinality(of:in:for:)(&v10, &v11, v12[0]);
  if (v15.is_nil)
  {
    return 0;
  }

  v9 = v15.value;
  result = value;
  if (v9 >= value)
  {
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else if (v9 + 1 >= value)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

Swift::Int _CalendarICU._locked_algorithmD(at:)(double *a1)
{
  v1 = *a1;
  v12 = 10;
  v11 = v1;
  _CalendarICU._locked_dateInterval(of:at:)(&v12, &v11, &v13);
  if (v15)
  {
    return 0;
  }

  v3 = v13;
  v2 = v14;
  v12 = 2;
  v11 = v1;
  _CalendarICU._locked_dateInterval(of:at:)(&v12, &v11, &v13);
  if (v15)
  {
    return 0;
  }

  v5 = v13;
  v4 = v14;
  v6 = v3 >= v13 ? v3 : v13;
  LOBYTE(v11) = 3;
  v12 = 2;
  v13 = v6 + 0.1;
  v16 = _CalendarICU._locked_ordinality(of:in:for:)(&v11, &v12, COERCE_FOUNDATION_DATE(v6 + 0.1));
  if (v16.is_nil)
  {
    return 0;
  }

  value = v16.value;
  v8 = v2 + v3;
  if (v2 + v3 >= v4 + v5)
  {
    v8 = v4 + v5;
  }

  LOBYTE(v11) = 3;
  v12 = 2;
  v13 = v8 + -0.1;
  v17 = _CalendarICU._locked_ordinality(of:in:for:)(&v11, &v12, COERCE_FOUNDATION_DATE(v8 + -0.1));
  if (v17.is_nil)
  {
    return 0;
  }

  v10 = v17.value;
  result = value;
  if (v10 >= value)
  {
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else if (v10 + 1 >= value)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t _CalendarICU._locked_range(of:in:for:)(unsigned __int8 *a1, unsigned __int8 *a2, double *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v6 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v6 = v5;
  }

  if (*&static Date.validCalendarRange >= v6)
  {
    v6 = *&static Date.validCalendarRange;
  }

  if (v4 <= 0xF && ((1 << v4) & 0xE100) != 0)
  {
    return 0;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      if ((v4 - 4) >= 3)
      {
        v9 = 4;
        goto LABEL_28;
      }

      return 0;
    }

    if (v3 == 5)
    {
      if ((v4 - 5) >= 2)
      {
        v9 = 5;
        goto LABEL_28;
      }

      return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 6:
        if (v4 != 6)
        {
          v9 = 6;
          goto LABEL_28;
        }

        return 0;
      case 13:
        v9 = 13;
        goto LABEL_28;
      case 7:
        if ((v4 - 3) >= 5)
        {
          v9 = 7;
LABEL_28:
          LOBYTE(v17) = v9;
          return _CalendarICU._locked_maximumRange(of:)(&v17);
        }

        return 0;
    }
  }

  result = 0;
  if (v4 > 8)
  {
    switch(v4)
    {
      case 9:
        result = 0;
        if (v3 > 0xB)
        {
          return result;
        }

        if (((1 << v3) & 0x508) == 0)
        {
          if (((1 << v3) & 0x804) == 0)
          {
            return result;
          }

          v16 = v3;
          v12 = 9;
          goto LABEL_64;
        }

        v16 = v3;
        v11 = 9;
        goto LABEL_67;
      case 10:
        if (v3 == 3)
        {
          v17 = v6;
          return _CalendarICU._locked_algorithmD(at:)(&v17);
        }

        return 0;
      case 12:
        result = 0;
        if (v3 <= 0xB)
        {
          if (((1 << v3) & 0xA04) != 0)
          {
            v16 = v3;
            v10 = 12;
LABEL_59:
            v15 = v10;
            v17 = v6;
            return _CalendarICU._locked_algorithmA(smaller:larger:at:)(&v16, &v15, &v17);
          }

          if (((1 << v3) & 0x108) == 0)
          {
            return result;
          }

          v16 = v3;
          v11 = 12;
LABEL_67:
          v15 = v11;
          v17 = v6;
          return _CalendarICU._locked_algorithmB(smaller:larger:at:)(&v16, &v15, &v17);
        }

        break;
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          return result;
        }

        result = 0;
        if (v3 <= 9)
        {
          if (v3 != 3 && v3 != 8)
          {
            return result;
          }

          goto LABEL_58;
        }

        if (v3 == 10)
        {
LABEL_58:
          v16 = v3;
          v10 = 2;
          goto LABEL_59;
        }

        if (v3 != 11)
        {
          return result;
        }

        v16 = 11;
        v12 = 2;
LABEL_64:
        v15 = v12;
        v17 = v6;
        return _CalendarICU._locked_algorithmC(smaller:larger:at:)(&v16, &v15, &v17);
      }

      result = 0;
      if (v3 > 0x12)
      {
        return result;
      }

      if (((1 << v3) & 0x40A04) != 0)
      {
        v16 = v3;
        v10 = 1;
        goto LABEL_59;
      }

      v11 = 1;
      if (((1 << v3) & 0x508) == 0)
      {
        return result;
      }

      v16 = v3;
      goto LABEL_67;
    }

    result = 0;
    if (v3 <= 0xB)
    {
      if (((1 << v3) & 0xE0E) != 0)
      {
        LOBYTE(v17) = v3;
        return _CalendarICU._locked_maximumRange(of:)(&v17);
      }

      if (v3 == 8)
      {
        LOBYTE(v17) = 3;
        result = _CalendarICU._locked_maximumRange(of:)(&v17);
        if ((v14 & 1) == 0)
        {
          if (__OFSUB__(v13, result))
          {
            __break(1u);
          }

          else if (!__OFADD__(result, v13 - result))
          {
            if (!__OFSUB__(v13, 1))
            {
              if (!__OFADD__(v13 - 1, 6))
              {
                if (v13 + 5 >= -6)
                {
                  return 1;
                }

                goto LABEL_81;
              }

LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
              return result;
            }

LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          __break(1u);
          goto LABEL_79;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *_CalendarICU._locked_start(of:at:)@<X0>(unsigned __int8 *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v6 = *a2;
  if (one-time initialization token for validCalendarRange != -1)
  {
    result = swift_once();
  }

  v7 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v7 = v6;
  }

  if (*&static Date.validCalendarRange >= v7)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = v7;
  }

  if (v5 <= 5)
  {
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v9 = *(v3 + 48);
        ObjectType = swift_getObjectType();
        v18 = v8;
        v11 = *(v9 + 40);
        swift_unknownObjectRetain();
        v12 = v11(&v18, ObjectType, v9);
        result = swift_unknownObjectRelease();
        v13 = floor((v8 + v12) / 3600.0) * 3600.0 - v12;
      }

      else
      {
        v13 = floor(v8 / 60.0) * 60.0;
      }

      goto LABEL_26;
    }

    if ((v5 - 1) >= 3)
    {
      switch(*(v3 + 24))
      {
        case 1:
          if (v8 < -8.02498752e10)
          {
            goto LABEL_12;
          }

          *a3 = 0xC232AF43EB000000;
          goto LABEL_27;
        case 2:
        case 0x19:
        case 0x1A:
          if (v8 < -1.46325744e11)
          {
            goto LABEL_12;
          }

          goto LABEL_52;
        case 3:
          if (v8 < -5.41625184e10)
          {
            v16 = 0x327159C60000;
            goto LABEL_50;
          }

          *a3 = 0xC22938ACE3000000;
          goto LABEL_27;
        case 4:
          if (v8 < -2.36439216e11)
          {
            goto LABEL_12;
          }

          if (v8 < -6.2872416e10)
          {
            goto LABEL_47;
          }

          v17 = 0x46F9DE000000;
          goto LABEL_36;
        case 5:
          if (v8 < -2.36439216e11)
          {
            goto LABEL_12;
          }

LABEL_47:
          *a3 = 0xC24B86700FC00000;
          goto LABEL_27;
        case 6:
          if (v8 < -1.81778083e11)
          {
            goto LABEL_12;
          }

          *a3 = 0xC2452968B6C00000;
          goto LABEL_27;
        case 8:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
          if (v8 < -6.06455424e10)
          {
            goto LABEL_12;
          }

          *a3 = 0xC22C3D8314000000;
          goto LABEL_27;
        case 9:
        case 0xE:
        case 0xF:
          if (v8 < -4.34999808e10)
          {
            goto LABEL_12;
          }

          v15 = 0x419A10000000;
          goto LABEL_57;
        case 0xA:
          if (v8 < -4.34998944e10)
          {
            goto LABEL_12;
          }

          v15 = 0x41976D000000;
          goto LABEL_57;
        case 0xB:
          if (v8 < -4.27909824e10)
          {
            goto LABEL_12;
          }

LABEL_52:
          LOBYTE(v5) = 0;
          goto LABEL_25;
        case 0xC:
          if (v8 < -4.3510176e10)
          {
            goto LABEL_12;
          }

          v15 = 0x42D132000000;
LABEL_57:
          *a3 = v15 & 0xFFFFFFFFFFFFLL | 0xC224000000000000;
          goto LABEL_27;
        case 0xD:
          if (v8 < -2808691200.0)
          {
            v16 = 0x29DA4E80000;
            goto LABEL_50;
          }

          *a3 = 0xC1E4ED2740000000;
          break;
        default:
          if (v8 >= -6.3113904e10)
          {
            v17 = 0x63C37F000000;
LABEL_36:
            *a3 = v17 & 0xFFFFFFFFFFFFLL | 0xC22D000000000000;
          }

          else
          {
            v16 = 0x3AC786FE0000;
LABEL_50:
            *a3 = v16 & 0xFFFFFFFFFFFFLL | 0xC290000000000000;
          }

          break;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v5 > 0x12)
  {
LABEL_23:
    if ((v5 - 7) >= 2)
    {
      v13 = floor(v8);
      goto LABEL_26;
    }

    LOBYTE(v5) = 3;
    goto LABEL_25;
  }

  if (((1 << v5) & 0x41E00) != 0)
  {
LABEL_25:
    v19 = v5;
    HIDWORD(v18) = HIDWORD(v8);
    _CalendarICU._locked_setToFirstInstant(of:at:)(&v19);
    LODWORD(v18) = 0;
    result = ucal_getMillis();
    v13 = v14 / 1000.0 + -978307200.0;
    goto LABEL_26;
  }

  if (((1 << v5) & 0x3C000) != 0)
  {
LABEL_12:
    *a3 = 0;
    *(a3 + 8) = 1;
    return result;
  }

  if (v5 != 13)
  {
    goto LABEL_23;
  }

  v13 = floor(v8 * 1000000000.0) * 0.000000001;
LABEL_26:
  *a3 = v13;
LABEL_27:
  *(a3 + 8) = 0;
  return result;
}

uint64_t _CalendarICU._locked_add(_:amount:wrap:status:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == 14)
  {
LABEL_2:
    if (a3)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_4;
    }

LABEL_47:
    v16 = 0;
    v17 = 0;
    v5 = 0;
    goto LABEL_48;
  }

  if (a1 > 11)
  {
    if (a1 == 12)
    {
      if (a3)
      {
        goto LABEL_3;
      }

      goto LABEL_47;
    }

    if (a1 != 21)
    {
      if (a1 == 13)
      {
        if (a3)
        {
          goto LABEL_3;
        }

        goto LABEL_47;
      }

LABEL_57:
      if (a3)
      {
        ucal_roll();
      }

      else
      {
        ucal_add();
      }

      result = ucal_getMillis();
      if (a2 >= 1)
      {
        v25 = v24 / 1000.0 + -978307200.0;
        result = _CalendarICU._locked_timeZoneTransitionInterval(at:)(&v25, &v26);
        if ((v27 & 1) == 0)
        {
          return ucal_setMillis();
        }
      }

      return result;
    }
  }

  else if ((a1 - 9) >= 3)
  {
    goto LABEL_57;
  }

  if (a1 > 10)
  {
    if (a1 != 11)
    {
      goto LABEL_2;
    }

    goto LABEL_46;
  }

  if (a1 != 9)
  {
    if (a1 != 10)
    {
      if ((a3 & 1) == 0)
      {
        v16 = 0;
        v17 = 0;
        v5 = 0;
        goto LABEL_48;
      }

      v5 = 0;
LABEL_4:
      Limit = ucal_getLimit();
      result = ucal_getLimit();
      v8 = result - Limit;
      if (__OFSUB__(result, Limit))
      {
        __break(1u);
      }

      else
      {
        v9 = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
          result = ucal_get();
          v10 = result + a2;
          if (!__OFADD__(result, a2))
          {
            v11 = __OFSUB__(v10, Limit);
            v12 = v10 - Limit;
            if (!v11)
            {
              if (!v9)
              {
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

              if (v12 == 0x80000000 && v9 == -1)
              {
                goto LABEL_75;
              }

              v13 = v12 % v9;
              if (v13 < 0)
              {
                v11 = __OFADD__(v13, v9);
                v13 += v9;
                if (v11)
                {
                  goto LABEL_77;
                }
              }

              v14 = v13 + Limit;
              if (__OFADD__(v13, Limit))
              {
                goto LABEL_73;
              }

              if (v14 >= result || a2 < 1)
              {
                if (__OFSUB__(v14, result))
                {
LABEL_76:
                  __break(1u);
LABEL_77:
                  __break(1u);
                  return result;
                }

                if (!v5)
                {
                  v16 = 0;
                  v17 = 0;
                  goto LABEL_48;
                }
              }

              else
              {
                ucal_getMillis();
                v19 = v18 / 1000.0 + -978307200.0;
                if (a1 == 14 || (a1 - 10) > 3)
                {
                  LOBYTE(v20) = 6;
                }

                else
                {
                  v20 = 0x5040303u >> (8 * (a1 - 10));
                }

                _CalendarICU.totalSecondsInSmallUnits(_:status:)(a1);
                LOBYTE(v25) = v20;
                v26 = v19;
                _CalendarICU._locked_setToFirstInstant(of:at:)(&v25);
                if ((v5 & 1) == 0)
                {
                  v16 = 0;
                  v17 = 0;
                  v5 = 0;
                  goto LABEL_48;
                }
              }

              goto LABEL_39;
            }

LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

LABEL_68:
          __break(1u);
          goto LABEL_69;
        }
      }

      __break(1u);
      goto LABEL_68;
    }

LABEL_46:
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_47;
  }

  if (a3)
  {
    v5 = 1;
    goto LABEL_4;
  }

LABEL_39:
  v21 = ucal_get();
  result = ucal_get();
  v17 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v16 = ucal_get();
  v5 = 1;
LABEL_48:
  ucal_getMillis();
  result = ucal_setMillis();
  if (!v5)
  {
    return result;
  }

  v22 = ucal_get();
  result = ucal_get();
  v23 = v22 + result;
  if (__OFADD__(v22, result))
  {
    goto LABEL_70;
  }

  if (__OFSUB__(v17, v23))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v17 != v23)
  {
    ucal_getMillis();
    ucal_setMillis();
    result = ucal_get();
    if (result != v16)
    {
      return ucal_setMillis();
    }
  }

  return result;
}

void _CalendarICU.dateComponents(_:from:in:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v17 = *(v3 + 40);
  v16[0] = v6;
  v16[1] = v7;
  swift_unknownObjectRetain();
  v8 = specialized static TimeZone.== infix(_:_:)(&v17, v16);
  v9 = swift_unknownObjectRelease();
  if (v8)
  {
    v10 = *(v3 + 16);
    MEMORY[0x1EEE9AC00](v9);
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock(v10 + 4);
    closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v10 + 4);
  }

  else
  {
    v12 = *(v3 + 16);
    MEMORY[0x1EEE9AC00](v9);
    MEMORY[0x1EEE9AC00](v13);
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v12 + 4);
    partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(&v17);
    os_unfair_lock_unlock(v12 + 4);
    v14 = *(&v17 + 1);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    *&v17 = v4;
    v16[0] = v5;
    (*(v14 + 192))(&v17, v16, ObjectType, v14);
    swift_unknownObjectRelease();
  }
}

void *closure #1 in _CalendarICU.dateComponents(_:from:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>, double a4@<D0>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for validCalendarRange != -1)
  {
    v12 = a4;
    swift_once();
    a4 = v12;
  }

  if (*(&static Date.validCalendarRange + 1) < a4)
  {
    a4 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= a4)
  {
    v7 = *&static Date.validCalendarRange;
  }

  else
  {
    v7 = a4;
  }

  MEMORY[0x1865D2A80](*(a1 + 32));
  v8 = floor(v7);
  ucal_setMillis();
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  *&__src[5] = 0;
  BYTE8(__src[5]) = 1;
  *&__src[6] = 0;
  BYTE8(__src[6]) = 1;
  *&__src[7] = 0;
  BYTE8(__src[7]) = 1;
  *&__src[8] = 0;
  BYTE8(__src[8]) = 1;
  *&__src[9] = 0;
  BYTE8(__src[9]) = 1;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 1;
  *&__src[11] = 0;
  BYTE8(__src[11]) = 1;
  *&__src[12] = 0;
  BYTE8(__src[12]) = 1;
  *&__src[13] = 0;
  BYTE8(__src[13]) = 1;
  *&__src[14] = 0;
  BYTE8(__src[14]) = 1;
  *&__src[15] = 0;
  BYTE8(__src[15]) = 1;
  *&__src[16] = 0;
  BYTE8(__src[16]) = 1;
  *&__src[17] = 0;
  BYTE8(__src[17]) = 1;
  *(&__src[17] + 9) = 514;
  memset(__src, 0, 40);
  v13 = 0uLL;
  DateComponents.timeZone.setter(&v13);
  *&__src[2] = 0;
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  *&__src[5] = 0;
  BYTE8(__src[5]) = 1;
  *&__src[7] = 0;
  BYTE8(__src[7]) = 1;
  *&__src[8] = 0;
  BYTE8(__src[8]) = 1;
  *&__src[9] = 0;
  BYTE8(__src[9]) = 1;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 1;
  *&__src[11] = 0;
  BYTE8(__src[11]) = 1;
  *&__src[12] = 0;
  BYTE8(__src[12]) = 1;
  *&__src[13] = 0;
  BYTE8(__src[13]) = 1;
  *&__src[15] = 0;
  BYTE8(__src[15]) = 1;
  *&__src[16] = 0;
  BYTE8(__src[16]) = 1;
  *&__src[17] = 0;
  BYTE8(__src[17]) = 1;
  *&__src[6] = 0;
  BYTE8(__src[6]) = 1;
  if (a2)
  {
    *&__src[2] = ucal_get();
    BYTE8(__src[2]) = 0;
    if ((a2 & 2) == 0)
    {
LABEL_10:
      if ((a2 & 0x200) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_10;
  }

  *&__src[3] = ucal_get();
  BYTE8(__src[3]) = 0;
  if ((a2 & 0x200) == 0)
  {
LABEL_11:
    if ((a2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *&__src[13] = 0;
  BYTE8(__src[13]) = 0;
  if ((a2 & 4) == 0)
  {
LABEL_12:
    if ((a2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *&__src[4] = ucal_get() + 1;
  BYTE8(__src[4]) = 0;
  if ((a2 & 8) == 0)
  {
LABEL_13:
    if ((a2 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *&__src[5] = ucal_get();
  BYTE8(__src[5]) = 0;
  if ((a2 & 0x40000) == 0)
  {
LABEL_14:
    if ((a2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *&__src[6] = ucal_get();
  BYTE8(__src[6]) = 0;
  if ((a2 & 0x800) == 0)
  {
LABEL_15:
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  *&__src[16] = ucal_get();
  BYTE8(__src[16]) = 0;
  if ((a2 & 0x400) == 0)
  {
LABEL_16:
    if ((a2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  *&__src[15] = ucal_get();
  BYTE8(__src[15]) = 0;
  if ((a2 & 0x1000) == 0)
  {
LABEL_17:
    if ((a2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  *&__src[17] = ucal_get();
  BYTE8(__src[17]) = 0;
  if ((a2 & 0x80) == 0)
  {
LABEL_18:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  *&__src[11] = ucal_get();
  BYTE8(__src[11]) = 0;
  if ((a2 & 0x100) == 0)
  {
LABEL_19:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  *&__src[12] = ucal_get();
  BYTE8(__src[12]) = 0;
  if ((a2 & 0x10) == 0)
  {
LABEL_20:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  *&__src[7] = ucal_get();
  BYTE8(__src[7]) = 0;
  if ((a2 & 0x20) == 0)
  {
LABEL_21:
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_37:
    *&__src[9] = ucal_get();
    BYTE8(__src[9]) = 0;
    if ((a2 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_36:
  *&__src[8] = ucal_get();
  BYTE8(__src[8]) = 0;
  if ((a2 & 0x40) != 0)
  {
    goto LABEL_37;
  }

LABEL_22:
  if ((a2 & 0x2000) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  v9 = (v7 - v8) * 1000000000.0;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  if (v9 >= 9.22337204e18)
  {
    goto LABEL_53;
  }

  v10 = v9;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  *&__src[10] = v10;
  BYTE8(__src[10]) = v9 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_44:
  if ((*&a2 & 0x10004) != 0)
  {
    BYTE9(__src[17]) = ucal_get() != 0;
  }

  if ((a2 & 0x80000) != 0)
  {
    BYTE10(__src[17]) = ucal_get() != 0;
  }

  if ((a2 & 0x8000) != 0)
  {
    v13 = *(a1 + 40);
    swift_unknownObjectRetain();
    DateComponents.timeZone.setter(&v13);
  }

  return memcpy(a3, __src, 0x11BuLL);
}

uint64_t closure #1 in _CalendarICU.date(byAdding:to:wrappingComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (one-time initialization token for validCalendarRange != -1)
  {
    v17 = a5;
    swift_once();
    a5 = v17;
  }

  if (*(&static Date.validCalendarRange + 1) < a5)
  {
    a5 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= a5)
  {
    v9 = *&static Date.validCalendarRange;
  }

  else
  {
    v9 = a5;
  }

  MEMORY[0x1865D2A80](*(a1 + 32));
  v10 = 0.0;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v10 = v9 - trunc(v9);
    if (v10 < 0.0)
    {
      v10 = v10 + 1.0;
    }
  }

  ucal_setMillis();
  if (*(a2 + 40))
  {
    if (*(a2 + 56))
    {
      goto LABEL_13;
    }
  }

  else
  {
    _CalendarICU._locked_add(_:amount:wrap:status:)(0, *(a2 + 32), a3 & 1);
    if (*(a2 + 56))
    {
LABEL_13:
      if (*(a2 + 280))
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  _CalendarICU._locked_add(_:amount:wrap:status:)(1, *(a2 + 48), a3 & 1);
  if (*(a2 + 280))
  {
LABEL_14:
    if (*(a2 + 72))
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  _CalendarICU._locked_add(_:amount:wrap:status:)(17, *(a2 + 272), a3 & 1);
  if (*(a2 + 72))
  {
LABEL_15:
    v11 = *(a2 + 264);
    if (v11)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  _CalendarICU._locked_add(_:amount:wrap:status:)(2, *(a2 + 64), a3 & 1);
  v11 = *(a2 + 264);
  if (v11)
  {
LABEL_16:
    if (*(a2 + 248))
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  _CalendarICU._locked_add(_:amount:wrap:status:)(3, *(a2 + 256), a3 & 1);
  if (*(a2 + 248))
  {
LABEL_17:
    if (*(a2 + 200))
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  _CalendarICU._locked_add(_:amount:wrap:status:)(4, *(a2 + 240), a3 & 1);
  if (*(a2 + 200))
  {
LABEL_18:
    if (*(a2 + 232))
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_26:
  _CalendarICU._locked_add(_:amount:wrap:status:)(8, *(a2 + 192), a3 & 1);
  if (*(a2 + 232))
  {
    goto LABEL_29;
  }

LABEL_27:
  if (v11)
  {
    _CalendarICU._locked_add(_:amount:wrap:status:)(3, *(a2 + 224), a3 & 1);
  }

LABEL_29:
  if (*(a2 + 88))
  {
    if (*(a2 + 104))
    {
      goto LABEL_31;
    }
  }

  else
  {
    _CalendarICU._locked_add(_:amount:wrap:status:)(5, *(a2 + 80), a3 & 1);
    if (*(a2 + 104))
    {
LABEL_31:
      if (*(a2 + 184))
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }
  }

  _CalendarICU._locked_add(_:amount:wrap:status:)(6, *(a2 + 96), a3 & 1);
  if (*(a2 + 184))
  {
LABEL_32:
    if (*(a2 + 120))
    {
      goto LABEL_33;
    }

    goto LABEL_42;
  }

LABEL_41:
  _CalendarICU._locked_add(_:amount:wrap:status:)(7, *(a2 + 176), a3 & 1);
  if (*(a2 + 120))
  {
LABEL_33:
    if (*(a2 + 136))
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

LABEL_42:
  _CalendarICU._locked_add(_:amount:wrap:status:)(11, *(a2 + 112), a3 & 1);
  if (*(a2 + 136))
  {
LABEL_34:
    if (*(a2 + 152))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_43:
  _CalendarICU._locked_add(_:amount:wrap:status:)(12, *(a2 + 128), a3 & 1);
  if ((*(a2 + 152) & 1) == 0)
  {
LABEL_35:
    _CalendarICU._locked_add(_:amount:wrap:status:)(13, *(a2 + 144), a3 & 1);
  }

LABEL_36:
  v12 = *(a2 + 160);
  v13 = *(a2 + 168);
  result = ucal_getMillis();
  v16 = v12 * 0.000000001;
  if (v13)
  {
    v16 = 0.0;
  }

  *a4 = v16 + v10 + v15 / 1000.0 + -978307200.0;
  *(a4 + 8) = 0;
  return result;
}

void *closure #1 in _CalendarICU.dateComponents(_:from:to:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v23 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for validCalendarRange != -1)
  {
    v19 = a5;
    v20 = a4;
    swift_once();
    a4 = v20;
    a5 = v19;
  }

  if (*(&static Date.validCalendarRange + 1) < a4)
  {
    a4 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= a4)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = a4;
  }

  if (*(&static Date.validCalendarRange + 1) >= a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v9)
  {
    v10 = *&static Date.validCalendarRange;
  }

  else
  {
    v10 = v9;
  }

  MEMORY[0x1865D2A80](*(a1 + 32));
  v11 = (v10 + 978307200.0) * 1000.0 - ((v8 + 978307200.0) * 1000.0 - floor((v8 + 978307200.0) * 1000.0));
  ucal_setMillis();
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  *&__src[5] = 0;
  BYTE8(__src[5]) = 1;
  *&__src[6] = 0;
  BYTE8(__src[6]) = 1;
  *&__src[7] = 0;
  BYTE8(__src[7]) = 1;
  *&__src[8] = 0;
  BYTE8(__src[8]) = 1;
  *&__src[9] = 0;
  BYTE8(__src[9]) = 1;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 1;
  *&__src[11] = 0;
  BYTE8(__src[11]) = 1;
  *&__src[12] = 0;
  BYTE8(__src[12]) = 1;
  *&__src[13] = 0;
  BYTE8(__src[13]) = 1;
  *&__src[14] = 0;
  BYTE8(__src[14]) = 1;
  *&__src[15] = 0;
  BYTE8(__src[15]) = 1;
  *&__src[16] = 0;
  BYTE8(__src[16]) = 1;
  *&__src[17] = 0;
  BYTE8(__src[17]) = 1;
  *(&__src[17] + 9) = 514;
  memset(__src, 0, 40);
  v21[0] = 0;
  v21[1] = 0;
  DateComponents.timeZone.setter(v21);
  *&__src[2] = 0;
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  *&__src[5] = 0;
  BYTE8(__src[5]) = 1;
  *&__src[7] = 0;
  BYTE8(__src[7]) = 1;
  *&__src[8] = 0;
  BYTE8(__src[8]) = 1;
  *&__src[9] = 0;
  BYTE8(__src[9]) = 1;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 1;
  *&__src[11] = 0;
  BYTE8(__src[11]) = 1;
  *&__src[12] = 0;
  BYTE8(__src[12]) = 1;
  *&__src[13] = 0;
  BYTE8(__src[13]) = 1;
  *&__src[15] = 0;
  BYTE8(__src[15]) = 1;
  *&__src[16] = 0;
  BYTE8(__src[16]) = 1;
  *&__src[17] = 0;
  BYTE8(__src[17]) = 1;
  *&__src[6] = 0;
  BYTE8(__src[6]) = 1;
  if (a2)
  {
    ucal_getMillis();
    v12 = ucal_get();
    ucal_setMillis();
    v13 = ucal_get();
    ucal_setMillis();
    ucal_set();
    if (__OFSUB__(v13, v12))
    {
      __break(1u);
      goto LABEL_58;
    }

    *&__src[2] = v13 - v12;
    BYTE8(__src[2]) = 0;
  }

  if ((a2 & 2) != 0)
  {
    *&__src[3] = ucal_getFieldDifference();
    BYTE8(__src[3]) = 0;
    if ((a2 & 0x1000) == 0)
    {
LABEL_19:
      if ((a2 & 0x200) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }
  }

  else if ((a2 & 0x1000) == 0)
  {
    goto LABEL_19;
  }

  *&__src[17] = ucal_getFieldDifference();
  BYTE8(__src[17]) = 0;
  if ((a2 & 0x200) == 0)
  {
LABEL_20:
    if ((a2 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  *&__src[13] = 0;
  BYTE8(__src[13]) = 0;
  if ((a2 & 4) == 0)
  {
LABEL_21:
    if ((a2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  *&__src[4] = ucal_getFieldDifference();
  BYTE8(__src[4]) = 0;
  if ((a2 & 0x800) == 0)
  {
LABEL_22:
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  *&__src[16] = ucal_getFieldDifference();
  BYTE8(__src[16]) = 0;
  if ((a2 & 0x400) == 0)
  {
LABEL_23:
    if ((a2 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  *&__src[15] = ucal_getFieldDifference();
  BYTE8(__src[15]) = 0;
  if ((a2 & 8) == 0)
  {
LABEL_24:
    if ((a2 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_38:
  *&__src[5] = ucal_getFieldDifference();
  BYTE8(__src[5]) = 0;
  if ((a2 & 0x40000) == 0)
  {
LABEL_25:
    if ((a2 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  *&__src[6] = ucal_getFieldDifference();
  BYTE8(__src[6]) = 0;
  if ((a2 & 0x80) == 0)
  {
LABEL_26:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  *&__src[11] = ucal_getFieldDifference();
  BYTE8(__src[11]) = 0;
  if ((a2 & 0x100) == 0)
  {
LABEL_27:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  *&__src[12] = ucal_getFieldDifference();
  BYTE8(__src[12]) = 0;
  if ((a2 & 0x10) == 0)
  {
LABEL_28:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_42:
  *&__src[7] = ucal_getFieldDifference();
  BYTE8(__src[7]) = 0;
  if ((a2 & 0x20) == 0)
  {
LABEL_29:
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_43:
  *&__src[8] = ucal_getFieldDifference();
  BYTE8(__src[8]) = 0;
  if ((a2 & 0x40) == 0)
  {
LABEL_30:
    if ((a2 & 0x2000) == 0)
    {
      return memcpy(a3, __src, 0x11BuLL);
    }

LABEL_45:
    ucal_getMillis();
    v15 = floor((v11 - v14) * 1000000.0);
    if (v15 >= 2147483650.0)
    {
      v17 = 0;
      v16 = 0x7FFFFFFFLL;
    }

    else
    {
      if (v15 > -2147483650.0)
      {
        if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v15 > -9.22337204e18)
          {
            if (v15 < 9.22337204e18)
            {
              v16 = v15;
              v17 = v15 == 0x7FFFFFFFFFFFFFFFLL;
              if (v15 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v16 = 0;
              }

              goto LABEL_55;
            }

LABEL_60:
            __break(1u);
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v17 = 0;
      v16 = 0xFFFFFFFF80000000;
    }

LABEL_55:
    *&__src[10] = v16;
    BYTE8(__src[10]) = v17;
    return memcpy(a3, __src, 0x11BuLL);
  }

LABEL_44:
  *&__src[9] = ucal_getFieldDifference();
  BYTE8(__src[9]) = 0;
  if ((a2 & 0x2000) != 0)
  {
    goto LABEL_45;
  }

  return memcpy(a3, __src, 0x11BuLL);
}

double *_CalendarICU._locked_setToFirstInstant(of:at:)(unsigned __int8 *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v19 = 0;
  ucal_setMillis();
  v3 = 0;
  v4 = 1;
  if (v2 <= 6)
  {
    if (v2 > 2)
    {
      if (v2 > 4)
      {
        if (v2 != 5)
        {
          ucal_set();
          goto LABEL_54;
        }

        goto LABEL_37;
      }

      if (v2 != 3)
      {
LABEL_36:
        ucal_getLimit();
        ucal_set();
LABEL_37:
        ucal_getLimit();
        ucal_set();
        ucal_set();
        if ((v4 & 1) == 0 && ucal_get() < v3)
        {
          do
          {
            ucal_getMillis();
            v8 = v7;
            ucal_add();
          }

          while (ucal_get() < v3);
          ucal_getMillis();
          v10 = v9;
          do
          {
            ucal_setMillis();
            if (ucal_get() >= v3)
            {
              v10 = (v8 + v10) * 0.5;
            }

            else
            {
              v8 = (v8 + v10) * 0.5;
            }
          }

          while (vabdd_f64(v10, v8) >= 1000.0);
          do
          {
            v8 = floor((v8 + 1000.0) / 1000.0) * 1000.0;
            ucal_setMillis();
          }

          while (ucal_get() < v3);
        }

        goto LABEL_46;
      }

LABEL_35:
      ucal_getLimit();
      ucal_set();
      goto LABEL_36;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v3 = ucal_get();
      ucal_getLimit();
      ucal_set();
      v4 = 0;
    }

    ucal_getLimit();
    ucal_set();
LABEL_33:
    ucal_set();
LABEL_34:
    ucal_getLimit();
    ucal_set();
    ucal_set();
    goto LABEL_35;
  }

  if (v2 <= 9)
  {
    if ((v2 - 7) < 2)
    {
      goto LABEL_35;
    }

    if (v2 != 9)
    {
      goto LABEL_46;
    }

    v5 = ucal_get();
    if (*(v1 + 24) == 6)
    {
      if (v5 <= 0xC)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (v5 <= 0xC)
    {
LABEL_32:
      v2 = 2;
      ucal_set();
      v3 = 0;
      goto LABEL_33;
    }

    __break(1u);
  }

  if ((v2 - 10) < 2)
  {
LABEL_22:
    if (*(v1 + 64) == 1)
    {
      Attribute = ucal_getAttribute();
    }

    else
    {
      Attribute = *(v1 + 56);
    }

    if (Attribute == ucal_get())
    {
      v3 = 0;
      v2 = 3;
    }

    else
    {
      do
      {
        ucal_add();
        ucal_add();
      }

      while (Attribute != ucal_get());
      v3 = 0;
      v2 = 3;
      v4 = 1;
    }

    goto LABEL_35;
  }

  if (v2 == 12)
  {
    ucal_getLimit();
    ucal_set();
    goto LABEL_22;
  }

  if (v2 == 18)
  {
    goto LABEL_35;
  }

LABEL_46:
  if (v2 <= 8 && ((1 << v2) & 0x188) != 0)
  {
    v11 = ucal_get();
    v12 = ucal_get();
    do
    {
      ucal_getMillis();
      ucal_add();
      v13 = ucal_get();
      v14 = ucal_get();
    }

    while (v11 == v13 && v12 == v14);
    ucal_setMillis();
  }

LABEL_54:
  ucal_getMillis();
  v18 = v16 / 1000.0 + -978307200.0;
  result = _CalendarICU._locked_timeZoneTransitionInterval(at:)(&v18, v20);
  if ((v20[16] & 1) == 0)
  {
    return ucal_setMillis();
  }

  return result;
}

uint64_t _CalendarICU.totalSecondsInSmallUnits(_:status:)(uint64_t result)
{
  if (result != 14)
  {
    v1 = result;
    if (result != 21)
    {
      result = ucal_get();
      if (v1 != 13)
      {
        result = ucal_get();
        if (v1 != 12)
        {
          return ucal_get();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarICU(unsigned __int8 *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v19 = *a1;
  v14 = *(a8 + 8);
  v17 = *a8;
  v18 = v14;
  v15 = swift_allocObject();
  _CalendarICU.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(&v19, a2, a3, a4, a5 & 1, a6, a7 & 1, &v17);
  return v15;
}

void protocol witness for _CalendarProtocol.gregorianStartDate.getter in conformance _CalendarICU(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t protocol witness for _CalendarProtocol.maximumRange(of:) in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t protocol witness for _CalendarProtocol.range(of:in:for:) in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t protocol witness for _CalendarProtocol.ordinality(of:in:for:) in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void protocol witness for _CalendarProtocol.dateInterval(of:for:) in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t protocol witness for _CalendarProtocol.isDateInWeekend(_:) in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void protocol witness for _CalendarProtocol.dateComponents(_:from:) in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);
}

void protocol witness for _CalendarProtocol.date(byAdding:to:wrappingComponents:) in conformance _CalendarICU(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v2 + 4);
}

void protocol witness for _CalendarProtocol.dateComponents(_:from:to:) in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _CalendarICU()
{
  BYTE8(v2) = 0;
  *&v2 = *(*v0 + 24);
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

char *Calendar.eraSymbols.getter(int a1)
{
  v7[0] = *v1;
  swift_unknownObjectRetain();
  ICUDateFormatter.DateFormatInfo.init(_:)(v7, v6);
  v3 = specialized static ICUDateFormatter.cachedFormatter(for:)(v6);
  v7[2] = v6[2];
  v7[3] = v6[3];
  v7[4] = v6[4];
  v7[5] = v6[5];
  v7[0] = v6[0];
  v7[1] = v6[1];
  outlined destroy of ICUDateFormatter.DateFormatInfo(v7);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = ICUDateFormatter.symbols(for:)(a1);

  return v4;
}

uint64_t Calendar.amSymbol.getter()
{
  v6[0] = *v0;
  swift_unknownObjectRetain();
  ICUDateFormatter.DateFormatInfo.init(_:)(v6, v5);
  v1 = specialized static ICUDateFormatter.cachedFormatter(for:)(v5);
  v6[2] = v5[2];
  v6[3] = v5[3];
  v6[4] = v5[4];
  v6[5] = v5[5];
  v6[0] = v5[0];
  v6[1] = v5[1];
  result = outlined destroy of ICUDateFormatter.DateFormatInfo(v6);
  if (v1)
  {
    v3 = ICUDateFormatter.symbols(for:)(5);

    if (*(v3 + 2))
    {
LABEL_3:
      v4 = *(v3 + 4);

      return v4;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Calendar.pmSymbol.getter()
{
  v6[0] = *v0;
  swift_unknownObjectRetain();
  ICUDateFormatter.DateFormatInfo.init(_:)(v6, v5);
  v1 = specialized static ICUDateFormatter.cachedFormatter(for:)(v5);
  v6[2] = v5[2];
  v6[3] = v5[3];
  v6[4] = v5[4];
  v6[5] = v5[5];
  v6[0] = v5[0];
  v6[1] = v5[1];
  result = outlined destroy of ICUDateFormatter.DateFormatInfo(v6);
  if (v1)
  {
    v3 = ICUDateFormatter.symbols(for:)(5);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 6);

    return v4;
  }

  return result;
}

uint64_t Calendar.Component.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0x18)
  {
    *a2 = 19;
  }

  else
  {
    *a2 = byte_18121F4B2[result];
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _CalendarICU(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _CalendarICU and conformance _CalendarICU(&lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined destroy of LocalePreferences?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17LocalePreferencesVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in _CalendarICU.isDateInWeekend(_:)@<X0>(BOOL *a1@<X8>)
{
  result = ucal_isWeekend();
  *a1 = result != 0;
  return result;
}

void *partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unsigned __int8 *partial apply for closure #1 in _CalendarICU.dateInterval(of:for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v5 = *(v1 + 24);
  v4 = v2;
  return _CalendarICU._locked_dateInterval(of:at:)(&v5, &v4, a1);
}

Swift::Int partial apply for closure #1 in _CalendarICU.ordinality(of:in:for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 25);
  *&v4._time = *(v1 + 32);
  v7 = *(v1 + 24);
  v6 = v3;
  v8 = _CalendarICU._locked_ordinality(of:in:for:)(&v7, &v6, v4);
  *a1 = v8.value;
  *(a1 + 8) = v8.is_nil;
  return v8.value;
}

void *partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    *a1 = v6;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t partial apply for closure #1 in _CalendarICU.range(of:in:for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 25);
  v4 = *(v1 + 32);
  v10 = *(v1 + 24);
  v9 = v3;
  v8 = v4;
  result = _CalendarICU._locked_range(of:in:for:)(&v10, &v9, &v8);
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  return result;
}

double partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)@<D0>(uint64_t a1@<X8>)
{
  return partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(a1);
}

{
  (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t partial apply for closure #1 in _CalendarICU.maximumRange(of:)@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 24);
  result = _CalendarICU._locked_maximumRange(of:)(&v6);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

id _NSSwiftCalendar.debugDescription.getter()
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftCalendar__lock];
  os_unfair_lock_lock((v1 + 32));
  v24 = *(v1 + 16);
  v2 = Calendar.description.getter();
  v4 = v3;
  os_unfair_lock_unlock((v1 + 32));
  v23.receiver = v0;
  v23.super_class = type metadata accessor for _NSSwiftCalendar();
  v5 = objc_msgSendSuper2(&v23, sel_debugDescription);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = v5;
  isTaggedPointer = _objc_isTaggedPointer(v5);
  v8 = v6;
  v9 = v8;
  if (!isTaggedPointer)
  {
LABEL_7:
    *&v24 = 0;
    if (__CFStringIsCF())
    {
      v11 = v24;
      if (!v24)
      {

        v13 = 0xE000000000000000;
        goto LABEL_24;
      }

LABEL_22:
      v11 = String.init(_cocoaString:)();
      v13 = v20;
      goto LABEL_23;
    }

    v14 = v9;
    v15 = String.init(_nativeStorage:)();
    if (v16)
    {
      v11 = v15;
      v13 = v16;

      goto LABEL_24;
    }

    *&v24 = [v14 length];
    if (v24)
    {
      goto LABEL_22;
    }

LABEL_20:
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_24;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    goto LABEL_16;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v13 = v12;

LABEL_24:
      *&v24 = v11;
      *(&v24 + 1) = v13;
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v2, v4);

      return v24;
    }

    goto LABEL_7;
  }

  result = [v9 UTF8String];
  if (result)
  {
    v18 = String.init(utf8String:)(result);
    if (v19)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v19)
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v21;
      v13 = v22;
      goto LABEL_23;
    }

LABEL_17:
    v11 = v18;
    v13 = v19;

LABEL_23:
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

__C::_NSRange __swiftcall _NSSwiftCalendar.minimumRange(of:)(NSCalendarUnit of)
{
  _fromNSCalendarUnit(_:)(of, &v15);
  v2 = v15;
  if (v15 == 19 || (v3 = *(v1 + OBJC_IVAR____NSSwiftCalendar__lock), os_unfair_lock_lock((v3 + 32)), v4 = *(v3 + 24), swift_unknownObjectRetain(), os_unfair_lock_unlock((v3 + 32)), ObjectType = swift_getObjectType(), v14 = v2, v6 = (*(v4 + 128))(&v14, ObjectType, v4), v8 = v7, v10 = v9, v11 = swift_unknownObjectRelease(), (v10 & 1) != 0))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v8 - v6;
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
    }

    else
    {
      v11 = v6;
    }
  }

  result.length = v12;
  result.location = v11;
  return result;
}

uint64_t _NSSwiftCalendar.range(of:start:interval:for:)(uint64_t a1, void *a2, double *a3, double *a4)
{
  v7 = *a4;
  _fromNSCalendarUnit(_:)(a1, v18);
  v8 = LOBYTE(v18[0]);
  if (LOBYTE(v18[0]) == 19)
  {
    return 0;
  }

  v9 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v9 + 32));
  v10 = *(v9 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 32));
  v17 = v8;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v11 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v11 = v7;
  }

  v12 = *&static Date.validCalendarRange >= v11 ? *&static Date.validCalendarRange : v11;
  ObjectType = swift_getObjectType();
  v16 = v12;
  (*(v10 + 160))(v18, &v17, &v16, ObjectType, v10);
  swift_unknownObjectRelease();
  if (v19)
  {
    return 0;
  }

  v15 = v18[1];
  if (a2)
  {
    *a2 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  if (a3)
  {
    *a3 = v15;
  }

  return 1;
}

uint64_t _NSSwiftCalendar.nextWeekendStart(_:interval:options:after:)(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v8 + 32));
  *&startingAfter[0]._time = *(v8 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v8 + 32));
  v14 = *&startingAfter[0]._time;
  v13 = v7;
  Calendar.nextWeekend(startingAfter:direction:)(startingAfter[0], &v13);
  swift_unknownObjectRelease();
  v9 = v17;
  if ((v17 & 1) == 0)
  {
    v10 = v16;
    if (a1)
    {
      *a1 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
    }

    if (a2)
    {
      *a2 = v10;
    }
  }

  return v9 ^ 1u;
}

uint64_t _NSSwiftCalendar.date(_:matchesComponents:)(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(__dst, a2, 0x11BuLL);
  v4 = *(v2 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v4 + 32));
  v6 = *(v4 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 32));
  v9 = v6;
  v8 = v3;
  LOBYTE(v4) = Calendar.date(_:matchesComponents:)(&v8, __dst);
  swift_unknownObjectRelease();
  return v4 & 1;
}

void *_NSSwiftCalendar.components(_:from:to:options:)@<X0>(int a1@<W0>, const void *a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, a2, 0x11BuLL);
  memcpy(v12, a3, 0x11BuLL);
  v8 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v8 + 32));
  v11 = *(v8 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v8 + 32));
  v14 = v11;
  v9 = _fromNSCalendarUnits(_:)(a1);
  Calendar.dateComponents(_:from:to:)(v9, __dst, v12, __src);

  swift_unknownObjectRelease();
  if ((a1 & 0x100) != 0)
  {
    __src[28] = __src[32];
    LOBYTE(__src[29]) = __src[33];
  }

  return memcpy(a4, __src, 0x11BuLL);
}

uint64_t _NSSwiftCalendar.getEra(_:year:month:day:from:)(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = *(v5 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v11 + 32));
  v17 = *(v11 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v11 + 32));
  v20 = v17;
  v19 = 15;
  v18 = v10;
  Calendar._dateComponents(_:from:)(&v19, &v18, v21);
  swift_unknownObjectRelease();
  if (a1)
  {
    v12 = v22;
    if (v23)
    {
      v12 = 0;
    }

    *a1 = v12;
  }

  if (a2)
  {
    v13 = v24;
    if (v25)
    {
      v13 = 0;
    }

    *a2 = v13;
  }

  if (a3)
  {
    v14 = v26;
    if (v27)
    {
      v14 = 0;
    }

    *a3 = v14;
  }

  if (a4)
  {
    v15 = v28;
    if (v29)
    {
      v15 = 0;
    }

    *a4 = v15;
  }

  return outlined destroy of DateComponents(v21);
}

uint64_t _NSSwiftCalendar.getEra(_:yearForWeekOfYear:weekOfYear:weekday:from:)(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = *(v5 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v11 + 32));
  v17 = *(v11 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v11 + 32));
  v20 = v17;
  v19 = 6273;
  v18 = v10;
  Calendar._dateComponents(_:from:)(&v19, &v18, v21);
  swift_unknownObjectRelease();
  if (a1)
  {
    v12 = v22;
    if (v23)
    {
      v12 = 0;
    }

    *a1 = v12;
  }

  if (a2)
  {
    v13 = v28;
    if (v29)
    {
      v13 = 0;
    }

    *a2 = v13;
  }

  if (a3)
  {
    v14 = v26;
    if (v27)
    {
      v14 = 0;
    }

    *a3 = v14;
  }

  if (a4)
  {
    v15 = v24;
    if (v25)
    {
      v15 = 0;
    }

    *a4 = v15;
  }

  return outlined destroy of DateComponents(v21);
}

uint64_t _NSSwiftCalendar.range(ofWeekendStart:interval:containing:)(void *a1, uint64_t *a2, double *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v7 = *(v3 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v7 + 32));
  *&startingAfter[0]._time = *(v7 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 32));
  v14 = *&startingAfter[0]._time;
  v13 = v6;
  Calendar.nextWeekend(startingAfter:direction:)(startingAfter[0], &v13);
  swift_unknownObjectRelease();
  if (v16)
  {
    return 0;
  }

  tv_sec = __tp.tv_sec;
  os_unfair_lock_lock((v7 + 32));
  *&startingAftera[0]._time = *(v7 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 32));
  v14 = *&startingAftera[0]._time;
  v13 = *&tv_sec;
  Calendar.nextWeekend(startingAfter:direction:)(startingAftera[0], &v13);
  swift_unknownObjectRelease();
  if (v16)
  {
    return 0;
  }

  result = 0;
  if (v6 >= *&__tp.tv_sec)
  {
    tv_nsec = __tp.tv_nsec;
    if (v6 < *&__tp.tv_nsec + *&__tp.tv_sec)
    {
      if (a1)
      {
        *a1 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
      }

      if (a2)
      {
        *a2 = tv_nsec;
      }

      return 1;
    }
  }

  return result;
}

Foundation::Date_optional __swiftcall _NSSwiftCalendar.nextDate(after:matchingHour:minute:second:options:)(Foundation::Date after, Swift::Int matchingHour, Swift::Int minute, Swift::Int second, NSCalendarOptions options)
{
  v8 = v5;
  v26 = v6;
  if ((v5 & 0x400) != 0)
  {
    v12 = 0;
  }

  else if ((v5 & 0x200) != 0)
  {
    v12 = 1;
  }

  else if ((v5 & 0x100) != 0)
  {
    v12 = 2;
  }

  else if ((v5 & 2) != 0)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = *matchingHour;
  v14 = (v5 & 0x3000) == 0x2000;
  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[28] = 0;
  LOBYTE(__src[29]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[33]) = 1;
  __src[32] = 0;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  *(&__src[35] + 1) = 514;
  memset(__src, 0, 40);
  __dst[0] = 0;
  __dst[1] = 0;
  DateComponents.timeZone.setter(__dst);
  __src[4] = 0;
  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  if (minute == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = minute;
  }

  __src[14] = v15;
  LOBYTE(__src[15]) = minute == 0x7FFFFFFFFFFFFFFFLL;
  if (second == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = second;
  }

  __src[16] = v16;
  LOBYTE(__src[17]) = second == 0x7FFFFFFFFFFFFFFFLL;
  if (options == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = options;
  }

  __src[18] = v17;
  LOBYTE(__src[19]) = options == 0x7FFFFFFFFFFFFFFFLL;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[33]) = 1;
  __src[32] = 0;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  memcpy(__dst, __src, 0x11BuLL);
  v18 = *(v7 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v18 + 32));
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v18 + 32));
  memcpy(v38, __src, 0x11BuLL);
  v35 = v19;
  v36 = v20;
  if (!DateComponents._validate(for:)(&v35))
  {
    goto LABEL_24;
  }

  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  if (v13 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v13)
  {
    v23 = 101;
    v25 = v13;
    while (1)
    {
      v29[0] = v19;
      v29[1] = v20;
      v34 = *&v13;
      memcpy(v38, __dst, 0x11BuLL);
      v33 = v12;
      v32 = v14;
      v31 = (v8 & 4) != 0;
      v30 = v25;
      v27 = 0;
      LOBYTE(v28) = 1;
      Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v34, v38, &v33, &v32, &v31, &v30, &v27, &v35);
      if (v36 != 2)
      {
        break;
      }

      v25 = v37;
      if (!--v23)
      {
        *v29 = v13;
        v35 = v19;
        v36 = v20;
        memcpy(v38, __dst, 0x11BuLL);
        LOBYTE(v27) = (v8 & 4) != 0;
        LOBYTE(v34) = v12;
        LOBYTE(v30) = v14;
        _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v29, &v35, v38, &v27, &v34, &v30);
        outlined destroy of DateComponents(__dst);
        v21 = swift_unknownObjectRelease();
        goto LABEL_25;
      }
    }

    v23 = v35;
    swift_unknownObjectRelease();
    v21 = outlined destroy of DateComponents(__dst);
    v24 = 0;
  }

  else
  {
LABEL_24:
    swift_unknownObjectRelease();
    v21 = outlined destroy of DateComponents(__dst);
    v23 = 0;
LABEL_25:
    v24 = 1;
  }

  *v26 = v23;
  *(v26 + 8) = v24;
  result.value = *&v22;
  result.is_nil = v21;
  return result;
}

Foundation::Date_optional __swiftcall _NSSwiftCalendar.nextDate(after:matching:value:options:)(Foundation::Date after, NSCalendarUnit matching, Swift::Int value, NSCalendarOptions options)
{
  v7 = v4;
  v9 = v5;
  v10 = *matching;
  if ((v4 & 2) != 0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  if ((v4 & 0x100) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if ((v4 & 0x200) != 0)
  {
    v12 = 1;
  }

  if ((v4 & 0x400) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = (v4 & 0x3000) == 0x2000;
  v15 = _fromNSCalendarUnit(_:)(value, __src);
  v17 = __src[0];
  if (LOBYTE(__src[0]) == 19)
  {
    *v9 = 0;
    *(v9 + 8) = 1;
  }

  else
  {
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    __src[14] = 0;
    LOBYTE(__src[15]) = 1;
    __src[16] = 0;
    LOBYTE(__src[17]) = 1;
    __src[18] = 0;
    LOBYTE(__src[19]) = 1;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[28] = 0;
    LOBYTE(__src[29]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    *(&__src[35] + 1) = 514;
    memset(__src, 0, 40);
    __dst[0] = 0;
    __dst[1] = 0;
    DateComponents.timeZone.setter(__dst);
    __src[4] = 0;
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[14] = 0;
    LOBYTE(__src[15]) = 1;
    __src[16] = 0;
    LOBYTE(__src[17]) = 1;
    __src[18] = 0;
    LOBYTE(__src[19]) = 1;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    LOBYTE(__dst[0]) = v17;
    v40.value = options;
    v40.is_nil = 0;
    DateComponents.setValue(_:for:)(v40, __dst);
    v18 = *(v6 + OBJC_IVAR____NSSwiftCalendar__lock);
    os_unfair_lock_lock((v18 + 32));
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v18 + 32));
    memcpy(__dst, __src, 0x11BuLL);
    memcpy(v37, __src, 0x11BuLL);
    v34 = v19;
    v35 = v20;
    if (!DateComponents._validate(for:)(&v34))
    {
      goto LABEL_23;
    }

    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    if (v10 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v10)
    {
      v21 = (v7 >> 2) & 1;
      v22 = 101;
      v23 = v10;
      while (1)
      {
        v28[0] = v19;
        v28[1] = v20;
        v33 = *&v10;
        memcpy(v37, __dst, 0x11BuLL);
        v32 = v13;
        v31 = v14;
        v30 = v21;
        v29 = v23;
        v26 = 0;
        LOBYTE(v27) = 1;
        Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v33, v37, &v32, &v31, &v30, &v29, &v26, &v34);
        if (v35 != 2)
        {
          break;
        }

        v23 = v36;
        if (!--v22)
        {
          *v28 = v10;
          v34 = v19;
          v35 = v20;
          memcpy(v37, __dst, 0x11BuLL);
          LOBYTE(v26) = v21;
          LOBYTE(v33) = v13;
          LOBYTE(v29) = v14;
          _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v28, &v34, v37, &v26, &v33, &v29);
          goto LABEL_23;
        }
      }

      v24 = v34;
      swift_unknownObjectRelease();
      v25 = 0;
    }

    else
    {
LABEL_23:
      swift_unknownObjectRelease();
      v24 = 0;
      v25 = 1;
    }

    *v9 = v24;
    *(v9 + 8) = v25;
    memcpy(v37, __src, 0x11BuLL);
    v15 = outlined destroy of DateComponents(v37);
  }

  result.value = *&v16;
  result.is_nil = v15;
  return result;
}

Foundation::Date_optional __swiftcall _NSSwiftCalendar.date(bySettingUnit:value:of:options:)(NSCalendarUnit bySettingUnit, Swift::Int value, Foundation::Date of, NSCalendarOptions options)
{
  v7 = v4;
  v9 = v5;
  v10 = *options;
  v11 = 1;
  if ((v4 & 2) != 0)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  if ((v4 & 0x200) != 0)
  {
    v13 = 1;
  }

  if ((v4 & 0x400) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = (v4 & 0x3000) == 0x2000;
  v16 = _fromNSCalendarUnit(_:)(bySettingUnit, __src);
  v18 = __src[0];
  if (LOBYTE(__src[0]) == 19)
  {
    *v9 = 0;
LABEL_27:
    *(v9 + 8) = v11;
    goto LABEL_29;
  }

  v19 = *(v6 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v19 + 32));
  *&from[0]._time = *(v19 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v19 + 32));
  __src[0] = *&from[0]._time;
  v39[0] = v18;
  *__dst = v10;
  v20 = Calendar.component(_:from:)(v39, from[0]);
  v16 = swift_unknownObjectRelease();
  if (v20 != value)
  {
    BYTE8(__src[2]) = 1;
    *&__src[3] = 0;
    BYTE8(__src[3]) = 1;
    *&__src[4] = 0;
    BYTE8(__src[4]) = 1;
    *&__src[5] = 0;
    BYTE8(__src[5]) = 1;
    *&__src[6] = 0;
    BYTE8(__src[6]) = 1;
    *&__src[7] = 0;
    BYTE8(__src[7]) = 1;
    *&__src[8] = 0;
    BYTE8(__src[8]) = 1;
    *&__src[9] = 0;
    BYTE8(__src[9]) = 1;
    *&__src[10] = 0;
    BYTE8(__src[10]) = 1;
    *&__src[11] = 0;
    BYTE8(__src[11]) = 1;
    *&__src[12] = 0;
    BYTE8(__src[12]) = 1;
    *&__src[13] = 0;
    BYTE8(__src[13]) = 1;
    *&__src[14] = 0;
    BYTE8(__src[14]) = 1;
    *&__src[15] = 0;
    BYTE8(__src[15]) = 1;
    BYTE8(__src[16]) = 1;
    *&__src[16] = 0;
    *&__src[17] = 0;
    BYTE8(__src[17]) = 1;
    *(&__src[17] + 9) = 514;
    memset(__src, 0, 40);
    __dst[0] = 0;
    __dst[1] = 0;
    DateComponents.timeZone.setter(__dst);
    *&__src[2] = 0;
    BYTE8(__src[2]) = 1;
    *&__src[3] = 0;
    BYTE8(__src[3]) = 1;
    *&__src[4] = 0;
    BYTE8(__src[4]) = 1;
    *&__src[5] = 0;
    BYTE8(__src[5]) = 1;
    *&__src[7] = 0;
    BYTE8(__src[7]) = 1;
    *&__src[8] = 0;
    BYTE8(__src[8]) = 1;
    *&__src[9] = 0;
    BYTE8(__src[9]) = 1;
    *&__src[10] = 0;
    BYTE8(__src[10]) = 1;
    *&__src[11] = 0;
    BYTE8(__src[11]) = 1;
    *&__src[12] = 0;
    BYTE8(__src[12]) = 1;
    *&__src[13] = 0;
    BYTE8(__src[13]) = 1;
    *&__src[15] = 0;
    BYTE8(__src[15]) = 1;
    BYTE8(__src[16]) = 1;
    *&__src[16] = 0;
    *&__src[17] = 0;
    BYTE8(__src[17]) = 1;
    *&__src[6] = 0;
    BYTE8(__src[6]) = 1;
    LOBYTE(__dst[0]) = v18;
    v42.value = value;
    v42.is_nil = 0;
    DateComponents.setValue(_:for:)(v42, __dst);
    os_unfair_lock_lock((v19 + 32));
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v19 + 32));
    memcpy(__dst, __src, 0x11BuLL);
    memcpy(v39, __src, 0x11BuLL);
    v36 = v21;
    v37 = v22;
    if (!DateComponents._validate(for:)(&v36))
    {
      goto LABEL_25;
    }

    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    if (v10 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v10)
    {
      v23 = (v7 >> 2) & 1;
      v24 = 101;
      v25 = v10;
      while (1)
      {
        v30[0] = v21;
        v30[1] = v22;
        v35 = *&v10;
        memcpy(v39, __dst, 0x11BuLL);
        v34 = v14;
        v33 = v15;
        v32 = v23;
        v31 = v25;
        v28 = 0;
        LOBYTE(v29) = 1;
        Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v35, v39, &v34, &v33, &v32, &v31, &v28, &v36);
        if (v37 != 2)
        {
          break;
        }

        v25 = v38;
        if (!--v24)
        {
          *v30 = v10;
          v36 = v21;
          v37 = v22;
          memcpy(v39, __dst, 0x11BuLL);
          LOBYTE(v28) = v23;
          LOBYTE(v35) = v14;
          LOBYTE(v31) = v15;
          _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v30, &v36, v39, &v28, &v35, &v31);
          goto LABEL_25;
        }
      }

      v26 = v36;
      swift_unknownObjectRelease();
      v11 = 0;
    }

    else
    {
LABEL_25:
      swift_unknownObjectRelease();
      v26 = 0;
      v11 = 1;
    }

    memcpy(v39, __src, 0x11BuLL);
    v16 = outlined destroy of DateComponents(v39);
    *v9 = v26;
    goto LABEL_27;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
LABEL_29:
  result.value = *&v17;
  result.is_nil = v16;
  return result;
}

Foundation::Date_optional __swiftcall _NSSwiftCalendar.date(era:year:month:day:hour:minute:second:nanosecond:)(Swift::Int era, Swift::Int year, Swift::Int month, Swift::Int day, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int nanosecond)
{
  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[28] = 0;
  LOBYTE(__src[29]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  *(&__src[35] + 1) = 514;
  memset(__src, 0, 40);
  __dst[0] = 0;
  __dst[1] = 0;
  DateComponents.timeZone.setter(__dst);
  if (era == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = era;
  }

  __src[4] = v16;
  LOBYTE(__src[5]) = era == 0x7FFFFFFFFFFFFFFFLL;
  if (year == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = year;
  }

  __src[6] = v17;
  LOBYTE(__src[7]) = year == 0x7FFFFFFFFFFFFFFFLL;
  if (month == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
  }

  else
  {
    v18 = month;
  }

  __src[8] = v18;
  LOBYTE(__src[9]) = month == 0x7FFFFFFFFFFFFFFFLL;
  if (day == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v19 = day;
  }

  __src[10] = v19;
  LOBYTE(__src[11]) = day == 0x7FFFFFFFFFFFFFFFLL;
  if (hour == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    v20 = hour;
  }

  __src[14] = v20;
  LOBYTE(__src[15]) = hour == 0x7FFFFFFFFFFFFFFFLL;
  if (minute == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v21 = minute;
  }

  __src[16] = v21;
  LOBYTE(__src[17]) = minute == 0x7FFFFFFFFFFFFFFFLL;
  if (second == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0;
  }

  else
  {
    v22 = second;
  }

  __src[18] = v22;
  LOBYTE(__src[19]) = second == 0x7FFFFFFFFFFFFFFFLL;
  if (nanosecond == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 0;
  }

  else
  {
    v23 = nanosecond;
  }

  __src[20] = v23;
  LOBYTE(__src[21]) = nanosecond == 0x7FFFFFFFFFFFFFFFLL;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  memcpy(__dst, __src, 0x11BuLL);
  v24 = *(v29 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v24 + 32));
  v25 = *(v24 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v24 + 32));
  ObjectType = swift_getObjectType();
  memcpy(v30, __src, 0x11BuLL);
  (*(v25 + 176))(v30, ObjectType, v25);
  outlined destroy of DateComponents(__dst);
  v27 = swift_unknownObjectRelease();
  result.value = *&v28;
  result.is_nil = v27;
  return result;
}

Foundation::Date_optional __swiftcall _NSSwiftCalendar.date(era:yearForWeekOfYear:weekOfYear:weekday:hour:minute:second:nanosecond:)(Swift::Int era, Swift::Int yearForWeekOfYear, Swift::Int weekOfYear, Swift::Int weekday, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int nanosecond)
{
  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[28] = 0;
  LOBYTE(__src[29]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  *(&__src[35] + 1) = 514;
  memset(__src, 0, 40);
  __dst[0] = 0;
  __dst[1] = 0;
  DateComponents.timeZone.setter(__dst);
  if (era == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = era;
  }

  __src[4] = v16;
  LOBYTE(__src[5]) = era == 0x7FFFFFFFFFFFFFFFLL;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  if (hour == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = hour;
  }

  __src[14] = v17;
  LOBYTE(__src[15]) = hour == 0x7FFFFFFFFFFFFFFFLL;
  if (minute == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
  }

  else
  {
    v18 = minute;
  }

  __src[16] = v18;
  LOBYTE(__src[17]) = minute == 0x7FFFFFFFFFFFFFFFLL;
  if (second == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v19 = second;
  }

  __src[18] = v19;
  LOBYTE(__src[19]) = second == 0x7FFFFFFFFFFFFFFFLL;
  if (nanosecond == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    v20 = nanosecond;
  }

  __src[20] = v20;
  LOBYTE(__src[21]) = nanosecond == 0x7FFFFFFFFFFFFFFFLL;
  if (weekday == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v21 = weekday;
  }

  __src[22] = v21;
  LOBYTE(__src[23]) = weekday == 0x7FFFFFFFFFFFFFFFLL;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  if (weekOfYear == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0;
  }

  else
  {
    v22 = weekOfYear;
  }

  __src[32] = v22;
  LOBYTE(__src[33]) = weekOfYear == 0x7FFFFFFFFFFFFFFFLL;
  if (yearForWeekOfYear == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 0;
  }

  else
  {
    v23 = yearForWeekOfYear;
  }

  __src[34] = v23;
  LOBYTE(__src[35]) = yearForWeekOfYear == 0x7FFFFFFFFFFFFFFFLL;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  memcpy(__dst, __src, 0x11BuLL);
  v24 = *(v29 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v24 + 32));
  v25 = *(v24 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v24 + 32));
  ObjectType = swift_getObjectType();
  memcpy(v30, __src, 0x11BuLL);
  (*(v25 + 176))(v30, ObjectType, v25);
  outlined destroy of DateComponents(__dst);
  v27 = swift_unknownObjectRelease();
  result.value = *&v28;
  result.is_nil = v27;
  return result;
}

id @objc _NSSwiftCalendar.date(era:year:month:day:hour:minute:second:nanosecond:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(double *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = a1;
  a11(&v20, a3, a4, a5, a6, a7, a8, a9, a10);

  if (v21)
  {
    v18 = 0;
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  }

  return v18;
}

Swift::Bool __swiftcall _NSSwiftCalendar.isDate(_:equalTo:toUnitGranularity:)(Foundation::Date _, Foundation::Date equalTo, NSCalendarUnit toUnitGranularity)
{
  v5 = *toUnitGranularity;
  _fromNSCalendarUnit(_:)(v3, &v12);
  if (v12 == 19)
  {
    return 0;
  }

  v7 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v7 + 32));
  *&_a[0]._time = *(v7 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 32));
  v12 = *&_a[0]._time;
  v11 = v5;
  v9 = Calendar.compare(_:to:toGranularity:)(_a[0], v8, &v11);
  swift_unknownObjectRelease();
  return v9 == NSOrderedSame;
}

id _NSSwiftCalendar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _NSSwiftCalendar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized _NSSwiftCalendar._enumerateDatesStarting(after:matching:options:using:)(double *a1, const void *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  if ((a3 & 2) != 0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  if ((a3 & 0x100) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10;
  }

  if ((a3 & 0x200) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if ((a3 & 0x400) != 0)
  {
    v12 = 0;
  }

  v27 = v12;
  v13 = (a3 & 0x3000) == 0x2000;
  v14 = *(a4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v14 + 32));
  memcpy(v39, a2, 0x11BuLL);
  v36 = *&v15;
  v37 = v16;
  if (DateComponents._validate(for:)(&v36))
  {
    if (one-time initialization token for validCalendarRange != -1)
    {
      goto LABEL_27;
    }

    while (v9 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v9)
    {
      v18 = 0;
      v26 = (a3 >> 2) & 1;
      v19 = 0.0;
      a3 = 1;
      v20 = v9;
      do
      {
        v30[0] = v15;
        v30[1] = v16;
        v35 = *&v9;
        memcpy(v39, a2, 0x11BuLL);
        v34 = v27;
        v33 = v13;
        v32 = v26;
        v31 = v20;
        v28 = v19;
        LOBYTE(v29) = a3 & 1;
        Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v35, v39, &v34, &v33, &v32, &v31, &v28, &v36);
        v22 = v37;
        v20 = v38;
        if (v37 == 2)
        {
          if (v18 >= 0x64)
          {
            *v30 = v9;
            v36 = *&v15;
            v37 = v16;
            memcpy(v39, __dst, 0x11BuLL);
            LOBYTE(v28) = v26;
            LOBYTE(v35) = v27;
            LOBYTE(v31) = v13;
            _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v30, &v36, v39, &v28, &v35, &v31);
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          v19 = v36;
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
          (*(a5 + 16))(a5, v24, v22 & 1, v23);

          v25 = *v23;
          MEMORY[0x1865D2690](v23, -1, -1);
          a3 = 0;
          if (v25)
          {
            goto LABEL_16;
          }
        }
      }

      while (!__OFADD__(v18++, 1));
      __break(1u);
LABEL_27:
      swift_once();
    }
  }

LABEL_16:

  return swift_unknownObjectRelease();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_AL6OptionOs5NeverOTg5015_s10Foundation4e19V27AnchoredRelativegh75V12usableFields33_C066C46DD7A4458BFE9B19CA47B7E7FELLSayAC010ComponentseF0V5i2V6J59OGyFAmKcfu_33_7a8e0f6e267ccb9df6f8247fecae9d92AkMTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double Date.AnchoredRelativeFormatStyle.anchor.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = result;
  return result;
}

double Date.AnchoredRelativeFormatStyle.anchor.setter(double *a1)
{
  result = *a1;
  *(v1 + 48) = *a1;
  return result;
}

uint64_t (*Date.AnchoredRelativeFormatStyle.presentation.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return Date.AnchoredRelativeFormatStyle.presentation.modify;
}

_BYTE *(*Date.AnchoredRelativeFormatStyle.unitsStyle.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return Date.AnchoredRelativeFormatStyle.unitsStyle.modify;
}

_BYTE *(*Date.AnchoredRelativeFormatStyle.capitalizationContext.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 2);
  return Date.AnchoredRelativeFormatStyle.capitalizationContext.modify;
}

__n128 Date.AnchoredRelativeFormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t (*Date.AnchoredRelativeFormatStyle.locale.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 8);
  swift_unknownObjectRetain();
  return Date.AnchoredRelativeFormatStyle.locale.modify;
}

uint64_t Date.AnchoredRelativeFormatStyle.locale.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v2 + 8) = v4;
    *(v2 + 16) = v3;

    return swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    *(v2 + 8) = v4;
    *(v2 + 16) = v3;
  }

  return result;
}

__n128 Date.AnchoredRelativeFormatStyle.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

uint64_t (*Date.AnchoredRelativeFormatStyle.calendar.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  swift_unknownObjectRetain();
  return Date.AnchoredRelativeFormatStyle.calendar.modify;
}

uint64_t Date.AnchoredRelativeFormatStyle.calendar.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v2 + 24) = v4;
    *(v2 + 32) = v3;

    return swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    *(v2 + 24) = v4;
    *(v2 + 32) = v3;
  }

  return result;
}

uint64_t Date.AnchoredRelativeFormatStyle.allowedFields.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t (*Date.AnchoredRelativeFormatStyle.allowedFields.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return Date.AnchoredRelativeFormatStyle.allowedFields.modify;
}

uint64_t Date.AnchoredRelativeFormatStyle.allowedFields.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 40) = v3;
  }

  else
  {

    *(v2 + 40) = v3;
  }

  return result;
}

__n128 Date.AnchoredRelativeFormatStyle.init(anchor:presentation:unitsStyle:locale:calendar:capitalizationContext:)@<Q0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, __n128 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v34 = *a5;
  v35 = *a4;
  v10 = *a6;
  *(a7 + 48) = *a1;
  v37 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
  v11 = v37;
  v12 = byte_1EEED0E60;
  v14 = *(v37 + 16);
  v13 = *(v37 + 24);
  v15 = v13 >> 1;
  v16 = v14 + 1;
  if (v13 >> 1 <= v14)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    v11 = v37;
    v13 = *(v37 + 24);
    v15 = v13 >> 1;
  }

  *(v11 + 16) = v16;
  *(v11 + v14 + 32) = v12;
  v17 = byte_1EEED0E61;
  v37 = v11;
  v18 = v14 + 2;
  if (v15 <= v16)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 2, 1);
    v11 = v37;
    v13 = *(v37 + 24);
    v15 = v13 >> 1;
  }

  *(v11 + 16) = v18;
  *(v11 + v16 + 32) = v17;
  v19 = byte_1EEED0E62;
  v37 = v11;
  v20 = v14 + 3;
  if (v15 <= v18)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 3, 1);
    v11 = v37;
    v13 = *(v37 + 24);
    v15 = v13 >> 1;
  }

  *(v11 + 16) = v20;
  *(v11 + v18 + 32) = v19;
  v21 = byte_1EEED0E63;
  v37 = v11;
  v22 = v14 + 4;
  if (v15 <= v20)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 4, 1);
    v11 = v37;
    v13 = *(v37 + 24);
    v15 = v13 >> 1;
  }

  *(v11 + 16) = v22;
  *(v11 + v20 + 32) = v21;
  v23 = byte_1EEED0E64;
  v37 = v11;
  v24 = v14 + 5;
  if (v15 <= v22)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 5, 1);
    v11 = v37;
    v13 = *(v37 + 24);
    v15 = v13 >> 1;
  }

  *(v11 + 16) = v24;
  *(v11 + v22 + 32) = v23;
  v25 = byte_1EEED0E65;
  v37 = v11;
  v26 = v14 + 6;
  if (v15 <= v24)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 6, 1);
    v11 = v37;
    v13 = *(v37 + 24);
    v15 = v13 >> 1;
  }

  *(v11 + 16) = v26;
  *(v11 + v24 + 32) = v25;
  v27 = byte_1EEED0E66;
  v37 = v11;
  if (v15 <= v26)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 7, 1);
    v11 = v37;
  }

  *(v11 + 16) = v14 + 7;
  *(v11 + v26 + 32) = v27;
  v28 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field();
  v29 = MEMORY[0x1865CB700](v14 + 7, &type metadata for Date.ComponentsFormatStyle.Field, v28);
  v37 = v29;
  v30 = *(v11 + 16);
  if (v30)
  {
    v31 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(&v36, *(v11 + v31++));
      --v30;
    }

    while (v30);

    v32 = v37;
  }

  else
  {
    v32 = v29;
  }

  *a7 = v8;
  *(a7 + 1) = v9;
  *(a7 + 2) = v10;
  result = v34;
  *(a7 + 8) = v35;
  *(a7 + 24) = v34;
  *(a7 + 40) = v32;
  return result;
}

__n128 Date.AnchoredRelativeFormatStyle.init(anchor:allowedFields:presentation:unitsStyle:locale:calendar:capitalizationContext:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, _OWORD *a5@<X4>, __n128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a7;
  *(a8 + 48) = *a1;
  *a8 = v8;
  *(a8 + 1) = v9;
  *(a8 + 2) = v10;
  *(a8 + 8) = *a5;
  result = *a6;
  *(a8 + 24) = *a6;
  *(a8 + 40) = a2;
  return result;
}

Swift::String __swiftcall Date.AnchoredRelativeFormatStyle.format(_:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = v2[1];
  v88 = *v2;
  v89 = v4;
  v6 = *v2;
  v5 = v2[1];
  v90 = v2[2];
  v7 = *(v2 + 6);
  v84 = v6;
  v85 = v5;
  v86 = v2[2];
  v82 = v3;
  v83 = v7;
  v8 = v88;
  outlined init with copy of Date.RelativeFormatStyle(&v88, v81);
  Date.RelativeFormatStyle._largestNonZeroComponent(_:reference:adjustComponent:)(&v83, &v82, v87);
  if (LOBYTE(v87[0]) != 19)
  {
    v78 = LOBYTE(v87[0]);
    v77 = v8;
    v76 = *&v87[1];
    v11 = BYTE1(v88);
    v12 = v89;
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 64))(ObjectType, v12);
    if (v11 > 1)
    {
      v17 = 0;
      if (v11 == 2)
      {
        v16 = 1;
        v18 = 1;
      }

      else
      {
        v18 = 1;
        v16 = 2;
      }
    }

    else
    {
      v16 = 0;
      if (v11)
      {
        v18 = 0;
        v17 = 5;
      }

      else
      {
        v17 = 0;
        v18 = 1;
      }
    }

    v79 = v14;
    v19 = dword_18121F794[SBYTE2(v88)];
    if (one-time initialization token for cache != -1)
    {
      v40 = v15;
      v14 = swift_once();
      v15 = v40;
    }

    v20 = static ICURelativeDateFormatter.cache;
    v21 = qword_1EA822118;
    *&v84 = v79;
    *(&v84 + 1) = v15;
    v80 = v15;
    LODWORD(v85) = v17;
    BYTE4(v85) = v18;
    *(&v85 + 1) = __PAIR64__(v19, v16);
    MEMORY[0x1EEE9AC00](v14);
    os_unfair_lock_lock((v21 + 24));
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v21 + 16, v81);
    os_unfair_lock_unlock((v21 + 24));
    v22 = v81[0];
    if (v81[0] != 1)
    {
      goto LABEL_43;
    }

    type metadata accessor for ICURelativeDateFormatter();
    swift_allocObject();

    v75 = v18;
    LOBYTE(v81[0]) = v18;
    v24 = v23;
    v73 = v17;
    v74 = v16 | (v19 << 32);
    v22 = ICURelativeDateFormatter.init(signature:)(v79, v23, v17 | (LOBYTE(v81[0]) << 32));
    os_unfair_lock_lock((v21 + 24));
    v25 = v79;
    if (v20 >= *(*(v21 + 16) + 16))
    {
    }

    else
    {
      *(v21 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81[0] = *(v21 + 16);
    v27 = v81[0];
    *(v21 + 16) = 0x8000000000000000;
    LOBYTE(v87[0]) = v75;
    v28 = v73;
    v29 = v74;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v24, v73 | (v75 << 32), v74);
    v32 = *(v27 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      __break(1u);
    }

    else
    {
      if (*(v27 + 24) < v35)
      {
        v36 = v31;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
        v37 = v81[0];
        LOBYTE(v87[0]) = v75;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v24, v73 | (v75 << 32), v74);
        if ((v36 & 1) != (v38 & 1))
        {
LABEL_57:
          v68 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_58;
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_23;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v27;
        if ((v31 & 1) == 0)
        {
LABEL_41:
          LOBYTE(v87[0]) = v75;
          specialized _NativeDictionary._insert(at:key:value:)(v30, v25, v24, v28 | (v75 << 32), v29, v22, v37);
          goto LABEL_42;
        }

LABEL_23:
        v39 = v30;

        *(*(v37 + 56) + 8 * v39) = v22;

LABEL_42:
        *(v21 + 16) = v37;

        os_unfair_lock_unlock((v21 + 24));

        outlined consume of ICUNumberFormatter??(1);
LABEL_43:
        if (!v22)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (one-time initialization token for componentsToURelativeDateUnit != -1)
        {
          swift_once();
        }

        v62 = static ICURelativeDateFormatter.componentsToURelativeDateUnit;
        if (*(static ICURelativeDateFormatter.componentsToURelativeDateUnit + 16) && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(v78), (v64 & 1) != 0))
        {
          v65 = *(*(v62 + 56) + 4 * v63);

          if (v77)
          {
            v66 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v22, v76, v65);
          }

          else
          {
            v66 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v22, v76, v65);
          }

          v9 = v66;
          v10 = v67;

          if (v10)
          {
            goto LABEL_52;
          }
        }

        else
        {
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v71 = v31;
    v72 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICURelativeDateFormatterC9SignatureVAESgGMd);
    v41 = static _DictionaryStorage.copy(original:)();
    v37 = v41;
    if (*(v27 + 16))
    {
      v42 = (v41 + 64);
      v43 = v27 + 64;
      v44 = ((1 << *(v37 + 32)) + 63) >> 6;
      if (v37 != v27 || v42 >= v43 + 8 * v44)
      {
        memmove(v42, (v27 + 64), 8 * v44);
      }

      v45 = 0;
      *(v37 + 16) = *(v27 + 16);
      v46 = 1 << *(v27 + 32);
      v47 = *(v27 + 64);
      v48 = -1;
      if (v46 < 64)
      {
        v48 = ~(-1 << v46);
      }

      v49 = v48 & v47;
      v50 = (v46 + 63) >> 6;
      if ((v48 & v47) != 0)
      {
        do
        {
          v51 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
LABEL_38:
          v54 = v51 | (v45 << 6);
          v55 = *(v27 + 48) + 32 * v54;
          v56 = *(v55 + 8);
          v57 = *(v55 + 16);
          v58 = *(*(v27 + 56) + 8 * v54);
          v59 = *(v55 + 20);
          v60 = *(v37 + 48) + 32 * v54;
          v61 = *(v55 + 24);
          *v60 = *v55;
          *(v60 + 8) = v56;
          *(v60 + 16) = v57;
          *(v60 + 20) = v59;
          *(v60 + 24) = v61;
          *(*(v37 + 56) + 8 * v54) = v58;
        }

        while (v49);
      }

      v52 = v45;
      v25 = v79;
      v24 = v80;
      while (1)
      {
        v45 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_55;
        }

        if (v45 >= v50)
        {
          break;
        }

        v53 = *(v43 + 8 * v45);
        ++v52;
        if (v53)
        {
          v51 = __clz(__rbit64(v53));
          v49 = (v53 - 1) & v53;
          goto LABEL_38;
        }
      }
    }

    v30 = v72;
    v29 = v74;
    v28 = v73;
    if ((v71 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_52:
  outlined destroy of Date.RelativeFormatStyle(&v88);
  v68 = v9;
  v69 = v10;
LABEL_58:
  result._object = v69;
  result._countAndFlagsBits = v68;
  return result;
}

__n128 Date.AnchoredRelativeFormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v5;
  v12 = *(v2 + 32);
  v6 = v12;
  v13 = *(v2 + 48);
  v7 = v13;
  *a2 = v11[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  outlined init with copy of Date.AnchoredRelativeFormatStyle(v11, v10);
  v9 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v9;
  *(a2 + 8) = v9;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Date.AnchoredRelativeFormatStyle.CodingKeys()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 0x79745372656E6E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.AnchoredRelativeFormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79745372656E6E69 && a2 == 0xEA0000000000656CLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.AnchoredRelativeFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.AnchoredRelativeFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.AnchoredRelativeFormatStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV27AnchoredRelativeFormatStyleV10CodingKeys33_C066C46DD7A4458BFE9B19CA47B7E7FELLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-v6];
  v8 = v1[1];
  v19 = *v1;
  v9 = v1[2];
  v20 = v8;
  v21 = v9;
  v10 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of Date.RelativeFormatStyle(&v19, &v16);
  lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v19;
  v17 = v20;
  v18 = v21;
  v15 = 0;
  lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  outlined destroy of Date.RelativeFormatStyle(v14);
  if (!v2)
  {
    v13 = v10;
    v12[7] = 1;
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Date.AnchoredRelativeFormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 2);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  MEMORY[0x1865CD060](*v1);
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v4);
  ObjectType = swift_getObjectType();
  if (((*(v5 + 48))(ObjectType, v5) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v5 + 64))(ObjectType, v5);
    String.hash(into:)();

    (*(v5 + 464))(&v53, ObjectType, v5);
    v61[6] = v59;
    v62[0] = *v60;
    *(v62 + 12) = *&v60[12];
    v61[2] = v55;
    v61[3] = v56;
    v61[4] = v57;
    v61[5] = v58;
    v61[0] = v53;
    v61[1] = v54;
    if (_s10Foundation17LocalePreferencesVSgWOg(v61) == 1)
    {
      v10 = 0;
      goto LABEL_5;
    }

    v52 = v7;
    v11 = v53;
    v12 = *(&v53 + 1);
    v13 = *(&v54 + 1);
    v14 = *(&v55 + 1);
    v43 = v56;
    v44 = v57;
    v45 = v58;
    v15 = v59;
    v47 = *v60;
    v16 = *&v60[16];
    v49 = v60[24];
    v50 = v60[25];
    v17 = v60[26];
    v51 = v60[27];
    Hasher._combine(_:)(1u);
    if (v11 == 2)
    {
      v18 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v18 = v11 & 1;
    }

    v48 = v16;
    Hasher._combine(_:)(v18);
    if (v12)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v12 + 16));
      v19 = *(v12 + 16);
      if (v19)
      {
        v20 = v12 + 40;
        do
        {

          String.hash(into:)();

          v20 += 16;
          --v19;
        }

        while (v19);
      }

      v46 = v17;
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v46 = v17;
      if (v13)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v7 = v52;
    if (v14)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v21 = v48;
      if (v43)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v43, v22, v23, v24, v25, v26, v27);
        goto LABEL_22;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v21 = v48;
      if (v43)
      {
        goto LABEL_19;
      }
    }

    Hasher._combine(_:)(0);
LABEL_22:
    if (*(&v43 + 1))
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v43 + 1), v28, v29, v30, v31, v32, v33);
      if (v44)
      {
        goto LABEL_24;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v44)
      {
LABEL_24:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
        _CFObject.hash(into:)();
        if (*(&v44 + 1))
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }
    }

    Hasher._combine(_:)(0);
    if (*(&v44 + 1))
    {
LABEL_25:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      v34 = v21;
      if (v45)
      {
LABEL_26:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
        _CFObject.hash(into:)();
        goto LABEL_31;
      }

LABEL_30:
      Hasher._combine(_:)(0);
LABEL_31:
      if (*(&v45 + 1))
      {
        v35 = v51;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
        _CFObject.hash(into:)();
        if (v15)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v35 = v51;
        Hasher._combine(_:)(0);
        if (v15)
        {
LABEL_33:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
          _CFObject.hash(into:)();
          v36 = v35;
          if (*(&v15 + 1))
          {
LABEL_34:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, *(&v15 + 1));
            goto LABEL_38;
          }

LABEL_37:
          Hasher._combine(_:)(0);
LABEL_38:
          if (v47)
          {
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v47);
            v37 = v46;
            if (v34)
            {
              goto LABEL_40;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            v37 = v46;
            if (v34)
            {
LABEL_40:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              if (v49 == 2)
              {
                goto LABEL_41;
              }

              goto LABEL_46;
            }
          }

          Hasher._combine(_:)(0);
          if (v49 == 2)
          {
LABEL_41:
            Hasher._combine(_:)(0);
            if (v50 != 2)
            {
              goto LABEL_42;
            }

            goto LABEL_47;
          }

LABEL_46:
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v49 & 1);
          if (v50 != 2)
          {
LABEL_42:
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v50 & 1);
            if (v37 != 2)
            {
LABEL_43:
              Hasher._combine(_:)(1u);
              v38 = v37 & 1;
LABEL_49:
              Hasher._combine(_:)(v38);
              if (v36 == 2)
              {
                v39 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v39 = v36 & 1;
              }

              Hasher._combine(_:)(v39);
              outlined destroy of TermOfAddress?(&v53, &_s10Foundation17LocalePreferencesVSgMd);
              goto LABEL_53;
            }

LABEL_48:
            v38 = 0;
            goto LABEL_49;
          }

LABEL_47:
          Hasher._combine(_:)(0);
          if (v37 != 2)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }
      }

      Hasher._combine(_:)(0);
      v36 = v35;
      if (*(&v15 + 1))
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

LABEL_29:
    Hasher._combine(_:)(0);
    v34 = v21;
    if (v45)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v10 = 1;
LABEL_5:
  Hasher._combine(_:)(v10);
LABEL_53:
  v40 = swift_getObjectType();
  (*(v6 + 120))(a1, v40, v6);
  specialized Set.hash(into:)(a1, v7);
  v41 = 0.0;
  if (v8 != 0.0)
  {
    v41 = v8;
  }

  return MEMORY[0x1865CD090](*&v41);
}

uint64_t Date.AnchoredRelativeFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV27AnchoredRelativeFormatStyleV10CodingKeys33_C066C46DD7A4458BFE9B19CA47B7E7FELLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v20;
  v24 = v21;
  v25 = v22;
  v17 = 1;
  lazy protocol witness table accessor for type Date and conformance Date();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v9 = v18;
  v10 = v24;
  v13[0] = v23;
  v13[1] = v24;
  v11 = v25;
  v13[2] = v25;
  v14 = v18;
  *a2 = v23;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v14;
  outlined init with copy of Date.AnchoredRelativeFormatStyle(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v15[0] = v23;
  v15[1] = v24;
  v15[2] = v25;
  v16 = v9;
  return outlined destroy of Date.AnchoredRelativeFormatStyle(v15);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.AnchoredRelativeFormatStyle()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  ObjectType = swift_getObjectType();
  if (((*(v4 + 48))(ObjectType, v4) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v4 + 64))(ObjectType, v4);
    String.hash(into:)();

    (*(v4 + 464))(&v47, ObjectType, v4);
    v55[6] = v53;
    v56[0] = *v54;
    *(v56 + 12) = *&v54[12];
    v55[2] = v49;
    v55[3] = v50;
    v55[4] = v51;
    v55[5] = v52;
    v55[0] = v47;
    v55[1] = v48;
    if (_s10Foundation17LocalePreferencesVSgWOg(v55) == 1)
    {
      v9 = 0;
      goto LABEL_5;
    }

    v45 = v6;
    v10 = v47;
    v11 = *(&v47 + 1);
    v12 = *(&v48 + 1);
    v13 = *(&v49 + 1);
    v41 = v50;
    v14 = v51;
    v42 = v52;
    v15 = v53;
    v16 = *v54;
    v43 = *&v54[16];
    v44 = v54[24];
    v17 = v54[25];
    v18 = v54[26];
    v46 = v54[27];
    Hasher._combine(_:)(1u);
    if (v10 == 2)
    {
      v19 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v19 = v10 & 1;
    }

    Hasher._combine(_:)(v19);
    if (v11)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v11 + 16));
      v20 = *(v11 + 16);
      if (v20)
      {
        v21 = v11 + 40;
        do
        {

          String.hash(into:)();

          v21 += 16;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v12)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v6 = v45;
    if (v13)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v41)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v57, v41, v22, v23, v24, v25, v26, v27);
      if (*(&v41 + 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v41 + 1))
      {
LABEL_23:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v57, *(&v41 + 1), v28, v29, v30, v31, v32, v33);
        if (v14)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }
    }

    Hasher._combine(_:)(0);
    if (v14)
    {
LABEL_24:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      if (*(&v14 + 1))
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

LABEL_29:
    Hasher._combine(_:)(0);
    if (*(&v14 + 1))
    {
LABEL_25:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      if (v42)
      {
LABEL_26:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
        _CFObject.hash(into:)();
        goto LABEL_32;
      }

LABEL_31:
      Hasher._combine(_:)(0);
LABEL_32:
      if (*(&v42 + 1))
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
        _CFObject.hash(into:)();
        if (v15)
        {
          goto LABEL_34;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v15)
        {
LABEL_34:
          v34 = v46;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
          _CFObject.hash(into:)();
          v35 = *(&v15 + 1);
          if (*(&v15 + 1))
          {
LABEL_35:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(v57, v35);
            goto LABEL_39;
          }

LABEL_38:
          Hasher._combine(_:)(0);
LABEL_39:
          if (v16)
          {
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(v57, v16);
            if (v43)
            {
LABEL_41:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              goto LABEL_44;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            if (v43)
            {
              goto LABEL_41;
            }
          }

          Hasher._combine(_:)(0);
LABEL_44:
          if (v44 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v44 & 1);
          }

          if (v17 == 2)
          {
            Hasher._combine(_:)(0);
            if (v18 != 2)
            {
LABEL_49:
              Hasher._combine(_:)(1u);
              v36 = v18 & 1;
LABEL_52:
              Hasher._combine(_:)(v36);
              if (v34 == 2)
              {
                v37 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v37 = v34 & 1;
              }

              Hasher._combine(_:)(v37);
              outlined destroy of TermOfAddress?(&v47, &_s10Foundation17LocalePreferencesVSgMd);
              goto LABEL_56;
            }
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v17 & 1);
            if (v18 != 2)
            {
              goto LABEL_49;
            }
          }

          v36 = 0;
          goto LABEL_52;
        }
      }

      v34 = v46;
      Hasher._combine(_:)(0);
      v35 = *(&v15 + 1);
      if (*(&v15 + 1))
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

LABEL_30:
    Hasher._combine(_:)(0);
    if (v42)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v9 = 1;
LABEL_5:
  Hasher._combine(_:)(v9);
LABEL_56:
  v38 = swift_getObjectType();
  (*(v5 + 120))(v57, v38, v5);
  specialized Set.hash(into:)(v57, v6);
  v39 = 0.0;
  if (v7 != 0.0)
  {
    v39 = v7;
  }

  MEMORY[0x1865CD090](*&v39);
  return Hasher._finalize()();
}

Foundation::Date_optional __swiftcall Date.AnchoredRelativeFormatStyle.discreteInput(before:)(Foundation::Date before)
{
  v4 = v2;
  v5 = *v1;
  v6 = *(v3 + 1);
  v13 = *v3;
  v14 = v6;
  v15 = *(v3 + 2);
  v16 = v3[6];
  v11 = v16;
  v12 = v5;
  v7 = Date.AnchoredRelativeFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)(&v12, &v11, 1, v16 < v5, &v17);
  v8 = v18;
  if (v18 == 2)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v17;
    if (v18)
    {
      v10 = 0.0 - v17;
      if (0.0 - v17 != INFINITY)
      {
        *&v10 += (*&v10 >> 63) | 1;
      }

      v9 = -v10;
    }
  }

  *v4 = v9;
  *(v4 + 8) = v8 == 2;
  result.value = *&v9;
  result.is_nil = v7;
  return result;
}

uint64_t Date.AnchoredRelativeFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)@<X0>(double *a1@<X0>, double *a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = v5[1];
  v146 = *v5;
  v147 = v11;
  v13 = *v5;
  v12 = v5[1];
  v148 = v5[2];
  v14 = *a2;
  v149 = *(v5 + 6);
  v142 = v13;
  v143 = v12;
  v144 = v5[2];
  v141 = v14;
  v140 = v10;
  outlined init with copy of Date.AnchoredRelativeFormatStyle(&v146, v138);
  v15 = COERCE_DOUBLE(&v142);
  Date.RelativeFormatStyle._largestNonZeroComponent(_:reference:adjustComponent:)(&v141, &v140, v145);
  v139[0] = v142;
  v139[1] = v143;
  v139[2] = v144;
  result = outlined destroy of Date.RelativeFormatStyle(v139);
  v18 = LOBYTE(v145[0]);
  if (LOBYTE(v145[0]) == 19)
  {
    goto LABEL_2;
  }

  v19 = v145[1];
  LOBYTE(v128) = a3;
  if (LOBYTE(v145[0]) <= 4u)
  {
    if (LOBYTE(v145[0]) > 2u)
    {
      goto LABEL_12;
    }

    if (LOBYTE(v145[0]) != 1)
    {
      if (LOBYTE(v145[0]) == 2)
      {
        LOBYTE(v20) = 1;
        LODWORD(v21) = 1;
        goto LABEL_20;
      }

LABEL_11:
      while (1)
      {
        __break(1u);
LABEL_12:
        if (v18 == 3)
        {
          break;
        }

        if (v18 == 4)
        {
          goto LABEL_14;
        }
      }

      LOBYTE(v20) = 1;
      goto LABEL_19;
    }

    LODWORD(v21) = 0;
LABEL_17:
    LOBYTE(v20) = 1;
    goto LABEL_20;
  }

  if (LOBYTE(v145[0]) - 10 < 2)
  {
    LODWORD(v21) = 2;
    goto LABEL_17;
  }

  if (LOBYTE(v145[0]) != 5 && LOBYTE(v145[0]) != 6)
  {
    goto LABEL_11;
  }

LABEL_14:
  LOBYTE(v20) = 0;
LABEL_19:
  LODWORD(v21) = v18;
LABEL_20:
  v113 = a4;
  if ((a4 & 1) == 0)
  {
    goto LABEL_46;
  }

  v22 = v19;
  if ((*&v19 & 0x8000000000000000) != 0)
  {
    *&v22 = -*&v19;
    if (__OFSUB__(0, *&v19))
    {
LABEL_294:
      __break(1u);
      goto LABEL_295;
    }
  }

  if (*&v22 != 1)
  {
    goto LABEL_46;
  }

  LOBYTE(v125) = v18;

  v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_AL6OptionOs5NeverOTg5015_s10Foundation4e19V27AnchoredRelativegh75V12usableFields33_C066C46DD7A4458BFE9B19CA47B7E7FELLSayAC010ComponentseF0V5i2V6J59OGyFAmKcfu_33_7a8e0f6e267ccb9df6f8247fecae9d92AkMTf3nnnpk_nTf1cn_n(v23);

  v138[0] = v24;

  specialized MutableCollection<>.sort(by:)(v138);
  v111 = a5;

  v25 = *(v138[0] + 2);
  if (v25)
  {
    v26 = v138[0] + 32;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = *v26++;
      v29 = v30;
      if (v21 < v30)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138[0] = *&v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v15 + 16) + 1, 1);
          v15 = *v138;
        }

        v28 = *(*&v15 + 16);
        v27 = *(*&v15 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v15 = *v138;
        }

        *(*&v15 + 16) = v28 + 1;
        *(*&v15 + v28 + 32) = v29;
      }

      --v25;
    }

    while (v25);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (!*(*&v15 + 16))
  {

    a5 = v111;
    goto LABEL_45;
  }

  v32 = *(*&v15 + 32);
  LOBYTE(v20) = v32 < 4;

  a5 = v111;
  LOBYTE(v18) = LOBYTE(v125);
  if (v32 == v21)
  {
    goto LABEL_46;
  }

  v33 = *(&v147 + 1);
  v34 = v148;
  __dst[0] = 0x60504030A0201uLL >> (8 * v32);
  LOBYTE(__src[0]) = LOBYTE(v125);
  v35 = one-time initialization token for validCalendarRange;
  swift_unknownObjectRetain();
  if (v35 != -1)
  {
    goto LABEL_298;
  }

LABEL_37:
  v36 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v14)
  {
    v36 = v14;
  }

  if (*&static Date.validCalendarRange >= v36)
  {
    v37 = *&static Date.validCalendarRange;
  }

  else
  {
    *&v37 = v36;
  }

  ObjectType = swift_getObjectType();
  v138[0] = v37;
  v126 = ObjectType;
  v39 = (*(v34 + 144))(__dst, __src, v138);
  v41 = v40;
  v15 = v42;
  swift_unknownObjectRelease();
  if (LOBYTE(v15))
  {
LABEL_43:
    LODWORD(v21) = v32;
LABEL_45:
    LOBYTE(v18) = LOBYTE(v125);
    goto LABEL_46;
  }

  if (v128)
  {
    v17.value = 1;
  }

  else
  {
    v17.value = -1;
  }

  LOBYTE(v18) = LOBYTE(v125);
  LOBYTE(v135[0]) = LOBYTE(v125);
  DateComponents.init(component:value:)(v17, v135, __src);
  memcpy(__dst, __src, 0x11BuLL);
  memcpy(v138, __src, 0x11BuLL);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v138) == 1)
  {
    LODWORD(v21) = v32;
    goto LABEL_46;
  }

  v119 = v41;
  v65 = v39;
  if (*(&static Date.validCalendarRange + 1) >= v14)
  {
    v66 = v14;
  }

  else
  {
    v66 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v66)
  {
    v67 = *&static Date.validCalendarRange;
  }

  else
  {
    v67 = v66;
  }

  memcpy(__src, v138, 0x11BuLL);
  if (*(&static Date.validCalendarRange + 1) >= v67)
  {
    v68 = v67;
  }

  else
  {
    v68 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v68)
  {
    v68 = *&static Date.validCalendarRange;
  }

  *v134 = v68;
  v123 = *(v34 + 200);
  v123(v135, __src, v134, 0, v126, v34);
  v69 = *v135;
  *&v15 = LOBYTE(v135[1]);
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  v70 = static Calendar.compatibility2;
  outlined destroy of TermOfAddress?(__dst, &_s10Foundation14DateComponentsVSgMd);
  if (v70 == 1)
  {
    if (LODWORD(v15))
    {
      v6 = v14;
    }

    else
    {
      v6 = v69;
    }
  }

  else
  {
    if (LOBYTE(v15))
    {
      goto LABEL_43;
    }

    v6 = v69;
  }

  v71 = v119 - v65;
  if (__OFSUB__(v119, v65))
  {
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
    __break(1u);
LABEL_306:
    outlined destroy of Date.AnchoredRelativeFormatStyle(&v146);
    __break(1u);
LABEL_307:
    outlined destroy of Date.AnchoredRelativeFormatStyle(&v146);
    __break(1u);

    __break(1u);
    return result;
  }

  v72 = v71 + 1;
  if (__OFADD__(v71, 1))
  {
    goto LABEL_300;
  }

  v114 = v71 + 1;
  v115 = v119 - v65;
  v120 = v34;
  v125 = *&v33;
  if (v72 < 0)
  {
    goto LABEL_301;
  }

  outlined init with copy of Date.AnchoredRelativeFormatStyle(&v146, __src);
  *&v33 = 0.0;
  a5 = -*&v19;
  v73 = __OFSUB__(0, *&v19);
  v117 = v73;
  v34 = 0x60504030A0201uLL >> (8 * v32);
  v74 = 1;
  v75 = v72;
  while (1)
  {
    if (v117)
    {
      __break(1u);
LABEL_293:
      __break(1u);
      goto LABEL_294;
    }

    if ((a5 * v75) >> 64 != (a5 * v75) >> 63)
    {
      goto LABEL_293;
    }

    memset(__src, 0, 40);
    BYTE8(__src[2]) = 1;
    *&__src[3] = 0;
    BYTE8(__src[3]) = 1;
    *&__src[4] = 0;
    BYTE8(__src[4]) = 1;
    *&__src[5] = 0;
    BYTE8(__src[5]) = 1;
    *&__src[6] = 0;
    BYTE8(__src[6]) = 1;
    *&__src[7] = 0;
    BYTE8(__src[7]) = 1;
    *&__src[8] = 0;
    BYTE8(__src[8]) = 1;
    *&__src[9] = 0;
    BYTE8(__src[9]) = 1;
    *&__src[10] = 0;
    BYTE8(__src[10]) = 1;
    *&__src[11] = 0;
    BYTE8(__src[11]) = 1;
    *&__src[12] = 0;
    BYTE8(__src[12]) = 1;
    *&__src[13] = 0;
    BYTE8(__src[13]) = 1;
    *&__src[14] = 0;
    BYTE8(__src[14]) = 1;
    *&__src[15] = 0;
    BYTE8(__src[15]) = 1;
    BYTE8(__src[16]) = 1;
    *&__src[16] = 0;
    *&__src[17] = 0;
    BYTE8(__src[17]) = 1;
    *(&__src[17] + 9) = 514;
    LOBYTE(v134[0]) = 0x60504030A0201uLL >> (8 * v32);
    v150.is_nil = 0;
    v150.value = a5 * v75;
    DateComponents.setValue(_:for:)(v150, v134);
    memcpy(v135, __src, 0x11BuLL);
    if (*(&static Date.validCalendarRange + 1) >= v14)
    {
      v76 = v14;
    }

    else
    {
      v76 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v76)
    {
      v77 = *&static Date.validCalendarRange;
    }

    else
    {
      v77 = v76;
    }

    memcpy(v134, __src, 0x11BuLL);
    if (*(&static Date.validCalendarRange + 1) >= v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v78)
    {
      v78 = *&static Date.validCalendarRange;
    }

    *v132 = v78;
    v15 = v125;
    v123(v133, v134, v132, 0, v126, v120);
    outlined destroy of DateComponents(v135);
    if (v70)
    {
      break;
    }

    if ((v133[1] & 1) == 0)
    {
      v80 = *v133;
      if (v128)
      {
        goto LABEL_187;
      }

      goto LABEL_191;
    }

LABEL_193:
    v81 = v72;
    if ((v74 & 1) == 0)
    {
      v81 = v33 - 1;
      if (v33 < 1)
      {
        goto LABEL_297;
      }
    }

    if (!v81)
    {
      goto LABEL_196;
    }

    v74 = 0;
    v33 = v81;
    v75 = v81 - 1;
    if (v33 < 1)
    {
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      swift_once();
      goto LABEL_37;
    }
  }

  v80 = *v133;
  if (LOBYTE(v133[1]))
  {
    v80 = v14;
  }

  if (v128)
  {
LABEL_187:
    if (v6 >= v80)
    {
      goto LABEL_202;
    }

    goto LABEL_193;
  }

LABEL_191:
  if (v80 < v6 || v10 >= v80)
  {
    goto LABEL_193;
  }

LABEL_202:
  if (v74)
  {
    goto LABEL_205;
  }

  if (*&v33 == 0.0)
  {
LABEL_196:
    outlined destroy of Date.AnchoredRelativeFormatStyle(&v146);
    a5 = v111;
    v72 = v115;
  }

  else
  {
    v72 = v33 - 1;
LABEL_205:
    if ((a5 * v72) >> 64 != (a5 * v72) >> 63)
    {
      goto LABEL_303;
    }

    LOBYTE(v130) = 0x60504030A0201uLL >> (8 * v32);
    v79.value = a5 * v72;
    DateComponents.init(component:value:)(v79, &v130, v132);
    memcpy(v133, v132, 0x11BuLL);
    memcpy(v134, v132, 0x11BuLL);
    a5 = v111;
    if (_s10Foundation13URLComponentsV01_B0VSgWOg(v134) == 1)
    {
      goto LABEL_306;
    }

    if (*(&static Date.validCalendarRange + 1) >= v14)
    {
      v83 = v14;
    }

    else
    {
      v83 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v83)
    {
      v84 = *&static Date.validCalendarRange;
    }

    else
    {
      v84 = v83;
    }

    memcpy(v132, v134, 0x11BuLL);
    if (*(&static Date.validCalendarRange + 1) >= v84)
    {
      v85 = v84;
    }

    else
    {
      v85 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v85)
    {
      v85 = *&static Date.validCalendarRange;
    }

    v129 = v85;
    v123(&v130, v132, &v129, 0, v126, v120);
    outlined destroy of TermOfAddress?(v133, &_s10Foundation14DateComponentsVSgMd);
    v15 = v130;
    v86 = v131;
    if (v70)
    {
      outlined destroy of Date.AnchoredRelativeFormatStyle(&v146);
      if (v86)
      {
        v87 = v14;
      }

      else
      {
        v87 = v15;
      }
    }

    else
    {
      if (v131)
      {
        goto LABEL_307;
      }

      v87 = v130;
      outlined destroy of Date.AnchoredRelativeFormatStyle(&v146);
    }

    if (v128)
    {
      if (v6 < v87)
      {
        goto LABEL_304;
      }
    }

    else
    {
      if (v87 < v6)
      {
        goto LABEL_305;
      }

      if (v10 >= v87)
      {
        goto LABEL_304;
      }

      if (v72 < v114 && v6 < v87)
      {
        ++v72;
      }
    }
  }

  *&v110 = *&v19 * v72;
  if ((*&v19 * v72) >> 64 != (*&v19 * v72) >> 63)
  {
    goto LABEL_302;
  }

  LOBYTE(v18) = 0x60504030A0201uLL >> (8 * v32);
  LODWORD(v21) = v32;
  v19 = v110;
LABEL_46:
  v17.value = -*&v19;
  if (__OFSUB__(0, *&v19))
  {
    goto LABEL_290;
  }

  v15 = *(&v147 + 1);
  v19 = *&v148;
  LOBYTE(v135[0]) = v18;
  DateComponents.init(component:value:)(v17, v135, __src);
  memcpy(__dst, __src, 0x11BuLL);
  memcpy(v138, __src, 0x11BuLL);
  result = _s10Foundation13URLComponentsV01_B0VSgWOg(v138);
  LOBYTE(v125) = v18;
  if (result != 1)
  {
    if (one-time initialization token for validCalendarRange == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_291;
  }

  if ((v20 & 1) == 0)
  {
LABEL_2:
    *a5 = 0;
    *(a5 + 8) = 2;
    return result;
  }

  v43 = 0.0;
  while (2)
  {
    v44 = 1;
    v45 = v128;
LABEL_101:
    v134[0] = 0x2000;
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v59 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v14)
    {
      v59 = v14;
    }

    if (*&static Date.validCalendarRange >= v59)
    {
      v60 = *&static Date.validCalendarRange;
    }

    else
    {
      v60 = v59;
    }

    v61 = swift_getObjectType();
    *v133 = v60;
    (*(*&v19 + 192))(__src, v134, v133, v61, COERCE_DOUBLE(*&v19));
    memcpy(v135, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(v135);
    if ((v135[21] & 1) == 0)
    {
      goto LABEL_114;
    }

    v62 = 0;
    if (v45)
    {
LABEL_115:
      if (v44)
      {
        goto LABEL_2;
      }

      v112 = a5;
    }

    else
    {
      while (1)
      {
        if (v44)
        {
          goto LABEL_2;
        }

        v112 = a5;
        v63 = __OFADD__(v62, -1000000000);
        v62 -= 1000000000;
        if (!v63)
        {
          break;
        }

        __break(1u);
LABEL_114:
        v62 = v135[20];
        if (v45)
        {
          goto LABEL_115;
        }
      }
    }

    v57 = v62 * 0.000000001 + v43;
    v64 = &outlined read-only object #0 of Date.AnchoredRelativeFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:);
LABEL_225:
    v88 = -1;
    if ((v45 & 1) == 0)
    {
      v88 = 1;
    }

    v124 = v88;
    v89 = v64[2];
    if (!v89)
    {

      goto LABEL_274;
    }

    v90 = swift_getObjectType();
    if ((v45 ^ v113))
    {
      v91 = 1;
    }

    else
    {
      v91 = -1;
    }

    v121 = v91;
    v122 = *(*&v19 + 144);

    v92 = v89 - 1;
    v93 = 32;
    v116 = v89;
    v118 = v64;
LABEL_232:
    v127 = v93;
    v128 = v92;
    v94 = *(v64 + v93);
    if (v94 != 13 || v89 == 1)
    {
      v21 = v124;
    }

    else
    {
      v21 = v121;
    }

    LOBYTE(v135[0]) = *(v64 + v93);
    LOBYTE(v134[0]) = LOBYTE(v125);
    v96 = one-time initialization token for validCalendarRange;
    swift_unknownObjectRetain();
    if (v96 != -1)
    {
      swift_once();
    }

    v97 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v14)
    {
      v97 = v14;
    }

    if (*&static Date.validCalendarRange >= v97)
    {
      v97 = *&static Date.validCalendarRange;
    }

    *__src = v97;
    a5 = v90;
    v98 = v90;
    v99 = v15;
    v100 = v19;
    v15 = COERCE_DOUBLE(v122(v135, v134, __src, v98, *&v19));
    v20 = v101;
    v19 = v102;
    swift_unknownObjectRelease();
    if (LOBYTE(v19))
    {
LABEL_270:
      result = swift_bridgeObjectRelease_n();
LABEL_272:
      *v112 = v57;
      *(v112 + 8) = 1;
      return result;
    }

    v103 = v20 - *&v15;
    if (__OFSUB__(v20, *&v15))
    {
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      swift_once();
LABEL_52:
      if (*(&static Date.validCalendarRange + 1) >= v14)
      {
        v46 = v14;
      }

      else
      {
        v46 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v46)
      {
        v47 = *&static Date.validCalendarRange;
      }

      else
      {
        v47 = v46;
      }

      memcpy(__src, v138, 0x11BuLL);
      if (*(&static Date.validCalendarRange + 1) >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v48)
      {
        v49 = *&static Date.validCalendarRange;
      }

      else
      {
        v49 = v48;
      }

      v50 = swift_getObjectType();
      *v134 = v49;
      (*(*&v19 + 200))(v135, __src, v134, 0, v50, COERCE_DOUBLE(*&v19));
      v43 = *v135;
      v51 = LOBYTE(v135[1]);
      if (one-time initialization token for compatibility2 != -1)
      {
        swift_once();
      }

      v52 = static Calendar.compatibility2;
      result = outlined destroy of TermOfAddress?(__dst, &_s10Foundation14DateComponentsVSgMd);
      if (v52)
      {
        if (v51)
        {
          v43 = v14;
        }

        if (v20)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v20)
        {
          if (v51)
          {
            continue;
          }

LABEL_73:
          v6 = v43;
          if (one-time initialization token for validCalendarRange != -1)
          {
LABEL_295:
            swift_once();
          }

          v53 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v6)
          {
            v54 = v6;
          }

          else
          {
            v54 = *(&static Date.validCalendarRange + 1);
          }

          if (*&static Date.validCalendarRange >= v54)
          {
            v54 = *&static Date.validCalendarRange;
          }

          LOBYTE(v134[0]) = LOBYTE(v125);
          if (*(&static Date.validCalendarRange + 1) >= v54)
          {
            v53 = v54;
          }

          if (*&static Date.validCalendarRange >= v53)
          {
            v55 = *&static Date.validCalendarRange;
          }

          else
          {
            v55 = v53;
          }

          v56 = swift_getObjectType();
          *v135 = v55;
          (*(*&v19 + 160))(__src, v134, v135, v56, COERCE_DOUBLE(*&v19));
          v45 = v128;
          if (__src[1])
          {
            v43 = 0.0;
            v44 = 1;
          }

          else
          {
            v43 = *__src;
            if (v128)
            {
              v44 = 0;
            }

            else
            {
              v58 = 0.0 - *(__src + 1);
              if (0.0 - *(__src + 1) != INFINITY)
              {
                *&v58 += (*&v58 >> 63) | 1;
              }

              v44 = 0;
              v43 = *__src - v58;
            }
          }

          goto LABEL_101;
        }

        if (v51)
        {
          goto LABEL_2;
        }
      }

      v57 = v43;
      v112 = a5;
      if (byte_1EEECE5F0[0] == 6)
      {
        if (v21 < 6)
        {
          goto LABEL_201;
        }
      }

      else if (byte_1EEECE5F0[0] == 5 && v21 == 4)
      {
LABEL_223:
        v82 = 5;
        goto LABEL_224;
      }

      if (byte_1EEECE5F1 == 5)
      {
        if (v21 == 4)
        {
          goto LABEL_223;
        }
      }

      else if (byte_1EEECE5F1 == 6 && v21 < 6)
      {
LABEL_201:
        v82 = 6;
LABEL_224:
        v45 = v128;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
        v64 = swift_allocObject();
        *(v64 + 1) = xmmword_181215ED0;
        *(v64 + 32) = v82;
        *(v64 + 33) = 13;
        goto LABEL_225;
      }

      if (byte_1EEECE5F2 == 5)
      {
        if (v21 == 4)
        {
          goto LABEL_223;
        }
      }

      else if (byte_1EEECE5F2 == 6 && v21 < 6)
      {
        goto LABEL_201;
      }

      if (byte_1EEECE5F3 == 5)
      {
        if (v21 == 4)
        {
          goto LABEL_223;
        }
      }

      else if (byte_1EEECE5F3 == 6 && v21 < 6)
      {
        goto LABEL_201;
      }

      if (byte_1EEECE5F4 == 5)
      {
        if (v21 == 4)
        {
          goto LABEL_223;
        }
      }

      else if (byte_1EEECE5F4 == 6 && v21 < 6)
      {
        goto LABEL_201;
      }

      if (byte_1EEECE5F5 == 5)
      {
        if (v21 == 4)
        {
          goto LABEL_223;
        }
      }

      else if (byte_1EEECE5F5 == 6 && v21 < 6)
      {
        goto LABEL_201;
      }

      if (byte_1EEECE5F6 == 5)
      {
        if (v21 == 4)
        {
          goto LABEL_223;
        }
      }

      else if (byte_1EEECE5F6 == 6 && v21 < 6)
      {
        goto LABEL_201;
      }

      v64 = &outlined read-only object #0 of Date.AnchoredRelativeFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:);
      v45 = v128;
      goto LABEL_225;
    }

    break;
  }

  if ((v21 * v103) >> 64 != (v21 * v103) >> 63)
  {
    goto LABEL_289;
  }

  memset(__src, 0, 40);
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  *&__src[5] = 0;
  BYTE8(__src[5]) = 1;
  *&__src[6] = 0;
  BYTE8(__src[6]) = 1;
  *&__src[7] = 0;
  BYTE8(__src[7]) = 1;
  *&__src[8] = 0;
  BYTE8(__src[8]) = 1;
  *&__src[9] = 0;
  BYTE8(__src[9]) = 1;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 1;
  *&__src[11] = 0;
  BYTE8(__src[11]) = 1;
  *&__src[12] = 0;
  BYTE8(__src[12]) = 1;
  *&__src[13] = 0;
  BYTE8(__src[13]) = 1;
  *&__src[14] = 0;
  BYTE8(__src[14]) = 1;
  *&__src[15] = 0;
  BYTE8(__src[15]) = 1;
  BYTE8(__src[16]) = 1;
  *&__src[16] = 0;
  *&__src[17] = 0;
  *(&__src[17] + 9) = 514;
  BYTE8(__src[17]) = 1;
  if ((v94 - 14) < 4)
  {
    swift_bridgeObjectRelease_n();
    memcpy(v135, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(v135);
    goto LABEL_272;
  }

  v151.value = v21 * v103 / 2;
  LOBYTE(v134[0]) = v94;
  v151.is_nil = 0;
  DateComponents.setValue(_:for:)(v151, v134);
  memcpy(v135, __src, 0x11BuLL);
  if (*(&static Date.validCalendarRange + 1) >= v57)
  {
    v104 = v57;
  }

  else
  {
    v104 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v104)
  {
    v105 = *&static Date.validCalendarRange;
  }

  else
  {
    v105 = v104;
  }

  memcpy(v134, __src, 0x11BuLL);
  if (*(&static Date.validCalendarRange + 1) >= v105)
  {
    v106 = v105;
  }

  else
  {
    v106 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v106)
  {
    v106 = *&static Date.validCalendarRange;
  }

  *v132 = v106;
  v19 = v100;
  v15 = v99;
  v90 = a5;
  (*(*&v100 + 200))(v133, v134, v132, 0, a5, COERCE_DOUBLE(*&v100));
  v107 = *v133;
  v108 = LOBYTE(v133[1]);
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  v109 = static Calendar.compatibility2;
  outlined destroy of DateComponents(v135);
  v89 = v116;
  if (v109 == 1)
  {
    if (!v108)
    {
      v57 = v107;
    }
  }

  else
  {
    if (v108)
    {
      goto LABEL_270;
    }

    v57 = v107;
  }

  v64 = v118;
  if (v128)
  {
    v92 = v128 - 1;
    v93 = v127 + 1;
    goto LABEL_232;
  }

  result = swift_bridgeObjectRelease_n();
LABEL_274:
  *v112 = v57;
  *(v112 + 8) = v113 & ((v10 < v14) ^ (v57 >= v14));
  return result;
}

Foundation::Date_optional __swiftcall Date.AnchoredRelativeFormatStyle.discreteInput(after:)(Foundation::Date after)
{
  v4 = v2;
  v5 = *v1;
  v6 = *(v3 + 1);
  v12 = *v3;
  v13 = v6;
  v14 = *(v3 + 2);
  v15 = v3[6];
  v10 = v15;
  v11 = v5;
  v7 = Date.AnchoredRelativeFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)(&v11, &v10, 0, v5 < v15, &v16);
  v8 = v17;
  if (v17 == 2)
  {
    v9 = 0.0;
  }

  else if (v17)
  {
    v9 = v16 + 0.0;
    if (v16 != INFINITY)
    {
      *&v9 += (*&v9 >> 63) | 1;
    }
  }

  else
  {
    v9 = v16;
  }

  *v4 = v9;
  *(v4 + 8) = v8 == 2;
  result.value = *&v9;
  result.is_nil = v7;
  return result;
}

Foundation::Date_optional __swiftcall Date.AnchoredRelativeFormatStyle.input(before:)(Foundation::Date before)
{
  v4 = *v1;
  v5 = 0.0 - *v1;
  if (v5 != INFINITY)
  {
    *&v5 += (*&v5 >> 63) | 1;
  }

  v6 = *(v3 + 48);
  v7 = (v4 + 978307200.0) * -1000.0;
  v8 = v7 + 0.0;
  if (v7 != INFINITY)
  {
    *&v8 += (*&v8 >> 63) | 1;
  }

  v9 = 0.0 - v6;
  if (0.0 - v6 != INFINITY)
  {
    *&v9 += (*&v9 >> 63) | 1;
  }

  v10 = (v6 + 978307200.0) * -1000.0;
  v11 = v10 + 0.0;
  if (v10 != INFINITY)
  {
    *&v11 += (*&v11 >> 63) | 1;
  }

  v12 = fabs(v6 + v9);
  v13 = vabdd_f64(v4, -978307200.0 - v8 / 1000.0);
  v14 = fabs(v4 + v5);
  v15 = vabdd_f64(v6, -978307200.0 - v11 / 1000.0);
  v16 = v4 - (v14 + v13 + v12 + v15 + v14 + v13 + v12 + v15);
  v17 = v16;
  if (v16 >= v4)
  {
    v17 = 0.0;
  }

  *v2 = v17;
  *(v2 + 8) = v16 >= v4;
  result.value = *&v4;
  result.is_nil = v1;
  return result;
}

Foundation::Date_optional __swiftcall Date.AnchoredRelativeFormatStyle.input(after:)(Foundation::Date after)
{
  v4 = *v1;
  v5 = 0.0 - *v1;
  if (v5 != INFINITY)
  {
    *&v5 += (*&v5 >> 63) | 1;
  }

  v6 = *(v3 + 48);
  v7 = (v4 + 978307200.0) * -1000.0;
  v8 = v7 + 0.0;
  if (v7 != INFINITY)
  {
    *&v8 += (*&v8 >> 63) | 1;
  }

  v9 = 0.0 - v6;
  if (0.0 - v6 != INFINITY)
  {
    *&v9 += (*&v9 >> 63) | 1;
  }

  v10 = (v6 + 978307200.0) * -1000.0;
  v11 = v10 + 0.0;
  if (v10 != INFINITY)
  {
    *&v11 += (*&v11 >> 63) | 1;
  }

  v12 = fabs(v6 + v9);
  v13 = vabdd_f64(v4, -978307200.0 - v8 / 1000.0);
  v14 = fabs(v4 + v5);
  v15 = vabdd_f64(v6, -978307200.0 - v11 / 1000.0);
  v16 = v4 + v14 + v13 + v12 + v15 + v14 + v13 + v12 + v15;
  v17 = v16;
  if (v4 >= v16)
  {
    v17 = 0.0;
  }

  *v2 = v17;
  *(v2 + 8) = v4 >= v16;
  result.value = *&v4;
  result.is_nil = v1;
  return result;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.AnchoredRelativeFormatStyle@<X0>(Swift::String *a1@<X8>)
{
  v3 = v1[1];
  v13[0] = *v1;
  v13[1] = v3;
  v5 = *v1;
  v4 = v1[1];
  v13[2] = v1[2];
  v10 = v5;
  v11 = v4;
  v12 = v1[2];
  outlined init with copy of Date.RelativeFormatStyle(v13, v14);
  v8 = Date.RelativeFormatStyle._format(_:refDate:)(v6, v7);
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  result = outlined destroy of Date.RelativeFormatStyle(v14);
  *a1 = v8;
  return result;
}

__n128 protocol witness for FormatStyle.locale(_:) in conformance Date.AnchoredRelativeFormatStyle@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v5;
  v12 = *(v2 + 32);
  v6 = v12;
  v13 = *(v2 + 48);
  v7 = v13;
  *a2 = v11[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  outlined init with copy of Date.AnchoredRelativeFormatStyle(v11, v10);
  v9 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v9;
  *(a2 + 8) = v9;
  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = result;
  v79 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v8++;
      if (v8 < v6)
      {
        v11 = *(*a3 + v8);
        v12 = *(*a3 + v10);
        v13 = v10 + 2;
        v14 = v11;
        while (v6 != v13)
        {
          v15 = *(*a3 + v13);
          v16 = (v11 < v12) ^ (v15 >= v14);
          ++v13;
          v14 = v15;
          if ((v16 & 1) == 0)
          {
            v8 = v13 - 1;
            if (v11 >= v12)
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        v8 = v6;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }

LABEL_11:
        if (v8 < v10)
        {
          goto LABEL_106;
        }

        if (v10 < v8)
        {
          v17 = v8 - 1;
          v18 = v10;
          do
          {
            if (v18 != v17)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_111;
              }

              v19 = *(v21 + v18);
              *(v21 + v18) = *(v21 + v17);
              *(v21 + v17) = v19;
            }
          }

          while (++v18 < v17--);
          v6 = a3[1];
        }
      }

LABEL_20:
      if (v8 < v6)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_105;
        }

        if (v8 - v10 < v7)
        {
          if (__OFADD__(v10, v7))
          {
            goto LABEL_107;
          }

          if (v10 + v7 < v6)
          {
            v6 = v10 + v7;
          }

          if (v6 < v10)
          {
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
            return result;
          }

          if (v8 != v6)
          {
            v22 = *a3;
            v23 = (*a3 + v8);
            v24 = v10 - v8;
            do
            {
              v25 = *(v22 + v8);
              v26 = v24;
              v27 = v23;
              do
              {
                v28 = *(v27 - 1);
                if (v25 >= v28)
                {
                  break;
                }

                if (!v22)
                {
                  goto LABEL_109;
                }

                *v27 = v28;
                *--v27 = v25;
              }

              while (!__CFADD__(v26++, 1));
              ++v8;
              ++v23;
              --v24;
            }

            while (v8 != v6);
            v8 = v6;
          }
        }
      }

      if (v8 < v10)
      {
        goto LABEL_104;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v31 = *(v9 + 16);
      v30 = *(v9 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v32;
      v33 = v9 + 16 * v31;
      *(v33 + 32) = v10;
      *(v33 + 40) = v8;
      v79 = v9;
      v34 = *v78;
      if (!*v78)
      {
        goto LABEL_112;
      }

      if (v31)
      {
        while (1)
        {
          v35 = v32 - 1;
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v36 = *(v9 + 32);
            v37 = *(v9 + 40);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_57:
            if (v39)
            {
              goto LABEL_95;
            }

            v52 = (v9 + 16 * v32);
            v54 = *v52;
            v53 = v52[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_98;
            }

            v58 = (v9 + 32 + 16 * v35);
            v60 = *v58;
            v59 = v58[1];
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_101;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_102;
            }

            if (v56 + v61 >= v38)
            {
              if (v38 < v61)
              {
                v35 = v32 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v62 = (v9 + 16 * v32);
          v64 = *v62;
          v63 = v62[1];
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_71:
          if (v57)
          {
            goto LABEL_97;
          }

          v65 = v9 + 16 * v35;
          v67 = *(v65 + 32);
          v66 = *(v65 + 40);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_100;
          }

          if (v68 < v56)
          {
            goto LABEL_3;
          }

LABEL_78:
          v73 = v35 - 1;
          if (v35 - 1 >= v32)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (!*a3)
          {
            goto LABEL_110;
          }

          v74 = *(v9 + 32 + 16 * v73);
          v75 = *(v9 + 32 + 16 * v35 + 8);
          result = specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v74), (*a3 + *(v9 + 32 + 16 * v35)), *a3 + v75, v34);
          if (v4)
          {
          }

          if (v75 < v74)
          {
            goto LABEL_91;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            v9 = result;
          }

          if (v73 >= *(v9 + 16))
          {
            goto LABEL_92;
          }

          v76 = v9 + 16 * v73;
          *(v76 + 32) = v74;
          *(v76 + 40) = v75;
          v79 = v9;
          result = specialized Array.remove(at:)(v35);
          v32 = *(v9 + 16);
          if (v32 <= 1)
          {
            goto LABEL_3;
          }
        }

        v40 = v9 + 32 + 16 * v32;
        v41 = *(v40 - 64);
        v42 = *(v40 - 56);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_93;
        }

        v45 = *(v40 - 48);
        v44 = *(v40 - 40);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_94;
        }

        v47 = (v9 + 16 * v32);
        v49 = *v47;
        v48 = v47[1];
        v46 = __OFSUB__(v48, v49);
        v50 = v48 - v49;
        if (v46)
        {
          goto LABEL_96;
        }

        v46 = __OFADD__(v38, v50);
        v51 = v38 + v50;
        if (v46)
        {
          goto LABEL_99;
        }

        if (v51 >= v43)
        {
          v69 = (v9 + 32 + 16 * v35);
          v71 = *v69;
          v70 = v69[1];
          v46 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v38 < v72)
          {
            v35 = v32 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
    }

    while (v8 < v6);
  }

  if (!*v78)
  {
    goto LABEL_113;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v79, *v78, a3);
}

{
  v78 = result;
  v81 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v77 = a4;
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = *(*a3 + 8 * v8);
        v11 = v8 + 2;
        v12 = v9;
        while (v5 != v11)
        {
          v13 = *(*a3 + 8 * v11);
          v14 = v13 >= v12;
          ++v11;
          v12 = v13;
          if ((((v9 < v10) ^ v14) & 1) == 0)
          {
            v6 = v11 - 1;
            if (v9 >= v10)
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        v6 = v5;
        if (v9 >= v10)
        {
          goto LABEL_20;
        }

LABEL_11:
        if (v6 < v8)
        {
          goto LABEL_109;
        }

        if (v8 < v6)
        {
          v15 = 8 * v6 - 8;
          v16 = 8 * v8;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_114;
              }

              v19 = *(v20 + v16);
              *(v20 + v16) = *(v20 + v15);
              *(v20 + v15) = v19;
            }

            ++v18;
            v15 -= 8;
            v16 += 8;
          }

          while (v18 < v17);
          v5 = a3[1];
        }
      }

LABEL_20:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_108;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_110;
          }

          if (v8 + a4 < v5)
          {
            v5 = v8 + a4;
          }

          if (v5 < v8)
          {
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
            return result;
          }

          if (v6 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v6 - 8;
            v23 = v8 - v6;
            do
            {
              v24 = *(v21 + 8 * v6);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_112;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v6;
              v22 += 8;
              --v23;
            }

            while (v6 != v5);
            v6 = v5;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_107;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v30 = *(v7 + 16);
      v29 = *(v7 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v31;
      v32 = v7 + 32;
      v33 = (v7 + 32 + 16 * v30);
      *v33 = v8;
      v33[1] = v6;
      v79 = *v78;
      if (!*v78)
      {
        goto LABEL_115;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v35 = *(v7 + 32);
            v36 = *(v7 + 40);
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_57:
            if (v38)
            {
              goto LABEL_97;
            }

            v51 = (v7 + 16 * v31);
            v53 = *v51;
            v52 = v51[1];
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_99;
            }

            v57 = (v32 + 16 * v34);
            v59 = *v57;
            v58 = v57[1];
            v45 = __OFSUB__(v58, v59);
            v60 = v58 - v59;
            if (v45)
            {
              goto LABEL_102;
            }

            if (__OFADD__(v55, v60))
            {
              goto LABEL_104;
            }

            if (v55 + v60 >= v37)
            {
              if (v37 < v60)
              {
                v34 = v31 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v31 < 2)
          {
            goto LABEL_105;
          }

          v61 = (v7 + 16 * v31);
          v63 = *v61;
          v62 = v61[1];
          v45 = __OFSUB__(v62, v63);
          v55 = v62 - v63;
          v56 = v45;
LABEL_72:
          if (v56)
          {
            goto LABEL_101;
          }

          v64 = (v32 + 16 * v34);
          v66 = *v64;
          v65 = v64[1];
          v45 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v67 < v55)
          {
            goto LABEL_3;
          }

LABEL_79:
          if (v34 - 1 >= v31)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          if (!*a3)
          {
            goto LABEL_113;
          }

          v72 = (v32 + 16 * (v34 - 1));
          v73 = *v72;
          v74 = (v32 + 16 * v34);
          v75 = v74[1];
          result = specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v72), (*a3 + 8 * *v74), (*a3 + 8 * v75), v79);
          if (v4)
          {
          }

          if (v75 < v73)
          {
            goto LABEL_92;
          }

          if (v34 > *(v7 + 16))
          {
            goto LABEL_93;
          }

          *v72 = v73;
          v72[1] = v75;
          v76 = *(v7 + 16);
          if (v34 >= v76)
          {
            goto LABEL_94;
          }

          v31 = v76 - 1;
          result = memmove((v32 + 16 * v34), v74 + 2, 16 * (v76 - 1 - v34));
          *(v7 + 16) = v76 - 1;
          if (v76 <= 2)
          {
            goto LABEL_3;
          }
        }

        v39 = v32 + 16 * v31;
        v40 = *(v39 - 64);
        v41 = *(v39 - 56);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_95;
        }

        v44 = *(v39 - 48);
        v43 = *(v39 - 40);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_96;
        }

        v46 = (v7 + 16 * v31);
        v48 = *v46;
        v47 = v46[1];
        v45 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v45)
        {
          goto LABEL_98;
        }

        v45 = __OFADD__(v37, v49);
        v50 = v37 + v49;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v50 >= v42)
        {
          v68 = (v32 + 16 * v34);
          v70 = *v68;
          v69 = v68[1];
          v45 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v45)
          {
            goto LABEL_106;
          }

          if (v37 < v71)
          {
            v34 = v31 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      a4 = v77;
      if (v6 >= v5)
      {
        v81 = v7;
        break;
      }
    }
  }

  if (!*v78)
  {
    goto LABEL_116;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v81, *v78, a3);
}

{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v98 = MEMORY[0x1E69E7CC0];
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v97 = result;
    do
    {
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v11 = (*v6 + 40 * v9);
        v12 = *v11;
        v13 = v11[1];
        v14 = v11 + 11;
        result = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v12, v13, *(*v6 + 40 * (v9 + 1)), *(*v6 + 40 * (v9 + 1) + 8));
        v15 = result;
        v16 = v9 + 2;
        while (v8 != v16)
        {
          result = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*(v14 - 6), *(v14 - 5), *(v14 - 1), *v14);
          ++v16;
          v14 += 5;
          if ((v15 & 1) != (result & 1))
          {
            v8 = v16 - 1;
            break;
          }
        }

        if (v15)
        {
          if (v8 < v9)
          {
            goto LABEL_107;
          }

          if (v9 < v8)
          {
            v17 = 40 * v8 - 8;
            v18 = 40 * v9 + 32;
            v19 = v8;
            v20 = v9;
            do
            {
              if (v20 != --v19)
              {
                v29 = *v6;
                if (!*v6)
                {
                  goto LABEL_112;
                }

                v21 = (v29 + v18);
                v22 = (v29 + v17);
                v23 = *(v21 - 4);
                v24 = *(v21 - 3);
                v25 = *v21;
                v26 = *(v21 - 1);
                v27 = *v22;
                v28 = *(v22 - 1);
                *(v21 - 2) = *(v22 - 2);
                *(v21 - 1) = v28;
                *v21 = v27;
                *(v22 - 4) = v23;
                *(v22 - 3) = v24;
                *(v22 - 1) = v26;
                *v22 = v25;
              }

              ++v20;
              v17 -= 40;
              v18 += 40;
            }

            while (v20 < v19);
          }
        }
      }

      v30 = v6[1];
      if (v8 >= v30)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v8, v9))
      {
        goto LABEL_106;
      }

      if (v8 - v9 >= a4)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_108;
      }

      if (v9 + a4 >= v30)
      {
        v31 = v6[1];
      }

      else
      {
        v31 = v9 + a4;
      }

      if (v31 < v9)
      {
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
        return result;
      }

      if (v8 == v31)
      {
LABEL_28:
        v31 = v8;
        if (v8 < v9)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v93 = v9;
        v94 = v5;
        v95 = v6;
        v79 = *v6;
        v80 = *v6 + 40 * v8 - 40;
        v81 = v9 - v8;
        do
        {
          v82 = v31;
          v83 = v81;
          v84 = v80;
          do
          {
            v85 = v84 + 40;
            result = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*v84, *(v84 + 8), *(v84 + 40), *(v84 + 48));
            if ((result & 1) == 0)
            {
              break;
            }

            if (!v79)
            {
              goto LABEL_110;
            }

            v87 = *(v84 + 40);
            v86 = *(v84 + 48);
            v88 = *(v84 + 72);
            v89 = *(v84 + 56);
            v90 = *(v84 + 16);
            v91 = *(v84 + 32);
            *v85 = *v84;
            *(v84 + 56) = v90;
            *v84 = v87;
            *(v84 + 8) = v86;
            *(v84 + 16) = v89;
            *(v84 + 32) = v88;
            v84 -= 40;
            *(v85 + 32) = v91;
          }

          while (!__CFADD__(v83++, 1));
          ++v8;
          v80 += 40;
          --v81;
          v31 = v82;
        }

        while (v8 != v82);
        v6 = v95;
        v7 = v97;
        v9 = v93;
        v5 = v94;
        if (v31 < v93)
        {
          goto LABEL_105;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v33 = *(v10 + 16);
      v32 = *(v10 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v34;
      v35 = v10 + 16 * v33;
      *(v35 + 32) = v9;
      *(v35 + 40) = v31;
      v98 = v10;
      v36 = *v7;
      if (!*v7)
      {
        goto LABEL_113;
      }

      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v38 = *(v10 + 32);
            v39 = *(v10 + 40);
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_48:
            if (v41)
            {
              goto LABEL_96;
            }

            v54 = (v10 + 16 * v34);
            v56 = *v54;
            v55 = v54[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = (v10 + 32 + 16 * v37);
            v62 = *v60;
            v61 = v60[1];
            v48 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v48)
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v63))
            {
              goto LABEL_103;
            }

            if (v58 + v63 >= v40)
            {
              if (v40 < v63)
              {
                v37 = v34 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v64 = (v10 + 16 * v34);
          v66 = *v64;
          v65 = v64[1];
          v48 = __OFSUB__(v65, v66);
          v58 = v65 - v66;
          v59 = v48;
LABEL_62:
          if (v59)
          {
            goto LABEL_98;
          }

          v67 = v10 + 16 * v37;
          v69 = *(v67 + 32);
          v68 = *(v67 + 40);
          v48 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v48)
          {
            goto LABEL_101;
          }

          if (v70 < v58)
          {
            goto LABEL_3;
          }

LABEL_69:
          v75 = v37 - 1;
          if (v37 - 1 >= v34)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          if (!*v6)
          {
            goto LABEL_111;
          }

          v76 = *(v10 + 32 + 16 * v75);
          v77 = *(v10 + 32 + 16 * v37 + 8);
          result = specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 40 * v76), (*v6 + 40 * *(v10 + 32 + 16 * v37)), *v6 + 40 * v77, v36);
          if (v5)
          {
          }

          if (v77 < v76)
          {
            goto LABEL_92;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            v10 = result;
          }

          if (v75 >= *(v10 + 16))
          {
            goto LABEL_93;
          }

          v78 = v10 + 16 * v75;
          *(v78 + 32) = v76;
          *(v78 + 40) = v77;
          v98 = v10;
          result = specialized Array.remove(at:)(v37);
          v34 = *(v10 + 16);
          if (v34 <= 1)
          {
            goto LABEL_3;
          }
        }

        v42 = v10 + 32 + 16 * v34;
        v43 = *(v42 - 64);
        v44 = *(v42 - 56);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_94;
        }

        v47 = *(v42 - 48);
        v46 = *(v42 - 40);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_95;
        }

        v49 = (v10 + 16 * v34);
        v51 = *v49;
        v50 = v49[1];
        v48 = __OFSUB__(v50, v51);
        v52 = v50 - v51;
        if (v48)
        {
          goto LABEL_97;
        }

        v48 = __OFADD__(v40, v52);
        v53 = v40 + v52;
        if (v48)
        {
          goto LABEL_100;
        }

        if (v53 >= v45)
        {
          v71 = (v10 + 32 + 16 * v37);
          v73 = *v71;
          v72 = v71[1];
          v48 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v48)
          {
            goto LABEL_104;
          }

          if (v40 < v74)
          {
            v37 = v34 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v8 = v6[1];
      v9 = v31;
      v7 = v97;
    }

    while (v31 < v8);
  }

  if (!*v7)
  {
    goto LABEL_114;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v98, *v7, v6);
}

{
  v4 = a3;
  v135 = result;
  v164 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = a4;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      v136 = v7;
      if (v7 + 1 < v5)
      {
        v10 = v7;
        v145 = v5;
        v133 = v8;
        v11 = *v4 + 32 * v9;
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        v15 = *(v11 + 24);
        v151 = *v4;
        v16 = *v4 + 32 * v7;
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v131 = *(v16 + 24);
        v20 = v12;
        v159 = v14;
        outlined copy of JSONEncoderValue(v13, v14, v15);
        v21 = v17;
        v155 = v18;
        outlined copy of JSONEncoderValue(v18, v19, v131);
        v148 = [v20 length];
        if (one-time initialization token for system != -1)
        {
          swift_once();
        }

        v22 = *(&static LocaleCache.system + 1);
        ObjectType = swift_getObjectType();
        v24 = *(v22 + 488);
        swift_unknownObjectRetain();
        v139 = ObjectType;
        v141 = v22;
        v137 = v24;
        v25 = v24(ObjectType, v22);
        v147 = [v20 compare:v21 options:577 range:0 locale:{v148, v25}];

        swift_unknownObjectRelease();
        outlined consume of JSONEncoderValue(v155, v19, v131);

        outlined consume of JSONEncoderValue(v13, v159, v15);
        v26 = 0;
        v132 = 32 * v10;
        v27 = v151 + 32 * v10 + 48;
        v28 = v10 + 2;
        do
        {
          v29 = v28;
          result = v26;
          v30 = v9;
          if (v28 >= v145)
          {
            break;
          }

          v32 = v27 + 32;
          v31 = *(v27 + 32);
          v33 = *(v27 + 24);
          v152 = v33;
          v34 = *(v27 - 16);
          v35 = *(v27 - 8);
          v36 = *v27;
          v37 = *(v27 + 40);
          v149 = v37;
          v38 = *(v27 + 8);
          v160 = v26;
          v162 = v28;
          v157 = v9;
          v39 = *(v27 + 16);
          outlined copy of JSONEncoderValue(v33, v31, v37);
          v40 = v34;
          outlined copy of JSONEncoderValue(v35, v36, v38);
          v41 = [v39 length];
          swift_unknownObjectRetain();
          v42 = v137(v139, v141);
          v43 = [v39 compare:v40 options:577 range:0 locale:{v41, v42}];

          swift_unknownObjectRelease();
          outlined consume of JSONEncoderValue(v35, v36, v38);

          outlined consume of JSONEncoderValue(v152, v31, v149);
          v30 = v157;
          result = v160;
          v29 = v162;
          v28 = v162 + 1;
          v26 = v160 + 32;
          v9 = v157 + 1;
          v27 = v32;
        }

        while ((v147 == -1) != (v43 != -1));
        v6 = a4;
        if (v147 == -1)
        {
          v44 = v136;
          if (v29 < v136)
          {
            goto LABEL_116;
          }

          v4 = a3;
          if (v136 >= v29)
          {
            v9 = v29;
            v8 = v133;
          }

          else
          {
            v45 = 0;
            v8 = v133;
            do
            {
              if (v44 != v30)
              {
                v49 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v50 = v49 + v132 + v45;
                v51 = v49 + v132 + result;
                v52 = *v50;
                v53 = *(v50 + 8);
                v54 = *(v50 + 24);
                if (v132 + v45 != v132 + result + 32 || v50 >= v51 + 64)
                {
                  v46 = *(v51 + 48);
                  *v50 = *(v51 + 32);
                  *(v50 + 16) = v46;
                }

                *(v51 + 32) = v52;
                v47 = v49 + v132 + result;
                *(v47 + 40) = v53;
                *(v47 + 56) = v54;
              }

              ++v44;
              result -= 32;
              v45 += 32;
            }

            while (v44 < v30--);
            v9 = v29;
          }
        }

        else
        {
          v9 = v29;
          v4 = a3;
          v8 = v133;
        }
      }

      v55 = v4[1];
      if (v9 >= v55)
      {
        goto LABEL_44;
      }

      if (__OFSUB__(v9, v136))
      {
        goto LABEL_113;
      }

      if (v9 - v136 >= v6)
      {
        goto LABEL_44;
      }

      if (__OFADD__(v136, v6))
      {
        goto LABEL_114;
      }

      if (v136 + v6 >= v55)
      {
        v56 = v4[1];
      }

      else
      {
        v56 = v136 + v6;
      }

      if (v56 < v136)
      {
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
        return result;
      }

      v57 = v136;
      if (v9 != v56)
      {
        break;
      }

LABEL_45:
      if (v9 < v57)
      {
        goto LABEL_112;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v83 = *(v8 + 16);
      v82 = *(v8 + 24);
      v84 = v83 + 1;
      if (v83 >= v82 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v84;
      v85 = v8 + 16 * v83;
      *(v85 + 32) = v136;
      *(v85 + 40) = v9;
      v164 = v8;
      v86 = *v135;
      if (!*v135)
      {
        goto LABEL_120;
      }

      v7 = v9;
      if (v83)
      {
        while (1)
        {
          v87 = v84 - 1;
          if (v84 >= 4)
          {
            break;
          }

          if (v84 == 3)
          {
            v88 = *(v8 + 32);
            v89 = *(v8 + 40);
            v98 = __OFSUB__(v89, v88);
            v90 = v89 - v88;
            v91 = v98;
LABEL_65:
            if (v91)
            {
              goto LABEL_103;
            }

            v104 = (v8 + 16 * v84);
            v106 = *v104;
            v105 = v104[1];
            v107 = __OFSUB__(v105, v106);
            v108 = v105 - v106;
            v109 = v107;
            if (v107)
            {
              goto LABEL_106;
            }

            v110 = (v8 + 32 + 16 * v87);
            v112 = *v110;
            v111 = v110[1];
            v98 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v98)
            {
              goto LABEL_109;
            }

            if (__OFADD__(v108, v113))
            {
              goto LABEL_110;
            }

            if (v108 + v113 >= v90)
            {
              if (v90 < v113)
              {
                v87 = v84 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          v114 = (v8 + 16 * v84);
          v116 = *v114;
          v115 = v114[1];
          v98 = __OFSUB__(v115, v116);
          v108 = v115 - v116;
          v109 = v98;
LABEL_79:
          if (v109)
          {
            goto LABEL_105;
          }

          v117 = v8 + 16 * v87;
          v119 = *(v117 + 32);
          v118 = *(v117 + 40);
          v98 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v98)
          {
            goto LABEL_108;
          }

          if (v120 < v108)
          {
            goto LABEL_3;
          }

LABEL_86:
          v125 = v87 - 1;
          if (v87 - 1 >= v84)
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
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
            goto LABEL_115;
          }

          if (!*v4)
          {
            goto LABEL_118;
          }

          v126 = *(v8 + 32 + 16 * v125);
          v127 = *(v8 + 32 + 16 * v87 + 8);
          result = specialized _merge<A>(low:mid:high:buffer:by:)((*v4 + 32 * v126), (*v4 + 32 * *(v8 + 32 + 16 * v87)), (*v4 + 32 * v127), v86);
          if (v144)
          {
          }

          if (v127 < v126)
          {
            goto LABEL_99;
          }

          v144 = 0;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
            v8 = result;
          }

          if (v125 >= *(v8 + 16))
          {
            goto LABEL_100;
          }

          v128 = v8 + 16 * v125;
          *(v128 + 32) = v126;
          *(v128 + 40) = v127;
          v164 = v8;
          result = specialized Array.remove(at:)(v87);
          v84 = *(v8 + 16);
          if (v84 <= 1)
          {
            goto LABEL_3;
          }
        }

        v92 = v8 + 32 + 16 * v84;
        v93 = *(v92 - 64);
        v94 = *(v92 - 56);
        v98 = __OFSUB__(v94, v93);
        v95 = v94 - v93;
        if (v98)
        {
          goto LABEL_101;
        }

        v97 = *(v92 - 48);
        v96 = *(v92 - 40);
        v98 = __OFSUB__(v96, v97);
        v90 = v96 - v97;
        v91 = v98;
        if (v98)
        {
          goto LABEL_102;
        }

        v99 = (v8 + 16 * v84);
        v101 = *v99;
        v100 = v99[1];
        v98 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v98)
        {
          goto LABEL_104;
        }

        v98 = __OFADD__(v90, v102);
        v103 = v90 + v102;
        if (v98)
        {
          goto LABEL_107;
        }

        if (v103 >= v95)
        {
          v121 = (v8 + 32 + 16 * v87);
          v123 = *v121;
          v122 = v121[1];
          v98 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v98)
          {
            goto LABEL_111;
          }

          if (v90 < v124)
          {
            v87 = v84 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_65;
      }

LABEL_3:
      v5 = v4[1];
      if (v7 >= v5)
      {
        goto LABEL_95;
      }
    }

    v134 = v8;
    v146 = *v4;
    v58 = *v4 + 32 * v9 + 24;
    v59 = v136 - v9;
    v138 = v56;
    do
    {
      v142 = v58;
      v143 = v9;
      v140 = v59;
      v60 = v59;
      do
      {
        v150 = (v58 - 24);
        v153 = v60;
        v61 = *(v58 - 16);
        v62 = *(v58 - 8);
        v63 = *v58;
        v64 = *(v58 - 56);
        v65 = *(v58 - 48);
        v66 = *(v58 - 40);
        v67 = *(v58 - 32);
        v68 = *(v58 - 24);
        v161 = v62;
        v163 = v61;
        v158 = v63;
        outlined copy of JSONEncoderValue(v61, v62, v63);
        v69 = v64;
        v156 = v65;
        v154 = v66;
        v70 = v66;
        v71 = v67;
        outlined copy of JSONEncoderValue(v65, v70, v67);
        v72 = [v68 length];
        if (one-time initialization token for system != -1)
        {
          swift_once();
        }

        v73 = *(&static LocaleCache.system + 1);
        v74 = swift_getObjectType();
        v75 = *(v73 + 488);
        swift_unknownObjectRetain();
        v76 = v75(v74, v73);
        v77 = [v68 compare:v69 options:577 range:0 locale:{v72, v76}];

        swift_unknownObjectRelease();
        outlined consume of JSONEncoderValue(v156, v154, v71);

        result = outlined consume of JSONEncoderValue(v163, v161, v158);
        if (v77 != -1)
        {
          break;
        }

        if (!v146)
        {
          goto LABEL_117;
        }

        v79 = *(v58 - 56);
        v78 = *(v58 - 40);
        *(v58 - 32) = *v58;
        v58 -= 32;
        v80 = *(v58 + 8);
        v81 = *(v58 + 16);
        *v150 = v79;
        v150[1] = v78;
        *(v58 - 24) = v80;
        *(v58 - 16) = v81;
        v60 = v153 + 1;
      }

      while (v153 != -1);
      v9 = v143 + 1;
      v58 = v142 + 32;
      v59 = v140 - 1;
    }

    while (v143 + 1 != v138);
    v9 = v138;
    v4 = a3;
    v6 = a4;
    v8 = v134;
LABEL_44:
    v57 = v136;
    goto LABEL_45;
  }

LABEL_95:
  if (!*v135)
  {
    goto LABEL_121;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v164, *v135, v4);
}

{
  v101 = result;
  v112 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v6++;
      v106 = v7;
      if (v6 < v5)
      {
        v9 = *a3;
        outlined init with copy of (key: String, value: Encodable)(*a3 + 56 * v6, &v110);
        outlined init with copy of (key: String, value: Encodable)(v9 + 56 * v8, &v108);
        if (v110 == v108 && v111 == v109)
        {
          v104 = 0;
        }

        else
        {
          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        outlined destroy of TermOfAddress?(&v108, &_sSS3key_SE_p5valuetMd);
        result = outlined destroy of TermOfAddress?(&v110, &_sSS3key_SE_p5valuetMd);
        v11 = v8 + 2;
        v99 = v8;
        v12 = 56 * v8;
        v13 = v9 + 56 * v8 + 112;
        v97 = v12;
        v14 = v12 + 56;
        v102 = v5;
        do
        {
          v17 = v11;
          v18 = v6;
          v19 = v14;
          if (v11 >= v5)
          {
            break;
          }

          outlined init with copy of (key: String, value: Encodable)(v13, &v110);
          outlined init with copy of (key: String, value: Encodable)(v13 - 56, &v108);
          v20 = v110 == v108 && v111 == v109;
          v15 = v20 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined destroy of TermOfAddress?(&v108, &_sSS3key_SE_p5valuetMd);
          result = outlined destroy of TermOfAddress?(&v110, &_sSS3key_SE_p5valuetMd);
          v16 = v104 ^ v15;
          v11 = v17 + 1;
          v13 += 56;
          ++v6;
          v14 = v19 + 56;
          v7 = v106;
          v5 = v102;
        }

        while ((v16 & 1) == 0);
        if (v104)
        {
          v8 = v99;
          if (v17 < v99)
          {
            goto LABEL_122;
          }

          if (v99 < v17)
          {
            v21 = v99;
            v22 = v97;
            do
            {
              if (v21 != v18)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v25 = (v24 + v22);
                v26 = *(v24 + v22 + 48);
                v27 = (v24 + v19);
                v29 = v25[1];
                v28 = v25[2];
                v30 = *v25;
                v32 = v27[1];
                v31 = v27[2];
                v33 = *v27;
                *(v25 + 6) = *(v27 + 6);
                v25[1] = v32;
                v25[2] = v31;
                *v25 = v33;
                *v27 = v30;
                v27[1] = v29;
                v27[2] = v28;
                *(v27 + 6) = v26;
              }

              ++v21;
              v19 -= 56;
              v22 += 56;
            }

            while (v21 < v18--);
          }

          v6 = v17;
        }

        else
        {
          v6 = v17;
          v8 = v99;
        }
      }

      v34 = a3[1];
      if (v6 < v34)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          v35 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v35 >= v34)
          {
            v35 = a3[1];
          }

          if (v35 < v8)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return result;
          }

          if (v6 != v35)
          {
            v36 = *a3;
            v37 = *a3 + 56 * v6;
            v103 = v35;
            v105 = v6;
            v100 = v8;
            v38 = v8 - v6;
            do
            {
              v39 = v38;
              v40 = v37;
              while (1)
              {
                outlined init with copy of (key: String, value: Encodable)(v40, &v110);
                v41 = v40 - 56;
                outlined init with copy of (key: String, value: Encodable)(v40 - 56, &v108);
                if (v110 == v108 && v111 == v109)
                {
                  break;
                }

                v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
                outlined destroy of TermOfAddress?(&v108, &_sSS3key_SE_p5valuetMd);
                result = outlined destroy of TermOfAddress?(&v110, &_sSS3key_SE_p5valuetMd);
                if ((v43 & 1) == 0)
                {
                  goto LABEL_41;
                }

                if (!v36)
                {
                  goto LABEL_125;
                }

                v44 = *(v40 + 48);
                v46 = *(v40 + 16);
                v45 = *(v40 + 32);
                v47 = *v40;
                v48 = *(v40 - 40);
                *v40 = *v41;
                *(v40 + 16) = v48;
                *(v40 + 32) = *(v40 - 24);
                *(v40 + 48) = *(v40 - 8);
                *v41 = v47;
                *(v40 - 40) = v46;
                *(v40 - 24) = v45;
                v40 -= 56;
                *(v41 + 48) = v44;
                if (__CFADD__(v39++, 1))
                {
                  goto LABEL_41;
                }
              }

              outlined destroy of TermOfAddress?(&v108, &_sSS3key_SE_p5valuetMd);
              result = outlined destroy of TermOfAddress?(&v110, &_sSS3key_SE_p5valuetMd);
LABEL_41:
              v37 += 56;
              --v38;
              ++v105;
            }

            while (v105 != v103);
            v6 = v103;
            v7 = v106;
            v8 = v100;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v51 = *(v7 + 2);
      v50 = *(v7 + 3);
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v52;
      v53 = &v7[16 * v51];
      *(v53 + 4) = v8;
      *(v53 + 5) = v6;
      v112 = v7;
      v54 = *v101;
      if (!*v101)
      {
        goto LABEL_128;
      }

      if (v51)
      {
        while (1)
        {
          v55 = v52 - 1;
          if (v52 >= 4)
          {
            break;
          }

          if (v52 == 3)
          {
            v56 = *(v7 + 4);
            v57 = *(v7 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_73:
            if (v59)
            {
              goto LABEL_111;
            }

            v72 = &v7[16 * v52];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_114;
            }

            v78 = &v7[16 * v55 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_118;
            }

            if (v76 + v81 >= v58)
            {
              if (v58 < v81)
              {
                v55 = v52 - 2;
              }

              goto LABEL_94;
            }

            goto LABEL_87;
          }

          v82 = &v7[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_87:
          if (v77)
          {
            goto LABEL_113;
          }

          v85 = &v7[16 * v55];
          v87 = *(v85 + 4);
          v86 = *(v85 + 5);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_116;
          }

          if (v88 < v76)
          {
            goto LABEL_3;
          }

LABEL_94:
          v93 = v55 - 1;
          if (v55 - 1 >= v52)
          {
            __break(1u);
LABEL_107:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v94 = *&v7[16 * v93 + 32];
          v95 = *&v7[16 * v55 + 40];
          result = specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 56 * v94), (*a3 + 56 * *&v7[16 * v55 + 32]), *a3 + 56 * v95, v54);
          if (v4)
          {
          }

          if (v95 < v94)
          {
            goto LABEL_107;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v7 = result;
          }

          if (v93 >= *(v7 + 2))
          {
            goto LABEL_108;
          }

          v96 = &v7[16 * v93];
          *(v96 + 4) = v94;
          *(v96 + 5) = v95;
          v112 = v7;
          result = specialized Array.remove(at:)(v55);
          v7 = v112;
          v52 = *(v112 + 2);
          if (v52 <= 1)
          {
            goto LABEL_3;
          }
        }

        v60 = &v7[16 * v52 + 32];
        v61 = *(v60 - 64);
        v62 = *(v60 - 56);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_109;
        }

        v65 = *(v60 - 48);
        v64 = *(v60 - 40);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_110;
        }

        v67 = &v7[16 * v52];
        v69 = *v67;
        v68 = *(v67 + 1);
        v66 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v66)
        {
          goto LABEL_112;
        }

        v66 = __OFADD__(v58, v70);
        v71 = v58 + v70;
        if (v66)
        {
          goto LABEL_115;
        }

        if (v71 >= v63)
        {
          v89 = &v7[16 * v55 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v66 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v66)
          {
            goto LABEL_119;
          }

          if (v58 < v92)
          {
            v55 = v52 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_73;
      }

LABEL_3:
      v5 = a3[1];
    }

    while (v6 < v5);
  }

  if (!*v101)
  {
    goto LABEL_129;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v112, *v101, a3);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, unsigned __int8 *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_62;
  }

  while (1)
  {
    *a1 = v4;
    v6 = *(v4 + 2);
    if (v6 < 2)
    {
      return 1;
    }

    while (1)
    {
      v7 = *a3;
      if (!*a3)
      {
        __break(1u);
        return result;
      }

      v37 = v6 - 1;
      v38 = v6;
      v8 = *&v4[16 * v6];
      v9 = &v4[16 * v6 - 16];
      v11 = *(v9 + 4);
      v10 = *(v9 + 5);
      v12 = (v7 + v8);
      v13 = (v7 + v11);
      v14 = (v7 + v10);
      v15 = v8;
      v16 = v11 - v8;
      v39 = v10;
      v17 = v10 - v11;
      if (v11 - v8 >= v10 - v11)
      {
        if (v13 != a2 || v14 <= a2)
        {
          memmove(a2, (v7 + v11), v10 - v11);
        }

        v19 = &a2[v17];
        if (v17 < 1 || v11 <= v15)
        {
          v22 = a2;
          v21 = v39;
        }

        else
        {
          v21 = v39;
LABEL_37:
          v28 = v13 - 1;
          --v14;
          v29 = v19;
          do
          {
            v30 = v14 + 1;
            v32 = *--v29;
            v31 = v32;
            v33 = *v28;
            if (v32 < v33)
            {
              if (v30 < v13 || v14 >= v13)
              {
                *v14 = v33;
              }

              if (v19 <= a2 || (--v13, v12 >= v28))
              {
                v22 = a2;
                v13 = v28;
                goto LABEL_51;
              }

              goto LABEL_37;
            }

            if (v30 < v19 || v14 >= v19)
            {
              *v14 = v31;
            }

            --v14;
            v19 = v29;
          }

          while (v29 > a2);
          v19 = v29;
          v22 = a2;
        }
      }

      else
      {
        if (v12 != a2 || v13 <= a2)
        {
          memmove(a2, (v7 + v8), v11 - v8);
        }

        v19 = &a2[v16];
        v20 = v16 < 1 || v39 <= v11;
        v21 = v39;
        v22 = a2;
        if (!v20)
        {
          while (1)
          {
            v23 = *v13;
            if (v23 >= *v22)
            {
              v25 = v22 + 1;
              LOBYTE(v23) = *v22;
              v24 = v13;
              if (v12 < v22)
              {
                ++v22;
              }

              else
              {
                ++v22;
                if (v12 < v25)
                {
                  goto LABEL_23;
                }
              }
            }

            else
            {
              v24 = v13 + 1;
              if (v12 >= v13 && v12 < v24)
              {
                goto LABEL_23;
              }
            }

            *v12 = v23;
LABEL_23:
            ++v12;
            if (v22 < v19)
            {
              v13 = v24;
              if (v24 < v14)
              {
                continue;
              }
            }

            break;
          }
        }

        v13 = v12;
      }

LABEL_51:
      if (v13 != v22 || v13 >= v19)
      {
        memmove(v13, v22, v19 - v22);
      }

      if (v21 < v15)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      }

      if ((v38 - 2) >= *(v4 + 2))
      {
        goto LABEL_61;
      }

      v34 = &v4[16 * v38];
      *v34 = v15;
      *(v34 + 1) = v21;
      *a1 = v4;
      result = specialized Array.remove(at:)(v37);
      v4 = *a1;
      v6 = *(*a1 + 2);
      if (v6 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }
}