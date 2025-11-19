uint64_t sub_19B538AC8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(result + 44);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 52) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v10 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 52) & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  v9 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_15:
  v11 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_19B538BC4(void *result)
{
  *result = &unk_1F0E393A8;
  *(result + 212) = 0;
  return result;
}

void sub_19B538BEC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B538C24(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 212);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "calculationTimestamp");
    v5 = *(a1 + 212);
    if ((v5 & 0x1000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 104);
  PB::TextFormatter::format(this, "dramDuration");
  v5 = *(a1 + 212);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a1 + 16);
  PB::TextFormatter::format(this, "dramMaxTimestamp");
  v5 = *(a1 + 212);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(a1 + 24);
  PB::TextFormatter::format(this, "dramMinTimestamp");
  v5 = *(a1 + 212);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  v11 = *(a1 + 32);
  PB::TextFormatter::format(this, "epochMaxTimestamp");
  v5 = *(a1 + 212);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v12 = *(a1 + 40);
  PB::TextFormatter::format(this, "epochMinTimestamp");
  v5 = *(a1 + 212);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "maxRMS", *(a1 + 108));
  v5 = *(a1 + 212);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(a1 + 112);
  PB::TextFormatter::format(this, "numPointsInEpoch");
  v5 = *(a1 + 212);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(a1 + 116);
  PB::TextFormatter::format(this, "numShortAudio");
  v5 = *(a1 + 212);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "planarChaosAtMaxEnergy", *(a1 + 120));
  v5 = *(a1 + 212);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "planarChaosAtMaxSaturation", *(a1 + 124));
  v5 = *(a1 + 212);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "planarEnergyAtMaxChaos", *(a1 + 128));
  v5 = *(a1 + 212);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "planarEnergyAtMaxSaturation", *(a1 + 132));
  v5 = *(a1 + 212);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "planarMaxChaos", *(a1 + 136));
  v5 = *(a1 + 212);
  if ((v5 & 0x200000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "planarMaxEnergy", *(a1 + 140));
  v5 = *(a1 + 212);
  if ((v5 & 0x400000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "planarMaxSaturation", *(a1 + 144));
  v5 = *(a1 + 212);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = *(a1 + 208);
  PB::TextFormatter::format(this, "planarPassThru");
  v5 = *(a1 + 212);
  if ((v5 & 0x800000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "planarSaturationAtMaxChaos", *(a1 + 148));
  v5 = *(a1 + 212);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "planarSaturationAtMaxEnergy", *(a1 + 152));
  v5 = *(a1 + 212);
  if ((v5 & 0x20) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  v16 = *(a1 + 48);
  PB::TextFormatter::format(this, "planarTimestampAtMaxChaos");
  v5 = *(a1 + 212);
  if ((v5 & 0x40) == 0)
  {
LABEL_22:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  v17 = *(a1 + 56);
  PB::TextFormatter::format(this, "planarTimestampAtMaxEnergy");
  v5 = *(a1 + 212);
  if ((v5 & 0x80) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v18 = *(a1 + 64);
  PB::TextFormatter::format(this, "planarTimestampAtMaxSaturation");
  v5 = *(a1 + 212);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "rolloverChaosAtMaxEnergy", *(a1 + 156));
  v5 = *(a1 + 212);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "rolloverChaosAtMaxSaturation", *(a1 + 160));
  v5 = *(a1 + 212);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "rolloverEnergyAtMaxChaos", *(a1 + 164));
  v5 = *(a1 + 212);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "rolloverEnergyAtMaxSaturation", *(a1 + 168));
  v5 = *(a1 + 212);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "rolloverMaxChaos", *(a1 + 172));
  v5 = *(a1 + 212);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "rolloverMaxEnergy", *(a1 + 176));
  v5 = *(a1 + 212);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "rolloverMaxSaturation", *(a1 + 180));
  v5 = *(a1 + 212);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v19 = *(a1 + 209);
  PB::TextFormatter::format(this, "rolloverPassThru");
  v5 = *(a1 + 212);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "rolloverSaturationAtMaxChaos", *(a1 + 184));
  v5 = *(a1 + 212);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(this, "rolloverSaturationAtMaxEnergy", *(a1 + 188));
  v5 = *(a1 + 212);
  if ((v5 & 0x100) == 0)
  {
LABEL_34:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  v20 = *(a1 + 72);
  PB::TextFormatter::format(this, "rolloverTimestampAtMaxChaos");
  v5 = *(a1 + 212);
  if ((v5 & 0x200) == 0)
  {
LABEL_35:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v21 = *(a1 + 80);
  PB::TextFormatter::format(this, "rolloverTimestampAtMaxEnergy");
  v5 = *(a1 + 212);
  if ((v5 & 0x400) == 0)
  {
LABEL_36:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v22 = *(a1 + 88);
  PB::TextFormatter::format(this, "rolloverTimestampAtMaxSaturation");
  v5 = *(a1 + 212);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(this, "soundEnvelopeCount", *(a1 + 192));
  v5 = *(a1 + 212);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(this, "soundMaxMeanOverArmSession", *(a1 + 196));
  v5 = *(a1 + 212);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(this, "soundMeanCurrentWindow", *(a1 + 200));
  v5 = *(a1 + 212);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_83:
  PB::TextFormatter::format(this, "soundMeanLast15s", *(a1 + 204));
  if ((*(a1 + 212) & 0x800) != 0)
  {
LABEL_41:
    v6 = *(a1 + 96);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_42:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B539168(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_393;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 212) |= 0x800uLL;
          v23 = *(this + 1);
          v22 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
          {
            v218 = 0;
            v219 = 0;
            v27 = 0;
            v17 = v22 >= v23;
            v220 = v22 - v23;
            if (!v17)
            {
              v220 = 0;
            }

            v221 = (v24 + v23);
            v222 = v23 + 1;
            do
            {
              if (!v220)
              {
                v27 = 0;
                *(this + 24) = 1;
                goto LABEL_364;
              }

              v223 = *v221;
              *(this + 1) = v222;
              v27 |= (v223 & 0x7F) << v218;
              if ((v223 & 0x80) == 0)
              {
                if (*(this + 24))
                {
                  v27 = 0;
                }

                goto LABEL_364;
              }

              v218 += 7;
              --v220;
              ++v221;
              ++v222;
              v14 = v219++ > 8;
            }

            while (!v14);
LABEL_254:
            v27 = 0;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              *(this + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                goto LABEL_254;
              }
            }
          }

LABEL_364:
          *(a1 + 96) = v27;
          goto LABEL_329;
        case 2u:
          *(a1 + 212) |= 0x200000uLL;
          v95 = *(this + 1);
          if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 140) = *(*this + v95);
          goto LABEL_328;
        case 3u:
          *(a1 + 212) |= 0x40uLL;
          v84 = *(this + 1);
          v83 = *(this + 2);
          v85 = *this;
          if (v84 <= 0xFFFFFFFFFFFFFFF5 && v84 + 10 <= v83)
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = (v85 + v84);
            v90 = v84 + 1;
            do
            {
              *(this + 1) = v90;
              v91 = *v89++;
              v88 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                goto LABEL_361;
              }

              v86 += 7;
              ++v90;
              v14 = v87++ > 8;
            }

            while (!v14);
LABEL_246:
            v88 = 0;
            goto LABEL_361;
          }

          v212 = 0;
          v213 = 0;
          v88 = 0;
          v17 = v83 >= v84;
          v214 = v83 - v84;
          if (!v17)
          {
            v214 = 0;
          }

          v215 = (v85 + v84);
          v216 = v84 + 1;
          while (2)
          {
            if (v214)
            {
              v217 = *v215;
              *(this + 1) = v216;
              v88 |= (v217 & 0x7F) << v212;
              if (v217 < 0)
              {
                v212 += 7;
                --v214;
                ++v215;
                ++v216;
                v14 = v213++ > 8;
                if (v14)
                {
                  goto LABEL_246;
                }

                continue;
              }

              if (*(this + 24))
              {
                v88 = 0;
              }
            }

            else
            {
              v88 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_361:
          *(a1 + 56) = v88;
          goto LABEL_329;
        case 4u:
          *(a1 + 212) |= 0x10000uLL;
          v93 = *(this + 1);
          if (v93 > 0xFFFFFFFFFFFFFFFBLL || v93 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 120) = *(*this + v93);
          goto LABEL_328;
        case 5u:
          *(a1 + 212) |= 0x1000000uLL;
          v78 = *(this + 1);
          if (v78 > 0xFFFFFFFFFFFFFFFBLL || v78 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 152) = *(*this + v78);
          goto LABEL_328;
        case 6u:
          *(a1 + 212) |= 0x100000uLL;
          v99 = *(this + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 136) = *(*this + v99);
          goto LABEL_328;
        case 7u:
          *(a1 + 212) |= 0x20uLL;
          v103 = *(this + 1);
          v102 = *(this + 2);
          v104 = *this;
          if (v103 <= 0xFFFFFFFFFFFFFFF5 && v103 + 10 <= v102)
          {
            v105 = 0;
            v106 = 0;
            v107 = 0;
            v108 = (v104 + v103);
            v109 = v103 + 1;
            do
            {
              *(this + 1) = v109;
              v110 = *v108++;
              v107 |= (v110 & 0x7F) << v105;
              if ((v110 & 0x80) == 0)
              {
                goto LABEL_367;
              }

              v105 += 7;
              ++v109;
              v14 = v106++ > 8;
            }

            while (!v14);
LABEL_262:
            v107 = 0;
            goto LABEL_367;
          }

          v224 = 0;
          v225 = 0;
          v107 = 0;
          v17 = v102 >= v103;
          v226 = v102 - v103;
          if (!v17)
          {
            v226 = 0;
          }

          v227 = (v104 + v103);
          v228 = v103 + 1;
          while (2)
          {
            if (v226)
            {
              v229 = *v227;
              *(this + 1) = v228;
              v107 |= (v229 & 0x7F) << v224;
              if (v229 < 0)
              {
                v224 += 7;
                --v226;
                ++v227;
                ++v228;
                v14 = v225++ > 8;
                if (v14)
                {
                  goto LABEL_262;
                }

                continue;
              }

              if (*(this + 24))
              {
                v107 = 0;
              }
            }

            else
            {
              v107 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_367:
          *(a1 + 48) = v107;
          goto LABEL_329;
        case 8u:
          *(a1 + 212) |= 0x40000uLL;
          v94 = *(this + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 128) = *(*this + v94);
          goto LABEL_328;
        case 9u:
          *(a1 + 212) |= 0x800000uLL;
          v129 = *(this + 1);
          if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 148) = *(*this + v129);
          goto LABEL_328;
        case 0xAu:
          *(a1 + 212) |= 0x400000uLL;
          v80 = *(this + 1);
          if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 144) = *(*this + v80);
          goto LABEL_328;
        case 0xBu:
          *(a1 + 212) |= 0x80uLL;
          v121 = *(this + 1);
          v120 = *(this + 2);
          v122 = *this;
          if (v121 <= 0xFFFFFFFFFFFFFFF5 && v121 + 10 <= v120)
          {
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v126 = (v122 + v121);
            v127 = v121 + 1;
            do
            {
              *(this + 1) = v127;
              v128 = *v126++;
              v125 |= (v128 & 0x7F) << v123;
              if ((v128 & 0x80) == 0)
              {
                goto LABEL_373;
              }

              v123 += 7;
              ++v127;
              v14 = v124++ > 8;
            }

            while (!v14);
LABEL_278:
            v125 = 0;
            goto LABEL_373;
          }

          v236 = 0;
          v237 = 0;
          v125 = 0;
          v17 = v120 >= v121;
          v238 = v120 - v121;
          if (!v17)
          {
            v238 = 0;
          }

          v239 = (v122 + v121);
          v240 = v121 + 1;
          while (2)
          {
            if (v238)
            {
              v241 = *v239;
              *(this + 1) = v240;
              v125 |= (v241 & 0x7F) << v236;
              if (v241 < 0)
              {
                v236 += 7;
                --v238;
                ++v239;
                ++v240;
                v14 = v237++ > 8;
                if (v14)
                {
                  goto LABEL_278;
                }

                continue;
              }

              if (*(this + 24))
              {
                v125 = 0;
              }
            }

            else
            {
              v125 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_373:
          *(a1 + 64) = v125;
          goto LABEL_329;
        case 0xCu:
          *(a1 + 212) |= 0x20000uLL;
          v77 = *(this + 1);
          if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 124) = *(*this + v77);
          goto LABEL_328;
        case 0xDu:
          *(a1 + 212) |= 0x80000uLL;
          v79 = *(this + 1);
          if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 132) = *(*this + v79);
          goto LABEL_328;
        case 0xEu:
          *(a1 + 212) |= 0x40000000uLL;
          v101 = *(this + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 176) = *(*this + v101);
          goto LABEL_328;
        case 0xFu:
          *(a1 + 212) |= 0x200uLL;
          v68 = *(this + 1);
          v67 = *(this + 2);
          v69 = *this;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(this + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_358;
              }

              v70 += 7;
              ++v74;
              v14 = v71++ > 8;
            }

            while (!v14);
LABEL_238:
            v72 = 0;
            goto LABEL_358;
          }

          v206 = 0;
          v207 = 0;
          v72 = 0;
          v17 = v67 >= v68;
          v208 = v67 - v68;
          if (!v17)
          {
            v208 = 0;
          }

          v209 = (v69 + v68);
          v210 = v68 + 1;
          while (2)
          {
            if (v208)
            {
              v211 = *v209;
              *(this + 1) = v210;
              v72 |= (v211 & 0x7F) << v206;
              if (v211 < 0)
              {
                v206 += 7;
                --v208;
                ++v209;
                ++v210;
                v14 = v207++ > 8;
                if (v14)
                {
                  goto LABEL_238;
                }

                continue;
              }

              if (*(this + 24))
              {
                v72 = 0;
              }
            }

            else
            {
              v72 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_358:
          *(a1 + 80) = v72;
          goto LABEL_329;
        case 0x10u:
          *(a1 + 212) |= 0x2000000uLL;
          v92 = *(this + 1);
          if (v92 > 0xFFFFFFFFFFFFFFFBLL || v92 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 156) = *(*this + v92);
          goto LABEL_328;
        case 0x11u:
          *(a1 + 212) |= 0x200000000uLL;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 188) = *(*this + v66);
          goto LABEL_328;
        case 0x12u:
          *(a1 + 212) |= 0x20000000uLL;
          v97 = *(this + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 172) = *(*this + v97);
          goto LABEL_328;
        case 0x13u:
          *(a1 + 212) |= 0x100uLL;
          v112 = *(this + 1);
          v111 = *(this + 2);
          v113 = *this;
          if (v112 <= 0xFFFFFFFFFFFFFFF5 && v112 + 10 <= v111)
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = (v113 + v112);
            v118 = v112 + 1;
            do
            {
              *(this + 1) = v118;
              v119 = *v117++;
              v116 |= (v119 & 0x7F) << v114;
              if ((v119 & 0x80) == 0)
              {
                goto LABEL_370;
              }

              v114 += 7;
              ++v118;
              v14 = v115++ > 8;
            }

            while (!v14);
LABEL_270:
            v116 = 0;
            goto LABEL_370;
          }

          v230 = 0;
          v231 = 0;
          v116 = 0;
          v17 = v111 >= v112;
          v232 = v111 - v112;
          if (!v17)
          {
            v232 = 0;
          }

          v233 = (v113 + v112);
          v234 = v112 + 1;
          while (2)
          {
            if (v232)
            {
              v235 = *v233;
              *(this + 1) = v234;
              v116 |= (v235 & 0x7F) << v230;
              if (v235 < 0)
              {
                v230 += 7;
                --v232;
                ++v233;
                ++v234;
                v14 = v231++ > 8;
                if (v14)
                {
                  goto LABEL_270;
                }

                continue;
              }

              if (*(this + 24))
              {
                v116 = 0;
              }
            }

            else
            {
              v116 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_370:
          *(a1 + 72) = v116;
          goto LABEL_329;
        case 0x14u:
          *(a1 + 212) |= 0x8000000uLL;
          v150 = *(this + 1);
          if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 164) = *(*this + v150);
          goto LABEL_328;
        case 0x15u:
          *(a1 + 212) |= 0x100000000uLL;
          v98 = *(this + 1);
          if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 184) = *(*this + v98);
          goto LABEL_328;
        case 0x16u:
          *(a1 + 212) |= 0x80000000uLL;
          v100 = *(this + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 180) = *(*this + v100);
          goto LABEL_328;
        case 0x17u:
          *(a1 + 212) |= 0x400uLL;
          v133 = *(this + 1);
          v132 = *(this + 2);
          v134 = *this;
          if (v133 <= 0xFFFFFFFFFFFFFFF5 && v133 + 10 <= v132)
          {
            v135 = 0;
            v136 = 0;
            v137 = 0;
            v138 = (v134 + v133);
            v139 = v133 + 1;
            do
            {
              *(this + 1) = v139;
              v140 = *v138++;
              v137 |= (v140 & 0x7F) << v135;
              if ((v140 & 0x80) == 0)
              {
                goto LABEL_376;
              }

              v135 += 7;
              ++v139;
              v14 = v136++ > 8;
            }

            while (!v14);
LABEL_286:
            v137 = 0;
            goto LABEL_376;
          }

          v242 = 0;
          v243 = 0;
          v137 = 0;
          v17 = v132 >= v133;
          v244 = v132 - v133;
          if (!v17)
          {
            v244 = 0;
          }

          v245 = (v134 + v133);
          v246 = v133 + 1;
          while (2)
          {
            if (v244)
            {
              v247 = *v245;
              *(this + 1) = v246;
              v137 |= (v247 & 0x7F) << v242;
              if (v247 < 0)
              {
                v242 += 7;
                --v244;
                ++v245;
                ++v246;
                v14 = v243++ > 8;
                if (v14)
                {
                  goto LABEL_286;
                }

                continue;
              }

              if (*(this + 24))
              {
                v137 = 0;
              }
            }

            else
            {
              v137 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_376:
          *(a1 + 88) = v137;
          goto LABEL_329;
        case 0x18u:
          *(a1 + 212) |= 0x4000000uLL;
          v151 = *(this + 1);
          if (v151 > 0xFFFFFFFFFFFFFFFBLL || v151 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 160) = *(*this + v151);
          goto LABEL_328;
        case 0x19u:
          *(a1 + 212) |= 0x10000000uLL;
          v82 = *(this + 1);
          if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 168) = *(*this + v82);
          goto LABEL_328;
        case 0x1Au:
          *(a1 + 212) |= 0x2000uLL;
          v81 = *(this + 1);
          if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 108) = *(*this + v81);
          goto LABEL_328;
        case 0x1Bu:
          *(a1 + 212) |= 0x8000uLL;
          v180 = *(this + 1);
          v179 = *(this + 2);
          v181 = *this;
          if (v180 <= 0xFFFFFFFFFFFFFFF5 && v180 + 10 <= v179)
          {
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v185 = (v181 + v180);
            v186 = v180 + 1;
            do
            {
              *(this + 1) = v186;
              v187 = *v185++;
              v184 |= (v187 & 0x7F) << v182;
              if ((v187 & 0x80) == 0)
              {
                goto LABEL_391;
              }

              v182 += 7;
              ++v186;
              v14 = v183++ > 8;
            }

            while (!v14);
LABEL_326:
            LODWORD(v184) = 0;
            goto LABEL_391;
          }

          v272 = 0;
          v273 = 0;
          v184 = 0;
          v17 = v179 >= v180;
          v274 = v179 - v180;
          if (!v17)
          {
            v274 = 0;
          }

          v275 = (v181 + v180);
          v276 = v180 + 1;
          while (2)
          {
            if (v274)
            {
              v277 = *v275;
              *(this + 1) = v276;
              v184 |= (v277 & 0x7F) << v272;
              if (v277 < 0)
              {
                v272 += 7;
                --v274;
                ++v275;
                ++v276;
                v14 = v273++ > 8;
                if (v14)
                {
                  goto LABEL_326;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v184) = 0;
              }
            }

            else
            {
              LODWORD(v184) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_391:
          *(a1 + 116) = v184;
          goto LABEL_329;
        case 0x1Cu:
          *(a1 + 212) |= 0x4000uLL;
          v54 = *(this + 1);
          v53 = *(this + 2);
          v55 = *this;
          if (v54 <= 0xFFFFFFFFFFFFFFF5 && v54 + 10 <= v53)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = (v55 + v54);
            v60 = v54 + 1;
            do
            {
              *(this + 1) = v60;
              v61 = *v59++;
              v58 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_355;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_228:
            LODWORD(v58) = 0;
            goto LABEL_355;
          }

          v200 = 0;
          v201 = 0;
          v58 = 0;
          v17 = v53 >= v54;
          v202 = v53 - v54;
          if (!v17)
          {
            v202 = 0;
          }

          v203 = (v55 + v54);
          v204 = v54 + 1;
          while (2)
          {
            if (v202)
            {
              v205 = *v203;
              *(this + 1) = v204;
              v58 |= (v205 & 0x7F) << v200;
              if (v205 < 0)
              {
                v200 += 7;
                --v202;
                ++v203;
                ++v204;
                v14 = v201++ > 8;
                if (v14)
                {
                  goto LABEL_228;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              LODWORD(v58) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_355:
          *(a1 + 112) = v58;
          goto LABEL_329;
        case 0x1Du:
          *(a1 + 212) |= 0x10uLL;
          v153 = *(this + 1);
          v152 = *(this + 2);
          v154 = *this;
          if (v153 <= 0xFFFFFFFFFFFFFFF5 && v153 + 10 <= v152)
          {
            v155 = 0;
            v156 = 0;
            v157 = 0;
            v158 = (v154 + v153);
            v159 = v153 + 1;
            do
            {
              *(this + 1) = v159;
              v160 = *v158++;
              v157 |= (v160 & 0x7F) << v155;
              if ((v160 & 0x80) == 0)
              {
                goto LABEL_382;
              }

              v155 += 7;
              ++v159;
              v14 = v156++ > 8;
            }

            while (!v14);
LABEL_302:
            v157 = 0;
            goto LABEL_382;
          }

          v254 = 0;
          v255 = 0;
          v157 = 0;
          v17 = v152 >= v153;
          v256 = v152 - v153;
          if (!v17)
          {
            v256 = 0;
          }

          v257 = (v154 + v153);
          v258 = v153 + 1;
          while (2)
          {
            if (v256)
            {
              v259 = *v257;
              *(this + 1) = v258;
              v157 |= (v259 & 0x7F) << v254;
              if (v259 < 0)
              {
                v254 += 7;
                --v256;
                ++v257;
                ++v258;
                v14 = v255++ > 8;
                if (v14)
                {
                  goto LABEL_302;
                }

                continue;
              }

              if (*(this + 24))
              {
                v157 = 0;
              }
            }

            else
            {
              v157 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_382:
          *(a1 + 40) = v157;
          goto LABEL_329;
        case 0x1Eu:
          *(a1 + 212) |= 8uLL;
          v162 = *(this + 1);
          v161 = *(this + 2);
          v163 = *this;
          if (v162 <= 0xFFFFFFFFFFFFFFF5 && v162 + 10 <= v161)
          {
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v167 = (v163 + v162);
            v168 = v162 + 1;
            do
            {
              *(this + 1) = v168;
              v169 = *v167++;
              v166 |= (v169 & 0x7F) << v164;
              if ((v169 & 0x80) == 0)
              {
                goto LABEL_385;
              }

              v164 += 7;
              ++v168;
              v14 = v165++ > 8;
            }

            while (!v14);
LABEL_310:
            v166 = 0;
            goto LABEL_385;
          }

          v260 = 0;
          v261 = 0;
          v166 = 0;
          v17 = v161 >= v162;
          v262 = v161 - v162;
          if (!v17)
          {
            v262 = 0;
          }

          v263 = (v163 + v162);
          v264 = v162 + 1;
          while (2)
          {
            if (v262)
            {
              v265 = *v263;
              *(this + 1) = v264;
              v166 |= (v265 & 0x7F) << v260;
              if (v265 < 0)
              {
                v260 += 7;
                --v262;
                ++v263;
                ++v264;
                v14 = v261++ > 8;
                if (v14)
                {
                  goto LABEL_310;
                }

                continue;
              }

              if (*(this + 24))
              {
                v166 = 0;
              }
            }

            else
            {
              v166 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_385:
          *(a1 + 32) = v166;
          goto LABEL_329;
        case 0x1Fu:
          *(a1 + 212) |= 0x800000000uLL;
          v130 = *(this + 1);
          if (v130 > 0xFFFFFFFFFFFFFFFBLL || v130 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 196) = *(*this + v130);
          goto LABEL_328;
        case 0x20u:
          *(a1 + 212) |= 0x2000000000uLL;
          v96 = *(this + 1);
          if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 204) = *(*this + v96);
          goto LABEL_328;
        case 0x21u:
          *(a1 + 212) |= 0x1000000000uLL;
          v131 = *(this + 1);
          if (v131 > 0xFFFFFFFFFFFFFFFBLL || v131 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 200) = *(*this + v131);
          goto LABEL_328;
        case 0x22u:
          *(a1 + 212) |= 0x400000000uLL;
          v76 = *(this + 1);
          if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
          {
LABEL_172:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 192) = *(*this + v76);
LABEL_328:
            *(this + 1) += 4;
          }

          goto LABEL_329;
        case 0x23u:
          *(a1 + 212) |= 0x4000000000uLL;
          v62 = *(this + 1);
          if (v62 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v63 = v62 + 1;
            v64 = *(*this + v62);
            *(this + 1) = v63;
            v65 = v64 != 0;
          }

          *(a1 + 208) = v65;
          goto LABEL_329;
        case 0x24u:
          *(a1 + 212) |= 0x8000000000uLL;
          v40 = *(this + 1);
          if (v40 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v41 = v40 + 1;
            v42 = *(*this + v40);
            *(this + 1) = v41;
            v43 = v42 != 0;
          }

          *(a1 + 209) = v43;
          goto LABEL_329;
        case 0x25u:
          *(a1 + 212) |= 0x1000uLL;
          v45 = *(this + 1);
          v44 = *(this + 2);
          v46 = *this;
          if (v45 <= 0xFFFFFFFFFFFFFFF5 && v45 + 10 <= v44)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            do
            {
              *(this + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_352;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
            }

            while (!v14);
LABEL_220:
            LODWORD(v49) = 0;
            goto LABEL_352;
          }

          v194 = 0;
          v195 = 0;
          v49 = 0;
          v17 = v44 >= v45;
          v196 = v44 - v45;
          if (!v17)
          {
            v196 = 0;
          }

          v197 = (v46 + v45);
          v198 = v45 + 1;
          while (2)
          {
            if (v196)
            {
              v199 = *v197;
              *(this + 1) = v198;
              v49 |= (v199 & 0x7F) << v194;
              if (v199 < 0)
              {
                v194 += 7;
                --v196;
                ++v197;
                ++v198;
                v14 = v195++ > 8;
                if (v14)
                {
                  goto LABEL_220;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v49) = 0;
              }
            }

            else
            {
              LODWORD(v49) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_352:
          *(a1 + 104) = v49;
          goto LABEL_329;
        case 0x26u:
          *(a1 + 212) |= 4uLL;
          v32 = *(this + 1);
          v31 = *(this + 2);
          v33 = *this;
          if (v32 <= 0xFFFFFFFFFFFFFFF5 && v32 + 10 <= v31)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            do
            {
              *(this + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                goto LABEL_349;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
            }

            while (!v14);
LABEL_210:
            v36 = 0;
            goto LABEL_349;
          }

          v188 = 0;
          v189 = 0;
          v36 = 0;
          v17 = v31 >= v32;
          v190 = v31 - v32;
          if (!v17)
          {
            v190 = 0;
          }

          v191 = (v33 + v32);
          v192 = v32 + 1;
          while (2)
          {
            if (v190)
            {
              v193 = *v191;
              *(this + 1) = v192;
              v36 |= (v193 & 0x7F) << v188;
              if (v193 < 0)
              {
                v188 += 7;
                --v190;
                ++v191;
                ++v192;
                v14 = v189++ > 8;
                if (v14)
                {
                  goto LABEL_210;
                }

                continue;
              }

              if (*(this + 24))
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_349:
          *(a1 + 24) = v36;
          goto LABEL_329;
        case 0x27u:
          *(a1 + 212) |= 2uLL;
          v171 = *(this + 1);
          v170 = *(this + 2);
          v172 = *this;
          if (v171 <= 0xFFFFFFFFFFFFFFF5 && v171 + 10 <= v170)
          {
            v173 = 0;
            v174 = 0;
            v175 = 0;
            v176 = (v172 + v171);
            v177 = v171 + 1;
            do
            {
              *(this + 1) = v177;
              v178 = *v176++;
              v175 |= (v178 & 0x7F) << v173;
              if ((v178 & 0x80) == 0)
              {
                goto LABEL_388;
              }

              v173 += 7;
              ++v177;
              v14 = v174++ > 8;
            }

            while (!v14);
LABEL_318:
            v175 = 0;
            goto LABEL_388;
          }

          v266 = 0;
          v267 = 0;
          v175 = 0;
          v17 = v170 >= v171;
          v268 = v170 - v171;
          if (!v17)
          {
            v268 = 0;
          }

          v269 = (v172 + v171);
          v270 = v171 + 1;
          while (2)
          {
            if (v268)
            {
              v271 = *v269;
              *(this + 1) = v270;
              v175 |= (v271 & 0x7F) << v266;
              if (v271 < 0)
              {
                v266 += 7;
                --v268;
                ++v269;
                ++v270;
                v14 = v267++ > 8;
                if (v14)
                {
                  goto LABEL_318;
                }

                continue;
              }

              if (*(this + 24))
              {
                v175 = 0;
              }
            }

            else
            {
              v175 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_388:
          *(a1 + 16) = v175;
          goto LABEL_329;
        case 0x28u:
          *(a1 + 212) |= 1uLL;
          v142 = *(this + 1);
          v141 = *(this + 2);
          v143 = *this;
          if (v142 <= 0xFFFFFFFFFFFFFFF5 && v142 + 10 <= v141)
          {
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = (v143 + v142);
            v148 = v142 + 1;
            do
            {
              *(this + 1) = v148;
              v149 = *v147++;
              v146 |= (v149 & 0x7F) << v144;
              if ((v149 & 0x80) == 0)
              {
                goto LABEL_379;
              }

              v144 += 7;
              ++v148;
              v14 = v145++ > 8;
            }

            while (!v14);
LABEL_294:
            v146 = 0;
            goto LABEL_379;
          }

          v248 = 0;
          v249 = 0;
          v146 = 0;
          v17 = v141 >= v142;
          v250 = v141 - v142;
          if (!v17)
          {
            v250 = 0;
          }

          v251 = (v143 + v142);
          v252 = v142 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_329;
          }

          v279 = 0;
          return v279 & 1;
      }

      while (1)
      {
        if (!v250)
        {
          v146 = 0;
          *(this + 24) = 1;
          goto LABEL_379;
        }

        v253 = *v251;
        *(this + 1) = v252;
        v146 |= (v253 & 0x7F) << v248;
        if ((v253 & 0x80) == 0)
        {
          break;
        }

        v248 += 7;
        --v250;
        ++v251;
        ++v252;
        v14 = v249++ > 8;
        if (v14)
        {
          goto LABEL_294;
        }
      }

      if (*(this + 24))
      {
        v146 = 0;
      }

LABEL_379:
      *(a1 + 8) = v146;
LABEL_329:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_393:
  v279 = v4 ^ 1;
  return v279 & 1;
}

uint64_t sub_19B53A6EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 212);
  if ((v4 & 0x800) != 0)
  {
    v5 = *(result + 96);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 212);
    if ((v4 & 0x200000) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 212);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 212);
  if ((v4 & 0x100000) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 212);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v7 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x40000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 212);
  if ((v4 & 0x800000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 212);
  if ((v4 & 0x400000) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 212);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  v8 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x20000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 212);
  if ((v4 & 0x80000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 212);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 212);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  v9 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 212);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 188));
  v4 = *(v3 + 212);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 172));
  v4 = *(v3 + 212);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  v10 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 164));
  v4 = *(v3 + 212);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 212);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 180));
  v4 = *(v3 + 212);
  if ((v4 & 0x400) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  v11 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 212);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 212);
  if ((v4 & 0x2000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 212);
  if ((v4 & 0x8000) == 0)
  {
LABEL_28:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  v12 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x4000) == 0)
  {
LABEL_29:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  v13 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x10) == 0)
  {
LABEL_30:
    if ((v4 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  v14 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 8) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  v15 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 196));
  v4 = *(v3 + 212);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = PB::Writer::write(this, *(v3 + 204));
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 200));
  v4 = *(v3 + 212);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 212);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  v16 = *(v3 + 208);
  result = PB::Writer::write(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  v17 = *(v3 + 209);
  result = PB::Writer::write(this);
  v4 = *(v3 + 212);
  if ((v4 & 0x1000) == 0)
  {
LABEL_38:
    if ((v4 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  v18 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 4) == 0)
  {
LABEL_39:
    if ((v4 & 2) == 0)
    {
      goto LABEL_40;
    }

LABEL_80:
    v20 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 212) & 1) == 0)
    {
      return result;
    }

    goto LABEL_81;
  }

LABEL_79:
  v19 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 212);
  if ((v4 & 2) != 0)
  {
    goto LABEL_80;
  }

LABEL_40:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_81:
  v21 = *(v3 + 8);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B53AB84(uint64_t result)
{
  *result = &unk_1F0E2FE38;
  *(result + 20) = 0;
  return result;
}

void sub_19B53ABAC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53ABE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "azimuthDeg", *(a1 + 8));
    v5 = *(a1 + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "elevationDeg", *(a1 + 12));
  if ((*(a1 + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "l1Cn0", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53AC88(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_42;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_42;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 20) |= 4u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
        {
LABEL_33:
          *(this + 24) = 1;
          goto LABEL_38;
        }

        *(a1 + 16) = *(*this + v2);
        goto LABEL_37;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 12) = *(*this + v2);
LABEL_37:
        v2 = *(this + 1) + 4;
        *(this + 1) = v2;
        goto LABEL_38;
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_38:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_42;
      }
    }

    *(a1 + 20) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
      goto LABEL_33;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_37;
  }

LABEL_42:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B53AEC8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 20) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 20) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 12));
  v4 = *(v3 + 20);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B53AF54(uint64_t result)
{
  *result = &unk_1F0E2F540;
  *(result + 20) = 0;
  return result;
}

void sub_19B53AF7C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53AFB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "sessionType");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53B030(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              LODWORD(v26) = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_48:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 16) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B53B2FC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B53B368(void *result)
{
  *result = &unk_1F0E2EBA0;
  result[1] = 0;
  return result;
}

void sub_19B53B38C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53B3C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53B424(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B53B698(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B53B6B8(void *result)
{
  *result = &unk_1F0E2C910;
  result[2] = 0;
  return result;
}

void sub_19B53B6E0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53B718(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
    v5 = *(a1 + 20);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53B794(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_73;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v31 = *(this + 1);
        v2 = *(this + 2);
        v32 = *this;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v48 = v3 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_68;
            }

            v51 = v50;
            v52 = *v49;
            *(this + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_67;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_67:
          v3 = v51;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v3 = v37;
            *(this + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_68:
        *(a1 + 16) = v35;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v41 = v3 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_64;
            }

            v44 = v43;
            v45 = *v42;
            *(this + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_63;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_63:
          v3 = v44;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              v27 = 0;
              break;
            }
          }
        }

LABEL_64:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v53 = 0;
          return v53 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B53BB14(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B53BB80(uint64_t result)
{
  *result = &unk_1F0E2F038;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B53BBA4(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2F038;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B53BC24(PB::Base *a1)
{
  sub_19B53BBA4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53BC5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "motionState");
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53BCF4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_50;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        operator new();
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v23 = *(this + 1);
        v22 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v33 = v22 - v23;
          if (!v17)
          {
            v33 = 0;
          }

          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v36 = *v34;
            *(this + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_41:
              v27 = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v27;
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B53C030(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 24))
  {
    v4 = *(result + 16);
    result = PB::Writer::writeVarInt(this);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

void sub_19B53C09C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53C0D4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53C134(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B53C3A8(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B53C3C8(uint64_t result)
{
  *result = &unk_1F0E2CF30;
  *(result + 44) = 0;
  return result;
}

void sub_19B53C3F0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53C428(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "magnitudeRangeInertialVertical", *(a1 + 16));
    v5 = *(a1 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "maxAngleBetweenThighAndShinDeg", *(a1 + 20));
  v5 = *(a1 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "minAngleBetweenThighAndShinDeg", *(a1 + 24));
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "motionPlanarity", *(a1 + 28));
  v5 = *(a1 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "timeToReachMaxThighAndShinAngleThreshold", *(a1 + 32));
  v5 = *(a1 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    if ((*(a1 + 44) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timeToReachMinThighAndShinAngleThreshold", *(a1 + 36));
  v5 = *(a1 + 44);
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(this, "vm", *(a1 + 40));
LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53C56C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_66;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            *(a1 + 44) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_62;
            }

            *(a1 + 36) = *(*this + v2);
LABEL_60:
            v2 = *(this + 1) + 4;
LABEL_61:
            *(this + 1) = v2;
            goto LABEL_62;
          }

          if (v22 == 8)
          {
            *(a1 + 44) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_60;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 44) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_60;
          }

          if (v22 == 6)
          {
            *(a1 + 44) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_60;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 44) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_60;
        }

        if (v22 == 4)
        {
          *(a1 + 44) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_60;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 44) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_61;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_60;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_62:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_66:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B53C90C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 44) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = PB::Writer::write(this, *(v3 + 36));
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 44);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_17:
  v5 = *(v3 + 32);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B53CA24(uint64_t result)
{
  *result = &unk_1F0E2B8E0;
  *(result + 28) = 0;
  return result;
}

void sub_19B53CA4C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53CA84(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "maxPosterior", *(a1 + 16));
    v5 = *(a1 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "meanPosterior", *(a1 + 20));
  v5 = *(a1 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "minPosterior", *(a1 + 24));
  if (*(a1 + 28))
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53CB48(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_48;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_44;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
LABEL_43:
          *(this + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_44:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B53CDD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 28) & 4) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 20);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B53CE80(uint64_t result)
{
  *result = &unk_1F0E2B8A8;
  *(result + 28) = 0;
  return result;
}

void sub_19B53CEA8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53CEE0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "maxPosterior", *(a1 + 16));
    v5 = *(a1 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "meanPosterior", *(a1 + 20));
  v5 = *(a1 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "minPosterior", *(a1 + 24));
  if (*(a1 + 28))
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53CFA4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_48;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_44;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
LABEL_43:
          *(this + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_44:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B53D234(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 28) & 4) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 20);

  return PB::Writer::write(this, v5);
}

void *sub_19B53D2DC(void *result)
{
  *result = &unk_1F0E2C8D8;
  result[2] = 0;
  return result;
}

void sub_19B53D304(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53D33C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 20);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "transitionType");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53D3B8(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              LODWORD(v26) = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_48:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 16) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B53D684(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B53D6F0(uint64_t result)
{
  *result = &unk_1F0E308F0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_19B53D71C(void **a1)
{
  *a1 = &unk_1F0E308F0;
  v2 = a1 + 2;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B53D778(void **a1)
{
  *a1 = &unk_1F0E308F0;
  v3 = a1 + 2;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B53D7E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 48))
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53D8C0(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_40;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_19B53DB2C();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B53DC9C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(this, v8);
  }

  return result;
}

uint64_t sub_19B53DD34(uint64_t result)
{
  *result = &unk_1F0E2F508;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 36) = 0;
  *(result + 44) = 0;
  return result;
}

void sub_19B53DD60(PB::Base *this)
{
  *this = &unk_1F0E2F508;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B53DDC4(PB::Base *a1)
{
  sub_19B53DD60(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53DDFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_1F0E2F508;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 36) = 0;
  *(a1 + 44) = 0;
  if ((*(a2 + 44) & 2) != 0)
  {
    v5 = *(a2 + 36);
    *(a1 + 44) = 2;
    *(a1 + 36) = v5;
  }

  if (a1 != a2)
  {
    sub_19B4C4E40(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v6 = *(a2 + 44);
  if (v6)
  {
    v7 = *(a2 + 32);
    *(a1 + 44) |= 1u;
    *(a1 + 32) = v7;
    v6 = *(a2 + 44);
  }

  if ((v6 & 4) != 0)
  {
    v8 = *(a2 + 40);
    *(a1 + 44) |= 4u;
    *(a1 + 40) = v8;
  }

  return a1;
}

uint64_t sub_19B53DEC0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if (v5)
  {
    PB::TextFormatter::format(this, "confidence", *(a1 + 32));
    v5 = *(a1 + 44);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 36);
    PB::TextFormatter::format(this, "joint");
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "position", v9);
  }

  if ((*(a1 + 44) & 4) != 0)
  {
    v10 = *(a1 + 40);
    PB::TextFormatter::format(this, "visible");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53DF94(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_98;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_98;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 44) |= 2u;
        v44 = *(this + 1);
        v43 = *(this + 2);
        v45 = *this;
        if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43)
        {
          v53 = 0;
          v54 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v55 = v43 - v44;
          if (!v17)
          {
            v55 = 0;
          }

          v56 = (v45 + v44);
          v57 = v44 + 1;
          while (1)
          {
            if (!v55)
            {
              LODWORD(v48) = 0;
              *(this + 24) = 1;
              goto LABEL_84;
            }

            v58 = *v56;
            *(this + 1) = v57;
            v48 |= (v58 & 0x7F) << v53;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            --v55;
            ++v56;
            ++v57;
            v14 = v54++ > 8;
            if (v14)
            {
LABEL_68:
              LODWORD(v48) = 0;
              goto LABEL_84;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v48) = 0;
          }
        }

        else
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          while (1)
          {
            *(this + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
            if (v14)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_84:
        *(a1 + 36) = v48;
        goto LABEL_94;
      }

      if (v22 != 2)
      {
        goto LABEL_49;
      }

      if ((v10 & 7) != 2)
      {
        v60 = *(a1 + 16);
        v59 = *(a1 + 24);
        if (v60 >= v59)
        {
          v62 = *(a1 + 8);
          v63 = v60 - v62;
          v64 = (v60 - v62) >> 2;
          v65 = v64 + 1;
          if ((v64 + 1) >> 62)
          {
LABEL_101:
            sub_19B5BE690();
          }

          v66 = v59 - v62;
          if (v66 >> 1 > v65)
          {
            v65 = v66 >> 1;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v67 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            sub_19B4C4FA8(a1 + 8, v67);
          }

          v68 = (v60 - v62) >> 2;
          v69 = (4 * v64);
          v70 = (4 * v64 - 4 * v68);
          *v69 = 0;
          v61 = v69 + 1;
          memcpy(v70, v62, v63);
          v71 = *(a1 + 8);
          *(a1 + 8) = v70;
          *(a1 + 16) = v61;
          *(a1 + 24) = 0;
          if (v71)
          {
            operator delete(v71);
          }
        }

        else
        {
          *v60 = 0;
          v61 = v60 + 4;
        }

        *(a1 + 16) = v61;
        v72 = *(this + 1);
        if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(this + 2))
        {
LABEL_91:
          *(this + 24) = 1;
          goto LABEL_94;
        }

        *(v61 - 1) = *(*this + v72);
        goto LABEL_93;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_100;
      }

      v23 = *(this + 1);
      v24 = *(this + 2);
      while (v23 < v24 && (*(this + 24) & 1) == 0)
      {
        v26 = *(a1 + 16);
        v25 = *(a1 + 24);
        if (v26 >= v25)
        {
          v28 = *(a1 + 8);
          v29 = v26 - v28;
          v30 = (v26 - v28) >> 2;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            goto LABEL_101;
          }

          v32 = v25 - v28;
          if (v32 >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_19B4C4FA8(a1 + 8, v33);
          }

          v34 = (v26 - v28) >> 2;
          v35 = (4 * v30);
          v36 = (4 * v30 - 4 * v34);
          *v35 = 0;
          v27 = v35 + 1;
          memcpy(v36, v28, v29);
          v37 = *(a1 + 8);
          *(a1 + 8) = v36;
          *(a1 + 16) = v27;
          *(a1 + 24) = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v26 = 0;
          v27 = v26 + 4;
        }

        *(a1 + 16) = v27;
        v38 = *(this + 1);
        if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v27 - 1) = *(*this + v38);
        v24 = *(this + 2);
        v23 = *(this + 1) + 4;
        *(this + 1) = v23;
      }

      PB::Reader::recallMark();
LABEL_94:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_98;
      }
    }

    if (v22 == 3)
    {
      *(a1 + 44) |= 1u;
      v52 = *(this + 1);
      if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(this + 2))
      {
        goto LABEL_91;
      }

      *(a1 + 32) = *(*this + v52);
LABEL_93:
      *(this + 1) += 4;
      goto LABEL_94;
    }

    if (v22 == 4)
    {
      *(a1 + 44) |= 4u;
      v39 = *(this + 1);
      if (v39 >= *(this + 2))
      {
        v42 = 0;
        *(this + 24) = 1;
      }

      else
      {
        v40 = v39 + 1;
        v41 = *(*this + v39);
        *(this + 1) = v40;
        v42 = v41 != 0;
      }

      *(a1 + 40) = v42;
      goto LABEL_94;
    }

LABEL_49:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_100:
      v73 = 0;
      return v73 & 1;
    }

    goto LABEL_94;
  }

LABEL_98:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t sub_19B53E4AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 44) & 2) != 0)
  {
    v4 = *(result + 36);
    result = PB::Writer::writeVarInt(this);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 44);
  if (v8)
  {
    result = PB::Writer::write(this, *(v3 + 32));
    v8 = *(v3 + 44);
  }

  if ((v8 & 4) != 0)
  {
    v9 = *(v3 + 40);

    return PB::Writer::write(this);
  }

  return result;
}

void *sub_19B53E55C(void *result)
{
  *result = &unk_1F0E308B8;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B53E580(void **a1)
{
  *a1 = &unk_1F0E308B8;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B53E5DC(void **a1)
{
  *a1 = &unk_1F0E308B8;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B53E64C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53E6E4(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        sub_19B53E8B8();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_19B53EA30(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_19B53EA7C(uint64_t result)
{
  *result = &unk_1F0E2F000;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_19B53EAA8(void **a1)
{
  *a1 = &unk_1F0E2F000;
  v2 = a1 + 2;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B53EB04(void **a1)
{
  *a1 = &unk_1F0E2F000;
  v3 = a1 + 2;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B53EB74(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 48))
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53EC4C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_40;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_19B53EEB8();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B53F028(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(this, v8);
  }

  return result;
}

double sub_19B53F0C0(uint64_t a1)
{
  *a1 = &unk_1F0E2D828;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_19B53F0EC(PB::Base *this)
{
  *this = &unk_1F0E2D828;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B53F150(PB::Base *a1)
{
  sub_19B53F0EC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53F188(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0E2D828;
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *(a1 + 24) = 0u;
  if (*(a2 + 36))
  {
    v4 = *(a2 + 32);
    *(a1 + 36) = 1;
    *(a1 + 32) = v4;
  }

  if (a1 != a2)
  {
    sub_19B4C4E40(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t sub_19B53F210(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 36))
  {
    v5 = *(a1 + 32);
    PB::TextFormatter::format(this, "joint");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "position", v8);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53F2A4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_87;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_89;
          }

          v31 = *(this + 1);
          v32 = *(this + 2);
          while (v31 < v32 && (*(this + 24) & 1) == 0)
          {
            v34 = *(a1 + 16);
            v33 = *(a1 + 24);
            if (v34 >= v33)
            {
              v36 = *(a1 + 8);
              v37 = v34 - v36;
              v38 = (v34 - v36) >> 2;
              v39 = v38 + 1;
              if ((v38 + 1) >> 62)
              {
                goto LABEL_90;
              }

              v40 = v33 - v36;
              if (v40 >> 1 > v39)
              {
                v39 = v40 >> 1;
              }

              if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v41 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v41 = v39;
              }

              if (v41)
              {
                sub_19B4C4FA8(a1 + 8, v41);
              }

              v42 = (v34 - v36) >> 2;
              v43 = (4 * v38);
              v44 = (4 * v38 - 4 * v42);
              *v43 = 0;
              v35 = v43 + 1;
              memcpy(v44, v36, v37);
              v45 = *(a1 + 8);
              *(a1 + 8) = v44;
              *(a1 + 16) = v35;
              *(a1 + 24) = 0;
              if (v45)
              {
                operator delete(v45);
              }
            }

            else
            {
              *v34 = 0;
              v35 = v34 + 4;
            }

            *(a1 + 16) = v35;
            v46 = *(this + 1);
            if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
            {
              *(this + 24) = 1;
              break;
            }

            *(v35 - 1) = *(*this + v46);
            v32 = *(this + 2);
            v31 = *(this + 1) + 4;
            *(this + 1) = v31;
          }

          PB::Reader::recallMark();
        }

        else
        {
          v54 = *(a1 + 16);
          v53 = *(a1 + 24);
          if (v54 >= v53)
          {
            v56 = *(a1 + 8);
            v57 = v54 - v56;
            v58 = (v54 - v56) >> 2;
            v59 = v58 + 1;
            if ((v58 + 1) >> 62)
            {
LABEL_90:
              sub_19B5BE690();
            }

            v60 = v53 - v56;
            if (v60 >> 1 > v59)
            {
              v59 = v60 >> 1;
            }

            if (v60 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v61 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v59;
            }

            if (v61)
            {
              sub_19B4C4FA8(a1 + 8, v61);
            }

            v62 = (v54 - v56) >> 2;
            v63 = (4 * v58);
            v64 = (4 * v58 - 4 * v62);
            *v63 = 0;
            v55 = v63 + 1;
            memcpy(v64, v56, v57);
            v65 = *(a1 + 8);
            *(a1 + 8) = v64;
            *(a1 + 16) = v55;
            *(a1 + 24) = 0;
            if (v65)
            {
              operator delete(v65);
            }
          }

          else
          {
            *v54 = 0;
            v55 = v54 + 4;
          }

          *(a1 + 16) = v55;
          v66 = *(this + 1);
          if (v66 <= 0xFFFFFFFFFFFFFFFBLL && v66 + 4 <= *(this + 2))
          {
            *(v55 - 1) = *(*this + v66);
            *(this + 1) += 4;
          }

          else
          {
            *(this + 24) = 1;
          }
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 36) |= 1u;
        v23 = *(this + 1);
        v22 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v47 = 0;
          v48 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v49 = v22 - v23;
          if (!v17)
          {
            v49 = 0;
          }

          v50 = (v24 + v23);
          v51 = v23 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_74;
            }

            v52 = *v50;
            *(this + 1) = v51;
            v27 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_60:
              LODWORD(v27) = 0;
              goto LABEL_74;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              goto LABEL_60;
            }
          }
        }

LABEL_74:
        *(a1 + 32) = v27;
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_89:
        v67 = 0;
        return v67 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_87:
  v67 = v4 ^ 1;
  return v67 & 1;
}

uint64_t sub_19B53F728(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 36))
  {
    v4 = *(result + 32);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    result = PB::Writer::write(this, v7);
  }

  return result;
}

uint64_t sub_19B53F78C(uint64_t result)
{
  *result = &unk_1F0E2DE10;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_19B53F7B8(void **a1)
{
  *a1 = &unk_1F0E2DE10;
  v2 = a1 + 2;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B53F814(void **a1)
{
  *a1 = &unk_1F0E2DE10;
  v3 = a1 + 2;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B53F884(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 48))
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53F95C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_40;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_19B53E8B8();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B53FBC8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(this, v8);
  }

  return result;
}

double sub_19B53FC60(uint64_t a1)
{
  *a1 = &unk_1F0E2FE00;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_19B53FC94(PB::Base *this)
{
  *this = &unk_1F0E2FE00;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

void sub_19B53FD08(PB::Base *a1)
{
  sub_19B53FC94(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53FD40(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0E2FE00;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  if (*(a2 + 60))
  {
    v5 = *(a2 + 56);
    *(a1 + 60) = 1;
    *(a1 + 56) = v5;
  }

  if (a1 != a2)
  {
    sub_19B4C4E40(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_19B4C4E40((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  return a1;
}

uint64_t sub_19B53FDE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 60))
  {
    v5 = *(a1 + 56);
    PB::TextFormatter::format(this, "joint");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "position", v8);
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "quaternion", v11);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53FEAC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(this + 24) = 1;
        goto LABEL_122;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_122;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 != 2)
        {
          v66 = *(a1 + 16);
          v65 = *(a1 + 24);
          if (v66 >= v65)
          {
            v76 = *(a1 + 8);
            v77 = v66 - v76;
            v78 = (v66 - v76) >> 2;
            v79 = v78 + 1;
            if ((v78 + 1) >> 62)
            {
              goto LABEL_125;
            }

            v80 = v65 - v76;
            if (v80 >> 1 > v79)
            {
              v79 = v80 >> 1;
            }

            if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v81 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v81 = v79;
            }

            if (v81)
            {
              sub_19B4C4FA8(a1 + 8, v81);
            }

            v88 = (v66 - v76) >> 2;
            v89 = (4 * v78);
            v90 = (4 * v78 - 4 * v88);
            *v89 = 0;
            v67 = v89 + 1;
            memcpy(v90, v76, v77);
            v91 = *(a1 + 8);
            *(a1 + 8) = v90;
            *(a1 + 16) = v67;
            *(a1 + 24) = 0;
            if (v91)
            {
              operator delete(v91);
            }
          }

          else
          {
            *v66 = 0;
            v67 = v66 + 4;
          }

          *(a1 + 16) = v67;
LABEL_114:
          v96 = *(this + 1);
          if (v96 <= 0xFFFFFFFFFFFFFFFBLL && v96 + 4 <= *(this + 2))
          {
            *(v67 - 1) = *(*this + v96);
            *(this + 1) += 4;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_118;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_124;
        }

        v33 = *(this + 1);
        v34 = *(this + 2);
        while (v33 < v34 && (*(this + 24) & 1) == 0)
        {
          v36 = *(a1 + 16);
          v35 = *(a1 + 24);
          if (v36 >= v35)
          {
            v38 = *(a1 + 8);
            v39 = v36 - v38;
            v40 = (v36 - v38) >> 2;
            v41 = v40 + 1;
            if ((v40 + 1) >> 62)
            {
              goto LABEL_125;
            }

            v42 = v35 - v38;
            if (v42 >> 1 > v41)
            {
              v41 = v42 >> 1;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v43 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              sub_19B4C4FA8(a1 + 8, v43);
            }

            v44 = (v36 - v38) >> 2;
            v45 = (4 * v40);
            v46 = (4 * v40 - 4 * v44);
            *v45 = 0;
            v37 = v45 + 1;
            memcpy(v46, v38, v39);
            v47 = *(a1 + 8);
            *(a1 + 8) = v46;
            *(a1 + 16) = v37;
            *(a1 + 24) = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            *v36 = 0;
            v37 = v36 + 4;
          }

          *(a1 + 16) = v37;
          v48 = *(this + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
          {
            goto LABEL_86;
          }

          *(v37 - 1) = *(*this + v48);
          v34 = *(this + 2);
          v33 = *(this + 1) + 4;
          *(this + 1) = v33;
        }

LABEL_87:
        PB::Reader::recallMark();
        goto LABEL_118;
      }

      if (v23 == 1)
      {
        *(a1 + 60) |= 1u;
        v25 = *(this + 1);
        v24 = *(this + 2);
        v26 = *this;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v68 = 0;
          v69 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v70 = v24 - v25;
          if (!v17)
          {
            v70 = 0;
          }

          v71 = (v26 + v25);
          v72 = v25 + 1;
          while (1)
          {
            if (!v70)
            {
              LODWORD(v29) = 0;
              *(this + 24) = 1;
              goto LABEL_107;
            }

            v73 = *v71;
            *(this + 1) = v72;
            v29 |= (v73 & 0x7F) << v68;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            --v70;
            ++v71;
            ++v72;
            v14 = v69++ > 8;
            if (v14)
            {
LABEL_83:
              LODWORD(v29) = 0;
              goto LABEL_107;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v29) = 0;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (v26 + v25);
          v31 = v25 + 1;
          while (1)
          {
            *(this + 1) = v31;
            v32 = *v30++;
            v29 |= (v32 & 0x7F) << v27;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            ++v31;
            v14 = v28++ > 8;
            if (v14)
            {
              goto LABEL_83;
            }
          }
        }

LABEL_107:
        *(a1 + 56) = v29;
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_124:
        v97 = 0;
        return v97 & 1;
      }

LABEL_118:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_122;
      }
    }

    if (v22 != 2)
    {
      v75 = *(a1 + 40);
      v74 = *(a1 + 48);
      if (v75 >= v74)
      {
        v82 = *(a1 + 32);
        v83 = v75 - v82;
        v84 = (v75 - v82) >> 2;
        v85 = v84 + 1;
        if ((v84 + 1) >> 62)
        {
LABEL_125:
          sub_19B5BE690();
        }

        v86 = v74 - v82;
        if (v86 >> 1 > v85)
        {
          v85 = v86 >> 1;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v87 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          sub_19B4C4FA8(a1 + 32, v87);
        }

        v92 = (v75 - v82) >> 2;
        v93 = (4 * v84);
        v94 = (4 * v84 - 4 * v92);
        *v93 = 0;
        v67 = v93 + 1;
        memcpy(v94, v82, v83);
        v95 = *(a1 + 32);
        *(a1 + 32) = v94;
        *(a1 + 40) = v67;
        *(a1 + 48) = 0;
        if (v95)
        {
          operator delete(v95);
        }
      }

      else
      {
        *v75 = 0;
        v67 = v75 + 4;
      }

      *(a1 + 40) = v67;
      goto LABEL_114;
    }

    if (PB::Reader::placeMark())
    {
      goto LABEL_124;
    }

    v49 = *(this + 1);
    v50 = *(this + 2);
    while (v49 < v50 && (*(this + 24) & 1) == 0)
    {
      v52 = *(a1 + 40);
      v51 = *(a1 + 48);
      if (v52 >= v51)
      {
        v54 = *(a1 + 32);
        v55 = v52 - v54;
        v56 = (v52 - v54) >> 2;
        v57 = v56 + 1;
        if ((v56 + 1) >> 62)
        {
          goto LABEL_125;
        }

        v58 = v51 - v54;
        if (v58 >> 1 > v57)
        {
          v57 = v58 >> 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          sub_19B4C4FA8(a1 + 32, v59);
        }

        v60 = (v52 - v54) >> 2;
        v61 = (4 * v56);
        v62 = (4 * v56 - 4 * v60);
        *v61 = 0;
        v53 = v61 + 1;
        memcpy(v62, v54, v55);
        v63 = *(a1 + 32);
        *(a1 + 32) = v62;
        *(a1 + 40) = v53;
        *(a1 + 48) = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        *v52 = 0;
        v53 = v52 + 4;
      }

      *(a1 + 40) = v53;
      v64 = *(this + 1);
      if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
      {
LABEL_86:
        *(this + 24) = 1;
        goto LABEL_87;
      }

      *(v53 - 1) = *(*this + v64);
      v50 = *(this + 2);
      v49 = *(this + 1) + 4;
      *(this + 1) = v49;
    }

    goto LABEL_87;
  }

LABEL_122:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t sub_19B5404E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 60))
  {
    v4 = *(result + 56);
    result = PB::Writer::writeVarInt(this);
  }

  v5 = v3[1];
  v6 = v3[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v9 = v3[4];
  v8 = v3[5];
  while (v9 != v8)
  {
    v10 = *v9++;
    result = PB::Writer::write(this, v10);
  }

  return result;
}

uint64_t sub_19B540564(uint64_t result)
{
  *result = &unk_1F0E2E708;
  *(result + 20) = 0;
  return result;
}

void sub_19B54058C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5405C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "rms", *(a1 + 16));
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B540640(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              v26 = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            v26 = 0;
          }

LABEL_48:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 8) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v2);
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B54090C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 20);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B540978(void *result)
{
  *result = &unk_1F0E30308;
  result[2] = 0;
  return result;
}

void sub_19B5409A0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5409D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "event");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B540A54(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 2u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              LODWORD(v26) = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_48:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 16) = v26;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B540D20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 16);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 20);
  }

  if (v4)
  {
    v6 = *(v3 + 8);

    return PB::Writer::write(this, v6);
  }

  return result;
}

uint64_t sub_19B540D8C(uint64_t result)
{
  *result = &unk_1F0E2F4D0;
  *(result + 60) = 0;
  return result;
}

void sub_19B540DB4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B540DEC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 0x40) != 0)
  {
    v7 = *(a1 + 52);
    PB::TextFormatter::format(this, "isBlockoutPeriodLow");
    v5 = *(a1 + 60);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 53);
  PB::TextFormatter::format(this, "isBlockoutPeriodVeryLow");
  v5 = *(a1 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a1 + 54);
  PB::TextFormatter::format(this, "isSampleRecent");
  v5 = *(a1 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "percentLow", *(a1 + 8));
  v5 = *(a1 + 60);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "percentOK", *(a1 + 16));
  v5 = *(a1 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "percentVeryLow", *(a1 + 24));
  v5 = *(a1 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  v5 = *(a1 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "totalValidDuration", *(a1 + 40));
  v5 = *(a1 + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a1 + 55);
  PB::TextFormatter::format(this, "userHasOnboarded");
  v5 = *(a1 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "value");
  if ((*(a1 + 60) & 0x400) != 0)
  {
LABEL_12:
    v6 = *(a1 + 56);
    PB::TextFormatter::format(this, "writtenToHealthKit");
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B540F90(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_99;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 60) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_67:
              *(this + 24) = 1;
              goto LABEL_95;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_89;
          }

          if (v22 == 2)
          {
            *(a1 + 60) |= 0x20u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v41 = 0;
              v42 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v43 = v2 - v25;
              v44 = (v26 + v25);
              v45 = v25 + 1;
              while (1)
              {
                if (!v43)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_94;
                }

                v46 = v45;
                v47 = *v44;
                *(this + 1) = v46;
                v29 |= (v47 & 0x7F) << v41;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                --v43;
                ++v44;
                v45 = v46 + 1;
                v14 = v42++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_93;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_93:
              v2 = v46;
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              while (1)
              {
                v2 = v31;
                *(this + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                ++v31;
                v14 = v28++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  break;
                }
              }
            }

LABEL_94:
            *(a1 + 48) = v29;
            goto LABEL_95;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 60) |= 0x200u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v38 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v37 = *(*this + v2++);
                *(this + 1) = v2;
                v38 = v37 != 0;
              }

              *(a1 + 55) = v38;
              goto LABEL_95;
            case 4:
              *(a1 + 60) |= 0x400u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v34 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v33 = *(*this + v2++);
                *(this + 1) = v2;
                v34 = v33 != 0;
              }

              *(a1 + 56) = v34;
              goto LABEL_95;
            case 5:
              *(a1 + 60) |= 0x40u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v24 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v23 = *(*this + v2++);
                *(this + 1) = v2;
                v24 = v23 != 0;
              }

              *(a1 + 52) = v24;
              goto LABEL_95;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 60) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_89;
          case 0xA:
            *(a1 + 60) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_89;
          case 0xB:
            *(a1 + 60) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_89;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 60) |= 0x80u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v40 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v39 = *(*this + v2++);
              *(this + 1) = v2;
              v40 = v39 != 0;
            }

            *(a1 + 53) = v40;
            goto LABEL_95;
          case 7:
            *(a1 + 60) |= 0x100u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v36 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v35 = *(*this + v2++);
              *(this + 1) = v2;
              v36 = v35 != 0;
            }

            *(a1 + 54) = v36;
            goto LABEL_95;
          case 8:
            *(a1 + 60) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_89:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_95;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v48 = 0;
        return v48 & 1;
      }

      v2 = *(this + 1);
LABEL_95:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_99:
  v48 = v4 ^ 1;
  return v48 & 1;
}

uint64_t sub_19B5414F0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 60);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = *(v3 + 55);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(v3 + 56);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(v3 + 52);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(v3 + 53);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(v3 + 54);
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 60) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 60);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_23:
  v11 = *(v3 + 40);

  return PB::Writer::write(this, v11);
}

uint64_t sub_19B54165C(uint64_t result)
{
  *result = &unk_1F0E2C0F8;
  *(result + 40) = 0;
  return result;
}

void sub_19B541684(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5416BC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "intermediateBoutsAsymmetryPercentageCv", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "intermediateBoutsAsymmetryPercentageMedian", *(a1 + 16));
  v5 = *(a1 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "intermediateBoutsDoubleSupportPercentageMedian", *(a1 + 24));
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "intermediateBoutsDoubleSupportPercentageStd", *(a1 + 32));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B541780(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_47;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_43;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 40) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_43:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_47:
  v23 = v4 ^ 1;
  return v23 & 1;
}