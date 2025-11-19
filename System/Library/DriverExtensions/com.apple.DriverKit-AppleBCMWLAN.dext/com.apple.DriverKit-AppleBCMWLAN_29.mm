uint64_t AppleBCMWLANCore::getEcountersConfigSlice0Container(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_142();
  if (!v10 || !v9)
  {
    return v4;
  }

  if (OUTLINED_FUNCTION_270(v8))
  {
    v11 = 16;
  }

  else
  {
    v11 = 12;
  }

  if (v11 > v7)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v17 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v18 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v19 + 1952))(v5);
    v21 = 51988;
    goto LABEL_65;
  }

  *v6 = 1;
  *(v6 + 4) = 1;
  if (AppleBCMWLANCore::featureFlagIsBitSet(v5, 120))
  {
    *(v6 + 8) = 0x30600000304;
    v12 = 16;
  }

  else
  {
    *(v6 + 8) = 774;
    v12 = 12;
  }

  v13 = (v6 + v12);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v5, 59))
  {
    OUTLINED_FUNCTION_129();
    if (!(!v15 & v14))
    {
      *v13++ = 779;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_19_1();
    if (!(*(v22 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v23 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v24 + 1952))(v5);
    v21 = 52006;
LABEL_65:
    CCLogStream::logAlert(v20, "[dk] %s@%d:Error cannot create EcountersConfigSlice0Container buffer too short\n", "getEcountersConfigSlice0Container", v21);
    return v4;
  }

LABEL_13:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 4))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_129();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v25 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v26 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v27 + 1952))(v5);
    v21 = 52014;
    goto LABEL_65;
  }

  *v13++ = 780;
LABEL_16:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 69))
  {
    goto LABEL_19;
  }

  v11 += 8;
  if (v11 > v7)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v28 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v29 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v30 + 1952))(v5);
    v21 = 52022;
    goto LABEL_65;
  }

  *v13 = 0x31100000310;
  v13 += 2;
LABEL_19:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 74))
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_129();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v31 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v32 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v33 + 1952))(v5);
    v21 = 52030;
    goto LABEL_65;
  }

  *v13++ = 776;
LABEL_22:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 93))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_129();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v34 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v35 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v36 + 1952))(v5);
    v21 = 52038;
    goto LABEL_65;
  }

  *v13++ = 798;
LABEL_25:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 85))
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_129();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v37 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v38 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v39 + 1952))(v5);
    v21 = 52045;
    goto LABEL_65;
  }

  *v13++ = 789;
LABEL_28:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 89))
  {
LABEL_33:
    OUTLINED_FUNCTION_246();
    return v4;
  }

  if (v11 + 4 > v7)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v40 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v41 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v42 + 1952))(v5);
    v21 = 52053;
    goto LABEL_65;
  }

  *v13 = 794;
  if (v11 + 8 > v7)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v43 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v44 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v45 + 1952))(v5);
    v21 = 52058;
    goto LABEL_65;
  }

  v13[1] = 795;
  if (v11 + 12 <= v7)
  {
    v13[2] = 796;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_19_1();
  if ((*(v46 + 1952))(v5))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v47 + 1952))(v5);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v20 = (*(v48 + 1952))(v5);
      v21 = 52063;
      goto LABEL_65;
    }
  }

  return v4;
}

void AppleBCMWLANCore::getEcountersConfigSlice1Container(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_142();
  if (!v5 || !v7)
  {
    goto LABEL_35;
  }

  v8 = v6;
  v9 = v4;
  if (v6 <= 0xF)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v15 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v16 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  v10 = v5;
  *v5 = 1;
  *(v5 + 4) = 2;
  *(v5 + 8) = 0x30600000304;
  if (AppleBCMWLANCore::featureFlagIsBitSet(v4, 73))
  {
    if (v8 > 0x13)
    {
      *(v10 + 16) = 778;
      v11 = (v10 + 20);
      v12 = 20;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_19_1();
    if (!(*(v17 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v18 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

LABEL_62:
    OUTLINED_FUNCTION_19_1();
    v34 = (*(v33 + 1952))(v9);
    CCLogStream::logAlert(v34, "[dk] %s@%d:Error cannot create EcountersConfigSlice1Container buffer too short\n");
    goto LABEL_35;
  }

  v11 = (v10 + 16);
  v12 = 16;
LABEL_8:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 59))
  {
    goto LABEL_11;
  }

  if (v12 + 4 > v8)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v19 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v20 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *(v10 + v12) = 779;
  ++v11;
  v12 += 4;
LABEL_11:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 4))
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v21 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v22 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 780;
LABEL_14:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 69))
  {
    goto LABEL_17;
  }

  v12 += 8;
  if (v12 > v8)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v23 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v24 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11 = 0x31100000310;
  v11 += 2;
LABEL_17:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 74))
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v25 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v26 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 776;
LABEL_20:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 93))
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v27 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v28 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 798;
LABEL_23:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 84))
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v29 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v30 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 793;
LABEL_26:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 111))
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v31 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v32 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 793;
LABEL_29:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 89))
  {
LABEL_34:
    OUTLINED_FUNCTION_246();
    goto LABEL_35;
  }

  if (v12 + 4 > v8)
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v35 + 1952))(v9))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v36 + 1952))(v9);
      if (CCLogStream::shouldLog())
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    *v11 = 794;
    if (v12 + 8 > v8)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v37 + 1952))(v9))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v38 + 1952))(v9);
        if (CCLogStream::shouldLog())
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v11[1] = 795;
      if (v12 + 12 <= v8)
      {
        v11[2] = 796;
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_19_1();
      if ((*(v39 + 1952))(v9))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v40 + 1952))(v9);
        if (CCLogStream::shouldLog())
        {
LABEL_71:
          OUTLINED_FUNCTION_19_1();
          v42 = (*(v41 + 1952))(v9);
          CCLogStream::logAlert(v42, "[dk] %s@%d:Error cannot create EcountersConfigSlice0Container buffer too short\n");
        }
      }
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_280();
}

void AppleBCMWLANCore::getEcountersConfigSlice2Container(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_142();
  if (v9 && v8)
  {
    if (OUTLINED_FUNCTION_270(v7))
    {
      v10 = 16;
    }

    else
    {
      v10 = 12;
    }

    if (v10 > v6)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v12 + 1952))(v4))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v13 + 1952))(v4);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v15 = (*(v14 + 1952))(v4);
          v16 = 52219;
LABEL_21:
          CCLogStream::logAlert(v15, "[dk] %s@%d:Error cannot create EcountersConfigSlice2Container buffer too short\n", "getEcountersConfigSlice2Container", v16);
        }
      }
    }

    else
    {
      *v5 = 1;
      *(v5 + 4) = 4;
      if (AppleBCMWLANCore::featureFlagIsBitSet(v4, 120))
      {
        *(v5 + 8) = 0x30600000304;
        v11 = 16;
      }

      else
      {
        *(v5 + 8) = 774;
        v11 = 12;
      }

      if (!AppleBCMWLANCore::featureFlagIsBitSet(v4, 74))
      {
        goto LABEL_13;
      }

      if (v10 + 4 <= v6)
      {
        *(v5 + v11) = 776;
LABEL_13:
        OUTLINED_FUNCTION_246();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_19_1();
      if ((*(v17 + 1952))(v4))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v18 + 1952))(v4);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v15 = (*(v19 + 1952))(v4);
          v16 = 52236;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_280();
}

uint64_t AppleBCMWLANCore::getEcountersConfigInfraContainer(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_142();
  if (!v6)
  {
    return v4;
  }

  v9 = v8;
  if (!v8)
  {
    return v4;
  }

  v10 = v7;
  v11 = v5;
  if (v7 <= 0x13)
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v12 + 1952))(v11))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v13 + 1952))(v11);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v15 = (*(v14 + 1952))(v11);
        v16 = 52261;
LABEL_7:
        CCLogStream::logAlert(v15, "[dk] %s@%d:Error cannot create EcountersConfigInfraContainer buffer too short\n", "getEcountersConfigInfraContainer", v16);
        return v4;
      }
    }

    return v4;
  }

  v17 = v6;
  *v6 = 2;
  *(v6 + 4) = 0;
  *(v6 + 8) = 0x50300000502;
  *(v6 + 16) = 1284;
  v18 = 20;
  *v8 = 20;
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 67))
  {
LABEL_11:
    v4 = 0;
    *v9 = v18;
    return v4;
  }

  if (v10 > 0x17)
  {
    *(v17 + 20) = 1291;
    v18 = 24;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_19_1();
  if ((*(v20 + 1952))(v11))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v21 + 1952))(v11);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v15 = (*(v22 + 1952))(v11);
      v16 = 52281;
      goto LABEL_7;
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getEcountersConfigPeerStatsContainer(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_142();
  if (v7 && v9)
  {
    if (v8 > 0xB)
    {
      v4 = 0;
      *v7 = 2;
      *(v7 + 2) = v10;
      *(v7 + 4) = 0;
      *(v7 + 8) = 1294;
      *v9 = 12;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_36_1(v6);
      if ((*(v12 + 1952))(v11))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v13 + 1952))(v5);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v15 = (*(v14 + 1952))(v5);
          CCLogStream::logAlert(v15, "[dk] %s@%d:Error cannot create EcountersConfigInfraContainer buffer too short\n", "getEcountersConfigPeerStatsContainer", 52308);
        }
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getEcountersConfigSoftAPContainer(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_142();
  if (v7 && v9)
  {
    if (v8 > 0xF)
    {
      v4 = 0;
      *v7 = 65538;
      *(v7 + 4) = 0;
      *(v7 + 8) = 0x50400000502;
      *v9 = 16;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_36_1(v6);
      if ((*(v11 + 1952))(v10))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v12 + 1952))(v5);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v14 = (*(v13 + 1952))(v5);
          CCLogStream::logAlert(v14, "[dk] %s@%d:Error cannot create EcountersConfigInfraContainer buffer too short\n", "getEcountersConfigSoftAPContainer", 52340);
        }
      }
    }
  }

  return v4;
}

void AppleBCMWLANCore::getEcountersConfigGlobalContainer(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_142();
  if (!v5 || !v7)
  {
    goto LABEL_25;
  }

  v8 = v6;
  v9 = v4;
  if (v6 <= 0xF)
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v10 + 1952))(v9))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v11 + 1952))(v9);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v13 = (*(v12 + 1952))(v9);
        v14 = 52373;
LABEL_7:
        CCLogStream::logAlert(v13, "[dk] %s@%d:Error cannot create EcountersConfigGlobalContainer buffer too short\n", "getEcountersConfigGlobalContainer", v14);
        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  v15 = v5;
  *v5 = 4;
  *(v5 + 4) = 0;
  *(v5 + 8) = 0x10200000101;
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v4, 69))
  {
    v16 = (v15 + 16);
    v17 = 16;
LABEL_12:
    if (AppleBCMWLANCore::featureFlagIsBitSet(v9, 90))
    {
      if ((v17 | 4uLL) > v8)
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v23 + 1952))(v9))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v24 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v13 = (*(v25 + 1952))(v9);
            v14 = 52397;
            goto LABEL_7;
          }
        }

        goto LABEL_25;
      }

      *(v15 + v17) = 267;
      ++v16;
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(v9, 99))
    {
      OUTLINED_FUNCTION_129();
      if (!v19 & v18)
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v26 + 1952))(v9))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v27 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v13 = (*(v28 + 1952))(v9);
            v14 = 52404;
            goto LABEL_7;
          }
        }

        goto LABEL_25;
      }

      *v16++ = 268;
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(v9, 103))
    {
      OUTLINED_FUNCTION_129();
      if (!v19 & v18)
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v29 + 1952))(v9))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v30 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v13 = (*(v31 + 1952))(v9);
            v14 = 52411;
            goto LABEL_7;
          }
        }

        goto LABEL_25;
      }

      *v16++ = 261;
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(v9, 110))
    {
      OUTLINED_FUNCTION_129();
      if (!v19 & v18)
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v32 + 1952))(v9))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v33 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v13 = (*(v34 + 1952))(v9);
            v14 = 52417;
            goto LABEL_7;
          }
        }

        goto LABEL_25;
      }

      *v16 = 269;
    }

    OUTLINED_FUNCTION_246();
    goto LABEL_25;
  }

  if (v8 > 0x17)
  {
    *(v15 + 16) = 0x700000006;
    v16 = (v15 + 24);
    v17 = 24;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19_1();
  if ((*(v20 + 1952))(v9))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v21 + 1952))(v9);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v13 = (*(v22 + 1952))(v9);
      v14 = 52390;
      goto LABEL_7;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_280();
}

uint64_t AppleBCMWLANCore::disableECountersV2(AppleBCMWLANCore *this, uint64_t a2, uint64_t a3, uint64_t a4, CCLogStream *a5)
{
  v29 = -21846;
  v27 = 2;
  v28 = 0;
  v6 = AppleBCMWLANCommandWithXTLV::withLengthAndHeader(0xC, &v27, 0xC, *(*(this + 9) + 14248), a5);
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  AppleBCMWLANConfigManager::setupFirmwareWithDTDefaults(v6);
  AppleBCMWLANCommandWithXTLV::complete(v7);
  v8 = *(*(this + 9) + 5408);
  AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v7);
  AppleBCMWLANCommandWithXTLV::getCommandLength(v7);
  OUTLINED_FUNCTION_154();
  v14 = AppleBCMWLANCommander::runIOVarSet(v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14 != -469794537 && v14 != 0)
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v17 + 1952))(this))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v18 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v22 = (*(v21 + 1952))(this);
        OUTLINED_FUNCTION_19_1();
        (*(v23 + 112))(this, v15);
        OUTLINED_FUNCTION_6();
        CCLogStream::logAlert(v22, "[dk] %s@%d: Error: Unable to set ecounters V2: %s\n", v24, v25, v26);
      }
    }
  }

  OUTLINED_FUNCTION_24_1();
  (*(v19 + 16))(v7);
  return v15;
}

OSStringPtr AppleBCMWLANCore::newVendorString(AppleBCMWLANCore *this)
{
  v2 = OSDictionary::withCapacity(6u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = OUTLINED_FUNCTION_51_0(*(this + 9));
  if ((*(v5 + 408))(v4, v3, 0) || (Object = OSDictionary::getObject(v3, "subsystem-vendor-id"), (v7 = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass)) == 0))
  {
    v9 = 0;
  }

  else
  {
    if (OSNumber::unsigned16BitValue(v7) == 4203)
    {
      v8 = "Apple";
    }

    else
    {
      v8 = "Unknown";
    }

    v9 = OSString::withCString(v8);
  }

  OUTLINED_FUNCTION_24_1();
  (*(v10 + 16))(v3);
  return v9;
}

uint64_t AppleBCMWLANCore::createSkywalkInterface(IOService *a1, IOService **a2, uint64_t *a3, IO80211VirtualInterface *a4)
{
  if (!a3)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v11 + 1952))(a1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v12 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v32 = (*(v31 + 1952))(a1);
        CCLogStream::logAlert(v32, "[dk] %s@%d:ERROR: Skywalk interface creation failed, invalid sifParams\n");
      }
    }

    return 3758096385;
  }

  if (*(a3 + 4) >= 0xCu)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v6 + 1952))(a1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v7 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v8 + 1952))(a1);
        v9 = *a3;
        v47 = *(a3 + 5);
        v49 = *(a3 + 4);
        OUTLINED_FUNCTION_113();
        CCLogStream::logAlert(v10, "[dk] %s@%d:ERROR: Skywalk interface %s%d creation failed, invalid interface id %d\n");
      }
    }

    return 3758096385;
  }

  if (*(a3 + 6) != 2)
  {
    v24 = 0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v16 + 1952))(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v17 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v33 + 1952))(a1);
      v34 = *a3;
      v36 = *(a3 + 4);
      v35 = *(a3 + 5);
      v37 = *(a3 + 6);
      OUTLINED_FUNCTION_112();
      CCLogStream::logAlert(v38, "[dk] %s@%d:Creating low latency skywalk interface %s%d id:%d role:%d\n", "createSkywalkInterface", 55035, v45, v46, v48, v50);
    }
  }

  v18 = OUTLINED_FUNCTION_189();
  if (!AppleBCMWLANConfigManager::isLowLatencyWiFiEnabled(v18))
  {
    return 3758096385;
  }

  v13 = 3758097090;
  if (!a4)
  {
    return v13;
  }

  LOBYTE(a1[1].OSObject::OSObjectInterface::__vftable[2223].free) = 1;
  HIDWORD(a1[1].OSObject::OSObjectInterface::__vftable[2223].free) = *(a3 + 4);
  LODWORD(a1[1].OSObject::OSObjectInterface::__vftable[2224].init) = 2;
  a1[1].OSObject::OSObjectInterface::__vftable[2224].free = a4;
  v19 = &a1[1].OSObject::OSObjectInterface::__vftable[2225];
  v20 = *(a3 + 2);
  *(v19 + 4) = *(a3 + 6);
  *v19 = v20;
  result = 0;
  if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v21 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v40 = (*(v39 + 1952))(a1);
      CCLogStream::logAlert(v40, "[dk] %s@%d:Creating low latency skywalk, ifid %d, %02X:%02X:%02X:%02X:%02X:%02X\n", "createSkywalkInterface", 55048, *(a3 + 4), LOBYTE(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE1(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE2(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE3(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE4(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE5(a1[1].OSObject::OSObjectInterface::__vftable[2225].init));
    }
  }

  v22 = a1[1].OSObject::OSObjectInterface::__vftable;
  if (v22[706].init == a4)
  {
    v23 = "DriverKit_IO80211AWDLLLW";
    goto LABEL_25;
  }

  if (v22[1871].free == a4)
  {
    v23 = "DriverKit_IO80211NANLLW";
LABEL_25:
    v13 = IOService::Create(a1, a1, v23, &result, 0);
    if (v13)
    {
      goto LABEL_26;
    }

    if (!result)
    {
      return 3758096385;
    }

    *a2 = result;
    *(&a1[1].OSObject::OSObjectInterface::__vftable[699].free + *(a3 + 4)) = a2;
    IO80211SkywalkInterface::setInterfaceRole(result, 2u);
    (a1->OSObject::OSMetaClassBase::__vftable[8].isEqualTo)(a1, result, a1);
    IO80211SkywalkInterface::setParentInterface(result, a4);
    IO80211VirtualInterface::setCompanionLowLatencySkywalkInterface(a4, result);
    v28 = OUTLINED_FUNCTION_15_5(result);
    (*(v29 + 536))(v28);
    v24 = result;
    v30 = a1[1].OSObject::OSObjectInterface::__vftable;
    if (v30[706].init == a4)
    {
      v30[707].init = result;
    }

LABEL_23:
    v13 = 0;
    *a2 = v24;
    return v13;
  }

LABEL_26:
  OUTLINED_FUNCTION_24_1();
  if ((*(v25 + 1952))(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v26 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v42 = (*(v41 + 1952))(a1);
      OUTLINED_FUNCTION_19_1();
      v44 = (*(v43 + 160))(a4);
      CCLogStream::logAlert(v42, "[dk] %s@%d:ERROR: Could not create skywalk interface with primary %s (%d)", "createSkywalkInterface", 55058, v44, v13);
    }
  }

  return v13;
}

uint64_t AppleBCMWLANCore::setREALTIME_QOS_MSCS()
{
  OUTLINED_FUNCTION_108();
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(*(v2 + 72) + 5432));
  if (OUTLINED_FUNCTION_277() && (*(*(v0 + 9) + 30081) & 1) != 0)
  {
    OUTLINED_FUNCTION_89_0();
    if ((*(v4 + 656))(CurrentBSS))
    {
      if (v1)
      {
        v5 = *(v1 + 4);
        *(*(v0 + 9) + 30083) = v5 != 0;
        AppleBCMWLANCore::sendQoSMgmtMSCSReq(v0, v5);
        return 0;
      }

      return 22;
    }

    else
    {
      OUTLINED_FUNCTION_24_1();
      if (!(*(v16 + 1952))(v0) || (OUTLINED_FUNCTION_24_1(), (*(v17 + 1952))(v0), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v18, "%c [dk] %s@%d: WiFi-QoS: AP does not support QoS MSCS\n", v19, v20, v21, v22, v29, v30, 2u);
        }
      }

      OUTLINED_FUNCTION_24_1();
      result = (*(v23 + 1952))(v0);
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v24 + 1952))(v0);
        result = CCLogStream::shouldLog();
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          v26 = (*(v25 + 1952))(v0);
          CCLogStream::logAlert(v26, "[dk] %s@%d:WiFi-QoS: AP does not support QoS MSCS\n");
          return 0;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    if (!(*(v7 + 1952))(v0) || (OUTLINED_FUNCTION_24_1(), (*(v8 + 1952))(v0), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v9, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", v10, v11, v12, v13, v29, v30, buf);
      }
    }

    OUTLINED_FUNCTION_24_1();
    result = (*(v14 + 1952))(v0);
    if (result)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v15 + 1952))(v0);
      result = CCLogStream::shouldLog();
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        v28 = (*(v27 + 1952))(v0);
        CCLogStream::logAlert(v28, "[dk] %s@%d:WiFi-QoS: QoS Management is disabled\n");
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::init(AppleBCMWLANCore *this)
{
  result = IO80211Controller::init(this);
  if (result)
  {
    OUTLINED_FUNCTION_24_1();
    v4 = *(v3 + 56);
    v5 = OUTLINED_FUNCTION_221();
    result = v6(v5);
    if (result)
    {
      if (*(this + 9))
      {
        io80211_os_log();
        mach_continuous_time();
        v7 = *(this + 9);
        absolutetime_to_nanoseconds();
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ___ZN16AppleBCMWLANCore24setAndBootInfraInterfaceEjP28AppleBCMWLANSkywalkInterface_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = IOService::Create(v2, v2, "FirmwareLoader", &v2[1].OSObject::OSObjectInterface::__vftable[892], 0);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = (v2->OSObject::OSMetaClassBase::__vftable[34].free)(v2);
  if (v3)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_19_1();
      (*(v6 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v8 = (*(v7 + 1952))(v2);
        CCLogStream::logEmergency(v8, "[dk] %s@%d:core driverkit framework create firmwareLoader fail 0x%x\n", "setAndBootInfraInterface_block_invoke_3", 58964, *(*(*(a1 + 32) + 8) + 24));
      }
    }
  }

  else
  {
    if (v4)
    {
      OUTLINED_FUNCTION_19_1();
      (*(v9 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v14 = (*(v13 + 1952))(v2);
        CCLogStream::logEmergency(v14, "[dk] %s@%d:Using legacy wifiFirmwareLoader\n", "setAndBootInfraInterface_block_invoke_3", 58959);
      }
    }

    mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v5);
    v11 = v2[1].OSObject::OSObjectInterface::__vftable;
    if (v11)
    {
      v11[892].free = mach_continuous_nanoseconds;
    }
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t AppleBCMWLANCore::setWCL_ARP_MODE(AppleBCMWLANCore *a1)
{
  result = OUTLINED_FUNCTION_97();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = *(*(a1 + 9) + 5544);
        if (*(v3 + 16))
        {
          result = AppleBCMWLANKeepAliveOffload::programGARP(v6, *(v3 + 12));
        }

        else
        {
          result = AppleBCMWLANKeepAliveOffload::stopGARP(v6);
        }
      }
    }

    else if (*(v3 + 16))
    {
      result = AppleBCMWLANCore::programARPKeepAlive(a1, *(v3 + 12));
    }

    else
    {
      result = AppleBCMWLANCore::stopARPKeepAlive(a1);
    }

    if (*(v4 + 4) && *(v4 + 5))
    {
      v7 = *(*(a1 + 9) + 5552);
      v8 = *v4;
      v9 = *(v4 + 2);

      return AppleBCMWLANWnmAdapter::configureWNMKeepAlives(v7, v8, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setWCL_QOS_PARAMS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = *(*(v5 + 72) + 5600);
    v2 = AppleBCMWLANNetAdapter::setQosParams();
    if (AppleBCMWLANCore::featureFlagIsBitSet(v3, 115))
    {
      v7 = *(*(v3 + 9) + 5592);
      if (v7)
      {
        if ((v4[23] & 0x40) != 0)
        {
          AppleBCMWLAN11beAdapter::configureMloFeatures(v7, v4[21] != 0);
        }
      }
    }

    if ((v4[23] & 0x20) != 0)
    {
      AppleBCMWLANCore::setReatimeAppPoliciesInternal(v3, v4[20]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_142();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setWCL_REASSOC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  OUTLINED_FUNCTION_108();
  AppleBCMWLANRoamAdapter::setReassocParams(*(*(v4 + 72) + 5568), *(v5 + 153), (*(v3 + 152) >> 2) & 1);
  v6 = OUTLINED_FUNCTION_204();
  v8 = AppleBCMWLANNetAdapter::sendReassocCommand(v6, v7);
  if (v8)
  {
    AppleBCMWLANRoamAdapter::restoreReassocParams(*(*(v2 + 72) + 5568));
  }

  return v8;
}

uint64_t *AppleBCMWLANCore::scanForwardStatsAsyncCallBack(uint64_t *result, uint64_t a2, int a3, uint64_t *a4)
{
  if (!a3)
  {
    return AppleBCMWLANCore::processScanForwardStats(result, *a4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::safe_align_up(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:os_add_overflow %zu\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_211();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:os_sub_overflow on alignment %zu\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_211();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:os_sub_overflow on alignment %zu\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

BOOL AppleBCMWLANCore::is4387C0()
{
  OUTLINED_FUNCTION_95_0();
  AppleBCMWLANCore::getChipRevString(v0, v1, 3uLL);
  OUTLINED_FUNCTION_122();
  v5 = memcmp(v2, v3, v4);
  return OUTLINED_FUNCTION_123(v5);
}

BOOL AppleBCMWLANCore::is4399B0()
{
  OUTLINED_FUNCTION_95_0();
  AppleBCMWLANCore::getChipRevString(v0, v1, 3uLL);
  OUTLINED_FUNCTION_122();
  v5 = memcmp(v2, v3, v4);
  return OUTLINED_FUNCTION_123(v5);
}

uint64_t AppleBCMWLANCore::dumpCurTxDCSummary(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:|| [Tx DC Stats] ------------------------------------------||\n", "dumpCurTxDCSummary", 1215);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   [Slice 0 Ant0] ---------------------------------------||\n", "dumpCurTxDCSummary", 1216);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6304);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [0 - 10]                     | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6312);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [10 - 20]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6320);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [20 - 30]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6328);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [30 - 40]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6336);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [40 - 50]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6344);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [50 - 60]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6352);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [60 - 70]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6360);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [70 - 80]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6368);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [80 - 90]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6376);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [90 - 100]                   | %20llu ||\n", v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   [Slice 1 Ant0] ---------------------------------------||\n", "dumpCurTxDCSummary", 1227);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6392);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [0 - 10]                     | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6400);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [10 - 20]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6408);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [20 - 30]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6416);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [30 - 40]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6424);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [40 - 50]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6432);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [50 - 60]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6440);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [60 - 70]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6448);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [70 - 80]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6456);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [80 - 90]                    | %20llu ||\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*(v1 + 72) + 6464);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:||     [90 - 100]                   | %20llu ||\n", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::updateSCTxBlankingSummary(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Invalid Tx blanking percentage \n", "updateSCTxBlankingSummary", 1284);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Invalid channel number \n", "updateSCTxBlankingSummary", 1287);
}

uint64_t AppleBCMWLANCore::init(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:wlan.ranging.disableOutlierDiscarding %d\n", "init", 1710, *(*v1 + 976));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:wlan.ranging.applyRangingoffsetsVsAVP %d\n", "init", 1719, *(*v1 + 977));
}

uint64_t AppleBCMWLANCore::reportInitFailure(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:AppleBCMWLANCore::%s/%u: AdjustBusy(-1)! busystate %u, fAdjustBusyCnt %u, kAdjustBusyTimeout_ms %u\n", "reportInitFailure", 1821, "reportInitFailure", 1821, *v2, *(*v1 + 4400), 40000);
}

uint64_t AppleBCMWLANCore::signalDriverEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  v5 = AppleBCMWDriverEventToString[v1];
  v6 = current_thread();
  v7 = thread_tid(v6);
  return CCLogStream::logNoticeIf(v4, 0x200000uLL, "[dk] %s@%d: Signalling (%s) event from tid: %llx\n", "signalDriverEvent", 4554, v5, v7);
}

uint64_t AppleBCMWLANCore::initAfterIORegUpdated(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Limiting HW platform, disabling: '%s' band locked, AWDL/LLW, Tethering/SoftAP\n", "initAfterIORegUpdated", 1931, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_110();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", "initAfterIORegUpdated", 2210, v5, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 4392);
  OUTLINED_FUNCTION_169();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:Init Delay time is is %06llu.%06llu seconds\n", "initAfterIORegUpdated", 2226, v5 / v6, (v5 % v6) / 0x3E8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create PowerState Adapter object!\n", "initAfterIORegUpdated", 2176);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create 11be Adapter object!\n", "initAfterIORegUpdated", 2120);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create gcr Adapter object!\n", "initAfterIORegUpdated", 2110);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create 11ax Adapter object!\n", "initAfterIORegUpdated", 2100);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create Roam Adapter object!\n", "initAfterIORegUpdated", 2090);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create Keep Alive Offload object!\n", "initAfterIORegUpdated", 2068);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create WNM Agent object!\n", "initAfterIORegUpdated", 2047);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create BGScan Adapter object!\n", "initAfterIORegUpdated", 2026);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create LQM object!\n", "initAfterIORegUpdated", 2005);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create Net Adapter object!\n", "initAfterIORegUpdated", 1995);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create ivars->fTxPowerManager Manager object!\n", "initAfterIORegUpdated", 1985);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create join adapter\n", "initAfterIORegUpdated", 1976);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create Bss manager object!\n", "initAfterIORegUpdated", 1950);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create ivars->fPowerManager Manager object!\n", "initAfterIORegUpdated", 1940);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create ConfigManager object!\n", "initAfterIORegUpdated", 1899);
}

uint64_t AppleBCMWLANCore::start(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:core common start\n", "start", 2245);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Will reset power state upon system wake\n", "start", 2264);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: super::start(provider) failed\n", "start", 2279);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 17857);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Disable IE filtering boot-arg override: %s\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 18485);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:LPSC debug flag: %s\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Found 'wlan.debug.band-locked' boot-arg override: '%s'\n", "start", 2375, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Found 'wlan.debug.band-locked' boot-arg override: Invalid '%s'\n", "start", 2382, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to process provisioning data. %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create Audio Protector object!\n", "start", 2603);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid remote FEM information in IO registry\n", "start", 2752);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:driverkitAllocSkywalkBusResources() failed\n", "start", 2725);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_110();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AdjustBusy(+1) busystate %u, fAdjustBusyCnt %u\n", "start", 2741, v5, v6);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1952))(v2);
  checkPropertyTrue(v1, "FirmwareLoaded", 0, "IOService");
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Checking firmware loaded[%d]\n", v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: WiFi driver started\n", "start", 2801);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create adjust busy timer\n", "start", 2733);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:failed to populate requested files\n", "start", 2756);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create GAS Adapter object!\n", "start", 2666);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create TimeKeeper object!\n", "start", 2657);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create LeakyApParser object!\n", "start", 2649);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create fNDDAdapter\n", "start", 2643);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create fSensingAdapter\n", "start", 2637);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create scanAdapter\n", "start", 2631);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create ivars->fDynSARDetailSlice1Timer timer\n", "start", 2581);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create ivars->fDynSARDetailSlice0Timer timer\n", "start", 2572);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create ivars->fTxDutyCycleReportTimer timer\n", "start", 2562);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create ivars->fStatsReportTimer timer\n", "start", 2552);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create Cmd manager object!\n", "start", 2527);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create disableHostCountryCode timer\n", "start", 2518);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create ChanInfoTimer timer\n", "start", 2509);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to get link inactivity timer\n", "start", 2497);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: callback allocation failure\n", "start", 2481);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed to create a provisioning manager\n", "start", 2462);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  ClassNameHelper = getClassNameHelper(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s::%s(): Unable to create Fault Reporter!\n", "start", 2411, ClassNameHelper, "start");
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to get command gate from superclass\n", "start", 2301);
}

uint64_t AppleBCMWLANCore::start(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1952))(v5);
  v7 = OUTLINED_FUNCTION_86();
  ClassNameHelper = getClassNameHelper(v7);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s::%s(): Found 'wlan.debug.linkdebug' arg[0x%08x]\n", "start", 2318, ClassNameHelper, "start", *(*a3 + 17512));
}

uint64_t AppleBCMWLANCore::start(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1952))(v5);
  v7 = OUTLINED_FUNCTION_86();
  ClassNameHelper = getClassNameHelper(v7);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s::%s(): Found 'wlan.debug.single-boot-only' arg[0x%08x]\n", "start", 2322, ClassNameHelper, "start", *a3);
}

uint64_t AppleBCMWLANCore::signalDriverReady(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create key/value pair signaling state of Core WiFi driver\n", "signalDriverReady", 60626);
}

uint64_t AppleBCMWLANCore::watchdog(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:firmware trap, do not reset commander pool\n", "watchdog", 45125);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:report cannot be identified, do not reset commander pool\n", "watchdog", 45116);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  v5 = current_thread();
  v6 = thread_tid(v5);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: <%llx> state 0x%lX\n", "watchdog", 45164, v6, *(*v1 + 10376));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Driver Uninitialized\n", "watchdog", 45169);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Chip initializing, ivars->fStateFlags 0x%lX: watchdog bail\n", "watchdog", 45174, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Watchdogged from watchdog, call halt then bail. It is possible other WD is stuck waiting on commander\n", "watchdog", 45179);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_125();
  v5 = *(v4 + 10376);
  v6 = OUTLINED_FUNCTION_51_0(v4);
  v8 = (*(v7 + 192))(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WATCHDOG abort: Shutdown pending or Power Change In Progress. state 0x%lX Bus Power On %d \n", "watchdog", 45190, v5, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: 'Bus low power' detected: APPLE80211_M_DRIVER_AVAILABLE, adjusting reason[0x%08x] -> [0x%08x], errorCode[0x%08x] isNonFatalFlag[0x%08x]\n", "watchdog", 45245, -528336895, -528336891, -469794008, 2);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: WATCHDOG FAILED: Unable to bootChipImage %s.\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: watchdog succeeded - sending driver available event\n", "watchdog", 45385);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logInfo(v5, "[dk] %s@%d: PC: %llx, LR: %llx\n", "watchdog", 45386, *v2, *v1);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_125();
  AppleBCMWLANJoinAdapter::getJoinTimeoutSequenceNum(*(v4 + 5416));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:fJoinTimeoutSequenceNum %d\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_125();
  v5 = OUTLINED_FUNCTION_15_5(*(v4 + 5392));
  (*(v6 + 568))(v5);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:ivars->fProvider->getTrapInfoSequenceNum %d\n", v8, v9, v10);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: Succeeded\n", "watchdog", 45468);
}

uint64_t AppleBCMWLANCore::watchdog(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 1952))(v6);
  v9 = current_thread();
  v10 = thread_tid(v9);
  v11 = *(*a3 + 10376);
  OUTLINED_FUNCTION_19_1();
  v13 = (*(v12 + 56))(a4);
  OSString::getCStringNoCopy(v13);
  OUTLINED_FUNCTION_52_0();
  (*(v14 + 72))(a4);
  OUTLINED_FUNCTION_19_1();
  v17 = v16 / 0x3B9ACA00;
  v18 = (*(v15 + 72))(a4);
  return CCLogStream::logAlert(v8, "[dk] %s@%d: <%llx> state 0x%lX %s %llu.%llu\n", "watchdog", 45162, v10, v11, a3, v17, v18 % 0x3B9ACA00 / 0x3E8);
}

uint64_t AppleBCMWLANCore::watchdog(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v4 = OUTLINED_FUNCTION_0_8(a1);
  v6 = (*(v5 + 1952))(v4);
  LODWORD(a3) = *a3;
  OUTLINED_FUNCTION_81_0();
  v8 = *(v7 + 112);
  v9 = OUTLINED_FUNCTION_16_2();
  v11 = v10(v9);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:Driver avail message reason shouldn't be vendor specific - 0x%08x/%s\n", "watchdog", 45437, a3, v11);
}

uint64_t AppleBCMWLANCore::collectImmediateFaultDataCallback(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skip WDT logging\n", "collectImmediateFaultDataCallback", 53705);
}

uint64_t AppleBCMWLANCore::induceFaultCallback(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Simulate Scan Return scan failure\n", "induceFaultCallback", 53856);
}

uint64_t AppleBCMWLANCore::handleChanInfoTimer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1952))(v5);
  LODWORD(a3) = *(*a3 + 780);
  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(v3, 93);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: P2PVLPAllowed FW version %d 6G enabled %d\n", "handleChanInfoTimer", 46343, a3, IsBitSet);
}

uint64_t AppleBCMWLANCore::handleChanInfoTimer(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: clm_flags failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: clm_flags 0x%X\n", "handleChanInfoTimer", 46352, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: VLP is not allowed for P2P\n", "handleChanInfoTimer", 46354);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: per_chan_info failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Chan specs changed due to another country code set call. Mismatch will occur which is fixed below after collecting a corecapture\n", "handleChanInfoTimer", 46436);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_166(*v2 + 2 * v1);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:No existing 20MHz channel matches the primary channel of Chanspec: %x\n", "handleChanInfoTimer", 46480, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:20MHz channel total number already reached max, %d\n", "handleChanInfoTimer", 46520, 400);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 35896);
  v5 = *(*v1 + 6752);
  OUTLINED_FUNCTION_247();
  return CCLogStream::logAlert(v6, "[dk] %s@%d:WiFiCC : Mismatch between country supoprting 6E and 6E channels allowed. ivars->fCurrentCountrySupports6E : [%hhu], countryCode : [%s] , ivars->fThreadCountExecChanInfo : %d\n", "handleChanInfoTimer", 46547, v8, v9, v10);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : FwTypeMfg detected. No recovery being attempted\n", "handleChanInfoTimer", 46549);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_234();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:WiFiCC : Current FW country [%s] supports 6E [%hhu]\n", "handleChanInfoTimer", 46557, (v3 + v4), *(v3 + 35896));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:No memory for currChanSpec\n", "handleChanInfoTimer", 46330);
}

uint64_t AppleBCMWLANCore::handleTxDCReportTimeout(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to get Tx Duty Cycle from DynSAR Summary\n", "handleTxDCReportTimeout", 19863);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Sub Command ID mismatch, input %d, output %d\n", "handleTxDCReportTimeout", 19868, 3, *v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid FW length detected for DYNSAR_CNT_VERSION_V4!\n", "handleTxDCReportTimeout", 19891);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid FW length detected for DYNSAR_CNT_VERSION_V2!\n", "handleTxDCReportTimeout", 19883);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid DynSAR Summary version\n", "handleTxDCReportTimeout", 19895);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Slice %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCReportTimeout", 19959, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCReportTimeout", 19956, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCReportTimeout", 19953, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCReportTimeout", 19962, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCReportTimeout", 19945, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCReportTimeout", 19942, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCReportTimeout", 19939, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCReportTimeout", 19948, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCReportTimeout", 19929, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCReportTimeout", 19926, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCReportTimeout", 19923, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCReportTimeout", 19932, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCReportTimeout", 19915, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCReportTimeout", 19912, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCReportTimeout", 19909, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCReportTimeout", 19918, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid DynSAR Summary version\n", "handleTxDCReportTimeout", 19966);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid version or fields from DynSAR summary response\n", "handleTxDCReportTimeout", 19874);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::driverkitAllocSkywalkBusResources(uint64_t *a1, int a2, _DWORD *a3)
{
  v6 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v7 + 1952))(v6);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*a1 + 1952))(a1);
      OUTLINED_FUNCTION_209();
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:%s:%s: driverKitProcessPlatformConfig() rc:%d\n", v10, v11, v12, "driverkitAllocSkywalkBusResources", a2);
    }
  }

  *a3 = -536870199;
  return result;
}

uint64_t AppleBCMWLANCore::driverkitAllocSkywalkBusResources()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:%s:%s: Failed to fetchAndUpdateRingParameters()\n", "driverkitAllocSkywalkBusResources", 5106, "AppleBCMWLANCore", "driverkitAllocSkywalkBusResources");
    }
  }

  *v0 = 713;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:allocateSkywalkBusResource failed - fetchAndUpdateRingParameters\n", "driverkitAllocSkywalkBusResources", 5110);
    }
  }

  *v0 = 713;
  return result;
}

uint64_t AppleBCMWLANCore::appendWskuInfo(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_77_0();
  v7 = OUTLINED_FUNCTION_5_0(v6);
  result = (*(v8 + 1952))(v7);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v10 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      v12 = (*(v11 + 1952))(v4);
      result = CCLogStream::logAlert(v12, "[dk] %s@%d:Invalid WSKU format, version[0x%08x] reserved[0x%08x]\n", "appendWskuInfo", 3291, *(*v3 + 4336), *(*v3 + 4340));
    }
  }

  *a3 = -469793004;
  return result;
}

uint64_t AppleBCMWLANCore::appendWskuInfo(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skip WSKU by EDT Property", "appendWskuInfo", 3281);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skip WSKU by boot-args\n", "appendWskuInfo", 3276);
}

uint64_t AppleBCMWLANCore::stopResources(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_110();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", "stopResources", 3873, v5, v6);
}

uint64_t AppleBCMWLANCore::collectSPMIHEBResetStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:sent SPMI reset stats to coreAnalytics\n", "collectSPMIHEBResetStats", 4294);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate valResetCount\n", "collectSPMIHEBResetStats", 4285);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyResetCount\n", "collectSPMIHEBResetStats", 4283);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventPayload\n", "collectSPMIHEBResetStats", 4280);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "collectSPMIHEBResetStats", 4278);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::featureFlagIsBitSet(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d: Invalid lock\n", "featureFlagIsBitSet", 34960);
    }
  }

  *v1 = 0;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v6, "[dk] %s@%d: Invalid bit position, bit[%d]\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::waitForDriverEvent(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  v7 = (*(v6 + 1952))(v5);
  v8 = AppleBCMWDriverEventToString[a4];
  v9 = current_thread();
  v14 = thread_tid(v9);
  OUTLINED_FUNCTION_66();
  return CCLogStream::logNoticeIf(v7, 0x200000uLL, "[dk] %s@%d: Waiting %ld ms for (%s) event from tid: %llx\n", v11, v12, v13, v8, v14);
}

uint64_t AppleBCMWLANCore::waitForDriverEvent(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Sleep failed 0x%08x for event %s", "waitForDriverEvent", 4544, v1, AppleBCMWDriverEventToString[v2]);
}

uint64_t AppleBCMWLANCore::handleRxEventFrame(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: Failed to lock event cage buffer\n", "handleRxEventFrame", 4569);
}

uint64_t AppleBCMWLANCore::driverKitChipBoot()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Failed in initAfterIORegUpdated()\n", "driverKitChipBoot", 5056);
    }
  }

  *v0 = 713;
  return result;
}

uint64_t AppleBCMWLANCore::driverKitChipBoot(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to prepare the ChipImage, iorc[0x%08x]\n", v8, v9, v10);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to complete the ChipImage, iorc[0x%08x]\n", v8, v9, v10);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed in bootChipImage(), iorc[0x%08x]\n", v8, v9, v10);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Failed to get ChipImage\n", "driverKitChipBoot", 5071);
    }
  }

  *v1 = 0;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_209();
  return CCLogStream::logInfo(v4, "[dk] %s@%d:%s:%s: iorc[0x%08x]\n", v6, v7, v8, "driverKitChipBoot", v1);
}

uint64_t AppleBCMWLANCore::bootChipImage(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:wlan.debug.single-boot-only set, only one boot allowed\n", "bootChipImage", 5572);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: state 0x%lX\n", "bootChipImage", 5577, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:FW image loading failed: retval 0x%x, putting device into reset state\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::driverKitProcessPlatformConfig(uint64_t *a1, uint64_t a2, char a3, int a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 1952))(v6);
  return CCLogStream::logNoticeIf(v8, 0x80uLL, "[dk] %s@%d:Image verification, rv:%d, skipVerification:%d\n", "driverKitProcessPlatformConfig", 5173, a4, a3 & 1);
}

uint64_t AppleBCMWLANCore::driverKitProcessPlatformConfig(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_162();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_162();
      v7 = (*(v6 + 1952))(v1);
      CCLogStream::logEmergency(v7, "[dk] %s@%d:PlatformConfig.plist validation failed", "driverKitProcessPlatformConfig", 5177);
    }
  }

  return io80211_os_log();
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:plist is not an OSDictionary", "driverKitProcessPlatformConfig", 5190);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to unserialize PlatformConfig.plist", "driverKitProcessPlatformConfig", 5187);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:IOMallocZero failed", "driverKitProcessPlatformConfig", 5183);
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      v9 = (*(v8 + 1952))(v3);
      result = CCLogStream::logEmergency(v9, "[dk] %s@%d:Failed to create OSDictionary", "driverKitProcessPlatformConfig", 5161);
    }
  }

  *v1 = v2;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v5 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to load PlatformConfig.plist", "driverKitProcessPlatformConfig", 5153);
    }
  }

  return io80211_os_log();
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v6, "[dk] %s@%d:IOMalloc failed", "driverKitProcessPlatformConfig", 5146);
    }
  }

  *v1 = 0;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v6, "[dk] %s@%d:Invalid OSBundle", "driverKitProcessPlatformConfig", 5142);
    }
  }

  *v1 = 0;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:rc:%d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::driverKitProcessPlatformConfig(uint64_t *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v9 + 1952))(v8);
  if (result)
  {
    OUTLINED_FUNCTION_1_10();
    (*(v11 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_1_10();
      v13 = (*(v12 + 1952))(a1);
      result = CCLogStream::logEmergency(v13, "[dk] %s@%d:Failed to create filename OSString", "driverKitProcessPlatformConfig", 5167);
    }
  }

  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::setPlatformConfigProperties()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logEmergency(v8, "[dk] %s@%d:dict argument is not an OSDictionary", "setPlatformConfigProperties", 10439);
    }
  }

  *v0 = 706;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logEmergency(v8, "[dk] %s@%d:Missing dict argument", "setPlatformConfigProperties", 10437);
    }
  }

  *v0 = 706;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logEmergency(v8, "[dk] %s@%d:Missing ProvisioningRoot", "setPlatformConfigProperties", 10435);
    }
  }

  *v0 = 702;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logEmergency(v8, "[dk] %s@%d:Missing fProvider", "setPlatformConfigProperties", 10433);
    }
  }

  *v0 = 702;
  return result;
}

uint64_t AppleBCMWLANCore::logChipImage(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d:\n", "logChipImage", 5543);
}

uint64_t AppleBCMWLANCore::halt(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1952))(v2);
  v5 = current_thread();
  v6 = thread_tid(v5);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:AppleBCMWLANCore::halt[%u] this[%p] <%llx>\n", "halt", 44866, 44866, v1, v6);
}

uint64_t AppleBCMWLANCore::loadAndSetup(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  v4 = current_thread();
  thread_tid(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d:<%llx>\n", v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Chip image loading begins.", "loadAndSetup", 5680);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Chip image loading has finished.", "loadAndSetup", 5694);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to set WiFi Boot State", "loadAndSetup", 5697);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: provider loadChipImage fail %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed commander reset(), ret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:command pool reset not allowed\n", "loadAndSetup", 5722);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_73_0();
  if (!v9 & v8)
  {
    v10 = "UNKNOWN";
  }

  else
  {
    v10 = off_1003D0E30[v7];
  }

  return CCLogStream::logInfo(v5, "[dk] %s@%d:Wakeup commander fStateFlags(%lx) userPower(%s)\n", "loadAndSetup", 5725, v6, v10);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: setupFirmware fail %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: setupDriver fail %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setBootUnrecoverable(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFi Chip boot unrecoverable due to %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setupFirmware(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar get version command failed: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Firmware Version: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Firmware InterfaceVersion: %d\n", "setupFirmware", 8336, *(*v1 + 780));
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'getMaxSupportedEventLogSets' failed: 0x%08x/%s\n", "setupFirmware", 8344, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'setupTraceLogCheckers' failed: 0x%08x/%s\n", "setupFirmware", 8349, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Download clmb failed, rv 0x%x %s\n", "setupFirmware", 8389, v1, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Download txcap failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Download platcfg failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Download wifi cal msf failed: %s\n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'updateFWAPIVerFromHW' failed: 0x%08x/%s\n", "setupFirmware", 8436, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'processChipCaps' failed: 0x%08x/%s\n", "setupFirmware", 8472, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'set_mpc_state' failed: 0x%08x/%s\n", "setupFirmware", 8489, v1, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar set pm2_refresh_badiv failed: %s\n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'populateCountryList' failed: 0x%08x/%s\n", "setupFirmware", 8530, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'populate6ESupportedCountryList' failed: 0x%08x/%s\n", "setupFirmware", 8537, v1, v9);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Initializing FW with country code [%s]. Probably a chip reset recovery\n", "setupFirmware", 8549, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Current host country code [%s] setup to FW is complete.\n", "setupFirmware", 8553, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: fw query for chanspecs failed during init : %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WiFiCC : fw query for chanspecs SUCCEEDED during init : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : host country code not present. Defaulting fHostCountryEnabled to false\n", "setupFirmware", 8567);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : setup default countrycode to FW complete. rv : [%s] \n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'configureDefaultCountryCode' failed: 0x%08x/%s\n", "setupFirmware", 8572, v1, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: fw query for chanspecs failed during init : %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WiFiCC : fw query for chanspecs SUCCEEDED during init : %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar set scan_force_active command failed: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: 11d ingored due to boot-arg wlan.11d.ignore override\n", "setupFirmware", 8603);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Disables adoption of tx power constraints from the AP's 802.11D Country IE and 802.11H Power Constraint IE\n", "setupFirmware", 8612);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar tpc_options command failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar vlan_mode command failed: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_233();
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Low Power Scan Core based feature disable boot-arg=%d and disableProfileActive=%d \n", "setupFirmware", 8663, *(v3 + 2096), *(v3 + 2100));
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot disable feature support : ret %x: %s\n", "setupFirmware", 8674, v1, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Configuring Beacon protection params 0 to FW Active\n", "setupFirmware", 8688);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Enabling Bcn Protection failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bcn Protection config failed: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Bringup firmware bringupBCM, calling ...\n", "setupFirmware", 8709);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  BCMInterfaceState = AppleBCMWLANCore::getBCMInterfaceState(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Bringup firmware bringupBCM, called ..., rv[0x%08x]/'%s', bcmInterfaceState[%u]\n", v11, v12, v13, v9, BCMInterfaceState);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'bringupBCM' failed: 0x%08x/%s\n", "setupFirmware", 8714, v1, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfoIf(v1, 0x80uLL, "[dk] %s@%d:Failed to set FW dma mode: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failed to set flow rings to TID mode: %s\n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'configureDefaultEvents' failed: 0x%08x/%s\n", "setupFirmware", 8749, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'configurePowerSave' failed: 0x%08x/%s\n", "setupFirmware", 8799, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'configureSecurityParams' failed: 0x%08x/%s\n", "setupFirmware", 8813, v1, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set the packet filter mode: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set offload with error : %s\n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set assoc_retry_max to %d : ret %x: %s\n", "setupFirmware", 8853, 5, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set 40MHz Intolerant bit : ret %x: %s\n", "setupFirmware", 8864, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'setupFirmwareWithDTDefaults' failed: 0x%08x/%s\n", "setupFirmware", 8934, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'configureEarlyBeaconDetect' failed: 0x%08x/%s\n", "setupFirmware", 8941, v1, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure TVPM\n", "setupFirmware", 8947);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure DynSAR\n", "setupFirmware", 8956);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Enable static tx sdb\n", "setupFirmware", 8962);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Calling configureOCLParams \n", "setupFirmware", 8983);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Ignoring mcast/bcast after %d ms\n", "setupFirmware", 9015, 50);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_125();
  AppleBCMWLANConfigManager::isTxFailEventSupported(*(v4 + 5464));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:ivars->fConfigManager->isTxFailEventSupported() %d\n", v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: cannot set Block Ack Policy on TID %d", "setupFirmware", 9046, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: cannot set Block Ack Policy on TID %d", "setupFirmware", 9053, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Disabling Early Beacon Termination in non-phone platform\n", "setupFirmware", 9060);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Disabling Digital Nap feature in non-phone platform\n", "setupFirmware", 9065);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Disabling Opportunistic PwrSave in non-phone platform\n", "setupFirmware", 9071);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Setting GPIO Tx Envelope Ind to %d\n", "setupFirmware", 9078, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Configuring Beacon drift mitigation params to FW Active\n", "setupFirmware", 9091);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Configuring Beacon drift mitigation params failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar get version command failed: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:[WiFiTimeSync] Override 'wlan.forced.ts' found : [%u]\n", "setupFirmware", 9147, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:[WiFiTimeSync] Invalid forcedTimestmping value. Force it to %d\n", "setupFirmware", 9150, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logWarn(v3, "[dk] %s@%d:Failied configure IE filtering %u\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'restore_mpc_state' failed: 0x%08x/%s\n", "setupFirmware", 9231, v1, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Succeeded\n", "setupFirmware", 9280);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Manufacturing image type; omitting additional initializations..\n", "setupFirmware", 8449);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v8 = v7(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'AppleBCMWLANChanSpec::withFWAPIVer' failed: 0x%08x/%s\n", "setupFirmware", 8444, 0, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: 'synchronizeTime' failed: 0x%08x/%s\n", "setupFirmware", 8428, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: iovar 'wlc_ver' command failed: 0x%08x/%s\n", "setupFirmware", 8332, v1, v9);
}

uint64_t AppleBCMWLANCore::setupDriver(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: State 0x%lX\n", "setupDriver", 5899, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed to set ModuleDictionary", "setupDriver", 5922);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed to set Moduleinfo\n", "setupDriver", 5925);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  CStringNoCopy = OSString::getCStringNoCopy(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Failed to write property %s = %s into registry\n", "setupDriver", 5936, "vendor-id", CStringNoCopy);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Setting fRangingCorrectionCore0=%d, fRangingCorrectionCore1=%d", "setupDriver", 5985, *(*v1 + 36092), *(*v1 + 36096));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlertIf(v3, 0x80uLL, "[dk] %s@%d: creating virtual interface with prefix = %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_169();
  return CCLogStream::logAlert(v7, "[dk] %s@%d: Core Driver Initialization Time %llu.%09llu\n", "setupDriver", 6070, v5 / v6, v5 % v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d: Setting power state to %lu\n", "setupDriver", 6075, *(*v1 + 10388));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d: Succeeded\n", "setupDriver", 6154);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: driver initialized 0x%lX\n", "setupDriver", 5879, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d: Setting power state to %lu\n", "setupDriver", 5887, *(*v1 + 10388));
}

uint64_t AppleBCMWLANCore::setupDriver(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1952))(v5);
  v7 = OUTLINED_FUNCTION_86();
  ClassNameHelper = getClassNameHelper(v7);
  v9 = "Attempting";
  if (!*a3)
  {
    v9 = "Skipping";
  }

  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s::%s() boot-args wlan.awdl.create_by_driver=%d. %s to create AWDL virtual interface here.\n", "setupDriver", 6054, ClassNameHelper, "setupDriver", *a3, v9);
}

uint64_t AppleBCMWLANCore::setPTMMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:[WiFiTimeSync] %s: forcedTimestmping %d. Force fPTMMode to %d\n", "setPTMMode", 5787, "setPTMMode", *(*v1 + 35912), 1);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to disable ptm, ret:0x%x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ptm cmd allocation failed", "setPTMMode", 5780);
}

uint64_t AppleBCMWLANCore::handlePowerStateChange(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  v8 = (*(v7 + 1952))(v6);
  v9 = *(*v4 + 19852);
  if (v9 > 4)
  {
    v10 = "UNKNOWN";
  }

  else
  {
    v10 = off_1003D0E30[v9];
  }

  if (a4 > 4)
  {
    v11 = "UNKNOWN";
  }

  else
  {
    v11 = off_1003D0E30[a4];
  }

  return CCLogStream::logNotice(v8, "[dk] %s@%d: Changing power state from %s to %s.\n", "handlePowerStateChange", 34370, v10, v11);
}

uint64_t AppleBCMWLANCore::handlePowerStateChange(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Unknown power state transition from %d to %d\n", "handlePowerStateChange", 34391, *(*v2 + 19852), v1);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  if (v1 > 4)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = off_1003D0E30[v1];
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d: Power transition failed. Restoring power state to %s.\n", "handlePowerStateChange", 34396, v5);
}

uint64_t AppleBCMWLANCore::bringupBCM(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Bringup firmware, sending ...\n", "bringupBCM", 6165);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Bringup firmware, ... sent rv[0x%08x]/'%s'\n", "bringupBCM", 6167, v1, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WLC_UP command failed, trying again: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WLC_UP command failed, giving up: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to enable radio (WLC_SET_RADIO): %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getBCMInterfaceState(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed WLC_GET_UP: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::IssueFwCap(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar get cap command failed, %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNoticeIf(v4, 0x80uLL, "[dk] %s@%d:cap: %.*s\n", "IssueFwCap", 6374, 1024, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DigitalNap Supported\n", "IssueFwCap", 6426);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DigitalNap NOT Supported\n", "IssueFwCap", 6429);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:NAN and NANHO disabled\n", "IssueFwCap", 6448);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PMF not supported so disable WPA3\n", "IssueFwCap", 6493);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  getting HP2P Capability %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Setting Beacon Mute & Drift feature flag\n", "IssueFwCap", 6590);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Setting Beacon Mute feature flag\n", "IssueFwCap", 6593);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Setting Beacon Drift feature flag\n", "IssueFwCap", 6599);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Beacon Mute Mitigation disabled\n", "IssueFwCap", 6607);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Beacon Drift Mitigation disabled\n", "IssueFwCap", 6614);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enable NDD feature\n", "IssueFwCap", 6680);
}

uint64_t AppleBCMWLANCore::featureFlagSetBit(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d: Invalid lock\n", "featureFlagSetBit", 34924);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d: Invalid bit position, bit[%d]\n", v6, v7, v8);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::featureFlagClearBit(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d: Invalid lock\n", "featureFlagClearBit", 34942);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d: Invalid bit position, bit[%d]\n", v6, v7, v8);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getHP2P_CTRL()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:FW does not support llw", "getHP2P_CTRL", 55967);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p cmd resp alloc fail\n", "getHP2P_CTRL", 55969);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1952))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p cmd alloc fail\n", "getHP2P_CTRL", 55968);
    }
  }

  *v0 = 701;
  return result;
}

uint64_t AppleBCMWLANCore::getHP2P_CTRL(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:hp2p get iovar failed\n", "getHP2P_CTRL", 55989);
    }
  }

  *v1 = v2;
  return result;
}

void AppleBCMWLANCore::getHP2P_CTRL(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected hp2p subcmd resp length\n", "getHP2P_CTRL", 56002);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::isRC1CoexSupported(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:bootArg for rc1cx is %d\n", "isRC1CoexSupported", 40508, v5);
}

uint64_t AppleBCMWLANCore::isPHYEcounterSupported(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:bootArg for PHYEcounter is %d\n", "isPHYEcounterSupported", 40523, v5);
}

uint64_t AppleBCMWLANCore::isPHYCALEcounterSupported(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:bootArg for PHYCALEcounter is %d\n", "isPHYCALEcounterSupported", 40538, v5);
}

uint64_t AppleBCMWLANCore::IssueFwCapExt(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar get capext command failed, issuing get cap %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:iovar dngl:capext payload xtlvlist error:\n", "IssueFwCapExt", 6791);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:processFwFeatures: Error parsing the xtlv payload:\n", "IssueFwCapExt", 6835);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      (*(v8 + 1952))(v2);
      OUTLINED_FUNCTION_9_4();
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:%s::%s[%u] Error: Invalid xtlvData \n", v10, v11, v12, "IssueFwCapExt", 6824);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:iovar dngl:capext: Extra payload remaining: remainingSize = %lu\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:iovar dngl:capext payload size overrun:\n", "IssueFwCapExt", 6784);
}

uint64_t AppleBCMWLANCore::processFwFeatures(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:NAN and NANHO disabled\n", "processFwFeatures", 7091);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DigitalNap Supported\n", "processFwFeatures", 7136);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DigitalNap NOT Supported\n", "processFwFeatures", 7140);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PMF not supported so disable WPA3\n", "processFwFeatures", 7165);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Setting Beacon Mute feature flag\n", "processFwFeatures", 7195);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Setting Beacon Drift feature flag\n", "processFwFeatures", 7199);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Beacon Mute Mitigation disabled\n", "processFwFeatures", 7207);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Beacon Drift Mitigation disabled\n", "processFwFeatures", 7214);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  getting HP2P Capability %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Should not come here. tlvtype = %lu \n", v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      (*(v8 + 1952))(v2);
      OUTLINED_FUNCTION_7_1();
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:%s:%d: xtlvData pointer null:\n", v10, v11, v12, v13);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::processChipCaps(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:About to issue capext.... \n", "processChipCaps", 7342);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:FW capext not supported. Proceeding to default cap.... \n", "processChipCaps", 7345);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:About to issue cap.... \n", "processChipCaps", 7351);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:FW cap returning error... can't proceed...  \n", "processChipCaps", 7354);
}

uint64_t AppleBCMWLANCore::adjustFeatureFlags(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Enabling features: Power manage mcast/bcast\n", "adjustFeatureFlags", 34904);
}

uint64_t AppleBCMWLANCore::queryPlatcfgCommandVersion(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:paltcfg get iovar failed\n", "queryPlatcfgCommandVersion", 7522);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Platcfg command version %u\n", "queryPlatcfgCommandVersion", 7534, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:platcfg cmd resp alloc fail\n", "queryPlatcfgCommandVersion", 7502);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:platcfg cmd alloc fail\n", "queryPlatcfgCommandVersion", 7501);
}

void AppleBCMWLANCore::queryPlatcfgCommandVersion(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected platcfg subcmd resp length\n", "queryPlatcfgCommandVersion", 7530);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::retrievePlatcfgStatus(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:paltcfg get iovar failed\n", "retrievePlatcfgStatus", 7578);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:platcfg blob download status: segment count=%u blob download status=%u\n", "retrievePlatcfgStatus", 7596, *v2, *(v1 + 16));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:platcfg blob segment download status: type=%u status=%u\n", "retrievePlatcfgStatus", 7602, *v1, *(v1 + 1));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:platcfg cmd resp alloc fail\n", "retrievePlatcfgStatus", 7558);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:platcfg cmd alloc fail\n", "retrievePlatcfgStatus", 7557);
}

void AppleBCMWLANCore::retrievePlatcfgStatus(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_231(a1, a2);
    (*(v3 + 1952))(v4);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_162();
      v6 = (*(v5 + 1952))(v2);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected platcfg download status resp length\n", "retrievePlatcfgStatus", 7594);
    }
  }

  OUTLINED_FUNCTION_120();
}

void AppleBCMWLANCore::retrievePlatcfgStatus(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:invalid platcfg download status count\n", "retrievePlatcfgStatus", 7590);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected platcfg subcmd resp length\n", "retrievePlatcfgStatus", 7586);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::retrievePlatcfgBlobVersion(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:paltcfg get iovar failed\n", "retrievePlatcfgBlobVersion", 7653);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_146();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown blob version xtlv id=%u len=%u\n", "retrievePlatcfgBlobVersion", 7708, v5, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Blob segment: 6GHz Antenna Gain, bin format version: %u\n", "retrievePlatcfgBlobVersion", 7683, *(v1 + 5));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Creation: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Title: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_146();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown segment meta data xtlv ID %u len %u\n", "retrievePlatcfgBlobVersion", 7700, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:platcfg cmd resp alloc fail\n", "retrievePlatcfgBlobVersion", 7633);
}

void AppleBCMWLANCore::retrievePlatcfgBlobVersion(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_162();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_162();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:remain length is short than xtlv length\n", "retrievePlatcfgBlobVersion", 7690);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_161();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_161();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:remain length is short than XTLV length\n", "retrievePlatcfgBlobVersion", 7675);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected platcfg blob version resp length\n", "retrievePlatcfgBlobVersion", 7668);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:invalid platcfg blob version count\n", "retrievePlatcfgBlobVersion", 7664);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected platcfg subcmd resp length\n", "retrievePlatcfgBlobVersion", 7661);
    }
  }

  OUTLINED_FUNCTION_120();
}

void AppleBCMWLANCore::retrievePlatcfgBlobVersion(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_231(a1, a2);
    (*(v3 + 1952))(v4);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_162();
      v6 = (*(v5 + 1952))(v2);
      CCLogStream::logAlert(v6, "[dk] %s@%d:not enough remain length\n", "retrievePlatcfgBlobVersion", 7680);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:paltcfg get iovar failed\n", "retrievePlatcfgXTLVDumpData", 7762);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_146();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown dump data xtlv id %u len %u\n", "retrievePlatcfgXTLVDumpData", 7797, v5, v6);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v13 = v2[3];
  OUTLINED_FUNCTION_126();
  return CCLogStream::logNotice(v8, "[dk] %s@%d:%u - %u Mhz: Correlated signals: %d Uncorrelated signals: %d Individual AntGains: %s\n", "retrievePlatcfgXTLVDumpData", 7793, v10, v11, v12, v13, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:platcfg cmd resp alloc fail\n", "retrievePlatcfgXTLVDumpData", 7742);
}

void AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_161();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_161();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:invalid dump ant gain xtlv\n", "retrievePlatcfgXTLVDumpData", 7785);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_161();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_161();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:invalid dump data XTLV\n", "retrievePlatcfgXTLVDumpData", 7780);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_161();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_161();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:segment dump xtlv length is too big\n", "retrievePlatcfgXTLVDumpData", 7779);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:invalid number of segment dumps\n", "retrievePlatcfgXTLVDumpData", 7773);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected platcfg subcmd resp length\n", "retrievePlatcfgXTLVDumpData", 7770);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::retrieveRegTableStatus(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: clmload_status failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::retrieveTxCapTableStatus(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: txcapload_status failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::retrieveCalMSFStatus(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:calload_status failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNoticeIf(v5, 0x80uLL, "[dk] %s@%d:calload_status return %ld\n", v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d: Force skipping MSF checking\n", "retrieveCalMSFStatus", 7875);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skip MSF SN check\n", "retrieveCalMSFStatus", 7881);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logNotice(v2, "[dk] %s@%d:apply SN workaround, returned %x %s\n", "retrieveCalMSFStatus", 7904, v1, v9);
}

uint64_t AppleBCMWLANCore::removeFirmwareLoader(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Terminating/releasing request of firmware loading\n", "removeFirmwareLoader", 53102);
}

uint64_t AppleBCMWLANCore::logRegTableVersion(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s returns %s\n", "logRegTableVersion", 7962, "clmver", v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNoticeIf(v4, 0x80uLL, "[dk] %s@%d:%s returns\n %s\n", "logRegTableVersion", 7956, "clmver", v1);
}

uint64_t AppleBCMWLANCore::logTxCapTableVersion(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s returns %s\n", "logTxCapTableVersion", 7988, "txcapver", v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNoticeIf(v4, 0x80uLL, "[dk] %s@%d:%s returns\n %s\n", "logTxCapTableVersion", 7983, "txcapver", v1);
}

uint64_t AppleBCMWLANCore::outputPlatcfg(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:no platcfg blob present in chip image, skip download\n", "outputPlatcfg", 8046);
}

uint64_t AppleBCMWLANCore::downloadCal(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:NO WCAL is programmed!\n", "downloadCal", 8087);
}

uint64_t AppleBCMWLANCore::outputWiFiCal(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s unavailable in ioreg\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Download %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s and %s unavailable in ioreg\n", "outputWiFiCal", 8137, "wifi-calibration-fdr", "wifi-calibration-gen");
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Download %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Download %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skip WCAL by boot-args\n", "outputWiFiCal", 8120);
}

uint64_t AppleBCMWLANCore::setupTraceLogCheckers(uint64_t *a1)
{
  OUTLINED_FUNCTION_268(a1);
  *v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(v4 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_2();
  return 1;
}

uint64_t AppleBCMWLANCore::getMaxSupportedEventLogSets(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get max event log sets: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::set_mpc_state(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Iovar failure getting MPC value: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Iovar failure to MPC to zero: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::restore_mpc_state(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failure restoring MPC iovar: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::updateFWAPIVerFromHW(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get FW API version: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d: FW API version: 0x%x\n", "updateFWAPIVerFromHW", 9576, v5);
}

uint64_t AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d: ERROR: Unexpected error detected: rxStreams (%d)\n", v6, v7, v8);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureTethering(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: apsta failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: apsta get failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d: apsta set to %u\n", "configureTethering", 40307, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d: Enabling AP mode feature\n", "configureTethering", 40313);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d: AP mode unsupported but requested by device tree\n", "configureTethering", 40317);
}

uint64_t AppleBCMWLANCore::configureDualPowerMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANCore::featureFlagIsBitSet(v4, 40);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Set kFeatureDualPowerMode %s\n", v6, v7, v8);
}

uint64_t AppleBCMWLANCore::populateCountryList(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to retrieve country code list from firmware: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::populate6ESupportedCountryList(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WiFiCC : Failed to retrieve country code list from firmware: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Total # of countries in CLM for 6E: %d\n", "populate6ESupportedCountryList", 46743, v5);
}

uint64_t AppleBCMWLANCore::configureDefaultCountryCode()
{
  OUTLINED_FUNCTION_32_1();
  v4 = OUTLINED_FUNCTION_29_5(v3);
  (*(v5 + 1952))(v4);
  v6 = OUTLINED_FUNCTION_77();
  ClassNameHelper = getClassNameHelper(v6);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s::%s(): Device MPN %s is for restricted country code %s\n", "configureDefaultCountryCode", 40677, ClassNameHelper, "configureDefaultCountryCode", *v1, v0);
}

uint64_t AppleBCMWLANCore::configureDefaultCountryCode(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1952))(v5);
  v7 = OUTLINED_FUNCTION_86();
  ClassNameHelper = getClassNameHelper(v7);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s::%s() boot-args overrides ivars->fRestrictedCountryCode to %s\n", "configureDefaultCountryCode", 40690, ClassNameHelper, "configureDefaultCountryCode", (*a3 + 6740));
}

uint64_t AppleBCMWLANCore::configureDefaultCountryCode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to retrieve country code:%s \n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_139();
  return CCLogStream::logNoticeIf(v5, 0x80uLL, "[dk] %s@%d: Default Country code set to %s\n", "configureDefaultCountryCode", 40702, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar set autocountry_default command failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_139();
  return CCLogStream::logNotice(v5, "[dk] %s@%d: Strict regulatory settings for %s required. Not enabling autocountry.\n", "configureDefaultCountryCode", 40714, v7);
}

uint64_t AppleBCMWLANCore::setTxProfileEnable(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Enable tx_profile feature : %s \n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configureScans(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set passive scan dwell time: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configureLinkLoss(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set the link lost timeout: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set  bcn_to_dly: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s WiFiRoam : Unable to set join pref to skip PSC roam scans\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s WiFiRoam : Unable to configure RSSI compensation threshold\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s WiFiRoam : Unable to set RSSI compensation smooth values\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to configure First beacon Rx timeout value: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configurePowerSave(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Warning: Unable to configure pm2_md_sleep_ext, not supported on this platform.\n", "configurePowerSave", 41201);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to configure pm2_md_sleep_ext, %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d: Enabling MPC mode\n", "configurePowerSave", 41226);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to enable MPC mode: %s\n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set pm2_radio_shutoff to %d : ret %x: %s\n", "configurePowerSave", 41263, 10, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: cannot set pm2_bcn_sleep_ret to %d : ret %x: %s  -> continue with initialization\n", "configurePowerSave", 41271, 120, v1, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Always externally powered platform\n", "configurePowerSave", 41294);
}

uint64_t AppleBCMWLANCore::configureRoam(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:%d RoamScan feature is not enabled for this platform \n", "configureRoam", 41608, 41608);
}

uint64_t AppleBCMWLANCore::configureSecurityParams(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: Unable to set iovar sup_auto_eapver %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: Unable to set iovar sup_m3sec_ok %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Interface is not available\n", "configureSecurityParams", 41626);
}

uint64_t AppleBCMWLANCore::configureHS20IE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logWarn(v3, "[dk] %s@%d:Failed to configure HS20 Capability Indication IE\n", "configureHS20IE", 51635);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logWarn(v3, "[dk] %s@%d:Failed to configure HS20 Interworking IE\n", "configureHS20IE", 51638);
}

uint64_t AppleBCMWLANCore::configureEarlyBeaconDetect(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: early_bcn_thresh %u\n", "configureEarlyBeaconDetect", 51710, v5);
}

uint64_t AppleBCMWLANCore::configureTrgDisc(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Enabling Enhanced Trigger Disconnect Mode\n", "configureTrgDisc", 51738);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Disabling Enhanced Trigger Disconnect Mode\n", "configureTrgDisc", 51736);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: kMWSCoexIoVarCmd_mws_coex_bitmap  -- empty array\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap", 9952);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:: ch params -- enable NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10194);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: ch params -- rx center freq NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10203);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: ch params -- tx center freq NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10212);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:: ch params -- rx bw NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10221);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: ch params -- tx bw NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10230);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: ch params -- type NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10239);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: kMWSCoexIoVarCmd_mws_params  -- null dict\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10180);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling --  rx assert offset is NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10028);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling -- rx assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10037);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling --  rx de-assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10046);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling -- rx de-assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10055);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling --  tx assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10064);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling -- tx assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10073);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling --  tx de-assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10082);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling -- tx de-assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10091);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling --  pattern assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10100);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling -- pattern assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10109);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling --  inactivity assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10118);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling -- inactivity assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10127);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: signalling --  scan freq assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10136);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling -- scan freq assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10145);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error:  mws signalling -- signal priority assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10154);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: kMWSCoexIoVarCmd_wci2_config  -- null dict\n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10014);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: null wlanrxpri_threshold\n", "setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold", 10264);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_166(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:MWS_BITMAP_V2: 2G -------->  0x%x\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap_V2", 9907, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_166(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:MWS_BITMAP_V2: 5G-Low --------> 0x%x\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap_V2", 9914, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_166(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:MWS_BITMAP_V2: 5G-Mid --------> 0x%x\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap_V2", 9921, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_166(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:MWS_BITMAP_V2: 5G-HI --------> 0x%x\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap_V2", 9928, v6);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsRxPrioTimer(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:--------------------> MWS RX Prio Timer %u\n", "setMWSCoexIoVarsRxPrioTimer", 10297, *(*v1 + 8900));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: null Rx Prio Timer value\n", "setMWSCoexIoVarsRxPrioTimer", 10291);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsPwrLimitTimer(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:--------------------> MWS Power Limit %u\n", "setMWSCoexIoVarsPwrLimitTimer", 10325, *(*v1 + 8908));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: null Pwr Limit Timer value\n", "setMWSCoexIoVarsPwrLimitTimer", 10319);
}

uint64_t AppleBCMWLANCore::configureTxFailEventThreshold(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set txFail Event Threshold: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: txFail Event is configured with value:%u!\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Allocation failure for return TLV\n", "configureTxFailEventThreshold", 54642);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: txFail Event is not supported!\n", "configureTxFailEventThreshold", 54671);
}

uint64_t AppleBCMWLANCore::configureECounters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Ecounter Configuration failed\n", "configureECounters", 51862);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Disabling ecounters due to boot-arg wlan.ecounters=0\n", "configureECounters", 51834);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create AppleBCMWLANIOReportingPerSlice block\n", "configureECounters", 51822);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create AppleBCMWLANIOReportingCore block\n", "configureECounters", 51815);
}

uint64_t AppleBCMWLANCore::configureEventLogOneReportedStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Setting Log1 size to %d due to boot-arg wlan.elogs.size1\n", "configureEventLogOneReportedStats", 52705, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event Log Configuration %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Disabling event logs due to boot-arg wlan.elogs=0\n", "configureEventLogOneReportedStats", 52698);
}

uint64_t AppleBCMWLANCore::configureEventLogSixReportedStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Setting Log6 size to %d due to boot-arg wlan.elogs.size6\n", "configureEventLogSixReportedStats", 52750, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Event Log Configuration failed\n", "configureEventLogSixReportedStats", 52806);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enable SCAN_SUMAMRY from configureEventLogSixReportedStats \n", "configureEventLogSixReportedStats", 52785);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event Log Configuration %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Disabling event logs due to boot-arg wlan.elogs=0\n", "configureEventLogSixReportedStats", 52743);
}

uint64_t AppleBCMWLANCore::configureEventLogSevenReportedStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Setting Log7 size to %d due to boot-arg wlan.elogs.size7\n", "configureEventLogSevenReportedStats", 52828, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Event Log Configuration failed\n", "configureEventLogSevenReportedStats", 52913);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event Log Configuration %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Disabling event logs due to boot-arg wlan.elogs=0\n", "configureEventLogSevenReportedStats", 52821);
}

uint64_t AppleBCMWLANCore::updateCurrentFWCountryCode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to retrieve country code from firmware: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configureIeFiltering(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Error: Unable to set filter ies : %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::initTrafficEngineering(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 30092);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:Traffic Engineering support is: %s\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 30093);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:Traffic Engineering logging is: %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::disableC2C(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: %s: ", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to send c2c: %s", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "disableC2C", 9728);
}

uint64_t AppleBCMWLANCore::configureScanForwardToAOP(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Scan forward to AOP is %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Scan forward to AOP is already %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureScanParamMods(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "configureScanParamMods", 62291);
}

uint64_t AppleBCMWLANCore::configureRxHCRTSCTSEventParams(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Allocation subcmd_payload_len for return %d %d \n", "configureRxHCRTSCTSEventParams", 54687, 12, 16);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set RTS CTS hold down params: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Allocation failure for return TLV\n", "configureRxHCRTSCTSEventParams", 54690);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Rx RTS CTS Mitigation Enhancement is not supported!\n", "configureRxHCRTSCTSEventParams", 54717);
}

uint64_t AppleBCMWLANCore::setRxLatPrioEnabBitmapAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting rx_lat_prio_enab failed: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setMacAddressAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WFRandomisation : Async setting interface mac address failed: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setMacAddressComplete(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_11_4(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_5_9();
  v16 = *(*(v1 + 72) + 5656);
  v17 = *(*(v1 + 72) + 5657);
  v14 = *(*(v1 + 72) + 5654);
  v15 = *(*(v1 + 72) + 5655);
  v12 = *(*(v1 + 72) + 5652);
  v13 = *(*(v1 + 72) + 5653);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:WiFi MAC Address: %02x:%02x:%02x:%02x:%02x:%02x, HW[ %02x:%02x:%02x:%02x:%02x:%02x ]\n", "setMacAddressComplete", 25151, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t AppleBCMWLANCore::setRxLatPrioEnabBitmap(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:rx_lat_prio_enab is set to %u\n", "setRxLatPrioEnabBitmap", 9329, v5);
}

uint64_t AppleBCMWLANCore::utilGetHWCap(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logNoticeIf(v5, 0x80uLL, "[dk] %s@%d: %s: 0x%x\n", "utilGetHWCap", 9344, v1, *v2);
}

uint64_t AppleBCMWLANCore::cfgAmpduWinSizeCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting AMPDU BA window size failed: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::cfgAmpduWindowSize(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Could not set Tx AMPDU window size: error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Tx AMPDU BA window size setting is successful\n", "cfgAmpduWindowSize", 9408);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Could not set Rx AMPDU window size: error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Rx AMPDU BA window size setting is successful\n", "cfgAmpduWindowSize", 9434);
}

uint64_t AppleBCMWLANCore::getSupportedPhyModeFromHW(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get phytype: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::updateRSDBCaps(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: More cores (%d) than expected (%d)\n", "updateRSDBCaps", 9664, *(*v1 + 1081), 2);
}

uint64_t AppleBCMWLANCore::applyRoamingCandidateBoost(uint64_t *a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v5 = a3;
  v6 = OUTLINED_FUNCTION_5_5(a1);
  (*(v7 + 1952))(v6);
  v8 = "2,4GHz";
  if (v5 == 1)
  {
    v8 = "5GHz";
  }

  v15 = v8;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v9, "[dk] %s@%d:%s:%d: Issuing join_pref to FW: Applying %s roam candidate boost of %d\n", v11, v12, v13, v14, v15, a4);
}

uint64_t AppleBCMWLANCore::applyRoamingCandidateBoost(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref to %d : ret %x: %s\n", "applyRoamingCandidateBoost", 9700, 5, v1, v9);
}

uint64_t AppleBCMWLANCore::handleSetC2CCompletion(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Failed with status 0x%X(%u)", "handleSetC2CCompletion", 9708, v1, v1);
}

uint64_t AppleBCMWLANCore::stopARPKeepAlive(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set keep alive packet ret %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::programARPKeepAlive(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ARP keepalive interval - %d ms\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: Failed to get Arp keepalive data (%d)\n", "programARPKeepAlive", 9824, "programARPKeepAlive", v1);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set keep alive packet ret %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::runSetMwsCoexIoVarsAsync_mws_ocl_coex_bitmap(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:mws_ocl_channel_map is NULL!", "runSetMwsCoexIoVarsAsync_mws_ocl_coex_bitmap", 9878);
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_1(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Setting property: '%s'\n", v6, v7, v8);
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Property check failed, skip to next keystr", "setPlatformConfigProperties_block_invoke", 10462);
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_3(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:No cstring, skip to next keystr", "setPlatformConfigProperties_block_invoke", 10451);
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_4(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Not OSString, skip to next keystr", "setPlatformConfigProperties_block_invoke", 10446);
}

uint64_t AppleBCMWLANCore::setProperties(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: ERROR: Unexpected non-ioctl set property call for this platform\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting WiFi calibration MSF property: [%p] '%s'\n", "setProperties", 11070, v6, "wifi-calibration-msf");
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting WiFi calibration MSF property: [%p] '%s' ... done\n", "setProperties", 11072, v6, "wifi-calibration-msf");
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting WiFi calibration FDR property: [%p] '%s'\n", "setProperties", 11081, v6, "wifi-calibration-fdr");
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting WiFi calibration FDR property: [%p] '%s' ... done\n", "setProperties", 11083, v6, "wifi-calibration-fdr");
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting WiFi calibration Generic property: [%p] '%s'\n", "setProperties", 11092, v6, "wifi-calibration-gen");
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting WiFi calibration Generic property: [%p] '%s' ... done\n", "setProperties", 11094, v6, "wifi-calibration-gen");
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting WiFi MSF source property: [%p] '%s'\n", "setProperties", 11103, v6, "wlan.msf.source");
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting WiFi calibration Generic property: [%p] '%s' ... done\n", "setProperties", 11106, v6, "wifi-calibration-gen");
}

{
  v1 = OUTLINED_FUNCTION_10_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Calling setPlatformConfigProperties: [%p]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_10_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Calling setPlatformConfigProperties: [%p] ... done\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Scan Offload is %s affected\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Beacon Offload is %s affected\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Setting APPLE80211KEY_MWS_COEX_ENABLED_CHANNELS\n", "setProperties", 11176);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Setting APPLE80211KEY_MWS_COEX_BITMAP_V2\n", "setProperties", 11198);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Setting APPLE80211KEY_MWS_RX_PRIO_TIMER\n", "setProperties", 11206);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Setting APPLE80211KEY_MWS_PWR_LIMIT_TIMER\n", "setProperties", 11213);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Error: mws_ocl_coex_bitmap invalid channel(%d)\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting MWS_SCAN_FREQ_CHANNELS to %d 0x%x 0x%x 0x%x 0x%x\n", "setProperties", 11288, *(*v1 + 10412), *(*v1 + 10414), *(*v1 + 10416), *(*v1 + 10418), *(*v1 + 10420));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Parameters missing!!!\n", "setProperties", 11293);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:more channels that APPLE80211_MAX_CHANNELS (%d)\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting MWS_SET_LTE_TDD_MODE channels bitmap %08x\n", "setProperties", 11313, *(*v1 + 10424));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Expected array of 4, got %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting MWS_ANTENNA_SELECTION ivars->fAntennaSelection array %d %d %d %d\n", "setProperties", 11338, *(*v1 + 10428), *(*v1 + 10430), *(*v1 + 10432), *(*v1 + 10434));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Expected array of %d, got %d\n", "setProperties", 11368, 16, v1);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 10436);
  v5 = *(*v1 + 10438);
  v6 = *(*v1 + 10440);
  v7 = *(*v1 + 10442);
  v8 = *(*v1 + 10444);
  v9 = *(*v1 + 10446);
  v18 = *(*v1 + 10448);
  v19 = *(*v1 + 10450);
  OUTLINED_FUNCTION_152();
  return CCLogStream::logNotice(v10, "[dk] %s@%d:Setting MWS_ANTENNA_SELECTION_V2 ivars->fAntennaSelection_v2 array %d %d %d %d %d %d %d %d\n", "setProperties", 11364, v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting MWS_WLANRX_PROT to 0x%x\n", "setProperties", 11380, *(*v1 + 10488));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting WCI2_TXIND to 0x%x\n", "setProperties", 11390, *(*v1 + 10492));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting MWS_SCANJOIN_PROT to 0x%x\n", "setProperties", 11400, *(*v1 + 10496));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting MWS_AUTOPROT_PARAMS to weight 0x%x thresh 0x%x\n", "setProperties", 11414, *(*v1 + 10500), *(*v1 + 10504));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Setting APPLE80211KEY_MWS_NGC_COEX_BITMAP\n", "setProperties", 11422);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 10528);
  v5 = *(*v1 + 10532);
  v6 = *(*v1 + 10536);
  OUTLINED_FUNCTION_247();
  return CCLogStream::logNotice(v7, "[dk] %s@%d:Setting MWS_NGC_COEX_BITMAPS to 0x%x 0x%x 0x%x\n", "setProperties", 11446, v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Setting MWS_NGC_TIMER_GRANULARITY to 0x%x\n", "setProperties", 11458, *(*v1 + 10700));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Setting MWS_NGC_ACTIVITY_LEVEL_THRESHOLDS to 0x%x\n", "setProperties", 11467, *(*v1 + 10696));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Setting MWS_2GWiFi_TYPE7_BITMAP to 0x%x\n", "setProperties", 11480, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Setting MWS_AGG_FRAME_CONFIG\n", "setProperties", 11568);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_PERIOD_TYPE\n", "setProperties", 11552);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_PERIOD_DURATION\n", "setProperties", 11533);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_NUM_PERIODS is too big %d(max %d)\n", "setProperties", 11528, *v1, 7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_NUM_PERIODS\n", "setProperties", 11523);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_SYNC_ASSERT_JITTER\n", "setProperties", 11515);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_SYNC_ASSERT_OFFSET\n", "setProperties", 11508);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_DURATION\n", "setProperties", 11501);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Processing Property APPLE80211KEY_MWS_OCL_PARAMS\n", "setProperties", 11581);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting WCI2 Tx Envelope Indication Enable to 0x%x\n", "setProperties", 11629, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_166(*v1);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting Tx Envelope Idle Timeout to 0x%x\n", "setProperties", 11639, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting WCI2 Tx Indication 5G to 0x%x\n", "setProperties", 11649, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_166(*v1);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting Tx Duration Threshold to 0x%x\n", "setProperties", 11659, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting Active Scan Throttle to 0x%x\n", "setProperties", 11669, *(*v1 + 10516));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting Active Scan Throttle Dwell Time to 0x%x\n", "setProperties", 11681, *(*v1 + 10520));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting RC2 Coex Mode to 0x%x\n", "setProperties", 11693, *(*v1 + 10712));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting RC2 PM Protection Mode to 0x%x\n", "setProperties", 11704, *(*v1 + 10716));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:Setting RC2 CTS2S setting to 0x%x\n", "setProperties", 11722, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Setting RC1 Coex Mode to 0x%x\n", "setProperties", 11749, *(*v1 + 10704));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Setting WIFI BT AIRTIME POLICY to 0x%x\n", "setProperties", 11787, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APPLE80211KEY_MWS_SET_WIFI_BT_AIRTIME_POLICY profile %d is not supported\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211KEY_MWS_BT_SCO_HID_TRAFFIC_PARAM\n", "setProperties", 11800);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Got APPLE80211KEY_MWS_BT_A2DP_TRAFFIC_INDICATION\n", "setProperties", 11836);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:BT A2DP for iphone indication is %d \n", "setProperties", 11850, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Got APPLE80211KEY_MWS_BT_ESCO_TRAFFIC_INDICATION\n", "setProperties", 11859);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  v6 = OUTLINED_FUNCTION_5_0(*(*v2 + 24));
  v8 = (*(v7 + 72))(v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:SetProperty Failed handling of propertyDict with %d keys: %s\n", "setProperties", 12019, v8, v1);
}

uint64_t AppleBCMWLANCore::simulateRoamStatusSubStateGated(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *v2;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v9, "[dk] %s@%d:Setting simulated roam status substate params: substate: 0x%x idx: 0x%x status: 0x%x reason: 0x%x\n", "simulateRoamStatusSubStateGated", 56174, v11, v12, v13, v14);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *v2;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v9, "[dk] %s@%d:Failed to configure simulated roam status substate: substate=%d idx=%d status=%d reason=%d\n", "simulateRoamStatusSubStateGated", 56199, v11, v12, v13, v14);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Clearing simulated roam status substate\n", "simulateRoamStatusSubStateGated", 56205);
}

uint64_t AppleBCMWLANCore::handleSetEventBitFieldAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set the event bit field!!: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::startRoamScanAsyncCallback(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  v7 = (*(v6 + 1952))(v5);
  v8 = *a3;
  OUTLINED_FUNCTION_81_0();
  (*(v9 + 112))(v3);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v7, "[dk] %s@%d: Error: cannot start a Roam Scan: %s\n", v11, v12, v13);
}

uint64_t AppleBCMWLANCore::getRssiAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot read rssi from the firmware: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: no valid data \n", "getRssiAsyncCallback", 12360);
}

uint64_t AppleBCMWLANCore::handlePktFilterPortsAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot Configure Pkt Ports List in the firmware: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleSetARPOffloadAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot read ARP OE from the firmware: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleSetICMPAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot configure ICMP in firmware: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleSetLpasAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot configure LPAS in firmware: %s\n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_172();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: LPAS request in FW: %s %d \n", "handleSetLpasAsyncCallBack", 12441, v9, v1);
}

uint64_t AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot read ND OE from the firmware: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_8(a1);
  v3 = (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_81_0();
  v5 = *(v4 + 112);
  v7 = *(v6 + 3456);
  v8 = *(v6 + 3452);
  v9 = OUTLINED_FUNCTION_172();
  v15 = v10(v9);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: LPAS config update needed with %d (%d): %s\n", v12, v13, v14, v8, v15);
}

uint64_t AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set beacon wake up time: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleMWSCoexIoVarAsyncCallBack(uint64_t *a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1952))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 112);
  v9 = OUTLINED_FUNCTION_172();
  v11 = v10(v9);
  return CCLogStream::logNoticeIf(v3, 0x4000000uLL, "[dk] %s@%d:Coex iovar set successfully - %s : %s\n", "handleMWSCoexIoVarAsyncCallBack", 12584, a3, v11);
}

uint64_t AppleBCMWLANCore::handleAutoCountryAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot reset autocountry : %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleGetCountryCodeAsyncCallBack(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot get current country code from FW : %s, ivars->fCurrentFWCountryCode: %s\n", "handleGetCountryCodeAsyncCallBack", 12723, v9, (*(v1 + 72) + 6744));
}

uint64_t AppleBCMWLANCore::handleExcessPMPeriodAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set excess_pm_period: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleExcessPMPercentAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set excess_pm_period: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleGetPowerSaveModeAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logInfo(v4, "Power Save = %d\n", **v1);
}

uint64_t AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot get Beacon Rx Counters: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[9];
  v5 = v1[5];
  v6 = v1[6];
  OUTLINED_FUNCTION_126();
  return CCLogStream::logInfo(v7, "[dk] %s@%d:BCN_OFLD_DUR=%d RX_BCN_CNT=%d MISSED_BCN_CNT=%d\n", "handleCollectBeaconRxCountersAsyncCallBack", 12771, v9, v10, v11);
}

uint64_t AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[9];
  v5 = v1[5];
  v6 = v1[6];
  OUTLINED_FUNCTION_126();
  return CCLogStream::logInfo(v7, "[dk] %s@%d:Exit: BCN_OFLD_DUR= %d EXPECTED= %d MISSED_BCN_CNT= %d\n", "updateTrafficInactivityScanCoreBeaconStats", 13444, v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:Overflow detected in adding LPSC beacon stats\n", "updateTrafficInactivityScanCoreBeaconStats", 13453);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateBeaconOffloadStatsReport(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Beacon Offload Stats: SessionDur %lld, OffloadDur %lld, BcnRxCount %d BcnMissedCnt %d, OffloadEnterCount %d, OffloadRejectCount %d \n", "updateBeaconOffloadStatsReport", 43444, *(*v1 + 19008), *(*v1 + 19016), *(*v1 + 19024), *(*v1 + 19028), *(*v1 + 19032), *(*v1 + 19036));
}

uint64_t AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyOffldEnterCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43497);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueOffloadEnterCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43493);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyOffldEnterCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43491);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueBcnMissedCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43487);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyBcnMissedCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43485);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueBcnRxCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43481);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyBcnRxCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43479);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyOffloadDur\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43473);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueSessionDur\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43469);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keySessionDur\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43467);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43463);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43461);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteEapolFilterAsyncCallBack(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: WoWEapolFilter is deleted\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleResetLinkParamsAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot Reset Linkup : %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: bus:wakeup_data failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  v5 = *v1;
  v6 = convertEventToString(v5, 0, 0);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Wake up event packet received event_type: 0x%x %s \n", "handleBusWakeReasonSyncCallBack", 12963, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Wake up dongle dump event received\n", "handleBusWakeReasonSyncCallBack", 12946);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Wake up packet received: Data\n", "handleBusWakeReasonSyncCallBack", 12912);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d: Wake up event received, but failed to parse\n", "handleBusWakeReasonSyncCallBack", 12985);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Rx payload buffer is too small (%d bytes) to contain cached wake up data \n", "handleBusWakeReasonSyncCallBack", 12890, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(uint64_t *a1, uint64_t a2, _DWORD *a3, int a4)
{
  v7 = OUTLINED_FUNCTION_29_5(a1);
  result = (*(v8 + 1952))(v7);
  if (result)
  {
    (*(*v4 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*v4 + 1952))(v4);
      return CCLogStream::logAlert(v10, "[dk] %s@%d:remainingBufferLength %u is too small to contain data length %u\n", "handleBusWakeReasonSyncCallBack", 12968, a4, *a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_41_2(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v8, "[dk] %s@%d:Firmware event buffer remaining length %u is too small to contain wl_event_msg_t size %zu\n", "handleBusWakeReasonSyncCallBack", 12957, a3, 0x30uLL);
    }
  }

  return result;
}

{
  v5 = OUTLINED_FUNCTION_41_2(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v8, "[dk] %s@%d:Firmware event buffer remaining length %u is too small to contain bcmeth_hdr_t size %zu\n", "handleBusWakeReasonSyncCallBack", 12935, a3, 0xAuLL);
    }
  }

  return result;
}

{
  v5 = OUTLINED_FUNCTION_41_2(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v8, "[dk] %s@%d:Firmware event buffer remaining length %u is too small to contain bcm_event_t size %zu\n", "handleBusWakeReasonSyncCallBack", 12929, a3, 0x48uLL);
    }
  }

  return result;
}

{
  v5 = OUTLINED_FUNCTION_41_2(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v8, "[dk] %s@%d:Data offset %u is larger than remaining buffer length %u\n", "handleBusWakeReasonSyncCallBack", 12915, 16, a3);
    }
  }

  return result;
}

{
  v5 = OUTLINED_FUNCTION_41_2(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v8, "[dk] %s@%d:Cached FW wakeup data length %u is too small to contain a BCOMIPCHeader size %lu\n", "handleBusWakeReasonSyncCallBack", 12907, a3, 8);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::linkChangeEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x20uLL, "[dk] %s@%d: LinkDown: Stopping link activity timer\n", "linkChangeEvent", 13066);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x20uLL, "[dk] %s@%d: LinkUp: Starting link activity timer\n", "linkChangeEvent", 13034);
}

uint64_t AppleBCMWLANCore::setupTrafficMonitoring(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:RT/NRT traffic notification not created yet\n", "setupTrafficMonitoring", 58450);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Failed to create RT/NRT traffic notification\n", "setupTrafficMonitoring", 58432);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    OUTLINED_FUNCTION_258();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_258();
      v7 = (*(v6 + 1952))(v1);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to get RT/NRT traffic monitor\n", "setupTrafficMonitoring", 58412);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    OUTLINED_FUNCTION_258();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_258();
      v7 = (*(v6 + 1952))(v1);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to get workloop\n", "setupTrafficMonitoring", 58411);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleIPv6AddressNotificationGated(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  my_ip6_sprintf((*v2 + 16 * v1 + 9524));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNoticeIf(v5, 0x100uLL, "[dk] %s@%d:IPv6  addresses Configured %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::handlGetPMDurationAsyncCallback(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_52_0();
      v7 = *(v6 + 112);
      v8 = OUTLINED_FUNCTION_130();
      v9(v8);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logCrit(v2, "[dk] %s@%d: pm_dur failed, error %s\n", v10, v11, v12);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:Over flow detected in adding delta value to ivars->fInactivityMpcSleepDuration\n", "handlGetPMDurationAsyncCallback", 13369);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:ASync enter MPC duration - last: %d\n", "handlGetPMDurationAsyncCallback", 13360, v6);
}

uint64_t AppleBCMWLANCore::updateTrafficInactivityBeaconStats(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:Overflow detected in adding MPC beacon stats\n", "updateTrafficInactivityBeaconStats", 13425);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned infraSpecificStats data\n", "updateTrafficInactivityBeaconStats", 13395);
}

uint64_t AppleBCMWLANCore::setTrafficInactivityStats(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 18248);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:enter %llu\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_41_2(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_162();
      v7 = *(v6 + 112);
      v8 = OUTLINED_FUNCTION_130();
      v9(v8);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logCrit(v5, "[dk] %s@%d: pm_dur failed, error %s\n", v10, v11, v12);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:Overflow detected in adding delta stats to ivars->fInactivityMpcSleepDuration\n", "setTrafficInactivityStats", 13510);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Sync enter MPC duration - last: %d\n", "setTrafficInactivityStats", 13500, v6);
}

{
  v2 = OUTLINED_FUNCTION_41_2(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_162();
      v7 = *(v6 + 112);
      v8 = OUTLINED_FUNCTION_130();
      v9(v8);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logCrit(v5, "[dk] %s@%d: pm_dur failed, error %s\n", v10, v11, v12);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getChipIfCounters(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_52_0();
      v7 = *(v6 + 112);
      v8 = OUTLINED_FUNCTION_130();
      v9(v8);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:getChipIfCounters failed getting soft AP if_counters reason: %s\n", v10, v11, v12);
    }
  }

  return result;
}

{
  v3 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_52_0();
      v7 = *(v6 + 112);
      v8 = OUTLINED_FUNCTION_130();
      v9(v8);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:getChipIfCounters failed reason: %s\n", v10, v11, v12);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::collectBeaconRxCounters(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[9];
  v5 = v1[5];
  v6 = v1[6];
  OUTLINED_FUNCTION_126();
  return CCLogStream::logInfo(v7, "[dk] %s@%d:BCN_OFLD_DUR=%d RX_BCN_CNT=%d MISSED_BCN_CNT=%d\n", "collectBeaconRxCounters", 43570, v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::validateBrcmExtChIE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v6, "[dk] %s@%d:Malformed IE, bss_info is invalid in Extentded Channel IE\n", "validateBrcmExtChIE", 14138);
    }
  }

  *v1 = 0;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Found wl_bss_info_t\n", "validateBrcmExtChIE", 14139);
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Invalid argument\n", "validateBrcmExtChIE", 14120);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::getRoamNoNetworkReason(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "getRoamNoNetworkReason", 14168);
}

uint64_t AppleBCMWLANCore::handleExtendedEventData(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logEmergency(v4, "[dk] %s@%d:Malformed event message does not have enough space for another IE\n", "handleExtendedEventData", v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleExtendedEventData", 14308);
}

void AppleBCMWLANCore::updateSlowWifiRxAmpduStats(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logAlert(v4, "[dk] %s@%d:alignment fails\n", "updateSlowWifiRxAmpduStats", 14468);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANCore::handleDongleEventPacket(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unsupported Dongle Event Message Version (%d)\n", "handleDongleEventPacket", 14567, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s %d Length check failed with reasonCode %d", "handleDongleEventPacket", 14767, "handleDongleEventPacket", 14767, v1);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:RX DMA STALL - wrong bcm_xtlv length %u\n", "handleDongleEventPacket", 14720, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  v5 = v1[6];
  v6 = v1[7];
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:RX DMA STALL - entity=%d timeout=%u stalled_dma_bitmap=%u\n", "handleDongleEventPacket", 14727, v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:RX DMA STALL - Buffer overflow rx_dma_hc_info\n", "handleDongleEventPacket", 14724);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:RX DMA STALL - Buffer overflow bcm_xtlv\n", "handleDongleEventPacket", 14718);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  v5 = v1[4];
  v6 = v1[5];
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:RX DMA STALL - entity=%d timeout=%u stalled_dma_bitmap=%u\n", "handleDongleEventPacket", 14737, v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:RX DMA STALL - Buffer overflow rx_dma_hc_info\n", "handleDongleEventPacket", 14734);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14706);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14664);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14653);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14641);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14632);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14620);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:SPMI reset ind dongle event core#0[%u] core#1[%u]\n", "handleDongleEventPacket", 14586, *(*v1 + 35648), *(*v1 + 35652));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid SPMI reset indication message length\n", "handleDongleEventPacket", 14576);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Dongle Event Type (%04x) Event Length (%hu)\n", "handleDongleEventPacket", 14591, bswap32(*v2) >> 16, bswap32(*v1) >> 16);
}

uint64_t AppleBCMWLANCore::validateRxDMAStall(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:validateRxDMAStall: no fBusSkywalk", "validateRxDMAStall", 14851);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:validateRxDMAStall: no fProvider", "validateRxDMAStall", 14854);
}

uint64_t AppleBCMWLANCore::handleRxStallReasons(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer overflow detected\n", "operator()", 14873);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Processed RX Stall V2\n", "handleRxStallReasons", 14896);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Processed RX Stall V3\n", "handleRxStallReasons", 14892);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Processed RX Stall V4\n", "handleRxStallReasons", 14888);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid hc data %d %zu %zu \n", "handleRxStallReasons", 14945, *v1, 0x20uLL, 0x28uLL);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:HC currentTime %llu is less than resetTime %llu\n", "handleRxStallReasons", 14974, v1, *(*v2 + 14288));
}

uint64_t AppleBCMWLANCore::checkActionFrameCompleteOverdue(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Found action frame completion overdue start=%llu(ms) now=%llu(ms)\n", "checkActionFrameCompleteOverdue", 15121, *(*v2 + 17536), *v1);
}

uint64_t AppleBCMWLANCore::getTransDisabledFlags(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Transition mode disabled 0x%x\n", "getTransDisabledFlags", 15138, v5);
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Invalid argument\n", "getTransDisabledFlags", 15133);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateTransitionDisabledInfo(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "updateTransitionDisabledInfo", 15162);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: ERROR: invalid Length\n", "updateTransitionDisabledInfo", 15154);
}

uint64_t AppleBCMWLANCore::handleScanEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Incorrect scan add version %d\n", "handleScanEvent", 22423, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Channels in scan list %d > max %d\n", "handleScanEvent", 22393, v1, 400);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not materialize the Scan event from FW\n", "handleScanEvent", 22377);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:ERROR: Channels in scan list %d > max %d\n", "handleScanEvent", 22347, *v1 + *v2, 400);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Event Payload incorrect: datalen = %d\n", "handleScanEvent", 22335, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleScanEvent", 22234, v5);
}

uint64_t AppleBCMWLANCore::handleCCAChanQualEvent(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_19_6(a1);
  result = (*(v6 + 1952))();
  if (result)
  {
    (*(*v4 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v4 + 1952))(v4);
      OUTLINED_FUNCTION_215();
      return CCLogStream::logEmergency(v8, "[dk] %s@%d: Overflow detected: cca_busy.congest[%u], cca_busy_ext.congest_ibss[%u], cca_busy_ext.congest_obss[%u], cca_busy_ext.interference[%u]\n", "handleCCAChanQualEvent", 24387, v9, v9, v10, *a4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_19_6(a1);
  result = (*(v6 + 1952))();
  if (result)
  {
    (*(*v4 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v4 + 1952))(v4);
      OUTLINED_FUNCTION_215();
      return CCLogStream::logEmergency(v8, "[dk] %s@%d: Overflow detected: cca_busy.congest[%u], cca_busy_ext.congest_ibss[%u], cca_busy_ext.congest_obss[%u], cca_busy_ext.interference[%u]\n", "handleCCAChanQualEvent", 24342, v9, v9, v10, *a4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCCAChanQualEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:handleCCAChanQualEvent: %d CCA busy zero duration\n", "handleCCAChanQualEvent", 24334, 24334);
}

{
  v2 = OUTLINED_FUNCTION_49_0(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:fInfraSkywalkInterface->setInterfaceNF failed\n", "handleCCAChanQualEvent", 24313);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logEmergency(v5, "[dk] %s@%d: Overflow detected: cca_busy.congest[%u]\n", "handleCCAChanQualEvent", 24267, v6);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:handleCCAChanQualEvent: %d zero CCA busy duration\n", "handleCCAChanQualEvent", 24260, 24260);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:handleCCAChanQualEvent: Invalid wle message,unknown message ID=%u\n", "handleCCAChanQualEvent", 24233, *(v1 + 2));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_199();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:handleCCAChanQualEvent: Invalid wle message length=%u, too small to hold event length=%u\n", "handleCCAChanQualEvent", 24210, v5, v6);
}

uint64_t AppleBCMWLANCore::handleTxStatusErrEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:handleTxStatusErrEvent: PHY TX Error event from FW: 0x%x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleWeightAvgLQMEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Not associated, will drop\n", "handleWeightAvgLQMEvent", 23179);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:event_weight_avg_lqm alignment failure\n", "handleWeightAvgLQMEvent", 23232);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unsupported Weighted Average Event Version = %d\n", "handleWeightAvgLQMEvent", 23245, v5);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:sub_event_ptr alignment failure\n", "handleWeightAvgLQMEvent", 23252);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unsupported Weighted Average LQM event subtype = %d\n", "handleWeightAvgLQMEvent", 23260, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Wrong event length(WL_EVENT_WA_LQM_BASIC) = %d\n", "handleWeightAvgLQMEvent", 23265, v5);
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid event_weight_avg_lqm->len = %d, exceeds %u\n", "handleWeightAvgLQMEvent", 23242, *v2, *v1);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid event_weight_avg_lqm->len = %d\n", "handleWeightAvgLQMEvent", 23239, v6);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid WLE size[%d]\n", "handleWeightAvgLQMEvent", 23229, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleDynSAREvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Alignment failure, event_dynsar\n", "handleDynSAREvent", 23308);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid wle->datalen = %d\n", "handleDynSAREvent", 23309, v6);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid event_dynsar->length = %d\n", "handleDynSAREvent", 23310, v6);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_26_1();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:DSA slice %d is out of range\n", "handleDynSAREvent", 23312, v6);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Unsupported DynSAR event version = %d\n", "handleDynSAREvent", 23311, v6);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Memory allocation failure for dynSARDataPerSlice\n", "handleDynSAREvent", 23302);
}

uint64_t AppleBCMWLANCore::handleRangingEvent(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logNotice(v5, "[dk] %s@%d: proxd event: reason=%d type %s method 0x%x session %d\n", "handleRangingEvent", 23598, *(v2 + 12), v1, *(v2 + 54), *(v2 + 56));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_ftm_session_status_t\n", "handleRangingEvent", 24152);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WL_PROXD_EVENT_BURST_END, TLV ID: 0x%x\n", "handleRangingEvent", 23643, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v3_t\n", "handleRangingEvent", 23991);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 24007, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 24004, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Detected outlier but not discarding sample!\n", "handleRangingEvent", 24020);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v3_t\n", "handleRangingEvent", 23985);
}

{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logEmergency(v5, "[dk] %s@%d: Overflow detected: avg_dist[%d]\n", "handleRangingEvent", 23966, v6);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_result_v3_t\n", "handleRangingEvent", 23945);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v2_t\n", "handleRangingEvent", 23846);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 23867, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 23864, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Detected outlier but not discarding sample!\n", "handleRangingEvent", 23880);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v2_t\n", "handleRangingEvent", 23840);
}

{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logEmergency(v5, "[dk] %s@%d: Overflow detected: avg_dist[%d]\n", "handleRangingEvent", 23821, v6);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_result_v2_t\n", "handleRangingEvent", 23793);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v1_t\n", "handleRangingEvent", 23704);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 23720, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 23717, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Detected outlier but not discarding sample!\n", "handleRangingEvent", 23733);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v1_t\n", "handleRangingEvent", 23698);
}

{
  v2 = OUTLINED_FUNCTION_34_3(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logEmergency(v5, "[dk] %s@%d: Overflow detected: avg_dist[%d]\n", "handleRangingEvent", 23679, v6);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_result_v1_t\n", "handleRangingEvent", 23658);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Filtered ranging samples based on RSSI, new count=%d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:insufficient remaining data length for wl_proxd_ftm_session_status_t\n", "handleRangingEvent", 24138);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:incorrect remaining data size for wl_proxd_collect_event_data_v%d_t\n", "handleRangingEvent", 23609, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleRangingEvent", 23554);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:incorrect payload size for wl_proxd_event_t", "handleRangingEvent", 23548);
}

uint64_t AppleBCMWLANCore::handleRangingEvent(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = OUTLINED_FUNCTION_2_7(a1);
  (*(v7 + 1952))(v6);
  v8 = *(v4 + 68);
  v9 = *(v4 + 70);
  v10 = *(v4 + 72);
  if (v10 != -1 && v10 && (v10 + 1056) <= 0x20)
  {
    v11 = wl_proxd_error_to_string[v10 + 1056];
  }

  v12 = *(v4 + 76);
  v13 = *(v4 + 77);
  v14 = *(v4 + 78);
  v30 = *(v4 + 99);
  v31 = *(v4 + 100);
  v28 = *(v4 + 102);
  v29 = *(v4 + 98);
  v26 = *(v4 + 81);
  v27 = *(v4 + 82);
  v24 = *(v4 + 79);
  v25 = *(v4 + 80);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logNotice(v15, "[dk] %s@%d: Ranging result V3: session=%d, flags=0x%x, status=%d(%s), peer=%02X:%02X:%02X:%02X:%02X:%02X, state=%d,avg_dist=%d.%04dm,  num RTT samples=%d, valid=%d, num_ftm %d, burst_num  %d\n ", "handleRangingEvent", 23959, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, a4 >> 8, (625 * a4) >> 4, v28, v29, v30, v31);
}

uint64_t AppleBCMWLANCore::handleLinkEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure Private MAC Address for Scans \n", "handleLinkEvent", 23045);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Link event not intended for STA or AWDL interface! Dropping!\n", "handleLinkEvent", 22977);
}

uint64_t AppleBCMWLANCore::handleRoamScanStartEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Insufficient space, wle->datalen[%u] < %lu\n", "handleRoamScanStartEvent", 22101, *v1, 6);
}

{
  v2 = OUTLINED_FUNCTION_5_0(a1);
  if (!(*(v3 + 1952))(v2) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v4, "%c [dk] %s@%d: Invalid pRoamStartEv length for xTLV parsing\n", v5, v6, v7, v8, v11, v12, v13);
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*a1 + 1952))(a1);
      return CCLogStream::logAlert(v10, "[dk] %s@%d:Invalid pRoamStartEv length for xTLV parsing\n", "handleRoamScanStartEvent", 22137);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamScanStartEvent()
{
  OUTLINED_FUNCTION_108();
  if (!(*(*v1 + 1952))(v1) || ((*(*v0 + 1952))(v0), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v2, "%c [dk] %s@%d: Out-of-bound roam_xtlv pointer\n", v3, v4, v5, v6, v9, v10, v11);
    }
  }

  result = (*(*v0 + 1952))(v0);
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v8, "[dk] %s@%d:Out-of-bound roam_xtlv pointer\n", "handleRoamScanStartEvent", 22145);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_108();
  if ((*(*v1 + 1952))(v1))
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*v0 + 1952))(v0);
      CCLogStream::logAlert(v8, "[dk] %s@%d:Overflow detected while processing TLVs\n", "handleRoamScanStartEvent", 22160);
    }
  }

  if (!(*(*v0 + 1952))(v0) || ((*(*v0 + 1952))(v0), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v2, "%c [dk] %s@%d: Integer overflow or limit exceeded while processing TLVs\n", v3, v4, v5, v6, v10, v11, v12);
    }
  }

  result = (*(*v0 + 1952))(v0);
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v9, "[dk] %s@%d:Integer overflow or limit exceeded while processing TLVs\n", "handleRoamScanStartEvent", 22161);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamScanStartEvent(uint64_t *a1, unsigned __int16 a2)
{
  v4 = OUTLINED_FUNCTION_5_0(a1);
  if (!(*(v5 + 1952))(v4) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v9 = 65;
      v10 = 2080;
      v11 = "handleRoamScanStartEvent";
      v12 = 1024;
      v13 = 22139;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Invalid xTLV total length: %u\n", buf, 0x1Eu);
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*a1 + 1952))(a1);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid xTLV total length: %u\n", "handleRoamScanStartEvent", 22139, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:LQM-WiFi-Roam: Fail to dump roam target evaluation\n", "handleRoamEvent", 22496);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Using simulated roam status substate\n", "handleRoamEvent", 22546);
}

uint64_t AppleBCMWLANCore::handleRoamPrepEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_199();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Insufficent space, wle->datalen[%u] < %zu\n", "handleRoamPrepEvent", 22017, v5, v6);
}

uint64_t AppleBCMWLANCore::handleMICErrorEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  *(v1 + 2);
  OUTLINED_FUNCTION_113();
  return CCLogStream::logWarn(v4, "[dk] %s@%d: %s MIC Error\n", v6, v7, v8);
}

uint64_t AppleBCMWLANCore::handleCountryCodeChangedEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_198();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:WiFiCC : Country code changed from %s to %s\n", "handleCountryCodeChangedEvent", 21838, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:WiFiCC : Querying FW; old country queried was: %s\n", "handleCountryCodeChangedEvent", 21844, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_139();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:WiFiCC : Skip querying FW; old country queried for chan list was: %s \n", "handleCountryCodeChangedEvent", 21849, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Handling country code change event failed - payload insufficient for CC (length %d)\n", "handleCountryCodeChangedEvent", 21829, v5);
}

uint64_t AppleBCMWLANCore::handleICVErrorEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logWarn(v3, "[dk] %s@%d: Decryption Failure\n", "handleICVErrorEvent", 21732);
}

uint64_t AppleBCMWLANCore::handlePSKEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Insufficent space, wle->datalen[%u] < %zu\n", "handlePSKEvent", 21692, *v1, 0x1EuLL);
}

uint64_t AppleBCMWLANCore::handlePruneEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d: PRUNE event %lu\n", "handlePruneEvent", 21635, *(v1 + 4));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  v6 = *(v1 + 8);
  v5 = *(v1 + 12);
  v7 = stringFromReason(*(v1 + 4), *(v1 + 12));
  return CCLogStream::logNotice(v4, "    status = %lu, reason = %lu %s, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", v6, v5, v7, *(v1 + 2), *(v1 + 16), *(v1 + 24), *(v1 + 25), *(v1 + 26), *(v1 + 27), *(v1 + 28), *(v1 + 29));
}

uint64_t AppleBCMWLANCore::handlePSMWatchdog(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Default ucode lockup.\n", "handlePSMWatchdog", 21628);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Debug PSMl Watchdog event.\n", "handlePSMWatchdog", 21626);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Detect WCI2 hang!\n", "handlePSMWatchdog", 21624);
}

uint64_t AppleBCMWLANCore::handlePMAlertEvent(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: cannot set excess_pm_period to 0 : ret %x: %s  -> got WLC_E_PM_ALERT\n", "handlePMAlertEvent", 22910, v1, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 112);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: cannot set excess_pm_percent to 0 : ret %x: %s  -> got WLC_E_PM_ALERT\n", "handlePMAlertEvent", 22922, v1, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "Failed to get Current Power Save Mode\n");
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Received PM ALERT Event in Un-Associated Sleep Mode\n", "handlePMAlertEvent", 22953);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Send BLACKLIST_NETWORK\n", "handlePMAlertEvent", 22947);
}

uint64_t AppleBCMWLANCore::handleTraceEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: [unsupported version --> dhd version:%d dongle version:%d]\n", "handleTraceEvent", 21569, 1, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to allocate eventHeaderAndPayload\n", "handleTraceEvent", 21590);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:Event message buffer underflow\n", "handleTraceEvent", 21564);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::csaReceived(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:CSA received while device not yet Associated, Bail out\n", "csaReceived", 15861);
}

uint64_t AppleBCMWLANCore::handleWSECEvent(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  v6 = "disabled";
  if (*v2)
  {
    v7 = "enabled";
  }

  else
  {
    v7 = "disabled";
  }

  if (*v1)
  {
    v6 = "enabled";
  }

  return CCLogStream::logAlert(v5, "[dk] %s@%d: handleWSECEvent: Re-assoc %s, Dis-assoc %s\n", "handleWSECEvent", 24604, v7, v6);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: handleWSECEvent: Invalid WSEC event, unknown type[%u]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Allocation failure for return WSEC notification\n", "handleWSECEvent", 24649);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: handleWSECEvent: Invalid wle message length=%u, too small to hold event length=%u\n", "handleWSECEvent", 24587, *v1, 6);
}

uint64_t AppleBCMWLANCore::handleWSECEvent()
{
  OUTLINED_FUNCTION_32_1();
  v4 = OUTLINED_FUNCTION_29_5(v3);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d: handleWSECEvent: Invalid message length[%u] < %u\n", "handleWSECEvent", 24646, *v1, 44);
    }
  }

  *v0 = "WLC_WSEC_EVENT_PTK_PN_SYNC_ERROR";
  return result;
}

uint64_t AppleBCMWLANCore::handleSCChanQualEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Alignment failure, event_chanim_sc_stats\n", "handleSCChanQualEvent", 24769);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Unsupported SC_CHANIM_STATS event Version = %d\n", "handleSCChanQualEvent", 24770, v6);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_26_1();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid event_chanim_sc_stats->id = %d\n", "handleSCChanQualEvent", 24772, v6);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_26_1();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Per channel event channle count = %d, not 1\n", "handleSCChanQualEvent", 24773, v6);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:|| [Channel: %-3d] ===========================================================================\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:|| [Summary] --------------------------------------------------------------------------------\n", "handleSCChanQualEvent", 24856);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Tx Blanking                                    |                       | %-12s ||\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Tx Blanking Reason                             |                       | %-12s ||\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Tx Blanking Thresh Perc                        |                       | %-12u ||\n", "handleSCChanQualEvent", 24859, 25);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Tx Blanking Perc                               |                       | %-12u ||\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Duration on SC                                 | sc_only_rx_dur        | %-12u ||\n", "handleSCChanQualEvent", 24861, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Duration total                                 | time_dur              | %-12u ||\n", "handleSCChanQualEvent", 24862, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Timestamp                                      | timestamp             | %-12u ||\n", "handleSCChanQualEvent", 24863, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:|| [Details] --------------------------------------------------------------------------------\n", "handleSCChanQualEvent", 24864);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Rx only on SC                                  | sc_only_rx_dur        | %-12u ||\n", "handleSCChanQualEvent", 24865, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Rx on SC when MC active                        | sc_rx_mc_rx_dur       | %-12u ||\n", "handleSCChanQualEvent", 24866, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Rx on SC when AC active                        | sc_rx_ac_rx_dur       | %-12u ||\n", "handleSCChanQualEvent", 24867, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Rx on SC when BT Main active                   | sc_rx_bt_rx_dur       | %-12u ||\n", "handleSCChanQualEvent", 24868, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Rx on SC when MC Tx                            | sc_rx_mc_tx_dur       | %-12u ||\n", "handleSCChanQualEvent", 24869, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   Rx on SC when AC-BT Tx                         | sc_rx_ac_bt_tx_dur    | %-12u ||\n", "handleSCChanQualEvent", 24870, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:||   BT Rx transitions                              | sc_btrx_trans_cnt     | %-12u ||\n", "handleSCChanQualEvent", 24872, *(v1 + 6));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   WLAN SC awake and BT SC LE scan overlapped     | sc_btle_overlap_dur   | %-12u ||\n", "handleSCChanQualEvent", 24873, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   WLAN SC awake and BT SC Page scan overlapped   | sc_btpage_overlap_dur | %-12u ||\n", "handleSCChanQualEvent", 24874, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   WLAN Aux Tx blanked BT SC LE scan              | ac_btle_blnk_dur      | %-12u ||\n", "handleSCChanQualEvent", 24875, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   WLAN Aux Tx blanked BT SC Page scan            | ac_btpage_blnk_dur    | %-12u ||\n", "handleSCChanQualEvent", 24876, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   WLAN Aux awake and BT SC LE scan overlapped    | ac_btle_overlap_dur   | %-12u ||\n", "handleSCChanQualEvent", 24877, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:||   WLAN Aux awake and BT SC Page scan overlapped  | ac_btpage_overlap_dur | %-12u ||\n", "handleSCChanQualEvent", 24878, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Allocation failure\n", "handleSCChanQualEvent", 24764);
}

uint64_t AppleBCMWLANCore::handleSCChanQualEvent(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_77_0();
  v7 = OUTLINED_FUNCTION_5_0(v6);
  result = (*(v8 + 1952))(v7);
  if (result)
  {
    (*(*v4 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*v4 + 1952))(v4);
      return CCLogStream::logAlert(v10, "[dk] %s@%d:Invalid event_chanim_sc_stats->length = %d, expected len = %d\n", "handleSCChanQualEvent", 24771, *v3, a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleUlOfdmaDisableEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WLC_E_ULMU_DISABLED_REASON_UPD: Invalid version number %u for the event\n", "handleUlOfdmaDisableEvent", 23514, v5);
}

uint64_t AppleBCMWLANCore::setBeaconListenInterval(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Associated Sleep issued not setting beaocn intervals for active mode\n", "setBeaconListenInterval", 15895);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordAMPDU(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unhandled %d mapping for report->encodingRate\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unhandled %d mapping for report->trafficDirection\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unhandled %d mapping for report->ampduStatType\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to setAMPDUstat\n", "parseEventLogRecordAMPDU", 16325);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Invalid length %u\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Processing of tag %d failed\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = OUTLINED_FUNCTION_86();
  Length = OSData::getLength(v5);
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to allocate report buffer with size %lu for tag %d\n", "parseEventLogRecordAMPDU", 15954, Length + 272, v1);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordAMPDU()
{
  OUTLINED_FUNCTION_32_1();
  v3 = OUTLINED_FUNCTION_5_5(v2);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logEmergency(v5, "[dk] %s@%d:Insufficient Length for Density Distribution len %d, aggregationDens->len %d\n", "parseEventLogRecordAMPDU", 16296, v1, *(v0 + 2));
}

uint64_t AppleBCMWLANCore::parseEventLogRecordAMPDU(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1952))(a1);
      result = CCLogStream::logEmergency(v8, "[dk] %s@%d:ampdu_stats_type_int larger than max known WL_AMPDU_STATS_TYPE_MLO_LINK_INFO\n", "parseEventLogRecordAMPDU", 15958);
    }
  }

  *a3 = -536870212;
  *a2 = v6;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordWLCounters(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to convertWlCntToApple80211ChipStats\n", "parseEventLogRecordWLCounters", 16352);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to updateInfraStatistics\n", "parseEventLogRecordWLCounters", 16355);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setChipCounterStats\n", "parseEventLogRecordWLCounters", 16361);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::convertWlCntToApple80211ChipStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wl_cnt_t data\n", "convertWlCntToApple80211ChipStats", 28478);
}

uint64_t AppleBCMWLANCore::setHeStats(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logEmergency(v2, "[dk] %s@%d:invalid payload length %lu expect one of size(%lu,%lu,%lu)\n", "setHeStats", 16398, Length, 200, 220, 224);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setExtendedChipCounterStats\n", "setHeStats", 16528);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::setOmiStats(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setExtendedChipCounterStats\n", "setOmiStats", 16592);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wl_ctl_mgt_cnt_t data\n", "parseEventLogRecordBTCoexStatsV2", 16625);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV2", 16661);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_22_4(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v8 + 1952))(v2);
      v9 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v9);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV2", 16619, Length, 0x24uLL);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wl_ctl_mgt_cnt_t data\n", "parseEventLogRecordBTCoexStatsV3", 16736);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV3", 16772);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_22_4(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v8 + 1952))(v2);
      v9 = OUTLINED_FUNCTION_86();
      OSData::getLength(v9);
      OUTLINED_FUNCTION_241();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV3", 16730, v10, v11);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV4(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wl_ctl_mgt_cnt_t data\n", "parseEventLogRecordBTCoexStatsV4", 16847);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s::%s[%u] Unknown status bit in report.btStatusUsed %x\n", "parseEventLogRecordBTCoexStatsV4", 16878, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", "parseEventLogRecordBTCoexStatsV4", 16878, v1);
}

{
  v4 = OUTLINED_FUNCTION_22_4(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v8 + 1952))(v2);
      v9 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v9);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV4", 16841, Length, 0x5CuLL);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v6_t data\n", "parseEventLogRecordBTCoexStatsV6", 16929);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV6", 16964);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_22_4(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v8 + 1952))(v2);
      v9 = OUTLINED_FUNCTION_86();
      OSData::getLength(v9);
      OUTLINED_FUNCTION_241();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV6", 16923, v10, v11);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v7_t data\n", "parseEventLogRecordBTCoexStatsV7", 17059);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV7", 17094);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_22_4(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v8 + 1952))(v2);
      v9 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v9);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV7", 17053, Length, 0x48uLL);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v11_t data\n", "parseEventLogRecordBTCoexStatsV11", 17200);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV11", 17240);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_22_4(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v8 + 1952))(v2);
      v9 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v9);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV11", 17194, Length, 0x58uLL);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v12_t data\n", "parseEventLogRecordBTCoexStatsV12", 17393);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV12", 17439);
    }
  }

  *v1 = v3;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d: parseEventLogRecordBTCoexStatsV12: Invalid btc slice_index [%u] \n", "parseEventLogRecordBTCoexStatsV12", 17407, *v2);
    }
  }

  *v1 = v4;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_22_4(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v8 + 1952))(v2);
      v9 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v9);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV12", 17387, Length, 0x70uLL);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v9_t data\n", "parseEventLogRecordBTCoexStatsV9", 17662);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV9", 17702);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_22_4(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v7 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v8 + 1952))(v2);
      v9 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v9);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV9", 17656, Length, 0x4CuLL);
    }
  }

  *v1 = v3;
  return result;
}