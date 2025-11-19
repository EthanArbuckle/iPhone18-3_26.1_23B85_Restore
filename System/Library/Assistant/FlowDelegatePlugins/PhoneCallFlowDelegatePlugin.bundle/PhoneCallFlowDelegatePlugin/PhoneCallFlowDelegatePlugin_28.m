Swift::Bool __swiftcall PhoneCallNLIntent.isJoinCall()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_27_22();
  if (v5)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isRemoveParticipant()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v7)
  {
    v4 = 0;
  }

  else
  {
    v5 = PhoneCallVerb.rawValue.getter(v3);
    v7 = v5 == 0xD000000000000011 && 0x8000000000453820 == v6;
    if (v7)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v4 & 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasReadVerb()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_27_22();
  if (v5)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isSearchCallOrVoiceMail()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.isFind()())
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_20_0();
  if (PhoneCallNLIntent.hasReadVerb()())
  {
    v1 = OUTLINED_FUNCTION_14_45();
    v2(v1);
    OUTLINED_FUNCTION_43_19();
    if (v3)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_20_0();
  if (PhoneCallNLIntent.hasCallVerb()())
  {
    v4 = OUTLINED_FUNCTION_14_45();
    v5(v4);
    OUTLINED_FUNCTION_43_19();
    if (!v3)
    {
LABEL_14:
      OUTLINED_FUNCTION_20_0();
      if (!PhoneCallNLIntent.isIncomingCallSearch()())
      {
        return 1;
      }
    }
  }

  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.hasVoiceMail()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isSearchCallHistoryWithDate()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_57_15(v1, v2);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_8_2();
    if (PhoneCallNLIntent.isFind()())
    {
      v6 = (v5 + 32);
      v7 = *(v5 + 16);
      while (2)
      {
        if (v7-- != 0)
        {
          switch(*v6)
          {
            case 1:
              OUTLINED_FUNCTION_53_18();
              goto LABEL_19;
            case 2:
              OUTLINED_FUNCTION_19_30();
              goto LABEL_19;
            case 3:
              OUTLINED_FUNCTION_4_7();
              goto LABEL_19;
            case 4:
              OUTLINED_FUNCTION_7_53();
              goto LABEL_19;
            case 5:
              OUTLINED_FUNCTION_11_42();
              goto LABEL_19;
            case 6:
              OUTLINED_FUNCTION_110_3();
              goto LABEL_19;
            case 7:
              OUTLINED_FUNCTION_6_59();
              goto LABEL_19;
            case 8:
              OUTLINED_FUNCTION_9_52();
              goto LABEL_19;
            case 9:
              OUTLINED_FUNCTION_5_64();
              goto LABEL_19;
            case 0xA:
              OUTLINED_FUNCTION_13_41();
              goto LABEL_19;
            case 0xB:

              break;
            case 0xC:
              OUTLINED_FUNCTION_8_9();
              goto LABEL_19;
            case 0xD:
              OUTLINED_FUNCTION_54_18();
              goto LABEL_19;
            default:
LABEL_19:
              OUTLINED_FUNCTION_111_4();
              OUTLINED_FUNCTION_62_15();
              ++v6;
              if (v0)
              {
                break;
              }

              continue;
          }
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_65();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isSearchCallHistoryWithAppName()()
{
  OUTLINED_FUNCTION_24_3();
  PhoneCallNLIntent.applicationId.getter(v1, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_20_0();
  v6 = PhoneCallNLIntent.applicationId.getter(v4, v5);
  if (v7)
  {
    if (v6 == 0xD000000000000015 && v7 == 0x8000000000452BD0)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_62_15();
      if ((v0 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.isFind()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isSearchCallHistoryWithUnsupportedAttribute()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_57_15(v1, v2);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_8_2();
    if (PhoneCallNLIntent.isFind()())
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        OUTLINED_FUNCTION_93_6();
        v7 = (v5 + 32);
        v8 = (v5 + 32);
        while (v6)
        {
          switch(*v8)
          {
            case 1:
            case 2:
            case 8:
              break;
            case 3:
              OUTLINED_FUNCTION_4_7();
              break;
            case 4:
              OUTLINED_FUNCTION_7_53();
              break;
            case 5:
              OUTLINED_FUNCTION_11_42();
              break;
            case 6:
              OUTLINED_FUNCTION_110_3();
              break;
            case 7:
              OUTLINED_FUNCTION_6_59();
              break;
            case 9:
              OUTLINED_FUNCTION_5_64();
              break;
            case 0xA:
              OUTLINED_FUNCTION_13_41();
              break;
            case 0xB:
              OUTLINED_FUNCTION_12_46();
              break;
            case 0xC:
              OUTLINED_FUNCTION_8_9();
              break;
            case 0xD:
              OUTLINED_FUNCTION_54_18();
              break;
            default:
              goto LABEL_70;
          }

          OUTLINED_FUNCTION_76_6();
          OUTLINED_FUNCTION_80_5();
          ++v8;
          --v6;
          if (v0)
          {
            goto LABEL_52;
          }
        }

        v9 = *(v5 + 16);
        v10 = (v5 + 32);
        while (v9)
        {
          switch(*v10)
          {
            case 1:
              OUTLINED_FUNCTION_53_18();
              break;
            case 3:
              OUTLINED_FUNCTION_4_7();
              break;
            case 4:
              OUTLINED_FUNCTION_7_53();
              break;
            case 5:
              OUTLINED_FUNCTION_11_42();
              break;
            case 6:
              goto LABEL_70;
            case 7:
              OUTLINED_FUNCTION_6_59();
              break;
            case 9:
              OUTLINED_FUNCTION_5_64();
              break;
            case 0xA:
              OUTLINED_FUNCTION_13_41();
              break;
            case 0xB:
              OUTLINED_FUNCTION_12_46();
              break;
            case 0xC:
              OUTLINED_FUNCTION_8_9();
              break;
            case 0xD:
              OUTLINED_FUNCTION_54_18();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_101_3();
          OUTLINED_FUNCTION_59_8();
          OUTLINED_FUNCTION_80_5();
          ++v10;
          --v9;
          if (v0)
          {
            goto LABEL_52;
          }
        }

        v11 = *(v5 + 16);
        v12 = (v5 + 32);
        while (v11)
        {
          switch(*v12)
          {
            case 1:
              OUTLINED_FUNCTION_53_18();
              break;
            case 2:
              goto LABEL_70;
            case 3:
              OUTLINED_FUNCTION_4_7();
              break;
            case 4:
              OUTLINED_FUNCTION_7_53();
              break;
            case 5:
              OUTLINED_FUNCTION_11_42();
              break;
            case 6:
              OUTLINED_FUNCTION_110_3();
              break;
            case 7:
              OUTLINED_FUNCTION_6_59();
              break;
            case 9:
              OUTLINED_FUNCTION_5_64();
              break;
            case 0xA:
              OUTLINED_FUNCTION_13_41();
              break;
            case 0xB:
              OUTLINED_FUNCTION_12_46();
              break;
            case 0xC:
              OUTLINED_FUNCTION_8_9();
              break;
            case 0xD:
              OUTLINED_FUNCTION_54_18();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_76_6();
          OUTLINED_FUNCTION_80_5();
          ++v12;
          --v11;
          if (v0)
          {
            goto LABEL_52;
          }
        }

        v14 = *(v5 + 16);
        while (v14)
        {
          switch(*v7)
          {
            case 1:
              OUTLINED_FUNCTION_24_27();
              goto LABEL_69;
            case 3:
              OUTLINED_FUNCTION_4_7();
              goto LABEL_69;
            case 4:
              OUTLINED_FUNCTION_7_53();
              goto LABEL_69;
            case 5:
              OUTLINED_FUNCTION_11_42();
              goto LABEL_69;
            case 6:
              OUTLINED_FUNCTION_110_3();
              goto LABEL_69;
            case 7:
              OUTLINED_FUNCTION_6_59();
              goto LABEL_69;
            case 8:
LABEL_70:

              goto LABEL_52;
            case 9:
              OUTLINED_FUNCTION_5_64();
              goto LABEL_69;
            case 0xA:
              OUTLINED_FUNCTION_13_41();
              goto LABEL_69;
            case 0xB:
              OUTLINED_FUNCTION_12_46();
              goto LABEL_69;
            case 0xC:
              OUTLINED_FUNCTION_2_81();
              goto LABEL_69;
            case 0xD:
              OUTLINED_FUNCTION_54_18();
              goto LABEL_69;
            default:
LABEL_69:
              OUTLINED_FUNCTION_86_6();
              OUTLINED_FUNCTION_113_0();
              ++v7;
              --v14;
              break;
          }
        }
      }
    }

LABEL_52:
  }

  OUTLINED_FUNCTION_65();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isWhoJustCalled()()
{
  OUTLINED_FUNCTION_10_55();
  v3 = (*(v2 + 40))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.isFind()())
    {
      goto LABEL_42;
    }

    v5 = *(v4 + 16);
    v6 = (v4 + 32);
    v7 = (v4 + 32);
    while (2)
    {
      if (v5)
      {
        switch(*v7)
        {
          case 1:
            OUTLINED_FUNCTION_24_27();
            goto LABEL_18;
          case 2:
            OUTLINED_FUNCTION_19_30();
            goto LABEL_18;
          case 3:
            OUTLINED_FUNCTION_4_7();
            goto LABEL_18;
          case 4:
            OUTLINED_FUNCTION_7_53();
            goto LABEL_18;
          case 5:
            OUTLINED_FUNCTION_11_42();
            goto LABEL_18;
          case 6:

            goto LABEL_19;
          case 7:
            OUTLINED_FUNCTION_6_59();
            goto LABEL_18;
          case 8:
            OUTLINED_FUNCTION_9_52();
            goto LABEL_18;
          case 9:
            OUTLINED_FUNCTION_5_64();
            goto LABEL_18;
          case 0xA:
            OUTLINED_FUNCTION_13_41();
            goto LABEL_18;
          case 0xB:
            OUTLINED_FUNCTION_12_46();
            goto LABEL_18;
          case 0xC:
            OUTLINED_FUNCTION_2_81();
            goto LABEL_18;
          case 0xD:
            OUTLINED_FUNCTION_54_18();
            goto LABEL_18;
          default:
LABEL_18:
            OUTLINED_FUNCTION_101_3();
            OUTLINED_FUNCTION_59_8();
            OUTLINED_FUNCTION_113_0();
            ++v7;
            --v5;
            if ((v1 & 1) == 0)
            {
              continue;
            }

LABEL_19:
            v8 = *(v4 + 16);
            while (2)
            {
              if (!v8)
              {
                goto LABEL_42;
              }

              switch(*v6)
              {
                case 1:
                  OUTLINED_FUNCTION_24_27();
                  goto LABEL_34;
                case 2:
                  OUTLINED_FUNCTION_19_30();
                  goto LABEL_34;
                case 3:
                  OUTLINED_FUNCTION_4_7();
                  goto LABEL_34;
                case 4:

                  goto LABEL_35;
                case 5:
                  OUTLINED_FUNCTION_11_42();
                  goto LABEL_34;
                case 7:
                  OUTLINED_FUNCTION_6_59();
                  goto LABEL_34;
                case 8:
                  OUTLINED_FUNCTION_9_52();
                  goto LABEL_34;
                case 9:
                  OUTLINED_FUNCTION_5_64();
                  goto LABEL_34;
                case 0xA:
                  OUTLINED_FUNCTION_13_41();
                  goto LABEL_34;
                case 0xB:
                  OUTLINED_FUNCTION_12_46();
                  goto LABEL_34;
                case 0xC:
                  OUTLINED_FUNCTION_2_81();
                  goto LABEL_34;
                case 0xD:
                  OUTLINED_FUNCTION_54_18();
                  goto LABEL_34;
                default:
LABEL_34:
                  _stringCompareWithSmolCheck(_:_:expecting:)();
                  OUTLINED_FUNCTION_113_0();
                  ++v6;
                  --v8;
                  if ((v1 & 1) == 0)
                  {
                    continue;
                  }

LABEL_35:

                  v9 = *(v0 + 80);
                  v10 = OUTLINED_FUNCTION_20_0();
                  v11(v10);
                  OUTLINED_FUNCTION_69_9();
                  if (v14)
                  {
                    goto LABEL_43;
                  }

                  PhoneCallNoun.rawValue.getter(v12);
                  OUTLINED_FUNCTION_27_22();
                  v14 = v14 && v13 == 0xE400000000000000;
                  if (v14)
                  {
                  }

                  else
                  {
                    OUTLINED_FUNCTION_17_34();
                    OUTLINED_FUNCTION_33_2();
                  }

                  LOBYTE(v3) = 1;
                  break;
              }

              break;
            }

            break;
        }
      }

      else
      {
LABEL_42:

LABEL_43:
        LOBYTE(v3) = 0;
      }

      break;
    }
  }

  return v3;
}

__C::INCallRecordTypeOptions_optional __swiftcall PhoneCallNLIntent.getCallRecordTypeOption(attr:)(PhoneCallFlowDelegatePlugin::PhoneCallAttribute attr)
{
  v1 = attr;
  v2 = 0;
  v3 = 2;
  switch(v1)
  {
    case 0:
      break;
    case 4:
      v2 = 0;
      v3 = 4;
      break;
    case 5:
      v2 = 0;
      v3 = 1;
      break;
    case 6:
      v2 = 0;
      v3 = 8;
      break;
    case 8:
      v2 = 0;
      v3 = 64;
      break;
    case 9:
      v2 = 0;
      v3 = 32;
      break;
    case 10:
      v2 = 0;
      v3 = 128;
      break;
    default:
      v3 = 0;
      v2 = 1;
      break;
  }

  result.value.rawValue = v3;
  result.is_nil = v2;
  return result;
}

unint64_t PhoneCallNLIntent.getCallRecordType()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_57_15(a1, a2);
  result = v5();
  if (result)
  {
    v7 = result;
    __chkstk_darwin(result);
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = v2;
    result = specialized Collection.firstIndex(where:)(partial apply for closure #1 in PhoneCallNLIntent.getCallRecordType(), v10, v7);
    if (v8)
    {

      return 0;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v7 + 16))
    {
      v9 = *(v7 + result + 32);

      return PhoneCallNLIntent.getCallRecordType(attr:)(v9);
    }

    __break(1u);
  }

  return result;
}

uint64_t PhoneCallNLIntent.getCallRecordType(attr:)(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_43CD28[a1];
  }
}

BOOL static PhoneCallNLIntent.isAppModified(previousNLIntent:currentNLIntent:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = OUTLINED_FUNCTION_1_83(a2);
  v8 = PhoneCallNLIntent.applicationId.getter(v6, v7);
  specialized Optional<A>.isNilOrEmpty.getter(v8, v9);
  OUTLINED_FUNCTION_20_2();
  if ((v5 & 1) == 0)
  {
    v17 = a2[3];
    v18 = a2[4];
    v19 = OUTLINED_FUNCTION_1_83(a2);
    v21 = PhoneCallNLIntent.applicationId.getter(v19, v20);
    v23 = v22;
    v24 = a1[3];
    v25 = a1[4];
    v26 = OUTLINED_FUNCTION_86(a1);
    v27 = PhoneCallNLIntent.applicationId.getter(v26, v25);
    if (v23)
    {
      if (!v28)
      {
        goto LABEL_26;
      }

      if (v21 == v27 && v23 == v28)
      {
      }

      else
      {
        OUTLINED_FUNCTION_79_6();
        OUTLINED_FUNCTION_62_15();

        if ((v21 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else if (v28)
    {
      goto LABEL_26;
    }
  }

  v10 = a2[3];
  v11 = a2[4];
  v12 = OUTLINED_FUNCTION_1_83(a2);
  v14 = PhoneCallNLIntent.appName.getter(v12, v13);
  specialized Optional<A>.isNilOrEmpty.getter(v14, v15);
  OUTLINED_FUNCTION_20_2();
  if (v11)
  {
    return 0;
  }

  v30 = a2[3];
  v31 = a2[4];
  v32 = OUTLINED_FUNCTION_1_83(a2);
  v34 = PhoneCallNLIntent.appName.getter(v32, v33);
  v36 = v35;
  v37 = a1[3];
  v38 = a1[4];
  v39 = OUTLINED_FUNCTION_86(a1);
  v40 = PhoneCallNLIntent.appName.getter(v39, v38);
  if (!v36)
  {
    if (!v41)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (!v41)
  {
LABEL_26:

    return 1;
  }

  if (v34 == v40 && v36 == v41)
  {

    return 0;
  }

  OUTLINED_FUNCTION_8_2();
  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v43 & 1) == 0;
}

void static PhoneCallNLIntent.isPhoneCallVerbModified(previousNLIntent:currentNLIntent:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 104);
  v5(v3, v4);
  OUTLINED_FUNCTION_20_31();
  if (v13)
  {
    v5(v3, v4);
    OUTLINED_FUNCTION_20_31();
    if (!v13)
    {
      v7 = (v5)(v3, v4);
      v8 = *(v1 + 24);
      v9 = *(v1 + 32);
      v10 = OUTLINED_FUNCTION_55_0();
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v12 = (*(v9 + 104))(v8, v9);
      v13 = v7 == 17 || v12 == 17;
      if (!v13)
      {
        v14 = v12;
        v15 = PhoneCallVerb.rawValue.getter(v7);
        v17 = v16;
        if (v15 != PhoneCallVerb.rawValue.getter(v14) || v17 != v18)
        {
          OUTLINED_FUNCTION_20_0();
          OUTLINED_FUNCTION_79_6();
        }
      }
    }
  }

  else
  {
    v20 = PhoneCallVerb.rawValue.getter(v6);
    if (v20 == 1819042147 && v21 == 0xE400000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_80_5();
    }
  }

  OUTLINED_FUNCTION_60_1();
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasUnsupportedSearchCallHistoryParameter()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  OUTLINED_FUNCTION_57_15(v0, v1);
  if (!v6())
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  v9 = &dword_54B000;
LABEL_3:
  v10 = v8;
  do
  {
    v11 = *(&outlined read-only object #0 of PhoneCallNLIntent.hasUnsupportedSearchCallHistoryParameter() + v10 + 32);
    v8 = v10 + 1;
    specialized Sequence<>.contains(_:)();
    if (v12)
    {
      if (*(v9 + 369) != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.siriPhone);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v26 = v4;
        v16 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v27 = v24;
        *v16 = 136315138;
        v17 = PhoneCallAttribute.rawValue.getter(v11);
        v25 = v5;
        v19 = v3;
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

        *(v16 + 4) = v20;
        v3 = v19;
        v5 = v25;
        _os_log_impl(&dword_0, v14, v15, "#PhoneCallNLIntent find unsupported search call history parameter %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_26_0();
        v4 = v26;
        OUTLINED_FUNCTION_26_0();
      }

      v7 = 1;
      v9 = &dword_54B000;
      if (v10 == 2)
      {

        goto LABEL_20;
      }

      goto LABEL_3;
    }

    ++v10;
  }

  while (v8 != 3);

  if ((v7 & 1) == 0 && !PhoneCallNLIntent.hasPhoneNumber()() && ((*(v4 + 56))(v5, v4), OUTLINED_FUNCTION_43_19(), v21))
  {
    OUTLINED_FUNCTION_105_4();

    return PhoneCallNLIntent.isSearchCallHistoryWithAppName()();
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_105_4();
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasOnlyCallVerb()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_24_3();
  v2 = *(v1 + 104);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v6)
  {
    v4 = OUTLINED_FUNCTION_20_0();
    (v2)(v4);
    OUTLINED_FUNCTION_20_31();
    if (!v6)
    {
      OUTLINED_FUNCTION_37_21();
      PhoneCallVerb.rawValue.getter(v9);
      OUTLINED_FUNCTION_42_17();
      if (v10)
      {
        v12 = v11 == 0xE800000000000000;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_40_4();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_62_15();
      if (v0)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_60_1();
    return result;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_42_17();
  if (v6)
  {
    v8 = v7 == 0xE400000000000000;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
LABEL_17:

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_62_15();
LABEL_18:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_60_1();

  return PhoneCallNLIntent.hasNoContactOrReference()();
}

id @nonobjc INCallGroup.init(groupName:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  OUTLINED_FUNCTION_8_2();
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithGroupName:v6 groupId:v7];

  return v8;
}

uint64_t outlined destroy of PhoneCallApp?(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_104_2(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

BOOL partial apply for closure #1 in PhoneCallNLIntent.getCallRecordType()(unsigned __int8 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return PhoneCallNLIntent.getCallRecordType(attr:)(*a1) == 0;
}

unint64_t lazy protocol witness table accessor for type PhoneCallAVMode and conformance PhoneCallAVMode()
{
  result = lazy protocol witness table cache variable for type PhoneCallAVMode and conformance PhoneCallAVMode;
  if (!lazy protocol witness table cache variable for type PhoneCallAVMode and conformance PhoneCallAVMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAVMode and conformance PhoneCallAVMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute()
{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute()
{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallCapability and conformance PhoneCallCapability()
{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider()
{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallConfirmation and conformance PhoneCallConfirmation()
{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallNoun and conformance PhoneCallNoun()
{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallReference and conformance PhoneCallReference()
{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallContactReference and conformance PhoneCallContactReference()
{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallVerb and conformance PhoneCallVerb()
{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun()
{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb()
{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallDestinationType and conformance PhoneCallDestinationType()
{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3()
{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PhoneCallAttribute] and conformance [A](unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_104_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallContactRole and conformance PhoneCallContactRole()
{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole and conformance PhoneCallContactRole;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole and conformance PhoneCallContactRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole and conformance PhoneCallContactRole);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallAudioRoute(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallNoun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallContactReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallContactReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallVerb(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PhoneCallAVMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_84_6(v8);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallAVMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceMail.VoiceMailVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
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
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 5);
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

  return OUTLINED_FUNCTION_84_6(v8);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallPreferredProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
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
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_84_6(v8);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallPreferredProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_19()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_79_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_80_5()
{
}

uint64_t OUTLINED_FUNCTION_85_4()
{

  return outlined init with copy of SharedGlobalsProviding();
}

uint64_t OUTLINED_FUNCTION_86_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_108_3()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_111_4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12SiriOntology21NonTerminalIntentNodeV_s5NeverO27PhoneCallFlowDelegatePlugin0jK3App_pTg5@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v17[1] = a2;
  v18 = a1;
  v7 = type metadata accessor for NonTerminalIntentNode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v17 - v14;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v5, v17 - v14, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  result = __swift_getEnumTagSinglePayload(v15, 1, v7);
  if (result == 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    v18(v11);
    result = (*(v8 + 8))(v11, v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static PhoneCallNLv3Intent.placeCall()@<X0>(uint64_t a1@<X8>)
{
  return static PhoneCallNLv3Intent.placeCall()(a1);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_29_3();
  v7 = type metadata accessor for TerminalIntentNode();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  TerminalElement.SemanticValue.init(_:javaPojoName:)();
  v16 = enum case for TerminalElement.Value.semantic(_:);
  v17 = type metadata accessor for TerminalElement.Value();
  OUTLINED_FUNCTION_23_1(v17);
  (*(v18 + 104))(v1, v16, v17);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v17);
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_0_66();
  TerminalIntentNode.init(name:value:semanticTags:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_424FD0;
  *(v19 + 56) = v7;
  *(v19 + 64) = &protocol witness table for TerminalIntentNode;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  (*(v10 + 16))(boxed_opaque_existential_1, v15, v7);
  static PhoneCallNLv3Intent.phoneCallNLv3Intent(_:)(a1);

  v21 = *(v10 + 8);
  v22 = OUTLINED_FUNCTION_23_6();
  return v23(v22);
}

uint64_t specialized PhoneCallNLIntent.hasVideoCallSemantic()()
{
  v1 = type metadata accessor for PhoneCallNLv3Intent(0);
  v2 = *(v0 + *(v1 + 56));
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v17 == 9)
  {
    v3 = 0;
  }

  else if (PhoneCallNoun.rawValue.getter(v17) == 0x656D697465636166 && v4 == 0xE800000000000000)
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v6 = *(v0 + *(v1 + 60));
  IntentNodeTraversable.value<A>(forNode:)();
  if (v16 == 17)
  {
    v7 = 0;
  }

  else if (PhoneCallVerb.rawValue.getter(v16) == 0x656D697465636166 && v8 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v15 == 9)
  {
    v10 = 0;
  }

  else if (PhoneCallNoun.rawValue.getter(v15) == 0x61665F70756F7267 && v11 == 0xEE00656D69746563)
  {

    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (v3)
  {
    v13 = 1;
  }

  else
  {
    v13 = v7 | v10;
  }

  return v13 & 1;
}

uint64_t specialized PhoneCallNLIntent.hasAudioCallSemantic()()
{
  v1 = type metadata accessor for PhoneCallNLv3Intent(0);
  v2 = *(v0 + *(v1 + 56));
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v12 == 9)
  {
    v3 = 0;
  }

  else if (PhoneCallNoun.rawValue.getter(v12) == 0x656D697465636166 && v4 == 0xEE006F6964756120)
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v6 = *(v0 + *(v1 + 60));
  IntentNodeTraversable.value<A>(forNode:)();
  if (v11 == 17)
  {
    v7 = 0;
  }

  else if (PhoneCallVerb.rawValue.getter(v11) == 0x656D697465636166 && v8 == 0xEE006F6964756120)
  {

    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return (v3 | v7) & 1;
}

uint64_t *PhoneCallNLv3Intent.callId.unsafeMutableAddressor()
{
  if (one-time initialization token for callId != -1)
  {
    OUTLINED_FUNCTION_43_20();
  }

  return &static PhoneCallNLv3Intent.callId;
}

uint64_t PhoneCallNLv3Intent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhoneCallNLv3Intent(0);
  v5 = v4[5];
  v6 = type metadata accessor for AppOntologyNode();
  v85 = OUTLINED_FUNCTION_12_8(v6);
  swift_allocObject();
  v7 = AppOntologyNode.init(name:multicardinal:)();
  *(a2 + v5) = v7;
  v8 = v4[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR);
  v83 = OUTLINED_FUNCTION_12_8(v9);
  swift_allocObject();
  v84 = v7;

  OUTLINED_FUNCTION_51_20();
  v10 = TerminalOntologyNode.init(name:multicardinal:)();
  OUTLINED_FUNCTION_73_5(v10);
  v11 = v4[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMR);
  v81 = OUTLINED_FUNCTION_12_8(v12);
  swift_allocObject();
  v82 = v7;

  OUTLINED_FUNCTION_51_20();
  v13 = TerminalOntologyNode.init(name:multicardinal:)();
  OUTLINED_FUNCTION_73_5(v13);
  v14 = v4[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMR);
  v77 = OUTLINED_FUNCTION_12_8(v15);
  swift_allocObject();
  v80 = v7;

  OUTLINED_FUNCTION_51_20();
  v16 = TerminalOntologyNode.init(name:multicardinal:)();
  OUTLINED_FUNCTION_73_5(v16);
  v17 = v4[10];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMR);
  v72 = OUTLINED_FUNCTION_12_8(v18);
  swift_allocObject();
  v75 = v7;

  v19 = TerminalOntologyNode.init(name:multicardinal:)();
  OUTLINED_FUNCTION_73_5(v19);
  v20 = v4[11];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMR);
  v67 = OUTLINED_FUNCTION_12_8(v21);
  swift_allocObject();
  v70 = v7;

  v22 = TerminalOntologyNode.init(name:multicardinal:)();
  *(a2 + v20) = v22;
  v23 = v4[12];
  v24 = type metadata accessor for PhoneCallContactOntologyNode(0);
  v74 = OUTLINED_FUNCTION_12_8(v24);
  swift_allocObject();

  v25 = PhoneCallContactOntologyNode.init(name:multicardinal:)();
  *(a2 + v23) = v25;
  v26 = v4[13];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v79 = OUTLINED_FUNCTION_12_8(v27);
  swift_allocObject();
  v69 = v25;

  v28 = TerminalOntologyNode.init(name:multicardinal:)();
  *(a2 + v26) = v28;
  v29 = v4[14];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMR);
  v71 = OUTLINED_FUNCTION_12_8(v30);
  swift_allocObject();
  v73 = v28;

  v31 = TerminalOntologyNode.init(name:multicardinal:)();
  *(a2 + v29) = v31;
  v32 = v4[15];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMR);
  v78 = OUTLINED_FUNCTION_12_8(v33);
  swift_allocObject();
  v68 = v31;

  OUTLINED_FUNCTION_0_66();
  v34 = TerminalOntologyNode.init(name:multicardinal:)();
  *(a2 + v32) = v34;
  v35 = v4[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_424FF0;
  v37 = one-time initialization token for voiceMailNoun;
  v76 = v34;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = static VoiceMail.voiceMailNoun;
  *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4NounOGMR);
  OUTLINED_FUNCTION_2_14();
  *(v36 + 64) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v39, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4NounOGMR);
  *(v36 + 32) = v38;
  v40 = one-time initialization token for voiceMailVerb;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = static VoiceMail.voiceMailVerb;
  *(v36 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4VerbOGMR);
  *(v36 + 104) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceMail.VoiceMailVerb> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4VerbOGMR);
  *(v36 + 72) = v41;
  v42 = type metadata accessor for NonTerminalOntologyNode();
  v66 = OUTLINED_FUNCTION_12_8(v42);
  swift_allocObject();

  v43 = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  *(a2 + v35) = v43;
  v44 = v4[17];
  v45 = type metadata accessor for SmsGroupOntologyNode(0);
  OUTLINED_FUNCTION_12_8(v45);
  swift_allocObject();
  v64 = v43;

  v46 = SmsGroupOntologyNode.init(name:multicardinal:)();
  *(a2 + v44) = v46;
  v47 = type metadata accessor for NLIntent();
  v48 = *(v47 - 8);
  v65 = v47;
  (*(v48 + 16))(a2, a1);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_43CD80;
  *(v49 + 56) = v85;
  *(v49 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v49 + 32) = v84;
  *(v49 + 96) = v83;
  *(v49 + 104) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallAttribute> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR);
  *(v49 + 72) = v82;
  *(v49 + 136) = v81;
  *(v49 + 144) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallAudioRoute> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMR);
  *(v49 + 112) = v80;
  *(v49 + 176) = v77;
  *(v49 + 184) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallCapability> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMR);
  *(v49 + 152) = v75;
  *(v49 + 216) = v72;
  *(v49 + 224) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallPreferredProvider> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMR);
  *(v49 + 192) = v70;
  *(v49 + 256) = v67;
  *(v49 + 264) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallDestinationType> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMR);
  *(v49 + 232) = v22;
  v50 = one-time initialization token for confirmation;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_41_22();
  }

  v51 = static PhoneCallNLv3Intent.confirmation;
  *(v49 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMR);
  OUTLINED_FUNCTION_2_14();
  v53 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v52, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMR);
  *(v49 + 272) = v51;
  *(v49 + 336) = v74;
  *(v49 + 344) = &protocol witness table for NonTerminalOntologyNode;
  *(v49 + 304) = v53;
  *(v49 + 312) = v69;
  v54 = one-time initialization token for callId;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_43_20();
  }

  v55 = static PhoneCallNLv3Intent.callId;
  *(v49 + 376) = v79;
  v56 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v49 + 352) = v55;
  *(v49 + 416) = v79;
  *(v49 + 424) = v56;
  *(v49 + 384) = v56;
  *(v49 + 392) = v73;
  *(v49 + 456) = v71;
  *(v49 + 464) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallNoun> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMR);
  *(v49 + 432) = v68;
  v57 = one-time initialization token for reference;

  if (v57 != -1)
  {
    OUTLINED_FUNCTION_25_23();
  }

  v58 = static PhoneCallNLv3Intent.reference;
  v59 = OUTLINED_FUNCTION_103_0();
  *(v49 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
  *(v49 + 504) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallReference> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9ReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9ReferenceOGMR);
  *(v49 + 472) = v58;
  *(v49 + 536) = v78;
  *(v49 + 544) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallVerb> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMR);
  *(v49 + 512) = v76;
  *(v49 + 576) = v66;
  *(v49 + 584) = &protocol witness table for NonTerminalOntologyNode;
  *(v49 + 552) = v64;
  *(v49 + 616) = v45;
  *(v49 + 624) = &protocol witness table for NonTerminalOntologyNode;
  *(v49 + 592) = v46;
  v61 = type metadata accessor for DomainOntologyNode();
  OUTLINED_FUNCTION_12_8(v61);
  swift_allocObject();

  OUTLINED_FUNCTION_75_8();
  v62 = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  result = (*(v48 + 8))(a1, v65);
  *(a2 + v4[6]) = v62;
  return result;
}

uint64_t *PhoneCallNLv3Intent.appName.unsafeMutableAddressor()
{
  if (one-time initialization token for appName != -1)
  {
    swift_once();
  }

  return &static PhoneCallNLv3Intent.appName;
}

uint64_t *PhoneCallNLv3Intent.reference.unsafeMutableAddressor()
{
  if (one-time initialization token for reference != -1)
  {
    OUTLINED_FUNCTION_25_23();
  }

  return &static PhoneCallNLv3Intent.reference;
}

uint64_t *PhoneCallNLv3Intent.confirmation.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmation != -1)
  {
    OUTLINED_FUNCTION_41_22();
  }

  return &static PhoneCallNLv3Intent.confirmation;
}

uint64_t PhoneCallNLv3Intent.domainOntologyNode.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 24));
}

uint64_t *PhoneCallNLv3Intent.applicationId.unsafeMutableAddressor()
{
  if (one-time initialization token for applicationId != -1)
  {
    swift_once();
  }

  return &static PhoneCallNLv3Intent.applicationId;
}

uint64_t one-time initialization function for confirmation()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMR);
  OUTLINED_FUNCTION_12_8(v0);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallNLv3Intent.confirmation = result;
  return result;
}

uint64_t one-time initialization function for reference()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9ReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9ReferenceOGMR);
  OUTLINED_FUNCTION_12_8(v0);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallNLv3Intent.reference = result;
  return result;
}

uint64_t static PhoneCallNLv3Intent.appName.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_42_18(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
}

uint64_t PhoneCallContactOntologyNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return a4(a1, a2, a3);
}

uint64_t PhoneCallNLv3Intent.app.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_55_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v9 = *(v1 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 20));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v10, v11);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  v16 = v1;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12SiriOntology21NonTerminalIntentNodeV_s5NeverO27PhoneCallFlowDelegatePlugin0jK3App_pTg5(partial apply for closure #1 in PhoneCallNLv3Intent.app.getter, v15, a1);
  v12 = OUTLINED_FUNCTION_13_17();
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, v13, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
}

uint64_t closure #1 in PhoneCallNLv3Intent.app.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AppIntentNode(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for AppIntentNode;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = type metadata accessor for NonTerminalIntentNode();
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = *(a2 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 20));
}

uint64_t AppIntentNode.init(intentNode:ontologyNode:)()
{
  return AppIntentNode.init(intentNode:ontologyNode:)();
}

{
  v4 = OUTLINED_FUNCTION_67_10();
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 32))(v3, v2);
  result = v0(0);
  *(v3 + *(result + 20)) = v1;
  return result;
}

uint64_t PhoneCallNLv3Intent.phoneCallAVMode.getter()
{
  if (specialized PhoneCallNLIntent.hasVideoCallSemantic()())
  {
    return 1;
  }

  if (specialized PhoneCallNLIntent.hasAudioCallSemantic()())
  {
    return 0;
  }

  return 2;
}

uint64_t PhoneCallNLv3Intent.phoneCallAttributes.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 28));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  v4 = OUTLINED_FUNCTION_20_0();

  return IntentNodeTraversable.values<A>(forNode:)(v4);
}

uint64_t PhoneCallNLv3Intent.phoneCallAudioRoute.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 32));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  OUTLINED_FUNCTION_16_40();
  return v5;
}

uint64_t PhoneCallNLv3Intent.phoneCallCapability.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 36));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  OUTLINED_FUNCTION_16_40();
  return v5;
}

uint64_t PhoneCallNLv3Intent.phoneCallPreferredProvider.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 40));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  OUTLINED_FUNCTION_16_40();
  return v5;
}

uint64_t PhoneCallNLv3Intent.phoneCallDestinationType.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 44));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  OUTLINED_FUNCTION_16_40();
  return v5;
}

uint64_t PhoneCallNLv3Intent.phoneCallVerb.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 60));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  OUTLINED_FUNCTION_16_40();
  return v5;
}

uint64_t PhoneCallNLv3Intent.phoneCallNoun.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 56));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  OUTLINED_FUNCTION_16_40();
  return v5;
}

uint64_t PhoneCallNLv3Intent.phoneCallConfirmation.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_42_18(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v4, v5);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  return v7;
}

uint64_t PhoneCallNLv3Intent.contacts.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 48));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  OUTLINED_FUNCTION_20_0();
  IntentNodeTraversable.intentNodes(forOntologyNode:)();
  v4 = OUTLINED_FUNCTION_72_6();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(v4);
  OUTLINED_FUNCTION_33_2();
  return v0;
}

uint64_t closure #1 in PhoneCallNLv3Intent.contacts.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for NonTerminalIntentNode();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  (*(v12 + 16))(v11 - v10, a1);
  v13 = *(a2 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 48));
  v14 = type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_12_8(v14);
  v15 = swift_allocObject();
  PhoneCallContactIntentNode.init(intentNode:ontologyNode:)();
  a3[3] = v14;
  a3[4] = &protocol witness table for PhoneCallContactIntentNode;
  *a3 = v15;
}

uint64_t PhoneCallContactIntentNode.__allocating_init(intentNode:ontologyNode:)()
{
  OUTLINED_FUNCTION_24_3();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_20_0();
  PhoneCallContactIntentNode.init(intentNode:ontologyNode:)();
  return v3;
}

void PhoneCallNLv3Intent.contactQueries.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for ContactQuery();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = *(v0 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 48));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v11, v12);
  OUTLINED_FUNCTION_76_7();
  IntentNodeTraversable.intentNodes(forOntologyNode:)();
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply);

  v14 = *(v13 + 16);

  if (v14)
  {
    OUTLINED_FUNCTION_76_7();
    v15 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
    __chkstk_darwin(v15);
    OUTLINED_FUNCTION_6_49();
    *(v16 - 16) = v0;
    v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply);

    v18 = *(v17 + 16);
    if (v18)
    {
      v23 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = _swiftEmptyArrayStorage;
      v20 = v17 + 32;
      do
      {
        outlined init with copy of SignalProviding(v20, v22);
        __swift_project_boxed_opaque_existential_1(v22, v22[3]);
        SiriPhoneContact.asSiriInferenceContact.getter();
        __swift_destroy_boxed_opaque_existential_1(v22);
        v23 = v19;
        v21 = v19[2];
        if (v21 >= v19[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v23;
        }

        v19[2] = v21 + 1;
        (*(v4 + 32))(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v9, v1);
        v20 += 40;
        --v18;
      }

      while (v18);
    }
  }

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallNLv3Intent.smsGroups.getter()
{
  v1 = *(v0 + *(OUTLINED_FUNCTION_21_28() + 68));
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v2, v3);
  OUTLINED_FUNCTION_20_0();
  IntentNodeTraversable.intentNodes(forOntologyNode:)();
  v4 = OUTLINED_FUNCTION_72_6();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin8SmsGroup_ps5NeverOTg5(v4);
  OUTLINED_FUNCTION_33_2();
  return v0;
}

uint64_t closure #1 in PhoneCallNLv3Intent.smsGroups.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for SmsGroupIntentNode(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for SmsGroupIntentNode;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = type metadata accessor for NonTerminalIntentNode();
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = *(a2 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 68));
}

uint64_t static PhoneCallNLv3Intent.phoneCallNLv3Intent(_:)@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23MitigatorClassificationOSgMd, &_s12SiriOntology23MitigatorClassificationOSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v18 = &v16 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology7NLStateVSgMd, &_s12SiriOntology7NLStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v17 = &v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMR);
  v7 = swift_allocObject();
  v20 = xmmword_424FD0;
  *(v7 + 16) = xmmword_424FD0;
  v8 = swift_allocObject();
  *(v8 + 16) = v20;
  v9 = swift_allocObject();
  *(v9 + 16) = v20;
  v10 = swift_allocObject();
  *(v10 + 16) = v20;
  v11 = swift_allocObject();
  *(v11 + 16) = v20;
  v12 = type metadata accessor for NonTerminalIntentNode();
  *(v11 + 56) = v12;
  *(v11 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));

  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v10 + 56) = v12;
  *(v10 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v9 + 56) = v12;
  *(v9 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v8 + 56) = v12;
  *(v8 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v7 + 56) = v12;
  *(v7 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v21[3] = v12;
  v21[4] = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1(v21);
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v13 = type metadata accessor for NLState();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v13);
  v14 = type metadata accessor for MitigatorClassification();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v14);
  return NLIntent.init(rootNode:score:originalInput:allWordsMatched:primary:usingExplicitInput:intentRank:isNERBasedParse:intentID:nlState:mitigatorClassification:strippedVoiceTrigger:isInvalidVoiceTrigger:isSuggested:metaDomainActions:)();
}

uint64_t static PhoneCallNLv3Intent.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_24_3();
  if ((static NLIntent.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NonTerminalOntologyNode();
  v0 = type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_25_25(v0[5]);
  if ((static NonTerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v0[6]);
  if ((static NonTerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR);
  OUTLINED_FUNCTION_25_25(v0[7]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMR);
  OUTLINED_FUNCTION_25_25(v0[8]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMR);
  OUTLINED_FUNCTION_25_25(v0[9]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMR);
  OUTLINED_FUNCTION_25_25(v0[10]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMR);
  OUTLINED_FUNCTION_25_25(v0[11]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v0[12]);
  if ((static NonTerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_25_25(v0[13]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMR);
  OUTLINED_FUNCTION_25_25(v0[14]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMR);
  OUTLINED_FUNCTION_25_25(v0[15]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v0[16]);
  if ((static NonTerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v0[17]);
  return static NonTerminalOntologyNode.== infix(_:_:)() & 1;
}

uint64_t PhoneCallNLv3Intent.hash(into:)()
{
  type metadata accessor for NLIntent();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent);
  OUTLINED_FUNCTION_55_0();
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PhoneCallNLv3Intent(0);
  v3 = *(v0 + v1[5]);
  type metadata accessor for AppOntologyNode();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type AppOntologyNode and conformance NonTerminalOntologyNode, &type metadata accessor for AppOntologyNode);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[6]);
  type metadata accessor for DomainOntologyNode();
  OUTLINED_FUNCTION_80_6(&lazy protocol witness table cache variable for type DomainOntologyNode and conformance NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[7]);
  OUTLINED_FUNCTION_53_19();
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallAttribute> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[8]);
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallAudioRoute> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[9]);
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallCapability> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[10]);
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallPreferredProvider> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[11]);
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallDestinationType> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[12]);
  type metadata accessor for PhoneCallContactOntologyNode(0);
  OUTLINED_FUNCTION_80_6(&lazy protocol witness table cache variable for type PhoneCallContactOntologyNode and conformance NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[13]);
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[14]);
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallNoun> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[15]);
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallVerb> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[16]);
  type metadata accessor for NonTerminalOntologyNode();
  OUTLINED_FUNCTION_80_6(&lazy protocol witness table cache variable for type NonTerminalOntologyNode and conformance NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23(v1[17]);
  type metadata accessor for SmsGroupOntologyNode(0);
  OUTLINED_FUNCTION_80_6(&lazy protocol witness table cache variable for type SmsGroupOntologyNode and conformance NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PhoneCallNLv3Intent.hashValue.getter()
{
  Hasher.init(_seed:)();
  PhoneCallNLv3Intent.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallNLv3Intent()
{
  Hasher.init(_seed:)();
  PhoneCallNLv3Intent.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance PhoneCallNLv3Intent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance PhoneCallNLv3Intent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallNLv3Intent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t key path setter for PhoneCallContactIntentNode.intentNode : PhoneCallContactIntentNode(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonTerminalIntentNode();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*(**a2 + 128))(v8);
}

uint64_t PhoneCallContactIntentNode.intentNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_intentNode;
  swift_beginAccess();
  v4 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_23_1(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t PhoneCallContactIntentNode.intentNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_intentNode;
  swift_beginAccess();
  v4 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t key path setter for PhoneCallContactIntentNode.ontologyNode : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t PhoneCallContactIntentNode.ontologyNode.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_ontologyNode;
  OUTLINED_FUNCTION_146();
  v2 = *(v0 + v1);
}

uint64_t PhoneCallContactIntentNode.ontologyNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_ontologyNode;
  OUTLINED_FUNCTION_78_3();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PhoneCallContactIntentNode.init(intentNode:ontologyNode:)()
{
  OUTLINED_FUNCTION_24_3();
  v3 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_handleLabel);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_emergencyLocationType) = 3;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_contactSource) = 3;
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_intentNode;
  v5 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_23_1(v5);
  (*(v6 + 32))(v1 + v4, v2);
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_ontologyNode) = v0;
  return v1;
}

uint64_t static PhoneCallContactIntentNode.from(intentNode:ontologyNode:)()
{
  OUTLINED_FUNCTION_24_3();
  v3 = type metadata accessor for NonTerminalIntentNode();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7, v2);
  v11 = *(v1 + 168);

  return v11(v9, v0);
}

void PhoneCallContactIntentNode.person.getter()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NonTerminalIntentNode();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  v26 = v0;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_11_43();
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v19, v20);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  OUTLINED_FUNCTION_9_40(v9, 1, v10);
  if (v21)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v23 = 1;
  }

  else
  {
    (*(v13 + 32))(v18, v9, v10);
    (*(v13 + 16))(v1, v18, v10);
    v22 = type metadata accessor for PersonOntologyNode();
    OUTLINED_FUNCTION_12_8(v22);
    swift_allocObject();
    PersonOntologyNode.init(name:multicardinal:)();
    PersonIntentNode.init(intentNode:ontologyNode:)();
    (*(v13 + 8))(v18, v10);
    v23 = 0;
  }

  v24 = type metadata accessor for PersonIntentNode();
  __swift_storeEnumTagSinglePayload(v3, v23, 1, v24);
  OUTLINED_FUNCTION_65();
}

uint64_t *PhoneCallContactOntologyNode.personNode.unsafeMutableAddressor()
{
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_11_43();
  }

  return &static PhoneCallContactOntologyNode.personNode;
}

uint64_t key path setter for PhoneCallContactIntentNode.contactId : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t *PhoneCallContactOntologyNode.phoneCallContactIdNode.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallContactIdNode != -1)
  {
    OUTLINED_FUNCTION_34_15();
  }

  return &static PhoneCallContactOntologyNode.phoneCallContactIdNode;
}

uint64_t PhoneCallContactIntentNode.contactId.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.contactId.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t PhoneCallContactIntentNode.contactReference.getter()
{
  if (one-time initialization token for phoneCallContactReferenceNode != -1)
  {
    OUTLINED_FUNCTION_9_53();
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  return v3;
}

uint64_t *PhoneCallContactOntologyNode.phoneCallContactReferenceNode.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallContactReferenceNode != -1)
  {
    OUTLINED_FUNCTION_9_53();
  }

  return &static PhoneCallContactOntologyNode.phoneCallContactReferenceNode;
}

uint64_t key path setter for PhoneCallContactIntentNode.emailAddress : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 240);

  return v4(v2, v3);
}

uint64_t *PhoneCallContactOntologyNode.emailAddressNode.unsafeMutableAddressor()
{
  if (one-time initialization token for emailAddressNode != -1)
  {
    OUTLINED_FUNCTION_33_19();
  }

  return &static PhoneCallContactOntologyNode.emailAddressNode;
}

uint64_t PhoneCallContactIntentNode.emailAddress.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.emailAddress.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.contactName : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 264);

  return v4(v2, v3);
}

uint64_t *PhoneCallContactOntologyNode.phoneCallContactNameNode.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallContactNameNode != -1)
  {
    OUTLINED_FUNCTION_32_18();
  }

  return &static PhoneCallContactOntologyNode.phoneCallContactNameNode;
}

uint64_t PhoneCallContactIntentNode.contactName.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.contactName.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

void PhoneCallContactIntentNode.isMe.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for PersonOntologyNode.PersonSelfReference();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v45 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSg_AFtMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSg_AFtMR);
  OUTLINED_FUNCTION_23_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_5_63();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v44 - v26;
  __chkstk_darwin(v28);
  v30 = &v44 - v29;
  PhoneCallContactIntentNode.person.getter();
  v31 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_9_40(v18, 1, v31);
  if (v37)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v1);
  }

  else
  {
    PersonIntentNodeContaining.selfReference.getter();
    OUTLINED_FUNCTION_40(v31);
    v33 = *(v32 + 8);
    v34 = OUTLINED_FUNCTION_103_0();
    v35(v34);
  }

  (*(v4 + 104))(v27, enum case for PersonOntologyNode.PersonSelfReference.me(_:), v1);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v1);
  v36 = *(v9 + 48);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v30, v0, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v27, v0 + v36, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  OUTLINED_FUNCTION_1_0(v0);
  if (!v37)
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v0, v24, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
    OUTLINED_FUNCTION_1_0(v0 + v36);
    if (!v37)
    {
      v41 = v45;
      (*(v4 + 32))(v45, v0 + v36, v1);
      lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PersonOntologyNode.PersonSelfReference and conformance PersonOntologyNode.PersonSelfReference, &type metadata accessor for PersonOntologyNode.PersonSelfReference);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v4 + 8);
      v42(v41, v1);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
      v43 = OUTLINED_FUNCTION_13_17();
      (v42)(v43);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
      goto LABEL_13;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
    v38 = *(v4 + 8);
    v39 = OUTLINED_FUNCTION_13_17();
    v40(v39);
LABEL_12:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSg_AFtMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSg_AFtMR);
    goto LABEL_13;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  OUTLINED_FUNCTION_1_0(v0 + v36);
  if (!v37)
  {
    goto LABEL_12;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
LABEL_13:
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallContactIntentNode.isMe.modify()
{
  PhoneCallContactIntentNode.isMe.getter();
  OUTLINED_FUNCTION_77_10(v0);
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.personName : PhoneCallContactIntentNode(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *(**a2 + 312);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(__dst, &v5, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v3(__dst);
}

void PhoneCallContactIntentNode.personName.getter()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_5_63();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_29_3();
  v18 = type metadata accessor for PersonIntentNode();
  v19 = OUTLINED_FUNCTION_7(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  PhoneCallContactIntentNode.person.getter();
  v27 = OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_9_40(v27, v28, v18);
  if (v54)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 1;
  }

  else
  {
    (*(v21 + 32))(v26, v1, v18);
    type metadata accessor for PersonOntologyNode();
    static PersonOntologyNode.personFirstNameNode.getter();
    v43 = OUTLINED_FUNCTION_49_17();
    v68 = v44;
    v69 = v43;

    static PersonOntologyNode.personMiddleNameNode.getter();
    v45 = OUTLINED_FUNCTION_49_17();
    v66 = v46;
    v67 = v45;

    static PersonOntologyNode.personLastNameNode.getter();
    v47 = OUTLINED_FUNCTION_49_17();
    v64 = v48;
    v65 = v47;

    v49 = PersonIntentNodeContaining.nickName.getter();
    v62 = v50;
    v63 = v49;
    static PersonOntologyNode.personFullNameNode.getter();
    v51 = OUTLINED_FUNCTION_49_17();
    v60 = v52;
    v61 = v51;

    PersonIntentNodeContaining.namePrefix.getter();
    v53 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
    OUTLINED_FUNCTION_9_40(v13, 1, v53);
    if (v54)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = PersonOntologyNode.PersonNamePrefix.rawValue.getter();
      v39 = v55;
      OUTLINED_FUNCTION_40(v53);
      (*(v56 + 8))(v13, v53);
    }

    PersonIntentNodeContaining.namePostfix.getter();
    v57 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
    OUTLINED_FUNCTION_9_40(v0, 1, v57);
    if (v54)
    {
      (*(v21 + 8))(v26, v18);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v40 = PersonOntologyNode.PersonNamePostfix.rawValue.getter();
      v41 = v58;
      (*(v21 + 8))(v26, v18);
      OUTLINED_FUNCTION_40(v57);
      (*(v59 + 8))(v0, v57);
    }

    v42 = v68;
    v29 = v69;
    v31 = v66;
    v30 = v67;
    v33 = v64;
    v32 = v65;
    v35 = v62;
    v34 = v63;
    v37 = v60;
    v36 = v61;
  }

  *v3 = v29;
  v3[1] = v42;
  v3[2] = v30;
  v3[3] = v31;
  v3[4] = v32;
  v3[5] = v33;
  v3[6] = v34;
  v3[7] = v35;
  v3[8] = v36;
  v3[9] = v37;
  v3[10] = v38;
  v3[11] = v39;
  v3[12] = v40;
  v3[13] = v41;
  OUTLINED_FUNCTION_65();
}

void (*PhoneCallContactIntentNode.personName.modify(void **a1))(const void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0xE0uLL);
  PhoneCallContactIntentNode.personName.getter();
  return PhoneCallContactIntentNode.personName.modify;
}

void PhoneCallContactIntentNode.personName.modify(const void **a1)
{
  v1 = *a1;
  memcpy(*a1 + 112, *a1, 0x70uLL);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1 + 112, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);

  free(v1);
}

uint64_t key path setter for PhoneCallContactIntentNode.organizationName : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 336);

  return v4(v2, v3);
}

uint64_t PhoneCallContactIntentNode.organizationName.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.organizationName.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.telephoneNumber : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 360);

  return v4(v2, v3);
}

uint64_t *PhoneCallContactOntologyNode.phoneNumberNode.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneNumberNode != -1)
  {
    OUTLINED_FUNCTION_12_47();
  }

  return &static PhoneCallContactOntologyNode.phoneNumberNode;
}

uint64_t PhoneCallContactIntentNode.telephoneNumber.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.telephoneNumber.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.relationship : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 384);

  return v4(v2, v3);
}

uint64_t PhoneCallContactIntentNode.organizationName.getter(void (*a1)(uint64_t, void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_5_63();
  PhoneCallContactIntentNode.person.getter();
  v7 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_9_40(v1, 1, v7);
  if (v8)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  }

  else
  {
    a1(v7, &protocol witness table for PersonIntentNode);
    OUTLINED_FUNCTION_40(v7);
    (*(v9 + 8))(v1, v7);
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t PhoneCallContactIntentNode.relationship.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.relationship.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.handleType : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 408);

  return v4(v2, v3);
}

uint64_t PhoneCallContactIntentNode.contactId.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v4, v5);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  return v7;
}

uint64_t *PhoneCallContactOntologyNode.contactTypeNode.unsafeMutableAddressor()
{
  if (one-time initialization token for contactTypeNode != -1)
  {
    OUTLINED_FUNCTION_10_56();
  }

  return &static PhoneCallContactOntologyNode.contactTypeNode;
}

uint64_t PhoneCallContactIntentNode.handleType.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.handleType.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.handleLabel : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 432);

  return v4(v2, v3);
}

uint64_t PhoneCallContactIntentNode.handleLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_handleLabel);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t PhoneCallContactIntentNode.handleLabel.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_handleLabel);
  swift_beginAccess();
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v0;
}

uint64_t key path setter for PhoneCallContactIntentNode.emergencyType : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 456);
  outlined copy of PhoneCallEmergencyType?(*a1, v3);
  return v4(v2, v3);
}

void PhoneCallContactIntentNode.emergencyType.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v60 = v0;
  v62 = v0;
  if (one-time initialization token for phoneNumberNode != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_12_47();
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v15, v16);
  IntentNodeTraversable.intentNode<A>(forOntologyNode:)();
  v17 = OUTLINED_FUNCTION_55_0();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v17, v18, v19, v20);
  v21 = type metadata accessor for TerminalIntentNode();
  v22 = OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_9_40(v22, v23, v21);
  v61 = v14;
  if (v30)
  {
    v24 = &_s12SiriOntology18TerminalIntentNodeVSgMd;
    v25 = &_s12SiriOntology18TerminalIntentNodeVSgMR;
    v26 = v1;
  }

  else
  {
    v27 = TerminalIntentNode.elements.getter();
    OUTLINED_FUNCTION_40(v21);
    (*(v28 + 8))(v1, v21);
    specialized BidirectionalCollection.last.getter(v27, v7);

    v29 = type metadata accessor for TerminalElement();
    OUTLINED_FUNCTION_9_40(v7, 1, v29);
    if (!v30)
    {
      v1 = TerminalElement.semanticTags.getter();
      OUTLINED_FUNCTION_40(v29);
      (*(v40 + 8))(v7, v29);
      v14 = 0;
      v41 = *(v1 + 16);
      v42 = v1 + 40;
      v58 = v1 + 40;
      v59 = _swiftEmptyArrayStorage;
LABEL_24:
      v43 = (v42 + 16 * v14);
      while (v41 != v14)
      {
        if (v14 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        ++v14;
        v44 = v43 + 2;
        v45 = *(v43 - 1);
        v46 = *v43;

        String.index(_:offsetBy:limitedBy:)();
        String.subscript.getter();
        v47 = Substring.lowercased()();

        v48 = specialized Collection.dropFirst(_:)(1uLL);
        v66 = v47;
        v62 = v48;
        v63 = v49;
        v64 = v50;
        v65 = v51;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        v7 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallContactIntentNode.emergencyType.getter, v66);

        v43 = v44;
        if (!v7)
        {
          v7 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
            v7 = v55;
          }

          v53 = *(v7 + 2);
          v52 = *(v7 + 3);
          v54 = v53 + 1;
          if (v53 >= v52 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v7);
            v7 = v56;
          }

          v59 = v7;
          *(v7 + 2) = v54;
          v42 = v58;
          goto LABEL_24;
        }
      }

      v57 = *(v59 + 2);

      if (!v57)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

    v24 = &_s12SiriOntology15TerminalElementVSgMd;
    v25 = &_s12SiriOntology15TerminalElementVSgMR;
    v26 = v7;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v26, v24, v25);
LABEL_9:
  OUTLINED_FUNCTION_2_0();
  v31 += 32;
  v32 = *v31;
  v33 = (*v31)();
  if (v34)
  {
    if (v33 == 0xD000000000000012 && v34 == 0x800000000045E860)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_34:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
    goto LABEL_37;
  }

LABEL_15:
  v37 = (v32)(v33);
  if (!v38)
  {
    goto LABEL_34;
  }

  if (v37 != 0xD000000000000011 || v38 != 0x800000000045E840)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
LABEL_37:
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallContactIntentNode.emergencyType.modify(void *a1)
{
  PhoneCallContactIntentNode.emergencyType.getter();
  *a1 = 0;
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

BOOL PhoneCallContactIntentNode.isAmbiguousHandle.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_5_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v11);
  v13 = v38 - v12;
  v38[0] = v0;
  if (one-time initialization token for contactTypeNode != -1)
  {
    OUTLINED_FUNCTION_10_56();
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v14, v15);
  IntentNodeTraversable.intentNode<A>(forOntologyNode:)();
  v16 = OUTLINED_FUNCTION_55_0();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v16, v17, v18, v19);
  v20 = type metadata accessor for TerminalIntentNode();
  v21 = OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_9_40(v21, v22, v20);
  if (v31)
  {
    v23 = OUTLINED_FUNCTION_19_0();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, v24, &_s12SiriOntology18TerminalIntentNodeVSgMR);
    v25 = v2;
    v26 = &_s12SiriOntology18TerminalIntentNodeVSgMd;
    v27 = &_s12SiriOntology18TerminalIntentNodeVSgMR;
LABEL_9:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, v26, v27);
    return 0;
  }

  v28 = TerminalIntentNode.elements.getter();
  OUTLINED_FUNCTION_40(v20);
  (*(v29 + 8))(v2, v20);
  specialized BidirectionalCollection.last.getter(v28, v1);

  v30 = type metadata accessor for TerminalElement();
  OUTLINED_FUNCTION_9_40(v1, 1, v30);
  if (v31)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
    v26 = &_s12SiriOntology15TerminalElementVSgMd;
    v27 = &_s12SiriOntology15TerminalElementVSgMR;
    v25 = v1;
    goto LABEL_9;
  }

  TerminalElement.semanticTags.getter();
  OUTLINED_FUNCTION_40(v30);
  v34 = (*(v33 + 8))(v1, v30);
  v38[0] = 0x756F756769626D41;
  v38[1] = 0xEF656C646E614873;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_6_49();
  *(v35 - 16) = v38;
  v36 = specialized Sequence.contains(where:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  return v36;
}

uint64_t PhoneCallContactIntentNode.isAmbiguousHandle.modify()
{
  v0 = PhoneCallContactIntentNode.isAmbiguousHandle.getter();
  OUTLINED_FUNCTION_77_10(v0);
  return OUTLINED_FUNCTION_26_7();
}

uint64_t PhoneCallContactIntentNode.emergencyLocationType.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_emergencyLocationType;
  OUTLINED_FUNCTION_146();
  return *(v0 + v1);
}

uint64_t PhoneCallContactIntentNode.emergencyLocationType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_emergencyLocationType;
  result = OUTLINED_FUNCTION_78_3();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PhoneCallContactIntentNode.searchQualifier.getter()
{
  if (one-time initialization token for phoneCallContactRole != -1)
  {
    OUTLINED_FUNCTION_8_54();
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  result = 0;
  switch(v3)
  {
    case 1:
      return result;
    case 2:
      result = 1;
      break;
    case 3:
      result = 512;
      break;
    default:
      result = 2;
      break;
  }

  return result;
}

uint64_t *PhoneCallContactOntologyNode.phoneCallContactRole.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallContactRole != -1)
  {
    OUTLINED_FUNCTION_8_54();
  }

  return &static PhoneCallContactOntologyNode.phoneCallContactRole;
}

uint64_t key path setter for PhoneCallContactIntentNode.backingContact : PhoneCallContactIntentNode(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(a1, &v9 - v6, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  return (*(**a2 + 544))(v7);
}

uint64_t PhoneCallContactIntentNode.backingContact.getter@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  v3 = type metadata accessor for BackingContact(0);
  OUTLINED_FUNCTION_55();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t PhoneCallContactIntentNode.backingContact.setter(uint64_t a1)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Cannot set a backing contact for an NLv3 intent!", v5, 2u);
  }

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
}

void (*PhoneCallContactIntentNode.backingContact.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  PhoneCallContactIntentNode.backingContact.getter(v6);
  return PhoneCallContactIntentNode.backingContact.modify;
}

void PhoneCallContactIntentNode.backingContact.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(*(a1 + 16), v2, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
    PhoneCallContactIntentNode.backingContact.setter(v2);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  }

  else
  {
    PhoneCallContactIntentNode.backingContact.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t PhoneCallContactIntentNode.contactSource.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_contactSource;
  OUTLINED_FUNCTION_146();
  return *(v0 + v1);
}

uint64_t PhoneCallContactIntentNode.contactSource.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_contactSource;
  result = OUTLINED_FUNCTION_78_3();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PhoneCallContactIntentNode.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_intentNode;
  v2 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_ontologyNode);

  v5 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_handleLabel + 8);

  return v0;
}

uint64_t PhoneCallContactIntentNode.__deallocating_deinit()
{
  PhoneCallContactIntentNode.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for SiriPhoneContact.isMe.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 296))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 200))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.contactName.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 272))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.contactSource.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 576))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

void *protocol witness for SiriPhoneContact.personName.getter in conformance PhoneCallContactIntentNode@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_43_0();
  (*(v2 + 304))(v4);
  return memcpy(a1, v4, 0x70uLL);
}

uint64_t (*protocol witness for SiriPhoneContact.personName.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 320))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.organizationName.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 344))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.telephoneNumber.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 368))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.emailAddress.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 248))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.relationship.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 392))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.handleType.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 416))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.handleLabel.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 440))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.emergencyType.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 464))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.emergencyLocationType.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 512))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.contactReference.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 224))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.isAmbiguousHandle.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 488))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.backingContact.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 552))();
  return protocol witness for SiriPhoneContact.backingContact.modify in conformance PhoneCallContactIntentNode;
}

uint64_t protocol witness for static NonTerminalIntentNodeWrapper.from(intentNode:ontologyNode:) in conformance PhoneCallContactIntentNode@<X0>(uint64_t *a1@<X8>)
{
  result = static PhoneCallContactIntentNode.from(intentNode:ontologyNode:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance PhoneCallContactIntentNode(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance PhoneCallContactIntentNode(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t one-time initialization function for personNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FD0;
  v1 = type metadata accessor for PersonOntologyNode();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = PersonOntologyNode.init(name:multicardinal:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v4;
  v5 = type metadata accessor for NonTerminalOntologyNode();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static PhoneCallContactOntologyNode.personNode = result;
  return result;
}

uint64_t one-time initialization function for phoneCallContactNameNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallContactOntologyNode.phoneCallContactNameNode = result;
  return result;
}

uint64_t one-time initialization function for phoneCallContactIdNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallContactOntologyNode.phoneCallContactIdNode = result;
  return result;
}

uint64_t one-time initialization function for phoneCallContactReferenceNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF16ContactReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF16ContactReferenceOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallContactOntologyNode.phoneCallContactReferenceNode = result;
  return result;
}

uint64_t one-time initialization function for phoneCallContactRole()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF11ContactRoleO4NLv3OGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF11ContactRoleO4NLv3OGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallContactOntologyNode.phoneCallContactRole = result;
  return result;
}

uint64_t PhoneCallContactOntologyNode.init(name:multicardinal:)()
{
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_43CD90;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_11_43();
  }

  v1 = static PhoneCallContactOntologyNode.personNode;
  *(v0 + 56) = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  v2 = one-time initialization token for phoneNumberNode;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_12_47();
  }

  v3 = static PhoneCallContactOntologyNode.phoneNumberNode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 96) = v4;
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_76_7();
  v8 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v5, v6, v7);
  *(v0 + 104) = v8;
  *(v0 + 72) = v3;
  v9 = one-time initialization token for phoneCallContactNameNode;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_32_18();
  }

  v10 = static PhoneCallContactOntologyNode.phoneCallContactNameNode;
  *(v0 + 136) = v4;
  *(v0 + 144) = v8;
  *(v0 + 112) = v10;
  v11 = one-time initialization token for phoneCallContactIdNode;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_34_15();
  }

  v12 = static PhoneCallContactOntologyNode.phoneCallContactIdNode;
  *(v0 + 176) = v4;
  *(v0 + 184) = v8;
  *(v0 + 152) = v12;
  v13 = one-time initialization token for phoneCallContactRole;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_8_54();
  }

  v14 = static PhoneCallContactOntologyNode.phoneCallContactRole;
  v15 = OUTLINED_FUNCTION_103_0();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_2_14();
  *(v0 + 224) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v17, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF11ContactRoleO4NLv3OGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF11ContactRoleO4NLv3OGMR);
  *(v0 + 192) = v14;
  v18 = one-time initialization token for phoneCallContactReferenceNode;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_9_53();
  }

  v19 = static PhoneCallContactOntologyNode.phoneCallContactReferenceNode;
  v20 = OUTLINED_FUNCTION_103_0();
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_2_14();
  *(v0 + 264) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v22, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF16ContactReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF16ContactReferenceOGMR);
  *(v0 + 232) = v19;
  v23 = one-time initialization token for emailAddressNode;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_33_19();
  }

  v24 = static PhoneCallContactOntologyNode.emailAddressNode;
  *(v0 + 296) = v4;
  *(v0 + 304) = v8;
  *(v0 + 272) = v24;
  v25 = one-time initialization token for contactTypeNode;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_10_56();
  }

  v26 = static PhoneCallContactOntologyNode.contactTypeNode;
  *(v0 + 336) = v4;
  *(v0 + 344) = v8;
  *(v0 + 312) = v26;

  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_65();

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

uint64_t ReaderOntologyNode.__deallocating_deinit()
{
  NonTerminalOntologyNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallNLv3Intent.appNode.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
}

uint64_t static SmsGroupIntentNode.from(intentNode:ontologyNode:)()
{
  return static SmsGroupIntentNode.from(intentNode:ontologyNode:)();
}

{
  v4 = OUTLINED_FUNCTION_67_10();
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 16))(v3, v2);
  *(v3 + *(v0(0) + 20)) = v1;
}

uint64_t *SmsGroupOntologyNode.smsGroupName.unsafeMutableAddressor()
{
  if (one-time initialization token for smsGroupName != -1)
  {
    OUTLINED_FUNCTION_36_20();
  }

  return &static SmsGroupOntologyNode.smsGroupName;
}

uint64_t SmsGroupIntentNode.smsGroupName.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_42_18(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
  type metadata accessor for SmsGroupIntentNode(0);
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type SmsGroupIntentNode and conformance SmsGroupIntentNode, type metadata accessor for SmsGroupIntentNode);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  return v5;
}

uint64_t *SmsGroupOntologyNode.smsGroupNameId.unsafeMutableAddressor()
{
  if (one-time initialization token for smsGroupNameId != -1)
  {
    OUTLINED_FUNCTION_35_19();
  }

  return &static SmsGroupOntologyNode.smsGroupNameId;
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance SmsGroupIntentNode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type SmsGroupIntentNode and conformance SmsGroupIntentNode, type metadata accessor for SmsGroupIntentNode);

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance SmsGroupIntentNode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type SmsGroupIntentNode and conformance SmsGroupIntentNode, type metadata accessor for SmsGroupIntentNode);

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t one-time initialization function for appName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_12_8(v5);
  swift_allocObject();
  OUTLINED_FUNCTION_23_6();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  *a4 = result;
  return result;
}

uint64_t SmsGroupOntologyNode.init(name:multicardinal:)()
{
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FF0;
  if (one-time initialization token for smsGroupName != -1)
  {
    OUTLINED_FUNCTION_36_20();
  }

  v1 = static SmsGroupOntologyNode.smsGroupName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_76_7();
  v6 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v3, v4, v5);
  *(v0 + 64) = v6;
  *(v0 + 32) = v1;
  v7 = one-time initialization token for smsGroupNameId;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_35_19();
  }

  v8 = static SmsGroupOntologyNode.smsGroupNameId;
  *(v0 + 96) = v2;
  *(v0 + 104) = v6;
  *(v0 + 72) = v8;

  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_65();

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

uint64_t PhoneCallNLv3Intent.intent.getter(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_23_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_19_0();

  return v5(v4);
}

void AppIntentNode.applicationId.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV6OriginVSgMd, &_s12SiriOntology15TerminalElementV6OriginVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v114 = &v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV12OriginDetailOSgMd, &_s12SiriOntology15TerminalElementV12OriginDetailOSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v115 = &v109 - v10;
  v111 = type metadata accessor for TerminalElement.MatchingSpan();
  v11 = OUTLINED_FUNCTION_7(v111);
  v113 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v112 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  v117 = &v109 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  v27 = &v109 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_21(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_29_3();
  v32 = type metadata accessor for TerminalElement();
  v33 = OUTLINED_FUNCTION_7(v32);
  v116 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_4();
  v39 = v38 - v37;
  type metadata accessor for AppOntologyNode();
  static AppOntologyNode.applicationIdNode.getter();
  type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_28_18();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v40, v41);
  IntentNodeTraversable.value<A>(forNode:)();

  if (v119)
  {
    goto LABEL_9;
  }

  v42 = v117;
  v109 = v39;
  v110 = v32;
  static AppOntologyNode.appNameNode.getter();
  IntentNodeTraversable.intentNode<A>(forOntologyNode:)();

  v43 = type metadata accessor for TerminalIntentNode();
  OUTLINED_FUNCTION_9_40(v27, 1, v43);
  if (v52)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
    v48 = v0;
    v44 = OUTLINED_FUNCTION_54_19();
    __swift_storeEnumTagSinglePayload(v44, v45, 1, v110);
LABEL_7:
    v53 = &_s12SiriOntology15TerminalElementVSgMd;
    v54 = &_s12SiriOntology15TerminalElementVSgMR;
    v55 = v48;
LABEL_8:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, v53, v54);
    goto LABEL_9;
  }

  v46 = TerminalIntentNode.elements.getter();
  OUTLINED_FUNCTION_40(v43);
  (*(v47 + 8))(v27, v43);
  v48 = v0;
  specialized BidirectionalCollection.last.getter(v46, v0);

  v49 = OUTLINED_FUNCTION_54_19();
  v50 = v110;
  OUTLINED_FUNCTION_9_40(v49, v51, v110);
  if (v52)
  {
    goto LABEL_7;
  }

  (*(v116 + 32))(v109, v0, v50);
  v56 = v42;
  TerminalElement.value.getter();
  type metadata accessor for TerminalElement.Value();
  OUTLINED_FUNCTION_1_0(v42);
  if (v57)
  {
    v58 = OUTLINED_FUNCTION_24_28();
    v59(v58);
    v53 = &_s12SiriOntology15TerminalElementV5ValueOSgMd;
    v54 = &_s12SiriOntology15TerminalElementV5ValueOSgMR;
LABEL_23:
    v55 = v56;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78();
  v61 = v60;
  v63 = *(v62 + 88);
  v64 = OUTLINED_FUNCTION_13_17();
  v66 = v65(v64);
  if (v66 != enum case for TerminalElement.Value.string(_:))
  {
    v77 = OUTLINED_FUNCTION_24_28();
    v78(v77);
LABEL_18:
    v79 = *(v61 + 8);
    v80 = OUTLINED_FUNCTION_13_17();
    v81(v80);
    goto LABEL_9;
  }

  v67 = *(v61 + 96);
  v68 = OUTLINED_FUNCTION_13_17();
  v69(v68);
  v71 = *v42;
  v70 = v42[1];
  v72 = v114;
  TerminalElement.origin.getter();
  v73 = type metadata accessor for TerminalElement.Origin();
  OUTLINED_FUNCTION_1_0(v72);
  if (v52)
  {
    v74 = OUTLINED_FUNCTION_24_28();
    v75(v74);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, &_s12SiriOntology15TerminalElementV6OriginVSgMd, &_s12SiriOntology15TerminalElementV6OriginVSgMR);
    v76 = type metadata accessor for TerminalElement.OriginDetail();
    v56 = v115;
    __swift_storeEnumTagSinglePayload(v115, 1, 1, v76);
LABEL_22:
    v53 = &_s12SiriOntology15TerminalElementV12OriginDetailOSgMd;
    v54 = &_s12SiriOntology15TerminalElementV12OriginDetailOSgMR;
    goto LABEL_23;
  }

  v56 = v115;
  TerminalElement.Origin.originDetail.getter();
  OUTLINED_FUNCTION_40(v73);
  (*(v82 + 8))(v72, v73);
  type metadata accessor for TerminalElement.OriginDetail();
  OUTLINED_FUNCTION_1_0(v56);
  if (v83)
  {
    v84 = OUTLINED_FUNCTION_24_28();
    v85(v84);

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_78();
  v61 = v86;
  v88 = *(v87 + 88);
  v89 = OUTLINED_FUNCTION_13_17();
  v91 = v90(v89);
  if (v91 != enum case for TerminalElement.OriginDetail.matchingSpan(_:))
  {
    v107 = OUTLINED_FUNCTION_24_28();
    v108(v107);

    goto LABEL_18;
  }

  v92 = *(v61 + 96);
  v93 = OUTLINED_FUNCTION_13_17();
  v94(v93);
  v96 = v112;
  v95 = v113;
  v97 = v56;
  v98 = v111;
  (*(v113 + 32))(v112, v97, v111);
  v99 = TerminalElement.MatchingSpan.matcherNames.getter();
  v118 = 0xD000000000000010;
  v119 = 0x800000000045E930;
  __chkstk_darwin(v99);
  OUTLINED_FUNCTION_6_49();
  *(v100 - 16) = &v118;
  v101 = specialized Sequence.contains(where:)();

  if (v101)
  {
    v102._object = 0x800000000045D960;
    v102._countAndFlagsBits = 0xD000000000000017;
    v103 = String.hasSuffix(_:)(v102);
    v104 = v110;
    v105 = v116;
    if (v103)
    {
      v106 = String.count.getter();
      specialized BidirectionalCollection.dropLast(_:)(v106);
      static String._fromSubstring(_:)();
    }

    (*(v95 + 8))(v96, v98);
    (*(v105 + 8))(v109, v104);
  }

  else
  {

    (*(v95 + 8))(v96, v98);
    (*(v116 + 8))(v109, v110);
  }

LABEL_9:
  OUTLINED_FUNCTION_65();
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v1 = String.subscript.getter();

    return v1;
  }

  return result;
}

uint64_t AppIntentNode.appName.getter()
{
  type metadata accessor for AppOntologyNode();
  static AppOntologyNode.appNameNode.getter();
  type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_28_18();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1);
  OUTLINED_FUNCTION_23_6();
  IntentNodeTraversable.value<A>(forNode:)();

  return v3;
}

uint64_t protocol witness for NLIntentWrapper.intent.getter in conformance PhoneCallNLv3Intent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  OUTLINED_FUNCTION_23_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_19_0();

  return v7(v6);
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance AppIntentNode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type AppIntentNode and conformance AppIntentNode, type metadata accessor for AppIntentNode);

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance AppIntentNode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type AppIntentNode and conformance AppIntentNode, type metadata accessor for AppIntentNode);

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, v2);
}

PhoneCallFlowDelegatePlugin::PhonePreferredCallProvider_optional __swiftcall PhonePreferredCallProvider.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhonePreferredCallProvider.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::PhonePreferredCallProvider_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhonePreferredCallProvider@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhonePreferredCallProvider_optional *a2@<X8>)
{
  result.value = PhonePreferredCallProvider.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhonePreferredCallProvider@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallPreferredProvider.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance PhonePreferredCallProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = lazy protocol witness table accessor for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider();
  v13 = lazy protocol witness table accessor for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider();
  v14 = lazy protocol witness table accessor for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v12, v13, v14, v15, v16, v17, a9, a10);
}

BOOL SemanticTag.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SemanticTag.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SemanticTag@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SemanticTag.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider()
{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SemanticTag and conformance SemanticTag()
{
  result = lazy protocol witness table cache variable for type SemanticTag and conformance SemanticTag;
  if (!lazy protocol witness table cache variable for type SemanticTag and conformance SemanticTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SemanticTag and conformance SemanticTag);
  }

  return result;
}

void type metadata completion function for PhoneCallNLv3Intent()
{
  type metadata accessor for NLIntent();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppOntologyNode();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DomainOntologyNode();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallAttribute>, lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute);
        if (v3 <= 0x3F)
        {
          type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallAudioRoute>, lazy protocol witness table accessor for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
          if (v4 <= 0x3F)
          {
            type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallCapability>, lazy protocol witness table accessor for type PhoneCallCapability and conformance PhoneCallCapability);
            if (v5 <= 0x3F)
            {
              type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallPreferredProvider>, lazy protocol witness table accessor for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
              if (v6 <= 0x3F)
              {
                type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallDestinationType>, lazy protocol witness table accessor for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for PhoneCallContactOntologyNode(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for TerminalOntologyNode<String>();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallNoun>, lazy protocol witness table accessor for type PhoneCallNoun and conformance PhoneCallNoun);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallVerb>, lazy protocol witness table accessor for type PhoneCallVerb and conformance PhoneCallVerb);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for NonTerminalOntologyNode();
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for SmsGroupOntologyNode(319);
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

void type metadata accessor for TerminalOntologyNode<String>()
{
  if (!lazy cache variable for type metadata for TerminalOntologyNode<String>)
  {
    v0 = type metadata accessor for TerminalOntologyNode();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TerminalOntologyNode<String>);
    }
  }
}

void type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    OUTLINED_FUNCTION_23_6();
    v4 = type metadata accessor for TerminalOntologyNode();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for PhoneCallContactIntentNode()
{
  result = type metadata accessor for NonTerminalIntentNode();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for SmsGroupIntentNode()
{
  result = type metadata accessor for NonTerminalIntentNode();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NonTerminalOntologyNode();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhonePreferredCallProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SemanticTag(_BYTE *result, int a2, int a3)
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

uint64_t outlined copy of PhoneCallEmergencyType?(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return outlined copy of PhoneCallEmergencyType(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_36_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_19()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_80_6(unint64_t *a1)
{

  return lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(a1, v1);
}

uint64_t specialized Collection.first.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_40_4();
  LOBYTE(v6) = static AnyIndex.== infix(_:_:)();
  swift_unknownObjectRelease();
  if (v6)
  {
    result = swift_unknownObjectRelease();
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    dispatch thunk of _AnyCollectionBox.subscript.getter();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter(a1);
}

{
  return specialized Collection.first.getter(a1);
}

{
  v4 = OUTLINED_FUNCTION_31_20(a1);
  v5 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(v4);
  if (v3)
  {
    v6 = *(*(v5 - 8) + 80);
    OUTLINED_FUNCTION_19_1();
    outlined init with copy of DisambiguationItemWithDirectInvocationModel(v2 + v7, v1);
  }

  OUTLINED_FUNCTION_29_22();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

{
  return specialized Collection.first.getter(a1);
}

{
  return specialized Collection.first.getter(a1);
}

{
  return specialized Collection.first.getter(a1);
}

{
  return specialized Collection.first.getter(a1);
}

{
  return specialized Collection.first.getter(a1);
}

{
  v4 = OUTLINED_FUNCTION_31_20(a1);
  v6 = v5(v4);
  if (v3)
  {
    (*(*(v6 - 8) + 16))(v1, v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  OUTLINED_FUNCTION_29_22();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

Swift::Bool __swiftcall PhoneCallNLv4Intent.isCallLabelOnly()()
{
  v1 = *(v0 + 79);
  if (v1 == 17)
  {
    goto LABEL_12;
  }

  if (PhoneCallVerb.rawValue.getter(v1) == 1819042147 && v2 == 0xE400000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(v0 + 8);
  if (*(v5 + 16) != 1)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  _sSlsE5first7ElementQzSgvgSay27PhoneCallFlowDelegatePlugin04SiriC7Contact_pG_Tg5_0(v5, v9);
  v6 = v10;
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    OUTLINED_FUNCTION_19_0();
    isa = SiriPhoneContact.toINPerson()().super.isa;
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = INPerson.isUnnamedHandleLabel.getter();
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
  }

  return v6 & 1;
}

Swift::Bool __swiftcall PhoneCallNLv4Intent.isLabelOnlyRequest()()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16) == 1)
  {
    outlined init with copy of SignalProviding(v1 + 32, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    OUTLINED_FUNCTION_19_0();
    isa = SiriPhoneContact.toINPerson()().super.isa;
    __swift_destroy_boxed_opaque_existential_1(v5);
    v3 = INPerson.isUnnamedHandleLabel.getter();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

__n128 PhoneCallNLv4Intent.init(contactQueries:contacts:app:phoneCallAVMode:phoneCallAttributes:phoneCallAudioRoute:phoneCallCapability:phoneCallConfirmation:phoneCallDestinationType:phoneCallNoun:phoneCallPreferredProvider:phoneCallReference:phoneCallVerb:voiceMailVerb:voiceMailNoun:smsGroups:references:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  result = *a3;
  v13 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v13;
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 73) = a7;
  *(a9 + 74) = a8;
  *(a9 + 75) = a10;
  *(a9 + 76) = *(&a10 + 1);
  *(a9 + 78) = *(&a10 + 3);
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  return result;
}

uint64_t SiriPhoneContactImpl.__allocating_init(contactConvertible:contactRole:)(uint64_t *a1, int a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  v13 = specialized SiriPhoneContactImpl.__allocating_init(contactConvertible:contactRole:)(v11, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

void UsoEntity_common_App.applicationId.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for UsoIdentifier();
  v2 = OUTLINED_FUNCTION_1_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  i = v7 - v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  v106 = v11;
  OUTLINED_FUNCTION_4_0();
  v13 = __chkstk_darwin(v12);
  v15 = &v99 - v14;
  __chkstk_darwin(v13);
  v17 = &v99 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v19 = OUTLINED_FUNCTION_21(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_12_5();
  v24 = v22 - v23;
  v26 = __chkstk_darwin(v25);
  OUTLINED_FUNCTION_4_57(v26, v27, v28, v29, v30, v31, v32, v33, v99);
  v35 = __chkstk_darwin(v34);
  v37 = &v99 - v36;
  __chkstk_darwin(v35);
  v39 = &v99 - v38;
  v40 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v41 = v40;
  v103 = v39;
  v104 = i;
  v102 = v24;
  if (!v40)
  {
    OUTLINED_FUNCTION_12_9();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    goto LABEL_25;
  }

  v99 = v37;
  v100 = v15;
  v42 = *(v40 + 16);
  v39 = (v4 + 16);
  v105 = "Index";

  for (i = 0; ; ++i)
  {
    if (v42 == i)
    {

      v39 = v103;
      goto LABEL_23;
    }

    if (i >= *(v41 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v43 = *(v4 + 80);
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 16))(v17, v41 + v44 + *(v4 + 72) * i, v0);
    v45 = UsoIdentifier.namespace.getter();
    if (!v46)
    {
      goto LABEL_21;
    }

    v47 = v45 == 0x64695F6D657469 && v46 == 0xE700000000000000;
    if (v47)
    {
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v48 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v49 = UsoIdentifier.appBundleId.getter();
    v51 = v50;
    v52._countAndFlagsBits = v49;
    v52._object = v51;
    v53 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundleType.init(rawValue:), v52);

    if (v53)
    {
      if (v53 != 1)
      {
        goto LABEL_21;
      }

      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v54 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v55 = UsoIdentifier.value.getter();
    v57 = v56;

    v58 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v58 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {
      break;
    }

LABEL_21:
    (*(v4 + 8))(v17, v0);
  }

  OUTLINED_FUNCTION_15_39();
  v39 = v103;
  v97(v103, v17, v0);
LABEL_23:
  OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  i = v104;
  v24 = v102;
  v37 = v99;
  v15 = v100;
LABEL_25:
  outlined init with copy of PersonNameComponents?();
  OUTLINED_FUNCTION_1_0(v37);
  if (!v47)
  {

    OUTLINED_FUNCTION_15_39();
    v83(v15, v37, v0);
    UsoIdentifier.value.getter();
    v84 = *(v4 + 8);
    v85 = OUTLINED_FUNCTION_16_41();
    v86(v85);
    v87 = v39;
    goto LABEL_55;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  if (!v41)
  {
    v41 = v101;
    goto LABEL_48;
  }

  v67 = 0;
  i = 0x656D614E707061;
  v68 = *(v41 + 16);
  v39 = (v4 + 16);
  v105 = "Index";
  while (2)
  {
    if (v68 == v67)
    {

      v39 = v103;
      v41 = v101;
      goto LABEL_46;
    }

    if (v67 >= *(v41 + 16))
    {
      goto LABEL_60;
    }

    v69 = *(v4 + 80);
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 16))(v106, v41 + v70 + *(v4 + 72) * v67, v0);
    v71 = UsoIdentifier.namespace.getter();
    if (!v72)
    {
      goto LABEL_44;
    }

    if (v71 == 0x656D614E707061 && v72 == 0xE700000000000000)
    {
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v74 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v75 = UsoIdentifier.appBundleId.getter();
    v77 = v76;
    v78._countAndFlagsBits = v75;
    v78._object = v77;
    v79 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundleType.init(rawValue:), v78);

    if (v79)
    {
      if (v79 == 1)
      {

        goto LABEL_43;
      }

LABEL_44:
      (*(v4 + 8))(v106, v0);
      ++v67;
      continue;
    }

    break;
  }

  v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v80 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  v109 = UsoIdentifier.value.getter();
  v110 = v81;
  v107 = 46;
  v108 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v82 = StringProtocol.contains<A>(_:)();

  if ((v82 & 1) == 0)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_15_39();
  v41 = v101;
  v98(v101, v106, v0);
  v39 = v103;
LABEL_46:
  v24 = v102;
  i = v104;
LABEL_48:
  OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  outlined init with copy of PersonNameComponents?();
  OUTLINED_FUNCTION_1_0(v24);
  if (v47)
  {
    OUTLINED_FUNCTION_9_20(v41);
    OUTLINED_FUNCTION_9_20(v39);
    OUTLINED_FUNCTION_9_20(v24);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_15_39();
  v92(i, v24, v0);
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_61:
    OUTLINED_FUNCTION_6_2();
  }

  v93 = type metadata accessor for Logger();
  __swift_project_value_buffer(v93, static Logger.siriPhone);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_0, v94, v95, "#UsoEntity_common_App falling back to appId from VocFile", v96, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  UsoIdentifier.value.getter();
  (*(v4 + 8))(i, v0);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v87 = v39;
LABEL_55:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
LABEL_56:
  OUTLINED_FUNCTION_65();
}

void UsoEntity_common_PhoneCallMode.phoneCallAVMode.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues();
  v3 = OUTLINED_FUNCTION_1_5(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v85 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMR);
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_5();
  v91 = v14 - v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  v18 = &v82[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_12_5();
  v84 = v23 - v24;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_13_5();
  v89 = v26;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_13_5();
  v90 = v28;
  OUTLINED_FUNCTION_4_0();
  v30 = __chkstk_darwin(v29);
  v32 = &v82[-v31];
  v33 = __chkstk_darwin(v30);
  v35 = &v82[-v34];
  __chkstk_darwin(v33);
  v37 = &v82[-v36];
  v88 = v1;
  dispatch thunk of UsoEntity_common_PhoneCallMode.definedValue.getter();
  v92 = v5;
  v86 = *(v5 + 104);
  v86(v35, enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Audio(_:), v0);
  OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v87 = v10;
  v42 = *(v10 + 48);
  outlined init with copy of PersonNameComponents?();
  outlined init with copy of PersonNameComponents?();
  OUTLINED_FUNCTION_1_0(v18);
  if (v43)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
    OUTLINED_FUNCTION_1_0(&v18[v42]);
    if (v43)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  outlined init with copy of PersonNameComponents?();
  OUTLINED_FUNCTION_1_0(&v18[v42]);
  if (v43)
  {
    OUTLINED_FUNCTION_16_25();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, v45, v46);
    OUTLINED_FUNCTION_16_25();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v47, v48, v49);
    (*(v92 + 8))(v32, v0);
LABEL_9:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMR);
    goto LABEL_10;
  }

  v62 = v92;
  (*(v92 + 32))(v85, &v18[v42], v0);
  OUTLINED_FUNCTION_9_54();
  lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(v63, v64);
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v62 + 8);
  v66 = OUTLINED_FUNCTION_16_41();
  v65(v66);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  (v65)(v32, v0);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  if ((v83 & 1) == 0)
  {
LABEL_10:
    v50 = v90;
    dispatch thunk of UsoEntity_common_PhoneCallMode.definedValue.getter();
    v51 = v89;
    v86(v89, enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Video(_:), v0);
    OUTLINED_FUNCTION_12_9();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    v56 = *(v87 + 48);
    v57 = v91;
    outlined init with copy of PersonNameComponents?();
    outlined init with copy of PersonNameComponents?();
    OUTLINED_FUNCTION_1_0(v57);
    if (v43)
    {
      OUTLINED_FUNCTION_77_1(v51);
      OUTLINED_FUNCTION_77_1(v50);
      OUTLINED_FUNCTION_1_0(v57 + v56);
      if (v43)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
        goto LABEL_20;
      }
    }

    else
    {
      outlined init with copy of PersonNameComponents?();
      OUTLINED_FUNCTION_1_0(v57 + v56);
      if (!v58)
      {
        v67 = v92;
        v68 = v85;
        (*(v92 + 32))(v85, v57 + v56, v0);
        OUTLINED_FUNCTION_9_54();
        lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(v69, v70);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v71 = *(v67 + 8);
        v71(v68, v0);
        OUTLINED_FUNCTION_40_4();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, v73, v74);
        OUTLINED_FUNCTION_40_4();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v75, v76, v77);
        v78 = OUTLINED_FUNCTION_16_41();
        (v71)(v78);
        OUTLINED_FUNCTION_40_4();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v79, v80, v81);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_77_1(v51);
      OUTLINED_FUNCTION_77_1(v50);
      v59 = *(v92 + 8);
      v60 = OUTLINED_FUNCTION_16_41();
      v61(v60);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMR);
  }

LABEL_20:
  OUTLINED_FUNCTION_65();
}

uint64_t static PhoneCallNLv4Intent.getMergedNLIntent(previousNLIntent:currentNLIntent:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  outlined init with copy of PersonNameComponents?();
  if (!*(&v84 + 1))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v83, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return outlined init with copy of SignalProviding(a1, a2);
  }

  outlined init with take of PhoneCallFeatureFlagProviding(&v83, v86);
  v4 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_8_8();
  v7(v6);
  if (_s27PhoneCallFlowDelegatePlugin0aB8NLIntentPAAE13isAppModified08previousF007currentF0SbAaB_p_AaB_ptFZAA0aB10NLv4IntentV_Tt1g5(v86, a1))
  {
    OUTLINED_FUNCTION_24_29();
    v8 = *(v4 + 16);
    v9 = OUTLINED_FUNCTION_8_8();
    v10(v9);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v83, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
    v83 = v80;
    v84 = v81;
    v85 = v82;
  }

  OUTLINED_FUNCTION_24_29();
  OUTLINED_FUNCTION_15_39();
  v11 = OUTLINED_FUNCTION_8_8();
  v13 = v12(v11);
  if (v13 == 2)
  {
    __swift_project_boxed_opaque_existential_1(v86, v87);
    OUTLINED_FUNCTION_15_39();
    v14 = OUTLINED_FUNCTION_8_8();
    v13 = v15(v14);
  }

  v79 = v13;
  v16 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = OUTLINED_FUNCTION_20_32();
  v19 = v18(v17);
  if (v19 == 4)
  {
    v16 = v87;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v20 = OUTLINED_FUNCTION_20_32();
    v19 = v21(v20);
  }

  v78 = v19;
  v22 = a1[3];
  v23 = a1[4];
  OUTLINED_FUNCTION_165(a1);
  v25 = *(v24 + 72);
  v26 = OUTLINED_FUNCTION_25_0();
  if (v27(v26) == 5)
  {
    goto LABEL_9;
  }

  v30 = a1[3];
  v31 = a1[4];
  OUTLINED_FUNCTION_165(a1);
  v33 = *(v32 + 72);
  v34 = OUTLINED_FUNCTION_25_0();
  v36 = v35(v34);
  if (v36 != 5)
  {
    if (PhoneCallDestinationType.rawValue.getter(v36) == 0x6C616D726F6ELL && v73 == 0xE600000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_16_25();
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v75 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v28 = v86;
    goto LABEL_13;
  }

LABEL_12:
  v28 = a1;
LABEL_13:
  v37 = v28[3];
  v38 = v28[4];
  OUTLINED_FUNCTION_165(v28);
  v40 = *(v39 + 72);
  v41 = OUTLINED_FUNCTION_25_0();
  v77 = v42(v41);
  OUTLINED_FUNCTION_165(v86);
  v44 = *(v43 + 104);
  v45 = OUTLINED_FUNCTION_25_0();
  v47 = v46(v45);
  if ((_s27PhoneCallFlowDelegatePlugin0aB8NLIntentPAAE02isaB12VerbModified08previousF007currentF0SbAaB_p_AaB_ptFZAA0aB10NLv4IntentV_Tt1g5(v86, a1) & 1) != 0 || (v48 = v87, v49 = v88, __swift_project_boxed_opaque_existential_1(v86, v87), (*(v49 + 104))(v48, v49) == 17))
  {
    v50 = a1[3];
    v51 = a1[4];
    OUTLINED_FUNCTION_165(a1);
    v53 = *(v52 + 104);
    v54 = OUTLINED_FUNCTION_25_0();
    v47 = v55(v54);
  }

  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  v76 = (*(v57 + 128))(v56, v57);
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  v60 = (*(v59 + 24))(v58, v59);
  a2[3] = &type metadata for PhoneCallNLv4Intent;
  a2[4] = &protocol witness table for PhoneCallNLv4Intent;
  v61 = swift_allocObject();
  *a2 = v61;
  outlined init with copy of PersonNameComponents?();
  v62 = v47;
  OUTLINED_FUNCTION_24_29();
  v63 = *(v16 + 40);
  v64 = OUTLINED_FUNCTION_8_8();
  v66 = v65(v64);
  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  v69 = (*(v68 + 136))(v67, v68);
  v70 = a1[3];
  v71 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v70);
  v72 = (*(v71 + 144))(v70, v71);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v83, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
  *(v61 + 16) = v76;
  *(v61 + 24) = v60;
  *(v61 + 72) = v79;
  *(v61 + 80) = v66;
  *(v61 + 88) = v78;
  *(v61 + 89) = 1282;
  *(v61 + 91) = v77;
  *(v61 + 92) = 777;
  *(v61 + 94) = 35;
  *(v61 + 95) = v62;
  *(v61 + 96) = 518;
  *(v61 + 104) = v69;
  *(v61 + 112) = v72;
  return __swift_destroy_boxed_opaque_existential_1(v86);
}

void static PhoneCallNLv4Intent.appendNewContactQueries(contactQueries:persons:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for ContactQuery();
  v12 = OUTLINED_FUNCTION_1_5(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = *(v4 + 16);
  if (v20 > 1 || specialized Array.count.getter(v2) >= 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v20;

      *(v24 + 12) = 2048;
      *(v24 + 14) = specialized Array.count.getter(v2);

      _os_log_impl(&dword_0, v22, v23, "#PhoneCallNLv4Intent appendNewContactQueries is skipped since contactQueries array has size:%ld and persons array has size:%ld", v24, 0x16u);
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

    goto LABEL_8;
  }

  if (!specialized Array.count.getter(v2))
  {
LABEL_8:

    goto LABEL_9;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v25 = *(v2 + 32);
  }

  v26 = v25;
  if ((INPerson.isUnnamedHandleLabel.getter() & 1) == 0)
  {

    goto LABEL_8;
  }

  specialized Collection.first.getter(v4);
  OUTLINED_FUNCTION_1_0(v10);
  if (v27)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
    goto LABEL_8;
  }

  (*(v14 + 32))(v19, v10, v0);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.siriPhone);
  v29 = v26;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v32 = 138412546;
    *(v32 + 4) = v29;
    *v33 = v29;
    *(v32 + 12) = 2080;
    swift_beginAccess();
    lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery);
    v34 = v29;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v43);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_0, v30, v31, "#PhoneCallNLv4Intent append isMe to contact queries based on person:%@ contactQuery:%s", v32, 0x16u);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  swift_beginAccess();
  ContactQuery.isMe.setter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  v38 = *(v14 + 72);
  v39 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_424FD0;
  (*(v14 + 16))(v40 + v39, v19, v0);
  (*(v14 + 8))(v19, v0);

LABEL_9:
  OUTLINED_FUNCTION_65();
}

BOOL _s27PhoneCallFlowDelegatePlugin0aB8NLIntentPAAE13isAppModified08previousF007currentF0SbAaB_p_AaB_ptFZAA0aB10NLv4IntentV_Tt1g5(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = PhoneCallNLIntent.applicationId.getter(v4, v5);
  LOBYTE(v5) = specialized Optional<A>.isNilOrEmpty.getter(v6, v7);

  if ((v5 & 1) == 0)
  {
    v13 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v13);
    v15 = PhoneCallNLIntent.applicationId.getter(v13, v14);
    v17 = v16;
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v20 = PhoneCallNLIntent.applicationId.getter(v18, v19);
    if (v17)
    {
      if (!v21)
      {
        goto LABEL_23;
      }

      if (v15 == v20 && v17 == v21)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else if (v21)
    {
      goto LABEL_23;
    }
  }

  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = PhoneCallNLIntent.appName.getter(v8, v9);
  LOBYTE(v9) = specialized Optional<A>.isNilOrEmpty.getter(v10, v11);

  if (v9)
  {
    return 0;
  }

  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v26 = PhoneCallNLIntent.appName.getter(v24, v25);
  v28 = v27;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = PhoneCallNLIntent.appName.getter(v29, v30);
  if (!v28)
  {
    if (!v32)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (!v32)
  {
LABEL_23:

    return 1;
  }

  if (v26 == v31 && v28 == v32)
  {

    return 0;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v34 & 1) == 0;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB8NLIntentPAAE02isaB12VerbModified08previousF007currentF0SbAaB_p_AaB_ptFZAA0aB10NLv4IntentV_Tt1g5(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = *(v4 + 104);
  v6 = v5(v3, v4);
  if (v6 != 17)
  {
    if (PhoneCallVerb.rawValue.getter(v6) == 1819042147 && v19 == 0xE400000000000000)
    {

      goto LABEL_22;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_22;
    }
  }

  if (v5(v3, v4) == 17)
  {
LABEL_22:
    v22 = 0;
    return v22 & 1;
  }

  v7 = v5(v3, v4);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 104))(v8, v9);
  v11 = v10 == 17 && v7 == 17;
  if (v7 != 17 && v10 != 17)
  {
    v13 = v10;
    v14 = PhoneCallVerb.rawValue.getter(v7);
    v16 = v15;
    if (v14 == PhoneCallVerb.rawValue.getter(v13) && v16 == v17)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v22 = v11 ^ 1;
  return v22 & 1;
}

BOOL PhoneNumberTag.init(tagName:)()
{
  OUTLINED_FUNCTION_1_15();

  specialized Collection.prefix(_:)(1);
  Substring.lowercased()();
  OUTLINED_FUNCTION_32_19();

  specialized Collection.dropFirst(_:)(1uLL);
  lazy protocol witness table accessor for type Substring and conformance Substring();

  String.append<A>(contentsOf:)();

  v2._countAndFlagsBits = v0;
  v2._object = v1;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneNumberTag.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t PhoneCallNLv4Intent.phoneCallAttributes.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

double static PhoneCallNLv4Intent.getConfirmationNLIntent(phoneCallConfirmation:)@<D0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for PhoneCallNLv4Intent;
  a2[4] = &protocol witness table for PhoneCallNLv4Intent;
  v4 = swift_allocObject();
  *a2 = v4;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 16) = _swiftEmptyArrayStorage;
  *(v4 + 24) = _swiftEmptyArrayStorage;
  *(v4 + 72) = 2;
  *(v4 + 80) = 0;
  *(v4 + 88) = 516;
  *(v4 + 90) = a1;
  *&result = 587401477;
  *(v4 + 91) = 587401477;
  *(v4 + 95) = 1553;
  *(v4 + 97) = 2;
  *(v4 + 104) = _swiftEmptyArrayStorage;
  *(v4 + 112) = _swiftEmptyArrayStorage;
  return result;
}

void UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UsoIdentifier();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  v11 = v9 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v40 - v17;
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  v21 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (v21)
  {
    specialized Collection.first.getter(v21);

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v22 = v45;
      (*(v45 + 32))(v20, v6, v7);
      UsoIdentifier.value.getter();
      OUTLINED_FUNCTION_32_19();
      (*(v22 + 8))(v20, v7);
LABEL_21:
      OUTLINED_FUNCTION_65();
      return;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  v41 = v15;
  v42 = v18;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v43 = v0;
  v23 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v44 = *(v23 + 16);
  if (!v44)
  {
LABEL_15:

    dispatch thunk of UsoEntity_common_PersonRelationship.relationshipType.getter();
    if (v35)
    {
      OUTLINED_FUNCTION_32_19();
    }

    else if (dispatch thunk of UsoEntity_common_PersonRelationship.relationshipTypeAsExpression.getter())
    {
      dispatch thunk of CodeGenExpression.operand.getter();
    }

    goto LABEL_21;
  }

  v24 = 0;
  v25 = *(v45 + 80);
  OUTLINED_FUNCTION_19_1();
  v27 = v23 + v26;
  v29 = (v28 + 8);
  while (v24 < *(v23 + 16))
  {
    v30 = v7;
    (*(v45 + 16))(v11, v27 + *(v45 + 72) * v24, v7);
    v31 = UsoIdentifier.namespace.getter();
    if (v32)
    {
      if (v31 == 0xD000000000000012 && v32 == 0x8000000000452860)
      {

LABEL_20:

        v37 = v45 + 32;
        v36 = *(v45 + 32);
        v38 = v41;
        v36(v41, v11, v30);
        v39 = v42;
        v36(v42, v38, v30);
        UsoIdentifier.value.getter();
        OUTLINED_FUNCTION_32_19();
        (*(v37 - 24))(v39, v30);
        goto LABEL_21;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_20;
      }
    }

    ++v24;
    v7 = v30;
    (*v29)(v11, v30);
    if (v44 == v24)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void UsoEntity_common_PhoneNumber.tags.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for UsoIdentifier();
  v2 = OUTLINED_FUNCTION_1_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v76 = v7 - v8;
  OUTLINED_FUNCTION_4_0();
  v10 = __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4_57(v10, v11, v12, v13, v14, v15, v16, v17, v71);
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  v21 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v22 = 0;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v77 = *(v23 + 2);
  v78 = (v4 + 16);
  v73 = (v4 + 32);
  v74 = _swiftEmptyArrayStorage;
  v24 = (v4 + 8);
  while (v77 != v22)
  {
    if (v22 >= *(v23 + 2))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v26 = *(v4 + 72);
    (*(v4 + 16))(v20, &v23[v25 + v26 * v22], v0);
    v27 = UsoIdentifier.namespace.getter();
    if (v28)
    {
      if (v27 == 0x6D754E656E6F6870 && v28 == 0xEB00000000726562)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v72 = *v73;
      v72(v75, v20, v0);
      v34 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v34[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v79;
      }

      v37 = v34[2];
      v38 = (v37 + 1);
      if (v37 >= v34[3] >> 1)
      {
        v74 = (v37 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = v74;
        v34 = v79;
      }

      ++v22;
      v34[2] = v38;
      v74 = v34;
      v72(v34 + v25 + v37 * v26, v75, v0);
    }

    else
    {
LABEL_13:
      v31 = *v24;
      v32 = OUTLINED_FUNCTION_16_41();
      v33(v32);
      ++v22;
    }
  }

  v39 = v74[2];
  if (v39)
  {
    v79 = _swiftEmptyArrayStorage;
    v40 = v74;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v41 = v79;
    v42 = *(v4 + 80);
    OUTLINED_FUNCTION_19_1();
    v44 = v40 + v43;
    v77 = *(v4 + 72);
    v75 = *(v4 + 16);
    do
    {
      v45 = v76;
      v75(v76, v44, v0);
      v46 = UsoIdentifier.value.getter();
      v48 = v47;
      (*v24)(v45, v0);
      v79 = v41;
      v49 = v41[2];
      if (v49 >= v41[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v41 = v79;
      }

      v41[2] = v49 + 1;
      v50 = &v41[2 * v49];
      v50[4] = v46;
      v50[5] = v48;
      v44 = v77 + v44;
      --v39;
    }

    while (v39);
  }

  else
  {

    v41 = _swiftEmptyArrayStorage;
  }

  v51 = 0;
  v52 = v41[2];
  v53 = v41 + 5;
  v77 = v41 + 5;
  v78 = _swiftEmptyArrayStorage;
LABEL_28:
  v54 = &v53[2 * v51];
  while (v52 != v51)
  {
    if (v51 >= v41[2])
    {
      goto LABEL_39;
    }

    ++v51;
    v55 = v54 + 2;
    v56 = *(v54 - 1);
    v57 = *v54;

    String.index(_:offsetBy:limitedBy:)();
    String.subscript.getter();
    v58 = Substring.lowercased()();

    OUTLINED_FUNCTION_16_25();
    v60 = specialized Collection.dropFirst(_:)(v59);
    v83 = v58;
    v79 = v60;
    v80 = v61;
    v81 = v62;
    v82 = v63;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    v64 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoEntity_common_PhoneNumber.tags.getter, v83);

    v54 = v55;
    if (!v64)
    {
      v65 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 16) + 1, 1, v65);
        v65 = v69;
      }

      v67 = *(v65 + 16);
      v66 = *(v65 + 24);
      v68 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1, v65);
        v65 = v70;
      }

      v53 = v77;
      v78 = v65;
      *(v65 + 16) = v68;
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_65();
}

void UsoEntity_common_Group.smsGroupNameId.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = type metadata accessor for UsoIdentifier();
  v3 = OUTLINED_FUNCTION_1_5(v2);
  v112 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = v103 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v13 = OUTLINED_FUNCTION_23_1(v104);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_12_5();
  v107 = v16 - v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  v103[2] = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_13_5();
  v106 = v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4_57(v23, v24, v25, v26, v27, v28, v29, v30, v103[0]);
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_13_5();
  v108 = v32;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_13_5();
  v109 = v34;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v35);
  v37 = v103 - v36;
  v38 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v113 = v0;
  v110 = v37;
  if (v38)
  {
    v39 = v38;
    v111 = *(v38 + 16);
    if (v111)
    {
      v103[1] = v1;
      v40 = 0;
      v41 = v113;
      v42 = *(v112 + 80);
      OUTLINED_FUNCTION_19_1();
      v44 = v39 + v43;
      v46 = (v45 + 16);
      v47 = (v45 + 8);
      while (v40 < *(v39 + 16))
      {
        (*(v112 + 16))(v12, v44 + *(v112 + 72) * v40, v41);
        v48 = UsoIdentifier.namespace.getter();
        if (v49)
        {
          if (v48 == 0xD000000000000014 && v49 == 0x80000000004528E0)
          {

LABEL_18:

            (*(v112 + 32))(v110, v12, v113);
            OUTLINED_FUNCTION_12_9();
            __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
            goto LABEL_19;
          }

          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v51)
          {
            goto LABEL_18;
          }
        }

        ++v40;
        v41 = v113;
        (*v47)(v12, v113);
        if (v111 == v40)
        {

          v37 = v110;
          goto LABEL_15;
        }
      }

      goto LABEL_45;
    }

    v41 = v113;
LABEL_15:
    v52 = v37;
    v53 = 1;
    v54 = 1;
    v55 = v41;
  }

  else
  {
    OUTLINED_FUNCTION_12_9();
  }

  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
LABEL_19:
  v60 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v41 = *(v60 + 16);
  v61 = v113;
  if (v41)
  {
    v62 = 0;
    v63 = *(v112 + 80);
    OUTLINED_FUNCTION_19_1();
    v65 = v60 + v64;
    v46 = (v66 + 8);
    while (v62 < *(v60 + 16))
    {
      (*(v112 + 16))(v9, v65 + *(v112 + 72) * v62, v61);
      v67 = UsoIdentifier.namespace.getter();
      if (v68)
      {
        if (v67 == 0xD000000000000016 && v68 == 0x8000000000452910)
        {

LABEL_31:

          v61 = v113;
          (*(v112 + 32))(v109, v9, v113);
          v41 = v110;
          goto LABEL_32;
        }

        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v70)
        {
          goto LABEL_31;
        }
      }

      ++v62;
      v61 = v113;
      (*v46)(v9, v113);
      if (v41 == v62)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_6_2();
    goto LABEL_37;
  }

LABEL_29:

  v41 = v110;
LABEL_32:
  v71 = v105;
  v46 = v106;
  OUTLINED_FUNCTION_29_22();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  outlined init with copy of PersonNameComponents?();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v61);
  v9 = v108;
  if (EnumTagSinglePayload == 1)
  {
    outlined init with copy of PersonNameComponents?();
    if (__swift_getEnumTagSinglePayload(v71, 1, v61) != 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v71, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }
  }

  else
  {
    (*(v112 + 32))(v108, v71, v61);
    OUTLINED_FUNCTION_29_22();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_46;
  }

LABEL_37:
  v81 = type metadata accessor for Logger();
  __swift_project_value_buffer(v81, static Logger.siriPhone);
  outlined init with copy of PersonNameComponents?();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v114 = v85;
    *v84 = 136315138;
    outlined init with copy of PersonNameComponents?();
    v86 = String.init<A>(describing:)();
    v88 = v87;
    v41 = v110;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v46, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v114);

    *(v84 + 4) = v89;
    v9 = v108;
    _os_log_impl(&dword_0, v82, v83, "#UsoEntity_common_Group smsGroupNameId UsoIdentifier: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v46, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  }

  v90 = v107;
  outlined init with copy of PersonNameComponents?();
  v91 = v113;
  if (__swift_getEnumTagSinglePayload(v90, 1, v113) == 1)
  {
    OUTLINED_FUNCTION_9_20(v9);
    v92 = OUTLINED_FUNCTION_16_41();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v92, v93, &_s12SiriOntology13UsoIdentifierVSgMR);
    OUTLINED_FUNCTION_9_20(v41);
    OUTLINED_FUNCTION_9_20(v90);
  }

  else
  {
    UsoIdentifier.value.getter();
    OUTLINED_FUNCTION_40_4();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v94, v95, v96);
    OUTLINED_FUNCTION_40_4();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v97, v98, v99);
    OUTLINED_FUNCTION_40_4();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v100, v101, v102);
    (*(v112 + 8))(v90, v91);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t UsoEntity_common_App.appName.getter()
{
  result = dispatch thunk of UsoEntity_common_App.name.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

    return 0;
  }

  return result;
}

BOOL PhoneNumber.isEmergencyNumber.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + 16) != 0;

  return v2;
}

uint64_t PhoneNumberImpl.value.getter()
{
  OUTLINED_FUNCTION_1_15();

  return v0;
}

BOOL PhoneNumberTag.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneNumberTag.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneNumberTag@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = PhoneNumberTag.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized SiriPhoneContactImpl.__allocating_init(contactConvertible:contactRole:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v147 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v148 = &v134 - v11;
  v149 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  v154 = *(v149 - 8);
  v12 = *(v154 + 64);
  __chkstk_darwin(v149);
  v137 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
  v14 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v142 = &v134 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v140 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v155 = &v134 - v20;
  __chkstk_darwin(v21);
  v146 = &v134 - v22;
  v156 = type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues();
  v144 = *(v156 - 8);
  v23 = *(v144 + 64);
  __chkstk_darwin(v156);
  v136 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
  v25 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v158 = &v134 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v138 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v152 = &v134 - v31;
  __chkstk_darwin(v32);
  v153 = &v134 - v33;
  v34 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v151 = *(v34 - 8);
  v35 = *(v151 + 64);
  __chkstk_darwin(v34);
  v135 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  v37 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v39 = &v134 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v139 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v150 = &v134 - v44;
  __chkstk_darwin(v45);
  v47 = &v134 - v46;
  v163[3] = a4;
  v163[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v163);
  v49 = (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v50 = (*(a3 + 656))(v49);
  v51 = *(a5 + 24);
  v159 = boxed_opaque_existential_1;
  v160 = a4;
  v52 = v51(a4, a5);
  v157 = a5;
  if (v52)
  {
    CodeGenBase.entity.getter();

    type metadata accessor for UsoEntity_common_PersonRelationship();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v162)
    {
      UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
      v60 = v59;
      v62 = v61;

      swift_beginAccess();
      v63 = *(v50 + 232);
      *(v50 + 224) = v60;
      *(v50 + 232) = v62;
      a5 = v157;
    }

    else
    {
    }
  }

  v64 = v160;
  UsoContactConvertible.emergencyType.getter(v160, a5, v53, v54, v55, v56, v57, v58, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
  v66 = v65;
  v68 = v67;
  swift_beginAccess();
  v69 = *(v50 + 272);
  v70 = *(v50 + 280);
  *(v50 + 272) = v66;
  *(v50 + 280) = v68;
  outlined consume of PhoneCallEmergencyType?(v69, v70);
  v71 = (*(a5 + 64))(v64, a5);
  swift_beginAccess();
  v72 = *(v50 + 296);
  *(v50 + 296) = v71;

  v73 = (*(a5 + 16))(v64, a5);
  v75 = v74;
  swift_beginAccess();
  v76 = *(v50 + 48);
  *(v50 + 40) = v73;
  *(v50 + 48) = v75;

  v77 = v47;
  if ((*(a5 + 32))(v64, a5))
  {
    dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v34);
  }

  v78 = v150;
  (*(v151 + 104))(v150, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v34);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v34);
  v79 = *(v141 + 48);
  outlined init with copy of PersonNameComponents?();
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v39, 1, v34) != 1)
  {
    v81 = v139;
    outlined init with copy of PersonNameComponents?();
    if (__swift_getEnumTagSinglePayload(&v39[v79], 1, v34) != 1)
    {
      v82 = v151;
      v83 = &v39[v79];
      v84 = v135;
      (*(v151 + 32))(v135, v83, v34);
      lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, &type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues);
      LODWORD(v141) = dispatch thunk of static Equatable.== infix(_:_:)();
      v85 = *(v82 + 8);
      v85(v84, v34);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v150, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v77, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v85(v139, v34);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v80 = v153;
      if ((v141 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v150, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v77, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    (*(v151 + 8))(v81, v34);
LABEL_13:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
    v80 = v153;
    goto LABEL_16;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v77, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  if (__swift_getEnumTagSinglePayload(&v39[v79], 1, v34) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v80 = v153;
LABEL_15:
  swift_beginAccess();
  *(v50 + 289) = 31;
LABEL_16:
  v86 = (*(a5 + 40))(v160, a5);
  v87 = v155;
  v88 = v144;
  if (!v86)
  {
    goto LABEL_27;
  }

  CodeGenBase.entity.getter();

  type metadata accessor for UsoEntity_common_PhoneNumber();

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
  if (v161)
  {
    dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
    if (v89)
    {

      v90 = dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
      v92 = v91;

      swift_beginAccess();
      v93 = *(v50 + 200);
      *(v50 + 192) = v90;
      *(v50 + 200) = v92;
      v87 = v155;
    }

    else
    {
    }
  }

  type metadata accessor for UsoEntity_common_EmailAddress();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v161)
  {
    goto LABEL_25;
  }

  dispatch thunk of UsoEntity_common_EmailAddress.value.getter();
  if (!v94)
  {

LABEL_25:

    goto LABEL_26;
  }

  v95 = dispatch thunk of UsoEntity_common_EmailAddress.value.getter();
  v97 = v96;

  swift_beginAccess();
  v98 = *(v50 + 216);
  *(v50 + 208) = v95;
  *(v50 + 216) = v97;
  v87 = v155;

LABEL_26:
  a5 = v157;
LABEL_27:
  if ((*(a5 + 48))(v160, a5))
  {
    dispatch thunk of UsoEntity_common_SearchQualifier.definedValue.getter();

    v99 = v156;
  }

  else
  {
    v99 = v156;
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v156);
  }

  v100 = v152;
  v101 = v88;
  (*(v88 + 104))(v152, enum case for UsoEntity_common_SearchQualifier.DefinedValues.common_SearchQualifier_Exactly(_:), v99);
  __swift_storeEnumTagSinglePayload(v100, 0, 1, v99);
  v102 = *(v143 + 48);
  v103 = v158;
  outlined init with copy of PersonNameComponents?();
  v104 = v156;
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v103, 1, v104) != 1)
  {
    v109 = v158;
    v110 = v138;
    outlined init with copy of PersonNameComponents?();
    if (__swift_getEnumTagSinglePayload(v109 + v102, 1, v104) != 1)
    {
      v112 = v101;
      v113 = *(v101 + 32);
      v114 = v158;
      v115 = v136;
      v113(v136, v158 + v102, v104);
      lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_SearchQualifier.DefinedValues and conformance UsoEntity_common_SearchQualifier.DefinedValues, &type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues);
      v116 = v104;
      v117 = dispatch thunk of static Equatable.== infix(_:_:)();
      v118 = *(v112 + 8);
      v118(v115, v116);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v152, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v153, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      v118(v110, v116);
      v87 = v155;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v114, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      if (v117)
      {
        LODWORD(v108) = 256;
      }

      else
      {
        LODWORD(v108) = 0;
      }

      v111 = v157;
      v107 = v142;
      goto LABEL_41;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v152, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v153, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    (*(v101 + 8))(v110, v104);
    v107 = v142;
    goto LABEL_35;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v100, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v105 = v158;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v80, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105 + v102, 1, v104);
  v107 = v142;
  if (EnumTagSinglePayload != 1)
  {
LABEL_35:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v158, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
    LODWORD(v108) = 0;
    goto LABEL_36;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v158, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  LODWORD(v108) = 256;
LABEL_36:
  v111 = v157;
LABEL_41:
  v119 = v146;
  v120 = v149;
  if ((*(v111 + 56))(v160) && (v121 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , v121))
  {
    dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v120);
  }

  (*(v154 + 104))(v87, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_None(_:), v120);
  __swift_storeEnumTagSinglePayload(v87, 0, 1, v120);
  v122 = *(v145 + 48);
  outlined init with copy of PersonNameComponents?();
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v107, 1, v120) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v119, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    if (__swift_getEnumTagSinglePayload(v107 + v122, 1, v120) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v107, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      v123 = 0x10000;
      goto LABEL_54;
    }

LABEL_50:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v107, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
    v123 = 0;
    goto LABEL_54;
  }

  v124 = v140;
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v107 + v122, 1, v120) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v119, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    (*(v154 + 8))(v124, v120);
    goto LABEL_50;
  }

  LODWORD(v160) = v108;
  v108 = v154;
  v125 = v137;
  (*(v154 + 32))(v137, v107 + v122, v120);
  lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
  LODWORD(v159) = dispatch thunk of static Equatable.== infix(_:_:)();
  v126 = v119;
  v127 = v120;
  v128 = v126;
  v129 = *(v108 + 8);
  v129(v125, v127);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v128, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v129(v140, v127);
  LOWORD(v108) = v160;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v107, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  if (v159)
  {
    v123 = 0x10000;
  }

  else
  {
    v123 = 0;
  }

LABEL_54:
  v130 = v108 | v147 | v123;
  swift_beginAccess();
  *(v50 + 293) = BYTE2(v123);
  *(v50 + 291) = v130;
  v131 = v148;
  outlined init with copy of SignalProviding(v163, v148);
  v132 = type metadata accessor for BackingContact(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v131, 0, 1, v132);
  swift_beginAccess();
  outlined assign with take of PhoneCallApp?();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v163);
  return v50;
}

unint64_t lazy protocol witness table accessor for type PhoneNumberTag and conformance PhoneNumberTag()
{
  result = lazy protocol witness table cache variable for type PhoneNumberTag and conformance PhoneNumberTag;
  if (!lazy protocol witness table cache variable for type PhoneNumberTag and conformance PhoneNumberTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberTag and conformance PhoneNumberTag);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneNumberTag(_BYTE *result, int a2, int a3)
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

uint64_t outlined assign with take of PhoneCallApp?()
{
  OUTLINED_FUNCTION_1_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_19_0();
  v7(v6);
  return v0;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhoneCallNotificationFlowStrategy.makeNotificationBody(_:)(void (*a1)(void), uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  type metadata accessor for PhoneCallFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28[1] = a2;
  v12 = a1;
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  v14 = Locale.identifier.getter();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v28[6] = v14;
  v28[7] = v16;
  v28[4] = 45;
  v28[5] = 0xE100000000000000;
  v28[2] = 95;
  v28[3] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v20 = outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(0xD000000000000015, 0x800000000045EA90, 0xD000000000000010, 0x800000000045EAB0, v13, v17, v19, v10);
  v22 = v21;

  a1 = v12;
  if (v22)
  {
    (v12)(v20, v22, 0);
  }

  else
  {
LABEL_4:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Could not localize the personal domain activity notification", v27, 2u);
    }

    lazy protocol witness table accessor for type LocalizationError and conformance LocalizationError();
    swift_allocError();
    a1();
  }
}

uint64_t protocol witness for PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody() in conformance PhoneCallNotificationFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody() in conformance PhoneCallNotificationFlowStrategy;

  return PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()(a1, a2);
}

{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

unint64_t lazy protocol witness table accessor for type LocalizationError and conformance LocalizationError()
{
  result = lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError;
  if (!lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError;
  if (!lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalizationError(_BYTE *result, int a2, int a3)
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

uint64_t PhoneCallProvider.Builder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  PhoneCallProvider.Builder.init()();
  return v3;
}

uint64_t key path setter for PhoneCallProvider.Builder.preferredCallProvider : PhoneCallProvider.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 112))(v7);
}

uint64_t key path setter for PhoneCallProvider.Builder.providerName : PhoneCallProvider.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 136))(v7);
}

uint64_t key path setter for PhoneCallProvider.Builder.providerBundleId : PhoneCallProvider.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 160))(v7);
}

uint64_t PhoneCallProvider.Builder.preferredCallProvider.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t PhoneCallProvider.Builder.init()()
{
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_preferredCallProvider;
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OUTLINED_FUNCTION_11_44(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerName);
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = OUTLINED_FUNCTION_11_44(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerBundleId);
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  return v0;
}

uint64_t PhoneCallProvider.Builder.__allocating_init(preferredCallProvider:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallProvider.Builder.init(preferredCallProvider:)(a1);
  return v2;
}

uint64_t PhoneCallProvider.Builder.init(preferredCallProvider:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_preferredCallProvider;
  v10 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OUTLINED_FUNCTION_11_44(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerName);
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = OUTLINED_FUNCTION_11_44(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerBundleId);
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  (*(*(v10 - 8) + 32))(v8, a1, v10);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v10);
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v8, v1 + v9);
  swift_endAccess();
  return v1;
}

uint64_t PhoneCallProvider.Builder.withPreferredCallProvider(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 112))(v0);
}

uint64_t PhoneCallProvider.Builder.withPreferredCallProvider(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v9 + 112))(v0);
}

uint64_t PhoneCallProvider.Builder.withProviderName(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 136))(v0);
}

uint64_t PhoneCallProvider.Builder.withProviderName(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v9 + 136))(v0);
}

uint64_t PhoneCallProvider.Builder.withProviderBundleId(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 160))(v0);
}

uint64_t PhoneCallProvider.Builder.withProviderBundleId(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v9 + 160))(v0);
}

uint64_t PhoneCallProvider.Builder.build()()
{
  v0 = type metadata accessor for PhoneCallProvider(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();

  PhoneCallProvider.init(builder:)(v4);
  return v3;
}

uint64_t PhoneCallProvider.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallProvider.init(builder:)(a1);
  return v2;
}

uint64_t PhoneCallProvider.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_preferredCallProvider);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerBundleId);
  return v0;
}

uint64_t key path setter for PhoneCallProvider.mockGlobals : PhoneCallProvider(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

uint64_t *PhoneCallProvider.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  v8 = __chkstk_darwin(v7);
  v1[2] = 0;
  (*(*a1 + 104))(v8);
  v9 = OUTLINED_FUNCTION_14_46();
  v11 = outlined init with take of SpeakableString?(v9, v10);
  (*(*a1 + 128))(v11);
  v12 = OUTLINED_FUNCTION_14_46();
  v14 = outlined init with take of SpeakableString?(v12, v13);
  (*(*a1 + 152))(v14);
  v15 = OUTLINED_FUNCTION_14_46();
  v17 = outlined init with take of SpeakableString?(v15, v16);
  if (((*(*v1 + 160))(v17) & 1) == 0)
  {
    v18 = static Log.siriDialogEngine.getter();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_424FD0;
    v24 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8ProviderCmMd, &_s27PhoneCallFlowDelegatePlugin0aB8ProviderCmMR);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:type:_:)();
  }

  return v2;
}

uint64_t PhoneCallProvider.__allocating_init(preferredCallProvider:providerName:providerBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PhoneCallProvider.Builder(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  PhoneCallProvider.Builder.init()();
  OUTLINED_FUNCTION_2_0();
  v11 = (*(v10 + 192))(a1);

  (*(*v11 + 208))(a2);

  OUTLINED_FUNCTION_2_0();
  v13 = (*(v12 + 224))(a3);

  v14 = (*(v3 + 152))(v13);
  outlined destroy of SpeakableString?(a3);
  outlined destroy of SpeakableString?(a2);
  outlined destroy of SpeakableString?(a1);
  return v14;
}

Swift::Bool __swiftcall PhoneCallProvider.allRequiredInputsHaveValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider, &v10 - v5);
  v7 = type metadata accessor for SpeakableString();
  v8 = __swift_getEnumTagSinglePayload(v6, 1, v7) != 1;
  outlined destroy of SpeakableString?(v6);
  return v8;
}

uint64_t PhoneCallProvider.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  v19 = a1 == 0xD000000000000015 && 0x80000000004522D0 == a2;
  if (v19 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider, v18);
    v20 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v18);
    if (!v19)
    {
      goto LABEL_25;
    }

    v21 = v18;
    goto LABEL_9;
  }

  v23 = a1 == 0x72656469766F7270 && a2 == 0xEC000000656D614ELL;
  if (v23 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerName, v15);
    v20 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v15);
    if (!v19)
    {
      goto LABEL_25;
    }

    v21 = v15;
LABEL_9:
    result = outlined destroy of SpeakableString?(v21);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v24 = a1 == 0xD000000000000010 && 0x8000000000453880 == a2;
  if (v24 || (OUTLINED_FUNCTION_8_4() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerBundleId, v12);
    v20 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v12);
    if (!v19)
    {
LABEL_25:
      *(a3 + 24) = v20;
      __swift_allocate_boxed_opaque_existential_1(a3);
      OUTLINED_FUNCTION_16_11();
      return (*(v25 + 32))();
    }

    v21 = v12;
    goto LABEL_9;
  }

  v26 = a1 == 0xD000000000000011 && 0x800000000045EB40 == a2;
  if (!v26 && (OUTLINED_FUNCTION_8_4() & 1) == 0 && (a1 != 0x6954656361467369 || a2 != 0xEA0000000000656DLL))
  {
    result = OUTLINED_FUNCTION_8_4();
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  result = specialized PhoneCallProviderProperties.isFirstPartyPhone.getter();
  *(a3 + 24) = &type metadata for Bool;
  *a3 = result & 1;
  return result;
}

uint64_t specialized PhoneCallProviderProperties.isFirstPartyPhone.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider, &v21 - v5);
  v7 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of SpeakableString?(v6);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = SpeakableString.print.getter();
    v9 = v10;
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v11 = INPreferredCallProviderGetBackingType();
  switch(v11)
  {
    case 4:
      v12 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_10;
    case 3:
      v12 = @"FACETIME_PROVIDER";
      goto LABEL_10;
    case 2:
      v12 = @"TELEPHONY_PROVIDER";
LABEL_10:
      v13 = v12;
      goto LABEL_12;
  }

  v12 = [NSString stringWithFormat:@"(unknown: %i)", v11];
LABEL_12:
  v14 = v12;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v9)
  {
    if (v8 == v15 && v9 == v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = OUTLINED_FUNCTION_8_4();
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional __swiftcall PhoneCallProvider.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallProvider.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}