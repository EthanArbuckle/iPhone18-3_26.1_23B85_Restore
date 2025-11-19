uint64_t sub_19B5AA5FC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 12);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 24);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 24) & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 20);
  result = PB::Writer::write(this);
  v4 = *(v3 + 24);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 24);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v9 = *(v3 + 21);

  return PB::Writer::write(this);
}

uint64_t sub_19B5AA6C0(uint64_t result)
{
  *result = &unk_1F0E30378;
  *(result + 28) = 0;
  return result;
}

void sub_19B5AA6E8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AA720(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "x", *(a1 + 16));
  v5 = *(a1 + 28);
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
  PB::TextFormatter::format(this, "y", *(a1 + 20));
  if ((*(a1 + 28) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "z", *(a1 + 24));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AA7E4(uint64_t a1, PB::Reader *this)
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
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_44;
          }

          *(a1 + 20) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
LABEL_43:
          *(this + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
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
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 16) = *(*this + v2);
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

uint64_t sub_19B5AAA74(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 20));
      if ((*(v3 + 28) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 28);
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
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5AAB1C(uint64_t result)
{
  *result = &unk_1F0E2D438;
  *(result + 64) = 0;
  return result;
}

void sub_19B5AAB44(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AAB7C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "cadence", *(a1 + 8));
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "swingAccelX", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "swingAccelXStandardized", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "swingAccelY", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "swingAccelZ", *(a1 + 48));
  if ((*(a1 + 64) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AACA0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_60;
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
        switch(v22)
        {
          case 1:
            *(a1 + 64) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_53:
              *(this + 24) = 1;
              goto LABEL_56;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_55;
          case 2:
            *(a1 + 64) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_55;
          case 3:
            *(a1 + 64) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 8)
        {
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 6)
        {
          *(a1 + 64) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 40) = *(*this + v2);
LABEL_55:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_56;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_56:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_60:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B5AAFF0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 64) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 64) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 32);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5AB0EC(uint64_t result)
{
  *result = &unk_1F0E2C168;
  *(result + 120) = 0;
  return result;
}

void sub_19B5AB114(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AB14C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 120);
  if (v5)
  {
    PB::TextFormatter::format(this, "centerOfMassPrefiltAccelX", *(a1 + 8));
    v5 = *(a1 + 120);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "centerOfMassPrefiltAccelY", *(a1 + 16));
  v5 = *(a1 + 120);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "centerOfMassPrefiltAccelZ", *(a1 + 24));
  v5 = *(a1 + 120);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "centripetalAccelX", *(a1 + 32));
  v5 = *(a1 + 120);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "centripetalAccelY", *(a1 + 40));
  v5 = *(a1 + 120);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "centripetalAccelZ", *(a1 + 48));
  v5 = *(a1 + 120);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "centripetalRotationRateX", *(a1 + 56));
  v5 = *(a1 + 120);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "centripetalRotationRateY", *(a1 + 64));
  v5 = *(a1 + 120);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "centripetalRotationRateZ", *(a1 + 72));
  v5 = *(a1 + 120);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "startTime", *(a1 + 80));
  v5 = *(a1 + 120);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "swingVelocityX", *(a1 + 88));
  v5 = *(a1 + 120);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "swingVelocityY", *(a1 + 96));
  v5 = *(a1 + 120);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(this, "swingVelocityZ", *(a1 + 104));
  if ((*(a1 + 120) & 0x2000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 112));
  }

LABEL_16:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AB350(uint64_t a1, PB::Reader *this)
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
        goto LABEL_73;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 120) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_68;
        case 2u:
          *(a1 + 120) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_68;
        case 3u:
          *(a1 + 120) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_68;
        case 4u:
          *(a1 + 120) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_68;
        case 5u:
          *(a1 + 120) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_68;
        case 6u:
          *(a1 + 120) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_68;
        case 7u:
          *(a1 + 120) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_68;
        case 8u:
          *(a1 + 120) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_68;
        case 9u:
          *(a1 + 120) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_68;
        case 0xAu:
          *(a1 + 120) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_68;
        case 0xBu:
          *(a1 + 120) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_68;
        case 0xCu:
          *(a1 + 120) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_68;
        case 0xDu:
          *(a1 + 120) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_68;
        case 0xEu:
          *(a1 + 120) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_64:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 24) = *(*this + v2);
LABEL_68:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_69;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_69:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_73;
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

LABEL_73:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B5AB80C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 120);
  if ((v4 & 0x200) != 0)
  {
    result = PB::Writer::write(this, *(result + 80));
    v4 = *(v3 + 120);
    if ((v4 & 0x2000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(result + 120) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 120);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 120);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 120);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 120);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 120);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 120);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 120);
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
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 120);
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
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 120);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 120);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 120) & 4) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 120);
  if ((v4 & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_29:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

void *sub_19B5AB9CC(void *result)
{
  *result = &unk_1F0E2E740;
  result[28] = 0;
  return result;
}

void sub_19B5AB9F4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5ABA2C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 224);
  if (v5)
  {
    PB::TextFormatter::format(this, "emptyField0", *(a1 + 8));
    v5 = *(a1 + 224);
    if ((v5 & 0x20000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 216);
  PB::TextFormatter::format(this, "emptyField1");
  v5 = *(a1 + 224);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  v7 = *(a1 + 192);
  PB::TextFormatter::format(this, "emptyField2");
  v5 = *(a1 + 224);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "groundContactTime", *(a1 + 16));
  v5 = *(a1 + 224);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "groundContactTimeCadence", *(a1 + 24));
  v5 = *(a1 + 224);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "groundContactTimeGrade", *(a1 + 32));
  v5 = *(a1 + 224);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(a1 + 196);
  PB::TextFormatter::format(this, "groundContactTimeGradeSource");
  v5 = *(a1 + 224);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a1 + 200);
  PB::TextFormatter::format(this, "groundContactTimeGradeType");
  v5 = *(a1 + 224);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = *(a1 + 217);
  PB::TextFormatter::format(this, "groundContactTimeIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "groundContactTimePace", *(a1 + 40));
  v5 = *(a1 + 224);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v11 = *(a1 + 204);
  PB::TextFormatter::format(this, "groundContactTimeReportingStatus");
  v5 = *(a1 + 224);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "groundContactTimeUnsmoothed", *(a1 + 48));
  v5 = *(a1 + 224);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "groundContactTimeWindowEndTime", *(a1 + 56));
  v5 = *(a1 + 224);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(a1 + 218);
  PB::TextFormatter::format(this, "isFlat");
  v5 = *(a1 + 224);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(a1 + 219);
  PB::TextFormatter::format(this, "isFormBasedStrideLength");
  v5 = *(a1 + 224);
  if ((v5 & 0x80) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "strideLength", *(a1 + 64));
  v5 = *(a1 + 224);
  if ((v5 & 0x100) == 0)
  {
LABEL_18:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "strideLengthCadence", *(a1 + 72));
  v5 = *(a1 + 224);
  if ((v5 & 0x200) == 0)
  {
LABEL_19:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "strideLengthGrade", *(a1 + 80));
  v5 = *(a1 + 224);
  if ((v5 & 0x400) == 0)
  {
LABEL_20:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "strideLengthGradeType", *(a1 + 88));
  v5 = *(a1 + 224);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v14 = *(a1 + 220);
  PB::TextFormatter::format(this, "strideLengthIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "strideLengthPace", *(a1 + 96));
  v5 = *(a1 + 224);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = *(a1 + 208);
  PB::TextFormatter::format(this, "strideLengthReportingStatus");
  v5 = *(a1 + 224);
  if ((v5 & 0x1000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "strideLengthUncalibrated", *(a1 + 104));
  v5 = *(a1 + 224);
  if ((v5 & 0x2000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "strideLengthUnsmoothed", *(a1 + 112));
  v5 = *(a1 + 224);
  if ((v5 & 0x4000) == 0)
  {
LABEL_26:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "strideLengthWindowEndTime", *(a1 + 120));
  v5 = *(a1 + 224);
  if ((v5 & 0x8000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 128));
  v5 = *(a1 + 224);
  if ((v5 & 0x10000) == 0)
  {
LABEL_28:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "verticalOscCadence", *(a1 + 136));
  v5 = *(a1 + 224);
  if ((v5 & 0x20000) == 0)
  {
LABEL_29:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "verticalOscPace", *(a1 + 144));
  v5 = *(a1 + 224);
  if ((v5 & 0x40000) == 0)
  {
LABEL_30:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "verticalOscWindowEndTime", *(a1 + 152));
  v5 = *(a1 + 224);
  if ((v5 & 0x80000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "verticalOscillation", *(a1 + 160));
  v5 = *(a1 + 224);
  if ((v5 & 0x100000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "verticalOscillationGrade", *(a1 + 168));
  v5 = *(a1 + 224);
  if ((v5 & 0x200000) == 0)
  {
LABEL_33:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "verticalOscillationGradeType", *(a1 + 176));
  v5 = *(a1 + 224);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v16 = *(a1 + 221);
  PB::TextFormatter::format(this, "verticalOscillationIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_73:
  v17 = *(a1 + 212);
  PB::TextFormatter::format(this, "verticalOscillationReportingStatus");
  if ((*(a1 + 224) & 0x400000) != 0)
  {
LABEL_36:
    PB::TextFormatter::format(this, "verticalOscillationUnsmoothed", *(a1 + 184));
  }

LABEL_37:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5ABED0(uint64_t a1, PB::Reader *this)
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
        goto LABEL_244;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 224) |= 0x40uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_209;
        case 2u:
          *(a1 + 224) |= 0x80uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_209;
        case 3u:
          *(a1 + 224) |= 0x200000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v42 = *(*this + v2++);
            *(this + 1) = v2;
            v43 = v42 != 0;
          }

          *(a1 + 220) = v43;
          goto LABEL_210;
        case 4u:
          *(a1 + 224) |= 2uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_209;
        case 5u:
          *(a1 + 224) |= 0x40000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v39 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v38 = *(*this + v2++);
            *(this + 1) = v2;
            v39 = v38 != 0;
          }

          *(a1 + 217) = v39;
          goto LABEL_210;
        case 6u:
          *(a1 + 224) |= 0x80000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_209;
        case 7u:
          *(a1 + 224) |= 0x400000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v61 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v60 = *(*this + v2++);
            *(this + 1) = v2;
            v61 = v60 != 0;
          }

          *(a1 + 221) = v61;
          goto LABEL_210;
        case 8u:
          *(a1 + 224) |= 1uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_209;
        case 9u:
          *(a1 + 224) |= 0x20000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v71 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v70 = *(*this + v2++);
            *(this + 1) = v2;
            v71 = v70 != 0;
          }

          *(a1 + 216) = v71;
          goto LABEL_210;
        case 0xAu:
          *(a1 + 224) |= 0x80000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v41 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v40 = *(*this + v2++);
            *(this + 1) = v2;
            v41 = v40 != 0;
          }

          *(a1 + 218) = v41;
          goto LABEL_210;
        case 0xBu:
          *(a1 + 224) |= 0x8000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_209;
        case 0xCu:
          *(a1 + 224) |= 0x40000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_209;
        case 0xDu:
          *(a1 + 224) |= 0x4000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_209;
        case 0xEu:
          *(a1 + 224) |= 0x8000000uLL;
          v52 = *(this + 1);
          v2 = *(this + 2);
          v53 = *this;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v103 = 0;
            v104 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(this + 1);
            }

            v105 = v2 - v52;
            v106 = (v53 + v52);
            v107 = v52 + 1;
            while (1)
            {
              if (!v105)
              {
                LODWORD(v56) = 0;
                *(this + 24) = 1;
                goto LABEL_234;
              }

              v108 = v107;
              v109 = *v106;
              *(this + 1) = v108;
              v56 |= (v109 & 0x7F) << v103;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              --v105;
              ++v106;
              v107 = v108 + 1;
              v14 = v104++ > 8;
              if (v14)
              {
                LODWORD(v56) = 0;
LABEL_233:
                v2 = v108;
                goto LABEL_234;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v56) = 0;
            }

            goto LABEL_233;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            v2 = v58;
            *(this + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_234;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          LODWORD(v56) = 0;
LABEL_234:
          *(a1 + 208) = v56;
          goto LABEL_210;
        case 0xFu:
          *(a1 + 224) |= 0x4000000uLL;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v89 = 0;
            v90 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v91 = v2 - v30;
            v92 = (v31 + v30);
            v93 = v30 + 1;
            while (1)
            {
              if (!v91)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_226;
              }

              v94 = v93;
              v95 = *v92;
              *(this + 1) = v94;
              v34 |= (v95 & 0x7F) << v89;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              --v91;
              ++v92;
              v93 = v94 + 1;
              v14 = v90++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_225:
                v2 = v94;
                goto LABEL_226;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_225;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(this + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_226:
          *(a1 + 204) = v34;
          goto LABEL_210;
        case 0x10u:
          *(a1 + 224) |= 0x10000000uLL;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v96 = 0;
            v97 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(this + 1);
            }

            v98 = v2 - v44;
            v99 = (v45 + v44);
            v100 = v44 + 1;
            while (1)
            {
              if (!v98)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_230;
              }

              v101 = v100;
              v102 = *v99;
              *(this + 1) = v101;
              v48 |= (v102 & 0x7F) << v96;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v96 += 7;
              --v98;
              ++v99;
              v100 = v101 + 1;
              v14 = v97++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
LABEL_229:
                v2 = v101;
                goto LABEL_230;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_229;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(this + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_230;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_230:
          *(a1 + 212) = v48;
          goto LABEL_210;
        case 0x11u:
          *(a1 + 224) |= 0x800000uLL;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v82 = 0;
            v83 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v84 = v2 - v22;
            v85 = (v23 + v22);
            v86 = v22 + 1;
            while (1)
            {
              if (!v84)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_222;
              }

              v87 = v86;
              v88 = *v85;
              *(this + 1) = v87;
              v26 |= (v88 & 0x7F) << v82;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              --v84;
              ++v85;
              v86 = v87 + 1;
              v14 = v83++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_221:
                v2 = v87;
                goto LABEL_222;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_221;
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
              goto LABEL_222;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_222:
          *(a1 + 192) = v26;
          goto LABEL_210;
        case 0x12u:
          *(a1 + 224) |= 0x1000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_209;
        case 0x13u:
          *(a1 + 224) |= 0x2000000uLL;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v110 = 0;
            v111 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v112 = v2 - v62;
            v113 = (v63 + v62);
            v114 = v62 + 1;
            while (1)
            {
              if (!v112)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_238;
              }

              v115 = v114;
              v116 = *v113;
              *(this + 1) = v115;
              v66 |= (v116 & 0x7F) << v110;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v110 += 7;
              --v112;
              ++v113;
              v114 = v115 + 1;
              v14 = v111++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_237:
                v2 = v115;
                goto LABEL_238;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_237;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          do
          {
            v2 = v68;
            *(this + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_238;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_238:
          *(a1 + 200) = v66;
          goto LABEL_210;
        case 0x14u:
          *(a1 + 224) |= 0x1000000uLL;
          v72 = *(this + 1);
          v2 = *(this + 2);
          v73 = *this;
          if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v2)
          {
            v117 = 0;
            v118 = 0;
            v76 = 0;
            if (v2 <= v72)
            {
              v2 = *(this + 1);
            }

            v119 = v2 - v72;
            v120 = (v73 + v72);
            v121 = v72 + 1;
            while (1)
            {
              if (!v119)
              {
                LODWORD(v76) = 0;
                *(this + 24) = 1;
                goto LABEL_242;
              }

              v122 = v121;
              v123 = *v120;
              *(this + 1) = v122;
              v76 |= (v123 & 0x7F) << v117;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v117 += 7;
              --v119;
              ++v120;
              v121 = v122 + 1;
              v14 = v118++ > 8;
              if (v14)
              {
                LODWORD(v76) = 0;
LABEL_241:
                v2 = v122;
                goto LABEL_242;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v76) = 0;
            }

            goto LABEL_241;
          }

          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = (v73 + v72);
          v78 = v72 + 1;
          do
          {
            v2 = v78;
            *(this + 1) = v78;
            v79 = *v77++;
            v76 |= (v79 & 0x7F) << v74;
            if ((v79 & 0x80) == 0)
            {
              goto LABEL_242;
            }

            v74 += 7;
            ++v78;
            v14 = v75++ > 8;
          }

          while (!v14);
          LODWORD(v76) = 0;
LABEL_242:
          *(a1 + 196) = v76;
          goto LABEL_210;
        case 0x15u:
          *(a1 + 224) |= 8uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_209;
        case 0x16u:
          *(a1 + 224) |= 4uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_209;
        case 0x17u:
          *(a1 + 224) |= 0x10uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_209;
        case 0x18u:
          *(a1 + 224) |= 0x100000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v81 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v80 = *(*this + v2++);
            *(this + 1) = v2;
            v81 = v80 != 0;
          }

          *(a1 + 219) = v81;
          goto LABEL_210;
        case 0x19u:
          *(a1 + 224) |= 0x100uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_209;
        case 0x1Au:
          *(a1 + 224) |= 0x800uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_209;
        case 0x1Bu:
          *(a1 + 224) |= 0x10000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_209;
        case 0x1Cu:
          *(a1 + 224) |= 0x20000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_209;
        case 0x1Du:
          *(a1 + 224) |= 0x20uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_209;
        case 0x1Eu:
          *(a1 + 224) |= 0x400000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_209;
        case 0x1Fu:
          *(a1 + 224) |= 0x2000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_209;
        case 0x20u:
          *(a1 + 224) |= 0x100000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_209;
        case 0x21u:
          *(a1 + 224) |= 0x200uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_209;
        case 0x22u:
          *(a1 + 224) |= 0x200000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_209;
        case 0x23u:
          *(a1 + 224) |= 0x400uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_145:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 88) = *(*this + v2);
LABEL_209:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_210;
        default:
          if (!PB::Reader::skip(this))
          {
            v124 = 0;
            return v124 & 1;
          }

          v2 = *(this + 1);
LABEL_210:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_244;
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

LABEL_244:
  v124 = v4 ^ 1;
  return v124 & 1;
}

uint64_t sub_19B5ACD5C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 224);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 224);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  v5 = *(v3 + 220);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6 = *(v3 + 217);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000) == 0)
  {
LABEL_7:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  v7 = *(v3 + 221);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 224);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(v3 + 216);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(v3 + 218);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 224);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 224);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  v10 = *(v3 + 208);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v11 = *(v3 + 204);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  v12 = *(v3 + 212);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x800000) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v13 = *(v3 + 192);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(v3 + 200);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  v15 = *(v3 + 196);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 8) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 224);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 224);
  if ((v4 & 0x10) == 0)
  {
LABEL_24:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  v16 = *(v3 + 219);
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x100) == 0)
  {
LABEL_26:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 224);
  if ((v4 & 0x800) == 0)
  {
LABEL_27:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 224);
  if ((v4 & 0x10000) == 0)
  {
LABEL_28:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 224);
  if ((v4 & 0x20000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 224);
  if ((v4 & 0x20) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000) == 0)
  {
LABEL_32:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000) == 0)
  {
LABEL_33:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 224);
  if ((v4 & 0x200) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    result = PB::Writer::write(this, *(v3 + 176));
    if ((*(v3 + 224) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_71;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000) != 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  if ((v4 & 0x400) == 0)
  {
    return result;
  }

LABEL_71:
  v17 = *(v3 + 88);

  return PB::Writer::write(this, v17);
}

uint64_t sub_19B5AD168(uint64_t result)
{
  *result = &unk_1F0E30340;
  *(result + 128) = 0;
  return result;
}

void sub_19B5AD190(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AD1C8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 128);
  if ((v5 & 0x1000) != 0)
  {
    v6 = *(a1 + 104);
    PB::TextFormatter::format(this, "activityType");
    v5 = *(a1 + 128);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 108);
  PB::TextFormatter::format(this, "activityTypeWithoutOverride");
  v5 = *(a1 + 128);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "currentCadence", *(a1 + 8));
  v5 = *(a1 + 128);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "currentPace", *(a1 + 16));
  v5 = *(a1 + 128);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = *(a1 + 112);
  PB::TextFormatter::format(this, "elevationSource");
  v5 = *(a1 + 128);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "eta", *(a1 + 24));
  v5 = *(a1 + 128);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "grade", *(a1 + 32));
  v5 = *(a1 + 128);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = *(a1 + 116);
  PB::TextFormatter::format(this, "gradeOnsetCounter");
  v5 = *(a1 + 128);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "horizSpeed", *(a1 + 40));
  v5 = *(a1 + 128);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(a1 + 120);
  PB::TextFormatter::format(this, "isArmConstrainedStateValid");
  v5 = *(a1 + 128);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = *(a1 + 121);
  PB::TextFormatter::format(this, "isGradeOnsetEscalated");
  v5 = *(a1 + 128);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(a1 + 122);
  PB::TextFormatter::format(this, "isRunning");
  v5 = *(a1 + 128);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = *(a1 + 123);
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 128);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(a1 + 124);
  PB::TextFormatter::format(this, "isWeightSet");
  v5 = *(a1 + 128);
  if ((v5 & 0x200000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = *(a1 + 125);
  PB::TextFormatter::format(this, "isWorkoutSelected");
  v5 = *(a1 + 128);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "powerWattage", *(a1 + 48));
  v5 = *(a1 + 128);
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "startTime", *(a1 + 56));
  v5 = *(a1 + 128);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "userHeight", *(a1 + 64));
  v5 = *(a1 + 128);
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "userWeight", *(a1 + 72));
  v5 = *(a1 + 128);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 80));
  v5 = *(a1 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  PB::TextFormatter::format(this, "wLoad", *(a1 + 88));
  if ((*(a1 + 128) & 0x800) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(this, "workrateMETs", *(a1 + 96));
  }

LABEL_24:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AD4CC(uint64_t a1, PB::Reader *this)
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
        goto LABEL_171;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 128) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_146;
        case 2u:
          *(a1 + 128) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_146;
        case 3u:
          *(a1 + 128) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_146;
        case 4u:
          *(a1 + 128) |= 0x100000u;
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

          *(a1 + 124) = v27;
          goto LABEL_167;
        case 5u:
          *(a1 + 128) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_146;
        case 6u:
          *(a1 + 128) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_146;
        case 7u:
          *(a1 + 128) |= 0x2000u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v82 = v2 - v48;
            v83 = (v49 + v48);
            v84 = v48 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_162;
              }

              v85 = v84;
              v86 = *v83;
              *(this + 1) = v85;
              v52 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              --v82;
              ++v83;
              v84 = v85 + 1;
              v14 = v81++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_161:
                v2 = v85;
                goto LABEL_162;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_161;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(this + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_162;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_162:
          *(a1 + 108) = v52;
          goto LABEL_167;
        case 8u:
          *(a1 + 128) |= 0x1000u;
          v28 = *(this + 1);
          v2 = *(this + 2);
          v29 = *this;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v32 = 0;
            if (v2 <= v28)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v28;
            v69 = (v29 + v28);
            v70 = v28 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v32) = 0;
                *(this + 24) = 1;
                goto LABEL_154;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v32 |= (v72 & 0x7F) << v66;
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
                LODWORD(v32) = 0;
LABEL_153:
                v2 = v71;
                goto LABEL_154;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v32) = 0;
            }

            goto LABEL_153;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          do
          {
            v2 = v34;
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_154;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
          }

          while (!v14);
          LODWORD(v32) = 0;
LABEL_154:
          *(a1 + 104) = v32;
          goto LABEL_167;
        case 9u:
          *(a1 + 128) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_146;
        case 0xAu:
          *(a1 + 128) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_146;
        case 0xBu:
          *(a1 + 128) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_146;
        case 0xCu:
          *(a1 + 128) |= 0x80000u;
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

          *(a1 + 123) = v25;
          goto LABEL_167;
        case 0xDu:
          *(a1 + 128) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_146;
        case 0xEu:
          *(a1 + 128) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_146;
        case 0xFu:
          *(a1 + 128) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_146;
        case 0x10u:
          *(a1 + 128) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_96:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 8) = *(*this + v2);
LABEL_146:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_167;
        case 0x11u:
          *(a1 + 128) |= 0x200000u;
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

          *(a1 + 125) = v23;
          goto LABEL_167;
        case 0x12u:
          *(a1 + 128) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v37 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = *(*this + v2++);
            *(this + 1) = v2;
            v37 = v36 != 0;
          }

          *(a1 + 121) = v37;
          goto LABEL_167;
        case 0x13u:
          *(a1 + 128) |= 0x8000u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v89 = v2 - v56;
            v90 = (v57 + v56);
            v91 = v56 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_166;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v60 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_165:
                v2 = v92;
                goto LABEL_166;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_165;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_166;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_166:
          *(a1 + 116) = v60;
          goto LABEL_167;
        case 0x14u:
          *(a1 + 128) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v64 = *(*this + v2++);
            *(this + 1) = v2;
            v65 = v64 != 0;
          }

          *(a1 + 120) = v65;
          goto LABEL_167;
        case 0x15u:
          *(a1 + 128) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v39 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v38 = *(*this + v2++);
            *(this + 1) = v2;
            v39 = v38 != 0;
          }

          *(a1 + 122) = v39;
          goto LABEL_167;
        case 0x16u:
          *(a1 + 128) |= 0x4000u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(this + 1);
            }

            v75 = v2 - v40;
            v76 = (v41 + v40);
            v77 = v40 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_158;
              }

              v78 = v77;
              v79 = *v76;
              *(this + 1) = v78;
              v44 |= (v79 & 0x7F) << v73;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              --v75;
              ++v76;
              v77 = v78 + 1;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_157:
                v2 = v78;
                goto LABEL_158;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_157;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(this + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_158;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_158:
          *(a1 + 112) = v44;
          goto LABEL_167;
        default:
          if (!PB::Reader::skip(this))
          {
            v94 = 0;
            return v94 & 1;
          }

          v2 = *(this + 1);
LABEL_167:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_171;
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

LABEL_171:
  v94 = v4 ^ 1;
  return v94 & 1;
}

uint64_t sub_19B5ADEC0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 128);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x100000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5 = *(v3 + 124);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v6 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v7 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v8 = *(v3 + 123);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 128);
  if ((v4 & 1) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(v3 + 125);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(v3 + 121);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_21:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    v13 = *(v3 + 122);
    result = PB::Writer::write(this);
    if ((*(v3 + 128) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_43:
  v12 = *(v3 + 120);
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v4 & 0x4000) == 0)
  {
    return result;
  }

LABEL_45:
  v14 = *(v3 + 112);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B5AE160(uint64_t result)
{
  *result = &unk_1F0E2E238;
  *(result + 48) = 0;
  return result;
}

void sub_19B5AE188(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AE1C0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    PB::TextFormatter::format(this, "primaryAxisX", *(a1 + 8));
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "primaryAxisY", *(a1 + 16));
  v5 = *(a1 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "primaryAxisZ", *(a1 + 24));
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AE2A4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_51;
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 48) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_42:
            *(this + 24) = 1;
            goto LABEL_47;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_46;
        }

        if (v22 == 2)
        {
          *(a1 + 48) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_42;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_46;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_46;
          case 4:
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_46;
          case 5:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_46:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_47;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_47:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B5AE56C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 48) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 48);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5AE630(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = 16777217;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1065353216;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0x3F80000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 1097859072;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
  }

  v2 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "[CMAnchorMotionCorrespondence] Created the anchor-motion correspondence.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMAnchorMotionCorrespondence::CMAnchorMotionCorrespondence()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  sub_19B5AE824(a1);
  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B5AE824(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *a1 = 16777217;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "[CMAnchorMotionCorrespondence] Reset is called.", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::reset()", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_19B5AE9DC(uint64_t a1, float32x2_t *a2, float *a3, uint64_t a4, double a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v10.f32[0] = sub_19B66C1A4((a1 + 28), *a3, a3[1], a3[2]);
    v12 = a5;
    v13 = (a2[1].f32[0] - v11) * v12;
    v10.i32[1] = v14;
    *v46 = vmul_n_f32(vsub_f32(*a2, v10), v12);
    *&v46[8] = v13;
    *v15.i64 = sub_19B66C264(buf, v46);
    v16 = sub_19B66BF70(buf, (a1 + 28), v15);
    v17 = 0;
    *(a1 + 28) = v16;
    *(a1 + 32) = v18;
    *(a1 + 36) = v19;
    *(a1 + 40) = v20;
    v21 = 0.0;
    do
    {
      v21 = v21 + (a2->f32[v17] * a2->f32[v17]);
      ++v17;
    }

    while (v17 != 3);
    if (sqrtf(v21) > 3.0)
    {
      goto LABEL_8;
    }

    v22 = 0;
    v23 = 0.0;
    do
    {
      v23 = v23 + (a3[v22] * a3[v22]);
      ++v22;
    }

    while (v22 != 3);
    if (sqrtf(v23) > 3.0)
    {
LABEL_8:
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v24 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v25 = 0;
        v26 = 0.0;
        do
        {
          v26 = v26 + (a2->f32[v25] * a2->f32[v25]);
          ++v25;
        }

        while (v25 != 3);
        v27 = 0;
        v28 = 0.0;
        do
        {
          v28 = v28 + (a3[v27] * a3[v27]);
          ++v27;
        }

        while (v27 != 3);
        *buf = 134218496;
        *v51 = sqrtf(v26);
        *&v51[8] = 2048;
        v52 = sqrtf(v28);
        v53 = 2048;
        v54 = a5;
        _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Pose update done with src %f aux %f dt %f.", buf, 0x20u);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v30 = 0;
        v31 = 0.0;
        do
        {
          v31 = v31 + (a2->f32[v30] * a2->f32[v30]);
          ++v30;
        }

        while (v30 != 3);
        v32 = 0;
        v33 = 0.0;
        do
        {
          v33 = v33 + (a3[v32] * a3[v32]);
          ++v32;
        }

        while (v32 != 3);
        *v46 = 134218496;
        *&v46[4] = sqrtf(v31);
        *&v46[12] = 2048;
        v47 = sqrtf(v33);
        v48 = 2048;
        v49 = a5;
        v34 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedIMU(const CMRelDM::IMUData &, const CMRelDM::IMUData &, double, uint64_t)", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    if (*(a1 + 1) == 1 && (*(a1 + 2) & 1) == 0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v35 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 1);
        v37 = *(a1 + 2);
        *buf = 67109376;
        *v51 = v36;
        *&v51[4] = 1024;
        *&v51[6] = v37;
        _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Anchor sensor state changed from %d to %d.", buf, 0xEu);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v39 = *(a1 + 1);
        v40 = *(a1 + 2);
        *v46 = 67109376;
        *&v46[4] = v39;
        *&v46[8] = 1024;
        *&v46[10] = v40;
        v41 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedIMU(const CMRelDM::IMUData &, const CMRelDM::IMUData &, double, uint64_t)", "CoreLocation: %s\n", v41);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      *(a1 + 28) = *(a1 + 12);
      if (*(a1 + 3) == 1)
      {
        *(a1 + 3) = 0;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v42 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] fFirstBurst is set to false.", buf, 2u);
        }

        v43 = sub_19B420058();
        if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
          }

          *v46 = 0;
          v44 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedIMU(const CMRelDM::IMUData &, const CMRelDM::IMUData &, double, uint64_t)", "CoreLocation: %s\n", v44);
          if (v44 != buf)
          {
            free(v44);
          }
        }
      }
    }

    *(a1 + 1) = *(a1 + 2);
    *(a1 + 64) = a4;
  }

  v45 = *MEMORY[0x1E69E9840];
}

void sub_19B5AF054(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
  }

  v6 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Feed anchor", buf, 2u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    LOWORD(v45) = 0;
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedAnchor(const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (*(a1 + 3) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    v9 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Entering the first burst condition", buf, 2u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      LOWORD(v45) = 0;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedAnchor(const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    *(a1 + 12) = *a2;
    *(a1 + 48) = a3;
    *(a1 + 56) = a3;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    v12 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Calling anchor correspondence.", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      LOWORD(v45) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedAnchor(const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v14.f32[0] = (a3 - *(a1 + 56)) * 0.000001;
    if (v14.f32[0] <= 0.0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v33 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] dtSeconds == 0", buf, 2u);
      }

      v34 = sub_19B420058();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        LOWORD(v45) = 0;
        v35 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::anchorCorrespondence(const CMOQuaternion &, const uint64_t)", "CoreLocation: %s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    else
    {
      v16.f32[0] = sub_19B66BFF4((a1 + 28), v14);
      *buf = v16.i32[0];
      v50 = __PAIR64__(v18, v17);
      v51[0] = v19;
      v45 = sub_19B66BF70(a2, buf, v16);
      v46 = __PAIR64__(v21, v20);
      v47[0] = v22;
      v23 = sub_19B66C31C(&v45);
      v24 = 0;
      *buf = v23;
      v50 = __PAIR64__(v26, v25);
      v27 = 0.0;
      do
      {
        v27 = v27 + (*&buf[v24] * *&buf[v24]);
        v24 += 4;
      }

      while (v24 != 12);
      *(a1 + 8) = sqrtf(v27) * 57.296;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v28 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *&v29 = *(a1 + 8);
        *buf = 134217984;
        v50 = v29;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] dThetaNorm %f.", buf, 0xCu);
      }

      v30 = sub_19B420058();
      if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v31 = *(a1 + 8);
        v47[5] = 134217984;
        v48 = v31;
        v32 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::anchorCorrespondence(const CMOQuaternion &, const uint64_t)", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      *(a1 + 48) = a3;
      if (*(a1 + 8) >= *(a1 + 72))
      {
        *a1 = 0;
      }

      else
      {
        *a1 = 1;
        *(a1 + 12) = *a2;
        *(a1 + 56) = a3;
      }
    }

    v36 = *(a1 + 56);
    v37 = (*(a1 + 48) - v36) * 0.000001;
    if (v37 >= 120.0 && v36 && (*(a1 + 3) & 1) == 0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v38 = off_1EAFE29A0;
      v39 = v37;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(a1 + 56);
        *buf = 134218240;
        v50 = *&v39;
        LOWORD(v51[0]) = 2048;
        *(v51 + 2) = v40;
        _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Resetting for large correspondence gap: dtSeconds %f fLastAnchorCorrespondenceUpdateUs is %llu.", buf, 0x16u);
      }

      v41 = sub_19B420058();
      if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v42 = *(a1 + 56);
        v45 = 3.8521e-34;
        v46 = *&v39;
        LOWORD(v47[0]) = 2048;
        *(v47 + 2) = v42;
        v43 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedAnchor(const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      sub_19B5AE824(a1);
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B5AF9D8()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B5AFCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v25, v24);
  _Unwind_Resume(a1);
}

void sub_19B5AFCF4(uint64_t a1, CLConnectionMessage **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a2 && (Dictionary = CLConnectionMessage::getDictionary(*a2)) != 0 && (v4 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage")) != 0)
  {
    v7 = objc_msgSend_intValue(v4, v5, v6);
  }

  else
  {
    v7 = 103;
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v8 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v13 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "CMHistoricalDatastore, Failed with CMError code %{public}d", buf, 8u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore init]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B5AFEE0(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v6 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_UTF8String(v5, v7, v8);
      v10 = *(a1 + 32);
      *buf = 136446722;
      v18 = v9;
      v19 = 1026;
      v20 = v2;
      v21 = 2050;
      v22 = v10;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMHistoricalDatastore, Client connection interrupt, %{public}s, %{public}d, %{public}p", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      objc_msgSend_UTF8String(v5, v12, v13);
      v16 = *(a1 + 32);
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore init]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B5B06E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5B1064(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v14 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v48 = objc_msgSend_count(a2, v15, v16);
      v49 = 2048;
      v50 = a3;
      v51 = 2048;
      v52 = a4;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Received %lu samples, cardio datatype %lu, state %lu", buf, 0x20u);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v41 = 134218496;
      v42 = objc_msgSend_count(a2, v19, v20);
      v43 = 2048;
      v44 = a3;
      v45 = 2048;
      v46 = a4;
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (a3 > 3)
    {
      if (a3 > 5)
      {
        if (a3 == 6)
        {
          objc_msgSend_setCardioSessionMetrics_(*(a1 + 32), v18, a2);
        }

        else
        {
          if (a3 != 7)
          {
            goto LABEL_50;
          }

          objc_msgSend_setCardioFitnessSummary_(*(a1 + 32), v18, a2);
        }
      }

      else if (a3 == 4)
      {
        objc_msgSend_setCardioFitnessInputs_(*(a1 + 32), v18, a2);
      }

      else
      {
        objc_msgSend_setCardioFitnessResults_(*(a1 + 32), v18, a2);
      }
    }

    else if (a3 > 1)
    {
      if (a3 == 2)
      {
        objc_msgSend_setRecoveryWorkRate_(*(a1 + 32), v18, a2);
      }

      else
      {
        objc_msgSend_setRecoverySessions_(*(a1 + 32), v18, a2);
      }
    }

    else
    {
      if (a3)
      {
        if (a3 == 1)
        {
          objc_msgSend_setRecoveryHeartRate_(*(a1 + 32), v18, a2);
          goto LABEL_34;
        }

LABEL_50:
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v31 = qword_1EAFE2AB0;
        if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v48 = a3;
          _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Unexpected datatype: %lu", buf, 0xCu);
        }

        v32 = sub_19B420058();
        if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2AA8 != -1)
          {
            dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
          }

          v41 = 134217984;
          v42 = a3;
          v34 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v34);
          if (v34 != buf)
          {
            free(v34);
          }
        }

        v39 = *MEMORY[0x1E696A578];
        v40 = @"Unexpected internal error.";
        v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, &v40, &v39, 1);
        objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v36, 103, v35);
        v37 = *(a1 + 32);
        result = (*(*(a1 + 48) + 16))();
        goto LABEL_62;
      }

      objc_msgSend_setPedestrianGrade_(*(a1 + 32), v18, a2);
    }

LABEL_34:
    v24 = objc_msgSend_count(a2, v22, v23);
    v25 = *(a1 + 48);
    if (v24)
    {
      result = (*(v25 + 16))(v25, *(a1 + 32), *(*(a1 + 40) + 16), a4, 0);
      if ((result & 1) == 0)
      {
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v26 = qword_1EAFE2AB0;
        if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Received interrupt from client", buf, 2u);
        }

        v27 = sub_19B420058();
        if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2AA8 != -1)
          {
            dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
          }

          LOWORD(v41) = 0;
          v30 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }
        }

        result = objc_msgSend_closeDBConnection(*(a1 + 40), v28, v29);
      }
    }

    else
    {
      result = (*(v25 + 16))(v25, 0, *(*(a1 + 40) + 16), 1, 0);
    }

LABEL_62:
    v38 = *MEMORY[0x1E69E9840];
    return result;
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 16);
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t sub_19B5B1E78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 48) + 16);
    v10 = *MEMORY[0x1E69E9840];

    return v9();
  }

  else
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v14 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v32 = objc_msgSend_count(a2, v15, v16);
      v33 = 2048;
      v34 = a3;
      v35 = 2048;
      v36 = a4;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Received %lu samples, mobility datatype %lu, state %lu", buf, 0x20u);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      objc_msgSend_count(a2, v20, v21);
      v22 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          objc_msgSend_setPredictedDistanceBouts_(*(a1 + 32), v18, a2);
        }
      }

      else
      {
        objc_msgSend_setWalkingBoutMobility_(*(a1 + 32), v18, a2);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          objc_msgSend_setGaitMetrics_(*(a1 + 32), v18, a2);
          break;
        case 3:
          objc_msgSend_setPredictedDistanceBoutsMobilityCalibration_(*(a1 + 32), v18, a2);
          break;
        case 4:
          objc_msgSend_setStrideCalEntries_(*(a1 + 32), v18, a2);
          break;
      }
    }

    v23 = objc_msgSend_count(a2, v18, v19);
    v24 = *(a1 + 48);
    if (v23)
    {
      result = (*(v24 + 16))(v24, *(a1 + 32), *(*(a1 + 40) + 16), a4, 0);
      if ((result & 1) == 0)
      {
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v25 = qword_1EAFE2AB0;
        if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Received interrupt from client", buf, 2u);
        }

        v26 = sub_19B420058();
        if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2AA8 != -1)
          {
            dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
          }

          v29 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        result = objc_msgSend_closeDBConnection(*(a1 + 40), v27, v28);
      }
    }

    else
    {
      result = (*(v24 + 16))(v24, 0, *(*(a1 + 40) + 16), 1, 0);
    }

    v30 = *MEMORY[0x1E69E9840];
  }

  return result;
}

os_log_t sub_19B5B64B0()
{
  result = os_log_create("com.apple.locationd.Motion", "HealthColdStorage");
  qword_1EAFE2AB0 = result;
  return result;
}

void *sub_19B5B654C(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5B661C((a1 + 3), a2);
  return a1;
}

void sub_19B5B65C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AD08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5B661C(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5B666C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5B6A00(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v5 = *(a1 + 32);
  if (Weak)
  {

    return objc_msgSend__connect(v5, v2, v3);
  }

  else
  {

    return objc_msgSend__disconnect(v5, v2, v3);
  }
}

void sub_19B5B6B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B6EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    sub_19B41FFEC(v28);
  }

  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B5B6F48(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (objc_loadWeak(Weak + 3))
    {
      v6 = a2[1];
      v7 = *a2;
      v8 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_msgSend__handleMessage_(v4, v5, &v7);
      if (v8)
      {
        sub_19B41FFEC(v8);
      }
    }
  }
}

void sub_19B5B6FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B6FD4()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AE8 != -1)
  {
    dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
  }

  v0 = qword_1EAFE2AF0;
  if (os_log_type_enabled(qword_1EAFE2AF0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "[CMNoMovementManager] interruption with locationd occurred", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AE8 != -1)
    {
      dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNoMovementManager _connect]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_19B5B73B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5B77F8(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_didStateUpdate_, v3);
}

os_log_t sub_19B5B7888()
{
  result = os_log_create("com.apple.locationd.Motion", "CheckIn");
  qword_1EAFE2AF0 = result;
  return result;
}

void *sub_19B5B7924(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5B7980((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5B7980(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5B79D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B7A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5B816C(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v5 = *(a1 + 32);
  if (Weak)
  {

    return objc_msgSend__connect(v5, v2, v3);
  }

  else
  {

    return objc_msgSend__disconnect(v5, v2, v3);
  }
}

void sub_19B5B865C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B5B86D8(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v4 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[HeadphoneUsage] CMAudioAccessoryUsageManager - Calling default handler", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v19 = 0;
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _connect]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  Weak = objc_loadWeak((a1 + 32));
  v8 = Weak;
  if (Weak)
  {
    if (objc_loadWeak(Weak + 3))
    {
      v10 = a2[1];
      v17 = *a2;
      v18 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_msgSend__handleMessage_(v8, v9, &v17);
      if (v18)
      {
        sub_19B41FFEC(v18);
      }

      goto LABEL_38;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v13 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] No delegate set", buf, 2u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v11 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: strongSelf missing!", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
LABEL_36:
        v19 = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _connect]_block_invoke", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }

        goto LABEL_38;
      }

LABEL_43:
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      goto LABEL_36;
    }
  }

LABEL_38:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B5B8B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B8B70()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v0 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager - interruptionHandler", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _connect]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B5B9600(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_errorOccurred_, v3);
}

uint64_t sub_19B5B9640(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_didReceiveUsageMetrics_, v3);
}

uint64_t sub_19B5B9680(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_errorOccurred_, v3);
}

void sub_19B5B9A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B5B9C58()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B5B9CFC(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5B9D58((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B5B9D58(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5B9DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B9DCC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 52) = 0x1900000000;
  *(a1 + 360) = 0x1900000000;
  *(a1 + 668) = 0x1900000000;
  *(a1 + 976) = 0x1900000000;
  *(a1 + 1284) = 0x1900000000;
  *(a1 + 1392) = 0x1900000000;
  *(a1 + 1500) = 0x1900000000;
  *(a1 + 1608) = 0x1900000000;
  *(a1 + 1716) = 0x1900000000;
  *(a1 + 1824) = 0x1900000000;
  *(a1 + 1932) = 0x1900000000;
  *(a1 + 2040) = 0x1900000000;
  *(a1 + 2148) = 0xB200000000;
  *(a1 + 5056) = 0u;
  *(a1 + 5080) = 0;
  *(a1 + 5072) = 0;
  *(a1 + 5096) = 0;
  *(a1 + 5088) = 0;
  *(a1 + 5100) = 1;
  *(a1 + 5104) = 0u;
  *(a1 + 5120) = 0u;
  *(a1 + 5136) = 0u;
  *(a1 + 5152) = 0u;
  *(a1 + 5168) = 0u;
  *(a1 + 5184) = 0u;
  *(a1 + 5212) = 0u;
  *(a1 + 5228) = 0x3C00000000;
  *(a1 + 5200) = 1;
  *(a1 + 5476) = 1;
  *(a1 + 5488) = 0u;
  *(a1 + 5504) = 0x3C00000000;
  *(a1 + 5752) = 1;
  *(a1 + 5764) = 0u;
  *(a1 + 5784) = 11;
  *(a1 + 5780) = 0;
  *(a1 + 5832) = 1057360530;
  *(a1 + 5856) = 0;
  *(a1 + 5840) = 0;
  *(a1 + 5847) = 0;
  *(a1 + 5860) = 1;
  *(a1 + 5872) = 0u;
  *(a1 + 5888) = 0xF00000000;
  *(a1 + 5980) = 0;
  *(a1 + 5984) = 0;
  *(a1 + 6032) = 0;
  *(a1 + 5956) = 0;
  *(a1 + 5959) = 0;
  *(a1 + 5969) = 0;
  *(a1 + 5964) = 0;
  *(a1 + 6024) = 0;
  *(a1 + 5992) = 0u;
  *(a1 + 6008) = 0u;
  sub_19B5B9FB8(a1);
}

void sub_19B5B9F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v10 + 647;
  sub_19B5BE5A4(&a10);
  a10 = v10 + 644;
  sub_19B5BE5A4(&a10);
  a10 = v10 + 641;
  sub_19B5BE5A4(&a10);
  a10 = v12;
  sub_19B5BE5A4(&a10);
  _Unwind_Resume(a1);
}

void sub_19B5B9FB8(void *a1)
{
  *(a1 + 1) = 0;
  *(a1 + 90) = 0;
  *(a1 + 167) = 0;
  *(a1 + 244) = 0;
  *(a1 + 321) = 0;
  *(a1 + 348) = 0;
  *(a1 + 375) = 0;
  *(a1 + 402) = 0;
  *(a1 + 429) = 0;
  *(a1 + 456) = 0;
  *(a1 + 483) = 0;
  *(a1 + 510) = 0;
  *(a1 + 537) = 0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 13) = 0;
  *(a1 + 5004) = 0u;
  *(a1 + 5020) = 0u;
  *(a1 + 5036) = 0u;
  *(a1 + 5052) = 0;
  *(a1 + 1270) = 0;
  a1[634] = 0;
  *(a1 + 316) = 0u;
  a1[636] = 0;
  *(a1 + 1274) = 0;
  *(a1 + 2550) = 1;
  sub_19B5BA23C(a1);
}

unsigned __int8 *sub_19B5BA034(unsigned __int8 *result, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*result != a2)
  {
    v3 = result;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v5 = *v3;
      *buf = 67109376;
      v11 = v5;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMComplexTransition] Changed tracking behavior from %d to %d.", buf, 0xEu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
      }

      v9 = *v3;
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    sub_19B5B9FB8(v3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5BA304(unsigned __int8 *a1, float32x2_t *a2, float32x2_t *a3, unsigned __int8 a4, unsigned __int8 a5, __int128 *a6, unint64_t a7, float32x4_t a8, float a9)
{
  v313 = *MEMORY[0x1E69E9840];
  v13 = a1 + 4096;
  if (*a1 == 1)
  {
    a1[5101] = a5;
    v14 = *a6;
    *(a1 + 6009) = *(a6 + 9);
    *(a1 + 375) = v14;
    *(a1 + 1508) = a8.i32[0];
    *(a1 + 1509) = a9;
  }

  a1[5100] = a4;
  v15.f32[0] = sub_19B66BFF4(a2 + 7, a8);
  v278[0] = v15.f32[0];
  v278[1] = v16;
  v278[2] = v17;
  v278[3] = v18;
  v277[0] = sub_19B66BFF4(a3 + 7, v15);
  v277[1] = v19;
  v277[2] = v20;
  v277[3] = v21;
  v22 = sub_19B66C1A4(v278, a2->f32[0], a2->f32[1], a2[1].f32[0]);
  v274 = v23;
  v275 = v22;
  v276 = v24;
  v25 = sub_19B66C1A4(v277, a3->f32[0], a3->f32[1], a3[1].f32[0]);
  v273 = v26;
  v270 = v25;
  v271 = v27;
  v28 = sub_19B5BBFC0(a2);
  v268 = sub_19B66C1A4(v278, v28, v29, v30);
  v269 = v31;
  v272 = v32;
  v33 = sub_19B5BBFC0(a3);
  v36 = sub_19B66C1A4(v277, v33, v34, v35);
  v37.i64[0] = __PAIR64__(v274, LODWORD(v275));
  v37.i64[1] = __PAIR64__(LODWORD(v270), v276);
  v38.i64[0] = __PAIR64__(v271, v273);
  v38.i64[1] = __PAIR64__(v269, LODWORD(v268));
  v39 = v38;
  v40 = vaddq_f32(v37, *(a1 + 4));
  v41 = *(a1 + 36);
  v42 = vaddq_f32(v39, *(a1 + 20));
  *(a1 + 4) = v40;
  *(a1 + 20) = v42;
  v39.i64[0] = __PAIR64__(LODWORD(v36), v272);
  v39.i64[1] = __PAIR64__(v44, v43);
  v45 = vaddq_f32(v39, v41);
  *(a1 + 36) = v45;
  v46 = ++a1[1];
  if (v46 != 4)
  {
    goto LABEL_336;
  }

  __asm { FMOV            V1.4S, #0.25 }

  *(a1 + 4) = vmulq_f32(v40, _Q1);
  *(a1 + 20) = vmulq_f32(v42, _Q1);
  *(a1 + 36) = vmulq_f32(v45, _Q1);
  if (*a1 == 1)
  {
    v50 = 0;
    v51 = 1;
    do
    {
      v52 = *(*(a1 + 638) + 8 * v50);
      v53 = sub_19B5BC0F0((a1 + 4), v50);
      LODWORD(v52) = sub_19B5BE1A8(v52, *v53);
      v54 = *(*(a1 + 641) + 8 * v50);
      v55 = sub_19B5BC0F0((a1 + 16), v50);
      v56 = v52 & sub_19B5BE1A8(v54, *v55);
      v57 = *(*(a1 + 644) + 8 * v50);
      v58 = sub_19B5BC0F0((a1 + 28), v50);
      LODWORD(v57) = sub_19B5BE1A8(v57, *v58);
      v59 = *(*(a1 + 647) + 8 * v50);
      v60 = sub_19B5BC0F0((a1 + 40), v50);
      v51 &= v56 & v57 & sub_19B5BE1A8(v59, *v60);
      ++v50;
    }

    while (v50 != 3);
    v61 = 0;
    if (v51)
    {
      do
      {
        v62 = *(*(a1 + 638) + 8 * v61);
        v63 = *(v62 + 4 * *(v62 + 8) + 16);
        *sub_19B5BC0F0((a1 + 4), v61) = v63;
        v64 = *(*(a1 + 641) + 8 * v61);
        v65 = *(v64 + 4 * *(v64 + 8) + 16);
        *sub_19B5BC0F0((a1 + 16), v61) = v65;
        v66 = *(*(a1 + 644) + 8 * v61);
        v67 = *(v66 + 4 * *(v66 + 8) + 16);
        *sub_19B5BC0F0((a1 + 28), v61) = v67;
        v68 = *(*(a1 + 647) + 8 * v61);
        v69 = *(v68 + 4 * *(v68 + 8) + 16);
        *sub_19B5BC0F0((a1 + 40), v61++) = v69;
      }

      while (v61 != 3);
    }

    else
    {
      do
      {
        *sub_19B5BC0F0((a1 + 4), v61) = 0;
        *sub_19B5BC0F0((a1 + 16), v61) = 0;
        *sub_19B5BC0F0((a1 + 28), v61) = 0;
        *sub_19B5BC0F0((a1 + 40), v61++) = 0;
      }

      while (v61 != 3);
    }
  }

  sub_19B5BE720(a1 + 26, (a1 + 4));
  sub_19B5BE720(a1 + 180, (a1 + 16));
  sub_19B5BE720(a1 + 334, (a1 + 28));
  sub_19B5BE720(a1 + 488, (a1 + 40));
  if (*a1 == 1)
  {
    sub_19B5BC034((a1 + 5476), a1 + 6);
    sub_19B5BC034((v13 + 1104), a1 + 3);
    if (*(a1 + 1308) == *(a1 + 2615))
    {
      if (v13[1104] == 1)
      {
        sub_19B5BE7E0((v13 + 1104));
      }

      *buf = fabsf(*(a1 + 1301) * 1.2);
      sub_19B5BC034((a1 + 5752), buf);
    }
  }

  a1[1] = 0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  if (*(a1 + 14) == *(a1 + 27) && *(a1 + 91) == *(a1 + 181) && *(a1 + 168) == *(a1 + 335) && *(a1 + 245) == *(a1 + 489))
  {
    sub_19B5BC2E8(a1 + 26, a1 + 642, a1 + 750);
    sub_19B5BC2E8(a1 + 180, a1 + 696, a1 + 804);
    sub_19B5BC2E8(a1 + 334, a1 + 858, a1 + 966);
    sub_19B5BC2E8(a1 + 488, a1 + 912, a1 + 1020);
  }

  if (*a1 == 1 && *(a1 + 1446) != *(a1 + 2891) || *(a1 + 322) != *(a1 + 643) || *(a1 + 349) != *(a1 + 697) || *(a1 + 376) != *(a1 + 751) || *(a1 + 403) != *(a1 + 805) || *(a1 + 430) != *(a1 + 859) || *(a1 + 457) != *(a1 + 913) || *(a1 + 484) != *(a1 + 967) || *(a1 + 511) != *(a1 + 1021))
  {
    goto LABEL_336;
  }

  v70 = a1 + 5004;
  *(a1 + 1251) = (sub_19B5BC378(a1 + 642, a1 + 696) * 3282.8) / 25.0;
  *(a1 + 1252) = (sub_19B5BC378(a1 + 750, a1 + 804) * 3282.8) / 25.0;
  *(a1 + 1253) = (sub_19B5BC378(a1 + 858, a1 + 912) * 96.17) / 25.0;
  *(a1 + 1254) = (sub_19B5BC378(a1 + 966, a1 + 1020) * 96.17) / 25.0;
  v71 = a1 + 2148;
  v72 = *(a1 + 538);
  v73 = *(a1 + 1074) + *(a1 + 1075);
  if (v73 < v72)
  {
    v72 = 0;
  }

  *&a1[16 * (v73 - v72) + 2156] = *v70;
  v74 = *(a1 + 1075);
  v75 = *(a1 + 538);
  if (v75 <= v74)
  {
    v76 = *v71 + 1;
    if (v76 < v75)
    {
      LOWORD(v75) = 0;
    }

    *v71 = v76 - v75;
  }

  else
  {
    *(a1 + 1075) = v74 + 1;
  }

  v77 = sub_19B5BC5F0(a1 + 642);
  v78 = sub_19B5BEE68(a1 + 642, *(a1 + 643));
  v79 = -v77;
  if (v77 > 0.0)
  {
    v79 = v77;
  }

  v81 = v78 < 0.0076154 && v79 < 0.17453;
  v13[1001] = v81;
  v82 = sub_19B5BC5F0(a1 + 696);
  v83 = sub_19B5BEE68(a1 + 696, *(a1 + 697));
  v84 = -v82;
  if (v82 > 0.0)
  {
    v84 = v82;
  }

  v86 = v83 < 0.0076154 && v84 < 0.17453;
  v13[1002] = v86;
  sub_19B5BC7B8(a1 + 334);
  v88 = -v87;
  if (v87 > 0.0)
  {
    v88 = v87;
  }

  if (v88 <= 0.25)
  {
    v89 = *(a1 + 636);
  }

  else
  {
    *(a1 + 636) = *&a7;
    v89 = a7;
  }

  v91 = ((a7 - v89) * 0.000001) < 0.5 && v89 != 0;
  v13[1003] = v91;
  if (v13[1001] & 1) != 0 || (v13[1002])
  {
    v92 = 0;
LABEL_68:
    *(a1 + 632) = v92;
    goto LABEL_69;
  }

  v118 = sub_19B5BCC5C(a1 + 26, 0.2618, 0.2618);
  v119 = sub_19B5BCC5C(a1 + 180, 0.17453, 0.17453);
  v120 = sub_19B5BC5F0(a1 + 642);
  v121 = sub_19B5BC5F0(a1 + 696);
  v122 = v120 - v121;
  if ((v120 - v121) <= 0.0)
  {
    v122 = -(v120 - v121);
  }

  v123 = -v120;
  if (v120 > 0.0)
  {
    v123 = v120;
  }

  if (v121 <= 0.0)
  {
    v121 = -v121;
  }

  if (v123 < v121)
  {
    v121 = v123;
  }

  if (v122 < (v121 * 0.2))
  {
    if (v119)
    {
      v92 = a7;
      if (v118)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_69:
  v93 = sub_19B5BC5F0(a1 + 642);
  v94 = sub_19B5BC5F0(a1 + 696);
  *v95.i32 = -v94;
  if (v94 > 0.0)
  {
    *v95.i32 = v94;
  }

  v96 = -v93;
  if (v93 > 0.0)
  {
    v96 = v93;
  }

  if (v96 < 0.087266)
  {
    v96 = 0.087266;
  }

  v97 = v94 - v93;
  if (v97 <= 0.0)
  {
    v97 = -v97;
  }

  v98 = ((*v95.i32 / v96) > 3.0) & ~v13[1002] | (v97 > 0.5236) & ~v13[1004];
  v13[1000] = v98;
  if (v98)
  {
    v99 = *(a1 + 1270) + 1;
    *(a1 + 1270) = v99;
    if (v99 >= 4)
    {
      *(a1 + 634) = *&a7;
    }
  }

  else
  {
    *(a1 + 1270) = 0;
  }

  if (v13[956] == 1)
  {
    *v71 = 0;
    v100 = 1.0;
  }

  else
  {
    v101 = *(a1 + 1075);
    if (v101 < 0x1A || (v102 = v101 - 25, *(a1 + 1255) = sub_19B5BC3F0(a1 + 1074, v101 - 25, 0), *(a1 + 1256) = sub_19B5BC3F0(a1 + 1074, v102, 1uLL), *(a1 + 1257) = sub_19B5BC3F0(a1 + 1074, v102, 2uLL), *(a1 + 1258) = sub_19B5BC3F0(a1 + 1074, v102, 3uLL), v100 = 1.0, (v13[956] & 1) == 0))
    {
      v100 = 1.0;
      if ((v13[1003] & 1) == 0)
      {
        v103 = sub_19B5BC5F0(a1 + 642);
        if (v103 <= 0.0)
        {
          v103 = -v103;
        }

        if (v103 < 0.5236)
        {
          v104 = *(a1 + 634);
          if (v104)
          {
            if (((a7 - v104) * 0.000001) >= 3.0)
            {
              v100 = 1.0;
            }

            else
            {
              v100 = 3.0;
            }
          }
        }
      }
    }
  }

  v105 = 0.5;
  if (v13[956])
  {
    v105 = 0.25;
  }

  *v95.i32 = v100 * v105;
  v106 = vaddq_f32(*(v13 + 924), xmmword_19B7B7490);
  *&v95.i32[1] = v105;
  *(v13 + 940) = vmulq_f32(vzip1q_s32(v95, vrev64q_s32(v95)), vbslq_s8(vcgtq_f32(xmmword_19B7B74A0, v106), xmmword_19B7B74A0, v106));
  if (*a1 == 1)
  {
    *(a1 + 746) = 0;
    if (*(a1 + 1377) == *(a1 + 2753) && *(a1 + 1308) == *(a1 + 2615))
    {
      for (i = 50; i != 60; ++i)
      {
        v108 = *sub_19B5BFE1C(a1 + 2752, i);
        *(a1 + 1492) = *(a1 + 1492) + (v108 * *sub_19B5BFE1C(a1 + 2614, i));
      }

      for (j = 10; j != 60; ++j)
      {
        v110 = *sub_19B5BFE1C(a1 + 2752, j);
        v111 = *(a1 + 1493) + (v110 * *sub_19B5BFE1C(a1 + 2614, j));
        *(a1 + 1493) = v111;
      }

      v112.i32[0] = *(a1 + 1492);
      v112.f32[1] = v111;
      *(a1 + 746) = vbsl_s8(vcgez_f32(v112), vsqrt_f32(v112), vneg_f32(vsqrt_f32(vneg_f32(v112))));
      v113 = sub_19B5BC5F0(a1 + 642);
      v114 = sub_19B5BC5F0(a1 + 750);
      v115 = fabsf(v113);
      if (v114 < 0.17453)
      {
        v114 = 0.17453;
      }

      v116 = v115 / v114;
      *(a1 + 1491) = v116;
      if (v13[1880])
      {
        v117 = *(a1 + 1492) > 3.4907;
LABEL_106:
        v13[1880] = v117;
        goto LABEL_121;
      }

      if (v116 >= 4.0 && *(a1 + 1493) >= 12.217)
      {
        v117 = 1;
        goto LABEL_106;
      }
    }

LABEL_121:
    if (v13[1888])
    {
      v124 = fabsf(*(a1 + 1509));
      v13[1888] = v124 > 0.17453;
      if (v124 <= 0.17453)
      {
        *(a1 + 1495) = 0;
      }
    }

    else
    {
      v125 = fabsf(*(a1 + 1508));
      v126 = *(a1 + 1495);
      v127 = v126 - 5;
      if (v126 < 5)
      {
        v127 = 0;
      }

      if (v125 > 0.2618)
      {
        v128 = v126 + 1;
      }

      else
      {
        v128 = v127;
      }

      *(a1 + 1495) = v128;
      v13[1888] = v128 > 0x31;
    }

    v129 = *sub_19B5BFE1C(a1 + 2890, 6uLL);
    v130 = *(a1 + 2890) + *(a1 + 2891) - 1;
    v131 = *(a1 + 1446);
    if (v130 < v131)
    {
      v131 = 0;
    }

    v132 = *&a1[4 * (v130 - v131) + 5788];
    v133 = *(a1 + 1464);
    if (v133)
    {
      v134 = 0.0;
    }

    else
    {
      v134 = 0.087266;
    }

    v135 = *(a1 + 1458);
    v136 = v135 + v134;
    if ((v133 + 1) < 0x1F4)
    {
      v137 = v133 + 1;
    }

    else
    {
      v137 = 500;
    }

    if (v132 <= v136)
    {
      v137 = 0;
    }

    *(a1 + 1464) = v137;
    if ((v13[1757] & 1) != 0 || (v132 <= (v135 + 0.34907) ? (v138 = v137 > 0x19) : (v138 = 1), !v138 ? (v139 = 0) : (v139 = 1), v13[1757] = v139, v139 != 1))
    {
      v153 = *sub_19B5BFE1C(a1 + 2890, 6uLL);
      if (vabds_f32(v153, sub_19B5C0034(a1 + 2890, sub_19B5C024C, 0)) >= 0.0000001)
      {
        goto LABEL_167;
      }

      if (v13[1656] == 1)
      {
        sub_19B5BE7E0((v13 + 1656));
      }

      if (vabds_f32(v153, *(a1 + 1439)) >= 0.0000001)
      {
        v156 = 0;
        v154 = 0;
        v155 = 1;
      }

      else
      {
        if (vabds_f32(v153, sub_19B5C0034(a1 + 2890, sub_19B5C0258, 0)) >= 0.0000001)
        {
          goto LABEL_168;
        }

LABEL_167:
        if (v13[1656] == 1)
        {
          sub_19B5BE7E0((v13 + 1656));
        }

        if (vabds_f32(v153, *(a1 + 1439)) >= 0.0000001)
        {
          v155 = 0;
          v156 = 1;
          v154 = 1;
        }

        else
        {
LABEL_168:
          v154 = 0;
          v155 = 0;
          v156 = 1;
        }
      }

      if (v13[1757] == 1)
      {
        v157 = *(a1 + 1458);
        v13[1758] = v132 > (v157 + 0.69813);
        v158 = v13[1756];
        if ((v156 | v158) == 1)
        {
          if ((v158 & 1) == 0)
          {
            goto LABEL_185;
          }

          if ((*(a1 + 1462) - v132) <= fmaxf(*(a1 + 1462) * 0.5, 0.5236))
          {
            v154 = 0;
          }

          if (v154 == 1)
          {
            sub_19B5BE23C(a1, a7);
            goto LABEL_185;
          }
        }

        else
        {
          *(a1 + 1462) = v129;
          v13[1756] = 1;
        }

        v13[1757] = v132 > v157;
        v13[1758] = v132 > (v157 + 0.087266);
        if (v132 > v157)
        {
          goto LABEL_185;
        }

        sub_19B5BE23C(a1, a7);
      }

      if (*(a1 + 1446) == *(a1 + 2891))
      {
        if (v155)
        {
          v159 = *(a1 + 730);
          v160 = fmaxf(v129, 0.17453) + (v159++ * *(a1 + 1458));
          *(a1 + 1458) = v160 / v159;
          *(a1 + 730) = v159;
        }
      }

      else
      {
        *(a1 + 730) = 0;
        *(a1 + 1458) = 1057360530;
      }
    }

    else
    {
      *(a1 + 1462) = v129;
      v13[1756] = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
      }

      v140 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v141 = *(a1 + 1458);
        v142 = *(a1 + 1464);
        v143 = v13[1758];
        v144 = *(a1 + 1462);
        v145 = v13[1756];
        *buf = 134219520;
        v297 = v132;
        v298 = 2048;
        v299 = v141;
        v300 = 1024;
        *v301 = v142;
        *&v301[4] = 1024;
        *&v301[6] = v143;
        *v302 = 2048;
        *&v302[2] = v144;
        LOWORD(v303) = 1024;
        *(&v303 + 2) = v145;
        HIWORD(v303) = 2048;
        *v304 = a7;
        _os_log_impl(&dword_19B41C000, v140, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition] Entering body turn, body turn signal: %.2f, fBodyTurnMaximaBaseline: %0.2f, fCounterBodyTurnAboveBaseline: %d, fInStrongBodyTurn: %d, fLastInBodyTurnMaxima: %0.2f, fLastInBodyTurnFallingEdge: %d, timestamp: %llu", buf, 0x3Cu);
      }

      v146 = sub_19B420058();
      if (*(v146 + 160) > 1 || *(v146 + 164) > 1 || *(v146 + 168) > 1 || *(v146 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
        }

        v147 = *(a1 + 1458);
        v148 = *(a1 + 1464);
        v149 = v13[1758];
        v150 = *(a1 + 1462);
        v151 = v13[1756];
        v279 = 134219520;
        *&v280 = v132;
        v281 = 2048;
        v282 = v147;
        v283 = 1024;
        *v284 = v148;
        *&v284[4] = 1024;
        *&v284[6] = v149;
        *v285 = 2048;
        *&v285[2] = v150;
        LOWORD(v286) = 1024;
        *(&v286 + 2) = v151;
        HIWORD(v286) = 2048;
        *v287 = a7;
        v152 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::updateInBodyTurnState(const uint64_t)", "CoreLocation: %s\n", v152);
        if (v152 != buf)
        {
          free(v152);
        }
      }
    }

LABEL_185:
    *(v13 + 1865) = 0;
    v161 = *(a1 + 750);
    if (v161 && (*(a1 + 1508) + *(a1 + 1508)) <= 0.7854 && (v13[1888] & 1) == 0 && (v13[1880] & 1) == 0)
    {
      if ((v13[1928] & 1) == 0)
      {
        v161 = *(a1 + 751);
      }

      _CF = a7 >= v161;
      v162 = a7 - v161;
      if (_CF)
      {
        v163 = v162 < 0x1E8481 ? 1 : v13[1928];
        v13[1865] = v163;
        if (v163 == 1)
        {
          v164 = sub_19B5BE518((a1 + 5200), 20, 40);
          v165 = fabsf(*(a1 + 1504));
          v166 = fabsf((v164 * 40.0) / 50.0);
          v167 = v165 * 0.5;
          v138 = v165 <= 2.618;
          v168 = 1.309;
          if (v138)
          {
            v168 = v167;
          }

          v13[1866] = v166 < v168;
        }
      }
    }

    if (v13[1888] == 1)
    {
      v13[1864] = 1;
    }

    if (v13[1756] == 1)
    {
      v13[1864] = 0;
    }

    else
    {
      v169 = sub_19B5BC5F0(a1 + 642);
      v170 = *(a1 + 1489);
      v171 = fmaxf(v170, 0.2618);
      v172 = fabsf(v169);
      if (v13[1864])
      {
        v173 = v171 + 0.17453;
      }

      else
      {
        v174 = fmaxf(v170, 0.5236);
        v175 = 1.0;
        if (v13[1866])
        {
          v175 = 1.5;
        }

        v173 = v171 + (v175 * v174);
      }

      v13[1864] = v172 > v173;
      if (v172 > v173)
      {
        *(a1 + 1472) = 0;
        *(a1 + 367) = 0u;
        v13[1764] = 1;
LABEL_224:
        if (v13[1880])
        {
          v184 = 1;
        }

        else
        {
          v184 = v13[1888];
        }

        v13[1757] |= v184;
        goto LABEL_228;
      }
    }

    v176 = *sub_19B5BD934(a1 + 642, 0xCuLL);
    v177 = sub_19B5BF588(a1 + 642, 0, *(a1 + 643), 0);
    v178 = *sub_19B5BEA34(a1 + 642, v177);
    v179 = sub_19B5BF9A4(a1 + 642, 0, *(a1 + 643), 0);
    v180 = *sub_19B5BEA34(a1 + 642, v179);
    v181 = sub_19B5BFBC4(a1 + 642, 0, *(a1 + 643), 0);
    if (vabds_f32(v176, v178) < 0.0000001 && vabds_f32(v176, v181) >= 0.0000001 || vabds_f32(v176, v180) < 0.0000001 && vabds_f32(v176, v181) >= 0.0000001)
    {
      if (*(a1 + 643) <= 0xCu)
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
        }

        v265 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          *&v297 = 12;
          _os_log_impl(&dword_19B41C000, v265, OS_LOG_TYPE_FAULT, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 39,out of buffer range %zu.", buf, 0xCu);
        }

        v266 = sub_19B420058();
        if ((*(v266 + 160) & 0x80000000) == 0 || (*(v266 + 164) & 0x80000000) == 0 || (*(v266 + 168) & 0x80000000) == 0 || *(v266 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
          }

          v279 = 134217984;
          v280 = 12;
          v267 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "Element &CMVectorBufferBase<float, 1>::operator[](const size_t) [T = float, N = 1]", "CoreLocation: %s\n", v267);
          if (v267 != buf)
          {
            free(v267);
          }
        }
      }

      v182 = sub_19B5BEA34(a1 + 642, 0xCuLL);
      v183 = *v182;
      if (*v182 > (*(a1 + 1489) + 0.17453))
      {
        *(a1 + 1472) = 0;
        *(a1 + 367) = 0u;
        v13[1764] = 1;
      }

      *buf = fabsf(v183);
      sub_19B5BC034((a1 + 5860), buf);
    }

    if (*(a1 + 2945))
    {
      if (v13[1764] == 1)
      {
        sub_19B5BE7E0((v13 + 1764));
      }

      *(a1 + 1489) = *(a1 + 1466);
    }

    goto LABEL_224;
  }

LABEL_228:
  if (fabsf(sub_19B5BC5F0(a1 + 642)) <= 0.17453)
  {
    v185 = v13[956];
  }

  else
  {
    v185 = 1;
  }

  v186 = *a1;
  v187 = *(a1 + 1251);
  v188 = *(a1 + 1259);
  v189 = v187 > v188;
  if (*a1 && v187 <= v188)
  {
    v189 = v13[1758];
  }

  else
  {
    if (!*a1)
    {
      goto LABEL_238;
    }

    v189 = 1;
  }

  if (v13[1005] == 1)
  {
    v189 &= v13[1757];
  }

LABEL_238:
  if (fabsf(sub_19B5BC5F0(a1 + 750)) <= 0.087266)
  {
    v190 = v13[956];
  }

  else
  {
    v190 = 1;
  }

  v191 = *(a1 + 1252);
  v192 = v190 & (v191 > *(a1 + 1260));
  if (v186)
  {
    if (v185 & v189)
    {
      v193 = 1;
    }

    else
    {
      v193 = (v13[1005] ^ 1) & v192;
    }

    if (*(a1 + 1254) <= *(a1 + 1262))
    {
      v194 = (*(a1 + 1253) > *(a1 + 1261)) & ~v13[1005];
    }

    else
    {
      v194 = 1;
    }
  }

  else
  {
    v193 = v185 & v189 | v192;
    v194 = *(a1 + 1254) > *(a1 + 1262);
    if (*(a1 + 1253) > *(a1 + 1261))
    {
      v194 = 1;
    }
  }

  if ((v13[956] & 1) == 0)
  {
    v196 = v193 & v194;
    v13[956] = v196 & 1;
    if (v196)
    {
      if (!sub_19B5BC984(a1, a7) && (!v186 || (sub_19B5BC984(a1, a7) & 1) == 0 && (v13[1866] & 1) == 0 && (*(a1 + 749) + 200000.0) < a7))
      {
        *(a1 + 632) = 0;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
        }

        v197 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v198 = *(a1 + 1251);
          v199 = *(a1 + 1252);
          v200 = *(a1 + 1253);
          v201 = *(a1 + 1254);
          v202 = *(a1 + 1255);
          v203 = *(a1 + 1256);
          v204 = *(a1 + 1257);
          v205 = *(a1 + 1258);
          *buf = 134220288;
          v297 = *&a7;
          v298 = 2048;
          v299 = v198;
          v300 = 2048;
          *v301 = v199;
          *&v301[8] = 2048;
          *v302 = v200;
          *&v302[8] = 2048;
          v303 = v201;
          *v304 = 2048;
          *&v304[2] = v202;
          v305 = 2048;
          v306 = v203;
          v307 = 2048;
          v308 = v204;
          v309 = 2048;
          v310 = v205;
          v311 = 2048;
          v312 = 0xBFF0000000000000;
          _os_log_impl(&dword_19B41C000, v197, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition][Entering Complex Transition] Timestamp: %llu, VrtRotSim: %.2f, HrzRotSim: %.2f, VrtTrnSim: %.2f, HrzTrnSim: %.2f, VrtRotSimBln: %.2f, HrzRotSimBln: %.2f, VrtTrnSimBln: %.2f, HrzTrnSimBln: %.2f, TimeSincePureYawRot: %0.1f", buf, 0x66u);
        }

        v206 = sub_19B420058();
        if (*(v206 + 160) <= 1 && *(v206 + 164) <= 1 && *(v206 + 168) <= 1 && !*(v206 + 152))
        {
          goto LABEL_335;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
        }

        v207 = *(a1 + 1251);
        v208 = *(a1 + 1252);
        v209 = *(a1 + 1253);
        v210 = *(a1 + 1254);
        v211 = *(a1 + 1255);
        v212 = *(a1 + 1256);
        v213 = *(a1 + 1257);
        v214 = *(a1 + 1258);
        v279 = 134220288;
        v280 = a7;
        v281 = 2048;
        v282 = v207;
        v283 = 2048;
        *v284 = v208;
        *&v284[8] = 2048;
        *v285 = v209;
        *&v285[8] = 2048;
        v286 = v210;
        *v287 = 2048;
        *&v287[2] = v211;
        v288 = 2048;
        v289 = v212;
        v290 = 2048;
        v291 = v213;
        v292 = 2048;
        v293 = v214;
        v294 = 2048;
        v295 = 0xBFF0000000000000;
        v215 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::logEnteringComplexTransition(const uint64_t) const", "CoreLocation: %s\n", v215);
        goto LABEL_333;
      }

      v13[956] = 0;
    }

    goto LABEL_336;
  }

  if (*v70 <= 100.0)
  {
    if ((v191 <= 100.0) | v193 & 1)
    {
      LOBYTE(v195) = 0;
      goto LABEL_297;
    }
  }

  else if (v193)
  {
    LOBYTE(v195) = 0;
LABEL_298:
    *(a1 + 633) = 0;
    goto LABEL_299;
  }

  v216 = *(a1 + 633);
  v217 = sub_19B5BF0D0(a1 + 26, 0, *(a1 + 27));
  v218 = 0;
  *buf = v217;
  v297 = COERCE_DOUBLE(__PAIR64__(v220, v219));
  v221 = 0.0;
  do
  {
    v221 = v221 + (*&buf[v218] * *&buf[v218]);
    v218 += 4;
  }

  while (v218 != 12);
  v222 = sub_19B5BF0D0(a1 + 180, 0, *(a1 + 181));
  v223 = 0;
  *buf = v222;
  v297 = COERCE_DOUBLE(__PAIR64__(v225, v224));
  v226 = 0.0;
  do
  {
    v226 = v226 + (*&buf[v223] * *&buf[v223]);
    v223 += 4;
  }

  while (v223 != 12);
  v227 = sqrtf(v221);
  v229 = ((a7 - v216) * 0.000001) <= 5.0 || v216 == 0;
  v195 = fmaxf(v227, sqrtf(v226)) > 0.05236 && v229;
  if (v186)
  {
    if (v13[1005] == 1)
    {
      v230 = *(a1 + 2890) + *(a1 + 2891) - 1;
      v231 = *(a1 + 1446);
      if (v230 < v231)
      {
        v231 = 0;
      }

      v232 = *&a1[4 * (v230 - v231) + 5788] > 0.17453;
    }

    else
    {
      v232 = 1;
    }

    v195 &= v232;
  }

  if (!*(a1 + 633) && v195)
  {
    *(a1 + 633) = *&a7;
    LOBYTE(v195) = 1;
  }

LABEL_297:
  if (v193)
  {
    goto LABEL_298;
  }

LABEL_299:
  if (v13[1004])
  {
    v233 = 0;
  }

  else
  {
    v233 = v13[1000];
  }

  v234 = sub_19B5BC5F0(a1 + 642);
  v235 = sub_19B5BEE68(a1 + 642, *(a1 + 643));
  v236 = -v234;
  if (v234 > 0.0)
  {
    v236 = v234;
  }

  v238 = v235 < 0.0076154 && v236 < 0.087266;
  v239 = sub_19B5BC5F0(a1 + 696);
  v240 = sub_19B5BEE68(a1 + 696, *(a1 + 697));
  v241 = -v239;
  if (v239 > 0.0)
  {
    v241 = v239;
  }

  v242 = v238 && v241 < 0.087266;
  if (v240 >= 0.0076154)
  {
    v242 = 0;
  }

  v243 = ((v233 | v242) ^ 1) & (v193 | v195);
  v13[956] = v243 & 1;
  if (v186 && v13[1756] == 1 && *(a1 + 1492) < 1.7453)
  {
    v13[956] = 0;
    *(a1 + 749) = *&a7;
LABEL_319:
    *(a1 + 633) = 0;
    v244 = *(a1 + 632);
    if (v244)
    {
      v245 = ((a7 - v244) * 0.000001);
    }

    else
    {
      v245 = -1.0;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    v246 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v247 = *(a1 + 1251);
      v248 = *(a1 + 1252);
      v249 = *(a1 + 1253);
      v250 = *(a1 + 1254);
      v251 = *(a1 + 1255);
      v252 = *(a1 + 1256);
      v253 = *(a1 + 1257);
      v254 = *(a1 + 1258);
      *buf = 134220288;
      v297 = *&a7;
      v298 = 2048;
      v299 = v247;
      v300 = 2048;
      *v301 = v248;
      *&v301[8] = 2048;
      *v302 = v249;
      *&v302[8] = 2048;
      v303 = v250;
      *v304 = 2048;
      *&v304[2] = v251;
      v305 = 2048;
      v306 = v252;
      v307 = 2048;
      v308 = v253;
      v309 = 2048;
      v310 = v254;
      v311 = 2048;
      v312 = *&v245;
      _os_log_impl(&dword_19B41C000, v246, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition][Exiting Complex Transition] Timestamp: %llu, VrtRotSim: %.2f, HrzRotRim: %.2f, VrtTrnSim: %.2f, HrzTrnSim: %.2f, VrtRotSimBln: %.2f, HrzRotSimBln: %.2f, VrtTrnSimBln: %.2f, HrzTrnSimBln: %.2f, TimeSincePureYawRot: %0.1f", buf, 0x66u);
    }

    v255 = sub_19B420058();
    if (*(v255 + 160) <= 1 && *(v255 + 164) <= 1 && *(v255 + 168) <= 1 && !*(v255 + 152))
    {
      goto LABEL_335;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    v256 = *(a1 + 1251);
    v257 = *(a1 + 1252);
    v258 = *(a1 + 1253);
    v259 = *(a1 + 1254);
    v260 = *(a1 + 1255);
    v261 = *(a1 + 1256);
    v262 = *(a1 + 1257);
    v263 = *(a1 + 1258);
    v279 = 134220288;
    v280 = a7;
    v281 = 2048;
    v282 = v256;
    v283 = 2048;
    *v284 = v257;
    *&v284[8] = 2048;
    *v285 = v258;
    *&v285[8] = 2048;
    v286 = v259;
    *v287 = 2048;
    *&v287[2] = v260;
    v288 = 2048;
    v289 = v261;
    v290 = 2048;
    v291 = v262;
    v292 = 2048;
    v293 = v263;
    v294 = 2048;
    v295 = *&v245;
    v215 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::logExitingComplexTransition(const uint64_t) const", "CoreLocation: %s\n", v215);
LABEL_333:
    if (v215 != buf)
    {
      free(v215);
    }

LABEL_335:
    sub_19B5BCED8(a1);
    goto LABEL_336;
  }

  if ((v243 & 1) == 0)
  {
    goto LABEL_319;
  }

LABEL_336:
  v264 = *MEMORY[0x1E69E9840];
}

float32_t sub_19B5BBFC0(uint64_t a1)
{
  v2.f32[0] = sub_19B447000((a1 + 56));
  v3 = 0;
  v5 = v4 + *(a1 + 20);
  v2.i32[1] = v6;
  v8 = vadd_f32(*(a1 + 12), v2);
  v9 = v5;
  do
  {
    v8.f32[v3] = -v8.f32[v3];
    ++v3;
  }

  while (v3 != 3);
  return v8.f32[0];
}

unsigned __int16 *sub_19B5BC034(uint64_t a1, float *a2)
{
  if (*(a1 + 32) == *(a1 + 30))
  {
    v3 = *(a1 + 4 * *(a1 + 28) + 36);
    v4 = *(a1 + 12);
    v5 = (*a2 - v3) - *(a1 + 16);
    *(a1 + 12) = v4 + v5;
    *(a1 + 16) = ((v4 + v5) - v4) - v5;
    v6 = (v3 + *a2) * (*a2 - v3);
  }

  else
  {
    v7 = *(a1 + 12);
    v8 = *a2 - *(a1 + 16);
    *(a1 + 12) = v7 + v8;
    *(a1 + 16) = ((v7 + v8) - v7) - v8;
    v6 = *a2 * *a2;
  }

  v9 = *(a1 + 20);
  v10 = v6 - *(a1 + 24);
  *(a1 + 20) = v9 + v10;
  *(a1 + 24) = ((v9 + v10) - v9) - v10;
  result = sub_19B5BE78C((a1 + 28), a2);
  *a1 = 1;
  return result;
}

uint64_t sub_19B5BC0F0(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 3;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 3>::operator[](const size_t) [T = float, N = 3]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 4 * a2;
}

unsigned __int16 *sub_19B5BC2E8(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = sub_19B5BF2B8(a1, 0, a1[1]);
  v7 = v6;
  v11 = v8 * 0.02;
  sub_19B5BF528(a2, &v11);
  v10 = sqrtf((v5 * v5) + (v7 * v7)) * 0.02;
  return sub_19B5BF528(a3, &v10);
}

float sub_19B5BC378(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = sub_19B5BD934(a1, v4);
    v5 = v5 + (*v6 * *sub_19B5BD934(a2, v4++));
  }

  while (v4 != 25);
  return v5;
}

float sub_19B5BC3F0(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 104,mean() on empty buffer.", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T CMVectorBufferBase<float, 4>::mean(size_t, size_t, size_t) const [T = float, N = 4]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = sub_19B5BE81C(a1, v6);
    v7 = v7 + sub_19B5BDB18(v8, a3);
    ++v6;
  }

  while (a2 != v6);
  v9 = *MEMORY[0x1E69E9840];
  return v7 / a2;
}

float sub_19B5BC5F0(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v4 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 145,back() on empty buffer.", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element CMVectorBufferBase<float, 1>::back() const [T = float, N = 1]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  result = *sub_19B5BEA34(a1, a1[1] - 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B5BC7B8(unsigned __int16 *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 145,back() on empty buffer.", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element CMVectorBufferBase<float, 3>::back() const [T = float, N = 3]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v2 = sub_19B5BEC4C(a1, a1[1] - 1);
  result = *v2;
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5BC984(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4096;
  if (*(a1 + 5052) != 1)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 5056);
  if (!v4 || ((a2 - v4) * 0.000001) >= 3.0)
  {
    v5 = *(a1 + 5072);
    if (v5)
    {
      v6 = (a2 - v5) * 0.000001;
    }

    else
    {
      v6 = -1.0;
    }

    if (*(a1 + 5099))
    {
      goto LABEL_17;
    }

    v7 = sub_19B5BC5F0((a1 + 1284));
    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 >= 0.5236)
    {
LABEL_17:
      v9 = 0;
    }

    else
    {
      v9 = v6 < 0.5 && *(a1 + 5072) != 0;
    }

    if (*(v2 + 1004) & 1) == 0 && ((*(v2 + 1000) | v9))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
      }

      v10 = off_1EAFE29A0;
      v11 = v6;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v2 + 1000);
        v13 = *(a1 + 5080);
        *buf = 67109632;
        v21 = v12;
        v22 = 1024;
        v23 = v13;
        v24 = 2048;
        v25 = v11;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition][Head Turn Blocked CT] fInstantaneousHeadTurn: %d, fSustainedHeadTurnCounter: %d, time elapsed: %0.2f", buf, 0x18u);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
        }

        v18 = *(v2 + 1000);
        v19 = *(a1 + 5080);
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMComplexTransition::checkFalsePositiveSuppression(const uint64_t) const", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_32;
    }

LABEL_33:
    result = 0;
    goto LABEL_34;
  }

LABEL_32:
  result = 1;
LABEL_34:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5BCC5C(unsigned __int16 *a1, float a2, float a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED71C958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71C958))
  {
    qword_1ED71C960 = 0;
    dword_1ED71C968 = 1065353216;
    __cxa_guard_release(&qword_1ED71C958);
  }

  v6 = 0;
  v30[0] = 1;
  v34 = 0;
  v33 = 0;
  v35 = 0x1900000000;
  do
  {
    v7 = sub_19B5BF344(a1, v6);
    v8 = 0;
    v9 = 0.0;
    do
    {
      v9 = v9 + (*(v7 + v8) * *(v7 + v8));
      v8 += 4;
    }

    while (v8 != 12);
    if (sqrtf(v9) >= 0.000001)
    {
      v10 = sub_19B5BF344(a1, v6);
      v11 = sub_19B5BF344(a1, v6);
      v12 = 0;
      v13 = 0.0;
      do
      {
        v13 = v13 + (*(v11 + v12) * *(v11 + v12));
        v12 += 4;
      }

      while (v12 != 12);
      v14 = sqrtf(v13);
      v15 = (((v10[2] / v14) * *&dword_1ED71C968) + ((v10[1] / v14) * *(&qword_1ED71C960 + 1))) + ((*v10 / v14) * *&qword_1ED71C960);
      v16 = 1.0;
      if (v15 <= 1.0)
      {
        v16 = -1.0;
        if (v15 >= -1.0)
        {
          v16 = v15;
        }
      }

      v17 = acosf(v16);
      if (v17 <= 0.0)
      {
        v17 = -v17;
      }

      v18 = 3.14159265 - v17;
      if (v18 <= v17)
      {
        v17 = v18;
      }

      v29 = v17;
      sub_19B5BC034(v30, &v29);
    }

    else
    {
      v29 = 0.0;
      sub_19B5BC034(v30, &v29);
    }

    ++v6;
  }

  while (v6 != 25);
  if (v30[0] == 1)
  {
    sub_19B5BE7E0(v30);
    v19 = v32;
    if (v30[0])
    {
      sub_19B5BE7E0(v30);
    }
  }

  else
  {
    v19 = v32;
  }

  if (v19 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = v31;
  sub_19B5BF0D0(a1, 0, a1[1]);
  v23 = sqrtf(v20);
  v24 = -v22;
  if (v22 > 0.0)
  {
    v24 = v22;
  }

  v26 = v21 < a2 && v23 < a3;
  v27 = *MEMORY[0x1E69E9840];
  return v26 & (v24 > 0.087266);
}

void sub_19B5BCED8(unsigned __int16 *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
  }

  v2 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_19B5BF588(a1 + 642, 0, a1[643], 0);
    v4 = (*sub_19B5BEA34(a1 + 642, v3) * 57.296);
    v5 = (sub_19B5BF7A8(a1 + 642, a1[643]) * 57.296);
    v6 = sub_19B5BF9A4(a1 + 642, 0, a1[643], 0);
    v7 = (*sub_19B5BEA34(a1 + 642, v6) * 57.296);
    v8 = (sub_19B5BD770(a1 + 642) * 57.296);
    v9 = (*sub_19B5BD934(a1 + 642, 0xCuLL) * 57.296);
    *buf = 134219264;
    v29 = v4;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v7;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    v38 = 2048;
    v39 = (sub_19B5BC5F0(a1 + 642) * 57.296);
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition] Src inertial-Z rot rate buffer stats (dps): Min: %.2f, Mean: %.2f, Max: %.2f, First: %.2f, Mid: %.2f, Last: %.2f ", buf, 0x3Eu);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    sub_19B5BD4FC(a1 + 642);
    v24 = (sub_19B5BF7A8(a1 + 642, a1[643]) * 57.296);
    sub_19B5BD730(a1 + 642);
    sub_19B5BD770(a1 + 642);
    v26 = (*sub_19B5BD934(a1 + 642, 0xCuLL) * 57.296);
    sub_19B5BC5F0(a1 + 642);
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::logVerticalRotationBufferStats(const uint64_t) const", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
  }

  v12 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_19B5BF588(a1 + 696, 0, a1[697], 0);
    v14 = (*sub_19B5BEA34(a1 + 696, v13) * 57.296);
    v15 = (sub_19B5BF7A8(a1 + 696, a1[697]) * 57.296);
    v16 = sub_19B5BF9A4(a1 + 696, 0, a1[697], 0);
    v17 = (*sub_19B5BEA34(a1 + 696, v16) * 57.296);
    v18 = (sub_19B5BD770(a1 + 696) * 57.296);
    v19 = (*sub_19B5BD934(a1 + 696, 0xCuLL) * 57.296);
    v20 = sub_19B5BC5F0(a1 + 696);
    *buf = 134219264;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    v32 = 2048;
    v33 = v17;
    v34 = 2048;
    v35 = v18;
    v36 = 2048;
    v37 = v19;
    v38 = 2048;
    v39 = (v20 * 57.296);
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition] Aux inertial-Z rot rate buffer stats (dps): Min: %.2f, Mean: %.2f, Max: %.2f, First: %.2f, Mid: %.2f, Last: %.2f ", buf, 0x3Eu);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    sub_19B5BD4FC(a1 + 696);
    v25 = (sub_19B5BF7A8(a1 + 696, a1[697]) * 57.296);
    sub_19B5BD730(a1 + 696);
    sub_19B5BD770(a1 + 696);
    v27 = (*sub_19B5BD934(a1 + 696, 0xCuLL) * 57.296);
    sub_19B5BC5F0(a1 + 696);
    v22 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::logVerticalRotationBufferStats(const uint64_t) const", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

float sub_19B5BD53C(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 1;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 1>::operator[](const size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B5BD770(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v4 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 139,front() on empty buffer.", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element CMVectorBufferBase<float, 1>::front() const [T = float, N = 1]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  result = *sub_19B5BEA34(a1, 0);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5BD934(unsigned __int16 *a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1[1] <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v10 = a2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 45,out of buffer range %zu.", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const Element &CMVectorBufferBase<float, 1>::operator[](const size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = sub_19B5BEA34(a1, a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B5BDB18(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 4)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 4;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 4>::operator[](const size_t) const [T = float, N = 4]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5BDD10(void *a1)
{
  sub_19B5BE628((a1 + 638), a1[638]);
  sub_19B5BDFDC(a1 + 638);
  sub_19B5BE628((a1 + 641), a1[641]);
  sub_19B5BDFDC(a1 + 641);
  sub_19B5BE628((a1 + 644), a1[644]);
  sub_19B5BDFDC(a1 + 644);
  sub_19B5BE628((a1 + 647), a1[647]);
  sub_19B5BDFDC(a1 + 647);
  operator new();
}

void sub_19B5BDFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x19EAE76F0](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5BDFDC(void *result)
{
  v9 = *result;
  if (result[2] - *result <= 0x10uLL)
  {
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v15 = v3;
    v16 = v2;
    v17 = v1;
    v18 = v7;
    v19 = v8;
    v10 = result[1] - v9;
    v11 = result;
    operator new();
  }

  return result;
}

uint64_t sub_19B5BE08C(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (v4 >= v3)
  {
    v7 = *result;
    v8 = v4 - *result;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_19B5BE690();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v15[4] = result;
    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_19B4C5080();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *v2 = 0;
    v2[1] = v6;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v7;
    v15[3] = v14;
    v15[0] = v7;
    v15[1] = v7;
    result = sub_19B5BE6A8(v15);
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  v2[1] = v6;
  return result;
}

BOOL sub_19B5BE1A8(float *a1, float a2)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = v2 - 1;
    v3 = *(a1 + 1);
    if ((v3 + 1) <= 4)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    a1[v4 + 4] = a2;
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 1);
    if ((v6 + 1) <= 4)
    {
      v4 = v6 + 1;
    }

    else
    {
      v4 = 0;
    }

    a1[v4 + 4] = a2;
    a2 = 0.0;
    do
    {
      a2 = a2 + (a1[v5 + 13 - v4] * a1[v5 + 4]);
      ++v5;
    }

    while (v5 != 5);
  }

  v7 = v2 == 0;
  if ((v4 + 1) <= 4)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 1) = v8;
  a1[v8 + 4] = a2;
  return v7;
}

void sub_19B5BE23C(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  *(a1 + 5856) = 0;
  *(a1 + 5848) = 0;
  *(a1 + 5851) = 0;
  *(a1 + 5840) >>= 1;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 5780) + *(a1 + 5782) - 1;
    v6 = *(a1 + 5784);
    if (v5 < v6)
    {
      v6 = 0;
    }

    v7 = *(a1 + 4 * (v5 - v6) + 5788);
    v8 = *(a1 + 5832);
    v9 = *(a1 + 5856);
    v10 = *(a1 + 5848);
    v11 = *(a1 + 5852);
    *buf = 134219264;
    v23 = v7;
    v24 = 2048;
    v25 = v8;
    v26 = 1024;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    v30 = 1024;
    v31 = v11;
    v32 = 2048;
    v33 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition] Exiting body turn, body turn signal: %.2f, fBodyTurnMaximaBaseline: %0.2f, fCounterBodyTurnAboveBaseline: %d, fLastInBodyTurnMaxima: %0.2f, fLastInBodyTurnFallingEdge: %d, timestamp: %llu", buf, 0x36u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    v13 = *(a1 + 5780) + *(a1 + 5782) - 1;
    v14 = *(a1 + 5784);
    if (v13 < v14)
    {
      v14 = 0;
    }

    v17 = *(a1 + 4 * (v13 - v14) + 5788);
    v18 = *(a1 + 5832);
    v19 = *(a1 + 5856);
    v20 = *(a1 + 5848);
    v21 = *(a1 + 5852);
    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::onBodyTurnStateExit(const uint64_t)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

float sub_19B5BE518(uint64_t a1, int a2, int a3)
{
  if (a3 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v5 = a2;
    v6 = 0.0;
    v7 = 0.0;
    v8 = a3;
    do
    {
      v9 = *sub_19B5BFE1C((a1 + 28), v5) - v7;
      v10 = v6 + v9;
      v7 = ((v6 + v9) - v6) - v9;
      ++v5;
      v6 = v6 + v9;
      --v8;
    }

    while (v8);
  }

  return v10 / a3;
}

void sub_19B5BE5A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B5BE628(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

os_log_t sub_19B5BE5F8()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t sub_19B5BE628(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x19EAE76F0](result, 0x1000C40FF89C88ELL);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_19B5BE6A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x19EAE76F0](v4, 0x1000C40FF89C88ELL);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int16 *sub_19B5BE720(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[6 * (v3 - v2)];
  v5 = *(a2 + 8);
  *(v4 + 1) = *a2;
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

unsigned __int16 *sub_19B5BE78C(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

uint64_t sub_19B5BE7E0(uint64_t result)
{
  v1 = *(result + 30);
  if (v1 > 1)
  {
    v4 = *(result + 12);
    v2 = v4 / v1;
    v3 = (*(result + 20) - (v4 * v2)) / v1;
  }

  else
  {
    v2 = *(result + 12);
    v3 = 0.0;
  }

  *(result + 4) = v2;
  *(result + 8) = v3;
  *result = 0;
  return result;
}

uint64_t sub_19B5BE81C(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 4>>::operator[](const size_t) const [T = CMVector<float, 4>]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[8 * (v4 - v5) + 4];
}

uint64_t sub_19B5BEA34(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 1>>::operator[](const size_t) const [T = CMVector<float, 1>]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[2 * (v4 - v5) + 4];
}

uint64_t sub_19B5BEC4C(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 3>>::operator[](const size_t) const [T = CMVector<float, 3>]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[6 * (v4 - v5) + 4];
}

float sub_19B5BEE68(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v13 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 210,variance() on empty buffer.", buf, 2u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const CMVector<T, N> CMVectorBufferBase<float, 1>::variance(size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v4 = 1.0 / a2;
  v5 = *sub_19B5BEA34(a1, 0);
  v6 = v4 * v5;
  if (a2 < 2)
  {
    v8 = v4 * ((v5 - v6) * (v5 - v6));
  }

  else
  {
    v7 = 1;
    do
    {
      v6 = v6 + (v4 * *sub_19B5BEA34(a1, v7++));
    }

    while (a2 != v7);
    v8 = v4 * ((v5 - v6) * (v5 - v6));
    v9 = 1;
    do
    {
      v10 = sub_19B5BEA34(a1, v9);
      v8 = v8 + (v4 * ((*v10 - v6) * (*v10 - v6)));
      ++v9;
    }

    while (a2 != v9);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

float sub_19B5BF0D0(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v9 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 93,mean() on empty buffer.", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const Element CMVectorBufferBase<float, 3>::mean(size_t, size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v6 = sub_19B5BF2B8(a1, a2, a3);
  v7 = *MEMORY[0x1E69E9840];
  return v6 / (a3 - a2);
}

float sub_19B5BF2B8(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if (a2 < a3)
  {
    v7 = a2;
    do
    {
      v9 = sub_19B5BEC4C(a1, v7);
      v3 = v3 + *v9;
      v4 = v4 + v9[1];
      v5 = v5 + v9[2];
      ++v7;
    }

    while (a3 != v7);
  }

  return v3;
}

uint64_t sub_19B5BF344(unsigned __int16 *a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1[1] <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v10 = a2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 45,out of buffer range %zu.", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const Element &CMVectorBufferBase<float, 3>::operator[](const size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = sub_19B5BEC4C(a1, a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int16 *sub_19B5BF528(unsigned __int16 *result, _DWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[2 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

unint64_t sub_19B5BF588(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v14 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 183,minElement() on empty buffer.", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "size_t CMVectorBufferBase<float, 1>::minElement(size_t, size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v8 = a2 + 1;
  if (a2 + 1 < a3)
  {
    do
    {
      v9 = sub_19B5BEA34(a1, v8);
      v10 = sub_19B5BD53C(v9, a4);
      v11 = sub_19B5BEA34(a1, a2);
      if (v10 < sub_19B5BD53C(v11, a4))
      {
        a2 = v8;
      }

      ++v8;
    }

    while (a3 != v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

float sub_19B5BF7A8(unsigned __int16 *a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 93,mean() on empty buffer.", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const Element CMVectorBufferBase<float, 1>::mean(size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a2)
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v5 = v5 + *sub_19B5BEA34(a1, v4++);
    }

    while (a2 != v4);
  }

  else
  {
    v5 = 0.0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5 / a2;
}

unint64_t sub_19B5BF9A4(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v14 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 161,maxElement() on empty buffer.", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "size_t CMVectorBufferBase<float, 1>::maxElement(size_t, size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v8 = a2 + 1;
  if (a2 + 1 < a3)
  {
    do
    {
      v9 = sub_19B5BEA34(a1, v8);
      v10 = sub_19B5BD53C(v9, a4);
      v11 = sub_19B5BEA34(a1, a2);
      if (v10 > sub_19B5BD53C(v11, a4))
      {
        a2 = v8;
      }

      ++v8;
    }

    while (a3 != v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

float sub_19B5BFBC4(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 104,mean() on empty buffer.", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T CMVectorBufferBase<float, 1>::mean(size_t, size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v8 = sub_19B5BFDAC(a1, a2, a3, a4);
  v9 = *MEMORY[0x1E69E9840];
  return v8 / (a3 - a2);
}

float sub_19B5BFDAC(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = 0.0;
  if (a2 < a3)
  {
    v7 = a2;
    do
    {
      v9 = sub_19B5BEA34(a1, v7);
      v4 = v4 + sub_19B5BD53C(v9, a4);
      ++v7;
    }

    while (a3 != v7);
  }

  return v4;
}

uint64_t sub_19B5BFE1C(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<float>::operator[](const size_t) const [T = float]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[2 * (v4 - v5) + 4];
}

float sub_19B5C0034(unsigned __int16 *a1, unsigned int (*a2)(float, float), unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v12 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<float>::getComparison(int (*)(const T, const T), size_t) const [T = float]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v7 = *sub_19B5BFE1C(a1, a3);
  if (v6 > a3)
  {
    do
    {
      v8 = sub_19B5BFE1C(a1, a3);
      v9 = *v8;
      if (a2(*v8, v7))
      {
        v7 = v9;
      }

      ++a3;
    }

    while (v6 != a3);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}