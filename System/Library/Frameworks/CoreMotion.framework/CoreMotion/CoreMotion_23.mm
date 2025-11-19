uint64_t sub_19B507164(uint64_t result)
{
  *result = &unk_1F0E390A0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_19B507188(PB::Base *this)
{
  *this = &unk_1F0E390A0;
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

void sub_19B5071EC(PB::Base *a1)
{
  sub_19B507188(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B507224(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 32) & 4) != 0)
  {
    v5 = *(a1 + 28);
    PB::TextFormatter::format(this, "active");
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 32);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "threshold", *(a1 + 24));
    v6 = *(a1 + 32);
  }

  if (v6)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5072D4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_46;
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
          *(a1 + 32) |= 2u;
          v29 = *(this + 1);
          if (v29 > 0xFFFFFFFFFFFFFFFBLL || v29 + 4 > *(this + 2))
          {
LABEL_37:
            *(this + 24) = 1;
            goto LABEL_42;
          }

          *(a1 + 24) = *(*this + v29);
          v28 = *(this + 1) + 4;
          goto LABEL_41;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 4u;
          v23 = *(this + 1);
          if (v23 >= *(this + 2))
          {
            v26 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*this + v23);
            *(this + 1) = v24;
            v26 = v25 != 0;
          }

          *(a1 + 28) = v26;
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
          {
            goto LABEL_37;
          }

          *(a1 + 16) = *(*this + v27);
          v28 = *(this + 1) + 8;
LABEL_41:
          *(this + 1) = v28;
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      if (!PB::Reader::skip(this))
      {
        v31 = 0;
        return v31 & 1;
      }

LABEL_42:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_46:
  v31 = v4 ^ 1;
  return v31 & 1;
}

uint64_t sub_19B50759C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 32))
  {
    result = PB::Writer::write(this, *(result + 16));
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 24));
    v4 = *(v3 + 32);
  }

  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 28);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B507634(uint64_t result)
{
  *result = &unk_1F0E2FC08;
  *(result + 12) = 0;
  return result;
}

void sub_19B50765C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B507694(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "state");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5076F4(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B507968(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B507988(uint64_t result)
{
  *result = &unk_1F0E2E078;
  *(result + 96) = 0;
  return result;
}

void sub_19B5079B0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5079E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 96);
  if ((v5 & 0x10000) != 0)
  {
    v7 = *(a1 + 92);
    PB::TextFormatter::format(this, "doingBiasEstimation");
    v5 = *(a1 + 96);
    if ((v5 & 0x20000) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 93);
  PB::TextFormatter::format(this, "doingYawCorrection");
  v5 = *(a1 + 96);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a1 + 48);
  PB::TextFormatter::format(this, "magneticFieldCalibrationLevel");
  v5 = *(a1 + 96);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "magneticFieldX", *(a1 + 52));
  v5 = *(a1 + 96);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "magneticFieldY", *(a1 + 56));
  v5 = *(a1 + 96);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "magneticFieldZ", *(a1 + 60));
  v5 = *(a1 + 96);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 8));
  v5 = *(a1 + 96);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 16));
  v5 = *(a1 + 96);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 24));
  v5 = *(a1 + 96);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 32));
  v5 = *(a1 + 96);
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
  PB::TextFormatter::format(this, "rotationRateX", *(a1 + 64));
  v5 = *(a1 + 96);
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
  PB::TextFormatter::format(this, "rotationRateY", *(a1 + 68));
  v5 = *(a1 + 96);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "rotationRateZ", *(a1 + 72));
  v5 = *(a1 + 96);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 96);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "userAccelerationX", *(a1 + 76));
  v5 = *(a1 + 96);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "userAccelerationY", *(a1 + 80));
  v5 = *(a1 + 96);
  if ((v5 & 0x4000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  PB::TextFormatter::format(this, "userAccelerationZ", *(a1 + 84));
  if ((*(a1 + 96) & 0x8000) != 0)
  {
LABEL_19:
    v6 = *(a1 + 88);
    PB::TextFormatter::format(this, "variant");
  }

LABEL_20:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B507C6C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_123;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 96) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_61;
        case 2u:
          *(a1 + 96) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_61;
        case 3u:
          *(a1 + 96) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_61;
        case 4u:
          *(a1 + 96) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_61;
        case 5u:
          *(a1 + 96) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_61:
          v2 = *(this + 1) + 8;
          goto LABEL_108;
        case 6u:
          *(a1 + 96) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_107;
        case 7u:
          *(a1 + 96) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_107;
        case 8u:
          *(a1 + 96) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_107;
        case 9u:
          *(a1 + 96) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_107;
        case 0xAu:
          *(a1 + 96) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_107;
        case 0xBu:
          *(a1 + 96) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_107;
        case 0xCu:
          *(a1 + 96) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_107;
        case 0xDu:
          *(a1 + 96) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_85;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_107;
        case 0xEu:
          *(a1 + 96) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_85:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 60) = *(*this + v2);
LABEL_107:
            v2 = *(this + 1) + 4;
LABEL_108:
            *(this + 1) = v2;
          }

          goto LABEL_119;
        case 0xFu:
          *(a1 + 96) |= 0x20u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v42 = 0;
            v43 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v44 = v2 - v24;
            v45 = (v25 + v24);
            v46 = v24 + 1;
            while (1)
            {
              if (!v44)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_114;
              }

              v47 = v46;
              v48 = *v45;
              *(this + 1) = v47;
              v28 |= (v48 & 0x7F) << v42;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              --v44;
              ++v45;
              v46 = v47 + 1;
              v14 = v43++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_113:
                v2 = v47;
                goto LABEL_114;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_113;
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
              goto LABEL_114;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_114:
          *(a1 + 48) = v28;
          goto LABEL_119;
        case 0x10u:
          *(a1 + 96) |= 0x10000u;
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

          *(a1 + 92) = v33;
          goto LABEL_119;
        case 0x11u:
          *(a1 + 96) |= 0x20000u;
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

          *(a1 + 93) = v23;
          goto LABEL_119;
        case 0x12u:
          *(a1 + 96) |= 0x8000u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v51 = v2 - v34;
            v52 = (v35 + v34);
            v53 = v34 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v38) = 0;
                *(this + 24) = 1;
                goto LABEL_118;
              }

              v54 = v53;
              v55 = *v52;
              *(this + 1) = v54;
              v38 |= (v55 & 0x7F) << v49;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              --v51;
              ++v52;
              v53 = v54 + 1;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_117:
                v2 = v54;
                goto LABEL_118;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_117;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_118:
          *(a1 + 88) = v38;
          goto LABEL_119;
        default:
          if (!PB::Reader::skip(this))
          {
            v56 = 0;
            return v56 & 1;
          }

          v2 = *(this + 1);
LABEL_119:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_123;
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

LABEL_123:
  v56 = v4 ^ 1;
  return v56 & 1;
}

uint64_t sub_19B5083C0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 96);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 96);
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
  v4 = *(v3 + 96);
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
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 96);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 96);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 96);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 96);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 96);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 96);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 96);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 96);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 96);
  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 96);
  if ((v4 & 0x100) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v7 = *(v3 + 93);
    result = PB::Writer::write(this);
    if ((*(v3 + 96) & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_35:
  v6 = *(v3 + 92);
  result = PB::Writer::write(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x8000) == 0)
  {
    return result;
  }

LABEL_37:
  v8 = *(v3 + 88);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B5085F0(uint64_t result)
{
  *result = &unk_1F0E2CBB0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_19B50861C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

float sub_19B508654(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0E2CBB0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 8);
    *(a1 + 16) = 1;
    *(a1 + 8) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 12);
    *(a1 + 16) = v2;
    *(a1 + 12) = result;
  }

  return result;
}

uint64_t sub_19B5086BC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "name");
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "value", *(a1 + 12));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B508738(uint64_t a1, PB::Reader *this)
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
        *(a1 + 16) |= 2u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 12) = *(*this + v2);
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
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
        *(a1 + 8) = v26;
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

uint64_t sub_19B508A04(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this, v6);
  }

  return result;
}

void sub_19B508B40(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_19B508A70();
}

void sub_19B508B70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B508B8C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 160) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  inflateInit_((a1 + 48), "1.2.12", 112);
  return a1;
}

void sub_19B508BFC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 168) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B508C20(uint64_t a1)
{
  inflateEnd((a1 + 48));
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_19B508C64(uint64_t a1)
{
  *(a1 + 168) = *(a1 + 160);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (!*a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      munmap(v2, *(a1 + 16));
    }
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  result = *(a1 + 8);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
  }

  *(a1 + 8) = -1;
  *a1 = 0;
  return result;
}

uint64_t sub_19B508CCC(void *a1)
{
  v1 = a1[4];
  if (!v1)
  {
    return 0;
  }

  if (a1[2] > 7uLL && *v1 == 0xE020C5BE006C536DLL)
  {
    a1[3] += 8;
    return 1;
  }

  else
  {
    sub_19B508C64(a1);
    return 0;
  }
}

uint64_t sub_19B508D38(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 16) = (*(*a2 + 32))(a2);
  *(a1 + 24) = 0;
  *(a1 + 32) = (*(*a2 + 24))(a2);
  *(a1 + 40) = 0;

  return sub_19B508CCC(a1);
}

uint64_t sub_19B508DE0(void *a1, uint64_t a2)
{
  v3 = a1[20];
  if (v3 == a1[21])
  {

    return sub_19B508ED0(a1);
  }

  else
  {
    v4 = a1 + 23;
    v5 = a1[23];
    if (v5 >= 4 && (v7 = a1[24], v10 = *v7, v8 = (v7 + 1), v9 = v10, v11 = v5 - 4, a1[23] = v11, a1[24] = v8, v11 >= v10))
    {
      PB::Reader::Reader(v14, v8);
      (*(*a2 + 16))(a2, v14);
      v13 = a1[24] + v9;
      a1[23] -= v9;
      a1[24] = v13;
      return v14[24];
    }

    else
    {
      a1[21] = v3;
      result = 1;
      *v4 = 0;
      a1[24] = 0;
    }
  }

  return result;
}

uint64_t sub_19B508ED0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 2;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 >= v3)
  {
    goto LABEL_19;
  }

  v5 = v4 + 16;
  if (v3 <= v4 + 16)
  {
    goto LABEL_19;
  }

  if (*(a1 + 40) == 1)
  {
    *(a1 + 40) = 0;
    v6 = v4 + 8;
    if (v4 + 8 < v3)
    {
      v7 = (v1 + v4);
      result = 1;
      while (1)
      {
        v9 = *v7++;
        if (v9 == 0x5979AAB3D5E07959)
        {
          break;
        }

        *(a1 + 24) = v6;
        v6 += 8;
        if (v6 >= v3)
        {
          return result;
        }
      }
    }

    return 1;
  }

  v10 = v1 + v4;
  if (*(v1 + v4) != 0x5979AAB3D5E07959)
  {
    *(a1 + 24) = v4 + 8;
    goto LABEL_21;
  }

  v13 = v10 + 8;
  v11 = *(v10 + 8);
  v12 = *(v13 + 4);
  *(a1 + 24) = v5;
  if (v11 != 1936614771)
  {
    v15 = v4 + v12 + 23;
    goto LABEL_23;
  }

  if (v12 <= 0xB)
  {
LABEL_21:
    result = 1;
    *(a1 + 40) = 1;
    return result;
  }

  v14 = v12;
  if (v5 + v12 >= v3)
  {
    if (v4 + 44 < v3)
    {
      v14 = v3 - (v4 + 16);
      goto LABEL_17;
    }

LABEL_19:
    sub_19B508C64(a1);
    return 2;
  }

LABEL_17:
  if (!sub_19B509030(a1, v1 + v5 + 12, v14 - 12))
  {
    goto LABEL_21;
  }

  v15 = v12 + *(a1 + 24) + 7;
LABEL_23:
  *(a1 + 24) = v15 & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL sub_19B509030(uint64_t a1, uint64_t a2, int a3)
{
  sub_19B509180(__p, 0x4000);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  v6 = __p[0];
  v7 = __p[1];
  *(a1 + 72) = __p[0];
  while (1)
  {
    *(a1 + 80) = v7 - v6;
    v8 = inflate((a1 + 48), 2);
    if (v8)
    {
      break;
    }

    v9 = __p[0];
    v7 = __p[1];
    v10 = __p[1] - __p[0];
    if (__p[1] - __p[0] < 1)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        v7 = LODWORD(__p[0]) + 2 * v10;
        __p[1] = __p[0] + 2 * v10;
      }
    }

    else
    {
      sub_19B509244(__p, v10);
      v9 = __p[0];
      v7 = __p[1];
    }

    v11 = &v9[*(a1 + 88)];
    *(a1 + 72) = v11;
    v6 = v11;
  }

  v12 = v8 == 1;
  v13 = *(a1 + 88);
  v14 = __p[0];
  v15 = v13 >= __p[1] - __p[0];
  if (v13 <= __p[1] - __p[0])
  {
    v16 = __p[0] + v13;
    if (v15)
    {
      v16 = __p[1];
    }
  }

  else
  {
    sub_19B509244(__p, v13 - (__p[1] - __p[0]));
    v14 = __p[0];
    v16 = __p[1];
  }

  *(a1 + 192) = v14;
  v17 = v16 - v14;
  v18 = *(a1 + 160);
  *(a1 + 160) = v14;
  *(a1 + 168) = v16;
  *__p = v18;
  v19 = *(a1 + 176);
  *(a1 + 176) = v22;
  *(a1 + 184) = v17;
  v22 = v19;
  inflateReset((a1 + 48));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

void sub_19B50915C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B509180(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_19B5091F4(result, a2);
  }

  return result;
}

void sub_19B5091D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5091F4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_19B5BE690();
}

void sub_19B509244(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_19B5BE690();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_19B50939C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B509418(uint64_t a1)
{
  *a1 = 0;
  v2 = dispatch_queue_create("CMMsl.Writer", 0);
  *(a1 + 8) = v2;
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v2);
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 300;
  *(a1 + 40) = -1;
  v4 = MEMORY[0x1E69E9820];
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  handler[0] = v4;
  handler[1] = 0x40000000;
  handler[2] = sub_19B50951C;
  handler[3] = &unk_1E75327F8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_source_set_timer(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(a1 + 16));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  deflateInit_((a1 + 80), -1, "1.2.12", 112);
  return a1;
}

void sub_19B509524(void *a1)
{
  v1 = (a1 + 7);
  if (a1[7])
  {
    while (1)
    {
      v3 = deflate((a1 + 10), 4);
      if (v3)
      {
        break;
      }

      sub_19B509EE8(a1);
    }

    if (v3 == 1)
    {
      v4 = a1[15];
      v5 = v4 + 28;
      v6 = (v4 + 35) & 0xFFFFFFFFFFFFFFF8;
      *(a1[7] + 12) = v4 + 12;
      if (v4 + 28 < v6)
      {
        do
        {
          *(*v1 + v5++) = 0;
        }

        while (v6 != v5);
      }

      v7 = a1[7];
      if (*a1)
      {
        (*(**a1 + 24))(*a1, v7, v6);
        free(*v1);
      }

      else
      {
        v8 = a1[1];
        destructor[0] = MEMORY[0x1E69E9820];
        destructor[1] = 0x40000000;
        destructor[2] = sub_19B509F68;
        destructor[3] = &unk_1E75328E0;
        destructor[4] = v7;
        v9 = dispatch_data_create(v7, v6, v8, destructor);
        dispatch_io_write(a1[3], a1[6], v9, a1[1], &unk_1F0E28CA0);
        dispatch_release(v9);
      }

      a1[6] += v6;
      v1[1] = 0;
      v1[2] = 0;
      *v1 = 0;
      deflateReset((a1 + 10));
      dispatch_source_set_timer(a1[2], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, (1000000000 * a1[4]) >> 1);
    }

    else
    {
      fprintf(*MEMORY[0x1E69E9848], "zstream status? Msl %d\n", v3);
    }
  }
}

void sub_19B5096E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_19B50975C;
  v3[3] = &unk_1E7532818;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

uint64_t sub_19B50975C(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 40) != -1)
  {
    sub_19B7A35D0();
  }

  *(v1 + 32) = *(result + 40);
  return result;
}

uint64_t sub_19B509788(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  else
  {
    v5 = *(a1 + 40);
    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
    }
  }

  free(*(a1 + 56));
  deflateEnd((a1 + 80));
  return a1;
}

uint64_t sub_19B5097F8(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = *(a1 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = sub_19B5098AC;
  v6[3] = &unk_1E7532860;
  v6[5] = a1;
  v6[6] = a2;
  v7 = a3;
  v6[4] = &v8;
  dispatch_sync(v3, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

dispatch_io_t sub_19B5098AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = open_dprotected_np(*(a1 + 48), 16777730, *(a1 + 56), 0, 438);
  *(v2 + 40) = v3;
  if (v3 < 0)
  {
    v7 = *MEMORY[0x1E69E9848];
    v8 = "Cannot open Msl file\n";
    v9 = 21;
  }

  else
  {
    v4 = lseek(v3, 0, 2);
    if (v4 < 0)
    {
      v7 = *MEMORY[0x1E69E9848];
      v8 = "Cannot seek to end of Msl file\n";
      v9 = 31;
    }

    else
    {
      v5 = v4;
      if ((lseek(*(v2 + 40), 0, 0) & 0x8000000000000000) == 0)
      {
        if (v5)
        {
          __buf = 0;
          if (pread(*(v2 + 40), &__buf, 8uLL, 0) == 8)
          {
            if (__buf == 0xE020C5BE006C536DLL)
            {
              v6 = (v5 + 7) & 0x7FFFFFFFFFFFFFF8;
LABEL_15:
              *(v2 + 48) = v6;
              v11 = *(v2 + 40);
              v12 = *(v2 + 8);
              cleanup_handler[0] = MEMORY[0x1E69E9820];
              cleanup_handler[1] = 0x40000000;
              cleanup_handler[2] = sub_19B509AE0;
              cleanup_handler[3] = &unk_1E7532838;
              v17 = v11;
              result = dispatch_io_create(1uLL, v11, v12, cleanup_handler);
              *(v2 + 24) = result;
              if (result)
              {
                *(*(*(a1 + 32) + 8) + 24) = 1;
                return result;
              }

              v13 = *MEMORY[0x1E69E9848];
              v14 = "Cannot create dispatch_io for Msl file\n";
              v15 = 39;
              return fwrite(v14, v15, 1uLL, v13);
            }

            v13 = *MEMORY[0x1E69E9848];
            v14 = "Bad signature in Msl file\n";
            v15 = 26;
          }

          else
          {
            v13 = *MEMORY[0x1E69E9848];
            v14 = "Short signature in Msl file\n";
            v15 = 28;
          }

          return fwrite(v14, v15, 1uLL, v13);
        }

        v6 = 8;
        pwrite(*(v2 + 40), &unk_19B7B4D90, 8uLL, 0);
        goto LABEL_15;
      }

      v7 = *MEMORY[0x1E69E9848];
      v8 = "Cannot seek to start of Msl file\n";
      v9 = 33;
    }
  }

  return fwrite(v8, v9, 1uLL, v7);
}

void sub_19B509AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_19B509B5C;
  v3[3] = &unk_1E7532880;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void sub_19B509B5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  PB::Writer::Writer(&v5);
  (*(**(a1 + 40) + 24))(*(a1 + 40), &v5);
  v3 = *(v2 + 56);
  if (!v3)
  {
    sub_19B509C3C(v2);
    v3 = *(v2 + 56);
  }

  ++*(v3 + 16);
  v4 = v5 - v6;
  sub_19B509D28(v2, &v4, 4);
  sub_19B509D28(v2, v6, v5 - v6);
  if (!*(v2 + 72))
  {
    sub_19B509524(v2);
  }

  PB::Writer::~Writer(&v5);
}

void sub_19B509C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void sub_19B509C3C(uint64_t a1)
{
  *(a1 + 56) = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  *(a1 + 64) = xmmword_19B7B4D80;
  gettimeofday(&v7, 0);
  v2 = *(a1 + 56);
  *v2 = 0x5979AAB3D5E07959;
  *(v2 + 8) = 1936614771;
  tv_sec = v7.tv_sec;
  *(v2 + 16) = 0;
  *(v2 + 20) = tv_sec;
  *(v2 + 24) = 1000 * v7.tv_usec;
  *(a1 + 104) = v2 + 28;
  *(a1 + 112) = *(a1 + 64) - 28;
  v4 = 1000000000 * *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = dispatch_time(0, v4);

  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, v4 >> 1);
}

char *sub_19B509D28(char *result, uint64_t a2, int a3)
{
  *(result + 10) = a2;
  v3 = (result + 80);
  *(result + 22) = a3;
  if (a3)
  {
    v4 = result;
    do
    {
      result = deflate(v3, 0);
      if (!result && !*(v4 + 28))
      {
        result = sub_19B509EE8(v4);
      }
    }

    while (*(v4 + 22));
  }

  return result;
}

void sub_19B509D80(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = sub_19B509E08;
  v4[3] = &unk_1E75328C0;
  v4[4] = a1;
  v4[5] = v2;
  dispatch_sync(v3, v4);
}

void sub_19B509E08(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_19B509524(v2);
  v3 = v2[3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_19B509EA8;
  v5[3] = &unk_1E75328A0;
  v4 = *(a1 + 40);
  v5[4] = v2;
  v5[5] = v4;
  dispatch_io_barrier(v3, v5);
  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 40));
}

intptr_t sub_19B509EA8(uint64_t a1)
{
  fsync(*(*(a1 + 32) + 40));
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

char *sub_19B509EE8(char *result)
{
  v1 = result;
  v3 = *(result + 8);
  v2 = *(result + 9);
  if (v2)
  {
    *(result + 28) += v2;
    *(result + 8) = v3 + v2;
    *(result + 9) = 0;
  }

  else
  {
    *(result + 8) = 2 * v3;
    result = malloc_type_realloc(*(result + 7), 2 * v3, 0x100004077774924uLL);
    *(v1 + 7) = result;
    v4 = *(v1 + 15);
    *(v1 + 13) = &result[v4 + 28];
    *(v1 + 28) = *(v1 + 16) - v4;
  }

  return result;
}

void sub_19B509F70(int a1, char a2, int a3, int __errnum)
{
  if (__errnum || (a2 & 1) == 0)
  {
    v4 = *MEMORY[0x1E69E9848];
    v5 = strerror(__errnum);
    fprintf(v4, "Msl dispatch io write error %s\n", v5);
  }
}

uint64_t sub_19B509FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_19B4C5138((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    sub_19B4C5138((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_19B4C5138((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  v8 = *(a2 + 88);
  *(a1 + 104) = 0u;
  *(a1 + 88) = v8;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xBFF0000000000000;
  v9 = sub_19B56BE68(a1 + 16, a2, a3);
  *(a1 + 136) = v9;
  if ((v9 & 1) == 0)
  {
    if (qword_1ED71C950 != -1)
    {
      sub_19B7A35FC();
    }

    v10 = qword_1ED71C948;
    if (os_log_type_enabled(qword_1ED71C948, OS_LOG_TYPE_ERROR))
    {
      sub_19B7A3610(a1, (a1 + 16), v10);
    }
  }

  return a1;
}

void sub_19B50A100(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B50A164(uint64_t a1)
{
  sub_19B50A1DC(a1);
  sub_19B50B054((a1 + 128), 0);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_19B50A1DC(uint64_t a1)
{
  v2 = (a1 + 128);
  result = *(a1 + 128);
  if (result)
  {
    sub_19B509D80(result);

    return sub_19B50B054(v2, 0);
  }

  return result;
}

void sub_19B50A5F0(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  sub_19B50B164(&a15, MEMORY[0x1E69E54E8]);
  MEMORY[0x19EAE76B0](va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B50A660(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_19B50FFE8((a1 + 1), 16);
  return a1;
}

void sub_19B50A7A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x19EAE76B0](v1);
  _Unwind_Resume(a1);
}

void *sub_19B50A7CC(void *a1, uint64_t *a2)
{
  MEMORY[0x19EAE7560](v10, a1);
  if (v10[0] == 1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    std::locale::use_facet(&v11, MEMORY[0x1E69E5378]);
    std::locale::~locale(&v11);
    v4 = (a1 + *(*a1 - 24));
    rdbuf = v4->__rdbuf_;
    if (v4[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v4);
      v6 = std::locale::use_facet(&v11, MEMORY[0x1E69E5318]);
      v7 = (v6->__vftable[2].~facet_0)(v6, 32);
      std::locale::~locale(&v11);
      v4[1].__fmtflags_ = v7;
    }

    v8 = *a2;
    strlen(a2[1]);
    if (!std::time_put<char,std::ostreambuf_iterator<char>>::put())
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  MEMORY[0x19EAE7570](v10);
  return a1;
}

void sub_19B50A940(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x19EAE7570](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x19B50A920);
}

void sub_19B50A9B0(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X8>)
{
  v31[2] = *MEMORY[0x1E69E9840];
  sub_19B50B0A0(a3, 95, &v28);
  v11 = *(a4 + 23);
  if (v11 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  if (v11 >= 0)
  {
    v13 = *(a4 + 23);
  }

  else
  {
    v13 = *(a4 + 8);
  }

  v14 = std::string::append(&v28, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v29, 46);
  v30 = v29;
  memset(&v29, 0, sizeof(v29));
  v16 = *(a5 + 23);
  if (v16 >= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = *a5;
  }

  if (v16 >= 0)
  {
    v18 = *(a5 + 23);
  }

  else
  {
    v18 = *(a5 + 8);
  }

  v19 = std::string::append(&v30, v17, v18);
  v20 = v19->__r_.__value_.__r.__words[0];
  v31[0] = v19->__r_.__value_.__l.__size_;
  *(v31 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v22 = v31[0];
  *(a1 + 104) = v20;
  *(a1 + 112) = v22;
  *(a1 + 119) = *(v31 + 7);
  *(a1 + 127) = v21;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  sub_19B50B0A0(a2, 47, &v30);
  v23 = *(a1 + 127);
  if (v23 >= 0)
  {
    v24 = (a1 + 104);
  }

  else
  {
    v24 = *(a1 + 104);
  }

  if (v23 >= 0)
  {
    v25 = *(a1 + 127);
  }

  else
  {
    v25 = *(a1 + 112);
  }

  v26 = std::string::append(&v30, v24, v25);
  *a6 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_19B50AB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B50ABE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  sub_19B56C008(a1 + 16, a1 + 64, a3, &v4);
  sub_19B51058C(&v3, ".*_(\\d+-\\d+-\\d+_\\d+:\\d+:\\d+\\.\\d+)\\..*", 0);
}

void sub_19B50AEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_19B50B014(&a12);
  a12.__locale_ = &a20;
  sub_19B50FEB8(&a12);
  _Unwind_Resume(a1);
}

void sub_19B50AF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_19B77B8B4();

  sub_19B50AF60(a1, a2, v4);
}

void sub_19B50AF60(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(a1 + 136) & 1) == 0)
  {
    sub_19B7A36C0();
  }

  v6 = *(a1 + 128);
  if (!v6 || *(a1 + 144) < 0.0 || sub_19B509FC8(v6) > *a1 || (v8 = *(a1 + 144), v8 > a3) || (LODWORD(v7) = *(a1 + 8), a3 - v8 > v7))
  {
    sub_19B50A230(a1);
  }

  v9 = *(a1 + 128);

  sub_19B509AE8(v9, a2);
}

void sub_19B50B004(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    sub_19B509D80(v1);
  }
}

void sub_19B50B014(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_19B41FFEC(locale);
  }

  std::locale::~locale(this);
}

uint64_t sub_19B50B054(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B5097F4();

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B50B0A0@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_19B50FF5C(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

os_log_t sub_19B50B134()
{
  result = os_log_create("com.apple.MotionSensorLogging", "MSL");
  qword_1ED71C948 = result;
  return result;
}

uint64_t sub_19B50B164(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_19B50B280(uint64_t a1, unint64_t a2, uint64_t **a3, uint64_t a4, char a5)
{
  v202 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = a2 - 24;
  v191 = a2 - 48;
  v10 = a2 - 72;
  v11 = a1;
  v196 = a2;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      goto LABEL_198;
    }

    if (v13 == 2)
    {
      if (!sub_19B50C530(a3, v9, v11))
      {
        goto LABEL_198;
      }

LABEL_117:
      v131 = *v11;
      v199 = *(v11 + 16);
      v198 = v131;
      v132 = *v9;
      *(v11 + 16) = *(v9 + 16);
      *v11 = v132;
      v133 = v198;
      v134 = v199;
      goto LABEL_118;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v135 = (v11 + 24);
          if (v11 + 24 != a2)
          {
            v136 = 0;
            v137 = v11;
            do
            {
              v138 = v137;
              v137 = v135;
              if (sub_19B50C530(a3, v135, v138))
              {
                v139 = *v137;
                v199 = *(v137 + 16);
                v198 = v139;
                *(v137 + 8) = 0;
                *(v137 + 16) = 0;
                *v137 = 0;
                v140 = v136;
                do
                {
                  v141 = v11 + v140;
                  if (*(v11 + v140 + 47) < 0)
                  {
                    operator delete(*(v141 + 24));
                  }

                  *(v141 + 24) = *v141;
                  *(v141 + 40) = *(v141 + 16);
                  *(v141 + 23) = 0;
                  *v141 = 0;
                  if (!v140)
                  {
                    v144 = v11;
                    goto LABEL_132;
                  }

                  v142 = sub_19B50C530(a3, &v198, (v11 + v140 - 24));
                  v140 -= 24;
                }

                while ((v142 & 1) != 0);
                v143 = *(v11 + v140 + 47);
                v144 = v11 + v140 + 24;
                if (v143 < 0)
                {
                  operator delete(*v144);
                }

LABEL_132:
                v145 = v198;
                *(v144 + 16) = v199;
                *v144 = v145;
              }

              v135 = (v137 + 24);
              v136 += 24;
            }

            while (v137 + 24 != v196);
          }
        }
      }

      else if (v11 != a2)
      {
        v181 = (v11 + 24);
        if (v11 + 24 != a2)
        {
          v182 = v11 - 24;
          do
          {
            v183 = a1;
            a1 = v181;
            if (sub_19B50C530(a3, v181, v183))
            {
              v184 = *a1;
              v199 = *(a1 + 16);
              v198 = v184;
              *(a1 + 8) = 0;
              *(a1 + 16) = 0;
              *a1 = 0;
              v185 = v182;
              do
              {
                if (*(v185 + 71) < 0)
                {
                  operator delete(*(v185 + 48));
                }

                *(v185 + 48) = *(v185 + 24);
                *(v185 + 64) = *(v185 + 40);
                *(v185 + 47) = 0;
                *(v185 + 24) = 0;
                v186 = sub_19B50C530(a3, &v198, v185);
                v185 -= 24;
              }

              while ((v186 & 1) != 0);
              if (*(v185 + 71) < 0)
              {
                operator delete(*(v185 + 48));
              }

              v187 = v198;
              *(v185 + 64) = v199;
              *(v185 + 48) = v187;
            }

            v181 = (a1 + 24);
            v182 += 24;
          }

          while (a1 + 24 != v196);
        }
      }

      goto LABEL_198;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v146 = (v13 - 2) >> 1;
        v194 = v146;
        do
        {
          v147 = v146;
          if (v194 >= v146)
          {
            v148 = (2 * v146) | 1;
            v149 = a1 + 24 * v148;
            if (2 * v146 + 2 < v13 && sub_19B50C530(a3, (a1 + 24 * v148), (v149 + 24)))
            {
              v149 += 24;
              v148 = 2 * v147 + 2;
            }

            v150 = a1 + 24 * v147;
            a2 = v196;
            if ((sub_19B50C530(a3, v149, v150) & 1) == 0)
            {
              v151 = *v150;
              v199 = *(v150 + 16);
              v198 = v151;
              *(v150 + 8) = 0;
              *(v150 + 16) = 0;
              *v150 = 0;
              while (1)
              {
                v152 = v149;
                if (*(v150 + 23) < 0)
                {
                  operator delete(*v150);
                }

                v153 = *v149;
                *(v150 + 16) = *(v149 + 16);
                *v150 = v153;
                *(v149 + 23) = 0;
                *v149 = 0;
                if (v194 < v148)
                {
                  break;
                }

                v154 = (2 * v148) | 1;
                v149 = a1 + 24 * v154;
                v148 = 2 * v148 + 2;
                if (v148 >= v13)
                {
                  v148 = v154;
                }

                else if (sub_19B50C530(a3, (a1 + 24 * v154), (v149 + 24)))
                {
                  v149 += 24;
                }

                else
                {
                  v148 = v154;
                }

                v150 = v152;
                if (sub_19B50C530(a3, v149, &v198))
                {
                  if (*(v152 + 23) < 0)
                  {
                    operator delete(*v152);
                  }

                  break;
                }
              }

              v155 = v198;
              *(v152 + 16) = v199;
              *v152 = v155;
              a2 = v196;
            }
          }

          v146 = v147 - 1;
        }

        while (v147);
        v156 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          v157 = 0;
          v192 = a2;
          v195 = *a1;
          *&v200 = *(a1 + 8);
          *(&v200 + 7) = *(a1 + 15);
          v197 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v158 = a1;
          do
          {
            v159 = v158;
            v160 = v158 + 24 * v157;
            v158 = v160 + 24;
            v161 = 2 * v157;
            v157 = (2 * v157) | 1;
            v162 = v161 + 2;
            if (v161 + 2 < v156)
            {
              v163 = v160 + 48;
              if (sub_19B50C530(a3, (v160 + 24), (v160 + 48)))
              {
                v158 = v163;
                v157 = v162;
              }

              if (*(v159 + 23) < 0)
              {
                operator delete(*v159);
              }
            }

            v164 = *v158;
            *(v159 + 16) = *(v158 + 16);
            *v159 = v164;
            *(v158 + 23) = 0;
            *v158 = 0;
          }

          while (v157 <= ((v156 - 2) >> 1));
          if (v158 == v192 - 24)
          {
            v166 = v192 - 24;
            *v158 = v195;
            v175 = *(&v200 + 7);
            *(v158 + 8) = v200;
            *(v158 + 15) = v175;
            *(v158 + 23) = v197;
          }

          else
          {
            v165 = *(v192 - 24);
            v166 = v192 - 24;
            *(v158 + 16) = *(v192 - 8);
            *v158 = v165;
            *(v192 - 24) = v195;
            v167 = v200;
            *(v192 - 9) = *(&v200 + 7);
            *(v192 - 16) = v167;
            *(v192 - 1) = v197;
            v168 = v158 - a1 + 24;
            if (v168 >= 25)
            {
              v169 = (-2 - 0x5555555555555555 * (v168 >> 3)) >> 1;
              v170 = a1 + 24 * v169;
              if (sub_19B50C530(a3, v170, v158))
              {
                v171 = *v158;
                v199 = *(v158 + 16);
                v198 = v171;
                *(v158 + 8) = 0;
                *(v158 + 16) = 0;
                *v158 = 0;
                while (1)
                {
                  v172 = v170;
                  if (*(v158 + 23) < 0)
                  {
                    operator delete(*v158);
                  }

                  v173 = *v170;
                  *(v158 + 16) = *(v170 + 16);
                  *v158 = v173;
                  *(v170 + 23) = 0;
                  *v170 = 0;
                  if (!v169)
                  {
                    break;
                  }

                  v169 = (v169 - 1) >> 1;
                  v170 = a1 + 24 * v169;
                  v158 = v172;
                  if ((sub_19B50C530(a3, v170, &v198) & 1) == 0)
                  {
                    if (*(v172 + 23) < 0)
                    {
                      operator delete(*v172);
                    }

                    break;
                  }
                }

                v174 = v198;
                *(v172 + 16) = v199;
                *v172 = v174;
              }
            }
          }

          v176 = v156-- <= 2;
          a2 = v166;
        }

        while (!v176);
      }

      goto LABEL_198;
    }

    v14 = v13 >> 1;
    v15 = v11 + 24 * v14;
    if (v12 >= 0xC01)
    {
      v16 = sub_19B50C530(a3, (a1 + 24 * v14), a1);
      v17 = sub_19B50C530(a3, v9, (a1 + 24 * v14));
      if (v16)
      {
        if (v17)
        {
          v18 = *a1;
          v199 = *(a1 + 16);
          v198 = v18;
          v19 = *v9;
          *(a1 + 16) = *(v9 + 16);
          *a1 = v19;
          goto LABEL_27;
        }

        v36 = *a1;
        v199 = *(a1 + 16);
        v198 = v36;
        v37 = *v15;
        *(a1 + 16) = *(v15 + 16);
        *a1 = v37;
        v38 = v198;
        *(v15 + 16) = v199;
        *v15 = v38;
        if (sub_19B50C530(a3, v9, (a1 + 24 * v14)))
        {
          v39 = *v15;
          v199 = *(v15 + 16);
          v198 = v39;
          v40 = *v9;
          *(v15 + 16) = *(v9 + 16);
          *v15 = v40;
LABEL_27:
          v41 = v198;
          *(v9 + 16) = v199;
          *v9 = v41;
        }
      }

      else if (v17)
      {
        v24 = *v15;
        v199 = *(v15 + 16);
        v198 = v24;
        v25 = *v9;
        *(v15 + 16) = *(v9 + 16);
        *v15 = v25;
        v26 = v198;
        *(v9 + 16) = v199;
        *v9 = v26;
        if (sub_19B50C530(a3, (a1 + 24 * v14), a1))
        {
          v27 = *a1;
          v199 = *(a1 + 16);
          v198 = v27;
          v28 = *v15;
          *(a1 + 16) = *(v15 + 16);
          *a1 = v28;
          v29 = v198;
          *(v15 + 16) = v199;
          *v15 = v29;
        }
      }

      v42 = a1 + 24 * v14 - 24;
      v43 = sub_19B50C530(a3, v42, (a1 + 24));
      v44 = sub_19B50C530(a3, v191, v42);
      if (v43)
      {
        if (v44)
        {
          v198 = *(a1 + 24);
          v45 = v198;
          v199 = *(a1 + 40);
          v46 = v199;
          v47 = *(v191 + 16);
          *(a1 + 24) = *v191;
          *(a1 + 40) = v47;
          *(v191 + 16) = v46;
          *v191 = v45;
        }

        else
        {
          v198 = *(a1 + 24);
          v60 = v198;
          v199 = *(a1 + 40);
          v61 = v199;
          v62 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v42;
          *(a1 + 40) = v62;
          *(a1 + 24 * v14 - 8) = v61;
          *v42 = v60;
          if (sub_19B50C530(a3, v191, v42))
          {
            v63 = *v42;
            v199 = *(a1 + 24 * v14 - 8);
            v198 = v63;
            v64 = *v191;
            *(a1 + 24 * v14 - 8) = *(v191 + 16);
            *v42 = v64;
            v65 = v198;
            *(v191 + 16) = v199;
            *v191 = v65;
          }
        }
      }

      else if (v44)
      {
        v48 = *v42;
        v199 = *(a1 + 24 * v14 - 8);
        v198 = v48;
        v49 = *v191;
        *(a1 + 24 * v14 - 8) = *(v191 + 16);
        *v42 = v49;
        v50 = v198;
        *(v191 + 16) = v199;
        *v191 = v50;
        if (sub_19B50C530(a3, v42, (a1 + 24)))
        {
          v198 = *(a1 + 24);
          v51 = v198;
          v199 = *(a1 + 40);
          v52 = v199;
          v53 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v42;
          *(a1 + 40) = v53;
          *(a1 + 24 * v14 - 8) = v52;
          *v42 = v51;
        }
      }

      v66 = a1 + 24 * v14;
      v67 = sub_19B50C530(a3, (v66 + 24), (a1 + 48));
      v68 = sub_19B50C530(a3, v10, (v66 + 24));
      if (v67)
      {
        if (v68)
        {
          v69 = *(a1 + 48);
          v198 = v69;
          v70 = *(a1 + 64);
          v199 = v70;
          v71 = *(v10 + 16);
          *(a1 + 48) = *v10;
          *(a1 + 64) = v71;
          goto LABEL_47;
        }

        v198 = *(a1 + 48);
        v78 = v198;
        v199 = *(a1 + 64);
        v79 = v199;
        v80 = *(v66 + 40);
        *(a1 + 48) = *(v66 + 24);
        *(a1 + 64) = v80;
        *(v66 + 40) = v79;
        *(v66 + 24) = v78;
        if (sub_19B50C530(a3, v10, (v66 + 24)))
        {
          v81 = *(v66 + 24);
          v199 = *(v66 + 40);
          v198 = v81;
          v82 = *v10;
          *(v66 + 40) = *(v10 + 16);
          *(v66 + 24) = v82;
          v69 = v198;
          v70 = v199;
LABEL_47:
          *(v10 + 16) = v70;
          *v10 = v69;
        }
      }

      else if (v68)
      {
        v72 = *(v66 + 24);
        v199 = *(v66 + 40);
        v198 = v72;
        v73 = *v10;
        *(v66 + 40) = *(v10 + 16);
        *(v66 + 24) = v73;
        v74 = v198;
        *(v10 + 16) = v199;
        *v10 = v74;
        if (sub_19B50C530(a3, (v66 + 24), (a1 + 48)))
        {
          v198 = *(a1 + 48);
          v75 = v198;
          v199 = *(a1 + 64);
          v76 = v199;
          v77 = *(v66 + 40);
          *(a1 + 48) = *(v66 + 24);
          *(a1 + 64) = v77;
          *(v66 + 40) = v76;
          *(v66 + 24) = v75;
        }
      }

      v83 = sub_19B50C530(a3, v15, v42);
      v84 = sub_19B50C530(a3, (v66 + 24), v15);
      if (v83)
      {
        if (v84)
        {
          v85 = *v42;
          v199 = *(v42 + 16);
          v198 = v85;
          *v42 = *(v66 + 24);
          *(v42 + 16) = *(v66 + 40);
          goto LABEL_56;
        }

        v90 = *v42;
        v199 = *(v42 + 16);
        v198 = v90;
        *v42 = *v15;
        *(v42 + 16) = *(v15 + 16);
        v91 = v198;
        *(v15 + 16) = v199;
        *v15 = v91;
        if (sub_19B50C530(a3, (v66 + 24), v15))
        {
          v92 = *v15;
          v199 = *(v15 + 16);
          v198 = v92;
          *v15 = *(v66 + 24);
          *(v15 + 16) = *(v66 + 40);
LABEL_56:
          v93 = v198;
          *(v66 + 40) = v199;
          *(v66 + 24) = v93;
        }
      }

      else if (v84)
      {
        v86 = *v15;
        v199 = *(v15 + 16);
        v198 = v86;
        *v15 = *(v66 + 24);
        *(v15 + 16) = *(v66 + 40);
        v87 = v198;
        *(v66 + 40) = v199;
        *(v66 + 24) = v87;
        if (sub_19B50C530(a3, v15, v42))
        {
          v88 = *v42;
          v199 = *(v42 + 16);
          v198 = v88;
          *v42 = *v15;
          *(v42 + 16) = *(v15 + 16);
          v89 = v198;
          *(v15 + 16) = v199;
          *v15 = v89;
        }
      }

      v94 = *a1;
      v199 = *(a1 + 16);
      v198 = v94;
      v95 = *v15;
      *(a1 + 16) = *(v15 + 16);
      *a1 = v95;
      v96 = v198;
      *(v15 + 16) = v199;
      *v15 = v96;
      goto LABEL_58;
    }

    v20 = sub_19B50C530(a3, a1, (a1 + 24 * v14));
    v21 = sub_19B50C530(a3, v9, a1);
    if ((v20 & 1) == 0)
    {
      if (v21)
      {
        v30 = *a1;
        v199 = *(a1 + 16);
        v198 = v30;
        v31 = *v9;
        *(a1 + 16) = *(v9 + 16);
        *a1 = v31;
        v32 = v198;
        *(v9 + 16) = v199;
        *v9 = v32;
        if (sub_19B50C530(a3, a1, (a1 + 24 * v14)))
        {
          v33 = *v15;
          v199 = *(v15 + 16);
          v198 = v33;
          v34 = *a1;
          *(v15 + 16) = *(a1 + 16);
          *v15 = v34;
          v35 = v198;
          *(a1 + 16) = v199;
          *a1 = v35;
        }
      }

      goto LABEL_58;
    }

    if (v21)
    {
      v22 = *v15;
      v199 = *(v15 + 16);
      v198 = v22;
      v23 = *v9;
      *(v15 + 16) = *(v9 + 16);
      *v15 = v23;
    }

    else
    {
      v54 = *v15;
      v199 = *(v15 + 16);
      v198 = v54;
      v55 = *a1;
      *(v15 + 16) = *(a1 + 16);
      *v15 = v55;
      v56 = v198;
      *(a1 + 16) = v199;
      *a1 = v56;
      if (!sub_19B50C530(a3, v9, a1))
      {
        goto LABEL_58;
      }

      v57 = *a1;
      v199 = *(a1 + 16);
      v198 = v57;
      v58 = *v9;
      *(a1 + 16) = *(v9 + 16);
      *a1 = v58;
    }

    v59 = v198;
    *(v9 + 16) = v199;
    *v9 = v59;
LABEL_58:
    --a4;
    if (a5 & 1) != 0 || (sub_19B50C530(a3, (a1 - 24), a1))
    {
      v97 = 0;
      v98 = *a1;
      v201 = *(a1 + 16);
      v200 = v98;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      do
      {
        v99 = sub_19B50C530(a3, (a1 + v97 + 24), &v200);
        v97 += 24;
      }

      while ((v99 & 1) != 0);
      v100 = a1 + v97;
      v101 = v196;
      if (v97 == 24)
      {
        v101 = v196;
        do
        {
          if (v100 >= v101)
          {
            break;
          }

          v101 -= 3;
        }

        while ((sub_19B50C530(a3, v101, &v200) & 1) == 0);
      }

      else
      {
        do
        {
          v101 -= 3;
        }

        while (!sub_19B50C530(a3, v101, &v200));
      }

      v11 = a1 + v97;
      if (v100 < v101)
      {
        v102 = v101;
        do
        {
          v103 = *v11;
          v199 = *(v11 + 16);
          v198 = v103;
          v104 = *v102;
          *(v11 + 16) = v102[2];
          *v11 = v104;
          v105 = v198;
          v102[2] = v199;
          *v102 = v105;
          do
          {
            v11 += 24;
          }

          while ((sub_19B50C530(a3, v11, &v200) & 1) != 0);
          do
          {
            v102 -= 3;
          }

          while (!sub_19B50C530(a3, v102, &v200));
        }

        while (v11 < v102);
      }

      v106 = (v11 - 24);
      if (v11 - 24 == a1)
      {
        if (*(v11 - 1) < 0)
        {
          operator delete(*v106);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v107 = *v106;
        *(a1 + 16) = *(v11 - 8);
        *a1 = v107;
        *(v11 - 1) = 0;
        *(v11 - 24) = 0;
      }

      v108 = v200;
      *(v11 - 8) = v201;
      *v106 = v108;
      if (v100 < v101)
      {
        goto LABEL_83;
      }

      v109 = sub_19B50C950(a1, v11 - 24, a3);
      if (sub_19B50C950(v11, v196, a3))
      {
        a2 = v11 - 24;
        if (!v109)
        {
          goto LABEL_2;
        }

        goto LABEL_198;
      }

      a2 = v196;
      if (!v109)
      {
LABEL_83:
        sub_19B50B280(a1, v11 - 24, a3, a4, a5 & 1);
        a5 = 0;
        a2 = v196;
      }
    }

    else
    {
      v110 = *a1;
      v201 = *(a1 + 16);
      v200 = v110;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      a2 = v196;
      if (sub_19B50C530(a3, &v200, v9))
      {
        v11 = a1;
        do
        {
          v11 += 24;
        }

        while ((sub_19B50C530(a3, &v200, v11) & 1) == 0);
      }

      else
      {
        v111 = (a1 + 24);
        do
        {
          v11 = v111;
          if (v111 >= v196)
          {
            break;
          }

          v112 = sub_19B50C530(a3, &v200, v111);
          v111 = (v11 + 24);
        }

        while (!v112);
      }

      v113 = v196;
      if (v11 < v196)
      {
        v113 = v196;
        do
        {
          v113 -= 24;
        }

        while ((sub_19B50C530(a3, &v200, v113) & 1) != 0);
      }

      while (v11 < v113)
      {
        v114 = *v11;
        v199 = *(v11 + 16);
        v198 = v114;
        v115 = *v113;
        *(v11 + 16) = *(v113 + 16);
        *v11 = v115;
        v116 = v198;
        *(v113 + 16) = v199;
        *v113 = v116;
        do
        {
          v11 += 24;
        }

        while (!sub_19B50C530(a3, &v200, v11));
        do
        {
          v113 -= 24;
        }

        while ((sub_19B50C530(a3, &v200, v113) & 1) != 0);
      }

      v117 = (v11 - 24);
      if (v11 - 24 == a1)
      {
        if (*(v11 - 1) < 0)
        {
          operator delete(*v117);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v118 = *v117;
        *(a1 + 16) = *(v11 - 8);
        *a1 = v118;
        *(v11 - 1) = 0;
        *(v11 - 24) = 0;
      }

      a5 = 0;
      v119 = v200;
      *(v11 - 8) = v201;
      *v117 = v119;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      sub_19B50C770(v11, (v11 + 24), (v11 + 48), v9, a3);
      goto LABEL_198;
    }

    if (v13 == 5)
    {
      sub_19B50C770(v11, (v11 + 24), (v11 + 48), (v11 + 72), a3);
      if (sub_19B50C530(a3, v9, (v11 + 72)))
      {
        v198 = *(v11 + 72);
        v121 = v198;
        v199 = *(v11 + 88);
        v122 = v199;
        v123 = *(v9 + 16);
        *(v11 + 72) = *v9;
        *(v11 + 88) = v123;
        *(v9 + 16) = v122;
        *v9 = v121;
        if (sub_19B50C530(a3, (v11 + 72), (v11 + 48)))
        {
          v124 = *(v11 + 64);
          v125 = *(v11 + 48);
          *(v11 + 48) = *(v11 + 72);
          *(v11 + 64) = *(v11 + 88);
          *(v11 + 72) = v125;
          *(v11 + 88) = v124;
          if (sub_19B50C530(a3, (v11 + 48), (v11 + 24)))
          {
            v126 = *(v11 + 40);
            v127 = *(v11 + 24);
            *(v11 + 24) = *(v11 + 48);
            *(v11 + 40) = *(v11 + 64);
            *(v11 + 48) = v127;
            *(v11 + 64) = v126;
            v128 = sub_19B50C530(a3, (v11 + 24), v11);
LABEL_181:
            if (v128)
            {
              v180 = *v11;
              v199 = *(v11 + 16);
              v198 = v180;
              *v11 = *(v11 + 24);
              *(v11 + 16) = *(v11 + 40);
              *(v11 + 24) = v198;
              *(v11 + 40) = v199;
            }
          }
        }
      }

      goto LABEL_198;
    }

    goto LABEL_10;
  }

  v129 = sub_19B50C530(a3, (v11 + 24), v11);
  v130 = sub_19B50C530(a3, v9, (v11 + 24));
  if (v129)
  {
    if (v130)
    {
      goto LABEL_117;
    }

    v188 = *v11;
    v199 = *(v11 + 16);
    v198 = v188;
    *v11 = *(v11 + 24);
    *(v11 + 16) = *(v11 + 40);
    *(v11 + 24) = v198;
    *(v11 + 40) = v199;
    if (!sub_19B50C530(a3, v9, (v11 + 24)))
    {
      goto LABEL_198;
    }

    v133 = *(v11 + 24);
    v198 = v133;
    v134 = *(v11 + 40);
    v199 = v134;
    v189 = *(v9 + 16);
    *(v11 + 24) = *v9;
    *(v11 + 40) = v189;
LABEL_118:
    *(v9 + 16) = v134;
    *v9 = v133;
    goto LABEL_198;
  }

  if (v130)
  {
    v198 = *(v11 + 24);
    v177 = v198;
    v199 = *(v11 + 40);
    v178 = v199;
    v179 = *(v9 + 16);
    *(v11 + 24) = *v9;
    *(v11 + 40) = v179;
    *(v9 + 16) = v178;
    *v9 = v177;
    v128 = sub_19B50C530(a3, (v11 + 24), v11);
    goto LABEL_181;
  }

LABEL_198:
  v190 = *MEMORY[0x1E69E9840];
}

void sub_19B50C4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B50C530(uint64_t **a1, void **a2, void **a3)
{
  v6 = *a1;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  v7 = *v6;
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 < 0)
  {
    v8 = a2[1];
  }

  sub_19B50CE80(v9, v8 + v9, __p, v7, 0);
  if ((__p[1] - __p[0]) == 48)
  {
    if (*(__p[0] + 40) == 1)
    {
      sub_19B50FE08(__dst, *(__p[0] + 3), *(__p[0] + 4), *(__p[0] + 4) - *(__p[0] + 3));
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v18 = 0;
    }
  }

  else if (*(a2 + 23) < 0)
  {
    sub_19B4C5138(__dst, *a2, a2[1]);
  }

  else
  {
    *__dst = *a2;
    v18 = a2[2];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v10 = *a1;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 < 0)
  {
    v11 = a3[1];
  }

  sub_19B50CE80(v12, v11 + v12, __p, *v10, 0);
  if ((__p[1] - __p[0]) == 48)
  {
    if (*(__p[0] + 40) == 1)
    {
      sub_19B50FE08(v15, *(__p[0] + 3), *(__p[0] + 4), *(__p[0] + 4) - *(__p[0] + 3));
    }

    else
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
    }
  }

  else if (*(a3 + 23) < 0)
  {
    sub_19B4C5138(v15, *a3, a3[1]);
  }

  else
  {
    *v15 = *a3;
    v16 = a3[2];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v13 = sub_19B50CDE8(__dst, v15);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  return (v13 >> 7) & 1;
}

void sub_19B50C730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_19B50C770(void **a1, void **a2, void **a3, __int128 *a4, uint64_t **a5)
{
  v10 = sub_19B50C530(a5, a2, a1);
  v11 = sub_19B50C530(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (sub_19B50C530(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (sub_19B50C530(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (sub_19B50C530(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (sub_19B50C530(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (sub_19B50C530(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

BOOL sub_19B50C950(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_19B50C530(a3, (a1 + 24), a1);
        v17 = sub_19B50C530(a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_19B50C530(a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_19B50C770(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_19B50C770(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!sub_19B50C530(a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_19B50C530(a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_19B50C530(a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_19B50C530(a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_19B50C530(a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_19B50C530(a3, (a1 + 24), a1);
  v23 = sub_19B50C530(a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_19B50C530(a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_19B50C530(a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_19B50C530(a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = sub_19B50C530(a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while ((v45 & 1) != 0);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

void sub_19B50CDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B50CDE8(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_19B50CE20(a1, v2, v5, v6);
}

uint64_t sub_19B50CE20(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t sub_19B50CE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = sub_19B50CF7C(a4, a1, a2, __p, a5 | 0x1040u);
  sub_19B50D148(a3, a1, a2, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_19B50CF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B50CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_19B50D2CC(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_19B50D340(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_19B50D360(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_19B50D340(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_19B50D360(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_19B50D360(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_19B50D340(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_19B50D148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_19B50FC50(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

char *sub_19B50D2CC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_19B50D360(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_19B50D340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_19B50D4C4(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_19B50DDBC(a1, a2, a3, a4, a5, a6);
  }

  return sub_19B50D870(a1, a2, a3, a4, a5, a6);
}

char *sub_19B50D360(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_19B50EB7C(a1, v9);
    }

    sub_19B5BE690();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

uint64_t sub_19B50D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_19B50E29C(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_19B50E378((v13 - 64), *(a1 + 28), &v40);
  sub_19B50E3B4((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_19B50E3E4();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_19B50EAFC(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_19B50EBC8(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_19B50E29C(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_19B50E43C();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_19B50E718((v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_19B50EC78(v36);
  return v24;
}

void sub_19B50D818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_19B50E334(&a11);
  a11 = v16 - 112;
  sub_19B50EC78(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_19B50D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  sub_19B50ECFC(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_19B50E3B4((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      sub_19B50E3E4();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_19B50EE88(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        sub_19B50EE00(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_19B50E718(v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_19B50EE00(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      sub_19B50EAFC(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      sub_19B50EBC8(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      sub_19B50ECFC(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_19B50E43C();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  sub_19B50F840(&v59);
  return v49;
}

uint64_t sub_19B50DDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *v50 = 0;
  memset(&v50[8], 0, 32);
  v51 = 0u;
  memset(v52, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v48 = a3;
  *(&v48 + 1) = a3;
  v49 = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  sub_19B50E29C(&v53, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v54;
  *(v54 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_19B50E378(v13 - 8, *(a1 + 28), &v48);
  sub_19B50E3B4(v54 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v54;
  *(v54 - 2) = v6;
  v18 = a3 - a2;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      sub_19B50E3E4();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          sub_19B50EAFC(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          sub_19B50EBC8(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          sub_19B50E29C(&v53, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_19B50E43C();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v54 - 12;
        sub_19B50E718(v54 - 12);
        v54 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v17 - 11);
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v50 = *v22;
        *&v50[16] = v27;
        if (v50 != v22)
        {
          sub_19B50F9A0(&v50[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          sub_19B50FB2C(v52, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v52[3] + 5) = *(v17 - 11);
        v52[3] = v28;
        v14 = v26;
      }

      v29 = v54;
      if (v14 == v18)
      {
        v30 = v53;
        while (v29 != v30)
        {
          v29 -= 12;
          sub_19B50E718(v29);
        }

        v54 = v30;
        v15 = 1;
        v14 = a3 - a2;
      }

      else
      {
        v34 = v54 - 12;
        sub_19B50E718(v54 - 12);
        v54 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v54;
  }

  while (v53 != v54);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v51 != *&v50[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *&v50[32]) >> 3);
    v37 = (*&v50[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (*&v50[32])
  {
    *&v51 = *&v50[32];
    operator delete(*&v50[32]);
  }

  *v50 = &v53;
  sub_19B50EC78(v50);
  return v41;
}

void sub_19B50E23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_19B50E334(&a11);
  sub_19B50E334(&a27);
  a27 = v27 - 120;
  sub_19B50EC78(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_19B50E29C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_19B50E494(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_19B50E334(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_19B50E378(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_19B50E7C0(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_19B50E3B4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_19B50E9A0(a1, a2 - v2);
  }
}

void sub_19B50E3E4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_19B50E43C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t sub_19B50E494(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_19B5BE690();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_19B50E60C(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  sub_19B50E664(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_19B50E770(&v16);
  return v15;
}

void sub_19B50E5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B50E770(va);
  _Unwind_Resume(a1);
}

void sub_19B50E60C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B4C5080();
}

void sub_19B50E664(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_19B50E718(v5);
      v5 += 12;
    }
  }
}

void sub_19B50E718(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t sub_19B50E770(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_19B50E718((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B50E7C0(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B5BE690();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_19B50E948(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 24 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 24 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 24 * v7 + 24 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_19B50E948(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B4C5080();
}

void sub_19B50E9A0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_19B5BE690();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_19B50EAB4(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_19B50EAB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_19B4C5080();
}

uint64_t sub_19B50EAFC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B50EB7C(result, a4);
  }

  return result;
}

void sub_19B50EB60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B50EB7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_19B50E948(a1, a2);
  }

  sub_19B5BE690();
}

uint64_t sub_19B50EBC8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B50EC3C(result, a4);
  }

  return result;
}

void sub_19B50EC20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B50EC3C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_19B50EAB4(a1, a2);
  }

  sub_19B5BE690();
}

void sub_19B50EC78(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        sub_19B50E718(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 sub_19B50ECFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_19B50EF7C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_19B50EE00(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_19B50E718((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_19B50F578(a1, 1);
}

int64x2_t sub_19B50EE88(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_19B50F5F0(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_19B7B4DC0);
  a1[2] = result;
  return result;
}

void *sub_19B50EF7C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_19B4C52B0(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_19B50F150(a1, &v10);
}

void sub_19B50F104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_19B50F150(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_19B4C52B0(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_19B50F258(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_19B4C52B0(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_19B50F364(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_19B4C52B0(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_19B50F46C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_19B4C52B0(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_19B50F578(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **sub_19B50F5F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_19B4C52B0(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_19B50F258(a1, v11);
}

void sub_19B50F7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B50F840(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_19B50E718(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_19B42AD10(a1);
}

_BYTE *sub_19B50F9A0(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_19B50EB7C(a1, v11);
    }

    sub_19B5BE690();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_19B50FB2C(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B50EC3C(a1, v10);
    }

    sub_19B5BE690();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_19B50FC50(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_19B50FC8C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_19B50FC8C(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B5BE690();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_19B50E948(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

_BYTE *sub_19B50FE08(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B4C51DC();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_19B50FEB8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B50FF0C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B50FF0C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_19B50FF5C(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B4C51DC();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_19B50FFE8(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x19EAE7660](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_19B5100A4(a1);
  return a1;
}

void sub_19B51007C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_19B5100A4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_19B5101AC(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19EAE7560](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_19B510354(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x19EAE7570](v13);
  return a1;
}

void sub_19B5102EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x19EAE7570](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x19B5102CCLL);
}

uint64_t sub_19B510354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_19B5104DC(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_19B5104C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B5104DC(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B4C51DC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_19B51058C(const std::locale *a1, const char *a2, int a3)
{
  v5 = sub_19B510624(a1);
  LODWORD(v5[3].__locale_) = a3;
  *(&v5[3].__locale_ + 4) = 0u;
  *(&v5[5].__locale_ + 4) = 0u;
  HIDWORD(v5[7].__locale_) = 0;
  strlen(a2);
  sub_19B510684();
}

void sub_19B510604(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_19B41FFEC(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

const std::locale *sub_19B510624(const std::locale *a1)
{
  v2 = MEMORY[0x19EAE7660]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x1E69E5340]);
  return a1;
}

void sub_19B510878()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_19B510918(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_19B5113C4(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_19B5113C4(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_19B5112C4();
  }

  return v7;
}

unsigned __int8 *sub_19B510A88(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_19B511BC8();
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_19B5174CC(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_19B511C4C();
      }
    }

    if (v3 != a3)
    {
      sub_19B517474();
    }
  }

  return v3;
}

unsigned __int8 *sub_19B510B3C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_19B517B84(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_19B517474();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_19B517B84(a1, result + 1, a3) != result + 1)
    {
      sub_19B5112C4();
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_19B510BDC(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_19B510A88(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_19B510A88(a1, v8, v10);
      sub_19B5112C4();
    }

    operator new();
  }

  return v8;
}

unsigned __int8 *sub_19B510D4C(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_19B510B3C(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_19B510B3C(a1, v8, v10);
      sub_19B5112C4();
    }

    operator new();
  }

  return v8;
}

void sub_19B510EBC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_19B510FA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B7A3834(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B510FC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B510FFC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_19B51102C(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E349B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_19B51106C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_19B5110C0(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B51112C(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5111B8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_19B5111CC(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B511238(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

unsigned __int8 *sub_19B5113C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_19B51146C(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_19B51167C(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_19B5118C4(a1, v9, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_19B51146C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v14 = a2[1];
          if (v14 == 66 || v14 == 98)
          {
            sub_19B511CD0();
          }
        }
      }

      else if (v6 == 94)
      {
        sub_19B511BC8();
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_19B511C4C();
      }

      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            sub_19B510624(v16);
            v17 = 0u;
            v19 = 0;
            v18 = 0u;
            LODWORD(v17) = *(a1 + 24);
            sub_19B510684(v16, a2 + 3, a3);
            v15 = *(a1 + 28);
            sub_19B511D64();
          }

          if (v11 == 61)
          {
            sub_19B510624(v16);
            v17 = 0u;
            v19 = 0;
            v18 = 0u;
            LODWORD(v17) = *(a1 + 24);
            sub_19B510684(v16, a2 + 3, a3);
            v12 = *(a1 + 28);
            sub_19B511D64();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_19B51167C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      sub_19B512990();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        v8 = (a1 + 36);
        ++*(a1 + 36);
        v9 = sub_19B510918(a1, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      sub_19B512888(a1);
      v11 = *(a1 + 28);
      v8 = (a1 + 36);
      ++*(a1 + 36);
      v12 = sub_19B510918(a1, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          sub_19B512910(a1);
LABEL_25:
          --*v8;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    sub_19B511E04();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return sub_19B51276C(a1, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return sub_19B5129E8(a1, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return sub_19B5126C4(a1, a2, a3);
}

unsigned __int8 *sub_19B5118C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = *(a1 + 24) & 0x1F0;
  v6 = *a2;
  if (v6 > 0x3E)
  {
    if (v6 == 63)
    {
      v14 = a2 + 1;
      if (v5)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == a3;
      }

      if (!v15)
      {
        *v14;
      }
    }

    else
    {
      if (v6 != 123)
      {
        return a2;
      }

      v8 = a2 + 1;
      v9 = sub_19B517008(a1, a2 + 1, a3, &v21);
      if (v9 == v8)
      {
        goto LABEL_47;
      }

      if (v9 == a3)
      {
        goto LABEL_48;
      }

      v10 = *v9;
      if (v10 != 44)
      {
        if (v10 == 125)
        {
          v11 = v9 + 1;
          if (!v5 && v11 != a3)
          {
            *v11;
          }

          goto LABEL_37;
        }

LABEL_47:
        sub_19B5170A4();
      }

      v16 = v9 + 1;
      if (v9 + 1 == a3)
      {
        goto LABEL_47;
      }

      if (*v16 == 125)
      {
        v17 = v9 + 2;
        if (!v5 && v17 != a3)
        {
          *v17;
        }

        goto LABEL_37;
      }

      v20 = -1;
      v19 = sub_19B517008(a1, v16, a3, &v20);
      if (v19 == v16 || v19 == a3 || *v19 != 125)
      {
LABEL_48:
        sub_19B5170FC();
      }

      if (v20 < v21)
      {
        goto LABEL_47;
      }

      if (!v5 && v19 + 1 != a3)
      {
        v13 = v19[1] == 63;
      }
    }

LABEL_37:
    sub_19B516E78();
  }

  if (v6 == 42)
  {
    v12 = a2 + 1;
    if (v5)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == a3;
    }

    if (!v13)
    {
      *v12;
    }

    goto LABEL_37;
  }

  if (v6 == 43)
  {
    v7 = a2 + 1;
    if (!v5 && v7 != a3)
    {
      *v7;
    }

    goto LABEL_37;
  }

  return a2;
}

void sub_19B511E04()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *sub_19B511E5C(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B511EC8(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B511F54(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_19B511FBC(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B512028(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5120B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_19B512108(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AF58;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_19B512194(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AF58;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B512240(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_19B512354(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_1F0E2B018;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_19B5123E4(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2B018;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_19B41FFEC(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_19B512480(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2B018;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_19B41FFEC(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x19EAE76F0);
}

void sub_19B51253C(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v20 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21 = 0;
  *&v22 = v5;
  *(&v22 + 1) = v5;
  v23 = 0;
  sub_19B50D360(&__p, v4, &v22);
  v24 = v6;
  v25 = v6;
  v26 = 0;
  v27 = v22;
  v28 = v23;
  v30 = v6;
  v29 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_19B50D4C4(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
  }

  while (v11 > v14++);
LABEL_11:
  v20 = v10;
  operator delete(v10);
}

void sub_19B5126A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_19B5126C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_19B512B50();
    }

    v7 = sub_19B512BA8(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_19B512C60(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = sub_19B512D30(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_19B51276C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_19B513F18();
    }

    sub_19B514FD4();
  }

  return a2;
}

uint64_t sub_19B512888(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B512910(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_19B512990()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_19B5129E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_19B51312C(a1);
    }
  }

  return a2;
}

void *sub_19B512A58(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B512AC4(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

void sub_19B512B50()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_19B512BA8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      sub_19B51312C(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        v5 = v7 + 10 * v5 - 48;
        ++v6;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_19B5132C4(a1);
        }
      }

LABEL_13:
      sub_19B51326C();
    }
  }

  return a2;
}

unsigned __int8 *sub_19B512C60(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x63)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_19B513F18();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_19B513F18();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_19B513F18();
  }

  return a2;
}

unsigned __int8 *sub_19B512D30(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_72;
        }

        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        v10 = -48;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          v9 |= 0x20u;
          if ((v9 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v10 = -87;
        }

        v6 = 16 * (v10 + v9);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v11 = v4[1];
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v12 = -87;
        }

        if (v4 + 2 != a3)
        {
          v13 = v4[2];
          v14 = -48;
          if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v13 |= 0x20u;
          if ((v13 - 97) < 6)
          {
            v14 = -87;
LABEL_55:
            v15 = v14 + v13 + 16 * (v12 + v6 + v11);
            if (!a4)
            {
              sub_19B51312C(a1);
            }

            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v15;
            *(a4 + 1) = 0;
            v4 += 3;
            return v4;
          }
        }

LABEL_97:
        sub_19B512B50();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_72:
        if ((v5 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
        {
          goto LABEL_97;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return a2 + 1;
        }

LABEL_77:
        sub_19B51312C(a1);
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 11;
    }

LABEL_90:
    *a4 = v16;
    return a2 + 1;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_72;
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 10;
    }

    goto LABEL_90;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    goto LABEL_77;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  if (!a4)
  {
    sub_19B51312C(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7 & 0x1F;
  *(a4 + 1) = 0;
  return a2 + 2;
}

void sub_19B51312C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_19B51326C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_19B5132C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_19B5133F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F0E2AE38;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_19B513480(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = &unk_1F0E2AEF8;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_19B7A3834(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_19B5134C0(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AE38;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_19B51354C(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AE38;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5135F8(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_19B51368C(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2ADA8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_19B513718(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2ADA8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5137C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_19B51380C(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B513878(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B513904(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_19B51394C(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AF28;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_19B5139D8(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AF28;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B513A84(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_19B513BA0(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AE68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_19B513C2C(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AE68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B513CD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_19B513D64(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B513DD0(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

unsigned int *sub_19B513E5C(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_19B51326C();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_19B513FAC(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_19B514EE4(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_19B514EE4(a1 + 40, &v7);
}

uint64_t sub_19B514048(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_1F0E2AE08;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_19B514188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_19B50FEB8(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_19B514968(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_19B514224(std::locale *a1)
{
  sub_19B514A88(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B51425C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v18 = 0;
    v19 = *(a1 + 168);
    goto LABEL_54;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_31;
  }

  v72 = *v4;
  v6 = v4[1];
  v73 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v72 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v73 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_19B514C28(a1 + 16, &v72, &v74, &__p);
  if ((v71 & 0x80000000) == 0)
  {
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_31:
    v19 = 0;
    v18 = 1;
    goto LABEL_32;
  }

  v20 = v70;
  operator delete(__p);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v72 != *(v10 - 1) || v73 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_148;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_19B514B70(a1 + 16, &v72, &v74);
    v12 = *(a1 + 88);
    if (*(a1 + 96) == v12)
    {
LABEL_24:
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (sub_19B50CDE8((v12 + v13), &__p) > 0 || sub_19B50CDE8(&__p, (*(a1 + 88) + v13 + 24)) >= 1)
      {
        ++v14;
        v12 = *(a1 + 88);
        v13 += 48;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v12) >> 4))
        {
          goto LABEL_24;
        }
      }

      v16 = 5;
      v15 = 1;
    }

    if (v71 < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v17 = 1;
      goto LABEL_128;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v17 = 0;
    goto LABEL_130;
  }

  p_p = &__p;
  sub_19B514DD4(a1 + 16, &v72, &v74, &__p);
  v36 = *(a1 + 136);
  v37 = v71;
  v38 = *(a1 + 144) - v36;
  if (v38)
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    if (v71 >= 0)
    {
      v40 = v71;
    }

    else
    {
      v40 = v70;
    }

    if (v71 < 0)
    {
      p_p = __p;
    }

    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    }

    v42 = 1;
    v43 = 1;
    while (1)
    {
      v44 = *(v36 + 23);
      v45 = v44;
      if ((v44 & 0x80u) != 0)
      {
        v44 = *(v36 + 8);
      }

      if (v40 == v44)
      {
        v46 = v45 >= 0 ? v36 : *v36;
        if (!memcmp(p_p, v46, v40))
        {
          break;
        }
      }

      v43 = v42++ < v39;
      v36 += 24;
      if (!--v41)
      {
        goto LABEL_125;
      }
    }

    v17 = 1;
    v16 = 5;
    if (v37 < 0)
    {
LABEL_126:
      operator delete(__p);
    }
  }

  else
  {
    v43 = 0;
LABEL_125:
    v16 = 0;
    v17 = 0;
    if (v37 < 0)
    {
      goto LABEL_126;
    }
  }

  if (!v43)
  {
LABEL_130:
    if (v72 < 0)
    {
      v66 = *(a1 + 164);
    }

    else
    {
      v63 = *(a1 + 160);
      v64 = *(*(a1 + 24) + 16);
      v65 = *(v64 + 4 * v72);
      if (((v65 & v63) != 0 || v72 == 95 && (v63 & 0x80) != 0) && (v73 & 0x8000000000000000) == 0 && ((*(v64 + 4 * v73) & v63) != 0 || (v63 & 0x80) != 0 && v73 == 95))
      {
        goto LABEL_148;
      }

      v66 = *(a1 + 164);
      if ((v65 & v66) != 0 || v72 == 95 && (v66 & 0x80) != 0)
      {
LABEL_147:
        v19 = v17;
LABEL_149:
        v18 = 2;
        goto LABEL_54;
      }
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v73) & v66) == 0)
      {
        v19 = 1;
        if (v73 != 95 || (v66 & 0x80) == 0)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_147;
    }

LABEL_148:
    v19 = 1;
    goto LABEL_149;
  }

LABEL_128:
  v18 = 2;
  v19 = v17;
  if (v16)
  {
    goto LABEL_54;
  }

LABEL_32:
  v21 = **(a2 + 16);
  v72 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v21) = (*(**(a1 + 24) + 40))(*(a1 + 24), v21);
    v72 = v21;
  }

  v22 = *(a1 + 40);
  v23 = *(a1 + 48) - v22;
  if (v23)
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v24 = *v22++;
      if (v24 == v21)
      {
        goto LABEL_53;
      }
    }

    while (--v23);
  }

  v25 = *(a1 + 164);
  if (v25 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v21 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v21) & v25) == 0)
    {
      v26 = (v21 == 95) & (v25 >> 7);
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    v27 = *(a1 + 72);
    v28 = memchr(*(a1 + 64), v21, v27 - *(a1 + 64));
    v29 = !v28 || v28 == v27;
    v30 = !v29;
    if ((v26 & 1) == 0 && !v30)
    {
LABEL_53:
      v19 = 1;
      goto LABEL_54;
    }
  }

  v33 = *(a1 + 88);
  v34 = *(a1 + 96);
  if (v33 == v34)
  {
    goto LABEL_91;
  }

  if (*(a1 + 170) == 1)
  {
    sub_19B514B70(a1 + 16, &v72, &v73);
    v33 = *(a1 + 88);
    v34 = *(a1 + 96);
  }

  else
  {
    v71 = 1;
    LOWORD(__p) = v21;
  }

  if (v34 == v33)
  {
LABEL_87:
    v49 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    while (sub_19B50CDE8((v33 + v47), &__p) > 0 || sub_19B50CDE8(&__p, (*(a1 + 88) + v47 + 24)) >= 1)
    {
      ++v48;
      v33 = *(a1 + 88);
      v47 += 48;
      if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v33) >> 4))
      {
        goto LABEL_87;
      }
    }

    v49 = 1;
    v19 = 1;
  }

  if (v71 < 0)
  {
    operator delete(__p);
  }

  if ((v49 & 1) == 0)
  {
LABEL_91:
    if (*(a1 + 136) == *(a1 + 144))
    {
LABEL_119:
      v61 = *(a1 + 160);
      if ((v72 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v72) & v61) != 0)
      {
        goto LABEL_53;
      }

      v62 = (v61 >> 7) & 1;
      if (v72 != 95)
      {
        LOBYTE(v62) = 0;
      }

      v19 |= v62;
      goto LABEL_54;
    }

    v50 = &__p;
    sub_19B514DD4(a1 + 16, &v72, &v73, &__p);
    v51 = *(a1 + 136);
    v52 = *(a1 + 144) - v51;
    if (v52)
    {
      v67 = v71;
      v68 = v18;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      if (v71 >= 0)
      {
        v54 = v71;
      }

      else
      {
        v54 = v70;
      }

      if (v71 < 0)
      {
        v50 = __p;
      }

      if (v53 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      }

      v56 = 1;
      v57 = 1;
      while (1)
      {
        v58 = *(v51 + 23);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = *(v51 + 8);
        }

        if (v54 == v58)
        {
          v60 = v59 >= 0 ? v51 : *v51;
          if (!memcmp(v50, v60, v54))
          {
            break;
          }
        }

        v57 = v56++ < v53;
        v51 += 24;
        if (!--v55)
        {
          goto LABEL_116;
        }
      }

      v19 = 1;
LABEL_116:
      v18 = v68;
      if ((v67 & 0x80) == 0)
      {
LABEL_118:
        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v57 = 0;
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p);
    goto LABEL_118;
  }

LABEL_54:
  if (*(a1 + 168) == (v19 & 1))
  {
    v31 = 0;
    v32 = -993;
  }

  else
  {
    *(a2 + 16) += v18;
    v31 = *(a1 + 8);
    v32 = -995;
  }

  *a2 = v32;
  *(a2 + 80) = v31;
}