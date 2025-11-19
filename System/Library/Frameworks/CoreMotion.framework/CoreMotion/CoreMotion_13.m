uint64_t sub_19B4B1DB0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 16);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 24));
      if ((*(v3 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v3 + 28);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4B1E58(uint64_t result)
{
  *result = &unk_1F0E38910;
  *(result + 40) = 0;
  return result;
}

void sub_19B4B1E80(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4B1EB8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "distanceToNearestRoad", *(a1 + 32));
    v5 = *(a1 + 40);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v9 = *(a1 + 36);
  PB::TextFormatter::format(this, "roadClass");
  if ((*(a1 + 40) & 4) != 0)
  {
LABEL_6:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4B1F9C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_118;
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
      if ((v10 >> 3) <= 103)
      {
        if (v22 == 101)
        {
          *(a1 + 40) |= 4u;
          v47 = *(this + 1);
          v2 = *(this + 2);
          v48 = *this;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v69 = 0;
            v70 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(this + 1);
            }

            v71 = v2 - v47;
            v72 = (v48 + v47);
            v73 = v47 + 1;
            while (1)
            {
              if (!v71)
              {
                v51 = 0;
                *(this + 24) = 1;
                goto LABEL_109;
              }

              v74 = v73;
              v75 = *v72;
              *(this + 1) = v74;
              v51 |= (v75 & 0x7F) << v69;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              --v71;
              ++v72;
              v73 = v74 + 1;
              v14 = v70++ > 8;
              if (v14)
              {
                v51 = 0;
                goto LABEL_108;
              }
            }

            if (*(this + 24))
            {
              v51 = 0;
            }

LABEL_108:
            v2 = v74;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            while (1)
            {
              v2 = v53;
              *(this + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
              if (v14)
              {
                v51 = 0;
                break;
              }
            }
          }

LABEL_109:
          *(a1 + 24) = v51;
          goto LABEL_114;
        }

        if (v22 == 103)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 32) = *(*this + v2);
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_114;
        }
      }

      else
      {
        switch(v22)
        {
          case 0x68:
            *(a1 + 40) |= 0x10u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v55 = 0;
              v56 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v57 = v2 - v31;
              v58 = (v32 + v31);
              v59 = v31 + 1;
              while (1)
              {
                if (!v57)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_101;
                }

                v60 = v59;
                v61 = *v58;
                *(this + 1) = v60;
                v35 |= (v61 & 0x7F) << v55;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                --v57;
                ++v58;
                v59 = v60 + 1;
                v14 = v56++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_100;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_100:
              v2 = v60;
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
                v2 = v37;
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

LABEL_101:
            *(a1 + 36) = v35;
            goto LABEL_114;
          case 0xC9:
            *(a1 + 40) |= 1u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v64 = v2 - v39;
              v65 = (v40 + v39);
              v66 = v39 + 1;
              while (1)
              {
                if (!v64)
                {
                  v43 = 0;
                  *(this + 24) = 1;
                  goto LABEL_105;
                }

                v67 = v66;
                v68 = *v65;
                *(this + 1) = v67;
                v43 |= (v68 & 0x7F) << v62;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                --v64;
                ++v65;
                v66 = v67 + 1;
                v14 = v63++ > 8;
                if (v14)
                {
                  v43 = 0;
                  goto LABEL_104;
                }
              }

              if (*(this + 24))
              {
                v43 = 0;
              }

LABEL_104:
              v2 = v67;
            }

            else
            {
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = (v40 + v39);
              v45 = v39 + 1;
              while (1)
              {
                v2 = v45;
                *(this + 1) = v45;
                v46 = *v44++;
                v43 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                ++v45;
                v14 = v42++ > 8;
                if (v14)
                {
                  v43 = 0;
                  break;
                }
              }
            }

LABEL_105:
            *(a1 + 8) = v43;
            goto LABEL_114;
          case 0xCA:
            *(a1 + 40) |= 2u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v76 = 0;
              v77 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v78 = v2 - v23;
              v79 = (v24 + v23);
              v80 = v23 + 1;
              while (1)
              {
                if (!v78)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_113;
                }

                v81 = v80;
                v82 = *v79;
                *(this + 1) = v81;
                v27 |= (v82 & 0x7F) << v76;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                --v78;
                ++v79;
                v80 = v81 + 1;
                v14 = v77++ > 8;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_112;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_112:
              v2 = v81;
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
                v2 = v29;
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

LABEL_113:
            *(a1 + 16) = v27;
            goto LABEL_114;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v83 = 0;
        return v83 & 1;
      }

      v2 = *(this + 1);
LABEL_114:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_118:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_19B4B2594(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 4) != 0)
  {
    v5 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 40) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_19B4B2658(void *result)
{
  *result = &unk_1F0E2CFA0;
  *(result + 380) = 0;
  *(result + 372) = 0;
  return result;
}

void sub_19B4B268C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4B26C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  v5 = (a1 + 372);
  PB::TextFormatter::beginObject(this, a3);
  v6 = *v5;
  if ((*v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "audioRolloverDvChaosThreshold", *(a1 + 16));
    v6 = *v5;
    if ((*v5 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_111;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "audioRolloverDvChaosThresholdCenter", *(a1 + 20));
  v6 = *v5;
  if ((*v5 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_112;
  }

LABEL_111:
  PB::TextFormatter::format(this, "audioRolloverDvChaosThresholdMax", *(a1 + 24));
  v6 = *v5;
  if ((*v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_113;
  }

LABEL_112:
  PB::TextFormatter::format(this, "audioRolloverDvChaosThresholdMin", *(a1 + 28));
  v6 = *v5;
  if ((*v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_114;
  }

LABEL_113:
  PB::TextFormatter::format(this, "audioRolloverDvChaosThresholdStretch", *(a1 + 32));
  v6 = *v5;
  if ((*v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_115;
  }

LABEL_114:
  PB::TextFormatter::format(this, "audioRolloverDvEnergyThreshold", *(a1 + 36));
  v6 = *v5;
  if ((*v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_116;
  }

LABEL_115:
  PB::TextFormatter::format(this, "audioRolloverDvEnergyThresholdCenter", *(a1 + 40));
  v6 = *v5;
  if ((*v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_117;
  }

LABEL_116:
  PB::TextFormatter::format(this, "audioRolloverDvEnergyThresholdMax", *(a1 + 44));
  v6 = *v5;
  if ((*v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_118;
  }

LABEL_117:
  PB::TextFormatter::format(this, "audioRolloverDvEnergyThresholdMin", *(a1 + 48));
  v6 = *v5;
  if ((*v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_119;
  }

LABEL_118:
  PB::TextFormatter::format(this, "audioRolloverDvEnergyThresholdStretch", *(a1 + 52));
  v6 = *v5;
  if ((*v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_120;
  }

LABEL_119:
  PB::TextFormatter::format(this, "audioRolloverDvMaxRmsThresholdCenter", *(a1 + 56));
  v6 = *v5;
  if ((*v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_121;
  }

LABEL_120:
  PB::TextFormatter::format(this, "audioRolloverDvMaxRmsThresholdMax", *(a1 + 60));
  v6 = *v5;
  if ((*v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_122;
  }

LABEL_121:
  PB::TextFormatter::format(this, "audioRolloverDvMaxRmsThresholdMin", *(a1 + 64));
  v6 = *v5;
  if ((*v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_123;
  }

LABEL_122:
  PB::TextFormatter::format(this, "audioRolloverDvMaxRmsThresholdStretch", *(a1 + 68));
  v6 = *v5;
  if ((*v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_124;
  }

LABEL_123:
  PB::TextFormatter::format(this, "audioRolloverDvRmsThreshold", *(a1 + 72));
  v6 = *v5;
  if ((*v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_125;
  }

LABEL_124:
  PB::TextFormatter::format(this, "baroEscalateMaxAccelNormThreshold", *(a1 + 76));
  v6 = *v5;
  if ((*v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_126;
  }

LABEL_125:
  PB::TextFormatter::format(this, "baroEscalateSpinNormThreshold", *(a1 + 80));
  v6 = *v5;
  if ((*v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_127;
  }

LABEL_126:
  PB::TextFormatter::format(this, "cumulativeRotation", *(a1 + 84));
  v6 = *v5;
  if ((*v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_128;
  }

LABEL_127:
  PB::TextFormatter::format(this, "cumulativeRotationThreshold", *(a1 + 88));
  v6 = *v5;
  if ((*v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_129;
  }

LABEL_128:
  PB::TextFormatter::format(this, "cumulativeRotationThresholdWithAudio", *(a1 + 92));
  v6 = *v5;
  if ((*v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_130;
  }

LABEL_129:
  PB::TextFormatter::format(this, "cumulativeRotationThresholdWithoutAudio", *(a1 + 96));
  v6 = *v5;
  if ((*v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_131;
  }

LABEL_130:
  PB::TextFormatter::format(this, "cumulativeRotationThresholdWithoutAudioStandaloneBaroNeeded", *(a1 + 100));
  v6 = *v5;
  if ((*v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_132;
  }

LABEL_131:
  PB::TextFormatter::format(this, "cumulativeRotationThresholdWithoutAudioStandaloneFull", *(a1 + 104));
  v6 = *v5;
  if ((*v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_133;
  }

LABEL_132:
  PB::TextFormatter::format(this, "deltaVXYOverEpoch", *(a1 + 108));
  v6 = *v5;
  if ((*v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_134;
  }

LABEL_133:
  PB::TextFormatter::format(this, "deltaVXYUnconditional", *(a1 + 112));
  v6 = *v5;
  if ((*v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_135;
  }

LABEL_134:
  PB::TextFormatter::format(this, "deltaVXYUnconditionalRolloverWithAudioThreshold", *(a1 + 116));
  v6 = *v5;
  if ((*v5 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_135:
  PB::TextFormatter::format(this, "deltaVXYUnconditionalRolloverWithoutAudioThreshold", *(a1 + 120));
  if ((*v5 & 0x10000000) != 0)
  {
LABEL_29:
    v7 = *(a1 + 124);
    PB::TextFormatter::format(this, "detectorRegime");
  }

LABEL_30:
  v8 = v5[1];
  if ((v8 & 0x800000) != 0)
  {
    v19 = *(a1 + 360);
    PB::TextFormatter::format(this, "hasAudioInEpoch");
    v8 = v5[1];
    if ((v8 & 0x1000000) == 0)
    {
LABEL_32:
      if ((v8 & 0x2000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_139;
    }
  }

  else if ((v8 & 0x1000000) == 0)
  {
    goto LABEL_32;
  }

  v20 = *(a1 + 361);
  PB::TextFormatter::format(this, "isAudioRollover");
  v8 = v5[1];
  if ((v8 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_140;
  }

LABEL_139:
  v21 = *(a1 + 362);
  PB::TextFormatter::format(this, "isAudioRolloverDv");
  v8 = v5[1];
  if ((v8 & 0x4000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_141;
  }

LABEL_140:
  v22 = *(a1 + 363);
  PB::TextFormatter::format(this, "isAudioSupported");
  v8 = v5[1];
  if ((v8 & 0x8000000) == 0)
  {
LABEL_35:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_141:
  v23 = *(a1 + 364);
  PB::TextFormatter::format(this, "isBaro");
  if ((v5[1] & 0x10000000) != 0)
  {
LABEL_36:
    v9 = *(a1 + 365);
    PB::TextFormatter::format(this, "isCompanionConnected");
  }

LABEL_37:
  v10 = *v5;
  if ((*v5 & 0x20000000) != 0)
  {
    PB::TextFormatter::format(this, "lowSenseWithAudioCumulativeRotationThreshold", *(a1 + 128));
    v10 = *v5;
    if ((*v5 & 0x40000000) == 0)
    {
LABEL_39:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_145;
    }
  }

  else if ((v10 & 0x40000000) == 0)
  {
    goto LABEL_39;
  }

  PB::TextFormatter::format(this, "lowSenseWithAudioMaxAccelNormThreshold", *(a1 + 132));
  v10 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
LABEL_40:
    if ((v10 & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_146;
  }

LABEL_145:
  PB::TextFormatter::format(this, "lowSenseWithAudioParBaroCumulativeRotationThreshold", *(a1 + 136));
  v10 = *v5;
  if ((*v5 & 0x100000000) == 0)
  {
LABEL_41:
    if ((v10 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_147;
  }

LABEL_146:
  PB::TextFormatter::format(this, "lowSenseWithAudioParBaroNormThreshold", *(a1 + 140));
  v10 = *v5;
  if ((*v5 & 0x200000000) == 0)
  {
LABEL_42:
    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_148;
  }

LABEL_147:
  PB::TextFormatter::format(this, "lowSenseWithAudioPeakPressureThreshold", *(a1 + 144));
  v10 = *v5;
  if ((*v5 & 0x400000000) == 0)
  {
LABEL_43:
    if ((v10 & 0x800000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_149;
  }

LABEL_148:
  PB::TextFormatter::format(this, "lowSenseWithAudioSlowRollCumCoherentAngleThreshold", *(a1 + 148));
  v10 = *v5;
  if ((*v5 & 0x800000000) == 0)
  {
LABEL_44:
    if ((v10 & 0x1000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_150;
  }

LABEL_149:
  PB::TextFormatter::format(this, "lowSenseWithAudioSlowRollMaxAccelNormThreshold", *(a1 + 152));
  v10 = *v5;
  if ((*v5 & 0x1000000000) == 0)
  {
LABEL_45:
    if ((v10 & 0x2000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_151;
  }

LABEL_150:
  PB::TextFormatter::format(this, "lowSenseWithAudioZgtimeThreshold", *(a1 + 156));
  v10 = *v5;
  if ((*v5 & 0x2000000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x4000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_152;
  }

LABEL_151:
  PB::TextFormatter::format(this, "lowSenseWithAudiodvThreshold1", *(a1 + 160));
  v10 = *v5;
  if ((*v5 & 0x4000000000) == 0)
  {
LABEL_47:
    if ((v10 & 0x8000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_153;
  }

LABEL_152:
  PB::TextFormatter::format(this, "lowSenseWithAudiodvThreshold2", *(a1 + 164));
  v10 = *v5;
  if ((*v5 & 0x8000000000) == 0)
  {
LABEL_48:
    if ((v10 & 0x10000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_154;
  }

LABEL_153:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioCumulativeRotationThreshold", *(a1 + 168));
  v10 = *v5;
  if ((*v5 & 0x10000000000) == 0)
  {
LABEL_49:
    if ((v10 & 0x20000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_155;
  }

LABEL_154:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioMaxAccelNormThreshold", *(a1 + 172));
  v10 = *v5;
  if ((*v5 & 0x20000000000) == 0)
  {
LABEL_50:
    if ((v10 & 0x40000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_156;
  }

LABEL_155:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioParBaroCumulativeRotationThreshold", *(a1 + 176));
  v10 = *v5;
  if ((*v5 & 0x40000000000) == 0)
  {
LABEL_51:
    if ((v10 & 0x80000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_157;
  }

LABEL_156:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioParBaroNormThreshold", *(a1 + 180));
  v10 = *v5;
  if ((*v5 & 0x80000000000) == 0)
  {
LABEL_52:
    if ((v10 & 0x100000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_158;
  }

LABEL_157:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioPeakPressureThreshold", *(a1 + 184));
  v10 = *v5;
  if ((*v5 & 0x100000000000) == 0)
  {
LABEL_53:
    if ((v10 & 0x200000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_159;
  }

LABEL_158:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioSlowRollCumCoherentAngleThreshold", *(a1 + 188));
  v10 = *v5;
  if ((*v5 & 0x200000000000) == 0)
  {
LABEL_54:
    if ((v10 & 0x400000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_160;
  }

LABEL_159:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioSlowRollMaxAccelNormThreshold", *(a1 + 192));
  v10 = *v5;
  if ((*v5 & 0x400000000000) == 0)
  {
LABEL_55:
    if ((v10 & 0x800000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_161;
  }

LABEL_160:
  PB::TextFormatter::format(this, "lowSenseWithoutAudioZgtimeThreshold", *(a1 + 196));
  v10 = *v5;
  if ((*v5 & 0x800000000000) == 0)
  {
LABEL_56:
    if ((v10 & 0x1000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_162;
  }

LABEL_161:
  PB::TextFormatter::format(this, "lowSenseWithoutAudiodvThreshold1", *(a1 + 200));
  v10 = *v5;
  if ((*v5 & 0x1000000000000) == 0)
  {
LABEL_57:
    if ((v10 & 0x2000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_163;
  }

LABEL_162:
  PB::TextFormatter::format(this, "lowSenseWithoutAudiodvThreshold2", *(a1 + 204));
  v10 = *v5;
  if ((*v5 & 0x2000000000000) == 0)
  {
LABEL_58:
    if ((v10 & 0x4000000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_164;
  }

LABEL_163:
  PB::TextFormatter::format(this, "maxAccelNorm", *(a1 + 208));
  v10 = *v5;
  if ((*v5 & 0x4000000000000) == 0)
  {
LABEL_59:
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_165;
  }

LABEL_164:
  PB::TextFormatter::format(this, "maxAccelNormThreshold", *(a1 + 212));
  v10 = *v5;
  if ((*v5 & 0x8000000000000) == 0)
  {
LABEL_60:
    if ((v10 & 0x10000000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_166;
  }

LABEL_165:
  PB::TextFormatter::format(this, "maxAccelNormThresholdWithAudio", *(a1 + 216));
  v10 = *v5;
  if ((*v5 & 0x10000000000000) == 0)
  {
LABEL_61:
    if ((v10 & 0x20000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_167;
  }

LABEL_166:
  PB::TextFormatter::format(this, "maxAccelNormThresholdWithoutAudio", *(a1 + 220));
  v10 = *v5;
  if ((*v5 & 0x20000000000000) == 0)
  {
LABEL_62:
    if ((v10 & 0x40000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_168;
  }

LABEL_167:
  PB::TextFormatter::format(this, "maxAccelNormThresholdWithoutAudioStandaloneBaroNeeded", *(a1 + 224));
  v10 = *v5;
  if ((*v5 & 0x40000000000000) == 0)
  {
LABEL_63:
    if ((v10 & 0x80000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_169;
  }

LABEL_168:
  PB::TextFormatter::format(this, "maxAccelNormThresholdWithoutAudioStandaloneFull", *(a1 + 228));
  v10 = *v5;
  if ((*v5 & 0x80000000000000) == 0)
  {
LABEL_64:
    if ((v10 & 0x100000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_170;
  }

LABEL_169:
  PB::TextFormatter::format(this, "maxAudioRolloverChaos", *(a1 + 232));
  v10 = *v5;
  if ((*v5 & 0x100000000000000) == 0)
  {
LABEL_65:
    if ((v10 & 0x200000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_171;
  }

LABEL_170:
  PB::TextFormatter::format(this, "maxAudioRolloverEnergy", *(a1 + 236));
  v10 = *v5;
  if ((*v5 & 0x200000000000000) == 0)
  {
LABEL_66:
    if ((v10 & 0x400000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_172;
  }

LABEL_171:
  PB::TextFormatter::format(this, "maxAudioRolloverRms", *(a1 + 240));
  v10 = *v5;
  if ((*v5 & 0x400000000000000) == 0)
  {
LABEL_67:
    if ((v10 & 0x800000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_173;
  }

LABEL_172:
  PB::TextFormatter::format(this, "maxPulse", *(a1 + 244));
  v10 = *v5;
  if ((*v5 & 0x800000000000000) == 0)
  {
LABEL_68:
    if ((v10 & 0x1000000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_173:
  v24 = *(a1 + 248);
  PB::TextFormatter::format(this, "numShortAudio");
  if ((*v5 & 0x1000000000000000) != 0)
  {
LABEL_69:
    PB::TextFormatter::format(this, "peakPressure", *(a1 + 252));
  }

LABEL_70:
  v11 = v5[1];
  if ((v11 & 0x20000000) != 0)
  {
    v12 = *(a1 + 366);
    PB::TextFormatter::format(this, "rolloverCrashDetectorDecision");
    v11 = v5[1];
  }

  if ((v11 & 0x40000000) != 0)
  {
    v13 = *(a1 + 367);
    PB::TextFormatter::format(this, "rolloverCrashDetectorDecisionLowSense");
  }

  v14 = *v5;
  if ((*v5 & 0x2000000000000000) == 0)
  {
    if ((v14 & 0x4000000000000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_176:
    PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold1WithAudio", *(a1 + 260));
    if ((*v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_177;
  }

  PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold1", *(a1 + 256));
  v14 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_176;
  }

LABEL_76:
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_177:
  PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold1WithoutAudio", *(a1 + 264));
LABEL_77:
  v15 = v5[1];
  if (v15)
  {
    PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold1WithoutAudioStandaloneBaroNeeded", *(a1 + 268));
    v15 = v5[1];
    if ((v15 & 2) == 0)
    {
LABEL_79:
      if ((v15 & 4) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_180;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_79;
  }

  PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold1WithoutAudioStandaloneFull", *(a1 + 272));
  v15 = v5[1];
  if ((v15 & 4) == 0)
  {
LABEL_80:
    if ((v15 & 8) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_181;
  }

LABEL_180:
  PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold2", *(a1 + 276));
  v15 = v5[1];
  if ((v15 & 8) == 0)
  {
LABEL_81:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_182;
  }

LABEL_181:
  PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold2WithAudio", *(a1 + 280));
  v15 = v5[1];
  if ((v15 & 0x10) == 0)
  {
LABEL_82:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_183;
  }

LABEL_182:
  PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold2WithoutAudio", *(a1 + 284));
  v15 = v5[1];
  if ((v15 & 0x20) == 0)
  {
LABEL_83:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_184;
  }

LABEL_183:
  PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold2WithoutAudioStandaloneBaroNeeded", *(a1 + 288));
  v15 = v5[1];
  if ((v15 & 0x40) == 0)
  {
LABEL_84:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_185;
  }

LABEL_184:
  PB::TextFormatter::format(this, "rolloverDetectorRegimeDeltaVThreshold2WithoutAudioStandaloneFull", *(a1 + 292));
  v15 = v5[1];
  if ((v15 & 0x80) == 0)
  {
LABEL_85:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_186;
  }

LABEL_185:
  PB::TextFormatter::format(this, "shortAudioMaxPulseThreshold", *(a1 + 296));
  v15 = v5[1];
  if ((v15 & 0x80000000) == 0)
  {
LABEL_86:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_187;
  }

LABEL_186:
  v25 = *(a1 + 368);
  PB::TextFormatter::format(this, "shortAudioMet");
  v15 = v5[1];
  if ((v15 & 0x100) == 0)
  {
LABEL_87:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_188;
  }

LABEL_187:
  PB::TextFormatter::format(this, "shortAudioNumThreshold", *(a1 + 300));
  v15 = v5[1];
  if ((v15 & 0x200) == 0)
  {
LABEL_88:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_189;
  }

LABEL_188:
  PB::TextFormatter::format(this, "shortAudioPeakPressureThreshold", *(a1 + 304));
  v15 = v5[1];
  if ((v15 & 0x400) == 0)
  {
LABEL_89:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_190;
  }

LABEL_189:
  PB::TextFormatter::format(this, "slowRollCumCoherentAngleThresholdWithAudio", *(a1 + 308));
  v15 = v5[1];
  if ((v15 & 0x800) == 0)
  {
LABEL_90:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_191;
  }

LABEL_190:
  PB::TextFormatter::format(this, "slowRollCumCoherentAngleThresholdWithoutAudioStandaloneBaroNeeded", *(a1 + 312));
  v15 = v5[1];
  if ((v15 & 0x1000) == 0)
  {
LABEL_91:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_192;
  }

LABEL_191:
  PB::TextFormatter::format(this, "slowRollCumCoherentAngleThresholdWithoutAudioStandaloneFull", *(a1 + 316));
  v15 = v5[1];
  if ((v15 & 0x2000) == 0)
  {
LABEL_92:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_193;
  }

LABEL_192:
  PB::TextFormatter::format(this, "slowRollMaxAccelNormThresholdWithAudio", *(a1 + 320));
  v15 = v5[1];
  if ((v15 & 0x4000) == 0)
  {
LABEL_93:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_194;
  }

LABEL_193:
  PB::TextFormatter::format(this, "slowRollMaxAccelNormThresholdWithoutAudioStandaloneBaroNeeded", *(a1 + 324));
  v15 = v5[1];
  if ((v15 & 0x8000) == 0)
  {
LABEL_94:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_195;
  }

LABEL_194:
  PB::TextFormatter::format(this, "slowRollMaxAccelNormThresholdWithoutAudioStandaloneFull", *(a1 + 328));
  v15 = v5[1];
  if ((v15 & 0x10000) == 0)
  {
LABEL_95:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_195:
  PB::TextFormatter::format(this, "slowRollZgTimeThreshold", *(a1 + 332));
  if ((v5[1] & 0x100000000) != 0)
  {
LABEL_96:
    v16 = *(a1 + 369);
    PB::TextFormatter::format(this, "strongerAudioRollover");
  }

LABEL_97:
  if (*v5)
  {
    v17 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  v18 = v5[1];
  if ((v18 & 0x20000) != 0)
  {
    PB::TextFormatter::format(this, "zgTime", *(a1 + 336));
    v18 = v5[1];
    if ((v18 & 0x40000) == 0)
    {
LABEL_101:
      if ((v18 & 0x80000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_199;
    }
  }

  else if ((v18 & 0x40000) == 0)
  {
    goto LABEL_101;
  }

  PB::TextFormatter::format(this, "zgTimeThreshold", *(a1 + 340));
  v18 = v5[1];
  if ((v18 & 0x80000) == 0)
  {
LABEL_102:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_200;
  }

LABEL_199:
  PB::TextFormatter::format(this, "zgTimeThresholdWithAudio", *(a1 + 344));
  v18 = v5[1];
  if ((v18 & 0x100000) == 0)
  {
LABEL_103:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_201;
  }

LABEL_200:
  PB::TextFormatter::format(this, "zgTimeThresholdWithoutAudio", *(a1 + 348));
  v18 = v5[1];
  if ((v18 & 0x200000) == 0)
  {
LABEL_104:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

LABEL_201:
  PB::TextFormatter::format(this, "zgTimeThresholdWithoutAudioStandaloneBaroNeeded", *(a1 + 352));
  if ((v5[1] & 0x400000) != 0)
  {
LABEL_105:
    PB::TextFormatter::format(this, "zgTimeThresholdWithoutAudioStandaloneFull", *(a1 + 356));
  }

LABEL_106:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4B3328(uint64_t a1, PB::Reader *this)
{
  v3 = this + 24;
  v2 = *(this + 24);
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 < v5 && (*(this + 24) & 1) == 0)
  {
    v8 = (a1 + 372);
    do
    {
      v9 = *this;
      if (v4 > 0xFFFFFFFFFFFFFFF5 || v4 + 10 > v5)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v19 = v5 >= v4;
        v20 = v5 - v4;
        if (!v19)
        {
          v20 = 0;
        }

        v21 = (v9 + v4);
        v22 = v4 + 1;
        while (1)
        {
          if (!v20)
          {
            v12 = 0;
            *v3 = 1;
            goto LABEL_22;
          }

          v23 = *v21;
          *(this + 1) = v22;
          v12 |= (v23 & 0x7F) << v17;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          --v20;
          ++v21;
          ++v22;
          v16 = v18++ > 8;
          if (v16)
          {
LABEL_18:
            v12 = 0;
            goto LABEL_22;
          }
        }

        if (*v3)
        {
          v12 = 0;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = (v9 + v4);
        v14 = v4 + 1;
        while (1)
        {
          *(this + 1) = v14;
          v15 = *v13++;
          v12 |= (v15 & 0x7F) << v10;
          if ((v15 & 0x80) == 0)
          {
            break;
          }

          v10 += 7;
          ++v14;
          v16 = v11++ > 8;
          if (v16)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      v2 = *v3;
      if ((*v3 & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v24 = v12 >> 3;
      if ((v12 >> 3) <= 100)
      {
        switch(v24)
        {
          case 1:
            *v8 |= 1uLL;
            v164 = *(this + 1);
            v163 = *(this + 2);
            v165 = *this;
            if (v164 > 0xFFFFFFFFFFFFFFF5 || v164 + 10 > v163)
            {
              v188 = 0;
              v189 = 0;
              v168 = 0;
              v19 = v163 >= v164;
              v190 = v163 - v164;
              if (!v19)
              {
                v190 = 0;
              }

              v191 = (v165 + v164);
              v192 = v164 + 1;
              while (1)
              {
                if (!v190)
                {
                  v168 = 0;
                  *v3 = 1;
                  goto LABEL_384;
                }

                v193 = *v191;
                *(this + 1) = v192;
                v168 |= (v193 & 0x7F) << v188;
                if ((v193 & 0x80) == 0)
                {
                  break;
                }

                v188 += 7;
                --v190;
                ++v191;
                ++v192;
                v16 = v189++ > 8;
                if (v16)
                {
LABEL_363:
                  v168 = 0;
                  goto LABEL_384;
                }
              }

              if (*v3)
              {
                v168 = 0;
              }
            }

            else
            {
              v166 = 0;
              v167 = 0;
              v168 = 0;
              v169 = (v165 + v164);
              v170 = v164 + 1;
              while (1)
              {
                *(this + 1) = v170;
                v171 = *v169++;
                v168 |= (v171 & 0x7F) << v166;
                if ((v171 & 0x80) == 0)
                {
                  break;
                }

                v166 += 7;
                ++v170;
                v16 = v167++ > 8;
                if (v16)
                {
                  goto LABEL_363;
                }
              }
            }

LABEL_384:
            *(a1 + 8) = v168;
            break;
          case 2:
            v8[1] |= 0x20000000uLL;
            v172 = *(this + 1);
            if (v172 >= *(this + 2))
            {
              v175 = 0;
              *v3 = 1;
            }

            else
            {
              v173 = v172 + 1;
              v174 = *(*this + v172);
              *(this + 1) = v173;
              v175 = v174 != 0;
            }

            *(a1 + 366) = v175;
            break;
          case 3:
            v8[1] |= 0x40000000uLL;
            v26 = *(this + 1);
            if (v26 >= *(this + 2))
            {
              v29 = 0;
              *v3 = 1;
            }

            else
            {
              v27 = v26 + 1;
              v28 = *(*this + v26);
              *(this + 1) = v27;
              v29 = v28 != 0;
            }

            *(a1 + 367) = v29;
            break;
          default:
LABEL_322:
            if (!PB::Reader::skip(this))
            {
              v195 = 0;
              return v195 & 1;
            }

            break;
        }
      }

      else
      {
        switch(v24)
        {
          case 101:
            *v8 |= 0x2000000000000uLL;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 208) = *(*this + v25);
            goto LABEL_369;
          case 102:
            *v8 |= 0x40000uLL;
            v75 = *(this + 1);
            if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 84) = *(*this + v75);
            goto LABEL_369;
          case 103:
            v8[1] |= 0x20000uLL;
            v74 = *(this + 1);
            if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 336) = *(*this + v74);
            goto LABEL_369;
          case 104:
            v8[1] |= 0x8000000uLL;
            v100 = *(this + 1);
            if (v100 >= *(this + 2))
            {
              v103 = 0;
              *v3 = 1;
            }

            else
            {
              v101 = v100 + 1;
              v102 = *(*this + v100);
              *(this + 1) = v101;
              v103 = v102 != 0;
            }

            *(a1 + 364) = v103;
            goto LABEL_370;
          case 105:
            v8[1] |= 0x1000000uLL;
            v110 = *(this + 1);
            if (v110 >= *(this + 2))
            {
              v113 = 0;
              *v3 = 1;
            }

            else
            {
              v111 = v110 + 1;
              v112 = *(*this + v110);
              *(this + 1) = v111;
              v113 = v112 != 0;
            }

            *(a1 + 361) = v113;
            goto LABEL_370;
          case 106:
            v8[1] |= 0x800000uLL;
            v80 = *(this + 1);
            if (v80 >= *(this + 2))
            {
              v83 = 0;
              *v3 = 1;
            }

            else
            {
              v81 = v80 + 1;
              v82 = *(*this + v80);
              *(this + 1) = v81;
              v83 = v82 != 0;
            }

            *(a1 + 360) = v83;
            goto LABEL_370;
          case 107:
            *v8 |= 0x10000000uLL;
            v86 = *(this + 1);
            v85 = *(this + 2);
            v87 = *this;
            if (v86 <= 0xFFFFFFFFFFFFFFF5 && v86 + 10 <= v85)
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = (v87 + v86);
              v92 = v86 + 1;
              do
              {
                *(this + 1) = v92;
                v93 = *v91++;
                v90 |= (v93 & 0x7F) << v88;
                if ((v93 & 0x80) == 0)
                {
                  goto LABEL_381;
                }

                v88 += 7;
                ++v92;
                v16 = v89++ > 8;
              }

              while (!v16);
LABEL_341:
              LODWORD(v90) = 0;
              goto LABEL_381;
            }

            v182 = 0;
            v183 = 0;
            v90 = 0;
            v19 = v85 >= v86;
            v184 = v85 - v86;
            if (!v19)
            {
              v184 = 0;
            }

            v185 = (v87 + v86);
            v186 = v86 + 1;
            while (2)
            {
              if (v184)
              {
                v187 = *v185;
                *(this + 1) = v186;
                v90 |= (v187 & 0x7F) << v182;
                if (v187 < 0)
                {
                  v182 += 7;
                  --v184;
                  ++v185;
                  ++v186;
                  v16 = v183++ > 8;
                  if (v16)
                  {
                    goto LABEL_341;
                  }

                  continue;
                }

                if (*v3)
                {
                  LODWORD(v90) = 0;
                }
              }

              else
              {
                LODWORD(v90) = 0;
                *v3 = 1;
              }

              break;
            }

LABEL_381:
            *(a1 + 124) = v90;
            goto LABEL_370;
          case 108:
            v8[1] |= 0x4000000uLL;
            v106 = *(this + 1);
            if (v106 >= *(this + 2))
            {
              v109 = 0;
              *v3 = 1;
            }

            else
            {
              v107 = v106 + 1;
              v108 = *(*this + v106);
              *(this + 1) = v107;
              v109 = v108 != 0;
            }

            *(a1 + 363) = v109;
            goto LABEL_370;
          case 109:
            *v8 |= 0x1000000uLL;
            v105 = *(this + 1);
            if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 108) = *(*this + v105);
            goto LABEL_369;
          case 110:
            *v8 |= 0x100000000000000uLL;
            v125 = *(this + 1);
            if (v125 > 0xFFFFFFFFFFFFFFFBLL || v125 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 236) = *(*this + v125);
            goto LABEL_369;
          case 111:
            *v8 |= 0x80000000000000uLL;
            v68 = *(this + 1);
            if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 232) = *(*this + v68);
            goto LABEL_369;
          case 112:
            *v8 |= 0x200000000000000uLL;
            v128 = *(this + 1);
            if (v128 > 0xFFFFFFFFFFFFFFFBLL || v128 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 240) = *(*this + v128);
            goto LABEL_369;
          case 113:
            *v8 |= 0x40uLL;
            v134 = *(this + 1);
            if (v134 > 0xFFFFFFFFFFFFFFFBLL || v134 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 36) = *(*this + v134);
            goto LABEL_369;
          case 114:
            *v8 |= 2uLL;
            v53 = *(this + 1);
            if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 16) = *(*this + v53);
            goto LABEL_369;
          case 115:
            *v8 |= 0x8000uLL;
            v114 = *(this + 1);
            if (v114 > 0xFFFFFFFFFFFFFFFBLL || v114 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 72) = *(*this + v114);
            goto LABEL_369;
          case 116:
            v8[1] |= 0x100000000uLL;
            v76 = *(this + 1);
            if (v76 >= *(this + 2))
            {
              v79 = 0;
              *v3 = 1;
            }

            else
            {
              v77 = v76 + 1;
              v78 = *(*this + v76);
              *(this + 1) = v77;
              v79 = v78 != 0;
            }

            *(a1 + 369) = v79;
            goto LABEL_370;
          case 117:
            v8[1] |= 0x2000000uLL;
            v95 = *(this + 1);
            if (v95 >= *(this + 2))
            {
              v98 = 0;
              *v3 = 1;
            }

            else
            {
              v96 = v95 + 1;
              v97 = *(*this + v95);
              *(this + 1) = v96;
              v98 = v97 != 0;
            }

            *(a1 + 362) = v98;
            goto LABEL_370;
          case 118:
            v8[1] |= 0x10000000uLL;
            v129 = *(this + 1);
            if (v129 >= *(this + 2))
            {
              v132 = 0;
              *v3 = 1;
            }

            else
            {
              v130 = v129 + 1;
              v131 = *(*this + v129);
              *(this + 1) = v130;
              v132 = v131 != 0;
            }

            *(a1 + 365) = v132;
            goto LABEL_370;
          case 119:
            *v8 |= 0x1000000000000000uLL;
            v104 = *(this + 1);
            if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 252) = *(*this + v104);
            goto LABEL_369;
          case 120:
            *v8 |= 0x400000000000000uLL;
            v139 = *(this + 1);
            if (v139 > 0xFFFFFFFFFFFFFFFBLL || v139 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 244) = *(*this + v139);
            goto LABEL_369;
          case 121:
            *v8 |= 0x800000000000000uLL;
            v59 = *(this + 1);
            v58 = *(this + 2);
            v60 = *this;
            if (v59 <= 0xFFFFFFFFFFFFFFF5 && v59 + 10 <= v58)
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
              v64 = (v60 + v59);
              v65 = v59 + 1;
              do
              {
                *(this + 1) = v65;
                v66 = *v64++;
                v63 |= (v66 & 0x7F) << v61;
                if ((v66 & 0x80) == 0)
                {
                  goto LABEL_378;
                }

                v61 += 7;
                ++v65;
                v16 = v62++ > 8;
              }

              while (!v16);
LABEL_331:
              LODWORD(v63) = 0;
              goto LABEL_378;
            }

            v176 = 0;
            v177 = 0;
            v63 = 0;
            v19 = v58 >= v59;
            v178 = v58 - v59;
            if (!v19)
            {
              v178 = 0;
            }

            v179 = (v60 + v59);
            v180 = v59 + 1;
            break;
          case 122:
            v8[1] |= 0x80000000uLL;
            v115 = *(this + 1);
            if (v115 >= *(this + 2))
            {
              v118 = 0;
              *v3 = 1;
            }

            else
            {
              v116 = v115 + 1;
              v117 = *(*this + v115);
              *(this + 1) = v116;
              v118 = v117 != 0;
            }

            *(a1 + 368) = v118;
            goto LABEL_370;
          case 123:
            *v8 |= 0x2000000uLL;
            v142 = *(this + 1);
            if (v142 > 0xFFFFFFFFFFFFFFFBLL || v142 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 112) = *(*this + v142);
            goto LABEL_369;
          case 201:
            *v8 |= 0x2000000000000000uLL;
            v124 = *(this + 1);
            if (v124 > 0xFFFFFFFFFFFFFFFBLL || v124 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 256) = *(*this + v124);
            goto LABEL_369;
          case 202:
            v8[1] |= 4uLL;
            v73 = *(this + 1);
            if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 276) = *(*this + v73);
            goto LABEL_369;
          case 203:
            *v8 |= 0x80000uLL;
            v94 = *(this + 1);
            if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 88) = *(*this + v94);
            goto LABEL_369;
          case 204:
            *v8 |= 0x4000000000000uLL;
            v140 = *(this + 1);
            if (v140 > 0xFFFFFFFFFFFFFFFBLL || v140 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 212) = *(*this + v140);
            goto LABEL_369;
          case 205:
            v8[1] |= 0x40000uLL;
            v144 = *(this + 1);
            if (v144 > 0xFFFFFFFFFFFFFFFBLL || v144 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 340) = *(*this + v144);
            goto LABEL_369;
          case 206:
            *v8 |= 0x4000000000000000uLL;
            v72 = *(this + 1);
            if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 260) = *(*this + v72);
            goto LABEL_369;
          case 207:
            v8[1] |= 8uLL;
            v99 = *(this + 1);
            if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 280) = *(*this + v99);
            goto LABEL_369;
          case 208:
            *v8 |= 0x100000uLL;
            v136 = *(this + 1);
            if (v136 > 0xFFFFFFFFFFFFFFFBLL || v136 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 92) = *(*this + v136);
            goto LABEL_369;
          case 209:
            *v8 |= 0x8000000000000uLL;
            v67 = *(this + 1);
            if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 216) = *(*this + v67);
            goto LABEL_369;
          case 210:
            v8[1] |= 0x80000uLL;
            v146 = *(this + 1);
            if (v146 > 0xFFFFFFFFFFFFFFFBLL || v146 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 344) = *(*this + v146);
            goto LABEL_369;
          case 231:
            *v8 |= 0x8000000000000000;
            v71 = *(this + 1);
            if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 264) = *(*this + v71);
            goto LABEL_369;
          case 232:
            v8[1] |= 0x10uLL;
            v148 = *(this + 1);
            if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 284) = *(*this + v148);
            goto LABEL_369;
          case 233:
            *v8 |= 0x200000uLL;
            v56 = *(this + 1);
            if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 96) = *(*this + v56);
            goto LABEL_369;
          case 234:
            *v8 |= 0x10000000000000uLL;
            v45 = *(this + 1);
            if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 220) = *(*this + v45);
            goto LABEL_369;
          case 235:
            v8[1] |= 0x100000uLL;
            v55 = *(this + 1);
            if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 348) = *(*this + v55);
            goto LABEL_369;
          case 236:
            *v8 |= 0x80uLL;
            v147 = *(this + 1);
            if (v147 > 0xFFFFFFFFFFFFFFFBLL || v147 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 40) = *(*this + v147);
            goto LABEL_369;
          case 237:
            *v8 |= 0x400uLL;
            v40 = *(this + 1);
            if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 52) = *(*this + v40);
            goto LABEL_369;
          case 238:
            *v8 |= 0x200uLL;
            v135 = *(this + 1);
            if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 48) = *(*this + v135);
            goto LABEL_369;
          case 239:
            *v8 |= 0x100uLL;
            v70 = *(this + 1);
            if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 44) = *(*this + v70);
            goto LABEL_369;
          case 240:
            *v8 |= 4uLL;
            v49 = *(this + 1);
            if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 20) = *(*this + v49);
            goto LABEL_369;
          case 241:
            *v8 |= 0x20uLL;
            v52 = *(this + 1);
            if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 32) = *(*this + v52);
            goto LABEL_369;
          case 242:
            *v8 |= 0x10uLL;
            v127 = *(this + 1);
            if (v127 > 0xFFFFFFFFFFFFFFFBLL || v127 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 28) = *(*this + v127);
            goto LABEL_369;
          case 243:
            *v8 |= 8uLL;
            v149 = *(this + 1);
            if (v149 > 0xFFFFFFFFFFFFFFFBLL || v149 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 24) = *(*this + v149);
            goto LABEL_369;
          case 244:
            *v8 |= 0x800uLL;
            v120 = *(this + 1);
            if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 56) = *(*this + v120);
            goto LABEL_369;
          case 245:
            *v8 |= 0x4000uLL;
            v46 = *(this + 1);
            if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 68) = *(*this + v46);
            goto LABEL_369;
          case 246:
            *v8 |= 0x2000uLL;
            v41 = *(this + 1);
            if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 64) = *(*this + v41);
            goto LABEL_369;
          case 247:
            *v8 |= 0x1000uLL;
            v42 = *(this + 1);
            if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 60) = *(*this + v42);
            goto LABEL_369;
          case 248:
            *v8 |= 0x10000uLL;
            v126 = *(this + 1);
            if (v126 > 0xFFFFFFFFFFFFFFFBLL || v126 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 76) = *(*this + v126);
            goto LABEL_369;
          case 249:
            *v8 |= 0x20000uLL;
            v151 = *(this + 1);
            if (v151 > 0xFFFFFFFFFFFFFFFBLL || v151 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 80) = *(*this + v151);
            goto LABEL_369;
          case 250:
            v8[1] |= 1uLL;
            v145 = *(this + 1);
            if (v145 > 0xFFFFFFFFFFFFFFFBLL || v145 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 268) = *(*this + v145);
            goto LABEL_369;
          case 251:
            v8[1] |= 0x20uLL;
            v133 = *(this + 1);
            if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 288) = *(*this + v133);
            goto LABEL_369;
          case 252:
            *v8 |= 0x400000uLL;
            v122 = *(this + 1);
            if (v122 > 0xFFFFFFFFFFFFFFFBLL || v122 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 100) = *(*this + v122);
            goto LABEL_369;
          case 253:
            *v8 |= 0x20000000000000uLL;
            v121 = *(this + 1);
            if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 224) = *(*this + v121);
            goto LABEL_369;
          case 254:
            v8[1] |= 0x200000uLL;
            v156 = *(this + 1);
            if (v156 > 0xFFFFFFFFFFFFFFFBLL || v156 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 352) = *(*this + v156);
            goto LABEL_369;
          case 255:
            v8[1] |= 2uLL;
            v154 = *(this + 1);
            if (v154 > 0xFFFFFFFFFFFFFFFBLL || v154 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 272) = *(*this + v154);
            goto LABEL_369;
          case 256:
            v8[1] |= 0x40uLL;
            v69 = *(this + 1);
            if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 292) = *(*this + v69);
            goto LABEL_369;
          case 257:
            *v8 |= 0x800000uLL;
            v141 = *(this + 1);
            if (v141 > 0xFFFFFFFFFFFFFFFBLL || v141 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 104) = *(*this + v141);
            goto LABEL_369;
          case 258:
            *v8 |= 0x40000000000000uLL;
            v57 = *(this + 1);
            if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 228) = *(*this + v57);
            goto LABEL_369;
          case 259:
            v8[1] |= 0x400000uLL;
            v119 = *(this + 1);
            if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 356) = *(*this + v119);
            goto LABEL_369;
          case 260:
            *v8 |= 0x2000000000uLL;
            v152 = *(this + 1);
            if (v152 > 0xFFFFFFFFFFFFFFFBLL || v152 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 160) = *(*this + v152);
            goto LABEL_369;
          case 261:
            *v8 |= 0x4000000000uLL;
            v44 = *(this + 1);
            if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 164) = *(*this + v44);
            goto LABEL_369;
          case 262:
            *v8 |= 0x40000000uLL;
            v158 = *(this + 1);
            if (v158 > 0xFFFFFFFFFFFFFFFBLL || v158 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 132) = *(*this + v158);
            goto LABEL_369;
          case 263:
            *v8 |= 0x20000000uLL;
            v161 = *(this + 1);
            if (v161 > 0xFFFFFFFFFFFFFFFBLL || v161 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 128) = *(*this + v161);
            goto LABEL_369;
          case 264:
            *v8 |= 0x1000000000uLL;
            v43 = *(this + 1);
            if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 156) = *(*this + v43);
            goto LABEL_369;
          case 265:
            *v8 |= 0x200000000uLL;
            v34 = *(this + 1);
            if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 144) = *(*this + v34);
            goto LABEL_369;
          case 266:
            *v8 |= 0x100000000uLL;
            v36 = *(this + 1);
            if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 140) = *(*this + v36);
            goto LABEL_369;
          case 267:
            *v8 |= 0x80000000uLL;
            v51 = *(this + 1);
            if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 136) = *(*this + v51);
            goto LABEL_369;
          case 268:
            *v8 |= 0x800000000000uLL;
            v143 = *(this + 1);
            if (v143 > 0xFFFFFFFFFFFFFFFBLL || v143 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 200) = *(*this + v143);
            goto LABEL_369;
          case 269:
            *v8 |= 0x1000000000000uLL;
            v47 = *(this + 1);
            if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 204) = *(*this + v47);
            goto LABEL_369;
          case 270:
            *v8 |= 0x10000000000uLL;
            v153 = *(this + 1);
            if (v153 > 0xFFFFFFFFFFFFFFFBLL || v153 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 172) = *(*this + v153);
            goto LABEL_369;
          case 271:
            *v8 |= 0x8000000000uLL;
            v138 = *(this + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 168) = *(*this + v138);
            goto LABEL_369;
          case 272:
            *v8 |= 0x400000000000uLL;
            v157 = *(this + 1);
            if (v157 > 0xFFFFFFFFFFFFFFFBLL || v157 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 196) = *(*this + v157);
            goto LABEL_369;
          case 273:
            *v8 |= 0x80000000000uLL;
            v123 = *(this + 1);
            if (v123 > 0xFFFFFFFFFFFFFFFBLL || v123 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 184) = *(*this + v123);
            goto LABEL_369;
          case 274:
            *v8 |= 0x40000000000uLL;
            v160 = *(this + 1);
            if (v160 > 0xFFFFFFFFFFFFFFFBLL || v160 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 180) = *(*this + v160);
            goto LABEL_369;
          case 275:
            *v8 |= 0x20000000000uLL;
            v50 = *(this + 1);
            if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 176) = *(*this + v50);
            goto LABEL_369;
          case 276:
            v8[1] |= 0x100uLL;
            v30 = *(this + 1);
            if (v30 > 0xFFFFFFFFFFFFFFFBLL || v30 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 300) = *(*this + v30);
            goto LABEL_369;
          case 277:
            v8[1] |= 0x200uLL;
            v137 = *(this + 1);
            if (v137 > 0xFFFFFFFFFFFFFFFBLL || v137 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 304) = *(*this + v137);
            goto LABEL_369;
          case 278:
            v8[1] |= 0x80uLL;
            v38 = *(this + 1);
            if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 296) = *(*this + v38);
            goto LABEL_369;
          case 279:
            v8[1] |= 0x10000uLL;
            v155 = *(this + 1);
            if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 332) = *(*this + v155);
            goto LABEL_369;
          case 280:
            *v8 |= 0x4000000uLL;
            v84 = *(this + 1);
            if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 116) = *(*this + v84);
            goto LABEL_369;
          case 281:
            *v8 |= 0x8000000uLL;
            v39 = *(this + 1);
            if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 120) = *(*this + v39);
            goto LABEL_369;
          case 282:
            v8[1] |= 0x2000uLL;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 320) = *(*this + v33);
            goto LABEL_369;
          case 283:
            v8[1] |= 0x400uLL;
            v32 = *(this + 1);
            if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 308) = *(*this + v32);
            goto LABEL_369;
          case 284:
            *v8 |= 0x800000000uLL;
            v150 = *(this + 1);
            if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 152) = *(*this + v150);
            goto LABEL_369;
          case 285:
            *v8 |= 0x400000000uLL;
            v37 = *(this + 1);
            if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 148) = *(*this + v37);
            goto LABEL_369;
          case 286:
            v8[1] |= 0x8000uLL;
            v48 = *(this + 1);
            if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 328) = *(*this + v48);
            goto LABEL_369;
          case 287:
            v8[1] |= 0x1000uLL;
            v31 = *(this + 1);
            if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 316) = *(*this + v31);
            goto LABEL_369;
          case 288:
            *v8 |= 0x200000000000uLL;
            v159 = *(this + 1);
            if (v159 > 0xFFFFFFFFFFFFFFFBLL || v159 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 192) = *(*this + v159);
            goto LABEL_369;
          case 289:
            *v8 |= 0x100000000000uLL;
            v54 = *(this + 1);
            if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 188) = *(*this + v54);
            goto LABEL_369;
          case 290:
            v8[1] |= 0x4000uLL;
            v162 = *(this + 1);
            if (v162 > 0xFFFFFFFFFFFFFFFBLL || v162 + 4 > *(this + 2))
            {
              goto LABEL_312;
            }

            *(a1 + 324) = *(*this + v162);
            goto LABEL_369;
          case 291:
            v8[1] |= 0x800uLL;
            v35 = *(this + 1);
            if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(this + 2))
            {
LABEL_312:
              *v3 = 1;
            }

            else
            {
              *(a1 + 312) = *(*this + v35);
LABEL_369:
              *(this + 1) += 4;
            }

            goto LABEL_370;
          default:
            goto LABEL_322;
        }

        while (1)
        {
          if (!v178)
          {
            LODWORD(v63) = 0;
            *v3 = 1;
            goto LABEL_378;
          }

          v181 = *v179;
          *(this + 1) = v180;
          v63 |= (v181 & 0x7F) << v176;
          if ((v181 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          --v178;
          ++v179;
          ++v180;
          v16 = v177++ > 8;
          if (v16)
          {
            goto LABEL_331;
          }
        }

        if (*v3)
        {
          LODWORD(v63) = 0;
        }

LABEL_378:
        *(a1 + 248) = v63;
      }

LABEL_370:
      v4 = *(this + 1);
      v5 = *(this + 2);
      v2 = *(this + 24);
    }

    while (v4 < v5 && (*(this + 24) & 1) == 0);
  }

  v195 = v2 ^ 1;
  return v195 & 1;
}

uint64_t sub_19B4B4D08(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = (result + 372);
  if (*(result + 372))
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = v4[1];
  if ((v6 & 0x20000000) != 0)
  {
    v7 = *(v3 + 366);
    result = PB::Writer::write(this);
    v6 = v4[1];
  }

  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(v3 + 367);
    result = PB::Writer::write(this);
  }

  v9 = *v4;
  if ((*v4 & 0x2000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 208));
    v9 = *v4;
  }

  if ((v9 & 0x40000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 84));
  }

  v10 = v4[1];
  if ((v10 & 0x20000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 336));
    v10 = v4[1];
    if ((v10 & 0x8000000) == 0)
    {
LABEL_13:
      if ((v10 & 0x1000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_151;
    }
  }

  else if ((v10 & 0x8000000) == 0)
  {
    goto LABEL_13;
  }

  v37 = *(v3 + 364);
  result = PB::Writer::write(this);
  v10 = v4[1];
  if ((v10 & 0x1000000) == 0)
  {
LABEL_14:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_151:
  v38 = *(v3 + 361);
  result = PB::Writer::write(this);
  if ((v4[1] & 0x800000) != 0)
  {
LABEL_15:
    v11 = *(v3 + 360);
    result = PB::Writer::write(this);
  }

LABEL_16:
  if ((*(v4 + 3) & 0x10) != 0)
  {
    v12 = *(v3 + 124);
    result = PB::Writer::writeVarInt(this);
  }

  if ((*(v4 + 11) & 4) != 0)
  {
    v13 = *(v3 + 363);
    result = PB::Writer::write(this);
  }

  v14 = *v4;
  if ((*v4 & 0x1000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 108));
    v14 = *v4;
    if ((*v4 & 0x100000000000000) == 0)
    {
LABEL_22:
      if ((v14 & 0x80000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_155;
    }
  }

  else if ((v14 & 0x100000000000000) == 0)
  {
    goto LABEL_22;
  }

  result = PB::Writer::write(this, *(v3 + 236));
  v14 = *v4;
  if ((*v4 & 0x80000000000000) == 0)
  {
LABEL_23:
    if ((v14 & 0x200000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_156;
  }

LABEL_155:
  result = PB::Writer::write(this, *(v3 + 232));
  v14 = *v4;
  if ((*v4 & 0x200000000000000) == 0)
  {
LABEL_24:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_157;
  }

LABEL_156:
  result = PB::Writer::write(this, *(v3 + 240));
  v14 = *v4;
  if ((*v4 & 0x40) == 0)
  {
LABEL_25:
    if ((v14 & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_158;
  }

LABEL_157:
  result = PB::Writer::write(this, *(v3 + 36));
  v14 = *v4;
  if ((*v4 & 2) == 0)
  {
LABEL_26:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_158:
  result = PB::Writer::write(this, *(v3 + 16));
  if ((*v4 & 0x8000) != 0)
  {
LABEL_27:
    result = PB::Writer::write(this, *(v3 + 72));
  }

LABEL_28:
  v15 = v4[1];
  if ((v15 & 0x100000000) != 0)
  {
    v39 = *(v3 + 369);
    result = PB::Writer::write(this);
    v15 = v4[1];
    if ((v15 & 0x2000000) == 0)
    {
LABEL_30:
      if ((v15 & 0x10000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v15 & 0x2000000) == 0)
  {
    goto LABEL_30;
  }

  v40 = *(v3 + 362);
  result = PB::Writer::write(this);
  if ((v4[1] & 0x10000000) != 0)
  {
LABEL_31:
    v16 = *(v3 + 365);
    result = PB::Writer::write(this);
  }

LABEL_32:
  v17 = *v4;
  if ((*v4 & 0x1000000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 252));
    v17 = *v4;
    if ((*v4 & 0x400000000000000) == 0)
    {
LABEL_34:
      if ((v17 & 0x800000000000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v17 & 0x400000000000000) == 0)
  {
    goto LABEL_34;
  }

  result = PB::Writer::write(this, *(v3 + 244));
  if ((*v4 & 0x800000000000000) != 0)
  {
LABEL_35:
    v18 = *(v3 + 248);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_36:
  if ((*(v4 + 11) & 0x80) != 0)
  {
    v19 = *(v3 + 368);
    result = PB::Writer::write(this);
  }

  v20 = *v4;
  if ((*v4 & 0x2000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 112));
    v20 = *v4;
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 256));
  }

  if ((v4[1] & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 276));
  }

  v21 = *v4;
  if ((*v4 & 0x80000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 88));
    v21 = *v4;
  }

  if ((v21 & 0x4000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 212));
  }

  if ((*(v4 + 10) & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 340));
  }

  if ((*(v4 + 7) & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 260));
  }

  if ((v4[1] & 8) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 280));
  }

  v22 = *v4;
  if ((*v4 & 0x100000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 92));
    v22 = *v4;
  }

  if ((v22 & 0x8000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 216));
  }

  if ((*(v4 + 10) & 8) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 344));
  }

  if (*v4 < 0)
  {
    result = PB::Writer::write(this, *(v3 + 264));
  }

  if ((v4[1] & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 284));
  }

  v23 = *v4;
  if ((*v4 & 0x200000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 96));
    v23 = *v4;
  }

  if ((v23 & 0x10000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 220));
  }

  if ((*(v4 + 10) & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 348));
  }

  v24 = *v4;
  if ((*v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v24 = *v4;
    if ((*v4 & 0x400) == 0)
    {
LABEL_72:
      if ((v24 & 0x200) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_168;
    }
  }

  else if ((v24 & 0x400) == 0)
  {
    goto LABEL_72;
  }

  result = PB::Writer::write(this, *(v3 + 52));
  v24 = *v4;
  if ((*v4 & 0x200) == 0)
  {
LABEL_73:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_169;
  }

LABEL_168:
  result = PB::Writer::write(this, *(v3 + 48));
  v24 = *v4;
  if ((*v4 & 0x100) == 0)
  {
LABEL_74:
    if ((v24 & 4) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_170;
  }

LABEL_169:
  result = PB::Writer::write(this, *(v3 + 44));
  v24 = *v4;
  if ((*v4 & 4) == 0)
  {
LABEL_75:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_171;
  }

LABEL_170:
  result = PB::Writer::write(this, *(v3 + 20));
  v24 = *v4;
  if ((*v4 & 0x20) == 0)
  {
LABEL_76:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_172;
  }

LABEL_171:
  result = PB::Writer::write(this, *(v3 + 32));
  v24 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_77:
    if ((v24 & 8) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_173;
  }

LABEL_172:
  result = PB::Writer::write(this, *(v3 + 28));
  v24 = *v4;
  if ((*v4 & 8) == 0)
  {
LABEL_78:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_174;
  }

LABEL_173:
  result = PB::Writer::write(this, *(v3 + 24));
  v24 = *v4;
  if ((*v4 & 0x800) == 0)
  {
LABEL_79:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_175;
  }

LABEL_174:
  result = PB::Writer::write(this, *(v3 + 56));
  v24 = *v4;
  if ((*v4 & 0x4000) == 0)
  {
LABEL_80:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_176;
  }

LABEL_175:
  result = PB::Writer::write(this, *(v3 + 68));
  v24 = *v4;
  if ((*v4 & 0x2000) == 0)
  {
LABEL_81:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_177;
  }

LABEL_176:
  result = PB::Writer::write(this, *(v3 + 64));
  v24 = *v4;
  if ((*v4 & 0x1000) == 0)
  {
LABEL_82:
    if ((v24 & 0x10000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_178;
  }

LABEL_177:
  result = PB::Writer::write(this, *(v3 + 60));
  v24 = *v4;
  if ((*v4 & 0x10000) == 0)
  {
LABEL_83:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_178:
  result = PB::Writer::write(this, *(v3 + 76));
  if ((*v4 & 0x20000) != 0)
  {
LABEL_84:
    result = PB::Writer::write(this, *(v3 + 80));
  }

LABEL_85:
  v25 = v4[1];
  if (v25)
  {
    result = PB::Writer::write(this, *(v3 + 268));
    v25 = v4[1];
  }

  if ((v25 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 288));
  }

  v26 = *v4;
  if ((*v4 & 0x400000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 100));
    v26 = *v4;
  }

  if ((v26 & 0x20000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 224));
  }

  v27 = v4[1];
  if ((v27 & 0x200000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 352));
    v27 = v4[1];
    if ((v27 & 2) == 0)
    {
LABEL_95:
      if ((v27 & 0x40) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_95;
  }

  result = PB::Writer::write(this, *(v3 + 272));
  if ((v4[1] & 0x40) != 0)
  {
LABEL_96:
    result = PB::Writer::write(this, *(v3 + 292));
  }

LABEL_97:
  v28 = *v4;
  if ((*v4 & 0x800000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 104));
    v28 = *v4;
  }

  if ((v28 & 0x40000000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 228));
  }

  if ((*(v4 + 10) & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 356));
  }

  v29 = *v4;
  if ((*v4 & 0x2000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 160));
    v29 = *v4;
    if ((*v4 & 0x4000000000) == 0)
    {
LABEL_105:
      if ((v29 & 0x40000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_185;
    }
  }

  else if ((v29 & 0x4000000000) == 0)
  {
    goto LABEL_105;
  }

  result = PB::Writer::write(this, *(v3 + 164));
  v29 = *v4;
  if ((*v4 & 0x40000000) == 0)
  {
LABEL_106:
    if ((v29 & 0x20000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_186;
  }

LABEL_185:
  result = PB::Writer::write(this, *(v3 + 132));
  v29 = *v4;
  if ((*v4 & 0x20000000) == 0)
  {
LABEL_107:
    if ((v29 & 0x1000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_187;
  }

LABEL_186:
  result = PB::Writer::write(this, *(v3 + 128));
  v29 = *v4;
  if ((*v4 & 0x1000000000) == 0)
  {
LABEL_108:
    if ((v29 & 0x200000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_188;
  }

LABEL_187:
  result = PB::Writer::write(this, *(v3 + 156));
  v29 = *v4;
  if ((*v4 & 0x200000000) == 0)
  {
LABEL_109:
    if ((v29 & 0x100000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_189;
  }

LABEL_188:
  result = PB::Writer::write(this, *(v3 + 144));
  v29 = *v4;
  if ((*v4 & 0x100000000) == 0)
  {
LABEL_110:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_190;
  }

LABEL_189:
  result = PB::Writer::write(this, *(v3 + 140));
  v29 = *v4;
  if ((*v4 & 0x80000000) == 0)
  {
LABEL_111:
    if ((v29 & 0x800000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_191;
  }

LABEL_190:
  result = PB::Writer::write(this, *(v3 + 136));
  v29 = *v4;
  if ((*v4 & 0x800000000000) == 0)
  {
LABEL_112:
    if ((v29 & 0x1000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_192;
  }

LABEL_191:
  result = PB::Writer::write(this, *(v3 + 200));
  v29 = *v4;
  if ((*v4 & 0x1000000000000) == 0)
  {
LABEL_113:
    if ((v29 & 0x10000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_193;
  }

LABEL_192:
  result = PB::Writer::write(this, *(v3 + 204));
  v29 = *v4;
  if ((*v4 & 0x10000000000) == 0)
  {
LABEL_114:
    if ((v29 & 0x8000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_194;
  }

LABEL_193:
  result = PB::Writer::write(this, *(v3 + 172));
  v29 = *v4;
  if ((*v4 & 0x8000000000) == 0)
  {
LABEL_115:
    if ((v29 & 0x400000000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_195;
  }

LABEL_194:
  result = PB::Writer::write(this, *(v3 + 168));
  v29 = *v4;
  if ((*v4 & 0x400000000000) == 0)
  {
LABEL_116:
    if ((v29 & 0x80000000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_196;
  }

LABEL_195:
  result = PB::Writer::write(this, *(v3 + 196));
  v29 = *v4;
  if ((*v4 & 0x80000000000) == 0)
  {
LABEL_117:
    if ((v29 & 0x40000000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_197;
  }

LABEL_196:
  result = PB::Writer::write(this, *(v3 + 184));
  v29 = *v4;
  if ((*v4 & 0x40000000000) == 0)
  {
LABEL_118:
    if ((v29 & 0x20000000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

LABEL_197:
  result = PB::Writer::write(this, *(v3 + 180));
  if ((*v4 & 0x20000000000) != 0)
  {
LABEL_119:
    result = PB::Writer::write(this, *(v3 + 176));
  }

LABEL_120:
  v30 = v4[1];
  if ((v30 & 0x100) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 300));
    v30 = v4[1];
    if ((v30 & 0x200) == 0)
    {
LABEL_122:
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_201;
    }
  }

  else if ((v30 & 0x200) == 0)
  {
    goto LABEL_122;
  }

  result = PB::Writer::write(this, *(v3 + 304));
  v30 = v4[1];
  if ((v30 & 0x80) == 0)
  {
LABEL_123:
    if ((v30 & 0x10000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_201:
  result = PB::Writer::write(this, *(v3 + 296));
  if ((v4[1] & 0x10000) != 0)
  {
LABEL_124:
    result = PB::Writer::write(this, *(v3 + 332));
  }

LABEL_125:
  v31 = *v4;
  if ((*v4 & 0x4000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 116));
    v31 = *v4;
  }

  if ((v31 & 0x8000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 120));
  }

  v32 = v4[1];
  if ((v32 & 0x2000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 320));
    v32 = v4[1];
  }

  if ((v32 & 0x400) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 308));
  }

  v33 = *v4;
  if ((*v4 & 0x800000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 152));
    v33 = *v4;
  }

  if ((v33 & 0x400000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 148));
  }

  v34 = v4[1];
  if ((v34 & 0x8000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 328));
    v34 = v4[1];
  }

  if ((v34 & 0x1000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 316));
  }

  v35 = *v4;
  if ((*v4 & 0x200000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 192));
    v35 = *v4;
  }

  if ((v35 & 0x100000000000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 188));
  }

  v36 = v4[1];
  if ((v36 & 0x4000) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 324));
    v36 = v4[1];
  }

  if ((v36 & 0x800) != 0)
  {
    v41 = *(v3 + 312);

    return PB::Writer::write(this, v41);
  }

  return result;
}

void *sub_19B4B5744(void *result)
{
  *result = &unk_1F0E2D5C0;
  result[45] = 0;
  result[46] = 0;
  return result;
}

void sub_19B4B576C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4B57A4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 368) & 0x40) != 0)
  {
    v5 = *(a1 + 320);
    PB::TextFormatter::format(this, "anyLowSense");
  }

  v6 = *(a1 + 360);
  if ((v6 & 0x100) != 0)
  {
    PB::TextFormatter::format(this, "autocorrelationPeriodicCount", *(a1 + 72));
    v6 = *(a1 + 360);
  }

  if ((v6 & 0x200) != 0)
  {
    PB::TextFormatter::format(this, "autocorrelationPeriodicCountThreshold", *(a1 + 76));
  }

  if ((*(a1 + 368) & 0x80) != 0)
  {
    v7 = *(a1 + 321);
    PB::TextFormatter::format(this, "crashDetectorDecision");
  }

  v8 = *(a1 + 360);
  if (v8)
  {
    v26 = *(a1 + 8);
    PB::TextFormatter::format(this, "crashTimestamp");
    v8 = *(a1 + 360);
    if ((v8 & 0x400) == 0)
    {
LABEL_11:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_131;
    }
  }

  else if ((v8 & 0x400) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(this, "cumulativeRotation", *(a1 + 80));
  v8 = *(a1 + 360);
  if ((v8 & 0x800) == 0)
  {
LABEL_12:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_132;
  }

LABEL_131:
  PB::TextFormatter::format(this, "cumulativeRotationHarmonicMean", *(a1 + 84));
  v8 = *(a1 + 360);
  if ((v8 & 0x1000) == 0)
  {
LABEL_13:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_133;
  }

LABEL_132:
  PB::TextFormatter::format(this, "currentCadence", *(a1 + 88));
  v8 = *(a1 + 360);
  if ((v8 & 0x2000) == 0)
  {
LABEL_14:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_134;
  }

LABEL_133:
  PB::TextFormatter::format(this, "deltaRealTrigger", *(a1 + 92));
  v8 = *(a1 + 360);
  if ((v8 & 0x4000) == 0)
  {
LABEL_15:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_135;
  }

LABEL_134:
  v27 = *(a1 + 96);
  PB::TextFormatter::format(this, "deltaSteps");
  v8 = *(a1 + 360);
  if ((v8 & 0x8000) == 0)
  {
LABEL_16:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_135:
  PB::TextFormatter::format(this, "distanceToNearestRoad", *(a1 + 100));
  if ((*(a1 + 360) & 0x10000) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(this, "distanceToNearestRoadThreshold", *(a1 + 104));
  }

LABEL_18:
  v9 = *(a1 + 368);
  if ((v9 & 0x100) != 0)
  {
    v28 = *(a1 + 322);
    PB::TextFormatter::format(this, "earlyCrashDetectorDecision");
    v9 = *(a1 + 368);
    if ((v9 & 0x200) == 0)
    {
LABEL_20:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v29 = *(a1 + 323);
  PB::TextFormatter::format(this, "escalationCandidate");
  if ((*(a1 + 368) & 0x400) != 0)
  {
LABEL_21:
    v10 = *(a1 + 324);
    PB::TextFormatter::format(this, "escalationCandidateSuppressed");
  }

LABEL_22:
  v11 = *(a1 + 360);
  if ((v11 & 0x20000) != 0)
  {
    v12 = *(a1 + 108);
    PB::TextFormatter::format(this, "faultCounter");
    v11 = *(a1 + 360);
  }

  if ((v11 & 2) != 0)
  {
    v13 = *(a1 + 16);
    PB::TextFormatter::format(this, "firstTimestampMAPDecision");
  }

  if ((*(a1 + 369) & 8) != 0)
  {
    v14 = *(a1 + 325);
    PB::TextFormatter::format(this, "hasSteps");
  }

  if ((*(a1 + 362) & 4) != 0)
  {
    v15 = *(a1 + 112);
    PB::TextFormatter::format(this, "highSensitivityBitmap");
  }

  v16 = *(a1 + 368);
  if ((v16 & 0x1000) != 0)
  {
    v30 = *(a1 + 326);
    PB::TextFormatter::format(this, "isAirbagDetectedOverWindow");
    v16 = *(a1 + 368);
    if ((v16 & 0x2000) == 0)
    {
LABEL_32:
      if ((v16 & 0x4000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_142;
    }
  }

  else if ((v16 & 0x2000) == 0)
  {
    goto LABEL_32;
  }

  v31 = *(a1 + 327);
  PB::TextFormatter::format(this, "isAutocorrelationDecided");
  v16 = *(a1 + 368);
  if ((v16 & 0x4000) == 0)
  {
LABEL_33:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_143;
  }

LABEL_142:
  v32 = *(a1 + 328);
  PB::TextFormatter::format(this, "isCrashDetected");
  v16 = *(a1 + 368);
  if ((v16 & 0x8000) == 0)
  {
LABEL_34:
    if ((v16 & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_144;
  }

LABEL_143:
  v33 = *(a1 + 329);
  PB::TextFormatter::format(this, "isDecisionMadeAtBoundary");
  v16 = *(a1 + 368);
  if ((v16 & 0x10000) == 0)
  {
LABEL_35:
    if ((v16 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_145;
  }

LABEL_144:
  v34 = *(a1 + 330);
  PB::TextFormatter::format(this, "isDescalationDecided");
  v16 = *(a1 + 368);
  if ((v16 & 0x20000) == 0)
  {
LABEL_36:
    if ((v16 & 0x40000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_146;
  }

LABEL_145:
  v35 = *(a1 + 331);
  PB::TextFormatter::format(this, "isDescalationRequired");
  v16 = *(a1 + 368);
  if ((v16 & 0x40000) == 0)
  {
LABEL_37:
    if ((v16 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_147;
  }

LABEL_146:
  v36 = *(a1 + 332);
  PB::TextFormatter::format(this, "isEvaluatingMovingGps");
  v16 = *(a1 + 368);
  if ((v16 & 0x80000) == 0)
  {
LABEL_38:
    if ((v16 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_148;
  }

LABEL_147:
  v37 = *(a1 + 333);
  PB::TextFormatter::format(this, "isFreeFallDetectedEpoch");
  v16 = *(a1 + 368);
  if ((v16 & 0x100000) == 0)
  {
LABEL_39:
    if ((v16 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_149;
  }

LABEL_148:
  v38 = *(a1 + 334);
  PB::TextFormatter::format(this, "isHighSpeedCrashDetected");
  v16 = *(a1 + 368);
  if ((v16 & 0x200000) == 0)
  {
LABEL_40:
    if ((v16 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_150;
  }

LABEL_149:
  v39 = *(a1 + 335);
  PB::TextFormatter::format(this, "isHighSpeedCrashDetectedOverWindow");
  v16 = *(a1 + 368);
  if ((v16 & 0x400000) == 0)
  {
LABEL_41:
    if ((v16 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_151;
  }

LABEL_150:
  v40 = *(a1 + 336);
  PB::TextFormatter::format(this, "isHighSpeedDetectedOverWindow");
  v16 = *(a1 + 368);
  if ((v16 & 0x800000) == 0)
  {
LABEL_42:
    if ((v16 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_152;
  }

LABEL_151:
  v41 = *(a1 + 337);
  PB::TextFormatter::format(this, "isLowSensCrashDetected");
  v16 = *(a1 + 368);
  if ((v16 & 0x1000000) == 0)
  {
LABEL_43:
    if ((v16 & 0x2000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_153;
  }

LABEL_152:
  v42 = *(a1 + 338);
  PB::TextFormatter::format(this, "isLowSensRolloverCrashDetected");
  v16 = *(a1 + 368);
  if ((v16 & 0x2000000) == 0)
  {
LABEL_44:
    if ((v16 & 0x4000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_154;
  }

LABEL_153:
  v43 = *(a1 + 339);
  PB::TextFormatter::format(this, "isMAPFPDecided");
  v16 = *(a1 + 368);
  if ((v16 & 0x4000000) == 0)
  {
LABEL_45:
    if ((v16 & 0x8000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_155;
  }

LABEL_154:
  v44 = *(a1 + 340);
  PB::TextFormatter::format(this, "isQuiescenceDecided");
  v16 = *(a1 + 368);
  if ((v16 & 0x8000000) == 0)
  {
LABEL_46:
    if ((v16 & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_156;
  }

LABEL_155:
  v45 = *(a1 + 341);
  PB::TextFormatter::format(this, "isRolloverCrashDetected");
  v16 = *(a1 + 368);
  if ((v16 & 0x10000000) == 0)
  {
LABEL_47:
    if ((v16 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_157;
  }

LABEL_156:
  v46 = *(a1 + 342);
  PB::TextFormatter::format(this, "isStepsDecided");
  v16 = *(a1 + 368);
  if ((v16 & 0x20000000) == 0)
  {
LABEL_48:
    if ((v16 & 0x40000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_157:
  v47 = *(a1 + 343);
  PB::TextFormatter::format(this, "isTriggerClustersDecided");
  if ((*(a1 + 368) & 0x40000000) != 0)
  {
LABEL_49:
    v17 = *(a1 + 344);
    PB::TextFormatter::format(this, "isUshaFPDecided");
  }

LABEL_50:
  v18 = *(a1 + 360);
  if ((v18 & 4) != 0)
  {
    v48 = *(a1 + 24);
    PB::TextFormatter::format(this, "lastLocalRealTriggerTimestamp");
    v18 = *(a1 + 360);
    if ((v18 & 8) == 0)
    {
LABEL_52:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_161;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_52;
  }

  v49 = *(a1 + 32);
  PB::TextFormatter::format(this, "lastRemoteRealTriggerTimestamp");
  v18 = *(a1 + 360);
  if ((v18 & 0x10) == 0)
  {
LABEL_53:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_162;
  }

LABEL_161:
  v50 = *(a1 + 40);
  PB::TextFormatter::format(this, "lastRemoteSampleTimestamp");
  v18 = *(a1 + 360);
  if ((v18 & 0x20) == 0)
  {
LABEL_54:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_163;
  }

LABEL_162:
  v51 = *(a1 + 48);
  PB::TextFormatter::format(this, "lastTimestampMAPDecision");
  v18 = *(a1 + 360);
  if ((v18 & 0x80000) == 0)
  {
LABEL_55:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_164;
  }

LABEL_163:
  v52 = *(a1 + 116);
  PB::TextFormatter::format(this, "lowSpeedOrFakeCountAtBoundaryThreshold");
  v18 = *(a1 + 360);
  if ((v18 & 0x100000) == 0)
  {
LABEL_56:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_165;
  }

LABEL_164:
  PB::TextFormatter::format(this, "maxPulse", *(a1 + 120));
  v18 = *(a1 + 360);
  if ((v18 & 0x200000) == 0)
  {
LABEL_57:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_166;
  }

LABEL_165:
  PB::TextFormatter::format(this, "maxPulseHarmonicMean", *(a1 + 124));
  v18 = *(a1 + 360);
  if ((v18 & 0x400000) == 0)
  {
LABEL_58:
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_167;
  }

LABEL_166:
  PB::TextFormatter::format(this, "maximumHoldDuration", *(a1 + 128));
  v18 = *(a1 + 360);
  if ((v18 & 0x800000) == 0)
  {
LABEL_59:
    if ((v18 & 0x1000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_168;
  }

LABEL_167:
  PB::TextFormatter::format(this, "minimumHoldDuration", *(a1 + 132));
  v18 = *(a1 + 360);
  if ((v18 & 0x1000000) == 0)
  {
LABEL_60:
    if ((v18 & 0x2000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_169;
  }

LABEL_168:
  v53 = *(a1 + 136);
  PB::TextFormatter::format(this, "movingCountThreshold");
  v18 = *(a1 + 360);
  if ((v18 & 0x2000000) == 0)
  {
LABEL_61:
    if ((v18 & 0x4000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_170;
  }

LABEL_169:
  v54 = *(a1 + 140);
  PB::TextFormatter::format(this, "movingCountThresholdFromSydneyB");
  v18 = *(a1 + 360);
  if ((v18 & 0x4000000) == 0)
  {
LABEL_62:
    if ((v18 & 0x8000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_171;
  }

LABEL_170:
  PB::TextFormatter::format(this, "movingGpsBlockoutWindow", *(a1 + 144));
  v18 = *(a1 + 360);
  if ((v18 & 0x8000000) == 0)
  {
LABEL_63:
    if ((v18 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_172;
  }

LABEL_171:
  v55 = *(a1 + 148);
  PB::TextFormatter::format(this, "movingGpsCount");
  v18 = *(a1 + 360);
  if ((v18 & 0x10000000) == 0)
  {
LABEL_64:
    if ((v18 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_173;
  }

LABEL_172:
  v56 = *(a1 + 152);
  PB::TextFormatter::format(this, "movingGpsCountTotal");
  v18 = *(a1 + 360);
  if ((v18 & 0x20000000) == 0)
  {
LABEL_65:
    if ((v18 & 0x40000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_174;
  }

LABEL_173:
  v57 = *(a1 + 156);
  PB::TextFormatter::format(this, "numAudioSkiing");
  v18 = *(a1 + 360);
  if ((v18 & 0x40000000) == 0)
  {
LABEL_66:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_175;
  }

LABEL_174:
  v58 = *(a1 + 160);
  PB::TextFormatter::format(this, "numAudioSkiingThreshold");
  v18 = *(a1 + 360);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v18 & 0x100000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_176;
  }

LABEL_175:
  v59 = *(a1 + 164);
  PB::TextFormatter::format(this, "numBaroIncreasesSkiing");
  v18 = *(a1 + 360);
  if ((v18 & 0x100000000) == 0)
  {
LABEL_68:
    if ((v18 & 0x200000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_177;
  }

LABEL_176:
  v60 = *(a1 + 168);
  PB::TextFormatter::format(this, "numBaroIncreasesSkiingThreshold");
  v18 = *(a1 + 360);
  if ((v18 & 0x200000000) == 0)
  {
LABEL_69:
    if ((v18 & 0x400000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_178;
  }

LABEL_177:
  v61 = *(a1 + 172);
  PB::TextFormatter::format(this, "numDeescalationAOI");
  v18 = *(a1 + 360);
  if ((v18 & 0x400000000) == 0)
  {
LABEL_70:
    if ((v18 & 0x800000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_179;
  }

LABEL_178:
  v62 = *(a1 + 176);
  PB::TextFormatter::format(this, "numDeescalationMAP");
  v18 = *(a1 + 360);
  if ((v18 & 0x800000000) == 0)
  {
LABEL_71:
    if ((v18 & 0x1000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_180;
  }

LABEL_179:
  v63 = *(a1 + 180);
  PB::TextFormatter::format(this, "numDeescalationTwoLevel");
  v18 = *(a1 + 360);
  if ((v18 & 0x1000000000) == 0)
  {
LABEL_72:
    if ((v18 & 0x2000000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_181;
  }

LABEL_180:
  v64 = *(a1 + 184);
  PB::TextFormatter::format(this, "numDeescalationUsha");
  v18 = *(a1 + 360);
  if ((v18 & 0x2000000000) == 0)
  {
LABEL_73:
    if ((v18 & 0x4000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_182;
  }

LABEL_181:
  v65 = *(a1 + 188);
  PB::TextFormatter::format(this, "numGpsSamplesInHistory");
  v18 = *(a1 + 360);
  if ((v18 & 0x4000000000) == 0)
  {
LABEL_74:
    if ((v18 & 0x8000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_183;
  }

LABEL_182:
  v66 = *(a1 + 192);
  PB::TextFormatter::format(this, "numLowOrFakeGpsSamplesInHistory");
  v18 = *(a1 + 360);
  if ((v18 & 0x8000000000) == 0)
  {
LABEL_75:
    if ((v18 & 0x10000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_184;
  }

LABEL_183:
  v67 = *(a1 + 196);
  PB::TextFormatter::format(this, "numTriggersWithRecentSkiLiftDetected");
  v18 = *(a1 + 360);
  if ((v18 & 0x10000000000) == 0)
  {
LABEL_76:
    if ((v18 & 0x20000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_185;
  }

LABEL_184:
  v68 = *(a1 + 200);
  PB::TextFormatter::format(this, "numTriggersWithTrueBtHint");
  v18 = *(a1 + 360);
  if ((v18 & 0x20000000000) == 0)
  {
LABEL_77:
    if ((v18 & 0x40000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_186;
  }

LABEL_185:
  v69 = *(a1 + 204);
  PB::TextFormatter::format(this, "numUshaCPEpoch");
  v18 = *(a1 + 360);
  if ((v18 & 0x40000000000) == 0)
  {
LABEL_78:
    if ((v18 & 0x80000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_187;
  }

LABEL_186:
  v70 = *(a1 + 208);
  PB::TextFormatter::format(this, "numUshaCPEpochThreshold");
  v18 = *(a1 + 360);
  if ((v18 & 0x80000000000) == 0)
  {
LABEL_79:
    if ((v18 & 0x100000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_188;
  }

LABEL_187:
  v71 = *(a1 + 212);
  PB::TextFormatter::format(this, "numUshaFPEpoch");
  v18 = *(a1 + 360);
  if ((v18 & 0x100000000000) == 0)
  {
LABEL_80:
    if ((v18 & 0x200000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_189;
  }

LABEL_188:
  v72 = *(a1 + 216);
  PB::TextFormatter::format(this, "numUshaFPEpochThreshold");
  v18 = *(a1 + 360);
  if ((v18 & 0x200000000000) == 0)
  {
LABEL_81:
    if ((v18 & 0x400000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_190;
  }

LABEL_189:
  v73 = *(a1 + 220);
  PB::TextFormatter::format(this, "pedometerArmConstrainedState");
  v18 = *(a1 + 360);
  if ((v18 & 0x400000000000) == 0)
  {
LABEL_82:
    if ((v18 & 0x800000000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_191;
  }

LABEL_190:
  PB::TextFormatter::format(this, "quiescenceCumulativeRotationHarmonicMeanThreshold", *(a1 + 224));
  v18 = *(a1 + 360);
  if ((v18 & 0x800000000000) == 0)
  {
LABEL_83:
    if ((v18 & 0x1000000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_192;
  }

LABEL_191:
  PB::TextFormatter::format(this, "quiescenceMaxPulseHarmonicMeanThreshold", *(a1 + 228));
  v18 = *(a1 + 360);
  if ((v18 & 0x1000000000000) == 0)
  {
LABEL_84:
    if ((v18 & 0x2000000000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_193;
  }

LABEL_192:
  v74 = *(a1 + 232);
  PB::TextFormatter::format(this, "quiescencePulseEpochCount");
  v18 = *(a1 + 360);
  if ((v18 & 0x2000000000000) == 0)
  {
LABEL_85:
    if ((v18 & 0x4000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_194;
  }

LABEL_193:
  v75 = *(a1 + 236);
  PB::TextFormatter::format(this, "quiescenceSpinEpochCount");
  v18 = *(a1 + 360);
  if ((v18 & 0x4000000000000) == 0)
  {
LABEL_86:
    if ((v18 & 0x8000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_194:
  v76 = *(a1 + 240);
  PB::TextFormatter::format(this, "sameEventState");
  if ((*(a1 + 360) & 0x8000000000000) != 0)
  {
LABEL_87:
    PB::TextFormatter::format(this, "secondDeescalationHoldDuration", *(a1 + 244));
  }

LABEL_88:
  v19 = *(a1 + 368);
  if ((v19 & 0x80000000) != 0)
  {
    v77 = *(a1 + 345);
    PB::TextFormatter::format(this, "shouldDeescalateBecauseOfAutocorrelationCondition");
    v19 = *(a1 + 368);
    if ((v19 & 0x100000000) == 0)
    {
LABEL_90:
      if ((v19 & 0x200000000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_198;
    }
  }

  else if ((v19 & 0x100000000) == 0)
  {
    goto LABEL_90;
  }

  v78 = *(a1 + 346);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfCrashClassifierCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x200000000) == 0)
  {
LABEL_91:
    if ((v19 & 0x400000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_199;
  }

LABEL_198:
  v79 = *(a1 + 347);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfJointDetectionCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x400000000) == 0)
  {
LABEL_92:
    if ((v19 & 0x800000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_200;
  }

LABEL_199:
  v80 = *(a1 + 348);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfMAPFPCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x800000000) == 0)
  {
LABEL_93:
    if ((v19 & 0x1000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_201;
  }

LABEL_200:
  v81 = *(a1 + 349);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfMovingCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x1000000000) == 0)
  {
LABEL_94:
    if ((v19 & 0x2000000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_202;
  }

LABEL_201:
  v82 = *(a1 + 350);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfQuiescenceCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x2000000000) == 0)
  {
LABEL_95:
    if ((v19 & 0x4000000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_203;
  }

LABEL_202:
  v83 = *(a1 + 351);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfSkiLiftCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x4000000000) == 0)
  {
LABEL_96:
    if ((v19 & 0x8000000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_204;
  }

LABEL_203:
  v84 = *(a1 + 352);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfSkiingCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x8000000000) == 0)
  {
LABEL_97:
    if ((v19 & 0x10000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_205;
  }

LABEL_204:
  v85 = *(a1 + 353);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfStaticCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x10000000000) == 0)
  {
LABEL_98:
    if ((v19 & 0x20000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_206;
  }

LABEL_205:
  v86 = *(a1 + 354);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfStepsCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x20000000000) == 0)
  {
LABEL_99:
    if ((v19 & 0x40000000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_207;
  }

LABEL_206:
  v87 = *(a1 + 355);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfTriggerClustersCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x40000000000) == 0)
  {
LABEL_100:
    if ((v19 & 0x80000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_208;
  }

LABEL_207:
  v88 = *(a1 + 356);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfTwoLevelSensitivityCondition");
  v19 = *(a1 + 368);
  if ((v19 & 0x80000000000) == 0)
  {
LABEL_101:
    if ((v19 & 0x100000000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_208:
  v89 = *(a1 + 357);
  PB::TextFormatter::format(this, "shouldDeescalateBecauseOfUshaFPCondition");
  if ((*(a1 + 368) & 0x100000000000) != 0)
  {
LABEL_102:
    v20 = *(a1 + 358);
    PB::TextFormatter::format(this, "shouldEnableHighSensBecauseOfDistanceToRoadCondition");
  }

LABEL_103:
  v21 = *(a1 + 360);
  if ((v21 & 0x10000000000000) != 0)
  {
    PB::TextFormatter::format(this, "skiingPressureChangeOverEpochThreshold", *(a1 + 248));
    v21 = *(a1 + 360);
    if ((v21 & 0x20000000000000) == 0)
    {
LABEL_105:
      if ((v21 & 0x40000000000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_212;
    }
  }

  else if ((v21 & 0x20000000000000) == 0)
  {
    goto LABEL_105;
  }

  v90 = *(a1 + 252);
  PB::TextFormatter::format(this, "staticCountThreshold");
  v21 = *(a1 + 360);
  if ((v21 & 0x40000000000000) == 0)
  {
LABEL_106:
    if ((v21 & 0x80000000000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_213;
  }

LABEL_212:
  v91 = *(a1 + 256);
  PB::TextFormatter::format(this, "staticGpsCount");
  v21 = *(a1 + 360);
  if ((v21 & 0x80000000000000) == 0)
  {
LABEL_107:
    if ((v21 & 0x100000000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_214;
  }

LABEL_213:
  v92 = *(a1 + 260);
  PB::TextFormatter::format(this, "staticGpsCountTotal");
  v21 = *(a1 + 360);
  if ((v21 & 0x100000000000000) == 0)
  {
LABEL_108:
    if ((v21 & 0x200000000000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_215;
  }

LABEL_214:
  v93 = *(a1 + 264);
  PB::TextFormatter::format(this, "stationaryCountMissingAsNoOpThreshold");
  v21 = *(a1 + 360);
  if ((v21 & 0x200000000000000) == 0)
  {
LABEL_109:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_216;
  }

LABEL_215:
  v94 = *(a1 + 268);
  PB::TextFormatter::format(this, "stepCountEventTimestamp");
  v21 = *(a1 + 360);
  if ((v21 & 0x40) == 0)
  {
LABEL_110:
    if ((v21 & 0x400000000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_217;
  }

LABEL_216:
  v95 = *(a1 + 56);
  PB::TextFormatter::format(this, "stepCountEventTimestamp64");
  v21 = *(a1 + 360);
  if ((v21 & 0x400000000000000) == 0)
  {
LABEL_111:
    if ((v21 & 0x800000000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_218;
  }

LABEL_217:
  PB::TextFormatter::format(this, "stepsCadence", *(a1 + 272));
  v21 = *(a1 + 360);
  if ((v21 & 0x800000000000000) == 0)
  {
LABEL_112:
    if ((v21 & 0x1000000000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_219;
  }

LABEL_218:
  PB::TextFormatter::format(this, "stepsCadenceThreshold", *(a1 + 276));
  v21 = *(a1 + 360);
  if ((v21 & 0x1000000000000000) == 0)
  {
LABEL_113:
    if ((v21 & 0x2000000000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_220;
  }

LABEL_219:
  v96 = *(a1 + 280);
  PB::TextFormatter::format(this, "stepsCount");
  v21 = *(a1 + 360);
  if ((v21 & 0x2000000000000000) == 0)
  {
LABEL_114:
    if ((v21 & 0x4000000000000000) == 0)
    {
      goto LABEL_115;
    }

LABEL_221:
    v98 = *(a1 + 288);
    PB::TextFormatter::format(this, "stepsDeescalatedAtOpp");
    if ((*(a1 + 360) & 0x8000000000000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_222;
  }

LABEL_220:
  v97 = *(a1 + 284);
  PB::TextFormatter::format(this, "stepsCountThreshold");
  v21 = *(a1 + 360);
  if ((v21 & 0x4000000000000000) != 0)
  {
    goto LABEL_221;
  }

LABEL_115:
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_116;
  }

LABEL_222:
  PB::TextFormatter::format(this, "stepsEpochCount", *(a1 + 292));
LABEL_116:
  v22 = *(a1 + 368);
  if (v22)
  {
    PB::TextFormatter::format(this, "stepsPerMinute", *(a1 + 296));
    v22 = *(a1 + 368);
    if ((v22 & 2) == 0)
    {
LABEL_118:
      if ((v22 & 4) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_119;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_118;
  }

  PB::TextFormatter::format(this, "stepsPerMinuteThreshold", *(a1 + 300));
  if ((*(a1 + 368) & 4) != 0)
  {
LABEL_119:
    v23 = *(a1 + 304);
    PB::TextFormatter::format(this, "stepsSecondOpportunityLookbackLength");
  }

LABEL_120:
  if ((*(a1 + 360) & 0x80) != 0)
  {
    v24 = *(a1 + 64);
    PB::TextFormatter::format(this, "timestamp");
  }

  v25 = *(a1 + 368);
  if ((v25 & 8) != 0)
  {
    v99 = *(a1 + 308);
    PB::TextFormatter::format(this, "triggerClusterDeescalationWindowBoundary");
    v25 = *(a1 + 368);
    if ((v25 & 0x10) == 0)
    {
LABEL_124:
      if ((v25 & 0x20) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }
  }

  else if ((v25 & 0x10) == 0)
  {
    goto LABEL_124;
  }

  PB::TextFormatter::format(this, "ushaCumulativeRotationThreshold", *(a1 + 312));
  if ((*(a1 + 368) & 0x20) != 0)
  {
LABEL_125:
    PB::TextFormatter::format(this, "ushaPeakPressureThreshold", *(a1 + 316));
  }

LABEL_126:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4B6564(uint64_t a1, PB::Reader *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  v5 = this + 24;
  v4 = *(this + 24);
  v6 = *(this + 2);
  if (v2 >= v6 || (*(this + 24) & 1) != 0)
  {
LABEL_1183:
    v896 = v4 ^ 1;
    return v896 & 1;
  }

  while (1)
  {
    v9 = *this;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v6)
    {
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v19 = v6 >= v2;
      v20 = v6 - v2;
      if (!v19)
      {
        v20 = 0;
      }

      v21 = (v9 + v2);
      v22 = v2 + 1;
      while (1)
      {
        if (!v20)
        {
          v12 = 0;
          *v5 = 1;
          goto LABEL_21;
        }

        v23 = *v21;
        *v3 = v22;
        v12 |= (v23 & 0x7F) << v17;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        --v20;
        ++v21;
        ++v22;
        v16 = v18++ > 8;
        if (v16)
        {
LABEL_17:
          v12 = 0;
          goto LABEL_21;
        }
      }

      if (*v5)
      {
        v12 = 0;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = (v9 + v2);
      v14 = v2 + 1;
      while (1)
      {
        *v3 = v14;
        v15 = *v13++;
        v12 |= (v15 & 0x7F) << v10;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        ++v14;
        v16 = v11++ > 8;
        if (v16)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_21:
    v4 = *v5;
    if ((*v5 & 1) != 0 || (v12 & 7) == 4)
    {
      goto LABEL_1183;
    }

    v24 = v12 >> 3;
    if ((v12 >> 3) <= 400)
    {
      if ((v12 >> 3) <= 0x190)
      {
        switch(v24)
        {
          case 301:
            *(a1 + 368) |= 0x4000uLL;
            v36 = *(this + 1);
            if (v36 >= *(this + 2))
            {
              v39 = 0;
              *v5 = 1;
            }

            else
            {
              v37 = v36 + 1;
              v38 = *(*this + v36);
              *(this + 1) = v37;
              v39 = v38 != 0;
            }

            *(a1 + 328) = v39;
            goto LABEL_996;
          case 302:
            *(a1 + 368) |= 0x8000000uLL;
            v347 = *(this + 1);
            if (v347 >= *(this + 2))
            {
              v350 = 0;
              *v5 = 1;
            }

            else
            {
              v348 = v347 + 1;
              v349 = *(*this + v347);
              *(this + 1) = v348;
              v350 = v349 != 0;
            }

            *(a1 + 341) = v350;
            goto LABEL_996;
          case 303:
            *(a1 + 368) |= 0x100000uLL;
            v308 = *(this + 1);
            if (v308 >= *(this + 2))
            {
              v311 = 0;
              *v5 = 1;
            }

            else
            {
              v309 = v308 + 1;
              v310 = *(*this + v308);
              *(this + 1) = v309;
              v311 = v310 != 0;
            }

            *(a1 + 334) = v311;
            goto LABEL_996;
          case 304:
            *(a1 + 368) |= 0x8000000000uLL;
            v339 = *(this + 1);
            if (v339 >= *(this + 2))
            {
              v342 = 0;
              *v5 = 1;
            }

            else
            {
              v340 = v339 + 1;
              v341 = *(*this + v339);
              *(this + 1) = v340;
              v342 = v341 != 0;
            }

            *(a1 + 353) = v342;
            goto LABEL_996;
          case 305:
            *(a1 + 368) |= 0x800000000uLL;
            v286 = *(this + 1);
            if (v286 >= *(this + 2))
            {
              v289 = 0;
              *v5 = 1;
            }

            else
            {
              v287 = v286 + 1;
              v288 = *(*this + v286);
              *(this + 1) = v287;
              v289 = v288 != 0;
            }

            *(a1 + 349) = v289;
            goto LABEL_996;
          case 306:
            *(a1 + 368) |= 0x10000000000uLL;
            v395 = *(this + 1);
            if (v395 >= *(this + 2))
            {
              v398 = 0;
              *v5 = 1;
            }

            else
            {
              v396 = v395 + 1;
              v397 = *(*this + v395);
              *(this + 1) = v396;
              v398 = v397 != 0;
            }

            *(a1 + 354) = v398;
            goto LABEL_996;
          case 307:
            *(a1 + 368) |= 0x1000000000uLL;
            v421 = *(this + 1);
            if (v421 >= *(this + 2))
            {
              v424 = 0;
              *v5 = 1;
            }

            else
            {
              v422 = v421 + 1;
              v423 = *(*this + v421);
              *(this + 1) = v422;
              v424 = v423 != 0;
            }

            *(a1 + 350) = v424;
            goto LABEL_996;
          case 308:
            *(a1 + 368) |= 0x80000000uLL;
            v343 = *(this + 1);
            if (v343 >= *(this + 2))
            {
              v346 = 0;
              *v5 = 1;
            }

            else
            {
              v344 = v343 + 1;
              v345 = *(*this + v343);
              *(this + 1) = v344;
              v346 = v345 != 0;
            }

            *(a1 + 345) = v346;
            goto LABEL_996;
          case 309:
            *(a1 + 368) |= 0x1000uLL;
            v433 = *(this + 1);
            if (v433 >= *(this + 2))
            {
              v436 = 0;
              *v5 = 1;
            }

            else
            {
              v434 = v433 + 1;
              v435 = *(*this + v433);
              *(this + 1) = v434;
              v436 = v435 != 0;
            }

            *(a1 + 326) = v436;
            goto LABEL_996;
          case 310:
            *(a1 + 368) |= 0x200000uLL;
            v304 = *(this + 1);
            if (v304 >= *(this + 2))
            {
              v307 = 0;
              *v5 = 1;
            }

            else
            {
              v305 = v304 + 1;
              v306 = *(*this + v304);
              *(this + 1) = v305;
              v307 = v306 != 0;
            }

            *(a1 + 335) = v307;
            goto LABEL_996;
          case 311:
            *(a1 + 368) |= 0x20000000000uLL;
            v429 = *(this + 1);
            if (v429 >= *(this + 2))
            {
              v432 = 0;
              *v5 = 1;
            }

            else
            {
              v430 = v429 + 1;
              v431 = *(*this + v429);
              *(this + 1) = v430;
              v432 = v431 != 0;
            }

            *(a1 + 355) = v432;
            goto LABEL_996;
          case 312:
            *(a1 + 368) |= 0x2000000000uLL;
            v282 = *(this + 1);
            if (v282 >= *(this + 2))
            {
              v285 = 0;
              *v5 = 1;
            }

            else
            {
              v283 = v282 + 1;
              v284 = *(*this + v282);
              *(this + 1) = v283;
              v285 = v284 != 0;
            }

            *(a1 + 351) = v285;
            goto LABEL_996;
          case 313:
            *(a1 + 360) |= 0x20000uLL;
            v296 = *(this + 1);
            v295 = *(this + 2);
            v297 = *this;
            if (v296 <= 0xFFFFFFFFFFFFFFF5 && v296 + 10 <= v295)
            {
              v298 = 0;
              v299 = 0;
              v300 = 0;
              v301 = (v297 + v296);
              v302 = v296 + 1;
              do
              {
                *v3 = v302;
                v303 = *v301++;
                v300 |= (v303 & 0x7F) << v298;
                if ((v303 & 0x80) == 0)
                {
                  goto LABEL_1099;
                }

                v298 += 7;
                ++v302;
                v16 = v299++ > 8;
              }

              while (!v16);
LABEL_745:
              LODWORD(v300) = 0;
              goto LABEL_1099;
            }

            v751 = 0;
            v752 = 0;
            v300 = 0;
            v19 = v295 >= v296;
            v753 = v295 - v296;
            if (!v19)
            {
              v753 = 0;
            }

            v754 = (v297 + v296);
            v755 = v296 + 1;
            while (2)
            {
              if (v753)
              {
                v756 = *v754;
                *v3 = v755;
                v300 |= (v756 & 0x7F) << v751;
                if (v756 < 0)
                {
                  v751 += 7;
                  --v753;
                  ++v754;
                  ++v755;
                  v16 = v752++ > 8;
                  if (v16)
                  {
                    goto LABEL_745;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v300) = 0;
                }
              }

              else
              {
                LODWORD(v300) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1099:
            *(a1 + 108) = v300;
            goto LABEL_996;
          case 314:
            *(a1 + 368) |= 0x800000uLL;
            v407 = *(this + 1);
            if (v407 >= *(this + 2))
            {
              v410 = 0;
              *v5 = 1;
            }

            else
            {
              v408 = v407 + 1;
              v409 = *(*this + v407);
              *(this + 1) = v408;
              v410 = v409 != 0;
            }

            *(a1 + 337) = v410;
            goto LABEL_996;
          case 315:
            *(a1 + 368) |= 0x1000000uLL;
            v268 = *(this + 1);
            if (v268 >= *(this + 2))
            {
              v271 = 0;
              *v5 = 1;
            }

            else
            {
              v269 = v268 + 1;
              v270 = *(*this + v268);
              *(this + 1) = v269;
              v271 = v270 != 0;
            }

            *(a1 + 338) = v271;
            goto LABEL_996;
          case 316:
            *(a1 + 368) |= 0x40uLL;
            v318 = *(this + 1);
            if (v318 >= *(this + 2))
            {
              v321 = 0;
              *v5 = 1;
            }

            else
            {
              v319 = v318 + 1;
              v320 = *(*this + v318);
              *(this + 1) = v319;
              v321 = v320 != 0;
            }

            *(a1 + 320) = v321;
            goto LABEL_996;
          case 317:
            *(a1 + 360) |= 0x40000uLL;
            v260 = *(this + 1);
            v259 = *(this + 2);
            v261 = *this;
            if (v260 <= 0xFFFFFFFFFFFFFFF5 && v260 + 10 <= v259)
            {
              v262 = 0;
              v263 = 0;
              v264 = 0;
              v265 = (v261 + v260);
              v266 = v260 + 1;
              do
              {
                *v3 = v266;
                v267 = *v265++;
                v264 |= (v267 & 0x7F) << v262;
                if ((v267 & 0x80) == 0)
                {
                  goto LABEL_1093;
                }

                v262 += 7;
                ++v266;
                v16 = v263++ > 8;
              }

              while (!v16);
LABEL_725:
              LODWORD(v264) = 0;
              goto LABEL_1093;
            }

            v739 = 0;
            v740 = 0;
            v264 = 0;
            v19 = v259 >= v260;
            v741 = v259 - v260;
            if (!v19)
            {
              v741 = 0;
            }

            v742 = (v261 + v260);
            v743 = v260 + 1;
            break;
          case 318:
            *(a1 + 368) |= 0x100000000000uLL;
            v364 = *(this + 1);
            if (v364 >= *(this + 2))
            {
              v367 = 0;
              *v5 = 1;
            }

            else
            {
              v365 = v364 + 1;
              v366 = *(*this + v364);
              *(this + 1) = v365;
              v367 = v366 != 0;
            }

            *(a1 + 358) = v367;
            goto LABEL_996;
          case 319:
            *(a1 + 368) |= 0x40000000000uLL;
            v425 = *(this + 1);
            if (v425 >= *(this + 2))
            {
              v428 = 0;
              *v5 = 1;
            }

            else
            {
              v426 = v425 + 1;
              v427 = *(*this + v425);
              *(this + 1) = v426;
              v428 = v427 != 0;
            }

            *(a1 + 356) = v428;
            goto LABEL_996;
          case 320:
            *(a1 + 368) |= 0x80000000000uLL;
            v488 = *(this + 1);
            if (v488 >= *(this + 2))
            {
              v491 = 0;
              *v5 = 1;
            }

            else
            {
              v489 = v488 + 1;
              v490 = *(*this + v488);
              *(this + 1) = v489;
              v491 = v490 != 0;
            }

            *(a1 + 357) = v491;
            goto LABEL_996;
          case 321:
            *(a1 + 368) |= 0x400000000uLL;
            v391 = *(this + 1);
            if (v391 >= *(this + 2))
            {
              v394 = 0;
              *v5 = 1;
            }

            else
            {
              v392 = v391 + 1;
              v393 = *(*this + v391);
              *(this + 1) = v392;
              v394 = v393 != 0;
            }

            *(a1 + 348) = v394;
            goto LABEL_996;
          case 322:
            *(a1 + 368) |= 0x200000000uLL;
            v403 = *(this + 1);
            if (v403 >= *(this + 2))
            {
              v406 = 0;
              *v5 = 1;
            }

            else
            {
              v404 = v403 + 1;
              v405 = *(*this + v403);
              *(this + 1) = v404;
              v406 = v405 != 0;
            }

            *(a1 + 347) = v406;
            goto LABEL_996;
          case 323:
            *(a1 + 368) |= 0x100000000uLL;
            v484 = *(this + 1);
            if (v484 >= *(this + 2))
            {
              v487 = 0;
              *v5 = 1;
            }

            else
            {
              v485 = v484 + 1;
              v486 = *(*this + v484);
              *(this + 1) = v485;
              v487 = v486 != 0;
            }

            *(a1 + 346) = v487;
            goto LABEL_996;
          default:
            JUMPOUT(0);
        }

        while (1)
        {
          if (!v741)
          {
            LODWORD(v264) = 0;
            *v5 = 1;
            goto LABEL_1093;
          }

          v744 = *v742;
          *v3 = v743;
          v264 |= (v744 & 0x7F) << v739;
          if ((v744 & 0x80) == 0)
          {
            break;
          }

          v739 += 7;
          --v741;
          ++v742;
          ++v743;
          v16 = v740++ > 8;
          if (v16)
          {
            goto LABEL_725;
          }
        }

        if (*v5)
        {
          LODWORD(v264) = 0;
        }

LABEL_1093:
        *(a1 + 112) = v264;
      }

      else
      {
        switch(v24)
        {
          case 1:
            *(a1 + 360) |= 0x800000uLL;
            v25 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 132) = *(*this + v25);
            goto LABEL_995;
          case 2:
            *(a1 + 360) |= 0x400000uLL;
            v411 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v411 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 128) = *(*this + v411);
            goto LABEL_995;
          case 3:
            *(a1 + 360) |= 0x1000000uLL;
            v352 = *(this + 1);
            v351 = *(this + 2);
            v353 = *this;
            if (v352 <= 0xFFFFFFFFFFFFFFF5 && v352 + 10 <= v351)
            {
              v354 = 0;
              v355 = 0;
              v356 = 0;
              v357 = (v353 + v352);
              v358 = v352 + 1;
              do
              {
                *v3 = v358;
                v359 = *v357++;
                v356 |= (v359 & 0x7F) << v354;
                if ((v359 & 0x80) == 0)
                {
                  goto LABEL_1105;
                }

                v354 += 7;
                ++v358;
                v16 = v355++ > 8;
              }

              while (!v16);
LABEL_779:
              LODWORD(v356) = 0;
              goto LABEL_1105;
            }

            v763 = 0;
            v764 = 0;
            v356 = 0;
            v19 = v351 >= v352;
            v765 = v351 - v352;
            if (!v19)
            {
              v765 = 0;
            }

            v766 = (v353 + v352);
            v767 = v352 + 1;
            while (2)
            {
              if (v765)
              {
                v768 = *v766;
                *v3 = v767;
                v356 |= (v768 & 0x7F) << v763;
                if (v768 < 0)
                {
                  v763 += 7;
                  --v765;
                  ++v766;
                  ++v767;
                  v16 = v764++ > 8;
                  if (v16)
                  {
                    goto LABEL_779;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v356) = 0;
                }
              }

              else
              {
                LODWORD(v356) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1105:
            *(a1 + 136) = v356;
            goto LABEL_996;
          case 4:
            *(a1 + 360) |= 0x20000000000000uLL;
            v378 = *(this + 1);
            v377 = *(this + 2);
            v379 = *this;
            if (v378 <= 0xFFFFFFFFFFFFFFF5 && v378 + 10 <= v377)
            {
              v380 = 0;
              v381 = 0;
              v382 = 0;
              v383 = (v379 + v378);
              v384 = v378 + 1;
              do
              {
                *v3 = v384;
                v385 = *v383++;
                v382 |= (v385 & 0x7F) << v380;
                if ((v385 & 0x80) == 0)
                {
                  goto LABEL_1111;
                }

                v380 += 7;
                ++v384;
                v16 = v381++ > 8;
              }

              while (!v16);
LABEL_803:
              LODWORD(v382) = 0;
              goto LABEL_1111;
            }

            v775 = 0;
            v776 = 0;
            v382 = 0;
            v19 = v377 >= v378;
            v777 = v377 - v378;
            if (!v19)
            {
              v777 = 0;
            }

            v778 = (v379 + v378);
            v779 = v378 + 1;
            while (2)
            {
              if (v777)
              {
                v780 = *v778;
                *v3 = v779;
                v382 |= (v780 & 0x7F) << v775;
                if (v780 < 0)
                {
                  v775 += 7;
                  --v777;
                  ++v778;
                  ++v779;
                  v16 = v776++ > 8;
                  if (v16)
                  {
                    goto LABEL_803;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v382) = 0;
                }
              }

              else
              {
                LODWORD(v382) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1111:
            *(a1 + 252) = v382;
            goto LABEL_996;
          case 5:
            *(a1 + 368) |= 2uLL;
            v312 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v312 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 300) = *(*this + v312);
            goto LABEL_995;
          case 6:
            *(a1 + 360) |= 0x800000000000000uLL;
            v446 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v446 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 276) = *(*this + v446);
            goto LABEL_995;
          case 7:
            *(a1 + 360) |= 0x800000000000uLL;
            v452 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v452 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 228) = *(*this + v452);
            goto LABEL_995;
          case 8:
            *(a1 + 360) |= 0x400000000000uLL;
            v390 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v390 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 224) = *(*this + v390);
            goto LABEL_995;
          case 9:
            *(a1 + 360) |= 0x200uLL;
            v475 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v475 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 76) = *(*this + v475);
            goto LABEL_995;
          case 10:
            *(a1 + 360) |= 0x100000000000000uLL;
            v327 = *(this + 1);
            v326 = *(this + 2);
            v328 = *this;
            if (v327 <= 0xFFFFFFFFFFFFFFF5 && v327 + 10 <= v326)
            {
              v329 = 0;
              v330 = 0;
              v331 = 0;
              v332 = (v328 + v327);
              v333 = v327 + 1;
              do
              {
                *v3 = v333;
                v334 = *v332++;
                v331 |= (v334 & 0x7F) << v329;
                if ((v334 & 0x80) == 0)
                {
                  goto LABEL_1102;
                }

                v329 += 7;
                ++v333;
                v16 = v330++ > 8;
              }

              while (!v16);
LABEL_763:
              LODWORD(v331) = 0;
              goto LABEL_1102;
            }

            v757 = 0;
            v758 = 0;
            v331 = 0;
            v19 = v326 >= v327;
            v759 = v326 - v327;
            if (!v19)
            {
              v759 = 0;
            }

            v760 = (v328 + v327);
            v761 = v327 + 1;
            while (2)
            {
              if (v759)
              {
                v762 = *v760;
                *v3 = v761;
                v331 |= (v762 & 0x7F) << v757;
                if (v762 < 0)
                {
                  v757 += 7;
                  --v759;
                  ++v760;
                  ++v761;
                  v16 = v758++ > 8;
                  if (v16)
                  {
                    goto LABEL_763;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v331) = 0;
                }
              }

              else
              {
                LODWORD(v331) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1102:
            *(a1 + 264) = v331;
            goto LABEL_996;
          case 11:
            *(a1 + 360) |= 0x2000000uLL;
            v467 = *(this + 1);
            v466 = *(this + 2);
            v468 = *this;
            if (v467 <= 0xFFFFFFFFFFFFFFF5 && v467 + 10 <= v466)
            {
              v469 = 0;
              v470 = 0;
              v471 = 0;
              v472 = (v468 + v467);
              v473 = v467 + 1;
              do
              {
                *v3 = v473;
                v474 = *v472++;
                v471 |= (v474 & 0x7F) << v469;
                if ((v474 & 0x80) == 0)
                {
                  goto LABEL_1126;
                }

                v469 += 7;
                ++v473;
                v16 = v470++ > 8;
              }

              while (!v16);
LABEL_867:
              LODWORD(v471) = 0;
              goto LABEL_1126;
            }

            v805 = 0;
            v806 = 0;
            v471 = 0;
            v19 = v466 >= v467;
            v807 = v466 - v467;
            if (!v19)
            {
              v807 = 0;
            }

            v808 = (v468 + v467);
            v809 = v467 + 1;
            while (2)
            {
              if (v807)
              {
                v810 = *v808;
                *v3 = v809;
                v471 |= (v810 & 0x7F) << v805;
                if (v810 < 0)
                {
                  v805 += 7;
                  --v807;
                  ++v808;
                  ++v809;
                  v16 = v806++ > 8;
                  if (v16)
                  {
                    goto LABEL_867;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v471) = 0;
                }
              }

              else
              {
                LODWORD(v471) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1126:
            *(a1 + 140) = v471;
            goto LABEL_996;
          case 12:
            *(a1 + 360) |= 0x10000uLL;
            v290 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v290 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 104) = *(*this + v290);
            goto LABEL_995;
          case 13:
            *(a1 + 368) |= 0x10uLL;
            v317 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v317 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 312) = *(*this + v317);
            goto LABEL_995;
          case 14:
            *(a1 + 368) |= 0x20uLL;
            v451 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v451 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 316) = *(*this + v451);
            goto LABEL_995;
          case 15:
            *(a1 + 360) |= 0x100000000000uLL;
            v274 = *(this + 1);
            v273 = *(this + 2);
            v275 = *this;
            if (v274 <= 0xFFFFFFFFFFFFFFF5 && v274 + 10 <= v273)
            {
              v276 = 0;
              v277 = 0;
              v278 = 0;
              v279 = (v275 + v274);
              v280 = v274 + 1;
              do
              {
                *v3 = v280;
                v281 = *v279++;
                v278 |= (v281 & 0x7F) << v276;
                if ((v281 & 0x80) == 0)
                {
                  goto LABEL_1096;
                }

                v276 += 7;
                ++v280;
                v16 = v277++ > 8;
              }

              while (!v16);
LABEL_735:
              LODWORD(v278) = 0;
              goto LABEL_1096;
            }

            v745 = 0;
            v746 = 0;
            v278 = 0;
            v19 = v273 >= v274;
            v747 = v273 - v274;
            if (!v19)
            {
              v747 = 0;
            }

            v748 = (v275 + v274);
            v749 = v274 + 1;
            while (2)
            {
              if (v747)
              {
                v750 = *v748;
                *v3 = v749;
                v278 |= (v750 & 0x7F) << v745;
                if (v750 < 0)
                {
                  v745 += 7;
                  --v747;
                  ++v748;
                  ++v749;
                  v16 = v746++ > 8;
                  if (v16)
                  {
                    goto LABEL_735;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v278) = 0;
                }
              }

              else
              {
                LODWORD(v278) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1096:
            *(a1 + 216) = v278;
            goto LABEL_996;
          case 16:
            *(a1 + 360) |= 0x40000000000uLL;
            v369 = *(this + 1);
            v368 = *(this + 2);
            v370 = *this;
            if (v369 <= 0xFFFFFFFFFFFFFFF5 && v369 + 10 <= v368)
            {
              v371 = 0;
              v372 = 0;
              v373 = 0;
              v374 = (v370 + v369);
              v375 = v369 + 1;
              do
              {
                *v3 = v375;
                v376 = *v374++;
                v373 |= (v376 & 0x7F) << v371;
                if ((v376 & 0x80) == 0)
                {
                  goto LABEL_1108;
                }

                v371 += 7;
                ++v375;
                v16 = v372++ > 8;
              }

              while (!v16);
LABEL_795:
              LODWORD(v373) = 0;
              goto LABEL_1108;
            }

            v769 = 0;
            v770 = 0;
            v373 = 0;
            v19 = v368 >= v369;
            v771 = v368 - v369;
            if (!v19)
            {
              v771 = 0;
            }

            v772 = (v370 + v369);
            v773 = v369 + 1;
            while (2)
            {
              if (v771)
              {
                v774 = *v772;
                *v3 = v773;
                v373 |= (v774 & 0x7F) << v769;
                if (v774 < 0)
                {
                  v769 += 7;
                  --v771;
                  ++v772;
                  ++v773;
                  v16 = v770++ > 8;
                  if (v16)
                  {
                    goto LABEL_795;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v373) = 0;
                }
              }

              else
              {
                LODWORD(v373) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1108:
            *(a1 + 208) = v373;
            goto LABEL_996;
          case 17:
            *(a1 + 360) |= 0x8000000000000uLL;
            v272 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v272 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 244) = *(*this + v272);
            goto LABEL_995;
          case 18:
            *(a1 + 360) |= 0x2000000000000000uLL;
            v438 = *(this + 1);
            v437 = *(this + 2);
            v439 = *this;
            if (v438 <= 0xFFFFFFFFFFFFFFF5 && v438 + 10 <= v437)
            {
              v440 = 0;
              v441 = 0;
              v442 = 0;
              v443 = (v439 + v438);
              v444 = v438 + 1;
              do
              {
                *v3 = v444;
                v445 = *v443++;
                v442 |= (v445 & 0x7F) << v440;
                if ((v445 & 0x80) == 0)
                {
                  goto LABEL_1120;
                }

                v440 += 7;
                ++v444;
                v16 = v441++ > 8;
              }

              while (!v16);
LABEL_843:
              LODWORD(v442) = 0;
              goto LABEL_1120;
            }

            v793 = 0;
            v794 = 0;
            v442 = 0;
            v19 = v437 >= v438;
            v795 = v437 - v438;
            if (!v19)
            {
              v795 = 0;
            }

            v796 = (v439 + v438);
            v797 = v438 + 1;
            while (2)
            {
              if (v795)
              {
                v798 = *v796;
                *v3 = v797;
                v442 |= (v798 & 0x7F) << v793;
                if (v798 < 0)
                {
                  v793 += 7;
                  --v795;
                  ++v796;
                  ++v797;
                  v16 = v794++ > 8;
                  if (v16)
                  {
                    goto LABEL_843;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v442) = 0;
                }
              }

              else
              {
                LODWORD(v442) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1120:
            *(a1 + 284) = v442;
            goto LABEL_996;
          case 19:
            *(a1 + 368) |= 4uLL;
            v458 = *(this + 1);
            v457 = *(this + 2);
            v459 = *this;
            if (v458 <= 0xFFFFFFFFFFFFFFF5 && v458 + 10 <= v457)
            {
              v460 = 0;
              v461 = 0;
              v462 = 0;
              v463 = (v459 + v458);
              v464 = v458 + 1;
              do
              {
                *v3 = v464;
                v465 = *v463++;
                v462 |= (v465 & 0x7F) << v460;
                if ((v465 & 0x80) == 0)
                {
                  goto LABEL_1123;
                }

                v460 += 7;
                ++v464;
                v16 = v461++ > 8;
              }

              while (!v16);
LABEL_857:
              LODWORD(v462) = 0;
              goto LABEL_1123;
            }

            v799 = 0;
            v800 = 0;
            v462 = 0;
            v19 = v457 >= v458;
            v801 = v457 - v458;
            if (!v19)
            {
              v801 = 0;
            }

            v802 = (v459 + v458);
            v803 = v458 + 1;
            while (2)
            {
              if (v801)
              {
                v804 = *v802;
                *v3 = v803;
                v462 |= (v804 & 0x7F) << v799;
                if (v804 < 0)
                {
                  v799 += 7;
                  --v801;
                  ++v802;
                  ++v803;
                  v16 = v800++ > 8;
                  if (v16)
                  {
                    goto LABEL_857;
                  }

                  continue;
                }

                if (*v5)
                {
                  LODWORD(v462) = 0;
                }
              }

              else
              {
                LODWORD(v462) = 0;
                *v5 = 1;
              }

              break;
            }

LABEL_1123:
            *(a1 + 304) = v462;
            goto LABEL_996;
          case 20:
            *(a1 + 360) |= 0x4000000uLL;
            v492 = *v3;
            if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v492 + 4 > *(this + 2))
            {
              goto LABEL_494;
            }

            *(a1 + 144) = *(*this + v492);
            goto LABEL_995;
          default:
            switch(v24)
            {
              case 'e':
                *(a1 + 360) |= 0x80uLL;
                v41 = *(this + 1);
                v40 = *(this + 2);
                v42 = *this;
                if (v41 <= 0xFFFFFFFFFFFFFFF5 && v41 + 10 <= v40)
                {
                  v43 = 0;
                  v44 = 0;
                  v45 = 0;
                  v46 = (v42 + v41);
                  v47 = v41 + 1;
                  do
                  {
                    *v3 = v47;
                    v48 = *v46++;
                    v45 |= (v48 & 0x7F) << v43;
                    if ((v48 & 0x80) == 0)
                    {
                      goto LABEL_1114;
                    }

                    v43 += 7;
                    ++v47;
                    v16 = v44++ > 8;
                  }

                  while (!v16);
LABEL_813:
                  v45 = 0;
                  goto LABEL_1114;
                }

                v781 = 0;
                v782 = 0;
                v45 = 0;
                v19 = v40 >= v41;
                v783 = v40 - v41;
                if (!v19)
                {
                  v783 = 0;
                }

                v784 = (v42 + v41);
                v785 = v41 + 1;
                while (2)
                {
                  if (v783)
                  {
                    v786 = *v784;
                    *v3 = v785;
                    v45 |= (v786 & 0x7F) << v781;
                    if (v786 < 0)
                    {
                      v781 += 7;
                      --v783;
                      ++v784;
                      ++v785;
                      v16 = v782++ > 8;
                      if (v16)
                      {
                        goto LABEL_813;
                      }

                      continue;
                    }

                    if (*v5)
                    {
                      v45 = 0;
                    }
                  }

                  else
                  {
                    v45 = 0;
                    *v5 = 1;
                  }

                  break;
                }

LABEL_1114:
                *(a1 + 64) = v45;
                goto LABEL_996;
              case 'f':
                *(a1 + 360) |= 1uLL;
                v413 = *(this + 1);
                v412 = *(this + 2);
                v414 = *this;
                if (v413 <= 0xFFFFFFFFFFFFFFF5 && v413 + 10 <= v412)
                {
                  v415 = 0;
                  v416 = 0;
                  v417 = 0;
                  v418 = (v414 + v413);
                  v419 = v413 + 1;
                  do
                  {
                    *v3 = v419;
                    v420 = *v418++;
                    v417 |= (v420 & 0x7F) << v415;
                    if ((v420 & 0x80) == 0)
                    {
                      goto LABEL_1117;
                    }

                    v415 += 7;
                    ++v419;
                    v16 = v416++ > 8;
                  }

                  while (!v16);
LABEL_823:
                  v417 = 0;
                  goto LABEL_1117;
                }

                v787 = 0;
                v788 = 0;
                v417 = 0;
                v19 = v412 >= v413;
                v789 = v412 - v413;
                if (!v19)
                {
                  v789 = 0;
                }

                v790 = (v414 + v413);
                v791 = v413 + 1;
                break;
              case 'g':
                *(a1 + 368) |= 0x80uLL;
                v360 = *(this + 1);
                if (v360 >= *(this + 2))
                {
                  v363 = 0;
                  *v5 = 1;
                }

                else
                {
                  v361 = v360 + 1;
                  v362 = *(*this + v360);
                  *(this + 1) = v361;
                  v363 = v362 != 0;
                }

                *(a1 + 321) = v363;
                goto LABEL_996;
              case 'h':
                *(a1 + 368) |= 0x100uLL;
                v386 = *(this + 1);
                if (v386 >= *(this + 2))
                {
                  v389 = 0;
                  *v5 = 1;
                }

                else
                {
                  v387 = v386 + 1;
                  v388 = *(*this + v386);
                  *(this + 1) = v387;
                  v389 = v388 != 0;
                }

                *(a1 + 322) = v389;
                goto LABEL_996;
              case 'i':
                *(a1 + 368) |= 0x10000uLL;
                v313 = *(this + 1);
                if (v313 >= *(this + 2))
                {
                  v316 = 0;
                  *v5 = 1;
                }

                else
                {
                  v314 = v313 + 1;
                  v315 = *(*this + v313);
                  *(this + 1) = v314;
                  v316 = v315 != 0;
                }

                *(a1 + 330) = v316;
                goto LABEL_996;
              case 'j':
                *(a1 + 368) |= 0x20000uLL;
                v447 = *(this + 1);
                if (v447 >= *(this + 2))
                {
                  v450 = 0;
                  *v5 = 1;
                }

                else
                {
                  v448 = v447 + 1;
                  v449 = *(*this + v447);
                  *(this + 1) = v448;
                  v450 = v449 != 0;
                }

                *(a1 + 331) = v450;
                goto LABEL_996;
              case 'k':
                *(a1 + 368) |= 0x10000000uLL;
                v453 = *(this + 1);
                if (v453 >= *(this + 2))
                {
                  v456 = 0;
                  *v5 = 1;
                }

                else
                {
                  v454 = v453 + 1;
                  v455 = *(*this + v453);
                  *(this + 1) = v454;
                  v456 = v455 != 0;
                }

                *(a1 + 342) = v456;
                goto LABEL_996;
              case 'l':
                *(a1 + 368) |= 0x4000000uLL;
                v399 = *(this + 1);
                if (v399 >= *(this + 2))
                {
                  v402 = 0;
                  *v5 = 1;
                }

                else
                {
                  v400 = v399 + 1;
                  v401 = *(*this + v399);
                  *(this + 1) = v400;
                  v402 = v401 != 0;
                }

                *(a1 + 340) = v402;
                goto LABEL_996;
              case 'm':
                *(a1 + 368) |= 0x2000uLL;
                v480 = *(this + 1);
                if (v480 >= *(this + 2))
                {
                  v483 = 0;
                  *v5 = 1;
                }

                else
                {
                  v481 = v480 + 1;
                  v482 = *(*this + v480);
                  *(this + 1) = v481;
                  v483 = v482 != 0;
                }

                *(a1 + 327) = v483;
                goto LABEL_996;
              case 'n':
                *(a1 + 368) |= 0x20000000uLL;
                v335 = *(this + 1);
                if (v335 >= *(this + 2))
                {
                  v338 = 0;
                  *v5 = 1;
                }

                else
                {
                  v336 = v335 + 1;
                  v337 = *(*this + v335);
                  *(this + 1) = v336;
                  v338 = v337 != 0;
                }

                *(a1 + 343) = v338;
                goto LABEL_996;
              case 'o':
                *(a1 + 368) |= 0x40000000uLL;
                v476 = *(this + 1);
                if (v476 >= *(this + 2))
                {
                  v479 = 0;
                  *v5 = 1;
                }

                else
                {
                  v477 = v476 + 1;
                  v478 = *(*this + v476);
                  *(this + 1) = v477;
                  v479 = v478 != 0;
                }

                *(a1 + 344) = v479;
                goto LABEL_996;
              case 'p':
                *(a1 + 368) |= 0x400uLL;
                v291 = *(this + 1);
                if (v291 >= *(this + 2))
                {
                  v294 = 0;
                  *v5 = 1;
                }

                else
                {
                  v292 = v291 + 1;
                  v293 = *(*this + v291);
                  *(this + 1) = v292;
                  v294 = v293 != 0;
                }

                *(a1 + 324) = v294;
                goto LABEL_996;
              case 'q':
                *(a1 + 368) |= 0x2000000uLL;
                v322 = *(this + 1);
                if (v322 >= *(this + 2))
                {
                  v325 = 0;
                  *v5 = 1;
                }

                else
                {
                  v323 = v322 + 1;
                  v324 = *(*this + v322);
                  *(this + 1) = v323;
                  v325 = v324 != 0;
                }

                *(a1 + 339) = v325;
                goto LABEL_996;
              default:
                goto LABEL_194;
            }

            break;
        }

        while (1)
        {
          if (!v789)
          {
            v417 = 0;
            *v5 = 1;
            goto LABEL_1117;
          }

          v792 = *v790;
          *v3 = v791;
          v417 |= (v792 & 0x7F) << v787;
          if ((v792 & 0x80) == 0)
          {
            break;
          }

          v787 += 7;
          --v789;
          ++v790;
          ++v791;
          v16 = v788++ > 8;
          if (v16)
          {
            goto LABEL_823;
          }
        }

        if (*v5)
        {
          v417 = 0;
        }

LABEL_1117:
        *(a1 + 8) = v417;
      }

      goto LABEL_996;
    }

    if (v24 <= 901)
    {
      break;
    }

    if (v24 <= 1200)
    {
      if (v24 <= 1102)
      {
        if (v24 > 1100)
        {
          if (v24 == 1101)
          {
            *(a1 + 360) |= 0x20000000uLL;
            v148 = *(this + 1);
            v147 = *(this + 2);
            v149 = *this;
            if (v148 > 0xFFFFFFFFFFFFFFF5 || v148 + 10 > v147)
            {
              v619 = 0;
              v620 = 0;
              v152 = 0;
              v19 = v147 >= v148;
              v621 = v147 - v148;
              if (!v19)
              {
                v621 = 0;
              }

              v622 = (v149 + v148);
              v623 = v148 + 1;
              while (1)
              {
                if (!v621)
                {
                  LODWORD(v152) = 0;
                  *v5 = 1;
                  goto LABEL_1006;
                }

                v624 = *v622;
                *v3 = v623;
                v152 |= (v624 & 0x7F) << v619;
                if ((v624 & 0x80) == 0)
                {
                  break;
                }

                v619 += 7;
                --v621;
                ++v622;
                ++v623;
                v16 = v620++ > 8;
                if (v16)
                {
LABEL_555:
                  LODWORD(v152) = 0;
                  goto LABEL_1006;
                }
              }

              if (*v5)
              {
                LODWORD(v152) = 0;
              }
            }

            else
            {
              v150 = 0;
              v151 = 0;
              v152 = 0;
              v153 = (v149 + v148);
              v154 = v148 + 1;
              while (1)
              {
                *v3 = v154;
                v155 = *v153++;
                v152 |= (v155 & 0x7F) << v150;
                if ((v155 & 0x80) == 0)
                {
                  break;
                }

                v150 += 7;
                ++v154;
                v16 = v151++ > 8;
                if (v16)
                {
                  goto LABEL_555;
                }
              }
            }

LABEL_1006:
            *(a1 + 156) = v152;
          }

          else
          {
            *(a1 + 360) |= 0x80000000uLL;
            v102 = *(this + 1);
            v101 = *(this + 2);
            v103 = *this;
            if (v102 > 0xFFFFFFFFFFFFFFF5 || v102 + 10 > v101)
            {
              v643 = 0;
              v644 = 0;
              v106 = 0;
              v19 = v101 >= v102;
              v645 = v101 - v102;
              if (!v19)
              {
                v645 = 0;
              }

              v646 = (v103 + v102);
              v647 = v102 + 1;
              while (1)
              {
                if (!v645)
                {
                  LODWORD(v106) = 0;
                  *v5 = 1;
                  goto LABEL_1018;
                }

                v648 = *v646;
                *v3 = v647;
                v106 |= (v648 & 0x7F) << v643;
                if ((v648 & 0x80) == 0)
                {
                  break;
                }

                v643 += 7;
                --v645;
                ++v646;
                ++v647;
                v16 = v644++ > 8;
                if (v16)
                {
LABEL_591:
                  LODWORD(v106) = 0;
                  goto LABEL_1018;
                }
              }

              if (*v5)
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              v104 = 0;
              v105 = 0;
              v106 = 0;
              v107 = (v103 + v102);
              v108 = v102 + 1;
              while (1)
              {
                *v3 = v108;
                v109 = *v107++;
                v106 |= (v109 & 0x7F) << v104;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                ++v108;
                v16 = v105++ > 8;
                if (v16)
                {
                  goto LABEL_591;
                }
              }
            }

LABEL_1018:
            *(a1 + 164) = v106;
          }

          goto LABEL_996;
        }

        if (v24 == 902)
        {
          *(a1 + 368) |= 0x400000uLL;
          v139 = *(this + 1);
          if (v139 >= *(this + 2))
          {
            v142 = 0;
            *v5 = 1;
          }

          else
          {
            v140 = v139 + 1;
            v141 = *(*this + v139);
            *(this + 1) = v140;
            v142 = v141 != 0;
          }

          *(a1 + 336) = v142;
          goto LABEL_996;
        }

        if (v24 == 1001)
        {
          *(a1 + 368) |= 8uLL;
          v51 = *(this + 1);
          v50 = *(this + 2);
          v52 = *this;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
          {
            v631 = 0;
            v632 = 0;
            v55 = 0;
            v19 = v50 >= v51;
            v633 = v50 - v51;
            if (!v19)
            {
              v633 = 0;
            }

            v634 = (v52 + v51);
            v635 = v51 + 1;
            while (1)
            {
              if (!v633)
              {
                LODWORD(v55) = 0;
                *v5 = 1;
                goto LABEL_1012;
              }

              v636 = *v634;
              *v3 = v635;
              v55 |= (v636 & 0x7F) << v631;
              if ((v636 & 0x80) == 0)
              {
                break;
              }

              v631 += 7;
              --v633;
              ++v634;
              ++v635;
              v16 = v632++ > 8;
              if (v16)
              {
LABEL_575:
                LODWORD(v55) = 0;
                goto LABEL_1012;
              }
            }

            if (*v5)
            {
              LODWORD(v55) = 0;
            }
          }

          else
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            while (1)
            {
              *v3 = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v57;
              v16 = v54++ > 8;
              if (v16)
              {
                goto LABEL_575;
              }
            }
          }

LABEL_1012:
          *(a1 + 308) = v55;
          goto LABEL_996;
        }

        goto LABEL_194;
      }

      if (v24 <= 1104)
      {
        if (v24 == 1103)
        {
          *(a1 + 368) |= 0x4000000000uLL;
          v143 = *(this + 1);
          if (v143 >= *(this + 2))
          {
            v146 = 0;
            *v5 = 1;
          }

          else
          {
            v144 = v143 + 1;
            v145 = *(*this + v143);
            *(this + 1) = v144;
            v146 = v145 != 0;
          }

          *(a1 + 352) = v146;
        }

        else
        {
          *(a1 + 360) |= 0x100000000uLL;
          v70 = *(this + 1);
          v69 = *(this + 2);
          v71 = *this;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v69)
          {
            v637 = 0;
            v638 = 0;
            v74 = 0;
            v19 = v69 >= v70;
            v639 = v69 - v70;
            if (!v19)
            {
              v639 = 0;
            }

            v640 = (v71 + v70);
            v641 = v70 + 1;
            while (1)
            {
              if (!v639)
              {
                LODWORD(v74) = 0;
                *v5 = 1;
                goto LABEL_1015;
              }

              v642 = *v640;
              *v3 = v641;
              v74 |= (v642 & 0x7F) << v637;
              if ((v642 & 0x80) == 0)
              {
                break;
              }

              v637 += 7;
              --v639;
              ++v640;
              ++v641;
              v16 = v638++ > 8;
              if (v16)
              {
LABEL_583:
                LODWORD(v74) = 0;
                goto LABEL_1015;
              }
            }

            if (*v5)
            {
              LODWORD(v74) = 0;
            }
          }

          else
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            v75 = (v71 + v70);
            v76 = v70 + 1;
            while (1)
            {
              *v3 = v76;
              v77 = *v75++;
              v74 |= (v77 & 0x7F) << v72;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              ++v76;
              v16 = v73++ > 8;
              if (v16)
              {
                goto LABEL_583;
              }
            }
          }

LABEL_1015:
          *(a1 + 168) = v74;
        }

        goto LABEL_996;
      }

      if (v24 == 1105)
      {
        *(a1 + 360) |= 0x40000000uLL;
        v157 = *(this + 1);
        v156 = *(this + 2);
        v158 = *this;
        if (v157 > 0xFFFFFFFFFFFFFFF5 || v157 + 10 > v156)
        {
          v625 = 0;
          v626 = 0;
          v161 = 0;
          v19 = v156 >= v157;
          v627 = v156 - v157;
          if (!v19)
          {
            v627 = 0;
          }

          v628 = (v158 + v157);
          v629 = v157 + 1;
          while (1)
          {
            if (!v627)
            {
              LODWORD(v161) = 0;
              *v5 = 1;
              goto LABEL_1009;
            }

            v630 = *v628;
            *v3 = v629;
            v161 |= (v630 & 0x7F) << v625;
            if ((v630 & 0x80) == 0)
            {
              break;
            }

            v625 += 7;
            --v627;
            ++v628;
            ++v629;
            v16 = v626++ > 8;
            if (v16)
            {
LABEL_563:
              LODWORD(v161) = 0;
              goto LABEL_1009;
            }
          }

          if (*v5)
          {
            LODWORD(v161) = 0;
          }
        }

        else
        {
          v159 = 0;
          v160 = 0;
          v161 = 0;
          v162 = (v158 + v157);
          v163 = v157 + 1;
          while (1)
          {
            *v3 = v163;
            v164 = *v162++;
            v161 |= (v164 & 0x7F) << v159;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v159 += 7;
            ++v163;
            v16 = v160++ > 8;
            if (v16)
            {
              goto LABEL_563;
            }
          }
        }

LABEL_1009:
        *(a1 + 160) = v161;
        goto LABEL_996;
      }

      if (v24 != 1106)
      {
        goto LABEL_194;
      }

      *(a1 + 360) |= 0x10000000000000uLL;
      v110 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(this + 2))
      {
LABEL_494:
        *v5 = 1;
        goto LABEL_996;
      }

      *(a1 + 248) = *(*this + v110);
      goto LABEL_995;
    }

    switch(v24)
    {
      case 1301:
        *(a1 + 360) |= 0x8000uLL;
        v35 = *v3;
        if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(this + 2))
        {
          goto LABEL_494;
        }

        *(a1 + 100) = *(*this + v35);
        goto LABEL_995;
      case 1302:
        *(a1 + 360) |= 0x80000000000uLL;
        v571 = *(this + 1);
        v570 = *(this + 2);
        v572 = *this;
        if (v571 <= 0xFFFFFFFFFFFFFFF5 && v571 + 10 <= v570)
        {
          v573 = 0;
          v574 = 0;
          v575 = 0;
          v576 = (v572 + v571);
          v577 = v571 + 1;
          do
          {
            *v3 = v577;
            v578 = *v576++;
            v575 |= (v578 & 0x7F) << v573;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1170;
            }

            v573 += 7;
            ++v577;
            v16 = v574++ > 8;
          }

          while (!v16);
LABEL_957:
          LODWORD(v575) = 0;
          goto LABEL_1170;
        }

        v865 = 0;
        v866 = 0;
        v575 = 0;
        v19 = v570 >= v571;
        v867 = v570 - v571;
        if (!v19)
        {
          v867 = 0;
        }

        v868 = (v572 + v571);
        v869 = v571 + 1;
        while (2)
        {
          if (v867)
          {
            v870 = *v868;
            *v3 = v869;
            v575 |= (v870 & 0x7F) << v865;
            if (v870 < 0)
            {
              v865 += 7;
              --v867;
              ++v868;
              ++v869;
              v16 = v866++ > 8;
              if (v16)
              {
                goto LABEL_957;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v575) = 0;
            }
          }

          else
          {
            LODWORD(v575) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1170:
        *(a1 + 212) = v575;
        break;
      case 1303:
        *(a1 + 360) |= 0x20000000000uLL;
        v539 = *(this + 1);
        v538 = *(this + 2);
        v540 = *this;
        if (v539 <= 0xFFFFFFFFFFFFFFF5 && v539 + 10 <= v538)
        {
          v541 = 0;
          v542 = 0;
          v543 = 0;
          v544 = (v540 + v539);
          v545 = v539 + 1;
          do
          {
            *v3 = v545;
            v546 = *v544++;
            v543 |= (v546 & 0x7F) << v541;
            if ((v546 & 0x80) == 0)
            {
              goto LABEL_1161;
            }

            v541 += 7;
            ++v545;
            v16 = v542++ > 8;
          }

          while (!v16);
LABEL_933:
          LODWORD(v543) = 0;
          goto LABEL_1161;
        }

        v847 = 0;
        v848 = 0;
        v543 = 0;
        v19 = v538 >= v539;
        v849 = v538 - v539;
        if (!v19)
        {
          v849 = 0;
        }

        v850 = (v540 + v539);
        v851 = v539 + 1;
        while (2)
        {
          if (v849)
          {
            v852 = *v850;
            *v3 = v851;
            v543 |= (v852 & 0x7F) << v847;
            if (v852 < 0)
            {
              v847 += 7;
              --v849;
              ++v850;
              ++v851;
              v16 = v848++ > 8;
              if (v16)
              {
                goto LABEL_933;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v543) = 0;
            }
          }

          else
          {
            LODWORD(v543) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1161:
        *(a1 + 204) = v543;
        break;
      case 1304:
        *(a1 + 360) |= 0x1000000000uLL;
        v558 = *(this + 1);
        v557 = *(this + 2);
        v559 = *this;
        if (v558 <= 0xFFFFFFFFFFFFFFF5 && v558 + 10 <= v557)
        {
          v560 = 0;
          v561 = 0;
          v562 = 0;
          v563 = (v559 + v558);
          v564 = v558 + 1;
          do
          {
            *v3 = v564;
            v565 = *v563++;
            v562 |= (v565 & 0x7F) << v560;
            if ((v565 & 0x80) == 0)
            {
              goto LABEL_1167;
            }

            v560 += 7;
            ++v564;
            v16 = v561++ > 8;
          }

          while (!v16);
LABEL_949:
          LODWORD(v562) = 0;
          goto LABEL_1167;
        }

        v859 = 0;
        v860 = 0;
        v562 = 0;
        v19 = v557 >= v558;
        v861 = v557 - v558;
        if (!v19)
        {
          v861 = 0;
        }

        v862 = (v559 + v558);
        v863 = v558 + 1;
        while (2)
        {
          if (v861)
          {
            v864 = *v862;
            *v3 = v863;
            v562 |= (v864 & 0x7F) << v859;
            if (v864 < 0)
            {
              v859 += 7;
              --v861;
              ++v862;
              ++v863;
              v16 = v860++ > 8;
              if (v16)
              {
                goto LABEL_949;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v562) = 0;
            }
          }

          else
          {
            LODWORD(v562) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1167:
        *(a1 + 184) = v562;
        break;
      case 1305:
        *(a1 + 360) |= 0x200000000uLL;
        v512 = *(this + 1);
        v511 = *(this + 2);
        v513 = *this;
        if (v512 <= 0xFFFFFFFFFFFFFFF5 && v512 + 10 <= v511)
        {
          v514 = 0;
          v515 = 0;
          v516 = 0;
          v517 = (v513 + v512);
          v518 = v512 + 1;
          do
          {
            *v3 = v518;
            v519 = *v517++;
            v516 |= (v519 & 0x7F) << v514;
            if ((v519 & 0x80) == 0)
            {
              goto LABEL_1149;
            }

            v514 += 7;
            ++v518;
            v16 = v515++ > 8;
          }

          while (!v16);
LABEL_901:
          LODWORD(v516) = 0;
          goto LABEL_1149;
        }

        v823 = 0;
        v824 = 0;
        v516 = 0;
        v19 = v511 >= v512;
        v825 = v511 - v512;
        if (!v19)
        {
          v825 = 0;
        }

        v826 = (v513 + v512);
        v827 = v512 + 1;
        while (2)
        {
          if (v825)
          {
            v828 = *v826;
            *v3 = v827;
            v516 |= (v828 & 0x7F) << v823;
            if (v828 < 0)
            {
              v823 += 7;
              --v825;
              ++v826;
              ++v827;
              v16 = v824++ > 8;
              if (v16)
              {
                goto LABEL_901;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v516) = 0;
            }
          }

          else
          {
            LODWORD(v516) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1149:
        *(a1 + 172) = v516;
        break;
      case 1306:
        *(a1 + 360) |= 0x800000000uLL;
        v580 = *(this + 1);
        v579 = *(this + 2);
        v581 = *this;
        if (v580 <= 0xFFFFFFFFFFFFFFF5 && v580 + 10 <= v579)
        {
          v582 = 0;
          v583 = 0;
          v584 = 0;
          v585 = (v581 + v580);
          v586 = v580 + 1;
          do
          {
            *v3 = v586;
            v587 = *v585++;
            v584 |= (v587 & 0x7F) << v582;
            if ((v587 & 0x80) == 0)
            {
              goto LABEL_1173;
            }

            v582 += 7;
            ++v586;
            v16 = v583++ > 8;
          }

          while (!v16);
LABEL_967:
          LODWORD(v584) = 0;
          goto LABEL_1173;
        }

        v871 = 0;
        v872 = 0;
        v584 = 0;
        v19 = v579 >= v580;
        v873 = v579 - v580;
        if (!v19)
        {
          v873 = 0;
        }

        v874 = (v581 + v580);
        v875 = v580 + 1;
        while (2)
        {
          if (v873)
          {
            v876 = *v874;
            *v3 = v875;
            v584 |= (v876 & 0x7F) << v871;
            if (v876 < 0)
            {
              v871 += 7;
              --v873;
              ++v874;
              ++v875;
              v16 = v872++ > 8;
              if (v16)
              {
                goto LABEL_967;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v584) = 0;
            }
          }

          else
          {
            LODWORD(v584) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1173:
        *(a1 + 180) = v584;
        break;
      case 1307:
        *(a1 + 368) |= 0x200uLL;
        v597 = *(this + 1);
        if (v597 >= *(this + 2))
        {
          v600 = 0;
          *v5 = 1;
        }

        else
        {
          v598 = v597 + 1;
          v599 = *(*this + v597);
          *(this + 1) = v598;
          v600 = v599 != 0;
        }

        *(a1 + 323) = v600;
        break;
      case 1308:
        *(a1 + 368) |= 0x80000uLL;
        v566 = *(this + 1);
        if (v566 >= *(this + 2))
        {
          v569 = 0;
          *v5 = 1;
        }

        else
        {
          v567 = v566 + 1;
          v568 = *(*this + v566);
          *(this + 1) = v567;
          v569 = v568 != 0;
        }

        *(a1 + 333) = v569;
        break;
      case 1309:
        *(a1 + 360) |= 0x400000000uLL;
        v611 = *(this + 1);
        v610 = *(this + 2);
        v612 = *this;
        if (v611 <= 0xFFFFFFFFFFFFFFF5 && v611 + 10 <= v610)
        {
          v613 = 0;
          v614 = 0;
          v615 = 0;
          v616 = (v612 + v611);
          v617 = v611 + 1;
          do
          {
            *v3 = v617;
            v618 = *v616++;
            v615 |= (v618 & 0x7F) << v613;
            if ((v618 & 0x80) == 0)
            {
              goto LABEL_1182;
            }

            v613 += 7;
            ++v617;
            v16 = v614++ > 8;
          }

          while (!v16);
LABEL_991:
          LODWORD(v615) = 0;
          goto LABEL_1182;
        }

        v889 = 0;
        v890 = 0;
        v615 = 0;
        v19 = v610 >= v611;
        v891 = v610 - v611;
        if (!v19)
        {
          v891 = 0;
        }

        v892 = (v612 + v611);
        v893 = v611 + 1;
        while (2)
        {
          if (v891)
          {
            v894 = *v892;
            *v3 = v893;
            v615 |= (v894 & 0x7F) << v889;
            if (v894 < 0)
            {
              v889 += 7;
              --v891;
              ++v892;
              ++v893;
              v16 = v890++ > 8;
              if (v16)
              {
                goto LABEL_991;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v615) = 0;
            }
          }

          else
          {
            LODWORD(v615) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1182:
        *(a1 + 176) = v615;
        break;
      case 1310:
        *(a1 + 360) |= 2uLL;
        v530 = *(this + 1);
        v529 = *(this + 2);
        v531 = *this;
        if (v530 <= 0xFFFFFFFFFFFFFFF5 && v530 + 10 <= v529)
        {
          v532 = 0;
          v533 = 0;
          v534 = 0;
          v535 = (v531 + v530);
          v536 = v530 + 1;
          do
          {
            *v3 = v536;
            v537 = *v535++;
            v534 |= (v537 & 0x7F) << v532;
            if ((v537 & 0x80) == 0)
            {
              goto LABEL_1155;
            }

            v532 += 7;
            ++v536;
            v16 = v533++ > 8;
          }

          while (!v16);
LABEL_917:
          v534 = 0;
          goto LABEL_1155;
        }

        v835 = 0;
        v836 = 0;
        v534 = 0;
        v19 = v529 >= v530;
        v837 = v529 - v530;
        if (!v19)
        {
          v837 = 0;
        }

        v838 = (v531 + v530);
        v839 = v530 + 1;
        while (2)
        {
          if (v837)
          {
            v840 = *v838;
            *v3 = v839;
            v534 |= (v840 & 0x7F) << v835;
            if (v840 < 0)
            {
              v835 += 7;
              --v837;
              ++v838;
              ++v839;
              v16 = v836++ > 8;
              if (v16)
              {
                goto LABEL_917;
              }

              continue;
            }

            if (*v5)
            {
              v534 = 0;
            }
          }

          else
          {
            v534 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1155:
        *(a1 + 16) = v534;
        break;
      case 1311:
        *(a1 + 360) |= 0x20uLL;
        v602 = *(this + 1);
        v601 = *(this + 2);
        v603 = *this;
        if (v602 <= 0xFFFFFFFFFFFFFFF5 && v602 + 10 <= v601)
        {
          v604 = 0;
          v605 = 0;
          v606 = 0;
          v607 = (v603 + v602);
          v608 = v602 + 1;
          do
          {
            *v3 = v608;
            v609 = *v607++;
            v606 |= (v609 & 0x7F) << v604;
            if ((v609 & 0x80) == 0)
            {
              goto LABEL_1179;
            }

            v604 += 7;
            ++v608;
            v16 = v605++ > 8;
          }

          while (!v16);
LABEL_983:
          v606 = 0;
          goto LABEL_1179;
        }

        v883 = 0;
        v884 = 0;
        v606 = 0;
        v19 = v601 >= v602;
        v885 = v601 - v602;
        if (!v19)
        {
          v885 = 0;
        }

        v886 = (v603 + v602);
        v887 = v602 + 1;
        while (2)
        {
          if (v885)
          {
            v888 = *v886;
            *v3 = v887;
            v606 |= (v888 & 0x7F) << v883;
            if (v888 < 0)
            {
              v883 += 7;
              --v885;
              ++v886;
              ++v887;
              v16 = v884++ > 8;
              if (v16)
              {
                goto LABEL_983;
              }

              continue;
            }

            if (*v5)
            {
              v606 = 0;
            }
          }

          else
          {
            v606 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1179:
        *(a1 + 48) = v606;
        break;
      case 1312:
        *(a1 + 360) |= 4uLL;
        v503 = *(this + 1);
        v502 = *(this + 2);
        v504 = *this;
        if (v503 <= 0xFFFFFFFFFFFFFFF5 && v503 + 10 <= v502)
        {
          v505 = 0;
          v506 = 0;
          v507 = 0;
          v508 = (v504 + v503);
          v509 = v503 + 1;
          do
          {
            *v3 = v509;
            v510 = *v508++;
            v507 |= (v510 & 0x7F) << v505;
            if ((v510 & 0x80) == 0)
            {
              goto LABEL_1146;
            }

            v505 += 7;
            ++v509;
            v16 = v506++ > 8;
          }

          while (!v16);
LABEL_893:
          v507 = 0;
          goto LABEL_1146;
        }

        v817 = 0;
        v818 = 0;
        v507 = 0;
        v19 = v502 >= v503;
        v819 = v502 - v503;
        if (!v19)
        {
          v819 = 0;
        }

        v820 = (v504 + v503);
        v821 = v503 + 1;
        while (2)
        {
          if (v819)
          {
            v822 = *v820;
            *v3 = v821;
            v507 |= (v822 & 0x7F) << v817;
            if (v822 < 0)
            {
              v817 += 7;
              --v819;
              ++v820;
              ++v821;
              v16 = v818++ > 8;
              if (v16)
              {
                goto LABEL_893;
              }

              continue;
            }

            if (*v5)
            {
              v507 = 0;
            }
          }

          else
          {
            v507 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1146:
        *(a1 + 24) = v507;
        break;
      case 1313:
        *(a1 + 360) |= 8uLL;
        v521 = *(this + 1);
        v520 = *(this + 2);
        v522 = *this;
        if (v521 <= 0xFFFFFFFFFFFFFFF5 && v521 + 10 <= v520)
        {
          v523 = 0;
          v524 = 0;
          v525 = 0;
          v526 = (v522 + v521);
          v527 = v521 + 1;
          do
          {
            *v3 = v527;
            v528 = *v526++;
            v525 |= (v528 & 0x7F) << v523;
            if ((v528 & 0x80) == 0)
            {
              goto LABEL_1152;
            }

            v523 += 7;
            ++v527;
            v16 = v524++ > 8;
          }

          while (!v16);
LABEL_909:
          v525 = 0;
          goto LABEL_1152;
        }

        v829 = 0;
        v830 = 0;
        v525 = 0;
        v19 = v520 >= v521;
        v831 = v520 - v521;
        if (!v19)
        {
          v831 = 0;
        }

        v832 = (v522 + v521);
        v833 = v521 + 1;
        while (2)
        {
          if (v831)
          {
            v834 = *v832;
            *v3 = v833;
            v525 |= (v834 & 0x7F) << v829;
            if (v834 < 0)
            {
              v829 += 7;
              --v831;
              ++v832;
              ++v833;
              v16 = v830++ > 8;
              if (v16)
              {
                goto LABEL_909;
              }

              continue;
            }

            if (*v5)
            {
              v525 = 0;
            }
          }

          else
          {
            v525 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1152:
        *(a1 + 32) = v525;
        break;
      case 1314:
        *(a1 + 360) |= 0x10uLL;
        v589 = *(this + 1);
        v588 = *(this + 2);
        v590 = *this;
        if (v589 <= 0xFFFFFFFFFFFFFFF5 && v589 + 10 <= v588)
        {
          v591 = 0;
          v592 = 0;
          v593 = 0;
          v594 = (v590 + v589);
          v595 = v589 + 1;
          do
          {
            *v3 = v595;
            v596 = *v594++;
            v593 |= (v596 & 0x7F) << v591;
            if ((v596 & 0x80) == 0)
            {
              goto LABEL_1176;
            }

            v591 += 7;
            ++v595;
            v16 = v592++ > 8;
          }

          while (!v16);
LABEL_975:
          v593 = 0;
          goto LABEL_1176;
        }

        v877 = 0;
        v878 = 0;
        v593 = 0;
        v19 = v588 >= v589;
        v879 = v588 - v589;
        if (!v19)
        {
          v879 = 0;
        }

        v880 = (v590 + v589);
        v881 = v589 + 1;
        while (2)
        {
          if (v879)
          {
            v882 = *v880;
            *v3 = v881;
            v593 |= (v882 & 0x7F) << v877;
            if (v882 < 0)
            {
              v877 += 7;
              --v879;
              ++v880;
              ++v881;
              v16 = v878++ > 8;
              if (v16)
              {
                goto LABEL_975;
              }

              continue;
            }

            if (*v5)
            {
              v593 = 0;
            }
          }

          else
          {
            v593 = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1176:
        *(a1 + 40) = v593;
        break;
      case 1315:
        *(a1 + 360) |= 0x4000000000000uLL;
        v494 = *(this + 1);
        v493 = *(this + 2);
        v495 = *this;
        if (v494 <= 0xFFFFFFFFFFFFFFF5 && v494 + 10 <= v493)
        {
          v496 = 0;
          v497 = 0;
          v498 = 0;
          v499 = (v495 + v494);
          v500 = v494 + 1;
          do
          {
            *v3 = v500;
            v501 = *v499++;
            v498 |= (v501 & 0x7F) << v496;
            if ((v501 & 0x80) == 0)
            {
              goto LABEL_1143;
            }

            v496 += 7;
            ++v500;
            v16 = v497++ > 8;
          }

          while (!v16);
LABEL_885:
          LODWORD(v498) = 0;
          goto LABEL_1143;
        }

        v811 = 0;
        v812 = 0;
        v498 = 0;
        v19 = v493 >= v494;
        v813 = v493 - v494;
        if (!v19)
        {
          v813 = 0;
        }

        v814 = (v495 + v494);
        v815 = v494 + 1;
        while (2)
        {
          if (v813)
          {
            v816 = *v814;
            *v3 = v815;
            v498 |= (v816 & 0x7F) << v811;
            if (v816 < 0)
            {
              v811 += 7;
              --v813;
              ++v814;
              ++v815;
              v16 = v812++ > 8;
              if (v16)
              {
                goto LABEL_885;
              }

              continue;
            }

            if (*v5)
            {
              LODWORD(v498) = 0;
            }
          }

          else
          {
            LODWORD(v498) = 0;
            *v5 = 1;
          }

          break;
        }

LABEL_1143:
        *(a1 + 240) = v498;
        break;
      case 1316:
        *(a1 + 360) |= 0x2000uLL;
        v547 = *v3;
        if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v547 + 4 > *(this + 2))
        {
          goto LABEL_494;
        }

        *(a1 + 92) = *(*this + v547);
        goto LABEL_995;
      default:
        if (v24 == 1201)
        {
          *(a1 + 360) |= 0x8000000000uLL;
          v549 = *(this + 1);
          v548 = *(this + 2);
          v550 = *this;
          if (v549 > 0xFFFFFFFFFFFFFFF5 || v549 + 10 > v548)
          {
            v853 = 0;
            v854 = 0;
            v553 = 0;
            v19 = v548 >= v549;
            v855 = v548 - v549;
            if (!v19)
            {
              v855 = 0;
            }

            v856 = (v550 + v549);
            v857 = v549 + 1;
            while (1)
            {
              if (!v855)
              {
                LODWORD(v553) = 0;
                *v5 = 1;
                goto LABEL_1164;
              }

              v858 = *v856;
              *v3 = v857;
              v553 |= (v858 & 0x7F) << v853;
              if ((v858 & 0x80) == 0)
              {
                break;
              }

              v853 += 7;
              --v855;
              ++v856;
              ++v857;
              v16 = v854++ > 8;
              if (v16)
              {
LABEL_941:
                LODWORD(v553) = 0;
                goto LABEL_1164;
              }
            }

            if (*v5)
            {
              LODWORD(v553) = 0;
            }
          }

          else
          {
            v551 = 0;
            v552 = 0;
            v553 = 0;
            v554 = (v550 + v549);
            v555 = v549 + 1;
            while (1)
            {
              *v3 = v555;
              v556 = *v554++;
              v553 |= (v556 & 0x7F) << v551;
              if ((v556 & 0x80) == 0)
              {
                break;
              }

              v551 += 7;
              ++v555;
              v16 = v552++ > 8;
              if (v16)
              {
                goto LABEL_941;
              }
            }
          }

LABEL_1164:
          *(a1 + 196) = v553;
          break;
        }

        if (v24 != 1202)
        {
          goto LABEL_194;
        }

        *(a1 + 360) |= 0x10000000000uLL;
        v131 = *(this + 1);
        v130 = *(this + 2);
        v132 = *this;
        if (v131 > 0xFFFFFFFFFFFFFFF5 || v131 + 10 > v130)
        {
          v841 = 0;
          v842 = 0;
          v135 = 0;
          v19 = v130 >= v131;
          v843 = v130 - v131;
          if (!v19)
          {
            v843 = 0;
          }

          v844 = (v132 + v131);
          v845 = v131 + 1;
          while (1)
          {
            if (!v843)
            {
              LODWORD(v135) = 0;
              *v5 = 1;
              goto LABEL_1158;
            }

            v846 = *v844;
            *v3 = v845;
            v135 |= (v846 & 0x7F) << v841;
            if ((v846 & 0x80) == 0)
            {
              break;
            }

            v841 += 7;
            --v843;
            ++v844;
            ++v845;
            v16 = v842++ > 8;
            if (v16)
            {
LABEL_925:
              LODWORD(v135) = 0;
              goto LABEL_1158;
            }
          }

          if (*v5)
          {
            LODWORD(v135) = 0;
          }
        }

        else
        {
          v133 = 0;
          v134 = 0;
          v135 = 0;
          v136 = (v132 + v131);
          v137 = v131 + 1;
          while (1)
          {
            *v3 = v137;
            v138 = *v136++;
            v135 |= (v138 & 0x7F) << v133;
            if ((v138 & 0x80) == 0)
            {
              break;
            }

            v133 += 7;
            ++v137;
            v16 = v134++ > 8;
            if (v16)
            {
              goto LABEL_925;
            }
          }
        }

LABEL_1158:
        *(a1 + 200) = v135;
        break;
    }

LABEL_996:
    v2 = *(this + 1);
    v6 = *(this + 2);
    v4 = *(this + 24);
    if (v2 >= v6 || (*(this + 24) & 1) != 0)
    {
      goto LABEL_1183;
    }
  }

  if (v24 <= 504)
  {
    if (v24 <= 406)
    {
      if (v24 > 403)
      {
        if (v24 == 404)
        {
          *(a1 + 360) |= 0x10000000uLL;
          v175 = *(this + 1);
          v174 = *(this + 2);
          v176 = *this;
          if (v175 > 0xFFFFFFFFFFFFFFF5 || v175 + 10 > v174)
          {
            v655 = 0;
            v656 = 0;
            v179 = 0;
            v19 = v174 >= v175;
            v657 = v174 - v175;
            if (!v19)
            {
              v657 = 0;
            }

            v658 = (v176 + v175);
            v659 = v175 + 1;
            while (1)
            {
              if (!v657)
              {
                LODWORD(v179) = 0;
                *v5 = 1;
                goto LABEL_1051;
              }

              v660 = *v658;
              *v3 = v659;
              v179 |= (v660 & 0x7F) << v655;
              if ((v660 & 0x80) == 0)
              {
                break;
              }

              v655 += 7;
              --v657;
              ++v658;
              ++v659;
              v16 = v656++ > 8;
              if (v16)
              {
LABEL_607:
                LODWORD(v179) = 0;
                goto LABEL_1051;
              }
            }

            if (*v5)
            {
              LODWORD(v179) = 0;
            }
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            v180 = (v176 + v175);
            v181 = v175 + 1;
            while (1)
            {
              *v3 = v181;
              v182 = *v180++;
              v179 |= (v182 & 0x7F) << v177;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v177 += 7;
              ++v181;
              v16 = v178++ > 8;
              if (v16)
              {
                goto LABEL_607;
              }
            }
          }

LABEL_1051:
          *(a1 + 152) = v179;
        }

        else if (v24 == 405)
        {
          *(a1 + 368) |= 0x40000uLL;
          v192 = *(this + 1);
          if (v192 >= *(this + 2))
          {
            v195 = 0;
            *v5 = 1;
          }

          else
          {
            v193 = v192 + 1;
            v194 = *(*this + v192);
            *(this + 1) = v193;
            v195 = v194 != 0;
          }

          *(a1 + 332) = v195;
        }

        else
        {
          *(a1 + 368) |= 0x8000uLL;
          v78 = *(this + 1);
          if (v78 >= *(this + 2))
          {
            v81 = 0;
            *v5 = 1;
          }

          else
          {
            v79 = v78 + 1;
            v80 = *(*this + v78);
            *(this + 1) = v79;
            v81 = v80 != 0;
          }

          *(a1 + 329) = v81;
        }

        goto LABEL_996;
      }

      switch(v24)
      {
        case 0x191:
          *(a1 + 360) |= 0x40000000000000uLL;
          v166 = *(this + 1);
          v165 = *(this + 2);
          v167 = *this;
          if (v166 > 0xFFFFFFFFFFFFFFF5 || v166 + 10 > v165)
          {
            v649 = 0;
            v650 = 0;
            v170 = 0;
            v19 = v165 >= v166;
            v651 = v165 - v166;
            if (!v19)
            {
              v651 = 0;
            }

            v652 = (v167 + v166);
            v653 = v166 + 1;
            while (1)
            {
              if (!v651)
              {
                LODWORD(v170) = 0;
                *v5 = 1;
                goto LABEL_1048;
              }

              v654 = *v652;
              *v3 = v653;
              v170 |= (v654 & 0x7F) << v649;
              if ((v654 & 0x80) == 0)
              {
                break;
              }

              v649 += 7;
              --v651;
              ++v652;
              ++v653;
              v16 = v650++ > 8;
              if (v16)
              {
LABEL_599:
                LODWORD(v170) = 0;
                goto LABEL_1048;
              }
            }

            if (*v5)
            {
              LODWORD(v170) = 0;
            }
          }

          else
          {
            v168 = 0;
            v169 = 0;
            v170 = 0;
            v171 = (v167 + v166);
            v172 = v166 + 1;
            while (1)
            {
              *v3 = v172;
              v173 = *v171++;
              v170 |= (v173 & 0x7F) << v168;
              if ((v173 & 0x80) == 0)
              {
                break;
              }

              v168 += 7;
              ++v172;
              v16 = v169++ > 8;
              if (v16)
              {
                goto LABEL_599;
              }
            }
          }

LABEL_1048:
          *(a1 + 256) = v170;
          goto LABEL_996;
        case 0x192:
          *(a1 + 360) |= 0x80000000000000uLL;
          v184 = *(this + 1);
          v183 = *(this + 2);
          v185 = *this;
          if (v184 > 0xFFFFFFFFFFFFFFF5 || v184 + 10 > v183)
          {
            v661 = 0;
            v662 = 0;
            v188 = 0;
            v19 = v183 >= v184;
            v663 = v183 - v184;
            if (!v19)
            {
              v663 = 0;
            }

            v664 = (v185 + v184);
            v665 = v184 + 1;
            while (1)
            {
              if (!v663)
              {
                LODWORD(v188) = 0;
                *v5 = 1;
                goto LABEL_1054;
              }

              v666 = *v664;
              *v3 = v665;
              v188 |= (v666 & 0x7F) << v661;
              if ((v666 & 0x80) == 0)
              {
                break;
              }

              v661 += 7;
              --v663;
              ++v664;
              ++v665;
              v16 = v662++ > 8;
              if (v16)
              {
LABEL_615:
                LODWORD(v188) = 0;
                goto LABEL_1054;
              }
            }

            if (*v5)
            {
              LODWORD(v188) = 0;
            }
          }

          else
          {
            v186 = 0;
            v187 = 0;
            v188 = 0;
            v189 = (v185 + v184);
            v190 = v184 + 1;
            while (1)
            {
              *v3 = v190;
              v191 = *v189++;
              v188 |= (v191 & 0x7F) << v186;
              if ((v191 & 0x80) == 0)
              {
                break;
              }

              v186 += 7;
              ++v190;
              v16 = v187++ > 8;
              if (v16)
              {
                goto LABEL_615;
              }
            }
          }

LABEL_1054:
          *(a1 + 260) = v188;
          goto LABEL_996;
        case 0x193:
          *(a1 + 360) |= 0x8000000uLL;
          v61 = *(this + 1);
          v60 = *(this + 2);
          v62 = *this;
          if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v60)
          {
            v667 = 0;
            v668 = 0;
            v65 = 0;
            v19 = v60 >= v61;
            v669 = v60 - v61;
            if (!v19)
            {
              v669 = 0;
            }

            v670 = (v62 + v61);
            v671 = v61 + 1;
            while (1)
            {
              if (!v669)
              {
                LODWORD(v65) = 0;
                *v5 = 1;
                goto LABEL_1057;
              }

              v672 = *v670;
              *v3 = v671;
              v65 |= (v672 & 0x7F) << v667;
              if ((v672 & 0x80) == 0)
              {
                break;
              }

              v667 += 7;
              --v669;
              ++v670;
              ++v671;
              v16 = v668++ > 8;
              if (v16)
              {
LABEL_625:
                LODWORD(v65) = 0;
                goto LABEL_1057;
              }
            }

            if (*v5)
            {
              LODWORD(v65) = 0;
            }
          }

          else
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = (v62 + v61);
            v67 = v61 + 1;
            while (1)
            {
              *v3 = v67;
              v68 = *v66++;
              v65 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v67;
              v16 = v64++ > 8;
              if (v16)
              {
                goto LABEL_625;
              }
            }
          }

LABEL_1057:
          *(a1 + 148) = v65;
          goto LABEL_996;
      }

      goto LABEL_194;
    }

    if (v24 <= 500)
    {
      switch(v24)
      {
        case 0x197:
          *(a1 + 360) |= 0x4000000000uLL;
          v242 = *(this + 1);
          v241 = *(this + 2);
          v243 = *this;
          if (v242 > 0xFFFFFFFFFFFFFFF5 || v242 + 10 > v241)
          {
            v715 = 0;
            v716 = 0;
            v246 = 0;
            v19 = v241 >= v242;
            v717 = v241 - v242;
            if (!v19)
            {
              v717 = 0;
            }

            v718 = (v243 + v242);
            v719 = v242 + 1;
            while (1)
            {
              if (!v717)
              {
                LODWORD(v246) = 0;
                *v5 = 1;
                goto LABEL_1081;
              }

              v720 = *v718;
              *v3 = v719;
              v246 |= (v720 & 0x7F) << v715;
              if ((v720 & 0x80) == 0)
              {
                break;
              }

              v715 += 7;
              --v717;
              ++v718;
              ++v719;
              v16 = v716++ > 8;
              if (v16)
              {
LABEL_693:
                LODWORD(v246) = 0;
                goto LABEL_1081;
              }
            }

            if (*v5)
            {
              LODWORD(v246) = 0;
            }
          }

          else
          {
            v244 = 0;
            v245 = 0;
            v246 = 0;
            v247 = (v243 + v242);
            v248 = v242 + 1;
            while (1)
            {
              *v3 = v248;
              v249 = *v247++;
              v246 |= (v249 & 0x7F) << v244;
              if ((v249 & 0x80) == 0)
              {
                break;
              }

              v244 += 7;
              ++v248;
              v16 = v245++ > 8;
              if (v16)
              {
                goto LABEL_693;
              }
            }
          }

LABEL_1081:
          *(a1 + 192) = v246;
          goto LABEL_996;
        case 0x198:
          *(a1 + 360) |= 0x80000uLL;
          v251 = *(this + 1);
          v250 = *(this + 2);
          v252 = *this;
          if (v251 > 0xFFFFFFFFFFFFFFF5 || v251 + 10 > v250)
          {
            v727 = 0;
            v728 = 0;
            v255 = 0;
            v19 = v250 >= v251;
            v729 = v250 - v251;
            if (!v19)
            {
              v729 = 0;
            }

            v730 = (v252 + v251);
            v731 = v251 + 1;
            while (1)
            {
              if (!v729)
              {
                LODWORD(v255) = 0;
                *v5 = 1;
                goto LABEL_1087;
              }

              v732 = *v730;
              *v3 = v731;
              v255 |= (v732 & 0x7F) << v727;
              if ((v732 & 0x80) == 0)
              {
                break;
              }

              v727 += 7;
              --v729;
              ++v730;
              ++v731;
              v16 = v728++ > 8;
              if (v16)
              {
LABEL_709:
                LODWORD(v255) = 0;
                goto LABEL_1087;
              }
            }

            if (*v5)
            {
              LODWORD(v255) = 0;
            }
          }

          else
          {
            v253 = 0;
            v254 = 0;
            v255 = 0;
            v256 = (v252 + v251);
            v257 = v251 + 1;
            while (1)
            {
              *v3 = v257;
              v258 = *v256++;
              v255 |= (v258 & 0x7F) << v253;
              if ((v258 & 0x80) == 0)
              {
                break;
              }

              v253 += 7;
              ++v257;
              v16 = v254++ > 8;
              if (v16)
              {
                goto LABEL_709;
              }
            }
          }

LABEL_1087:
          *(a1 + 116) = v255;
          goto LABEL_996;
        case 0x199:
          *(a1 + 360) |= 0x2000000000uLL;
          v93 = *(this + 1);
          v92 = *(this + 2);
          v94 = *this;
          if (v93 > 0xFFFFFFFFFFFFFFF5 || v93 + 10 > v92)
          {
            v733 = 0;
            v734 = 0;
            v97 = 0;
            v19 = v92 >= v93;
            v735 = v92 - v93;
            if (!v19)
            {
              v735 = 0;
            }

            v736 = (v94 + v93);
            v737 = v93 + 1;
            while (1)
            {
              if (!v735)
              {
                LODWORD(v97) = 0;
                *v5 = 1;
                goto LABEL_1090;
              }

              v738 = *v736;
              *v3 = v737;
              v97 |= (v738 & 0x7F) << v733;
              if ((v738 & 0x80) == 0)
              {
                break;
              }

              v733 += 7;
              --v735;
              ++v736;
              ++v737;
              v16 = v734++ > 8;
              if (v16)
              {
LABEL_717:
                LODWORD(v97) = 0;
                goto LABEL_1090;
              }
            }

            if (*v5)
            {
              LODWORD(v97) = 0;
            }
          }

          else
          {
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = (v94 + v93);
            v99 = v93 + 1;
            while (1)
            {
              *v3 = v99;
              v100 = *v98++;
              v97 |= (v100 & 0x7F) << v95;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              ++v99;
              v16 = v96++ > 8;
              if (v16)
              {
                goto LABEL_717;
              }
            }
          }

LABEL_1090:
          *(a1 + 188) = v97;
          goto LABEL_996;
      }

      goto LABEL_194;
    }

    if (v24 > 502)
    {
      if (v24 != 503)
      {
        *(a1 + 360) |= 0x1000000000000000uLL;
        v122 = *(this + 1);
        v121 = *(this + 2);
        v123 = *this;
        if (v122 > 0xFFFFFFFFFFFFFFF5 || v122 + 10 > v121)
        {
          v709 = 0;
          v710 = 0;
          v126 = 0;
          v19 = v121 >= v122;
          v711 = v121 - v122;
          if (!v19)
          {
            v711 = 0;
          }

          v712 = (v123 + v122);
          v713 = v122 + 1;
          while (1)
          {
            if (!v711)
            {
              LODWORD(v126) = 0;
              *v5 = 1;
              goto LABEL_1078;
            }

            v714 = *v712;
            *v3 = v713;
            v126 |= (v714 & 0x7F) << v709;
            if ((v714 & 0x80) == 0)
            {
              break;
            }

            v709 += 7;
            --v711;
            ++v712;
            ++v713;
            v16 = v710++ > 8;
            if (v16)
            {
LABEL_683:
              LODWORD(v126) = 0;
              goto LABEL_1078;
            }
          }

          if (*v5)
          {
            LODWORD(v126) = 0;
          }
        }

        else
        {
          v124 = 0;
          v125 = 0;
          v126 = 0;
          v127 = (v123 + v122);
          v128 = v122 + 1;
          while (1)
          {
            *v3 = v128;
            v129 = *v127++;
            v126 |= (v129 & 0x7F) << v124;
            if ((v129 & 0x80) == 0)
            {
              break;
            }

            v124 += 7;
            ++v128;
            v16 = v125++ > 8;
            if (v16)
            {
              goto LABEL_683;
            }
          }
        }

LABEL_1078:
        *(a1 + 280) = v126;
        goto LABEL_996;
      }

      *(a1 + 360) |= 0x400000000000000uLL;
      v240 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v240 + 4 > *(this + 2))
      {
        goto LABEL_494;
      }

      *(a1 + 272) = *(*this + v240);
    }

    else if (v24 == 501)
    {
      *(a1 + 360) |= 0x8000000000000000;
      v239 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v239 + 4 > *(this + 2))
      {
        goto LABEL_494;
      }

      *(a1 + 292) = *(*this + v239);
    }

    else
    {
      *(a1 + 368) |= 1uLL;
      v49 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(this + 2))
      {
        goto LABEL_494;
      }

      *(a1 + 296) = *(*this + v49);
    }

LABEL_995:
    *(this + 1) += 4;
    goto LABEL_996;
  }

  if (v24 > 700)
  {
    if (v24 <= 801)
    {
      if (v24 == 701)
      {
        *(a1 + 360) |= 0x1000000000000uLL;
        v218 = *(this + 1);
        v217 = *(this + 2);
        v219 = *this;
        if (v218 > 0xFFFFFFFFFFFFFFF5 || v218 + 10 > v217)
        {
          v697 = 0;
          v698 = 0;
          v222 = 0;
          v19 = v217 >= v218;
          v699 = v217 - v218;
          if (!v19)
          {
            v699 = 0;
          }

          v700 = (v219 + v218);
          v701 = v218 + 1;
          while (1)
          {
            if (!v699)
            {
              LODWORD(v222) = 0;
              *v5 = 1;
              goto LABEL_1072;
            }

            v702 = *v700;
            *v3 = v701;
            v222 |= (v702 & 0x7F) << v697;
            if ((v702 & 0x80) == 0)
            {
              break;
            }

            v697 += 7;
            --v699;
            ++v700;
            ++v701;
            v16 = v698++ > 8;
            if (v16)
            {
LABEL_667:
              LODWORD(v222) = 0;
              goto LABEL_1072;
            }
          }

          if (*v5)
          {
            LODWORD(v222) = 0;
          }
        }

        else
        {
          v220 = 0;
          v221 = 0;
          v222 = 0;
          v223 = (v219 + v218);
          v224 = v218 + 1;
          while (1)
          {
            *v3 = v224;
            v225 = *v223++;
            v222 |= (v225 & 0x7F) << v220;
            if ((v225 & 0x80) == 0)
            {
              break;
            }

            v220 += 7;
            ++v224;
            v16 = v221++ > 8;
            if (v16)
            {
              goto LABEL_667;
            }
          }
        }

LABEL_1072:
        *(a1 + 232) = v222;
        goto LABEL_996;
      }

      if (v24 == 702)
      {
        *(a1 + 360) |= 0x2000000000000uLL;
        v231 = *(this + 1);
        v230 = *(this + 2);
        v232 = *this;
        if (v231 > 0xFFFFFFFFFFFFFFF5 || v231 + 10 > v230)
        {
          v703 = 0;
          v704 = 0;
          v235 = 0;
          v19 = v230 >= v231;
          v705 = v230 - v231;
          if (!v19)
          {
            v705 = 0;
          }

          v706 = (v232 + v231);
          v707 = v231 + 1;
          while (1)
          {
            if (!v705)
            {
              LODWORD(v235) = 0;
              *v5 = 1;
              goto LABEL_1075;
            }

            v708 = *v706;
            *v3 = v707;
            v235 |= (v708 & 0x7F) << v703;
            if ((v708 & 0x80) == 0)
            {
              break;
            }

            v703 += 7;
            --v705;
            ++v706;
            ++v707;
            v16 = v704++ > 8;
            if (v16)
            {
LABEL_675:
              LODWORD(v235) = 0;
              goto LABEL_1075;
            }
          }

          if (*v5)
          {
            LODWORD(v235) = 0;
          }
        }

        else
        {
          v233 = 0;
          v234 = 0;
          v235 = 0;
          v236 = (v232 + v231);
          v237 = v231 + 1;
          while (1)
          {
            *v3 = v237;
            v238 = *v236++;
            v235 |= (v238 & 0x7F) << v233;
            if ((v238 & 0x80) == 0)
            {
              break;
            }

            v233 += 7;
            ++v237;
            v16 = v234++ > 8;
            if (v16)
            {
              goto LABEL_675;
            }
          }
        }

LABEL_1075:
        *(a1 + 236) = v235;
        goto LABEL_996;
      }

      if (v24 != 801)
      {
        goto LABEL_194;
      }

      *(a1 + 360) |= 0x100000uLL;
      v91 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
      {
        goto LABEL_494;
      }

      *(a1 + 120) = *(*this + v91);
    }

    else if (v24 > 803)
    {
      if (v24 == 804)
      {
        *(a1 + 360) |= 0x800uLL;
        v207 = *v3;
        if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v207 + 4 > *(this + 2))
        {
          goto LABEL_494;
        }

        *(a1 + 84) = *(*this + v207);
      }

      else
      {
        if (v24 != 901)
        {
          goto LABEL_194;
        }

        *(a1 + 360) |= 0x100uLL;
        v120 = *v3;
        if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
        {
          goto LABEL_494;
        }

        *(a1 + 72) = *(*this + v120);
      }
    }

    else if (v24 == 802)
    {
      *(a1 + 360) |= 0x400uLL;
      v197 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(this + 2))
      {
        goto LABEL_494;
      }

      *(a1 + 80) = *(*this + v197);
    }

    else
    {
      *(a1 + 360) |= 0x200000uLL;
      v59 = *v3;
      if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
      {
        goto LABEL_494;
      }

      *(a1 + 124) = *(*this + v59);
    }

    goto LABEL_995;
  }

  if (v24 > 602)
  {
    if (v24 > 604)
    {
      if (v24 == 605)
      {
        *(a1 + 360) |= 0x200000000000000uLL;
        v199 = *(this + 1);
        v198 = *(this + 2);
        v200 = *this;
        if (v199 > 0xFFFFFFFFFFFFFFF5 || v199 + 10 > v198)
        {
          v685 = 0;
          v686 = 0;
          v203 = 0;
          v19 = v198 >= v199;
          v687 = v198 - v199;
          if (!v19)
          {
            v687 = 0;
          }

          v688 = (v200 + v199);
          v689 = v199 + 1;
          while (1)
          {
            if (!v687)
            {
              LODWORD(v203) = 0;
              *v5 = 1;
              goto LABEL_1066;
            }

            v690 = *v688;
            *v3 = v689;
            v203 |= (v690 & 0x7F) << v685;
            if ((v690 & 0x80) == 0)
            {
              break;
            }

            v685 += 7;
            --v687;
            ++v688;
            ++v689;
            v16 = v686++ > 8;
            if (v16)
            {
LABEL_649:
              LODWORD(v203) = 0;
              goto LABEL_1066;
            }
          }

          if (*v5)
          {
            LODWORD(v203) = 0;
          }
        }

        else
        {
          v201 = 0;
          v202 = 0;
          v203 = 0;
          v204 = (v200 + v199);
          v205 = v199 + 1;
          while (1)
          {
            *v3 = v205;
            v206 = *v204++;
            v203 |= (v206 & 0x7F) << v201;
            if ((v206 & 0x80) == 0)
            {
              break;
            }

            v201 += 7;
            ++v205;
            v16 = v202++ > 8;
            if (v16)
            {
              goto LABEL_649;
            }
          }
        }

LABEL_1066:
        *(a1 + 268) = v203;
        goto LABEL_996;
      }

      if (v24 == 606)
      {
        *(a1 + 360) |= 0x40uLL;
        v112 = *(this + 1);
        v111 = *(this + 2);
        v113 = *this;
        if (v112 > 0xFFFFFFFFFFFFFFF5 || v112 + 10 > v111)
        {
          v679 = 0;
          v680 = 0;
          v116 = 0;
          v19 = v111 >= v112;
          v681 = v111 - v112;
          if (!v19)
          {
            v681 = 0;
          }

          v682 = (v113 + v112);
          v683 = v112 + 1;
          while (1)
          {
            if (!v681)
            {
              v116 = 0;
              *v5 = 1;
              goto LABEL_1063;
            }

            v684 = *v682;
            *v3 = v683;
            v116 |= (v684 & 0x7F) << v679;
            if ((v684 & 0x80) == 0)
            {
              break;
            }

            v679 += 7;
            --v681;
            ++v682;
            ++v683;
            v16 = v680++ > 8;
            if (v16)
            {
LABEL_641:
              v116 = 0;
              goto LABEL_1063;
            }
          }

          if (*v5)
          {
            v116 = 0;
          }
        }

        else
        {
          v114 = 0;
          v115 = 0;
          v116 = 0;
          v117 = (v113 + v112);
          v118 = v112 + 1;
          while (1)
          {
            *v3 = v118;
            v119 = *v117++;
            v116 |= (v119 & 0x7F) << v114;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v114 += 7;
            ++v118;
            v16 = v115++ > 8;
            if (v16)
            {
              goto LABEL_641;
            }
          }
        }

LABEL_1063:
        *(a1 + 56) = v116;
        goto LABEL_996;
      }

      goto LABEL_194;
    }

    if (v24 != 603)
    {
      *(a1 + 360) |= 0x200000000000uLL;
      v27 = *(this + 1);
      v26 = *(this + 2);
      v28 = *this;
      if (v27 > 0xFFFFFFFFFFFFFFF5 || v27 + 10 > v26)
      {
        v673 = 0;
        v674 = 0;
        v31 = 0;
        v19 = v26 >= v27;
        v675 = v26 - v27;
        if (!v19)
        {
          v675 = 0;
        }

        v676 = (v28 + v27);
        v677 = v27 + 1;
        while (1)
        {
          if (!v675)
          {
            LODWORD(v31) = 0;
            *v5 = 1;
            goto LABEL_1060;
          }

          v678 = *v676;
          *v3 = v677;
          v31 |= (v678 & 0x7F) << v673;
          if ((v678 & 0x80) == 0)
          {
            break;
          }

          v673 += 7;
          --v675;
          ++v676;
          ++v677;
          v16 = v674++ > 8;
          if (v16)
          {
LABEL_633:
            LODWORD(v31) = 0;
            goto LABEL_1060;
          }
        }

        if (*v5)
        {
          LODWORD(v31) = 0;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = (v28 + v27);
        v33 = v27 + 1;
        while (1)
        {
          *v3 = v33;
          v34 = *v32++;
          v31 |= (v34 & 0x7F) << v29;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          ++v33;
          v16 = v30++ > 8;
          if (v16)
          {
            goto LABEL_633;
          }
        }
      }

LABEL_1060:
      *(a1 + 220) = v31;
      goto LABEL_996;
    }

    *(a1 + 360) |= 0x1000uLL;
    v196 = *v3;
    if (*v3 > 0xFFFFFFFFFFFFFFFBLL || v196 + 4 > *(this + 2))
    {
      goto LABEL_494;
    }

    *(a1 + 88) = *(*this + v196);
    goto LABEL_995;
  }

  switch(v24)
  {
    case 0x1F9:
      *(a1 + 360) |= 0x4000000000000000uLL;
      v209 = *(this + 1);
      v208 = *(this + 2);
      v210 = *this;
      if (v209 > 0xFFFFFFFFFFFFFFF5 || v209 + 10 > v208)
      {
        v691 = 0;
        v692 = 0;
        v213 = 0;
        v19 = v208 >= v209;
        v693 = v208 - v209;
        if (!v19)
        {
          v693 = 0;
        }

        v694 = (v210 + v209);
        v695 = v209 + 1;
        while (1)
        {
          if (!v693)
          {
            LODWORD(v213) = 0;
            *v5 = 1;
            goto LABEL_1069;
          }

          v696 = *v694;
          *v3 = v695;
          v213 |= (v696 & 0x7F) << v691;
          if ((v696 & 0x80) == 0)
          {
            break;
          }

          v691 += 7;
          --v693;
          ++v694;
          ++v695;
          v16 = v692++ > 8;
          if (v16)
          {
LABEL_659:
            LODWORD(v213) = 0;
            goto LABEL_1069;
          }
        }

        if (*v5)
        {
          LODWORD(v213) = 0;
        }
      }

      else
      {
        v211 = 0;
        v212 = 0;
        v213 = 0;
        v214 = (v210 + v209);
        v215 = v209 + 1;
        while (1)
        {
          *v3 = v215;
          v216 = *v214++;
          v213 |= (v216 & 0x7F) << v211;
          if ((v216 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          ++v215;
          v16 = v212++ > 8;
          if (v16)
          {
            goto LABEL_659;
          }
        }
      }

LABEL_1069:
      *(a1 + 288) = v213;
      goto LABEL_996;
    case 0x259:
      *(a1 + 368) |= 0x800uLL;
      v226 = *(this + 1);
      if (v226 >= *(this + 2))
      {
        v229 = 0;
        *v5 = 1;
      }

      else
      {
        v227 = v226 + 1;
        v228 = *(*this + v226);
        *(this + 1) = v227;
        v229 = v228 != 0;
      }

      *(a1 + 325) = v229;
      goto LABEL_996;
    case 0x25A:
      *(a1 + 360) |= 0x4000uLL;
      v83 = *(this + 1);
      v82 = *(this + 2);
      v84 = *this;
      if (v83 > 0xFFFFFFFFFFFFFFF5 || v83 + 10 > v82)
      {
        v721 = 0;
        v722 = 0;
        v87 = 0;
        v19 = v82 >= v83;
        v723 = v82 - v83;
        if (!v19)
        {
          v723 = 0;
        }

        v724 = (v84 + v83);
        v725 = v83 + 1;
        while (1)
        {
          if (!v723)
          {
            LODWORD(v87) = 0;
            *v5 = 1;
            goto LABEL_1084;
          }

          v726 = *v724;
          *v3 = v725;
          v87 |= (v726 & 0x7F) << v721;
          if ((v726 & 0x80) == 0)
          {
            break;
          }

          v721 += 7;
          --v723;
          ++v724;
          ++v725;
          v16 = v722++ > 8;
          if (v16)
          {
LABEL_701:
            LODWORD(v87) = 0;
            goto LABEL_1084;
          }
        }

        if (*v5)
        {
          LODWORD(v87) = 0;
        }
      }

      else
      {
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v88 = (v84 + v83);
        v89 = v83 + 1;
        while (1)
        {
          *v3 = v89;
          v90 = *v88++;
          v87 |= (v90 & 0x7F) << v85;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          ++v89;
          v16 = v86++ > 8;
          if (v16)
          {
            goto LABEL_701;
          }
        }
      }

LABEL_1084:
      *(a1 + 96) = v87;
      goto LABEL_996;
  }

LABEL_194:
  if (PB::Reader::skip(this))
  {
    goto LABEL_996;
  }

  v896 = 0;
  return v896 & 1;
}