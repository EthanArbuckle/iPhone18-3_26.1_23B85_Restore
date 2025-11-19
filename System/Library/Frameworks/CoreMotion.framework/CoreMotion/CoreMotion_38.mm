uint64_t sub_19B5A21E4(uint64_t result)
{
  *result = &unk_1F0E2B7C8;
  *(result + 20) = 0;
  return result;
}

void sub_19B5A220C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A2244(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "detectionMask");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A22C0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B5A258C(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B5A25F8(uint64_t result)
{
  *result = &unk_1F0E2C9F0;
  *(result + 88) = 0;
  return result;
}

void sub_19B5A2620(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A2658(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 88);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "baselineError", *(a1 + 16));
    v5 = *(a1 + 88);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "covariancePostMeasurement00", *(a1 + 20));
  v5 = *(a1 + 88);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "covariancePostMeasurement01", *(a1 + 24));
  v5 = *(a1 + 88);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "covariancePostMeasurement11", *(a1 + 28));
  v5 = *(a1 + 88);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "covariancePreMeasurement00", *(a1 + 32));
  v5 = *(a1 + 88);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "covariancePreMeasurement01", *(a1 + 36));
  v5 = *(a1 + 88);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "covariancePreMeasurement11", *(a1 + 40));
  v5 = *(a1 + 88);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "estimate", *(a1 + 44));
  v5 = *(a1 + 88);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "factoryXTalk", *(a1 + 48));
  v5 = *(a1 + 88);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "gain", *(a1 + 52));
  v5 = *(a1 + 88);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "intensity", *(a1 + 56));
  v5 = *(a1 + 88);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "measurement", *(a1 + 60));
  v5 = *(a1 + 88);
  if ((v5 & 0x40000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = *(a1 + 84);
  PB::TextFormatter::format(this, "possibleObstructed");
  v5 = *(a1 + 88);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "proxBufferMax", *(a1 + 64));
  v5 = *(a1 + 88);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "proxBufferVariance", *(a1 + 68));
  v5 = *(a1 + 88);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "sensitivityCal", *(a1 + 72));
  v5 = *(a1 + 88);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "temperature", *(a1 + 76));
  v5 = *(a1 + 88);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  PB::TextFormatter::format(this, "temperatureCalError", *(a1 + 80));
  if (*(a1 + 88))
  {
LABEL_20:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_21:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A28FC(uint64_t a1, PB::Reader *this)
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
        break;
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
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_106;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 88) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v34 = v2 - v22;
            v35 = (v23 + v22);
            v36 = v22 + 1;
            while (1)
            {
              if (!v34)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_104;
              }

              v37 = v36;
              v38 = *v35;
              *(this + 1) = v37;
              v26 |= (v38 & 0x7F) << v32;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              --v34;
              ++v35;
              v36 = v37 + 1;
              v14 = v33++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_103;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_103:
            v2 = v37;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = (v23 + v22);
            v28 = v22 + 1;
            do
            {
              v2 = v28;
              *(this + 1) = v28;
              v29 = *v27++;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_104;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_104:
          *(a1 + 8) = v26;
          goto LABEL_97;
        case 2u:
          *(a1 + 88) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_96;
        case 3u:
          *(a1 + 88) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_96;
        case 4u:
          *(a1 + 88) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_96;
        case 5u:
          *(a1 + 88) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_96;
        case 6u:
          *(a1 + 88) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_96;
        case 7u:
          *(a1 + 88) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_96;
        case 8u:
          *(a1 + 88) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v30 = *(*this + v2++);
            *(this + 1) = v2;
            v31 = v30 != 0;
          }

          *(a1 + 84) = v31;
          goto LABEL_97;
        case 9u:
          *(a1 + 88) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_96;
        case 0xAu:
          *(a1 + 88) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_96;
        case 0xBu:
          *(a1 + 88) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_96;
        case 0xCu:
          *(a1 + 88) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_96;
        case 0xDu:
          *(a1 + 88) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_96;
        case 0xEu:
          *(a1 + 88) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_96;
        case 0xFu:
          *(a1 + 88) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_96;
        case 0x10u:
          *(a1 + 88) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_96;
        case 0x11u:
          *(a1 + 88) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_96;
        case 0x12u:
          *(a1 + 88) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_82;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_96;
        case 0x13u:
          *(a1 + 88) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_82:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 48) = *(*this + v2);
LABEL_96:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_97;
        default:
          if (!PB::Reader::skip(this))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(this + 1);
LABEL_97:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_106;
          }

          break;
      }
    }

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
  }

LABEL_106:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_19B5A2FA8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 88);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 88);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 88);
  if ((v4 & 0x1000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 88);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 88);
  if ((v4 & 0x10000) == 0)
  {
LABEL_7:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 88);
  if ((v4 & 0x20000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 88);
  if ((v4 & 0x40000) == 0)
  {
LABEL_9:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = *(v3 + 84);
  result = PB::Writer::write(this);
  v4 = *(v3 + 88);
  if ((v4 & 0x4000) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 88);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 88);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 88);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 88);
  if ((v4 & 0x80) == 0)
  {
LABEL_15:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    result = PB::Writer::write(this, *(v3 + 72));
    if ((*(v3 + 88) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 88);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_39:
  v7 = *(v3 + 48);

  return PB::Writer::write(this, v7);
}

double sub_19B5A31F4(uint64_t a1)
{
  *a1 = &unk_1F0E2F578;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B5A3228(PB::Base *this)
{
  *this = &unk_1F0E2F578;
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

void sub_19B5A329C(PB::Base *a1)
{
  sub_19B5A3228(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A32D4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 72);
  if (v5)
  {
    PB::TextFormatter::format(this, "bC150RXAVE", *(a1 + 56));
    v5 = *(a1 + 72);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "gC0RXAVE", *(a1 + 60));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "ntcRamp", v8);
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "rxXT", v11);
  }

  v12 = *(a1 + 72);
  if ((v12 & 4) != 0)
  {
    v13 = *(a1 + 64);
    PB::TextFormatter::format(this, "versionPxCL");
    v12 = *(a1 + 72);
  }

  if ((v12 & 8) != 0)
  {
    v14 = *(a1 + 68);
    PB::TextFormatter::format(this, "versionPxTC");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A33F0(uint64_t a1, PB::Reader *this)
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
        goto LABEL_152;
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
        goto LABEL_152;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v23)
        {
          case 4:
            *(a1 + 72) |= 8u;
            v51 = *(this + 1);
            v50 = *(this + 2);
            v52 = *this;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v76 = 0;
              v77 = 0;
              v55 = 0;
              v17 = v50 >= v51;
              v78 = v50 - v51;
              if (!v17)
              {
                v78 = 0;
              }

              v79 = (v52 + v51);
              v80 = v51 + 1;
              while (1)
              {
                if (!v78)
                {
                  LODWORD(v55) = 0;
                  *(this + 24) = 1;
                  goto LABEL_133;
                }

                v81 = *v79;
                *(this + 1) = v80;
                v55 |= (v81 & 0x7F) << v76;
                if ((v81 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                --v78;
                ++v79;
                ++v80;
                v14 = v77++ > 8;
                if (v14)
                {
LABEL_98:
                  LODWORD(v55) = 0;
                  goto LABEL_133;
                }
              }

              if (*(this + 24))
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
                *(this + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v14 = v54++ > 8;
                if (v14)
                {
                  goto LABEL_98;
                }
              }
            }

LABEL_133:
            *(a1 + 68) = v55;
            goto LABEL_148;
          case 5:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
LABEL_154:
                v114 = 0;
                return v114 & 1;
              }

              v60 = *(this + 1);
              v61 = *(this + 2);
              while (v60 < v61 && (*(this + 24) & 1) == 0)
              {
                v63 = *(a1 + 16);
                v62 = *(a1 + 24);
                if (v63 >= v62)
                {
                  v65 = *(a1 + 8);
                  v66 = v63 - v65;
                  v67 = (v63 - v65) >> 2;
                  v68 = v67 + 1;
                  if ((v67 + 1) >> 62)
                  {
                    goto LABEL_155;
                  }

                  v69 = v62 - v65;
                  if (v69 >> 1 > v68)
                  {
                    v68 = v69 >> 1;
                  }

                  if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v70 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v70 = v68;
                  }

                  if (v70)
                  {
                    sub_19B4C4FA8(a1 + 8, v70);
                  }

                  v71 = (v63 - v65) >> 2;
                  v72 = (4 * v67);
                  v73 = (4 * v67 - 4 * v71);
                  *v72 = 0;
                  v64 = v72 + 1;
                  memcpy(v73, v65, v66);
                  v74 = *(a1 + 8);
                  *(a1 + 8) = v73;
                  *(a1 + 16) = v64;
                  *(a1 + 24) = 0;
                  if (v74)
                  {
                    operator delete(v74);
                  }
                }

                else
                {
                  *v63 = 0;
                  v64 = v63 + 4;
                }

                *(a1 + 16) = v64;
                v75 = *(this + 1);
                if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
                {
LABEL_111:
                  *(this + 24) = 1;
                  goto LABEL_112;
                }

                *(v64 - 1) = *(*this + v75);
                v61 = *(this + 2);
                v60 = *(this + 1) + 4;
                *(this + 1) = v60;
              }

              goto LABEL_112;
            }

            v92 = *(a1 + 16);
            v91 = *(a1 + 24);
            if (v92 >= v91)
            {
              v99 = *(a1 + 8);
              v100 = v92 - v99;
              v101 = (v92 - v99) >> 2;
              v102 = v101 + 1;
              if ((v101 + 1) >> 62)
              {
LABEL_155:
                sub_19B5BE690();
              }

              v103 = v91 - v99;
              if (v103 >> 1 > v102)
              {
                v102 = v103 >> 1;
              }

              if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v104 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v104 = v102;
              }

              if (v104)
              {
                sub_19B4C4FA8(a1 + 8, v104);
              }

              v109 = (v92 - v99) >> 2;
              v110 = (4 * v101);
              v111 = (4 * v101 - 4 * v109);
              *v110 = 0;
              v90 = v110 + 1;
              memcpy(v111, v99, v100);
              v112 = *(a1 + 8);
              *(a1 + 8) = v111;
              *(a1 + 16) = v90;
              *(a1 + 24) = 0;
              if (v112)
              {
                operator delete(v112);
              }
            }

            else
            {
              *v92 = 0;
              v90 = v92 + 4;
            }

            *(a1 + 16) = v90;
            break;
          case 6:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_154;
              }

              v33 = *(this + 1);
              v34 = *(this + 2);
              while (v33 < v34 && (*(this + 24) & 1) == 0)
              {
                v36 = *(a1 + 40);
                v35 = *(a1 + 48);
                if (v36 >= v35)
                {
                  v38 = *(a1 + 32);
                  v39 = v36 - v38;
                  v40 = (v36 - v38) >> 2;
                  v41 = v40 + 1;
                  if ((v40 + 1) >> 62)
                  {
                    goto LABEL_155;
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
                    sub_19B4C4FA8(a1 + 32, v43);
                  }

                  v44 = (v36 - v38) >> 2;
                  v45 = (4 * v40);
                  v46 = (4 * v40 - 4 * v44);
                  *v45 = 0;
                  v37 = v45 + 1;
                  memcpy(v46, v38, v39);
                  v47 = *(a1 + 32);
                  *(a1 + 32) = v46;
                  *(a1 + 40) = v37;
                  *(a1 + 48) = 0;
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

                *(a1 + 40) = v37;
                v48 = *(this + 1);
                if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
                {
                  goto LABEL_111;
                }

                *(v37 - 1) = *(*this + v48);
                v34 = *(this + 2);
                v33 = *(this + 1) + 4;
                *(this + 1) = v33;
              }

LABEL_112:
              PB::Reader::recallMark();
              goto LABEL_148;
            }

            v89 = *(a1 + 40);
            v88 = *(a1 + 48);
            if (v89 >= v88)
            {
              v93 = *(a1 + 32);
              v94 = v89 - v93;
              v95 = (v89 - v93) >> 2;
              v96 = v95 + 1;
              if ((v95 + 1) >> 62)
              {
                goto LABEL_155;
              }

              v97 = v88 - v93;
              if (v97 >> 1 > v96)
              {
                v96 = v97 >> 1;
              }

              if (v97 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v98 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v98 = v96;
              }

              if (v98)
              {
                sub_19B4C4FA8(a1 + 32, v98);
              }

              v105 = (v89 - v93) >> 2;
              v106 = (4 * v95);
              v107 = (4 * v95 - 4 * v105);
              *v106 = 0;
              v90 = v106 + 1;
              memcpy(v107, v93, v94);
              v108 = *(a1 + 32);
              *(a1 + 32) = v107;
              *(a1 + 40) = v90;
              *(a1 + 48) = 0;
              if (v108)
              {
                operator delete(v108);
              }
            }

            else
            {
              *v89 = 0;
              v90 = v89 + 4;
            }

            *(a1 + 40) = v90;
            break;
          default:
LABEL_66:
            if ((PB::Reader::skip(this) & 1) == 0)
            {
              goto LABEL_154;
            }

            goto LABEL_148;
        }

        v113 = *(this + 1);
        if (v113 > 0xFFFFFFFFFFFFFFFBLL || v113 + 4 > *(this + 2))
        {
LABEL_145:
          *(this + 24) = 1;
          goto LABEL_148;
        }

        *(v90 - 1) = *(*this + v113);
        goto LABEL_147;
      }

      if (v23 == 1)
      {
        break;
      }

      if (v23 == 2)
      {
        *(a1 + 72) |= 1u;
        v59 = *(this + 1);
        if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
        {
          goto LABEL_145;
        }

        *(a1 + 56) = *(*this + v59);
LABEL_147:
        *(this + 1) += 4;
        goto LABEL_148;
      }

      if (v23 != 3)
      {
        goto LABEL_66;
      }

      *(a1 + 72) |= 4u;
      v25 = *(this + 1);
      v24 = *(this + 2);
      v26 = *this;
      if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
      {
        v82 = 0;
        v83 = 0;
        v29 = 0;
        v17 = v24 >= v25;
        v84 = v24 - v25;
        if (!v17)
        {
          v84 = 0;
        }

        v85 = (v26 + v25);
        v86 = v25 + 1;
        while (1)
        {
          if (!v84)
          {
            LODWORD(v29) = 0;
            *(this + 24) = 1;
            goto LABEL_136;
          }

          v87 = *v85;
          *(this + 1) = v86;
          v29 |= (v87 & 0x7F) << v82;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          --v84;
          ++v85;
          ++v86;
          v14 = v83++ > 8;
          if (v14)
          {
LABEL_106:
            LODWORD(v29) = 0;
            goto LABEL_136;
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
            goto LABEL_106;
          }
        }
      }

LABEL_136:
      *(a1 + 64) = v29;
LABEL_148:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_152;
      }
    }

    *(a1 + 72) |= 2u;
    v49 = *(this + 1);
    if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(this + 2))
    {
      goto LABEL_145;
    }

    *(a1 + 60) = *(*this + v49);
    goto LABEL_147;
  }

LABEL_152:
  v114 = v4 ^ 1;
  return v114 & 1;
}

uint64_t sub_19B5A3BA4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 60));
    v4 = *(v3 + 72);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v12 = *(v3 + 64);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 72) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 72) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 72);
  if ((v4 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    v5 = *(v3 + 68);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_6:
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  v10 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v10 != v9)
  {
    v11 = *v10++;
    result = PB::Writer::write(this, v11);
  }

  return result;
}

uint64_t sub_19B5A3C80(uint64_t result)
{
  *result = &unk_1F0E2B558;
  *(result + 48) = 0;
  return result;
}

void sub_19B5A3CA8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A3CE0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "ambient", *(a1 + 16));
    v5 = *(a1 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "baselineConfidence", *(a1 + 20));
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "intensity", *(a1 + 24));
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "intensityBaselineDelta", *(a1 + 28));
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "intensityCalDelta", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = *(a1 + 44);
  PB::TextFormatter::format(this, "pocketFlag");
  v5 = *(a1 + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "pocketProbability", *(a1 + 36));
  v5 = *(a1 + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "rxNtcC", *(a1 + 40));
  v5 = *(a1 + 48);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v8 = *(a1 + 45);
  PB::TextFormatter::format(this, "scanFlags");
  if (*(a1 + 48))
  {
LABEL_11:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_12:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A3E64(uint64_t a1, PB::Reader *this)
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
            goto LABEL_92;
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 48) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_64:
              *(this + 24) = 1;
              goto LABEL_88;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_82;
          }

          if (v22 == 7)
          {
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_82;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 48) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_82;
            case 9:
              *(a1 + 48) |= 0x200u;
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

              *(a1 + 45) = v34;
              goto LABEL_88;
            case 0xA:
              *(a1 + 48) |= 0x100u;
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

              *(a1 + 44) = v24;
              goto LABEL_88;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 48) |= 1u;
          v25 = *(this + 1);
          v2 = *(this + 2);
          v26 = *this;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v35 = 0;
            v36 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(this + 1);
            }

            v37 = v2 - v25;
            v38 = (v26 + v25);
            v39 = v25 + 1;
            while (1)
            {
              if (!v37)
              {
                v29 = 0;
                *(this + 24) = 1;
                goto LABEL_87;
              }

              v40 = v39;
              v41 = *v38;
              *(this + 1) = v40;
              v29 |= (v41 & 0x7F) << v35;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              --v37;
              ++v38;
              v39 = v40 + 1;
              v14 = v36++ > 8;
              if (v14)
              {
                v29 = 0;
                goto LABEL_86;
              }
            }

            if (*(this + 24))
            {
              v29 = 0;
            }

LABEL_86:
            v2 = v40;
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
                v29 = 0;
                break;
              }
            }
          }

LABEL_87:
          *(a1 + 8) = v29;
          goto LABEL_88;
        }

        if (v22 == 2)
        {
          *(a1 + 48) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_82;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 48) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_82;
          case 4:
            *(a1 + 48) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_82;
          case 5:
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_82:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_88;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v42 = 0;
        return v42 & 1;
      }

      v2 = *(this + 1);
LABEL_88:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_92:
  v42 = v4 ^ 1;
  return v42 & 1;
}

uint64_t sub_19B5A4360(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v6 = *(v3 + 45);
    result = PB::Writer::write(this);
    if ((*(v3 + 48) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_21:
  v7 = *(v3 + 44);

  return PB::Writer::write(this);
}

void *sub_19B5A44B0(void *result)
{
  *result = &unk_1F0E2B360;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B5A44D4(PB::Base *this)
{
  *this = &unk_1F0E2B360;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B5A4538(PB::Base *a1)
{
  sub_19B5A44D4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A4570(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "volts");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A45E8(void *a1, PB::Reader *this)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_101;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v38 = v15++ > 8;
          if (v38)
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
          v38 = v9++ > 8;
          if (v38)
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

      if ((v10 >> 3) == 1)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_103;
          }

          if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
          {
            v21 = a1[2];
            while (1)
            {
              v22 = a1[3];
              if (v21 >= v22)
              {
                v23 = a1[1];
                v24 = v21 - v23;
                v25 = (v21 - v23) >> 2;
                v26 = v25 + 1;
                if ((v25 + 1) >> 62)
                {
                  goto LABEL_104;
                }

                v27 = v22 - v23;
                if (v27 >> 1 > v26)
                {
                  v26 = v27 >> 1;
                }

                if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v28 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v28 = v26;
                }

                if (v28)
                {
                  sub_19B4C4FA8((a1 + 1), v28);
                }

                v29 = (v21 - v23) >> 2;
                v30 = (4 * v25);
                v31 = (4 * v25 - 4 * v29);
                *v30 = 0;
                v21 = (v30 + 1);
                memcpy(v31, v23, v24);
                v32 = a1[1];
                a1[1] = v31;
                a1[2] = v21;
                a1[3] = 0;
                if (v32)
                {
                  operator delete(v32);
                }
              }

              else
              {
                *v21 = 0;
                v21 += 4;
              }

              a1[2] = v21;
              v34 = *(this + 1);
              v33 = *(this + 2);
              v35 = *this;
              v36 = 0;
              v37 = 0;
              v38 = v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v33;
              if (v38)
              {
                break;
              }

              v44 = 0;
              v45 = (v35 + v34);
              v46 = v34 + 1;
              while (1)
              {
                v42 = v46;
                *(this + 1) = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v36;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                ++v46;
                v38 = v37++ > 8;
                if (v38)
                {
                  goto LABEL_56;
                }
              }

LABEL_59:
              *(v21 - 1) = v44;
              if (v42 >= v33 || (*(this + 24) & 1) != 0)
              {
                goto LABEL_75;
              }
            }

            v44 = 0;
            v39 = v33 - v34;
            if (v33 < v34)
            {
              v39 = 0;
            }

            v40 = (v35 + v34);
            v41 = v34 + 1;
            while (v39)
            {
              v42 = v41;
              v43 = *v40;
              *(this + 1) = v42;
              v44 |= (v43 & 0x7F) << v36;
              if ((v43 & 0x80) == 0)
              {
                if (*(this + 24))
                {
                  LODWORD(v44) = 0;
                }

                goto LABEL_59;
              }

              v36 += 7;
              --v39;
              ++v40;
              v41 = v42 + 1;
              v38 = v37++ > 8;
              if (v38)
              {
LABEL_56:
                LODWORD(v44) = 0;
                goto LABEL_59;
              }
            }

            *(this + 24) = 1;
            *(v21 - 1) = 0;
          }

LABEL_75:
          PB::Reader::recallMark();
        }

        else
        {
          v49 = a1[2];
          v48 = a1[3];
          if (v49 >= v48)
          {
            v51 = a1[1];
            v52 = v49 - v51;
            v53 = (v49 - v51) >> 2;
            v54 = v53 + 1;
            if ((v53 + 1) >> 62)
            {
LABEL_104:
              sub_19B5BE690();
            }

            v55 = v48 - v51;
            if (v55 >> 1 > v54)
            {
              v54 = v55 >> 1;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v56 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v54;
            }

            if (v56)
            {
              sub_19B4C4FA8((a1 + 1), v56);
            }

            v57 = (v49 - v51) >> 2;
            v58 = (4 * v53);
            v59 = (4 * v53 - 4 * v57);
            *v58 = 0;
            v50 = v58 + 1;
            memcpy(v59, v51, v52);
            v60 = a1[1];
            a1[1] = v59;
            a1[2] = v50;
            a1[3] = 0;
            if (v60)
            {
              operator delete(v60);
            }
          }

          else
          {
            *v49 = 0;
            v50 = v49 + 4;
          }

          a1[2] = v50;
          v62 = *(this + 1);
          v61 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v61)
          {
            v70 = 0;
            v71 = 0;
            v66 = 0;
            v16 = v61 >= v62;
            v72 = v61 - v62;
            if (!v16)
            {
              v72 = 0;
            }

            v73 = (v63 + v62);
            v74 = v62 + 1;
            while (1)
            {
              if (!v72)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_96;
              }

              v75 = *v73;
              *(this + 1) = v74;
              v66 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              --v72;
              ++v73;
              ++v74;
              v38 = v71++ > 8;
              if (v38)
              {
LABEL_92:
                LODWORD(v66) = 0;
                goto LABEL_96;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }
          }

          else
          {
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = (v63 + v62);
            v68 = v62 + 1;
            while (1)
            {
              *(this + 1) = v68;
              v69 = *v67++;
              v66 |= (v69 & 0x7F) << v64;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              ++v68;
              v38 = v65++ > 8;
              if (v38)
              {
                goto LABEL_92;
              }
            }
          }

LABEL_96:
          *(v50 - 1) = v66;
        }
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_103:
        v76 = 0;
        return v76 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_101:
  v76 = v4 ^ 1;
  return v76 & 1;
}

uint64_t sub_19B5A4ACC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeVarInt(this))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_19B5A4B18(uint64_t result)
{
  *result = &unk_1F0E2E270;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B5A4B3C(PB::Base *this)
{
  *this = &unk_1F0E2E270;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_19B4C51F4(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_19B5A4BA0(PB::Base *a1)
{
  sub_19B5A4B3C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A4BD8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format(this, "value", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A4C50(uint64_t a1, PB::Reader *this)
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
            goto LABEL_35;
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
        *(a1 + 24) |= 1u;
        v22 = *(this + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v22);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this))
        {
          v24 = 0;
          return v24 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_19B5A4E7C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);

    return PB::Writer::write(this, v4);
  }

  return result;
}

void *sub_19B5A4EE4(void *result)
{
  *result = &unk_1F0E2BBB8;
  *(result + 188) = 0;
  return result;
}

void sub_19B5A4F0C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A4F44(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 188);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "auxHorizontalRotation", *(a1 + 16));
    v5 = *(a1 + 188);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_57;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "auxHorizontalTranslation", *(a1 + 20));
  v5 = *(a1 + 188);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "auxOmegaInertial_X", *(a1 + 24));
  v5 = *(a1 + 188);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "auxOmegaInertial_Y", *(a1 + 28));
  v5 = *(a1 + 188);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "auxOmegaInertial_Z", *(a1 + 32));
  v5 = *(a1 + 188);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "auxUserAccelInertial_X", *(a1 + 36));
  v5 = *(a1 + 188);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "auxUserAccelInertial_Y", *(a1 + 40));
  v5 = *(a1 + 188);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "auxUserAccelInertial_Z", *(a1 + 44));
  v5 = *(a1 + 188);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "auxVerticalRotation", *(a1 + 48));
  v5 = *(a1 + 188);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "auxVerticalTranslation", *(a1 + 52));
  v5 = *(a1 + 188);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_65:
  v7 = *(a1 + 180);
  PB::TextFormatter::format(this, "blockHeadTurnFalsePositive");
  v5 = *(a1 + 188);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "bodyTurnDetectionVerticalRotationSrc", *(a1 + 56));
  v5 = *(a1 + 188);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "bodyTurnMaximaBaseline", *(a1 + 60));
  v5 = *(a1 + 188);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_69;
  }

LABEL_68:
  v8 = *(a1 + 64);
  PB::TextFormatter::format(this, "counterBodyTurnAboveBaseline");
  v5 = *(a1 + 188);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_70;
  }

LABEL_69:
  v9 = *(a1 + 181);
  PB::TextFormatter::format(this, "hasRecentHeadTurn");
  v5 = *(a1 + 188);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "horizontalRotationSimilarity", *(a1 + 68));
  v5 = *(a1 + 188);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "horizontalRotationSimilarityBaseline", *(a1 + 72));
  v5 = *(a1 + 188);
  if ((v5 & 0x10000) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "horizontalRotationSimilarityThreshold", *(a1 + 76));
  v5 = *(a1 + 188);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "horizontalTranslationSimilarity", *(a1 + 80));
  v5 = *(a1 + 188);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "horizontalTranslationSimilarityBaseline", *(a1 + 84));
  v5 = *(a1 + 188);
  if ((v5 & 0x80000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "horizontalTranslationSimilarityThreshold", *(a1 + 88));
  v5 = *(a1 + 188);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_77;
  }

LABEL_76:
  v10 = *(a1 + 182);
  PB::TextFormatter::format(this, "inBodyTurn");
  v5 = *(a1 + 188);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_78;
  }

LABEL_77:
  v11 = *(a1 + 183);
  PB::TextFormatter::format(this, "inComplexTransitionState");
  v5 = *(a1 + 188);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_79;
  }

LABEL_78:
  v12 = *(a1 + 184);
  PB::TextFormatter::format(this, "inStrongBodyTurn");
  v5 = *(a1 + 188);
  if ((v5 & 0x100000) == 0)
  {
LABEL_26:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_80;
  }

LABEL_79:
  v13 = *(a1 + 92);
  PB::TextFormatter::format(this, "longBodyTurnCounter");
  v5 = *(a1 + 188);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_81;
  }

LABEL_80:
  v14 = *(a1 + 185);
  PB::TextFormatter::format(this, "longBodyTurnState");
  v5 = *(a1 + 188);
  if ((v5 & 0x1000000000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_82;
  }

LABEL_81:
  v15 = *(a1 + 186);
  PB::TextFormatter::format(this, "overrideHeadTurn");
  v5 = *(a1 + 188);
  if ((v5 & 0x200000) == 0)
  {
LABEL_29:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(this, "srcHorizontalRotation", *(a1 + 96));
  v5 = *(a1 + 188);
  if ((v5 & 0x400000) == 0)
  {
LABEL_30:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(this, "srcHorizontalTranslation", *(a1 + 100));
  v5 = *(a1 + 188);
  if ((v5 & 0x800000) == 0)
  {
LABEL_31:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(this, "srcOmegaInertial_X", *(a1 + 104));
  v5 = *(a1 + 188);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_86;
  }

LABEL_85:
  PB::TextFormatter::format(this, "srcOmegaInertial_Y", *(a1 + 108));
  v5 = *(a1 + 188);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_87;
  }

LABEL_86:
  PB::TextFormatter::format(this, "srcOmegaInertial_Z", *(a1 + 112));
  v5 = *(a1 + 188);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(this, "srcUserAccelInertial_X", *(a1 + 116));
  v5 = *(a1 + 188);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(this, "srcUserAccelInertial_Y", *(a1 + 120));
  v5 = *(a1 + 188);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(this, "srcUserAccelInertial_Z", *(a1 + 124));
  v5 = *(a1 + 188);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_91;
  }

LABEL_90:
  PB::TextFormatter::format(this, "srcVertToHrzRotRatio", *(a1 + 128));
  v5 = *(a1 + 188);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(this, "srcVerticalRotation", *(a1 + 132));
  v5 = *(a1 + 188);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(this, "srcVerticalTranslation", *(a1 + 136));
  v5 = *(a1 + 188);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_93:
  PB::TextFormatter::format(this, "srcYawRotationExtremaBuffer", *(a1 + 140));
  v5 = *(a1 + 188);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_41:
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_95;
  }

LABEL_94:
  PB::TextFormatter::format(this, "srcYawRotationMaximaBaseline", *(a1 + 144));
  v5 = *(a1 + 188);
  if ((v5 & 1) == 0)
  {
LABEL_42:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_96;
  }

LABEL_95:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 188);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_97;
  }

LABEL_96:
  PB::TextFormatter::format(this, "verticalRotationSimilarity", *(a1 + 148));
  v5 = *(a1 + 188);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_98;
  }

LABEL_97:
  PB::TextFormatter::format(this, "verticalRotationSimilarityBaseline", *(a1 + 152));
  v5 = *(a1 + 188);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_45:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_99;
  }

LABEL_98:
  PB::TextFormatter::format(this, "verticalRotationSimilarityThreshold", *(a1 + 156));
  v5 = *(a1 + 188);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_46:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_100;
  }

LABEL_99:
  PB::TextFormatter::format(this, "verticalTranslationSimilarity", *(a1 + 160));
  v5 = *(a1 + 188);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_101;
  }

LABEL_100:
  PB::TextFormatter::format(this, "verticalTranslationSimilarityBaseline", *(a1 + 164));
  v5 = *(a1 + 188);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_48:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_102;
  }

LABEL_101:
  PB::TextFormatter::format(this, "verticalTranslationSimilarityThreshold", *(a1 + 168));
  v5 = *(a1 + 188);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_49:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_103;
  }

LABEL_102:
  PB::TextFormatter::format(this, "yawRateSimilarity1000ms", *(a1 + 172));
  v5 = *(a1 + 188);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_50:
    if ((v5 & 0x2000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_103:
  PB::TextFormatter::format(this, "yawRateSimilarity200ms", *(a1 + 176));
  if ((*(a1 + 188) & 0x2000000000000) != 0)
  {
LABEL_51:
    v6 = *(a1 + 187);
    PB::TextFormatter::format(this, "yawRateSimilarityState");
  }

LABEL_52:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A55C8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_222;
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
          *(a1 + 188) |= 1uLL;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 8) = *(*this + v22);
          v23 = *(this + 1) + 8;
          goto LABEL_209;
        case 2u:
          *(a1 + 188) |= 0x800000uLL;
          v74 = *(this + 1);
          if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 104) = *(*this + v74);
          goto LABEL_208;
        case 3u:
          *(a1 + 188) |= 0x1000000uLL;
          v70 = *(this + 1);
          if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 108) = *(*this + v70);
          goto LABEL_208;
        case 4u:
          *(a1 + 188) |= 0x2000000uLL;
          v72 = *(this + 1);
          if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 112) = *(*this + v72);
          goto LABEL_208;
        case 5u:
          *(a1 + 188) |= 8uLL;
          v64 = *(this + 1);
          if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 24) = *(*this + v64);
          goto LABEL_208;
        case 6u:
          *(a1 + 188) |= 0x10uLL;
          v82 = *(this + 1);
          if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 28) = *(*this + v82);
          goto LABEL_208;
        case 7u:
          *(a1 + 188) |= 0x20uLL;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 32) = *(*this + v85);
          goto LABEL_208;
        case 8u:
          *(a1 + 188) |= 0x40000000uLL;
          v73 = *(this + 1);
          if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 132) = *(*this + v73);
          goto LABEL_208;
        case 9u:
          *(a1 + 188) |= 0x200uLL;
          v88 = *(this + 1);
          if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 48) = *(*this + v88);
          goto LABEL_208;
        case 0xAu:
          *(a1 + 188) |= 0x200000uLL;
          v67 = *(this + 1);
          if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 96) = *(*this + v67);
          goto LABEL_208;
        case 0xBu:
          *(a1 + 188) |= 2uLL;
          v87 = *(this + 1);
          if (v87 > 0xFFFFFFFFFFFFFFFBLL || v87 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 16) = *(*this + v87);
          goto LABEL_208;
        case 0xCu:
          *(a1 + 188) |= 0x4000000uLL;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 116) = *(*this + v59);
          goto LABEL_208;
        case 0xDu:
          *(a1 + 188) |= 0x8000000uLL;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 120) = *(*this + v66);
          goto LABEL_208;
        case 0xEu:
          *(a1 + 188) |= 0x10000000uLL;
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 124) = *(*this + v84);
          goto LABEL_208;
        case 0xFu:
          *(a1 + 188) |= 0x40uLL;
          v50 = *(this + 1);
          if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 36) = *(*this + v50);
          goto LABEL_208;
        case 0x10u:
          *(a1 + 188) |= 0x80uLL;
          v71 = *(this + 1);
          if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 40) = *(*this + v71);
          goto LABEL_208;
        case 0x11u:
          *(a1 + 188) |= 0x100uLL;
          v48 = *(this + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 44) = *(*this + v48);
          goto LABEL_208;
        case 0x12u:
          *(a1 + 188) |= 0x80000000uLL;
          v76 = *(this + 1);
          if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 136) = *(*this + v76);
          goto LABEL_208;
        case 0x13u:
          *(a1 + 188) |= 0x400uLL;
          v86 = *(this + 1);
          if (v86 > 0xFFFFFFFFFFFFFFFBLL || v86 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 52) = *(*this + v86);
          goto LABEL_208;
        case 0x14u:
          *(a1 + 188) |= 0x400000uLL;
          v94 = *(this + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 100) = *(*this + v94);
          goto LABEL_208;
        case 0x15u:
          *(a1 + 188) |= 4uLL;
          v81 = *(this + 1);
          if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 20) = *(*this + v81);
          goto LABEL_208;
        case 0x16u:
          *(a1 + 188) |= 0x400000000uLL;
          v83 = *(this + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 148) = *(*this + v83);
          goto LABEL_208;
        case 0x17u:
          *(a1 + 188) |= 0x4000uLL;
          v92 = *(this + 1);
          if (v92 > 0xFFFFFFFFFFFFFFFBLL || v92 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 68) = *(*this + v92);
          goto LABEL_208;
        case 0x18u:
          *(a1 + 188) |= 0x2000000000uLL;
          v99 = *(this + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 160) = *(*this + v99);
          goto LABEL_208;
        case 0x19u:
          *(a1 + 188) |= 0x20000uLL;
          v69 = *(this + 1);
          if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 80) = *(*this + v69);
          goto LABEL_208;
        case 0x1Au:
          *(a1 + 188) |= 0x800000000uLL;
          v68 = *(this + 1);
          if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 152) = *(*this + v68);
          goto LABEL_208;
        case 0x1Bu:
          *(a1 + 188) |= 0x8000uLL;
          v111 = *(this + 1);
          if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 72) = *(*this + v111);
          goto LABEL_208;
        case 0x1Cu:
          *(a1 + 188) |= 0x4000000000uLL;
          v46 = *(this + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 164) = *(*this + v46);
          goto LABEL_208;
        case 0x1Du:
          *(a1 + 188) |= 0x40000uLL;
          v100 = *(this + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 84) = *(*this + v100);
          goto LABEL_208;
        case 0x1Eu:
          *(a1 + 188) |= 0x1000000000uLL;
          v101 = *(this + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 156) = *(*this + v101);
          goto LABEL_208;
        case 0x1Fu:
          *(a1 + 188) |= 0x10000uLL;
          v89 = *(this + 1);
          if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 76) = *(*this + v89);
          goto LABEL_208;
        case 0x20u:
          *(a1 + 188) |= 0x8000000000uLL;
          v75 = *(this + 1);
          if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 168) = *(*this + v75);
          goto LABEL_208;
        case 0x21u:
          *(a1 + 188) |= 0x80000uLL;
          v90 = *(this + 1);
          if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 88) = *(*this + v90);
          goto LABEL_208;
        case 0x22u:
          *(a1 + 188) |= 0x200000000000uLL;
          v51 = *(this + 1);
          if (v51 >= *(this + 2))
          {
            v54 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v52 = v51 + 1;
            v53 = *(*this + v51);
            *(this + 1) = v52;
            v54 = v53 != 0;
          }

          *(a1 + 183) = v54;
          goto LABEL_210;
        case 0x23u:
          *(a1 + 188) |= 0x800uLL;
          v47 = *(this + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 56) = *(*this + v47);
          goto LABEL_208;
        case 0x24u:
          *(a1 + 188) |= 0x1000uLL;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 60) = *(*this + v41);
          goto LABEL_208;
        case 0x25u:
          *(a1 + 188) |= 0x100000000000uLL;
          v42 = *(this + 1);
          if (v42 >= *(this + 2))
          {
            v45 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v43 = v42 + 1;
            v44 = *(*this + v42);
            *(this + 1) = v43;
            v45 = v44 != 0;
          }

          *(a1 + 182) = v45;
          goto LABEL_210;
        case 0x26u:
          *(a1 + 188) |= 0x400000000000uLL;
          v28 = *(this + 1);
          if (v28 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v29 = v28 + 1;
            v30 = *(*this + v28);
            *(this + 1) = v29;
            v31 = v30 != 0;
          }

          *(a1 + 184) = v31;
          goto LABEL_210;
        case 0x27u:
          *(a1 + 188) |= 0x2000uLL;
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
                goto LABEL_220;
              }

              v105 += 7;
              ++v109;
              v14 = v106++ > 8;
            }

            while (!v14);
LABEL_206:
            LODWORD(v107) = 0;
            goto LABEL_220;
          }

          v119 = 0;
          v120 = 0;
          v107 = 0;
          v17 = v102 >= v103;
          v121 = v102 - v103;
          if (!v17)
          {
            v121 = 0;
          }

          v122 = (v104 + v103);
          v123 = v103 + 1;
          while (2)
          {
            if (v121)
            {
              v124 = *v122;
              *(this + 1) = v123;
              v107 |= (v124 & 0x7F) << v119;
              if (v124 < 0)
              {
                v119 += 7;
                --v121;
                ++v122;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
                  goto LABEL_206;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v107) = 0;
              }
            }

            else
            {
              LODWORD(v107) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_220:
          *(a1 + 64) = v107;
          goto LABEL_210;
        case 0x28u:
          *(a1 + 188) |= 0x100000000uLL;
          v93 = *(this + 1);
          if (v93 > 0xFFFFFFFFFFFFFFFBLL || v93 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 140) = *(*this + v93);
          goto LABEL_208;
        case 0x29u:
          *(a1 + 188) |= 0x200000000uLL;
          v65 = *(this + 1);
          if (v65 > 0xFFFFFFFFFFFFFFFBLL || v65 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 144) = *(*this + v65);
          goto LABEL_208;
        case 0x2Au:
          *(a1 + 188) |= 0x1000000000000uLL;
          v77 = *(this + 1);
          if (v77 >= *(this + 2))
          {
            v80 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v78 = v77 + 1;
            v79 = *(*this + v77);
            *(this + 1) = v78;
            v80 = v79 != 0;
          }

          *(a1 + 186) = v80;
          goto LABEL_210;
        case 0x2Bu:
          *(a1 + 188) |= 0x80000000000uLL;
          v95 = *(this + 1);
          if (v95 >= *(this + 2))
          {
            v98 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v96 = v95 + 1;
            v97 = *(*this + v95);
            *(this + 1) = v96;
            v98 = v97 != 0;
          }

          *(a1 + 181) = v98;
          goto LABEL_210;
        case 0x2Cu:
          *(a1 + 188) |= 0x40000000000uLL;
          v24 = *(this + 1);
          if (v24 >= *(this + 2))
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v25 = v24 + 1;
            v26 = *(*this + v24);
            *(this + 1) = v25;
            v27 = v26 != 0;
          }

          *(a1 + 180) = v27;
          goto LABEL_210;
        case 0x2Du:
          *(a1 + 188) |= 0x20000000uLL;
          v49 = *(this + 1);
          if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 128) = *(*this + v49);
          goto LABEL_208;
        case 0x2Eu:
          *(a1 + 188) |= 0x20000000000uLL;
          v91 = *(this + 1);
          if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
          {
            goto LABEL_172;
          }

          *(a1 + 176) = *(*this + v91);
          goto LABEL_208;
        case 0x2Fu:
          *(a1 + 188) |= 0x10000000000uLL;
          v112 = *(this + 1);
          if (v112 <= 0xFFFFFFFFFFFFFFFBLL && v112 + 4 <= *(this + 2))
          {
            *(a1 + 172) = *(*this + v112);
LABEL_208:
            v23 = *(this + 1) + 4;
LABEL_209:
            *(this + 1) = v23;
          }

          else
          {
LABEL_172:
            *(this + 24) = 1;
          }

          goto LABEL_210;
        case 0x30u:
          *(a1 + 188) |= 0x100000uLL;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_217;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_184:
            LODWORD(v37) = 0;
            goto LABEL_217;
          }

          v113 = 0;
          v114 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v115 = v32 - v33;
          if (!v17)
          {
            v115 = 0;
          }

          v116 = (v34 + v33);
          v117 = v33 + 1;
          break;
        case 0x31u:
          *(a1 + 188) |= 0x800000000000uLL;
          v55 = *(this + 1);
          if (v55 >= *(this + 2))
          {
            v58 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v56 = v55 + 1;
            v57 = *(*this + v55);
            *(this + 1) = v56;
            v58 = v57 != 0;
          }

          *(a1 + 185) = v58;
          goto LABEL_210;
        case 0x32u:
          *(a1 + 188) |= 0x2000000000000uLL;
          v60 = *(this + 1);
          if (v60 >= *(this + 2))
          {
            v63 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v61 = v60 + 1;
            v62 = *(*this + v60);
            *(this + 1) = v61;
            v63 = v62 != 0;
          }

          *(a1 + 187) = v63;
          goto LABEL_210;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_210;
          }

          v126 = 0;
          return v126 & 1;
      }

      while (1)
      {
        if (!v115)
        {
          LODWORD(v37) = 0;
          *(this + 24) = 1;
          goto LABEL_217;
        }

        v118 = *v116;
        *(this + 1) = v117;
        v37 |= (v118 & 0x7F) << v113;
        if ((v118 & 0x80) == 0)
        {
          break;
        }

        v113 += 7;
        --v115;
        ++v116;
        ++v117;
        v14 = v114++ > 8;
        if (v14)
        {
          goto LABEL_184;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v37) = 0;
      }

LABEL_217:
      *(a1 + 92) = v37;
LABEL_210:
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

LABEL_222:
  v126 = v4 ^ 1;
  return v126 & 1;
}

uint64_t sub_19B5A6458(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 188);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 188);
    if ((v4 & 0x800000) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((v4 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 188);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 188);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 188);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 188);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 188);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 188);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 188);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 188);
  if ((v4 & 0x40) == 0)
  {
LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 188);
  if ((v4 & 0x80) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 188);
  if ((v4 & 0x100) == 0)
  {
LABEL_18:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 188);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 188);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 188);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 188);
  if ((v4 & 4) == 0)
  {
LABEL_22:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 188);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 188);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 188);
  if ((v4 & 0x20000) == 0)
  {
LABEL_26:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 188);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000) == 0)
  {
LABEL_28:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  result = PB::Writer::write(this, *(v3 + 164));
  v4 = *(v3 + 188);
  if ((v4 & 0x40000) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_81:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000) == 0)
  {
LABEL_32:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 188);
  if ((v4 & 0x80000) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_86;
  }

LABEL_85:
  v5 = *(v3 + 183);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x800) == 0)
  {
LABEL_36:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000) == 0)
  {
LABEL_37:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 188);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x400000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

LABEL_88:
  v6 = *(v3 + 182);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x400000000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_90;
  }

LABEL_89:
  v7 = *(v3 + 184);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x2000) == 0)
  {
LABEL_40:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_91;
  }

LABEL_90:
  v8 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_41:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_42:
    if ((v4 & 0x1000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_94;
  }

LABEL_93:
  v9 = *(v3 + 186);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_44:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_95;
  }

LABEL_94:
  v10 = *(v3 + 181);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_45:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_95:
  v11 = *(v3 + 180);
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_46:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 188);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_47:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_48:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = PB::Writer::write(this, *(v3 + 172));
  v4 = *(v3 + 188);
  if ((v4 & 0x100000) == 0)
  {
LABEL_49:
    if ((v4 & 0x800000000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_100:
    v13 = *(v3 + 185);
    result = PB::Writer::write(this);
    if ((*(v3 + 188) & 0x2000000000000) == 0)
    {
      return result;
    }

    goto LABEL_101;
  }

LABEL_99:
  v12 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x800000000000) != 0)
  {
    goto LABEL_100;
  }

LABEL_50:
  if ((v4 & 0x2000000000000) == 0)
  {
    return result;
  }

LABEL_101:
  v14 = *(v3 + 187);

  return PB::Writer::write(this);
}

uint64_t sub_19B5A6A08(uint64_t result)
{
  *result = &unk_1F0E2BC60;
  *(result + 128) = 0;
  return result;
}

void sub_19B5A6A30(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A6A68(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 128);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "auxAvgOmegaAroundGrav2s", *(a1 + 32));
    v5 = *(a1 + 128);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "auxAvgOmegaAroundGravLong", *(a1 + 36));
  v5 = *(a1 + 128);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "auxAvgOmegaAroundGravShort", *(a1 + 40));
  v5 = *(a1 + 128);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "auxAvgOmegaLong", *(a1 + 44));
  v5 = *(a1 + 128);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "auxAvgOmegaShort", *(a1 + 48));
  v5 = *(a1 + 128);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "auxHistoricalOmegaStdMax", *(a1 + 52));
  v5 = *(a1 + 128);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "auxOverSrcYawDiffSum", *(a1 + 56));
  v5 = *(a1 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "dotRotGrav", *(a1 + 60));
  v5 = *(a1 + 128);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6 = *(a1 + 120);
  PB::TextFormatter::format(this, "hasUnCorrelatedSrcMotion");
  v5 = *(a1 + 128);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  v7 = *(a1 + 121);
  PB::TextFormatter::format(this, "inHeadTurnState");
  v5 = *(a1 + 128);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a1 + 122);
  PB::TextFormatter::format(this, "inLikelySlowBodyTurnPed");
  v5 = *(a1 + 128);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a1 + 123);
  PB::TextFormatter::format(this, "isInCorrelatedActivity");
  v5 = *(a1 + 128);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  v10 = *(a1 + 124);
  PB::TextFormatter::format(this, "isInCorrelatedMotion");
  v5 = *(a1 + 128);
  if ((v5 & 1) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "lastHeadTurnStartTime", *(a1 + 8));
  v5 = *(a1 + 128);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "lastHeadTurnStopTime", *(a1 + 16));
  v5 = *(a1 + 128);
  if ((v5 & 0x800) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "lastHeadTurnYawRadians", *(a1 + 64));
  v5 = *(a1 + 128);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v11 = *(a1 + 125);
  PB::TextFormatter::format(this, "likelyOnGymMachine");
  v5 = *(a1 + 128);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "relOmegaMeanLong", *(a1 + 68));
  v5 = *(a1 + 128);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "relOmegaVarLong", *(a1 + 72));
  v5 = *(a1 + 128);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "relOmegaVarShort", *(a1 + 76));
  v5 = *(a1 + 128);
  if ((v5 & 0x8000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "srcAccumulatedYaw4s", *(a1 + 80));
  v5 = *(a1 + 128);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "srcAvgOmegaAroundGrav2s", *(a1 + 84));
  v5 = *(a1 + 128);
  if ((v5 & 0x20000) == 0)
  {
LABEL_24:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "srcAvgOmegaAroundGravLong", *(a1 + 88));
  v5 = *(a1 + 128);
  if ((v5 & 0x40000) == 0)
  {
LABEL_25:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "srcAvgOmegaAroundGravShort", *(a1 + 92));
  v5 = *(a1 + 128);
  if ((v5 & 0x80000) == 0)
  {
LABEL_26:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "srcAvgOmegaLong", *(a1 + 96));
  v5 = *(a1 + 128);
  if ((v5 & 0x100000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "srcAvgOmegaShort", *(a1 + 100));
  v5 = *(a1 + 128);
  if ((v5 & 0x200000) == 0)
  {
LABEL_28:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "srcAvgYawBufferSum", *(a1 + 104));
  v5 = *(a1 + 128);
  if ((v5 & 0x400000) == 0)
  {
LABEL_29:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "srcHistoricalOmegaStdMax", *(a1 + 108));
  v5 = *(a1 + 128);
  if ((v5 & 0x800000) == 0)
  {
LABEL_30:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "srcRotationAxisAlignment", *(a1 + 112));
  v5 = *(a1 + 128);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "srcYawBufferLongStd", *(a1 + 116));
  v5 = *(a1 + 128);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_32:
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  v12 = *(a1 + 126);
  PB::TextFormatter::format(this, "steadyStatePedestrian");
  if ((*(a1 + 128) & 4) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 24));
  }

LABEL_34:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A6EAC(uint64_t a1, PB::Reader *this)
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
        break;
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
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_136;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 128) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_108;
        case 2u:
          *(a1 + 128) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_130;
        case 3u:
          *(a1 + 128) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_130;
        case 4u:
          *(a1 + 128) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_130;
        case 5u:
          *(a1 + 128) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_130;
        case 6u:
          *(a1 + 128) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_130;
        case 7u:
          *(a1 + 128) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_130;
        case 8u:
          *(a1 + 128) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_130;
        case 9u:
          *(a1 + 128) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_130;
        case 0xAu:
          *(a1 + 128) |= 0x20000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v25 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = *(*this + v2++);
            *(this + 1) = v2;
            v25 = v24 != 0;
          }

          *(a1 + 124) = v25;
          goto LABEL_132;
        case 0xBu:
          *(a1 + 128) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v35 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v34 = *(*this + v2++);
            *(this + 1) = v2;
            v35 = v34 != 0;
          }

          *(a1 + 120) = v35;
          goto LABEL_132;
        case 0xCu:
          *(a1 + 128) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_130;
        case 0xDu:
          *(a1 + 128) |= 0x10000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v23 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v22 = *(*this + v2++);
            *(this + 1) = v2;
            v23 = v22 != 0;
          }

          *(a1 + 123) = v23;
          goto LABEL_132;
        case 0xEu:
          *(a1 + 128) |= 0x40000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v2++);
            *(this + 1) = v2;
            v33 = v32 != 0;
          }

          *(a1 + 125) = v33;
          goto LABEL_132;
        case 0xFu:
          *(a1 + 128) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_130;
        case 0x10u:
          *(a1 + 128) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_130;
        case 0x11u:
          *(a1 + 128) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_130;
        case 0x12u:
          *(a1 + 128) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_130;
        case 0x13u:
          *(a1 + 128) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_130;
        case 0x14u:
          *(a1 + 128) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_130;
        case 0x15u:
          *(a1 + 128) |= 0x80000000;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v30 = *(*this + v2++);
            *(this + 1) = v2;
            v31 = v30 != 0;
          }

          *(a1 + 126) = v31;
          goto LABEL_132;
        case 0x16u:
          *(a1 + 128) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_130;
        case 0x17u:
          *(a1 + 128) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_130;
        case 0x18u:
          *(a1 + 128) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_130;
        case 0x19u:
          *(a1 + 128) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_130;
        case 0x1Au:
          *(a1 + 128) |= 0x4000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v26 = *(*this + v2++);
            *(this + 1) = v2;
            v27 = v26 != 0;
          }

          *(a1 + 121) = v27;
          goto LABEL_132;
        case 0x1Bu:
          *(a1 + 128) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_130;
        case 0x1Cu:
          *(a1 + 128) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_108;
        case 0x1Du:
          *(a1 + 128) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_108:
          v2 = *(this + 1) + 8;
          goto LABEL_131;
        case 0x1Eu:
          *(a1 + 128) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 116) = *(*this + v2);
          goto LABEL_130;
        case 0x1Fu:
          *(a1 + 128) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_114:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 80) = *(*this + v2);
LABEL_130:
            v2 = *(this + 1) + 4;
LABEL_131:
            *(this + 1) = v2;
          }

          goto LABEL_132;
        case 0x20u:
          *(a1 + 128) |= 0x8000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v29 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v28 = *(*this + v2++);
            *(this + 1) = v2;
            v29 = v28 != 0;
          }

          *(a1 + 122) = v29;
          goto LABEL_132;
        default:
          if (!PB::Reader::skip(this))
          {
            v36 = 0;
            return v36 & 1;
          }

          v2 = *(this + 1);
LABEL_132:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_136;
          }

          break;
      }
    }

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
  }

LABEL_136:
  v36 = v4 ^ 1;
  return v36 & 1;
}

uint64_t sub_19B5A77C8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 128);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 128);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 128);
  if ((v4 & 0x800000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 128);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = *(v3 + 124);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(v3 + 120);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 128);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v7 = *(v3 + 123);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(v3 + 125);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 128);
  if ((v4 & 0x20) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 128);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v9 = *(v3 + 126);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_23:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_24:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_25:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_26:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 128);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v10 = *(v3 + 121);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_28:
    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 128);
  if ((v4 & 1) == 0)
  {
LABEL_29:
    if ((v4 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 128) & 0x8000000) == 0)
    {
      return result;
    }

    goto LABEL_65;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x8000000) == 0)
  {
    return result;
  }

LABEL_65:
  v11 = *(v3 + 122);

  return PB::Writer::write(this);
}

double sub_19B5A7B80(uint64_t a1)
{
  *a1 = &unk_1F0E2C478;
  *(a1 + 164) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B5A7BB4(PB::Base *this)
{
  *this = &unk_1F0E2C478;
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

void sub_19B5A7C28(PB::Base *a1)
{
  sub_19B5A7BB4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A7C60(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 164);
  if ((v5 & 0x400000) != 0)
  {
    v15 = *(a1 + 152);
    PB::TextFormatter::format(this, "btz");
    v5 = *(a1 + 164);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "btzDisturbanceDuration", *(a1 + 72));
  v5 = *(a1 + 164);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  v16 = *(a1 + 153);
  PB::TextFormatter::format(this, "btzIsCurrentlyQuiescent");
  v5 = *(a1 + 164);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "btzQuiescentDurationLoose", *(a1 + 76));
  v5 = *(a1 + 164);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "btzQuiescentDurationStrict", *(a1 + 80));
  v5 = *(a1 + 164);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "btzStaticPoseDuration", *(a1 + 84));
  v5 = *(a1 + 164);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(a1 + 154);
  PB::TextFormatter::format(this, "centeredBoresight");
  v5 = *(a1 + 164);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(a1 + 155);
  PB::TextFormatter::format(this, "centeredBoresightInHighDynamics");
  v5 = *(a1 + 164);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_51:
  v19 = *(a1 + 88);
  PB::TextFormatter::format(this, "clientMode");
  if ((*(a1 + 164) & 0x4000000) != 0)
  {
LABEL_11:
    v6 = *(a1 + 156);
    PB::TextFormatter::format(this, "inComplexTransitionState");
  }

LABEL_12:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "noiseVariance", v9);
  }

  v10 = *(a1 + 164);
  if ((v10 & 0x8000000) != 0)
  {
    v20 = *(a1 + 157);
    PB::TextFormatter::format(this, "pinnedBoresight");
    v10 = *(a1 + 164);
    if ((v10 & 0x80) == 0)
    {
LABEL_16:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_55;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  PB::TextFormatter::format(this, "qHat_W", *(a1 + 92));
  v10 = *(a1 + 164);
  if ((v10 & 0x100) == 0)
  {
LABEL_17:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "qHat_X", *(a1 + 96));
  v10 = *(a1 + 164);
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "qHat_Y", *(a1 + 100));
  v10 = *(a1 + 164);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "qHat_Z", *(a1 + 104));
  v10 = *(a1 + 164);
  if ((v10 & 0x800) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "rBoresight_X", *(a1 + 108));
  v10 = *(a1 + 164);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "rBoresight_Y", *(a1 + 112));
  v10 = *(a1 + 164);
  if ((v10 & 0x2000) == 0)
  {
LABEL_22:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "rBoresight_Z", *(a1 + 116));
  v10 = *(a1 + 164);
  if ((v10 & 0x4000) == 0)
  {
LABEL_23:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "rHat_X", *(a1 + 120));
  v10 = *(a1 + 164);
  if ((v10 & 0x8000) == 0)
  {
LABEL_24:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "rHat_Y", *(a1 + 124));
  v10 = *(a1 + 164);
  if ((v10 & 0x10000) == 0)
  {
LABEL_25:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "rHat_Z", *(a1 + 128));
  v10 = *(a1 + 164);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_64:
  v21 = *(a1 + 158);
  PB::TextFormatter::format(this, "requestingCamera");
  if (*(a1 + 164))
  {
LABEL_27:
    PB::TextFormatter::format(this, "srcTimestamp", *(a1 + 56));
  }

LABEL_28:
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "stateVariance", v13);
  }

  v14 = *(a1 + 164);
  if ((v14 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
    v14 = *(a1 + 164);
    if ((v14 & 0x20000000) == 0)
    {
LABEL_32:
      if ((v14 & 0x20000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_68;
    }
  }

  else if ((v14 & 0x20000000) == 0)
  {
    goto LABEL_32;
  }

  v22 = *(a1 + 159);
  PB::TextFormatter::format(this, "tracking1IMU");
  v14 = *(a1 + 164);
  if ((v14 & 0x20000) == 0)
  {
LABEL_33:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  v23 = *(a1 + 132);
  PB::TextFormatter::format(this, "trackingBehavior");
  v14 = *(a1 + 164);
  if ((v14 & 0x40000000) == 0)
  {
LABEL_34:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }

LABEL_69:
  v24 = *(a1 + 160);
  PB::TextFormatter::format(this, "trackingDisabled");
  v14 = *(a1 + 164);
  if ((v14 & 0x40000) == 0)
  {
LABEL_35:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_71;
  }

LABEL_70:
  v25 = *(a1 + 136);
  PB::TextFormatter::format(this, "trackingScheme");
  v14 = *(a1 + 164);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_72;
  }

LABEL_71:
  v26 = *(a1 + 161);
  PB::TextFormatter::format(this, "useRelaxedQuiescenceBounds");
  v14 = *(a1 + 164);
  if ((v14 & 0x80000) == 0)
  {
LABEL_37:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "vHat_X", *(a1 + 140));
  v14 = *(a1 + 164);
  if ((v14 & 0x100000) == 0)
  {
LABEL_38:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_73:
  PB::TextFormatter::format(this, "vHat_Y", *(a1 + 144));
  if ((*(a1 + 164) & 0x200000) != 0)
  {
LABEL_39:
    PB::TextFormatter::format(this, "vHat_Z", *(a1 + 148));
  }

LABEL_40:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A810C(uint64_t a1, PB::Reader *this)
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
        break;
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
        goto LABEL_254;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 164) |= 2u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 64) = *(*this + v23);
          goto LABEL_139;
        case 2u:
          *(a1 + 164) |= 0x800u;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 108) = *(*this + v85);
          goto LABEL_248;
        case 3u:
          *(a1 + 164) |= 0x1000u;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 112) = *(*this + v66);
          goto LABEL_248;
        case 4u:
          *(a1 + 164) |= 0x2000u;
          v83 = *(this + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 116) = *(*this + v83);
          goto LABEL_248;
        case 5u:
          *(a1 + 164) |= 0x4000u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 120) = *(*this + v58);
          goto LABEL_248;
        case 6u:
          *(a1 + 164) |= 0x8000u;
          v100 = *(this + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 124) = *(*this + v100);
          goto LABEL_248;
        case 7u:
          *(a1 + 164) |= 0x10000u;
          v103 = *(this + 1);
          if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 128) = *(*this + v103);
          goto LABEL_248;
        case 8u:
          *(a1 + 164) |= 0x80000u;
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 140) = *(*this + v84);
          goto LABEL_248;
        case 9u:
          *(a1 + 164) |= 0x100000u;
          v109 = *(this + 1);
          if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 144) = *(*this + v109);
          goto LABEL_248;
        case 0xAu:
          *(a1 + 164) |= 0x200000u;
          v60 = *(this + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 148) = *(*this + v60);
          goto LABEL_248;
        case 0xBu:
          *(a1 + 164) |= 0x100u;
          v108 = *(this + 1);
          if (v108 > 0xFFFFFFFFFFFFFFFBLL || v108 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 96) = *(*this + v108);
          goto LABEL_248;
        case 0xCu:
          *(a1 + 164) |= 0x200u;
          v57 = *(this + 1);
          if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 100) = *(*this + v57);
          goto LABEL_248;
        case 0xDu:
          *(a1 + 164) |= 0x400u;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 104) = *(*this + v59);
          goto LABEL_248;
        case 0xEu:
          *(a1 + 164) |= 0x80u;
          v102 = *(this + 1);
          if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 92) = *(*this + v102);
          goto LABEL_248;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_256;
            }

            v32 = *(this + 1);
            v33 = *(this + 2);
            while (v32 < v33 && (*(this + 24) & 1) == 0)
            {
              v35 = *(a1 + 40);
              v34 = *(a1 + 48);
              if (v35 >= v34)
              {
                v37 = *(a1 + 32);
                v38 = v35 - v37;
                v39 = (v35 - v37) >> 2;
                v40 = v39 + 1;
                if ((v39 + 1) >> 62)
                {
                  goto LABEL_257;
                }

                v41 = v34 - v37;
                if (v41 >> 1 > v40)
                {
                  v40 = v41 >> 1;
                }

                v17 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
                v42 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v17)
                {
                  v42 = v40;
                }

                if (v42)
                {
                  sub_19B4C4FA8(a1 + 32, v42);
                }

                v43 = (v35 - v37) >> 2;
                v44 = (4 * v39);
                v45 = (4 * v39 - 4 * v43);
                *v44 = 0;
                v36 = v44 + 1;
                memcpy(v45, v37, v38);
                v46 = *(a1 + 32);
                *(a1 + 32) = v45;
                *(a1 + 40) = v36;
                *(a1 + 48) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v35 = 0;
                v36 = v35 + 4;
              }

              *(a1 + 40) = v36;
              v47 = *(this + 1);
              if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(this + 2))
              {
                goto LABEL_210;
              }

              *(v36 - 1) = *(*this + v47);
              v33 = *(this + 2);
              v32 = *(this + 1) + 4;
              *(this + 1) = v32;
            }

            goto LABEL_211;
          }

          v149 = *(a1 + 40);
          v148 = *(a1 + 48);
          if (v149 >= v148)
          {
            v165 = *(a1 + 32);
            v166 = v149 - v165;
            v167 = (v149 - v165) >> 2;
            v168 = v167 + 1;
            if ((v167 + 1) >> 62)
            {
              goto LABEL_257;
            }

            v169 = v148 - v165;
            if (v169 >> 1 > v168)
            {
              v168 = v169 >> 1;
            }

            v17 = v169 >= 0x7FFFFFFFFFFFFFFCLL;
            v170 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v170 = v168;
            }

            if (v170)
            {
              sub_19B4C4FA8(a1 + 32, v170);
            }

            v177 = (v149 - v165) >> 2;
            v178 = (4 * v167);
            v179 = (4 * v167 - 4 * v177);
            *v178 = 0;
            v150 = v178 + 1;
            memcpy(v179, v165, v166);
            v180 = *(a1 + 32);
            *(a1 + 32) = v179;
            *(a1 + 40) = v150;
            *(a1 + 48) = 0;
            if (v180)
            {
              operator delete(v180);
            }
          }

          else
          {
            *v149 = 0;
            v150 = v149 + 4;
          }

          *(a1 + 40) = v150;
          goto LABEL_244;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_256:
              v186 = 0;
              return v186 & 1;
            }

            v67 = *(this + 1);
            v68 = *(this + 2);
            while (v67 < v68 && (*(this + 24) & 1) == 0)
            {
              v70 = *(a1 + 16);
              v69 = *(a1 + 24);
              if (v70 >= v69)
              {
                v72 = *(a1 + 8);
                v73 = v70 - v72;
                v74 = (v70 - v72) >> 2;
                v75 = v74 + 1;
                if ((v74 + 1) >> 62)
                {
                  goto LABEL_257;
                }

                v76 = v69 - v72;
                if (v76 >> 1 > v75)
                {
                  v75 = v76 >> 1;
                }

                v17 = v76 >= 0x7FFFFFFFFFFFFFFCLL;
                v77 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v17)
                {
                  v77 = v75;
                }

                if (v77)
                {
                  sub_19B4C4FA8(a1 + 8, v77);
                }

                v78 = (v70 - v72) >> 2;
                v79 = (4 * v74);
                v80 = (4 * v74 - 4 * v78);
                *v79 = 0;
                v71 = v79 + 1;
                memcpy(v80, v72, v73);
                v81 = *(a1 + 8);
                *(a1 + 8) = v80;
                *(a1 + 16) = v71;
                *(a1 + 24) = 0;
                if (v81)
                {
                  operator delete(v81);
                }
              }

              else
              {
                *v70 = 0;
                v71 = v70 + 4;
              }

              *(a1 + 16) = v71;
              v82 = *(this + 1);
              if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
              {
LABEL_210:
                *(this + 24) = 1;
                break;
              }

              *(v71 - 1) = *(*this + v82);
              v68 = *(this + 2);
              v67 = *(this + 1) + 4;
              *(this + 1) = v67;
            }

LABEL_211:
            PB::Reader::recallMark();
          }

          else
          {
            v152 = *(a1 + 16);
            v151 = *(a1 + 24);
            if (v152 >= v151)
            {
              v171 = *(a1 + 8);
              v172 = v152 - v171;
              v173 = (v152 - v171) >> 2;
              v174 = v173 + 1;
              if ((v173 + 1) >> 62)
              {
LABEL_257:
                sub_19B5BE690();
              }

              v175 = v151 - v171;
              if (v175 >> 1 > v174)
              {
                v174 = v175 >> 1;
              }

              v17 = v175 >= 0x7FFFFFFFFFFFFFFCLL;
              v176 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v17)
              {
                v176 = v174;
              }

              if (v176)
              {
                sub_19B4C4FA8(a1 + 8, v176);
              }

              v181 = (v152 - v171) >> 2;
              v182 = (4 * v173);
              v183 = (4 * v173 - 4 * v181);
              *v182 = 0;
              v150 = v182 + 1;
              memcpy(v183, v171, v172);
              v184 = *(a1 + 8);
              *(a1 + 8) = v183;
              *(a1 + 16) = v150;
              *(a1 + 24) = 0;
              if (v184)
              {
                operator delete(v184);
              }
            }

            else
            {
              *v152 = 0;
              v150 = v152 + 4;
            }

            *(a1 + 16) = v150;
LABEL_244:
            v185 = *(this + 1);
            if (v185 <= 0xFFFFFFFFFFFFFFFBLL && v185 + 4 <= *(this + 2))
            {
              *(v150 - 1) = *(*this + v185);
LABEL_248:
              v111 = *(this + 1) + 4;
LABEL_249:
              *(this + 1) = v111;
            }

            else
            {
LABEL_246:
              *(this + 24) = 1;
            }
          }

LABEL_250:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_254;
          }

          break;
        case 0x11u:
          *(a1 + 164) |= 0x8000000u;
          v28 = *(this + 1);
          if (v28 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v29 = v28 + 1;
            v30 = *(*this + v28);
            *(this + 1) = v29;
            v31 = v30 != 0;
          }

          *(a1 + 157) = v31;
          goto LABEL_250;
        case 0x12u:
          *(a1 + 164) |= 0x400000u;
          v95 = *(this + 1);
          if (v95 >= *(this + 2))
          {
            v98 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v96 = v95 + 1;
            v97 = *(*this + v95);
            *(this + 1) = v96;
            v98 = v97 != 0;
          }

          *(a1 + 152) = v98;
          goto LABEL_250;
        case 0x13u:
          *(a1 + 164) |= 0x1000000u;
          v104 = *(this + 1);
          if (v104 >= *(this + 2))
          {
            v107 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v105 = v104 + 1;
            v106 = *(*this + v104);
            *(this + 1) = v105;
            v107 = v106 != 0;
          }

          *(a1 + 154) = v107;
          goto LABEL_250;
        case 0x14u:
          *(a1 + 164) |= 0x10u;
          v120 = *(this + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 80) = *(*this + v120);
          goto LABEL_248;
        case 0x15u:
          *(a1 + 164) |= 8u;
          v99 = *(this + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 76) = *(*this + v99);
          goto LABEL_248;
        case 0x16u:
          *(a1 + 164) |= 4u;
          v101 = *(this + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 72) = *(*this + v101);
          goto LABEL_248;
        case 0x17u:
          *(a1 + 164) |= 0x20000000u;
          v116 = *(this + 1);
          if (v116 >= *(this + 2))
          {
            v119 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v117 = v116 + 1;
            v118 = *(*this + v116);
            *(this + 1) = v117;
            v119 = v118 != 0;
          }

          *(a1 + 159) = v119;
          goto LABEL_250;
        case 0x18u:
          *(a1 + 164) |= 0x80000000;
          v121 = *(this + 1);
          if (v121 >= *(this + 2))
          {
            v124 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v122 = v121 + 1;
            v123 = *(*this + v121);
            *(this + 1) = v122;
            v124 = v123 != 0;
          }

          *(a1 + 161) = v124;
          goto LABEL_250;
        case 0x19u:
          *(a1 + 164) |= 0x800000u;
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

          *(a1 + 153) = v65;
          goto LABEL_250;
        case 0x1Au:
          *(a1 + 164) |= 0x20u;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 84) = *(*this + v61);
          goto LABEL_248;
        case 0x1Bu:
          *(a1 + 164) |= 0x40000u;
          v134 = *(this + 1);
          v133 = *(this + 2);
          v135 = *this;
          if (v134 <= 0xFFFFFFFFFFFFFFF5 && v134 + 10 <= v133)
          {
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = (v135 + v134);
            v140 = v134 + 1;
            do
            {
              *(this + 1) = v140;
              v141 = *v139++;
              v138 |= (v141 & 0x7F) << v136;
              if ((v141 & 0x80) == 0)
              {
                goto LABEL_237;
              }

              v136 += 7;
              ++v140;
              v14 = v137++ > 8;
            }

            while (!v14);
LABEL_209:
            LODWORD(v138) = 0;
            goto LABEL_237;
          }

          v159 = 0;
          v160 = 0;
          v138 = 0;
          v17 = v133 >= v134;
          v161 = v133 - v134;
          if (!v17)
          {
            v161 = 0;
          }

          v162 = (v135 + v134);
          v163 = v134 + 1;
          while (2)
          {
            if (v161)
            {
              v164 = *v162;
              *(this + 1) = v163;
              v138 |= (v164 & 0x7F) << v159;
              if (v164 < 0)
              {
                v159 += 7;
                --v161;
                ++v162;
                ++v163;
                v14 = v160++ > 8;
                if (v14)
                {
                  goto LABEL_209;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v138) = 0;
              }
            }

            else
            {
              LODWORD(v138) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_237:
          *(a1 + 136) = v138;
          goto LABEL_250;
        case 0x1Cu:
          *(a1 + 164) |= 0x10000000u;
          v24 = *(this + 1);
          if (v24 >= *(this + 2))
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v25 = v24 + 1;
            v26 = *(*this + v24);
            *(this + 1) = v25;
            v27 = v26 != 0;
          }

          *(a1 + 158) = v27;
          goto LABEL_250;
        case 0x1Du:
          *(a1 + 164) |= 0x4000000u;
          v125 = *(this + 1);
          if (v125 >= *(this + 2))
          {
            v128 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v126 = v125 + 1;
            v127 = *(*this + v125);
            *(this + 1) = v126;
            v128 = v127 != 0;
          }

          *(a1 + 156) = v128;
          goto LABEL_250;
        case 0x1Eu:
          *(a1 + 164) |= 0x40000000u;
          v129 = *(this + 1);
          if (v129 >= *(this + 2))
          {
            v132 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v130 = v129 + 1;
            v131 = *(*this + v129);
            *(this + 1) = v130;
            v132 = v131 != 0;
          }

          *(a1 + 160) = v132;
          goto LABEL_250;
        case 0x1Fu:
          *(a1 + 164) |= 1u;
          v110 = *(this + 1);
          if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 56) = *(*this + v110);
LABEL_139:
          v111 = *(this + 1) + 8;
          goto LABEL_249;
        case 0x20u:
          *(a1 + 164) |= 0x40u;
          v87 = *(this + 1);
          v86 = *(this + 2);
          v88 = *this;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(this + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_234;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_187:
            LODWORD(v91) = 0;
            goto LABEL_234;
          }

          v153 = 0;
          v154 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v155 = v86 - v87;
          if (!v17)
          {
            v155 = 0;
          }

          v156 = (v88 + v87);
          v157 = v87 + 1;
          while (2)
          {
            if (v155)
            {
              v158 = *v156;
              *(this + 1) = v157;
              v91 |= (v158 & 0x7F) << v153;
              if (v158 < 0)
              {
                v153 += 7;
                --v155;
                ++v156;
                ++v157;
                v14 = v154++ > 8;
                if (v14)
                {
                  goto LABEL_187;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_234:
          *(a1 + 88) = v91;
          goto LABEL_250;
        case 0x21u:
          *(a1 + 164) |= 0x2000000u;
          v112 = *(this + 1);
          if (v112 >= *(this + 2))
          {
            v115 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v113 = v112 + 1;
            v114 = *(*this + v112);
            *(this + 1) = v113;
            v115 = v114 != 0;
          }

          *(a1 + 155) = v115;
          goto LABEL_250;
        case 0x22u:
          *(a1 + 164) |= 0x20000u;
          v49 = *(this + 1);
          v48 = *(this + 2);
          v50 = *this;
          if (v49 <= 0xFFFFFFFFFFFFFFF5 && v49 + 10 <= v48)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            do
            {
              *(this + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                goto LABEL_231;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
            }

            while (!v14);
LABEL_173:
            LODWORD(v53) = 0;
            goto LABEL_231;
          }

          v142 = 0;
          v143 = 0;
          v53 = 0;
          v17 = v48 >= v49;
          v144 = v48 - v49;
          if (!v17)
          {
            v144 = 0;
          }

          v145 = (v50 + v49);
          v146 = v49 + 1;
          while (2)
          {
            if (v144)
            {
              v147 = *v145;
              *(this + 1) = v146;
              v53 |= (v147 & 0x7F) << v142;
              if (v147 < 0)
              {
                v142 += 7;
                --v144;
                ++v145;
                ++v146;
                v14 = v143++ > 8;
                if (v14)
                {
                  goto LABEL_173;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v53) = 0;
              }
            }

            else
            {
              LODWORD(v53) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_231:
          *(a1 + 132) = v53;
          goto LABEL_250;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_256;
          }

          goto LABEL_250;
      }
    }

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
  }

LABEL_254:
  v186 = v4 ^ 1;
  return v186 & 1;
}

uint64_t sub_19B5A9054(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 164);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 164);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 164);
  if ((v4 & 0x1000) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 164);
  if ((v4 & 0x2000) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 164);
  if ((v4 & 0x4000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 164);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 164);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 164);
  if ((v4 & 0x80000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 164);
  if ((v4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 164);
  if ((v4 & 0x200000) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 164);
  if ((v4 & 0x100) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

LABEL_53:
    result = PB::Writer::write(this, *(v3 + 104));
    if ((*(v3 + 164) & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 164);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_53;
  }

LABEL_14:
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    result = PB::Writer::write(this, *(v3 + 92));
  }

LABEL_16:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 164);
  if ((v11 & 0x8000000) != 0)
  {
    v12 = *(v3 + 157);
    result = PB::Writer::write(this);
    v11 = *(v3 + 164);
    if ((v11 & 0x400000) == 0)
    {
LABEL_24:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_57;
    }
  }

  else if ((v11 & 0x400000) == 0)
  {
    goto LABEL_24;
  }

  v13 = *(v3 + 152);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v14 = *(v3 + 154);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x10) == 0)
  {
LABEL_26:
    if ((v11 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 80));
  v11 = *(v3 + 164);
  if ((v11 & 8) == 0)
  {
LABEL_27:
    if ((v11 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 76));
  v11 = *(v3 + 164);
  if ((v11 & 4) == 0)
  {
LABEL_28:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 72));
  v11 = *(v3 + 164);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_29:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = *(v3 + 159);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v16 = *(v3 + 161);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x800000) == 0)
  {
LABEL_31:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  v17 = *(v3 + 153);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x20) == 0)
  {
LABEL_32:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 84));
  v11 = *(v3 + 164);
  if ((v11 & 0x40000) == 0)
  {
LABEL_33:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  v18 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_34:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  v19 = *(v3 + 158);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  v20 = *(v3 + 156);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x40000000) == 0)
  {
LABEL_36:
    if ((v11 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  v21 = *(v3 + 160);
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 1) == 0)
  {
LABEL_37:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 56));
  v11 = *(v3 + 164);
  if ((v11 & 0x40) == 0)
  {
LABEL_38:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_71:
    v23 = *(v3 + 155);
    result = PB::Writer::write(this);
    if ((*(v3 + 164) & 0x20000) == 0)
    {
      return result;
    }

    goto LABEL_72;
  }

LABEL_70:
  v22 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x2000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_39:
  if ((v11 & 0x20000) == 0)
  {
    return result;
  }

LABEL_72:
  v24 = *(v3 + 132);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B5A9458(uint64_t result)
{
  *result = &unk_1F0E2C9B8;
  *(result + 48) = 0;
  return result;
}

void sub_19B5A9480(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A94B8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "avgRotationMax", *(a1 + 16));
    v5 = *(a1 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "historicalDisturbanceDuration", *(a1 + 20));
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "historicalQuiescenceDuration", *(a1 + 24));
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "instAccelMagDiff", *(a1 + 28));
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "instRotationMax", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = *(a1 + 44);
  PB::TextFormatter::format(this, "isAvgGrav");
  v5 = *(a1 + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "lpfAccelMagDiff", *(a1 + 36));
  v5 = *(a1 + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "measNoiseVar", *(a1 + 40));
  if (*(a1 + 48))
  {
LABEL_10:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A961C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_71;
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
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_59:
              *(this + 24) = 1;
              goto LABEL_67;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_65:
            v2 = *(this + 1) + 4;
LABEL_66:
            *(this + 1) = v2;
            goto LABEL_67;
          }

          if (v22 == 4)
          {
            *(a1 + 48) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_65;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_66;
          }

          if (v22 == 2)
          {
            *(a1 + 48) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_65;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 48) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_65;
        }

        if (v22 == 6)
        {
          *(a1 + 48) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 48) |= 0x100u;
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

            *(a1 + 44) = v24;
            goto LABEL_67;
          case 8:
            *(a1 + 48) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_65;
          case 9:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_67:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_71:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B5A9A08(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 48) & 4) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  v5 = *(v3 + 44);
  result = PB::Writer::write(this);
  v4 = *(v3 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_19:
  v6 = *(v3 + 20);

  return PB::Writer::write(this, v6);
}

uint64_t sub_19B5A9B3C(uint64_t result)
{
  *result = &unk_1F0E2CC58;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_19B5A9B60(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2CC58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B5A9BE0(PB::Base *a1)
{
  sub_19B5A9B60(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A9C18(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  if (*(a1 + 20))
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "isAvgGrav");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A9CB0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_35;
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
        if (v22 >= *(this + 2))
        {
          v25 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v23 = v22 + 1;
          v24 = *(*this + v22);
          *(this + 1) = v23;
          v25 = v24 != 0;
        }

        *(a1 + 16) = v25;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v27 = 0;
          return v27 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_35:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t sub_19B5A9F24(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B5A9F8C(uint64_t result)
{
  *result = &unk_1F0E2C980;
  *(result + 24) = 0;
  return result;
}

void sub_19B5A9FB4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A9FEC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 8) != 0)
  {
    v7 = *(a1 + 20);
    PB::TextFormatter::format(this, "activeGnssSession");
    v5 = *(a1 + 24);
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

  else if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 8);
  PB::TextFormatter::format(this, "currentModesOfOperation");
  v5 = *(a1 + 24);
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
  v9 = *(a1 + 12);
  PB::TextFormatter::format(this, "gnssModeOfOperation");
  v5 = *(a1 + 24);
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
  v10 = *(a1 + 21);
  PB::TextFormatter::format(this, "hasSubscribedRhythmicClient");
  if ((*(a1 + 24) & 4) != 0)
  {
LABEL_6:
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "rhythmicMode");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AA0D0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_106;
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

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
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

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          *(a1 + 24) |= 2u;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v68 = v3 - v44;
            v69 = (v45 + v44);
            v70 = v44 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_101;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v48 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
                goto LABEL_100;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

LABEL_100:
            v3 = v71;
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
              v3 = v50;
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
                LODWORD(v48) = 0;
                break;
              }
            }
          }

LABEL_101:
          *(a1 + 12) = v48;
          goto LABEL_102;
        }

        if (v23 == 2)
        {
          *(a1 + 24) |= 8u;
          v3 = *(this + 1);
          v2 = *(this + 2);
          if (v3 >= v2)
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v26 = *(*this + v3++);
            *(this + 1) = v3;
            v27 = v26 != 0;
          }

          *(a1 + 20) = v27;
          goto LABEL_102;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(a1 + 24) |= 4u;
            v28 = *(this + 1);
            v2 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
            {
              v52 = 0;
              v53 = 0;
              v32 = 0;
              if (v2 <= v28)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v54 = v3 - v28;
              v55 = (v29 + v28);
              v56 = v28 + 1;
              while (1)
              {
                if (!v54)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_93;
                }

                v57 = v56;
                v58 = *v55;
                *(this + 1) = v57;
                v32 |= (v58 & 0x7F) << v52;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                --v54;
                ++v55;
                v56 = v57 + 1;
                v14 = v53++ > 8;
                if (v14)
                {
                  LODWORD(v32) = 0;
                  goto LABEL_92;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }

LABEL_92:
              v3 = v57;
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v29 + v28);
              v34 = v28 + 1;
              while (1)
              {
                v3 = v34;
                *(this + 1) = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v14 = v31++ > 8;
                if (v14)
                {
                  LODWORD(v32) = 0;
                  break;
                }
              }
            }

LABEL_93:
            *(a1 + 16) = v32;
            goto LABEL_102;
          case 4:
            *(a1 + 24) |= 1u;
            v36 = *(this + 1);
            v2 = *(this + 2);
            v37 = *this;
            if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
            {
              v59 = 0;
              v60 = 0;
              v40 = 0;
              if (v2 <= v36)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v61 = v3 - v36;
              v62 = (v37 + v36);
              v63 = v36 + 1;
              while (1)
              {
                if (!v61)
                {
                  LODWORD(v40) = 0;
                  *(this + 24) = 1;
                  goto LABEL_97;
                }

                v64 = v63;
                v65 = *v62;
                *(this + 1) = v64;
                v40 |= (v65 & 0x7F) << v59;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                --v61;
                ++v62;
                v63 = v64 + 1;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v40) = 0;
                  goto LABEL_96;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v40) = 0;
              }

LABEL_96:
              v3 = v64;
            }

            else
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = (v37 + v36);
              v42 = v36 + 1;
              while (1)
              {
                v3 = v42;
                *(this + 1) = v42;
                v43 = *v41++;
                v40 |= (v43 & 0x7F) << v38;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                ++v42;
                v14 = v39++ > 8;
                if (v14)
                {
                  LODWORD(v40) = 0;
                  break;
                }
              }
            }

LABEL_97:
            *(a1 + 8) = v40;
            goto LABEL_102;
          case 5:
            *(a1 + 24) |= 0x10u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v25 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v24 = *(*this + v3++);
              *(this + 1) = v3;
              v25 = v24 != 0;
            }

            *(a1 + 21) = v25;
            goto LABEL_102;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v73 = 0;
        return v73 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_102:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_106:
  v73 = v4 ^ 1;
  return v73 & 1;
}