uint64_t sub_19B4EE790(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 88))
  {
    result = PB::Writer::write(this, *(result + 80));
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = v3[4];
  v8 = v3[5];
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v11 = v3[7];
  v10 = v3[8];
  while (v11 != v10)
  {
    v12 = *v11++;
    result = PB::Writer::write(this, v12);
  }

  return result;
}

uint64_t sub_19B4EE834(uint64_t result)
{
  *result = &unk_1F0E38F50;
  *(result + 68) = 0;
  return result;
}

void sub_19B4EE85C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4EE894(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "accelX", *(a1 + 8));
    v5 = *(a1 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 68) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "accelY", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "accelZ", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "gyroX", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "gyroY", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "gyroZ", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v6 = *(a1 + 64);
  PB::TextFormatter::format(this, "sequenceNumber");
  if ((*(a1 + 68) & 0x40) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

LABEL_10:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EE9D8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_82;
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
            *(a1 + 68) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_60:
              *(this + 24) = 1;
              goto LABEL_78;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_72;
          }

          if (v22 == 8)
          {
            *(a1 + 68) |= 0x80u;
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
                v2 = *(this + 1);
              }

              v33 = v2 - v23;
              v34 = (v24 + v23);
              v35 = v23 + 1;
              while (1)
              {
                if (!v33)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_77;
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
                  goto LABEL_76;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_76:
              v2 = v36;
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
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_77:
            *(a1 + 64) = v27;
            goto LABEL_78;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 68) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_60;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_72;
          }

          if (v22 == 6)
          {
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_60;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_72;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 68) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_60;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_72;
        }

        if (v22 == 4)
        {
          *(a1 + 68) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_60;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_72;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 68) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_60;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_72;
        }

        if (v22 == 2)
        {
          *(a1 + 68) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_60;
          }

          *(a1 + 32) = *(*this + v2);
LABEL_72:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_78;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_78:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_82:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B4EEE3C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 68);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 68) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v5 = *(v3 + 64);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4EEF54(uint64_t result)
{
  *result = &unk_1F0E2F8C0;
  *(result + 28) = 0;
  return result;
}

void sub_19B4EEF7C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4EEFB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "calories_kCal", *(a1 + 24));
    v5 = *(a1 + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EF058(uint64_t a1, PB::Reader *this)
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
            goto LABEL_43;
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
        goto LABEL_43;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 28) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 16) = *(*this + v2);
LABEL_37:
        v2 = *(this + 1) + 8;
LABEL_38:
        *(this + 1) = v2;
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 4u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 24) = *(*this + v2);
        v2 = *(this + 1) + 4;
        goto LABEL_38;
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_39:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_43;
      }
    }

    *(a1 + 28) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_33:
      *(this + 24) = 1;
      goto LABEL_39;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_37;
  }

LABEL_43:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B4EF2A0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(result + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 28) & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

void *sub_19B4EF32C(void *result)
{
  *result = &unk_1F0E2C398;
  result[28] = 0;
  return result;
}

void sub_19B4EF354(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4EF38C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 224);
  if ((v5 & 0x40000) != 0)
  {
    v6 = *(a1 + 152);
    PB::TextFormatter::format(this, "activity");
    v5 = *(a1 + 224);
    if ((v5 & 0x80000) == 0)
    {
LABEL_3:
      if ((v5 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 156);
  PB::TextFormatter::format(this, "activityTypeWithoutOverride");
  v5 = *(a1 + 224);
  if ((v5 & 0x100000) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "avgTruthMets", *(a1 + 160));
  v5 = *(a1 + 224);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(a1 + 8);
  PB::TextFormatter::format(this, "basalCalories");
  v5 = *(a1 + 224);
  if ((v5 & 0x200000) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "basalMets", *(a1 + 164));
  v5 = *(a1 + 224);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "computeTime", *(a1 + 16));
  v5 = *(a1 + 224);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "currentPace", *(a1 + 24));
  v5 = *(a1 + 224);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "distance", *(a1 + 32));
  v5 = *(a1 + 224);
  if ((v5 & 0x400000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  v9 = *(a1 + 168);
  PB::TextFormatter::format(this, "distanceSource");
  v5 = *(a1 + 224);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "duration", *(a1 + 40));
  v5 = *(a1 + 224);
  if ((v5 & 0x800000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  v10 = *(a1 + 172);
  PB::TextFormatter::format(this, "elevationAscended");
  v5 = *(a1 + 224);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  v11 = *(a1 + 176);
  PB::TextFormatter::format(this, "gradeType");
  v5 = *(a1 + 224);
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "heartRate", *(a1 + 48));
  v5 = *(a1 + 224);
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "heartRateConfidence", *(a1 + 56));
  v5 = *(a1 + 224);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  v12 = *(a1 + 220);
  PB::TextFormatter::format(this, "isMotionOverrideSet");
  v5 = *(a1 + 224);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v13 = *(a1 + 221);
  PB::TextFormatter::format(this, "isStanding");
  v5 = *(a1 + 224);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v14 = *(a1 + 222);
  PB::TextFormatter::format(this, "isStored");
  v5 = *(a1 + 224);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "now", *(a1 + 64));
  v5 = *(a1 + 224);
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "pedDistance", *(a1 + 72));
  v5 = *(a1 + 224);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "pedRawDistance", *(a1 + 80));
  v5 = *(a1 + 224);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  v15 = *(a1 + 180);
  PB::TextFormatter::format(this, "pushCount");
  v5 = *(a1 + 224);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "rawFMMets", *(a1 + 184));
  v5 = *(a1 + 224);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "rawHRMets", *(a1 + 188));
  v5 = *(a1 + 224);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "rawTruthMets", *(a1 + 192));
  v5 = *(a1 + 224);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "rawWRMets", *(a1 + 196));
  v5 = *(a1 + 224);
  if ((v5 & 0x400) == 0)
  {
LABEL_27:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "recordInterval", *(a1 + 88));
  v5 = *(a1 + 224);
  if ((v5 & 0x800) == 0)
  {
LABEL_28:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "speed", *(a1 + 96));
  v5 = *(a1 + 224);
  if ((v5 & 0x1000) == 0)
  {
LABEL_29:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "startTime", *(a1 + 104));
  v5 = *(a1 + 224);
  if ((v5 & 0x2000) == 0)
  {
LABEL_30:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "stepBegin", *(a1 + 112));
  v5 = *(a1 + 224);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  v16 = *(a1 + 200);
  PB::TextFormatter::format(this, "stepCount");
  v5 = *(a1 + 224);
  if ((v5 & 0x4000) == 0)
  {
LABEL_32:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "stepDuration", *(a1 + 120));
  v5 = *(a1 + 224);
  if ((v5 & 0x8000) == 0)
  {
LABEL_33:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "stepEnd", *(a1 + 128));
  v5 = *(a1 + 224);
  if ((v5 & 0x10000) == 0)
  {
LABEL_34:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  v17 = *(a1 + 136);
  PB::TextFormatter::format(this, "totalCalories");
  v5 = *(a1 + 224);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(this, "userMets", *(a1 + 204));
  v5 = *(a1 + 224);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(this, "vectorMag", *(a1 + 208));
  v5 = *(a1 + 224);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(this, "vectorMagCmSimOnly", *(a1 + 212));
  v5 = *(a1 + 224);
  if ((v5 & 0x20000) == 0)
  {
LABEL_38:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_79:
  PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 144));
  if ((*(a1 + 224) & 0x400000000) != 0)
  {
LABEL_39:
    PB::TextFormatter::format(this, "wrMets", *(a1 + 216));
  }

LABEL_40:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EF890(uint64_t a1, PB::Reader *this)
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
            goto LABEL_294;
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
          *(a1 + 224) |= 0x1000uLL;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 104) = *(*this + v22);
          goto LABEL_146;
        case 2u:
          *(a1 + 224) |= 2uLL;
          v65 = *(this + 1);
          if (v65 > 0xFFFFFFFFFFFFFFF7 || v65 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 16) = *(*this + v65);
          goto LABEL_146;
        case 3u:
          *(a1 + 224) |= 0x80uLL;
          v53 = *(this + 1);
          if (v53 > 0xFFFFFFFFFFFFFFF7 || v53 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 64) = *(*this + v53);
          goto LABEL_146;
        case 4u:
          *(a1 + 224) |= 0x40000uLL;
          v56 = *(this + 1);
          v55 = *(this + 2);
          v57 = *this;
          if (v56 <= 0xFFFFFFFFFFFFFFF5 && v56 + 10 <= v55)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            do
            {
              *(this + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                goto LABEL_274;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v60) = 0;
            goto LABEL_274;
          }

          v154 = 0;
          v155 = 0;
          v60 = 0;
          v17 = v55 >= v56;
          v156 = v55 - v56;
          if (!v17)
          {
            v156 = 0;
          }

          v157 = (v57 + v56);
          v158 = v56 + 1;
          while (2)
          {
            if (v156)
            {
              v159 = *v157;
              *(this + 1) = v158;
              v60 |= (v159 & 0x7F) << v154;
              if (v159 < 0)
              {
                v154 += 7;
                --v156;
                ++v157;
                ++v158;
                v14 = v155++ > 8;
                if (v14)
                {
                  goto LABEL_196;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v60) = 0;
              }
            }

            else
            {
              LODWORD(v60) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_274:
          *(a1 + 152) = v60;
          goto LABEL_254;
        case 5u:
          *(a1 + 224) |= 0x80000000uLL;
          v40 = *(this + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 204) = *(*this + v40);
          goto LABEL_252;
        case 6u:
          *(a1 + 224) |= 0x400000000uLL;
          v72 = *(this + 1);
          if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 216) = *(*this + v72);
          goto LABEL_252;
        case 7u:
          *(a1 + 224) |= 0x10000000uLL;
          v83 = *(this + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 192) = *(*this + v83);
          goto LABEL_252;
        case 8u:
          *(a1 + 224) |= 0x100000uLL;
          v64 = *(this + 1);
          if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 160) = *(*this + v64);
          goto LABEL_252;
        case 9u:
          *(a1 + 224) |= 0x200000uLL;
          v97 = *(this + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 164) = *(*this + v97);
          goto LABEL_252;
        case 0xAu:
          *(a1 + 224) |= 0x400uLL;
          v42 = *(this + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 88) = *(*this + v42);
          goto LABEL_146;
        case 0xBu:
          *(a1 + 224) |= 0x2000000000uLL;
          v93 = *(this + 1);
          if (v93 >= *(this + 2))
          {
            v96 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v94 = v93 + 1;
            v95 = *(*this + v93);
            *(this + 1) = v94;
            v96 = v95 != 0;
          }

          *(a1 + 222) = v96;
          goto LABEL_254;
        case 0xCu:
          *(a1 + 224) |= 0x10uLL;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 40) = *(*this + v39);
          goto LABEL_146;
        case 0xDu:
          *(a1 + 224) |= 0x4000uLL;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 120) = *(*this + v41);
          goto LABEL_146;
        case 0xEu:
          *(a1 + 224) |= 0x40000000uLL;
          v75 = *(this + 1);
          v74 = *(this + 2);
          v76 = *this;
          if (v75 <= 0xFFFFFFFFFFFFFFF5 && v75 + 10 <= v74)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = (v76 + v75);
            v81 = v75 + 1;
            do
            {
              *(this + 1) = v81;
              v82 = *v80++;
              v79 |= (v82 & 0x7F) << v77;
              if ((v82 & 0x80) == 0)
              {
                goto LABEL_277;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_206:
            LODWORD(v79) = 0;
            goto LABEL_277;
          }

          v160 = 0;
          v161 = 0;
          v79 = 0;
          v17 = v74 >= v75;
          v162 = v74 - v75;
          if (!v17)
          {
            v162 = 0;
          }

          v163 = (v76 + v75);
          v164 = v75 + 1;
          while (2)
          {
            if (v162)
            {
              v165 = *v163;
              *(this + 1) = v164;
              v79 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                --v162;
                ++v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_206;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v79) = 0;
              }
            }

            else
            {
              LODWORD(v79) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_277:
          *(a1 + 200) = v79;
          goto LABEL_254;
        case 0xFu:
          *(a1 + 224) |= 0x2000uLL;
          v37 = *(this + 1);
          if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 112) = *(*this + v37);
          goto LABEL_146;
        case 0x10u:
          *(a1 + 224) |= 0x8000uLL;
          v54 = *(this + 1);
          if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 128) = *(*this + v54);
          goto LABEL_146;
        case 0x11u:
          *(a1 + 224) |= 8uLL;
          v36 = *(this + 1);
          if (v36 > 0xFFFFFFFFFFFFFFF7 || v36 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 32) = *(*this + v36);
          goto LABEL_146;
        case 0x12u:
          *(a1 + 224) |= 0x800uLL;
          v70 = *(this + 1);
          if (v70 > 0xFFFFFFFFFFFFFFF7 || v70 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 96) = *(*this + v70);
          goto LABEL_146;
        case 0x13u:
          *(a1 + 224) |= 0x1000000uLL;
          v85 = *(this + 1);
          v84 = *(this + 2);
          v86 = *this;
          if (v85 <= 0xFFFFFFFFFFFFFFF5 && v85 + 10 <= v84)
          {
            v87 = 0;
            v88 = 0;
            v89 = 0;
            v90 = (v86 + v85);
            v91 = v85 + 1;
            do
            {
              *(this + 1) = v91;
              v92 = *v90++;
              v89 |= (v92 & 0x7F) << v87;
              if ((v92 & 0x80) == 0)
              {
                goto LABEL_280;
              }

              v87 += 7;
              ++v91;
              v14 = v88++ > 8;
            }

            while (!v14);
LABEL_214:
            LODWORD(v89) = 0;
            goto LABEL_280;
          }

          v166 = 0;
          v167 = 0;
          v89 = 0;
          v17 = v84 >= v85;
          v168 = v84 - v85;
          if (!v17)
          {
            v168 = 0;
          }

          v169 = (v86 + v85);
          v170 = v85 + 1;
          while (2)
          {
            if (v168)
            {
              v171 = *v169;
              *(this + 1) = v170;
              v89 |= (v171 & 0x7F) << v166;
              if (v171 < 0)
              {
                v166 += 7;
                --v168;
                ++v169;
                ++v170;
                v14 = v167++ > 8;
                if (v14)
                {
                  goto LABEL_214;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v89) = 0;
              }
            }

            else
            {
              LODWORD(v89) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_280:
          *(a1 + 176) = v89;
          goto LABEL_254;
        case 0x14u:
          *(a1 + 224) |= 0x20000uLL;
          v112 = *(this + 1);
          if (v112 > 0xFFFFFFFFFFFFFFF7 || v112 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 144) = *(*this + v112);
          goto LABEL_146;
        case 0x15u:
          *(a1 + 224) |= 0x20uLL;
          v71 = *(this + 1);
          if (v71 > 0xFFFFFFFFFFFFFFF7 || v71 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 48) = *(*this + v71);
          goto LABEL_146;
        case 0x16u:
          *(a1 + 224) |= 0x40uLL;
          v73 = *(this + 1);
          if (v73 > 0xFFFFFFFFFFFFFFF7 || v73 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 56) = *(*this + v73);
          goto LABEL_146;
        case 0x17u:
          *(a1 + 224) |= 0x800000uLL;
          v104 = *(this + 1);
          v103 = *(this + 2);
          v105 = *this;
          if (v104 <= 0xFFFFFFFFFFFFFFF5 && v104 + 10 <= v103)
          {
            v106 = 0;
            v107 = 0;
            v108 = 0;
            v109 = (v105 + v104);
            v110 = v104 + 1;
            do
            {
              *(this + 1) = v110;
              v111 = *v109++;
              v108 |= (v111 & 0x7F) << v106;
              if ((v111 & 0x80) == 0)
              {
                goto LABEL_283;
              }

              v106 += 7;
              ++v110;
              v14 = v107++ > 8;
            }

            while (!v14);
LABEL_226:
            LODWORD(v108) = 0;
            goto LABEL_283;
          }

          v172 = 0;
          v173 = 0;
          v108 = 0;
          v17 = v103 >= v104;
          v174 = v103 - v104;
          if (!v17)
          {
            v174 = 0;
          }

          v175 = (v105 + v104);
          v176 = v104 + 1;
          while (2)
          {
            if (v174)
            {
              v177 = *v175;
              *(this + 1) = v176;
              v108 |= (v177 & 0x7F) << v172;
              if (v177 < 0)
              {
                v172 += 7;
                --v174;
                ++v175;
                ++v176;
                v14 = v173++ > 8;
                if (v14)
                {
                  goto LABEL_226;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v108) = 0;
              }
            }

            else
            {
              LODWORD(v108) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_283:
          *(a1 + 172) = v108;
          goto LABEL_254;
        case 0x18u:
          *(a1 + 224) |= 0x8000000uLL;
          v114 = *(this + 1);
          if (v114 > 0xFFFFFFFFFFFFFFFBLL || v114 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 188) = *(*this + v114);
          goto LABEL_252;
        case 0x19u:
          *(a1 + 224) |= 0x4000000uLL;
          v52 = *(this + 1);
          if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 184) = *(*this + v52);
          goto LABEL_252;
        case 0x1Au:
          *(a1 + 224) |= 0x10000uLL;
          v44 = *(this + 1);
          v43 = *(this + 2);
          v45 = *this;
          if (v44 <= 0xFFFFFFFFFFFFFFF5 && v44 + 10 <= v43)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = (v45 + v44);
            v50 = v44 + 1;
            do
            {
              *(this + 1) = v50;
              v51 = *v49++;
              v48 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                goto LABEL_271;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_188:
            v48 = 0;
            goto LABEL_271;
          }

          v148 = 0;
          v149 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v150 = v43 - v44;
          if (!v17)
          {
            v150 = 0;
          }

          v151 = (v45 + v44);
          v152 = v44 + 1;
          while (2)
          {
            if (v150)
            {
              v153 = *v151;
              *(this + 1) = v152;
              v48 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                --v150;
                ++v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(this + 24))
              {
                v48 = 0;
              }
            }

            else
            {
              v48 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_271:
          *(a1 + 136) = v48;
          goto LABEL_254;
        case 0x1Bu:
          *(a1 + 224) |= 1uLL;
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
                goto LABEL_292;
              }

              v136 += 7;
              ++v140;
              v14 = v137++ > 8;
            }

            while (!v14);
LABEL_250:
            v138 = 0;
            goto LABEL_292;
          }

          v190 = 0;
          v191 = 0;
          v138 = 0;
          v17 = v133 >= v134;
          v192 = v133 - v134;
          if (!v17)
          {
            v192 = 0;
          }

          v193 = (v135 + v134);
          v194 = v134 + 1;
          while (2)
          {
            if (v192)
            {
              v195 = *v193;
              *(this + 1) = v194;
              v138 |= (v195 & 0x7F) << v190;
              if (v195 < 0)
              {
                v190 += 7;
                --v192;
                ++v193;
                ++v194;
                v14 = v191++ > 8;
                if (v14)
                {
                  goto LABEL_250;
                }

                continue;
              }

              if (*(this + 24))
              {
                v138 = 0;
              }
            }

            else
            {
              v138 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_292:
          *(a1 + 8) = v138;
          goto LABEL_254;
        case 0x1Cu:
          *(a1 + 224) |= 0x100000000uLL;
          v34 = *(this + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 208) = *(*this + v34);
          goto LABEL_252;
        case 0x1Du:
          *(a1 + 224) |= 0x2000000uLL;
          v116 = *(this + 1);
          v115 = *(this + 2);
          v117 = *this;
          if (v116 <= 0xFFFFFFFFFFFFFFF5 && v116 + 10 <= v115)
          {
            v118 = 0;
            v119 = 0;
            v120 = 0;
            v121 = (v117 + v116);
            v122 = v116 + 1;
            do
            {
              *(this + 1) = v122;
              v123 = *v121++;
              v120 |= (v123 & 0x7F) << v118;
              if ((v123 & 0x80) == 0)
              {
                goto LABEL_286;
              }

              v118 += 7;
              ++v122;
              v14 = v119++ > 8;
            }

            while (!v14);
LABEL_234:
            LODWORD(v120) = 0;
            goto LABEL_286;
          }

          v178 = 0;
          v179 = 0;
          v120 = 0;
          v17 = v115 >= v116;
          v180 = v115 - v116;
          if (!v17)
          {
            v180 = 0;
          }

          v181 = (v117 + v116);
          v182 = v116 + 1;
          while (2)
          {
            if (v180)
            {
              v183 = *v181;
              *(this + 1) = v182;
              v120 |= (v183 & 0x7F) << v178;
              if (v183 < 0)
              {
                v178 += 7;
                --v180;
                ++v181;
                ++v182;
                v14 = v179++ > 8;
                if (v14)
                {
                  goto LABEL_234;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v120) = 0;
              }
            }

            else
            {
              LODWORD(v120) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_286:
          *(a1 + 180) = v120;
          goto LABEL_254;
        case 0x1Eu:
          *(a1 + 224) |= 0x80000uLL;
          v125 = *(this + 1);
          v124 = *(this + 2);
          v126 = *this;
          if (v125 <= 0xFFFFFFFFFFFFFFF5 && v125 + 10 <= v124)
          {
            v127 = 0;
            v128 = 0;
            v129 = 0;
            v130 = (v126 + v125);
            v131 = v125 + 1;
            do
            {
              *(this + 1) = v131;
              v132 = *v130++;
              v129 |= (v132 & 0x7F) << v127;
              if ((v132 & 0x80) == 0)
              {
                goto LABEL_289;
              }

              v127 += 7;
              ++v131;
              v14 = v128++ > 8;
            }

            while (!v14);
LABEL_242:
            LODWORD(v129) = 0;
            goto LABEL_289;
          }

          v184 = 0;
          v185 = 0;
          v129 = 0;
          v17 = v124 >= v125;
          v186 = v124 - v125;
          if (!v17)
          {
            v186 = 0;
          }

          v187 = (v126 + v125);
          v188 = v125 + 1;
          while (2)
          {
            if (v186)
            {
              v189 = *v187;
              *(this + 1) = v188;
              v129 |= (v189 & 0x7F) << v184;
              if (v189 < 0)
              {
                v184 += 7;
                --v186;
                ++v187;
                ++v188;
                v14 = v185++ > 8;
                if (v14)
                {
                  goto LABEL_242;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v129) = 0;
              }
            }

            else
            {
              LODWORD(v129) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_289:
          *(a1 + 156) = v129;
          goto LABEL_254;
        case 0x1Fu:
          *(a1 + 224) |= 0x1000000000uLL;
          v98 = *(this + 1);
          if (v98 >= *(this + 2))
          {
            v101 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v99 = v98 + 1;
            v100 = *(*this + v98);
            *(this + 1) = v99;
            v101 = v100 != 0;
          }

          *(a1 + 221) = v101;
          goto LABEL_254;
        case 0x20u:
          *(a1 + 224) |= 0x800000000uLL;
          v66 = *(this + 1);
          if (v66 >= *(this + 2))
          {
            v69 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v67 = v66 + 1;
            v68 = *(*this + v66);
            *(this + 1) = v67;
            v69 = v68 != 0;
          }

          *(a1 + 220) = v69;
          goto LABEL_254;
        case 0x21u:
          *(a1 + 224) |= 0x20000000uLL;
          v102 = *(this + 1);
          if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 196) = *(*this + v102);
          goto LABEL_252;
        case 0x22u:
          *(a1 + 224) |= 0x100uLL;
          v38 = *(this + 1);
          if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 72) = *(*this + v38);
          goto LABEL_146;
        case 0x23u:
          *(a1 + 224) |= 0x200uLL;
          v35 = *(this + 1);
          if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 80) = *(*this + v35);
          goto LABEL_146;
        case 0x24u:
          *(a1 + 224) |= 0x400000uLL;
          v25 = *(this + 1);
          v24 = *(this + 2);
          v26 = *this;
          if (v25 <= 0xFFFFFFFFFFFFFFF5 && v25 + 10 <= v24)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            do
            {
              *(this + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                goto LABEL_268;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v29) = 0;
            goto LABEL_268;
          }

          v142 = 0;
          v143 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v144 = v24 - v25;
          if (!v17)
          {
            v144 = 0;
          }

          v145 = (v26 + v25);
          v146 = v25 + 1;
          break;
        case 0x25u:
          *(a1 + 224) |= 4uLL;
          v33 = *(this + 1);
          if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(this + 2))
          {
            goto LABEL_149;
          }

          *(a1 + 24) = *(*this + v33);
LABEL_146:
          v113 = *(this + 1) + 8;
          goto LABEL_253;
        case 0x26u:
          *(a1 + 224) |= 0x200000000uLL;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
LABEL_149:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 212) = *(*this + v23);
LABEL_252:
            v113 = *(this + 1) + 4;
LABEL_253:
            *(this + 1) = v113;
          }

          goto LABEL_254;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_254;
          }

          v197 = 0;
          return v197 & 1;
      }

      while (1)
      {
        if (!v144)
        {
          LODWORD(v29) = 0;
          *(this + 24) = 1;
          goto LABEL_268;
        }

        v147 = *v145;
        *(this + 1) = v146;
        v29 |= (v147 & 0x7F) << v142;
        if ((v147 & 0x80) == 0)
        {
          break;
        }

        v142 += 7;
        --v144;
        ++v145;
        ++v146;
        v14 = v143++ > 8;
        if (v14)
        {
          goto LABEL_180;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v29) = 0;
      }

LABEL_268:
      *(a1 + 168) = v29;
LABEL_254:
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

LABEL_294:
  v197 = v4 ^ 1;
  return v197 & 1;
}

uint64_t sub_19B4F0954(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 224);
  if ((v4 & 0x1000) != 0)
  {
    result = PB::Writer::write(this, *(result + 104));
    v4 = *(v3 + 224);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 224);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000) == 0)
  {
LABEL_5:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 204));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 216));
  v4 = *(v3 + 224);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 164));
  v4 = *(v3 + 224);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v6 = *(v3 + 222);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 224);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v7 = *(v3 + 200);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 224);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 224);
  if ((v4 & 8) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 224);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v8 = *(v3 + 176);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x20000) == 0)
  {
LABEL_21:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 224);
  if ((v4 & 0x20) == 0)
  {
LABEL_22:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 224);
  if ((v4 & 0x40) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 224);
  if ((v4 & 0x800000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  v9 = *(v3 + 172);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 188));
  v4 = *(v3 + 224);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 224);
  if ((v4 & 0x10000) == 0)
  {
LABEL_27:
    if ((v4 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  v10 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 1) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  v11 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 208));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  v12 = *(v3 + 180);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000) == 0)
  {
LABEL_31:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  v13 = *(v3 + 156);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  v14 = *(v3 + 221);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  v15 = *(v3 + 220);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 196));
  v4 = *(v3 + 224);
  if ((v4 & 0x100) == 0)
  {
LABEL_35:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 224);
  if ((v4 & 0x200) == 0)
  {
LABEL_36:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000) == 0)
  {
LABEL_37:
    if ((v4 & 4) == 0)
    {
      goto LABEL_38;
    }

LABEL_76:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 224) & 0x200000000) == 0)
    {
      return result;
    }

    goto LABEL_77;
  }

LABEL_75:
  v16 = *(v3 + 168);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 4) != 0)
  {
    goto LABEL_76;
  }

LABEL_38:
  if ((v4 & 0x200000000) == 0)
  {
    return result;
  }

LABEL_77:
  v17 = *(v3 + 212);

  return PB::Writer::write(this, v17);
}

uint64_t sub_19B4F0DB4(uint64_t result)
{
  *result = &unk_1F0E2DBE0;
  *(result + 12) = 0;
  return result;
}

void sub_19B4F0DDC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F0E14(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "pause");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F0E74(uint64_t a1, PB::Reader *this)
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
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_34;
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

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v2 = *(this + 1);
        v3 = *(this + 2);
        if (v2 >= v3)
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

        *(a1 + 8) = v24;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(this + 1);
        v3 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_34:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B4F1028(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B4F1048(uint64_t result)
{
  *result = &unk_1F0E2D6D8;
  *(result + 36) = 0;
  return result;
}

void sub_19B4F1070(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F10A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 36);
  if (v5)
  {
    PB::TextFormatter::format(this, "endDate", *(a1 + 8));
    v5 = *(a1 + 36);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 32);
  PB::TextFormatter::format(this, "hkType");
  v5 = *(a1 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "hr", *(a1 + 16));
  if ((*(a1 + 36) & 4) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "startDate", *(a1 + 24));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F116C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_64;
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
          *(a1 + 36) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_44:
            *(this + 24) = 1;
            goto LABEL_60;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          *(a1 + 36) |= 8u;
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
              v2 = *(this + 1);
            }

            v33 = v2 - v23;
            v34 = (v24 + v23);
            v35 = v23 + 1;
            while (1)
            {
              if (!v33)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_59;
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
                goto LABEL_58;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_58:
            v2 = v36;
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
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_59:
          *(a1 + 32) = v27;
          goto LABEL_60;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 36) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_44;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_54;
        }

        if (v22 == 2)
        {
          *(a1 + 36) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_44;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_54:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_60;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_60:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_64:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B4F14C0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 36);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 36);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 36) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 32);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4F1568(uint64_t result)
{
  *result = &unk_1F0E2F888;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_19B4F1590(void **a1)
{
  *a1 = &unk_1F0E2F888;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B4F15EC(void **a1)
{
  *a1 = &unk_1F0E2F888;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B4F165C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    v12 = *(a1 + 32);
    PB::TextFormatter::format(this, "gain");
    v5 = *(a1 + 64);
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

  else if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  v13 = *(a1 + 36);
  PB::TextFormatter::format(this, "location");
  if ((*(a1 + 64) & 4) != 0)
  {
LABEL_4:
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "offset");
  }

LABEL_5:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "point");
  }

  v10 = *(a1 + 64);
  if ((v10 & 8) != 0)
  {
    v14 = *(a1 + 44);
    PB::TextFormatter::format(this, "sensor");
    v10 = *(a1 + 64);
    if ((v10 & 0x10) == 0)
    {
LABEL_9:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 64) & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v15 = *(a1 + 48);
  PB::TextFormatter::format(this, "tempCalA");
  v10 = *(a1 + 64);
  if ((v10 & 0x20) == 0)
  {
LABEL_10:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v16 = *(a1 + 52);
  PB::TextFormatter::format(this, "tempCalB");
  v10 = *(a1 + 64);
  if ((v10 & 0x80) == 0)
  {
LABEL_11:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_22:
  v17 = *(a1 + 60);
  PB::TextFormatter::format(this, "tempCalEnabled");
  if ((*(a1 + 64) & 0x40) != 0)
  {
LABEL_12:
    v11 = *(a1 + 56);
    PB::TextFormatter::format(this, "tempCalT0");
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F17FC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_178;
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
            *(a1 + 64) |= 1u;
            v60 = *(this + 1);
            v59 = *(this + 2);
            v61 = *this;
            if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
            {
              v114 = 0;
              v115 = 0;
              v64 = 0;
              v17 = v59 >= v60;
              v116 = v59 - v60;
              if (!v17)
              {
                v116 = 0;
              }

              v117 = (v61 + v60);
              v118 = v60 + 1;
              while (1)
              {
                if (!v116)
                {
                  LODWORD(v64) = 0;
                  *(this + 24) = 1;
                  goto LABEL_167;
                }

                v119 = *v117;
                *(this + 1) = v118;
                v64 |= (v119 & 0x7F) << v114;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v114 += 7;
                --v116;
                ++v117;
                ++v118;
                v14 = v115++ > 8;
                if (v14)
                {
LABEL_127:
                  LODWORD(v64) = 0;
                  goto LABEL_167;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = (v61 + v60);
              v66 = v60 + 1;
              while (1)
              {
                *(this + 1) = v66;
                v67 = *v65++;
                v64 |= (v67 & 0x7F) << v62;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                ++v66;
                v14 = v63++ > 8;
                if (v14)
                {
                  goto LABEL_127;
                }
              }
            }

LABEL_167:
            *(a1 + 32) = v64;
            goto LABEL_174;
          }

          if (v22 == 4)
          {
            *(a1 + 64) |= 4u;
            v33 = *(this + 1);
            v32 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v96 = 0;
              v97 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v98 = v32 - v33;
              if (!v17)
              {
                v98 = 0;
              }

              v99 = (v34 + v33);
              v100 = v33 + 1;
              while (1)
              {
                if (!v98)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_158;
                }

                v101 = *v99;
                *(this + 1) = v100;
                v37 |= (v101 & 0x7F) << v96;
                if ((v101 & 0x80) == 0)
                {
                  break;
                }

                v96 += 7;
                --v98;
                ++v99;
                ++v100;
                v14 = v97++ > 8;
                if (v14)
                {
LABEL_103:
                  LODWORD(v37) = 0;
                  goto LABEL_158;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                *(this + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  goto LABEL_103;
                }
              }
            }

LABEL_158:
            *(a1 + 40) = v37;
            goto LABEL_174;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 64) |= 2u;
            v51 = *(this + 1);
            v50 = *(this + 2);
            v52 = *this;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v108 = 0;
              v109 = 0;
              v55 = 0;
              v17 = v50 >= v51;
              v110 = v50 - v51;
              if (!v17)
              {
                v110 = 0;
              }

              v111 = (v52 + v51);
              v112 = v51 + 1;
              while (1)
              {
                if (!v110)
                {
                  LODWORD(v55) = 0;
                  *(this + 24) = 1;
                  goto LABEL_164;
                }

                v113 = *v111;
                *(this + 1) = v112;
                v55 |= (v113 & 0x7F) << v108;
                if ((v113 & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                --v110;
                ++v111;
                ++v112;
                v14 = v109++ > 8;
                if (v14)
                {
LABEL_119:
                  LODWORD(v55) = 0;
                  goto LABEL_164;
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
                  goto LABEL_119;
                }
              }
            }

LABEL_164:
            *(a1 + 36) = v55;
            goto LABEL_174;
          }

          if (v22 == 2)
          {
            *(a1 + 64) |= 8u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v90 = 0;
              v91 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v92 = v23 - v24;
              if (!v17)
              {
                v92 = 0;
              }

              v93 = (v25 + v24);
              v94 = v24 + 1;
              while (1)
              {
                if (!v92)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_155;
                }

                v95 = *v93;
                *(this + 1) = v94;
                v28 |= (v95 & 0x7F) << v90;
                if ((v95 & 0x80) == 0)
                {
                  break;
                }

                v90 += 7;
                --v92;
                ++v93;
                ++v94;
                v14 = v91++ > 8;
                if (v14)
                {
LABEL_95:
                  LODWORD(v28) = 0;
                  goto LABEL_155;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_95;
                }
              }
            }

LABEL_155:
            *(a1 + 44) = v28;
            goto LABEL_174;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 64) |= 0x80u;
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

          *(a1 + 60) = v80;
          goto LABEL_174;
        }

        if (v22 == 6)
        {
          *(a1 + 64) |= 0x10u;
          v42 = *(this + 1);
          v41 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
          {
            v102 = 0;
            v103 = 0;
            v46 = 0;
            v17 = v41 >= v42;
            v104 = v41 - v42;
            if (!v17)
            {
              v104 = 0;
            }

            v105 = (v43 + v42);
            v106 = v42 + 1;
            while (1)
            {
              if (!v104)
              {
                LODWORD(v46) = 0;
                *(this + 24) = 1;
                goto LABEL_161;
              }

              v107 = *v105;
              *(this + 1) = v106;
              v46 |= (v107 & 0x7F) << v102;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              --v104;
              ++v105;
              ++v106;
              v14 = v103++ > 8;
              if (v14)
              {
LABEL_111:
                LODWORD(v46) = 0;
                goto LABEL_161;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v46) = 0;
            }
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            while (1)
            {
              *(this + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
              if (v14)
              {
                goto LABEL_111;
              }
            }
          }

LABEL_161:
          *(a1 + 48) = v46;
          goto LABEL_174;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 64) |= 0x20u;
            v69 = *(this + 1);
            v68 = *(this + 2);
            v70 = *this;
            if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v68)
            {
              v120 = 0;
              v121 = 0;
              v73 = 0;
              v17 = v68 >= v69;
              v122 = v68 - v69;
              if (!v17)
              {
                v122 = 0;
              }

              v123 = (v70 + v69);
              v124 = v69 + 1;
              while (1)
              {
                if (!v122)
                {
                  LODWORD(v73) = 0;
                  *(this + 24) = 1;
                  goto LABEL_170;
                }

                v125 = *v123;
                *(this + 1) = v124;
                v73 |= (v125 & 0x7F) << v120;
                if ((v125 & 0x80) == 0)
                {
                  break;
                }

                v120 += 7;
                --v122;
                ++v123;
                ++v124;
                v14 = v121++ > 8;
                if (v14)
                {
LABEL_135:
                  LODWORD(v73) = 0;
                  goto LABEL_170;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v73) = 0;
              }
            }

            else
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = (v70 + v69);
              v75 = v69 + 1;
              while (1)
              {
                *(this + 1) = v75;
                v76 = *v74++;
                v73 |= (v76 & 0x7F) << v71;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                ++v75;
                v14 = v72++ > 8;
                if (v14)
                {
                  goto LABEL_135;
                }
              }
            }

LABEL_170:
            *(a1 + 52) = v73;
            goto LABEL_174;
          case 8:
            *(a1 + 64) |= 0x40u;
            v82 = *(this + 1);
            v81 = *(this + 2);
            v83 = *this;
            if (v82 > 0xFFFFFFFFFFFFFFF5 || v82 + 10 > v81)
            {
              v126 = 0;
              v127 = 0;
              v86 = 0;
              v17 = v81 >= v82;
              v128 = v81 - v82;
              if (!v17)
              {
                v128 = 0;
              }

              v129 = (v83 + v82);
              v130 = v82 + 1;
              while (1)
              {
                if (!v128)
                {
                  LODWORD(v86) = 0;
                  *(this + 24) = 1;
                  goto LABEL_173;
                }

                v131 = *v129;
                *(this + 1) = v130;
                v86 |= (v131 & 0x7F) << v126;
                if ((v131 & 0x80) == 0)
                {
                  break;
                }

                v126 += 7;
                --v128;
                ++v129;
                ++v130;
                v14 = v127++ > 8;
                if (v14)
                {
LABEL_145:
                  LODWORD(v86) = 0;
                  goto LABEL_173;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v86) = 0;
              }
            }

            else
            {
              v84 = 0;
              v85 = 0;
              v86 = 0;
              v87 = (v83 + v82);
              v88 = v82 + 1;
              while (1)
              {
                *(this + 1) = v88;
                v89 = *v87++;
                v86 |= (v89 & 0x7F) << v84;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                ++v88;
                v14 = v85++ > 8;
                if (v14)
                {
                  goto LABEL_145;
                }
              }
            }

LABEL_173:
            *(a1 + 56) = v86;
            goto LABEL_174;
          case 9:
            sub_19B4F2100();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v133 = 0;
        return v133 & 1;
      }

LABEL_174:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_178:
  v133 = v4 ^ 1;
  return v133 & 1;
}

uint64_t sub_19B4F2268(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 2) != 0)
  {
    v9 = *(result + 36);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(result + 64) & 8) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = *(v3 + 60);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v15 = *(v3 + 52);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 64) & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v14 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x40) != 0)
  {
LABEL_9:
    v5 = *(v3 + 56);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_10:
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::writeSubmessage(this, v8);
  }

  return result;
}

void sub_19B4F2398(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F23D0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "base");
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

  v8 = *(a1 + 12);
  PB::TextFormatter::format(this, "distance");
  if ((*(a1 + 20) & 4) != 0)
  {
LABEL_4:
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "peak");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F2474(uint64_t a1, PB::Reader *this)
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
            goto LABEL_95;
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

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 20) |= 2u;
        v40 = *(this + 1);
        v2 = *(this + 2);
        v41 = *this;
        if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
        {
          v55 = 0;
          v56 = 0;
          v44 = 0;
          if (v2 <= v40)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v57 = v3 - v40;
          v58 = (v41 + v40);
          v59 = v40 + 1;
          while (1)
          {
            if (!v57)
            {
              LODWORD(v44) = 0;
              *(this + 24) = 1;
              goto LABEL_86;
            }

            v60 = v59;
            v61 = *v58;
            *(this + 1) = v60;
            v44 |= (v61 & 0x7F) << v55;
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
              LODWORD(v44) = 0;
              goto LABEL_85;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v44) = 0;
          }

LABEL_85:
          v3 = v60;
        }

        else
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          while (1)
          {
            v3 = v46;
            *(this + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
            if (v14)
            {
              LODWORD(v44) = 0;
              break;
            }
          }
        }

LABEL_86:
        *(a1 + 12) = v44;
      }

      else if (v23 == 2)
      {
        *(a1 + 20) |= 4u;
        v32 = *(this + 1);
        v2 = *(this + 2);
        v33 = *this;
        if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
        {
          v48 = 0;
          v49 = 0;
          v36 = 0;
          if (v2 <= v32)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v50 = v3 - v32;
          v51 = (v33 + v32);
          v52 = v32 + 1;
          while (1)
          {
            if (!v50)
            {
              LODWORD(v36) = 0;
              *(this + 24) = 1;
              goto LABEL_82;
            }

            v53 = v52;
            v54 = *v51;
            *(this + 1) = v53;
            v36 |= (v54 & 0x7F) << v48;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            --v50;
            ++v51;
            v52 = v53 + 1;
            v14 = v49++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              goto LABEL_81;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v36) = 0;
          }

LABEL_81:
          v3 = v53;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          while (1)
          {
            v3 = v38;
            *(this + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              break;
            }
          }
        }

LABEL_82:
        *(a1 + 16) = v36;
      }

      else if (v23 == 1)
      {
        *(a1 + 20) |= 1u;
        v24 = *(this + 1);
        v2 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
        {
          v62 = 0;
          v63 = 0;
          v28 = 0;
          if (v2 <= v24)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v64 = v3 - v24;
          v65 = (v25 + v24);
          v66 = v24 + 1;
          while (1)
          {
            if (!v64)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_90;
            }

            v67 = v66;
            v68 = *v65;
            *(this + 1) = v67;
            v28 |= (v68 & 0x7F) << v62;
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
              LODWORD(v28) = 0;
              goto LABEL_89;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }

LABEL_89:
          v3 = v67;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            v3 = v30;
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              LODWORD(v28) = 0;
              break;
            }
          }
        }

LABEL_90:
        *(a1 + 8) = v28;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v69 = 0;
          return v69 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_95:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t sub_19B4F2900(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 20) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v5 = *(result + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v3 + 12);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4F298C(uint64_t result)
{
  *result = &unk_1F0E2F850;
  *(result + 16) = 0;
  return result;
}

void sub_19B4F29B4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F29EC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "concha", *(a1 + 8));
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "tragus", *(a1 + 12));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F2A68(uint64_t a1, PB::Reader *this)
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
            goto LABEL_38;
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
        goto LABEL_38;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
        {
          goto LABEL_29;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_33:
        v2 = *(this + 1) + 4;
        *(this + 1) = v2;
        goto LABEL_34;
      }

      if (!PB::Reader::skip(this))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
LABEL_34:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(a1 + 16) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
LABEL_29:
      *(this + 24) = 1;
      goto LABEL_34;
    }

    *(a1 + 12) = *(*this + v2);
    goto LABEL_33;
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B4F2C68(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 12);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_19B4F2CD4(uint64_t result)
{
  *result = &unk_1F0E2F818;
  *(result + 16) = 0;
  return result;
}

void sub_19B4F2CFC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F2D34(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "conchaTemp");
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 12);
    PB::TextFormatter::format(this, "tragusTemp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F2DB0(uint64_t a1, PB::Reader *this)
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
        *(a1 + 16) |= 2u;
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
        *(a1 + 12) = v35;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
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
              LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
              goto LABEL_63;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
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

uint64_t sub_19B4F3130(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 12);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B4F319C(uint64_t result)
{
  *result = &unk_1F0E2DBA8;
  *(result + 20) = 0;
  return result;
}

void sub_19B4F31C4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F31FC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "elevationAscended");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "startTime", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F3278(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4F3544(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4F35B0(uint64_t result)
{
  *result = &unk_1F0E38F88;
  *(result + 24) = 0;
  return result;
}

void sub_19B4F35D8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F3610(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "elevationAscended");
    v5 = *(a1 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 20);
  PB::TextFormatter::format(this, "elevationDescended");
  if (*(a1 + 24))
  {
LABEL_4:
    PB::TextFormatter::format(this, "startTime", *(a1 + 8));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F36B4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_75;
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
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 4u;
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
            v2 = *(this + 1);
          }

          v48 = v2 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_70;
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
              goto LABEL_69;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_69:
          v2 = v51;
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

LABEL_70:
        *(a1 + 20) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
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
            v2 = *(this + 1);
          }

          v41 = v2 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_66;
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
              LODWORD(v27) = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_65:
          v2 = v44;
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
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_66:
        *(a1 + 16) = v27;
      }

      else if (v22 == 1)
      {
        *(a1 + 24) |= 1u;
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
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B4F3A8C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v3 + 20);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4F3B18(uint64_t result)
{
  *result = &unk_1F0E2B638;
  *(result + 68) = 0;
  return result;
}

void sub_19B4F3B40(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F3B78(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "accuracy", *(a1 + 16));
    v5 = *(a1 + 68);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "biasX", *(a1 + 20));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "biasY", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "biasZ", *(a1 + 28));
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v6 = *(a1 + 32);
  PB::TextFormatter::format(this, "calibrationLevel");
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "horizontal", *(a1 + 36));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "inclination", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "magneticFieldX", *(a1 + 44));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "magneticFieldY", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "magneticFieldZ", *(a1 + 52));
  v5 = *(a1 + 68);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "magneticHeading", *(a1 + 56));
  v5 = *(a1 + 68);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "magnitude", *(a1 + 60));
  v5 = *(a1 + 68);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 68) & 0x2000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(this, "trueHeading", *(a1 + 64));
  }

LABEL_16:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F3D7C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_91;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 68) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_81;
        case 2u:
          *(a1 + 68) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_80;
        case 3u:
          *(a1 + 68) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_80;
        case 4u:
          *(a1 + 68) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_80;
        case 5u:
          *(a1 + 68) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_80;
        case 6u:
          *(a1 + 68) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_80;
        case 7u:
          *(a1 + 68) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_80;
        case 8u:
          *(a1 + 68) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_80;
        case 9u:
          *(a1 + 68) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_80;
        case 0xAu:
          *(a1 + 68) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_80;
        case 0xBu:
          *(a1 + 68) |= 0x20u;
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
                goto LABEL_86;
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
LABEL_85:
                v2 = v35;
                goto LABEL_86;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_85;
          }

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
              goto LABEL_86;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_86:
          *(a1 + 32) = v26;
          goto LABEL_87;
        case 0xCu:
          *(a1 + 68) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_80;
        case 0xDu:
          *(a1 + 68) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_80;
        case 0xEu:
          *(a1 + 68) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_68:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 36) = *(*this + v2);
LABEL_80:
            v2 = *(this + 1) + 4;
LABEL_81:
            *(this + 1) = v2;
          }

          goto LABEL_87;
        default:
          if (!PB::Reader::skip(this))
          {
            v37 = 0;
            return v37 & 1;
          }

          v2 = *(this + 1);
LABEL_87:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_91;
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

LABEL_91:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B4F430C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 68);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(result + 68) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v5 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    result = PB::Writer::write(this, *(v3 + 40));
    if ((*(v3 + 68) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_29:
  v6 = *(v3 + 36);

  return PB::Writer::write(this, v6);
}

uint64_t sub_19B4F44CC(uint64_t result)
{
  *result = &unk_1F0E2F428;
  *(result + 20) = 0;
  return result;
}

void sub_19B4F44F4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F452C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "compassJustAlignedToStableField");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F45A8(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4F4874(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4F48E0(uint64_t result)
{
  *result = &unk_1F0E2E9E0;
  *(result + 80) = 0;
  return result;
}

void sub_19B4F4908(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F4940(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if ((v5 & 0x10000) != 0)
  {
    v6 = *(a1 + 76);
    PB::TextFormatter::format(this, "apAwake");
    v5 = *(a1 + 80);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "biasX", *(a1 + 16));
  v5 = *(a1 + 80);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "biasY", *(a1 + 20));
  v5 = *(a1 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "biasZ", *(a1 + 24));
  v5 = *(a1 + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(a1 + 28);
  PB::TextFormatter::format(this, "calibrationLevel");
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "cost", *(a1 + 32));
  v5 = *(a1 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "coverage", *(a1 + 36));
  v5 = *(a1 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "earthDiffRatio", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = *(a1 + 77);
  PB::TextFormatter::format(this, "hasConsistency");
  v5 = *(a1 + 80);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "planarity", *(a1 + 44));
  v5 = *(a1 + 80);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "poseX", *(a1 + 48));
  v5 = *(a1 + 80);
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "poseY", *(a1 + 52));
  v5 = *(a1 + 80);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "poseZ", *(a1 + 56));
  v5 = *(a1 + 80);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "quality", *(a1 + 60));
  v5 = *(a1 + 80);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "scaleX", *(a1 + 64));
  v5 = *(a1 + 80);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "scaleY", *(a1 + 68));
  v5 = *(a1 + 80);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  PB::TextFormatter::format(this, "scaleZ", *(a1 + 72));
  if (*(a1 + 80))
  {
LABEL_19:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_20:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F4BC4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_105;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 80) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_95;
        case 2u:
          *(a1 + 80) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_94;
        case 3u:
          *(a1 + 80) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_94;
        case 4u:
          *(a1 + 80) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_94;
        case 5u:
          *(a1 + 80) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_94;
        case 6u:
          *(a1 + 80) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_94;
        case 7u:
          *(a1 + 80) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_94;
        case 8u:
          *(a1 + 80) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_94;
        case 9u:
          *(a1 + 80) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_94;
        case 0xAu:
          *(a1 + 80) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_94;
        case 0xBu:
          *(a1 + 80) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_94;
        case 0xCu:
          *(a1 + 80) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_94;
        case 0xDu:
          *(a1 + 80) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_94;
        case 0xEu:
          *(a1 + 80) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_80;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_94;
        case 0xFu:
          *(a1 + 80) |= 0x10u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v34 = 0;
            v35 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v36 = v2 - v24;
            v37 = (v25 + v24);
            v38 = v24 + 1;
            while (1)
            {
              if (!v36)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_100;
              }

              v39 = v38;
              v40 = *v37;
              *(this + 1) = v39;
              v28 |= (v40 & 0x7F) << v34;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              --v36;
              ++v37;
              v38 = v39 + 1;
              v14 = v35++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_99:
                v2 = v39;
                goto LABEL_100;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_99;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_100;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_100:
          *(a1 + 28) = v28;
          goto LABEL_101;
        case 0x10u:
          *(a1 + 80) |= 0x20000u;
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

          *(a1 + 77) = v33;
          goto LABEL_101;
        case 0x11u:
          *(a1 + 80) |= 0x10000u;
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

          *(a1 + 76) = v23;
          goto LABEL_101;
        case 0x12u:
          *(a1 + 80) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_80:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 44) = *(*this + v2);
LABEL_94:
            v2 = *(this + 1) + 4;
LABEL_95:
            *(this + 1) = v2;
          }

          goto LABEL_101;
        default:
          if (!PB::Reader::skip(this))
          {
            v41 = 0;
            return v41 & 1;
          }

          v2 = *(this + 1);
LABEL_101:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_105;
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

LABEL_105:
  v41 = v4 ^ 1;
  return v41 & 1;
}

uint64_t sub_19B4F524C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 80);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 80);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 0x8000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x20000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v7 = *(v3 + 76);
    result = PB::Writer::write(this);
    if ((*(v3 + 80) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_35:
  v6 = *(v3 + 77);
  result = PB::Writer::write(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_37:
  v8 = *(v3 + 44);

  return PB::Writer::write(this, v8);
}

uint64_t sub_19B4F547C(uint64_t result)
{
  *result = &unk_1F0E2CDE0;
  *(result + 80) = 0;
  return result;
}

void sub_19B4F54A4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F54DC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "biasX", *(a1 + 16));
    v5 = *(a1 + 80);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "biasY", *(a1 + 20));
  v5 = *(a1 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "biasZ", *(a1 + 24));
  v5 = *(a1 + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "cost", *(a1 + 28));
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "coverage2d", *(a1 + 32));
  v5 = *(a1 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "coverage3d", *(a1 + 36));
  v5 = *(a1 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "earthDiffRatio", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v6 = *(a1 + 76);
  PB::TextFormatter::format(this, "isPlanar");
  v5 = *(a1 + 80);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v7 = *(a1 + 44);
  PB::TextFormatter::format(this, "numberOfSamples");
  v5 = *(a1 + 80);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "planarity", *(a1 + 48));
  v5 = *(a1 + 80);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "quality", *(a1 + 52));
  v5 = *(a1 + 80);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "scaleX", *(a1 + 56));
  v5 = *(a1 + 80);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "scaleY", *(a1 + 60));
  v5 = *(a1 + 80);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "scaleZ", *(a1 + 64));
  v5 = *(a1 + 80);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "timeSpan", *(a1 + 68));
  v5 = *(a1 + 80);
  if ((v5 & 1) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 80) & 0x8000) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(this, "unitDistance", *(a1 + 72));
  }

LABEL_19:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F5740(uint64_t a1, PB::Reader *this)
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
        goto LABEL_101;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 80) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_91;
        case 2u:
          *(a1 + 80) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_90;
        case 3u:
          *(a1 + 80) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_90;
        case 4u:
          *(a1 + 80) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_90;
        case 5u:
          *(a1 + 80) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_90;
        case 6u:
          *(a1 + 80) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_90;
        case 7u:
          *(a1 + 80) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_90;
        case 8u:
          *(a1 + 80) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_90;
        case 9u:
          *(a1 + 80) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_90;
        case 0xAu:
          *(a1 + 80) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_90;
        case 0xBu:
          *(a1 + 80) |= 0x10000u;
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

          *(a1 + 76) = v31;
          goto LABEL_97;
        case 0xCu:
          *(a1 + 80) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_90;
        case 0xDu:
          *(a1 + 80) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_90;
        case 0xEu:
          *(a1 + 80) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_90;
        case 0xFu:
          *(a1 + 80) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_78;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_90;
        case 0x10u:
          *(a1 + 80) |= 0x100u;
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
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_96;
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
                LODWORD(v26) = 0;
LABEL_95:
                v2 = v37;
                goto LABEL_96;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_95;
          }

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
              goto LABEL_96;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_96:
          *(a1 + 44) = v26;
          goto LABEL_97;
        case 0x11u:
          *(a1 + 80) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_78:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 48) = *(*this + v2);
LABEL_90:
            v2 = *(this + 1) + 4;
LABEL_91:
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
            goto LABEL_101;
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

LABEL_101:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_19B4F5D84(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 80);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 80);
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 80);
  if ((v4 & 0x10000) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v5 = *(v3 + 76);
  result = PB::Writer::write(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 80);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    v6 = *(v3 + 44);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 80) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_35:
  v7 = *(v3 + 48);

  return PB::Writer::write(this, v7);
}

double sub_19B4F5F98(uint64_t a1)
{
  *a1 = &unk_1F0E2E9A8;
  *(a1 + 124) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B4F5FCC(PB::Base *this)
{
  *this = &unk_1F0E2E9A8;
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

void sub_19B4F6040(PB::Base *a1)
{
  sub_19B4F5FCC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F6078(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 124) & 2) != 0)
  {
    PB::TextFormatter::format(this, "attitudeDelta", *(a1 + 64));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "calibratedField", v7);
  }

  v8 = *(a1 + 124);
  if ((v8 & 0x8000) != 0)
  {
    v14 = *(a1 + 120);
    PB::TextFormatter::format(this, "doCorrection");
    v8 = *(a1 + 124);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(this, "horizontal", *(a1 + 68));
  v8 = *(a1 + 124);
  if ((v8 & 8) == 0)
  {
LABEL_8:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a1 + 72);
  PB::TextFormatter::format(this, "isOnSphere");
  v8 = *(a1 + 124);
  if ((v8 & 0x10) == 0)
  {
LABEL_9:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_31:
  v16 = *(a1 + 76);
  PB::TextFormatter::format(this, "isRotating");
  if ((*(a1 + 124) & 0x10000) != 0)
  {
LABEL_10:
    v9 = *(a1 + 121);
    PB::TextFormatter::format(this, "isTraversingSphere");
  }

LABEL_11:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "predictedField", v12);
  }

  v13 = *(a1 + 124);
  if ((v13 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "scale", *(a1 + 80));
    v13 = *(a1 + 124);
    if ((v13 & 0x40) == 0)
    {
LABEL_15:
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((v13 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  PB::TextFormatter::format(this, "timerUnitDistanceThreshold", *(a1 + 84));
  v13 = *(a1 + 124);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  v13 = *(a1 + 124);
  if ((v13 & 0x80) == 0)
  {
LABEL_17:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "unitDistance", *(a1 + 88));
  v13 = *(a1 + 124);
  if ((v13 & 0x100) == 0)
  {
LABEL_18:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "unitDistanceLargeBufferDelta", *(a1 + 92));
  v13 = *(a1 + 124);
  if ((v13 & 0x200) == 0)
  {
LABEL_19:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "unitDistanceLargeBufferMax", *(a1 + 96));
  v13 = *(a1 + 124);
  if ((v13 & 0x400) == 0)
  {
LABEL_20:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "unitDistanceReference", *(a1 + 100));
  v13 = *(a1 + 124);
  if ((v13 & 0x800) == 0)
  {
LABEL_21:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "unitDistanceSmallBufferDelta", *(a1 + 104));
  v13 = *(a1 + 124);
  if ((v13 & 0x1000) == 0)
  {
LABEL_22:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "unitDistanceThreshold", *(a1 + 108));
  v13 = *(a1 + 124);
  if ((v13 & 0x2000) == 0)
  {
LABEL_23:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_42:
  PB::TextFormatter::format(this, "unitDistanceThresholdApplied", *(a1 + 112));
  if ((*(a1 + 124) & 0x4000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(this, "vertical", *(a1 + 116));
  }

LABEL_25:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F6340(uint64_t a1, PB::Reader *this)
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
        goto LABEL_188;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 124) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 56) = *(*this + v23);
          v24 = *(this + 1) + 8;
          goto LABEL_183;
        case 2u:
          *(a1 + 124) |= 0x80u;
          v46 = *(this + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 88) = *(*this + v46);
          goto LABEL_182;
        case 3u:
          *(a1 + 124) |= 0x4000u;
          v42 = *(this + 1);
          if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 116) = *(*this + v42);
          goto LABEL_182;
        case 4u:
          *(a1 + 124) |= 4u;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 68) = *(*this + v44);
          goto LABEL_182;
        case 5u:
          *(a1 + 124) |= 0x20u;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 80) = *(*this + v39);
          goto LABEL_182;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_190;
            }

            v48 = *(this + 1);
            v49 = *(this + 2);
            while (v48 < v49 && (*(this + 24) & 1) == 0)
            {
              v51 = *(a1 + 16);
              v50 = *(a1 + 24);
              if (v51 >= v50)
              {
                v53 = *(a1 + 8);
                v54 = v51 - v53;
                v55 = (v51 - v53) >> 2;
                v56 = v55 + 1;
                if ((v55 + 1) >> 62)
                {
                  goto LABEL_191;
                }

                v57 = v50 - v53;
                if (v57 >> 1 > v56)
                {
                  v56 = v57 >> 1;
                }

                if (v57 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v58 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v58 = v56;
                }

                if (v58)
                {
                  sub_19B4C4FA8(a1 + 8, v58);
                }

                v59 = (v51 - v53) >> 2;
                v60 = (4 * v55);
                v61 = (4 * v55 - 4 * v59);
                *v60 = 0;
                v52 = v60 + 1;
                memcpy(v61, v53, v54);
                v62 = *(a1 + 8);
                *(a1 + 8) = v61;
                *(a1 + 16) = v52;
                *(a1 + 24) = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              else
              {
                *v51 = 0;
                v52 = v51 + 4;
              }

              *(a1 + 16) = v52;
              v63 = *(this + 1);
              if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(this + 2))
              {
                goto LABEL_146;
              }

              *(v52 - 1) = *(*this + v63);
              v49 = *(this + 2);
              v48 = *(this + 1) + 4;
              *(this + 1) = v48;
            }

            goto LABEL_147;
          }

          v102 = *(a1 + 16);
          v101 = *(a1 + 24);
          if (v102 >= v101)
          {
            v112 = *(a1 + 8);
            v113 = v102 - v112;
            v114 = (v102 - v112) >> 2;
            v115 = v114 + 1;
            if ((v114 + 1) >> 62)
            {
              goto LABEL_191;
            }

            v116 = v101 - v112;
            if (v116 >> 1 > v115)
            {
              v115 = v116 >> 1;
            }

            if (v116 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v117 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v117 = v115;
            }

            if (v117)
            {
              sub_19B4C4FA8(a1 + 8, v117);
            }

            v124 = (v102 - v112) >> 2;
            v125 = (4 * v114);
            v126 = (4 * v114 - 4 * v124);
            *v125 = 0;
            v103 = v125 + 1;
            memcpy(v126, v112, v113);
            v127 = *(a1 + 8);
            *(a1 + 8) = v126;
            *(a1 + 16) = v103;
            *(a1 + 24) = 0;
            if (v127)
            {
              operator delete(v127);
            }
          }

          else
          {
            *v102 = 0;
            v103 = v102 + 4;
          }

          *(a1 + 16) = v103;
          goto LABEL_178;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_190:
              v133 = 0;
              return v133 & 1;
            }

            v68 = *(this + 1);
            v69 = *(this + 2);
            while (v68 < v69 && (*(this + 24) & 1) == 0)
            {
              v71 = *(a1 + 40);
              v70 = *(a1 + 48);
              if (v71 >= v70)
              {
                v73 = *(a1 + 32);
                v74 = v71 - v73;
                v75 = (v71 - v73) >> 2;
                v76 = v75 + 1;
                if ((v75 + 1) >> 62)
                {
                  goto LABEL_191;
                }

                v77 = v70 - v73;
                if (v77 >> 1 > v76)
                {
                  v76 = v77 >> 1;
                }

                if (v77 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v78 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v78 = v76;
                }

                if (v78)
                {
                  sub_19B4C4FA8(a1 + 32, v78);
                }

                v79 = (v71 - v73) >> 2;
                v80 = (4 * v75);
                v81 = (4 * v75 - 4 * v79);
                *v80 = 0;
                v72 = v80 + 1;
                memcpy(v81, v73, v74);
                v82 = *(a1 + 32);
                *(a1 + 32) = v81;
                *(a1 + 40) = v72;
                *(a1 + 48) = 0;
                if (v82)
                {
                  operator delete(v82);
                }
              }

              else
              {
                *v71 = 0;
                v72 = v71 + 4;
              }

              *(a1 + 40) = v72;
              v83 = *(this + 1);
              if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
              {
LABEL_146:
                *(this + 24) = 1;
                break;
              }

              *(v72 - 1) = *(*this + v83);
              v69 = *(this + 2);
              v68 = *(this + 1) + 4;
              *(this + 1) = v68;
            }

LABEL_147:
            PB::Reader::recallMark();
          }

          else
          {
            v111 = *(a1 + 40);
            v110 = *(a1 + 48);
            if (v111 >= v110)
            {
              v118 = *(a1 + 32);
              v119 = v111 - v118;
              v120 = (v111 - v118) >> 2;
              v121 = v120 + 1;
              if ((v120 + 1) >> 62)
              {
LABEL_191:
                sub_19B5BE690();
              }

              v122 = v110 - v118;
              if (v122 >> 1 > v121)
              {
                v121 = v122 >> 1;
              }

              if (v122 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v123 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v123 = v121;
              }

              if (v123)
              {
                sub_19B4C4FA8(a1 + 32, v123);
              }

              v128 = (v111 - v118) >> 2;
              v129 = (4 * v120);
              v130 = (4 * v120 - 4 * v128);
              *v129 = 0;
              v103 = v129 + 1;
              memcpy(v130, v118, v119);
              v131 = *(a1 + 32);
              *(a1 + 32) = v130;
              *(a1 + 40) = v103;
              *(a1 + 48) = 0;
              if (v131)
              {
                operator delete(v131);
              }
            }

            else
            {
              *v111 = 0;
              v103 = v111 + 4;
            }

            *(a1 + 40) = v103;
LABEL_178:
            v132 = *(this + 1);
            if (v132 <= 0xFFFFFFFFFFFFFFFBLL && v132 + 4 <= *(this + 2))
            {
              *(v103 - 1) = *(*this + v132);
LABEL_182:
              v24 = *(this + 1) + 4;
LABEL_183:
              *(this + 1) = v24;
            }

            else
            {
LABEL_180:
              *(this + 24) = 1;
            }
          }

LABEL_184:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_188;
          }

          break;
        case 8u:
          *(a1 + 124) |= 0x800u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 104) = *(*this + v45);
          goto LABEL_182;
        case 9u:
          *(a1 + 124) |= 0x100u;
          v94 = *(this + 1);
          if (v94 > 0xFFFFFFFFFFFFFFFBLL || v94 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 92) = *(*this + v94);
          goto LABEL_182;
        case 0xAu:
          *(a1 + 124) |= 2u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 64) = *(*this + v41);
          goto LABEL_182;
        case 0xBu:
          *(a1 + 124) |= 0x10u;
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
                goto LABEL_171;
              }

              v88 += 7;
              ++v92;
              v14 = v89++ > 8;
            }

            while (!v14);
LABEL_141:
            LODWORD(v90) = 0;
            goto LABEL_171;
          }

          v104 = 0;
          v105 = 0;
          v90 = 0;
          v17 = v85 >= v86;
          v106 = v85 - v86;
          if (!v17)
          {
            v106 = 0;
          }

          v107 = (v87 + v86);
          v108 = v86 + 1;
          while (2)
          {
            if (v106)
            {
              v109 = *v107;
              *(this + 1) = v108;
              v90 |= (v109 & 0x7F) << v104;
              if (v109 < 0)
              {
                v104 += 7;
                --v106;
                ++v107;
                ++v108;
                v14 = v105++ > 8;
                if (v14)
                {
                  goto LABEL_141;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v90) = 0;
              }
            }

            else
            {
              LODWORD(v90) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_171:
          *(a1 + 76) = v90;
          goto LABEL_184;
        case 0xCu:
          *(a1 + 124) |= 8u;
          v31 = *(this + 1);
          v30 = *(this + 2);
          v32 = *this;
          if (v31 <= 0xFFFFFFFFFFFFFFF5 && v31 + 10 <= v30)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            do
            {
              *(this + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_168;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
            }

            while (!v14);
LABEL_131:
            LODWORD(v35) = 0;
            goto LABEL_168;
          }

          v95 = 0;
          v96 = 0;
          v35 = 0;
          v17 = v30 >= v31;
          v97 = v30 - v31;
          if (!v17)
          {
            v97 = 0;
          }

          v98 = (v32 + v31);
          v99 = v31 + 1;
          while (2)
          {
            if (v97)
            {
              v100 = *v98;
              *(this + 1) = v99;
              v35 |= (v100 & 0x7F) << v95;
              if (v100 < 0)
              {
                v95 += 7;
                --v97;
                ++v98;
                ++v99;
                v14 = v96++ > 8;
                if (v14)
                {
                  goto LABEL_131;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }
            }

            else
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_168:
          *(a1 + 72) = v35;
          goto LABEL_184;
        case 0xDu:
          *(a1 + 124) |= 0x400u;
          v40 = *(this + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 100) = *(*this + v40);
          goto LABEL_182;
        case 0xEu:
          *(a1 + 124) |= 0x10000u;
          v64 = *(this + 1);
          if (v64 >= *(this + 2))
          {
            v67 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v65 = v64 + 1;
            v66 = *(*this + v64);
            *(this + 1) = v65;
            v67 = v66 != 0;
          }

          *(a1 + 121) = v67;
          goto LABEL_184;
        case 0xFu:
          *(a1 + 124) |= 0x8000u;
          v26 = *(this + 1);
          if (v26 >= *(this + 2))
          {
            v29 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v27 = v26 + 1;
            v28 = *(*this + v26);
            *(this + 1) = v27;
            v29 = v28 != 0;
          }

          *(a1 + 120) = v29;
          goto LABEL_184;
        case 0x10u:
          *(a1 + 124) |= 0x200u;
          v43 = *(this + 1);
          if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 96) = *(*this + v43);
          goto LABEL_182;
        case 0x11u:
          *(a1 + 124) |= 0x1000u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 108) = *(*this + v25);
          goto LABEL_182;
        case 0x12u:
          *(a1 + 124) |= 0x40u;
          v47 = *(this + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 84) = *(*this + v47);
          goto LABEL_182;
        case 0x13u:
          *(a1 + 124) |= 0x2000u;
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
          {
            goto LABEL_180;
          }

          *(a1 + 112) = *(*this + v84);
          goto LABEL_182;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_190;
          }

          goto LABEL_184;
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

LABEL_188:
  v133 = v4 ^ 1;
  return v133 & 1;
}