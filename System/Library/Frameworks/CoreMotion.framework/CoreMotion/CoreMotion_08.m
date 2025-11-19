uint64_t sub_19B4885B8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 80) & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 80);
  if ((v10 & 8) == 0)
  {
    if ((*(v3 + 80) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = *(v3 + 72);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 80) & 1) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  v11 = *(v3 + 76);
  result = PB::Writer::write(this);
  v10 = *(v3 + 80);
  if ((v10 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    return result;
  }

LABEL_15:
  v13 = *(v3 + 56);

  return PB::Writer::write(this, v13);
}

uint64_t sub_19B4886A8(uint64_t result)
{
  *result = &unk_1F0E2F770;
  *(result + 16) = 0;
  return result;
}

void sub_19B4886D0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B488708(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "location");
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "temperature", *(a1 + 12));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B488784(uint64_t a1, PB::Reader *this)
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

      else if ((v10 >> 3) == 1)
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

uint64_t sub_19B488A50(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 12));
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B488ABC(uint64_t result)
{
  *result = &unk_1F0E38670;
  *(result + 20) = 0;
  return result;
}

void sub_19B488AE4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B488B1C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "inShower");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B488B98(uint64_t a1, PB::Reader *this)
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
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
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

        *(a1 + 16) = v23;
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
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_19B488DA4(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B488E10(uint64_t result)
{
  *result = &unk_1F0E386A8;
  *(result + 20) = 0;
  return result;
}

void sub_19B488E38(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B488E70(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "hapticOn");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B488EEC(uint64_t a1, PB::Reader *this)
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
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
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

        *(a1 + 16) = v23;
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
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_19B4890F8(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B489164(uint64_t result)
{
  *result = &unk_1F0E2F738;
  *(result + 44) = 0;
  return result;
}

void sub_19B48918C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4891C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "stepIndexOfHarmonicityAP", *(a1 + 16));
    v5 = *(a1 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "stepIndexOfHarmonicityML", *(a1 + 20));
  v5 = *(a1 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityVT", *(a1 + 24));
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityAP", *(a1 + 28));
  v5 = *(a1 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityML", *(a1 + 32));
  v5 = *(a1 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityVT", *(a1 + 36));
  v5 = *(a1 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(this, "thetaAPDirRad", *(a1 + 40));
  if (*(a1 + 44))
  {
LABEL_9:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_10:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B489308(uint64_t a1, PB::Reader *this)
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
            *(a1 + 44) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_60:
              *(this + 24) = 1;
              goto LABEL_78;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_72;
          }

          if (v22 == 8)
          {
            *(a1 + 44) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_60;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_72;
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
              goto LABEL_60;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_72;
          }

          if (v22 == 6)
          {
            *(a1 + 44) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_60;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_72;
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
            goto LABEL_60;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_72;
        }

        if (v22 == 4)
        {
          *(a1 + 44) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_60;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_72;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 44) |= 1u;
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
                v27 = 0;
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
                v27 = 0;
                goto LABEL_76;
              }
            }

            if (*(this + 24))
            {
              v27 = 0;
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_77:
          *(a1 + 8) = v27;
          goto LABEL_78;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_60;
          }

          *(a1 + 40) = *(*this + v2);
LABEL_72:
          v2 = *(this + 1) + 4;
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

uint64_t sub_19B48976C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 44);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 44) & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 44) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_17:
  v6 = *(v3 + 36);

  return PB::Writer::write(this, v6);
}

double sub_19B489884(uint64_t a1)
{
  *a1 = &unk_1F0E386E0;
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_19B4898C4(PB::Base *this)
{
  *this = &unk_1F0E386E0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

void sub_19B489958(PB::Base *a1)
{
  sub_19B4898C4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B489990(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 172);
  if (v5)
  {
    PB::TextFormatter::format(this, "covTraceAfterCorrection", *(a1 + 104));
    v5 = *(a1 + 172);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "covTraceBeforeCorrection", *(a1 + 112));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "dX", v8);
  }

  v9 = *(a1 + 172);
  if ((v9 & 4) != 0)
  {
    PB::TextFormatter::format(this, "lastStateTimestamp", *(a1 + 120));
    v9 = *(a1 + 172);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(this, "lidAngleDeg", *(a1 + 128));
  if ((*(a1 + 172) & 0x100) != 0)
  {
LABEL_10:
    v10 = *(a1 + 168);
    PB::TextFormatter::format(this, "measurementUpdateType");
  }

LABEL_11:
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "residual", v13);
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "stateQfbAfterCorrection", v16);
  }

  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(this, "stateQfbBeforeCorrection", v19);
  }

  v20 = *(a1 + 172);
  if ((v20 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 136));
    v20 = *(a1 + 172);
    if ((v20 & 0x20) == 0)
    {
LABEL_19:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }
  }

  else if ((v20 & 0x20) == 0)
  {
    goto LABEL_19;
  }

  PB::TextFormatter::format(this, "wAuxBudNormMeanDps", *(a1 + 144));
  v20 = *(a1 + 172);
  if ((v20 & 0x40) == 0)
  {
LABEL_20:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_30:
  PB::TextFormatter::format(this, "wAuxFaceNormMeanDps", *(a1 + 152));
  if ((*(a1 + 172) & 0x80) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(this, "wSrcNormMeanDps", *(a1 + 160));
  }

LABEL_22:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B489BAC(uint64_t a1, PB::Reader *this)
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
        goto LABEL_211;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 172) |= 0x10u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_204;
          }

          *(a1 + 136) = *(*this + v23);
          goto LABEL_206;
        case 2u:
          *(a1 + 172) |= 0x100u;
          v77 = *(this + 1);
          v76 = *(this + 2);
          v78 = *this;
          if (v77 <= 0xFFFFFFFFFFFFFFF5 && v77 + 10 <= v76)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v82 = (v78 + v77);
            v83 = v77 + 1;
            do
            {
              *(this + 1) = v83;
              v84 = *v82++;
              v81 |= (v84 & 0x7F) << v79;
              if ((v84 & 0x80) == 0)
              {
                goto LABEL_189;
              }

              v79 += 7;
              ++v83;
              v14 = v80++ > 8;
            }

            while (!v14);
LABEL_149:
            LODWORD(v81) = 0;
            goto LABEL_189;
          }

          v109 = 0;
          v110 = 0;
          v81 = 0;
          v17 = v76 >= v77;
          v111 = v76 - v77;
          if (!v17)
          {
            v111 = 0;
          }

          v112 = (v78 + v77);
          v113 = v77 + 1;
          while (2)
          {
            if (v111)
            {
              v114 = *v112;
              *(this + 1) = v113;
              v81 |= (v114 & 0x7F) << v109;
              if (v114 < 0)
              {
                v109 += 7;
                --v111;
                ++v112;
                ++v113;
                v14 = v110++ > 8;
                if (v14)
                {
                  goto LABEL_149;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              LODWORD(v81) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_189:
          *(a1 + 168) = v81;
          goto LABEL_207;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_213;
            }

            v28 = *(this + 1);
            v29 = *(this + 2);
            while (v28 < v29 && (*(this + 24) & 1) == 0)
            {
              v31 = *(a1 + 88);
              v30 = *(a1 + 96);
              if (v31 >= v30)
              {
                v33 = *(a1 + 80);
                v34 = v31 - v33;
                v35 = (v31 - v33) >> 3;
                v36 = v35 + 1;
                if ((v35 + 1) >> 61)
                {
                  goto LABEL_214;
                }

                v37 = v30 - v33;
                if (v37 >> 2 > v36)
                {
                  v36 = v37 >> 2;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v38 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  sub_19B4C50F0(a1 + 80, v38);
                }

                v39 = (v31 - v33) >> 3;
                v40 = (8 * v35);
                v41 = (8 * v35 - 8 * v39);
                *v40 = 0;
                v32 = v40 + 1;
                memcpy(v41, v33, v34);
                v42 = *(a1 + 80);
                *(a1 + 80) = v41;
                *(a1 + 88) = v32;
                *(a1 + 96) = 0;
                if (v42)
                {
                  operator delete(v42);
                }
              }

              else
              {
                *v31 = 0;
                v32 = v31 + 8;
              }

              *(a1 + 88) = v32;
              v43 = *(this + 1);
              if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(this + 2))
              {
                goto LABEL_136;
              }

              *(v32 - 1) = *(*this + v43);
              v29 = *(this + 2);
              v28 = *(this + 1) + 8;
              *(this + 1) = v28;
            }

            goto LABEL_137;
          }

          v105 = *(a1 + 88);
          v104 = *(a1 + 96);
          if (v105 >= v104)
          {
            v119 = *(a1 + 80);
            v120 = v105 - v119;
            v121 = (v105 - v119) >> 3;
            v122 = v121 + 1;
            if ((v121 + 1) >> 61)
            {
              goto LABEL_214;
            }

            v123 = v104 - v119;
            if (v123 >> 2 > v122)
            {
              v122 = v123 >> 2;
            }

            if (v123 >= 0x7FFFFFFFFFFFFFF8)
            {
              v124 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v124 = v122;
            }

            if (v124)
            {
              sub_19B4C50F0(a1 + 80, v124);
            }

            v143 = (v105 - v119) >> 3;
            v144 = (8 * v121);
            v145 = (8 * v121 - 8 * v143);
            *v144 = 0;
            v106 = v144 + 1;
            memcpy(v145, v119, v120);
            v146 = *(a1 + 80);
            *(a1 + 80) = v145;
            *(a1 + 88) = v106;
            *(a1 + 96) = 0;
            if (v146)
            {
              operator delete(v146);
            }
          }

          else
          {
            *v105 = 0;
            v106 = v105 + 8;
          }

          *(a1 + 88) = v106;
          goto LABEL_202;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_213;
            }

            v44 = *(this + 1);
            v45 = *(this + 2);
            while (v44 < v45 && (*(this + 24) & 1) == 0)
            {
              v47 = *(a1 + 64);
              v46 = *(a1 + 72);
              if (v47 >= v46)
              {
                v49 = *(a1 + 56);
                v50 = v47 - v49;
                v51 = (v47 - v49) >> 3;
                v52 = v51 + 1;
                if ((v51 + 1) >> 61)
                {
                  goto LABEL_214;
                }

                v53 = v46 - v49;
                if (v53 >> 2 > v52)
                {
                  v52 = v53 >> 2;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v54 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v54 = v52;
                }

                if (v54)
                {
                  sub_19B4C50F0(a1 + 56, v54);
                }

                v55 = (v47 - v49) >> 3;
                v56 = (8 * v51);
                v57 = (8 * v51 - 8 * v55);
                *v56 = 0;
                v48 = v56 + 1;
                memcpy(v57, v49, v50);
                v58 = *(a1 + 56);
                *(a1 + 56) = v57;
                *(a1 + 64) = v48;
                *(a1 + 72) = 0;
                if (v58)
                {
                  operator delete(v58);
                }
              }

              else
              {
                *v47 = 0;
                v48 = v47 + 8;
              }

              *(a1 + 64) = v48;
              v59 = *(this + 1);
              if (v59 > 0xFFFFFFFFFFFFFFF7 || v59 + 8 > *(this + 2))
              {
                goto LABEL_136;
              }

              *(v48 - 1) = *(*this + v59);
              v45 = *(this + 2);
              v44 = *(this + 1) + 8;
              *(this + 1) = v44;
            }

            goto LABEL_137;
          }

          v108 = *(a1 + 64);
          v107 = *(a1 + 72);
          if (v108 >= v107)
          {
            v125 = *(a1 + 56);
            v126 = v108 - v125;
            v127 = (v108 - v125) >> 3;
            v128 = v127 + 1;
            if ((v127 + 1) >> 61)
            {
              goto LABEL_214;
            }

            v129 = v107 - v125;
            if (v129 >> 2 > v128)
            {
              v128 = v129 >> 2;
            }

            if (v129 >= 0x7FFFFFFFFFFFFFF8)
            {
              v130 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v130 = v128;
            }

            if (v130)
            {
              sub_19B4C50F0(a1 + 56, v130);
            }

            v147 = (v108 - v125) >> 3;
            v148 = (8 * v127);
            v149 = (8 * v127 - 8 * v147);
            *v148 = 0;
            v106 = v148 + 1;
            memcpy(v149, v125, v126);
            v150 = *(a1 + 56);
            *(a1 + 56) = v149;
            *(a1 + 64) = v106;
            *(a1 + 72) = 0;
            if (v150)
            {
              operator delete(v150);
            }
          }

          else
          {
            *v108 = 0;
            v106 = v108 + 8;
          }

          *(a1 + 64) = v106;
          goto LABEL_202;
        case 5u:
          *(a1 + 172) |= 2u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
          {
            goto LABEL_204;
          }

          *(a1 + 112) = *(*this + v25);
          goto LABEL_206;
        case 6u:
          *(a1 + 172) |= 1u;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFF7 || v85 + 8 > *(this + 2))
          {
            goto LABEL_204;
          }

          *(a1 + 104) = *(*this + v85);
          goto LABEL_206;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_213:
              v160 = 0;
              return v160 & 1;
            }

            v86 = *(this + 1);
            v87 = *(this + 2);
            while (v86 < v87 && (*(this + 24) & 1) == 0)
            {
              v89 = *(a1 + 40);
              v88 = *(a1 + 48);
              if (v89 >= v88)
              {
                v91 = *(a1 + 32);
                v92 = v89 - v91;
                v93 = (v89 - v91) >> 3;
                v94 = v93 + 1;
                if ((v93 + 1) >> 61)
                {
                  goto LABEL_214;
                }

                v95 = v88 - v91;
                if (v95 >> 2 > v94)
                {
                  v94 = v95 >> 2;
                }

                if (v95 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v96 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v96 = v94;
                }

                if (v96)
                {
                  sub_19B4C50F0(a1 + 32, v96);
                }

                v97 = (v89 - v91) >> 3;
                v98 = (8 * v93);
                v99 = (8 * v93 - 8 * v97);
                *v98 = 0;
                v90 = v98 + 1;
                memcpy(v99, v91, v92);
                v100 = *(a1 + 32);
                *(a1 + 32) = v99;
                *(a1 + 40) = v90;
                *(a1 + 48) = 0;
                if (v100)
                {
                  operator delete(v100);
                }
              }

              else
              {
                *v89 = 0;
                v90 = v89 + 8;
              }

              *(a1 + 40) = v90;
              v101 = *(this + 1);
              if (v101 > 0xFFFFFFFFFFFFFFF7 || v101 + 8 > *(this + 2))
              {
                goto LABEL_136;
              }

              *(v90 - 1) = *(*this + v101);
              v87 = *(this + 2);
              v86 = *(this + 1) + 8;
              *(this + 1) = v86;
            }

LABEL_137:
            PB::Reader::recallMark();
          }

          else
          {
            v118 = *(a1 + 40);
            v117 = *(a1 + 48);
            if (v118 >= v117)
            {
              v137 = *(a1 + 32);
              v138 = v118 - v137;
              v139 = (v118 - v137) >> 3;
              v140 = v139 + 1;
              if ((v139 + 1) >> 61)
              {
LABEL_214:
                sub_19B5BE690();
              }

              v141 = v117 - v137;
              if (v141 >> 2 > v140)
              {
                v140 = v141 >> 2;
              }

              if (v141 >= 0x7FFFFFFFFFFFFFF8)
              {
                v142 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v142 = v140;
              }

              if (v142)
              {
                sub_19B4C50F0(a1 + 32, v142);
              }

              v155 = (v118 - v137) >> 3;
              v156 = (8 * v139);
              v157 = (8 * v139 - 8 * v155);
              *v156 = 0;
              v106 = v156 + 1;
              memcpy(v157, v137, v138);
              v158 = *(a1 + 32);
              *(a1 + 32) = v157;
              *(a1 + 40) = v106;
              *(a1 + 48) = 0;
              if (v158)
              {
                operator delete(v158);
              }
            }

            else
            {
              *v118 = 0;
              v106 = v118 + 8;
            }

            *(a1 + 40) = v106;
LABEL_202:
            v159 = *(this + 1);
            if (v159 <= 0xFFFFFFFFFFFFFFF7 && v159 + 8 <= *(this + 2))
            {
              *(v106 - 1) = *(*this + v159);
LABEL_206:
              *(this + 1) += 8;
            }

            else
            {
LABEL_204:
              *(this + 24) = 1;
            }
          }

LABEL_207:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_211;
          }

          break;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_213;
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
                v67 = (v63 - v65) >> 3;
                v68 = v67 + 1;
                if ((v67 + 1) >> 61)
                {
                  goto LABEL_214;
                }

                v69 = v62 - v65;
                if (v69 >> 2 > v68)
                {
                  v68 = v69 >> 2;
                }

                if (v69 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v70 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v68;
                }

                if (v70)
                {
                  sub_19B4C50F0(a1 + 8, v70);
                }

                v71 = (v63 - v65) >> 3;
                v72 = (8 * v67);
                v73 = (8 * v67 - 8 * v71);
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
                v64 = v63 + 8;
              }

              *(a1 + 16) = v64;
              v75 = *(this + 1);
              if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(this + 2))
              {
LABEL_136:
                *(this + 24) = 1;
                goto LABEL_137;
              }

              *(v64 - 1) = *(*this + v75);
              v61 = *(this + 2);
              v60 = *(this + 1) + 8;
              *(this + 1) = v60;
            }

            goto LABEL_137;
          }

          v116 = *(a1 + 16);
          v115 = *(a1 + 24);
          if (v116 >= v115)
          {
            v131 = *(a1 + 8);
            v132 = v116 - v131;
            v133 = (v116 - v131) >> 3;
            v134 = v133 + 1;
            if ((v133 + 1) >> 61)
            {
              goto LABEL_214;
            }

            v135 = v115 - v131;
            if (v135 >> 2 > v134)
            {
              v134 = v135 >> 2;
            }

            if (v135 >= 0x7FFFFFFFFFFFFFF8)
            {
              v136 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v136 = v134;
            }

            if (v136)
            {
              sub_19B4C50F0(a1 + 8, v136);
            }

            v151 = (v116 - v131) >> 3;
            v152 = (8 * v133);
            v153 = (8 * v133 - 8 * v151);
            *v152 = 0;
            v106 = v152 + 1;
            memcpy(v153, v131, v132);
            v154 = *(a1 + 8);
            *(a1 + 8) = v153;
            *(a1 + 16) = v106;
            *(a1 + 24) = 0;
            if (v154)
            {
              operator delete(v154);
            }
          }

          else
          {
            *v116 = 0;
            v106 = v116 + 8;
          }

          *(a1 + 16) = v106;
          goto LABEL_202;
        case 9u:
          *(a1 + 172) |= 0x80u;
          v103 = *(this + 1);
          if (v103 > 0xFFFFFFFFFFFFFFF7 || v103 + 8 > *(this + 2))
          {
            goto LABEL_204;
          }

          *(a1 + 160) = *(*this + v103);
          goto LABEL_206;
        case 0xAu:
          *(a1 + 172) |= 0x20u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
          {
            goto LABEL_204;
          }

          *(a1 + 144) = *(*this + v27);
          goto LABEL_206;
        case 0xBu:
          *(a1 + 172) |= 0x40u;
          v102 = *(this + 1);
          if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(this + 2))
          {
            goto LABEL_204;
          }

          *(a1 + 152) = *(*this + v102);
          goto LABEL_206;
        case 0xCu:
          *(a1 + 172) |= 8u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
            goto LABEL_204;
          }

          *(a1 + 128) = *(*this + v24);
          goto LABEL_206;
        case 0xDu:
          *(a1 + 172) |= 4u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_204;
          }

          *(a1 + 120) = *(*this + v26);
          goto LABEL_206;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_213;
          }

          goto LABEL_207;
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

LABEL_211:
  v160 = v4 ^ 1;
  return v160 & 1;
}

uint64_t sub_19B48A704(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 172);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 136));
    v4 = *(v3 + 172);
  }

  if ((v4 & 0x100) != 0)
  {
    v5 = *(v3 + 168);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  v12 = *(v3 + 172);
  if ((v12 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 112));
    v12 = *(v3 + 172);
  }

  if (v12)
  {
    result = PB::Writer::write(this, *(v3 + 104));
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::write(this, v18);
  }

  v19 = *(v3 + 172);
  if ((v19 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 160));
    v19 = *(v3 + 172);
    if ((v19 & 0x20) == 0)
    {
LABEL_23:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }
  }

  else if ((v19 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  result = PB::Writer::write(this, *(v3 + 144));
  v19 = *(v3 + 172);
  if ((v19 & 0x40) == 0)
  {
LABEL_24:
    if ((v19 & 8) == 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    result = PB::Writer::write(this, *(v3 + 128));
    if ((*(v3 + 172) & 4) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 152));
  v19 = *(v3 + 172);
  if ((v19 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((v19 & 4) == 0)
  {
    return result;
  }

LABEL_31:
  v20 = *(v3 + 120);

  return PB::Writer::write(this, v20);
}

double sub_19B48A8B4(uint64_t a1)
{
  *a1 = &unk_1F0E2BD78;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B48A8E8(PB::Base *this)
{
  *this = &unk_1F0E2BD78;
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

void sub_19B48A95C(PB::Base *a1)
{
  sub_19B48A8E8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48A994(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 80))
  {
    PB::TextFormatter::format(this, "lastUpdateTimestamp", *(a1 + 56));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "stateCov", v7);
  }

  if ((*(a1 + 80) & 2) != 0)
  {
    PB::TextFormatter::format(this, "stateCovTrace", *(a1 + 64));
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "stateQfb", v10);
  }

  if ((*(a1 + 80) & 4) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 72));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48AA94(uint64_t a1, PB::Reader *this)
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
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          *(a1 + 80) |= 4u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFF7 || v58 + 8 > *(this + 2))
          {
LABEL_109:
            *(this + 24) = 1;
            goto LABEL_112;
          }

          *(a1 + 72) = *(*this + v58);
          goto LABEL_111;
        }

        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_118;
            }

            v25 = *(this + 1);
            v26 = *(this + 2);
            while (v25 < v26 && (*(this + 24) & 1) == 0)
            {
              v28 = *(a1 + 40);
              v27 = *(a1 + 48);
              if (v28 >= v27)
              {
                v30 = *(a1 + 32);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 3;
                v33 = v32 + 1;
                if ((v32 + 1) >> 61)
                {
                  goto LABEL_119;
                }

                v34 = v27 - v30;
                if (v34 >> 2 > v33)
                {
                  v33 = v34 >> 2;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v35 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  sub_19B4C50F0(a1 + 32, v35);
                }

                v36 = (v28 - v30) >> 3;
                v37 = (8 * v32);
                v38 = (8 * v32 - 8 * v36);
                *v37 = 0;
                v29 = v37 + 1;
                memcpy(v38, v30, v31);
                v39 = *(a1 + 32);
                *(a1 + 32) = v38;
                *(a1 + 40) = v29;
                *(a1 + 48) = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v28 = 0;
                v29 = v28 + 8;
              }

              *(a1 + 40) = v29;
              v40 = *(this + 1);
              if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
              {
LABEL_83:
                *(this + 24) = 1;
                break;
              }

              *(v29 - 1) = *(*this + v40);
              v26 = *(this + 2);
              v25 = *(this + 1) + 8;
              *(this + 1) = v25;
            }

LABEL_84:
            PB::Reader::recallMark();
            goto LABEL_112;
          }

          v63 = *(a1 + 40);
          v62 = *(a1 + 48);
          if (v63 >= v62)
          {
            v70 = *(a1 + 32);
            v71 = v63 - v70;
            v72 = (v63 - v70) >> 3;
            v73 = v72 + 1;
            if ((v72 + 1) >> 61)
            {
LABEL_119:
              sub_19B5BE690();
            }

            v74 = v62 - v70;
            if (v74 >> 2 > v73)
            {
              v73 = v74 >> 2;
            }

            if (v74 >= 0x7FFFFFFFFFFFFFF8)
            {
              v75 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v75 = v73;
            }

            if (v75)
            {
              sub_19B4C50F0(a1 + 32, v75);
            }

            v80 = (v63 - v70) >> 3;
            v81 = (8 * v72);
            v82 = (8 * v72 - 8 * v80);
            *v81 = 0;
            v61 = v81 + 1;
            memcpy(v82, v70, v71);
            v83 = *(a1 + 32);
            *(a1 + 32) = v82;
            *(a1 + 40) = v61;
            *(a1 + 48) = 0;
            if (v83)
            {
              operator delete(v83);
            }
          }

          else
          {
            *v63 = 0;
            v61 = v63 + 8;
          }

          *(a1 + 40) = v61;
LABEL_107:
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFF7 || v84 + 8 > *(this + 2))
          {
            goto LABEL_109;
          }

          *(v61 - 1) = *(*this + v84);
LABEL_111:
          *(this + 1) += 8;
          goto LABEL_112;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_118;
              }

              v41 = *(this + 1);
              v42 = *(this + 2);
              while (v41 < v42 && (*(this + 24) & 1) == 0)
              {
                v44 = *(a1 + 16);
                v43 = *(a1 + 24);
                if (v44 >= v43)
                {
                  v46 = *(a1 + 8);
                  v47 = v44 - v46;
                  v48 = (v44 - v46) >> 3;
                  v49 = v48 + 1;
                  if ((v48 + 1) >> 61)
                  {
                    goto LABEL_119;
                  }

                  v50 = v43 - v46;
                  if (v50 >> 2 > v49)
                  {
                    v49 = v50 >> 2;
                  }

                  if (v50 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v51 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v51 = v49;
                  }

                  if (v51)
                  {
                    sub_19B4C50F0(a1 + 8, v51);
                  }

                  v52 = (v44 - v46) >> 3;
                  v53 = (8 * v48);
                  v54 = (8 * v48 - 8 * v52);
                  *v53 = 0;
                  v45 = v53 + 1;
                  memcpy(v54, v46, v47);
                  v55 = *(a1 + 8);
                  *(a1 + 8) = v54;
                  *(a1 + 16) = v45;
                  *(a1 + 24) = 0;
                  if (v55)
                  {
                    operator delete(v55);
                  }
                }

                else
                {
                  *v44 = 0;
                  v45 = v44 + 8;
                }

                *(a1 + 16) = v45;
                v56 = *(this + 1);
                if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
                {
                  goto LABEL_83;
                }

                *(v45 - 1) = *(*this + v56);
                v42 = *(this + 2);
                v41 = *(this + 1) + 8;
                *(this + 1) = v41;
              }

              goto LABEL_84;
            }

            v60 = *(a1 + 16);
            v59 = *(a1 + 24);
            if (v60 >= v59)
            {
              v64 = *(a1 + 8);
              v65 = v60 - v64;
              v66 = (v60 - v64) >> 3;
              v67 = v66 + 1;
              if ((v66 + 1) >> 61)
              {
                goto LABEL_119;
              }

              v68 = v59 - v64;
              if (v68 >> 2 > v67)
              {
                v67 = v68 >> 2;
              }

              if (v68 >= 0x7FFFFFFFFFFFFFF8)
              {
                v69 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v69 = v67;
              }

              if (v69)
              {
                sub_19B4C50F0(a1 + 8, v69);
              }

              v76 = (v60 - v64) >> 3;
              v77 = (8 * v66);
              v78 = (8 * v66 - 8 * v76);
              *v77 = 0;
              v61 = v77 + 1;
              memcpy(v78, v64, v65);
              v79 = *(a1 + 8);
              *(a1 + 8) = v78;
              *(a1 + 16) = v61;
              *(a1 + 24) = 0;
              if (v79)
              {
                operator delete(v79);
              }
            }

            else
            {
              *v60 = 0;
              v61 = v60 + 8;
            }

            *(a1 + 16) = v61;
            goto LABEL_107;
          case 4:
            *(a1 + 80) |= 2u;
            v57 = *(this + 1);
            if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(this + 2))
            {
              goto LABEL_109;
            }

            *(a1 + 64) = *(*this + v57);
            goto LABEL_111;
          case 5:
            *(a1 + 80) |= 1u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
            {
              goto LABEL_109;
            }

            *(a1 + 56) = *(*this + v24);
            goto LABEL_111;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_118:
        v85 = 0;
        return v85 & 1;
      }

LABEL_112:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v85 = v4 ^ 1;
  return v85 & 1;
}

uint64_t sub_19B48B098(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 80) & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 72));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 80);
  if ((v10 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 64));
    v10 = *(v3 + 80);
  }

  if (v10)
  {
    v11 = *(v3 + 56);

    return PB::Writer::write(this, v11);
  }

  return result;
}

void *sub_19B48B168(void *result)
{
  *result = &unk_1F0E2CAD0;
  result[1] = 0;
  return result;
}

void sub_19B48B18C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48B1C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "trackingBehavior");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48B224(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B48B498(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B48B4B8(void *result)
{
  *result = &unk_1F0E2C520;
  result[1] = 0;
  return result;
}

void sub_19B48B4DC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48B514(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "clientMode");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48B574(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B48B7E8(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B48B808(uint64_t result)
{
  *result = &unk_1F0E2E820;
  *(result + 32) = 0;
  return result;
}

void sub_19B48B830(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48B868(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "bpm");
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "globalMachtime", *(a1 + 16));
  if ((*(a1 + 32) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 24));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48B90C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_59;
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
        goto LABEL_59;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 32) |= 4u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_37;
        }

        *(a1 + 24) = *(*this + v2);
LABEL_49:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_55;
      }

      if (v22 == 1)
      {
        *(a1 + 32) |= 1u;
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
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_54;
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
              v27 = 0;
              goto LABEL_53;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_53:
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_54:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(this + 1);
      }

LABEL_55:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_59;
      }
    }

    *(a1 + 32) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_37:
      *(this + 24) = 1;
      goto LABEL_55;
    }

    *(a1 + 16) = *(*this + v2);
    goto LABEL_49;
  }

LABEL_59:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B48BC18(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 32) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 32) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v5 = *(result + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
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
  v6 = *(v3 + 16);

  return PB::Writer::write(this, v6);
}

double sub_19B48BCA4(uint64_t a1)
{
  *a1 = &unk_1F0E38718;
  *(a1 + 60) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_19B48BCD8(PB::Base *this)
{
  *this = &unk_1F0E38718;
  v4 = *(this + 5);
  v2 = (this + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_19B4C51F4(v2, v3);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    sub_19B4C51F4(this + 32, v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    sub_19B4C51F4(this + 24, v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    sub_19B4C51F4(this + 16, v7);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    sub_19B4C51F4(this + 8, v8);
  }

  PB::Base::~Base(this);
}

void sub_19B48BD8C(PB::Base *a1)
{
  sub_19B48BCD8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48BDC4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 60) & 2) != 0)
  {
    v5 = *(a1 + 56);
    PB::TextFormatter::format(this, "dataSource");
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 60))
  {
    PB::TextFormatter::format(this, "startTime", *(a1 + 48));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48BEB8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_65;
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
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 60) |= 2u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v33 = 0;
              v34 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v35 = v23 - v24;
              if (!v17)
              {
                v35 = 0;
              }

              v36 = (v25 + v24);
              v37 = v24 + 1;
              while (1)
              {
                if (!v35)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_63;
                }

                v38 = *v36;
                *(this + 1) = v37;
                v28 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                --v35;
                ++v36;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
LABEL_58:
                  LODWORD(v28) = 0;
                  goto LABEL_63;
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
                  goto LABEL_58;
                }
              }
            }

LABEL_63:
            *(a1 + 56) = v28;
            goto LABEL_45;
          case 2:
            *(a1 + 60) |= 1u;
            v32 = *(this + 1);
            if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(this + 2))
            {
              *(a1 + 48) = *(*this + v32);
              *(this + 1) += 8;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_45;
          case 3:
            operator new();
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          operator new();
        }

        if (v22 == 7)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 4)
        {
          operator new();
        }

        if (v22 == 5)
        {
          operator new();
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

LABEL_45:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_65:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B48C32C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 56);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 60);
  }

  if (v4)
  {
    result = PB::Writer::write(this, *(v3 + 48));
  }

  if (*(v3 + 24))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 32))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 40))
  {

    return PB::Writer::write();
  }

  return result;
}

void *sub_19B48C3FC(void *result)
{
  *result = &unk_1F0E2B5C8;
  result[1] = 0;
  return result;
}

void sub_19B48C41C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2B5C8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B48C49C(PB::Base *a1)
{
  sub_19B48C41C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48C4D4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48C550(int a1, PB::Reader *this)
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
        operator new();
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

uint64_t sub_19B48C76C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B48C788(uint64_t result)
{
  *result = &unk_1F0E38750;
  *(result + 44) = 0;
  return result;
}

void sub_19B48C7B0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48C7E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "accelX", *(a1 + 16));
    v5 = *(a1 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "accelY", *(a1 + 20));
  v5 = *(a1 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "accelZ", *(a1 + 24));
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "gyroX", *(a1 + 28));
  v5 = *(a1 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "gyroY", *(a1 + 32));
  v5 = *(a1 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "gyroZ", *(a1 + 36));
  v5 = *(a1 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(this, "temperature", *(a1 + 40));
  if (*(a1 + 44))
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_10:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48C92C(uint64_t a1, PB::Reader *this)
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
          if (v22 == 5)
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

          if (v22 == 6)
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
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
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

        if (v22 == 4)
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
          *(a1 + 44) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 16) = *(*this + v2);
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

uint64_t sub_19B48CCCC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = PB::Writer::write(this, *(v3 + 36));
    if ((*(v3 + 44) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 44);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v5 = *(v3 + 40);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B48CDE4(uint64_t result)
{
  *result = &unk_1F0E2B210;
  *(result + 128) = 0;
  return result;
}

void sub_19B48CE0C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48CE44(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 128);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "accelUnfilteredX", *(a1 + 40));
    v5 = *(a1 + 128);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "accelUnfilteredY", *(a1 + 44));
  v5 = *(a1 + 128);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "accelUnfilteredZ", *(a1 + 48));
  v5 = *(a1 + 128);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "accelX", *(a1 + 52));
  v5 = *(a1 + 128);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "accelY", *(a1 + 56));
  v5 = *(a1 + 128);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "accelZ", *(a1 + 60));
  v5 = *(a1 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  v6 = *(a1 + 64);
  PB::TextFormatter::format(this, "flags");
  v5 = *(a1 + 128);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "gravityX", *(a1 + 68));
  v5 = *(a1 + 128);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "gravityY", *(a1 + 72));
  v5 = *(a1 + 128);
  if ((v5 & 0x2000) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "gravityZ", *(a1 + 76));
  v5 = *(a1 + 128);
  if ((v5 & 0x4000) == 0)
  {
LABEL_12:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "gyroBiasErrorEstimate", *(a1 + 80));
  v5 = *(a1 + 128);
  if ((v5 & 0x8000) == 0)
  {
LABEL_13:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "quaternionPredictedW", *(a1 + 84));
  v5 = *(a1 + 128);
  if ((v5 & 0x10000) == 0)
  {
LABEL_14:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "quaternionPredictedX", *(a1 + 88));
  v5 = *(a1 + 128);
  if ((v5 & 0x20000) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "quaternionPredictedY", *(a1 + 92));
  v5 = *(a1 + 128);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "quaternionPredictedZ", *(a1 + 96));
  v5 = *(a1 + 128);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 100));
  v5 = *(a1 + 128);
  if ((v5 & 0x100000) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 104));
  v5 = *(a1 + 128);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 108));
  v5 = *(a1 + 128);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 112));
  v5 = *(a1 + 128);
  if ((v5 & 0x800000) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "rotationRateX", *(a1 + 116));
  v5 = *(a1 + 128);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "rotationRateY", *(a1 + 120));
  v5 = *(a1 + 128);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "rotationRateZ", *(a1 + 124));
  v5 = *(a1 + 128);
  if ((v5 & 1) == 0)
  {
LABEL_24:
    if ((v5 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 128);
  if ((v5 & 2) == 0)
  {
LABEL_25:
    if ((v5 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "timestampAccel", *(a1 + 16));
  v5 = *(a1 + 128);
  if ((v5 & 4) == 0)
  {
LABEL_26:
    if ((v5 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(this, "timestampAccelUnfiltered", *(a1 + 24));
  if ((*(a1 + 128) & 8) != 0)
  {
LABEL_27:
    PB::TextFormatter::format(this, "timestampPrediction", *(a1 + 32));
  }

LABEL_28:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48D1C8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_128;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 128) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_99;
        case 2u:
          *(a1 + 128) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_117;
        case 3u:
          *(a1 + 128) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_117;
        case 4u:
          *(a1 + 128) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_117;
        case 5u:
          *(a1 + 128) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_117;
        case 6u:
          *(a1 + 128) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_117;
        case 7u:
          *(a1 + 128) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_117;
        case 8u:
          *(a1 + 128) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_117;
        case 9u:
          *(a1 + 128) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_117;
        case 0xAu:
          *(a1 + 128) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_117;
        case 0xBu:
          *(a1 + 128) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_117;
        case 0xCu:
          *(a1 + 128) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_117;
        case 0xDu:
          *(a1 + 128) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_99;
        case 0xEu:
          *(a1 + 128) |= 0x400u;
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
                goto LABEL_126;
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
LABEL_125:
                v2 = v35;
                goto LABEL_126;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_125;
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
              goto LABEL_126;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_126:
          *(a1 + 64) = v26;
          goto LABEL_119;
        case 0xFu:
          *(a1 + 128) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_99;
        case 0x10u:
          *(a1 + 128) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_117;
        case 0x11u:
          *(a1 + 128) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_117;
        case 0x12u:
          *(a1 + 128) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_117;
        case 0x13u:
          *(a1 + 128) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_117;
        case 0x14u:
          *(a1 + 128) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 116) = *(*this + v2);
          goto LABEL_117;
        case 0x15u:
          *(a1 + 128) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_117;
        case 0x16u:
          *(a1 + 128) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 124) = *(*this + v2);
          goto LABEL_117;
        case 0x17u:
          *(a1 + 128) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_99:
          v2 = *(this + 1) + 8;
          goto LABEL_118;
        case 0x18u:
          *(a1 + 128) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_117;
        case 0x19u:
          *(a1 + 128) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_117;
        case 0x1Au:
          *(a1 + 128) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_105:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 48) = *(*this + v2);
LABEL_117:
            v2 = *(this + 1) + 4;
LABEL_118:
            *(this + 1) = v2;
          }

          goto LABEL_119;
        default:
          if (!PB::Reader::skip(this))
          {
            v37 = 0;
            return v37 & 1;
          }

          v2 = *(this + 1);
LABEL_119:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_128;
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

LABEL_128:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B48D9F4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 128);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_4:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 128);
  if ((v4 & 0x400000) == 0)
  {
LABEL_5:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_6:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_7:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  v5 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 128);
  if ((v4 & 0x4000) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 128);
  if ((v4 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v4 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 128);
  if ((v4 & 4) == 0)
  {
LABEL_24:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_25:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    result = PB::Writer::write(this, *(v3 + 44));
    if ((*(v3 + 128) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_53;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_53:
  v6 = *(v3 + 48);

  return PB::Writer::write(this, v6);
}

uint64_t sub_19B48DD04(uint64_t result)
{
  *result = &unk_1F0E2DF98;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 36) = 0;
  return result;
}

void sub_19B48DD2C(void **a1)
{
  *a1 = &unk_1F0E2DF98;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B48DD88(void **a1)
{
  *a1 = &unk_1F0E2DF98;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B48DDF8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 36))
  {
    v5 = *(a1 + 32);
    PB::TextFormatter::format(this, "lastSampleId");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "slowOptical");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48DEAC(uint64_t a1, PB::Reader *this)
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
        *(a1 + 36) |= 1u;
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
              LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
              goto LABEL_45;
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
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 32) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          sub_19B48E17C();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v38 = 0;
          return v38 & 1;
        }
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

uint64_t sub_19B48E2C8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  if (*(v3 + 36))
  {
    v7 = *(v3 + 32);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

double sub_19B48E348(uint64_t a1)
{
  *a1 = &unk_1F0E2FF88;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_19B48E380(uint64_t a1)
{
  *a1 = &unk_1F0E2FF88;
  v4 = (a1 + 24);
  sub_19B4C4D80(&v4);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(a1);
}

void sub_19B48E440(uint64_t a1)
{
  sub_19B48E380(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48E478(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 56);
    PB::TextFormatter::format(this, "conchaMinAccepted");
    v5 = *(a1 + 60);
  }

  if (v5)
  {
    v7 = *(a1 + 48);
    PB::TextFormatter::format(this, "location");
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "newOpenLid");
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "oldOpenLid");
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 32))(v12, this, "optical");
  }

  v13 = *(a1 + 60);
  if ((v13 & 2) != 0)
  {
    v14 = *(a1 + 52);
    PB::TextFormatter::format(this, "state");
    v13 = *(a1 + 60);
  }

  if ((v13 & 8) != 0)
  {
    v15 = *(a1 + 57);
    PB::TextFormatter::format(this, "tragusMinAccepted");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48E5F8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_86;
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
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 60) |= 1u;
            v28 = *(this + 1);
            v27 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
            {
              v49 = 0;
              v50 = 0;
              v32 = 0;
              v17 = v27 >= v28;
              v51 = v27 - v28;
              if (!v17)
              {
                v51 = 0;
              }

              v52 = (v29 + v28);
              v53 = v28 + 1;
              while (1)
              {
                if (!v51)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_78;
                }

                v54 = *v52;
                *(this + 1) = v53;
                v32 |= (v54 & 0x7F) << v49;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                --v51;
                ++v52;
                ++v53;
                v14 = v50++ > 8;
                if (v14)
                {
LABEL_61:
                  LODWORD(v32) = 0;
                  goto LABEL_78;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }
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
                  goto LABEL_61;
                }
              }
            }

LABEL_78:
            *(a1 + 48) = v32;
            goto LABEL_82;
          case 2:
            *(a1 + 60) |= 2u;
            v41 = *(this + 1);
            v40 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
            {
              v55 = 0;
              v56 = 0;
              v45 = 0;
              v17 = v40 >= v41;
              v57 = v40 - v41;
              if (!v17)
              {
                v57 = 0;
              }

              v58 = (v42 + v41);
              v59 = v41 + 1;
              while (1)
              {
                if (!v57)
                {
                  LODWORD(v45) = 0;
                  *(this + 24) = 1;
                  goto LABEL_81;
                }

                v60 = *v58;
                *(this + 1) = v59;
                v45 |= (v60 & 0x7F) << v55;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                --v57;
                ++v58;
                ++v59;
                v14 = v56++ > 8;
                if (v14)
                {
LABEL_71:
                  LODWORD(v45) = 0;
                  goto LABEL_81;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v45) = 0;
              }
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = (v42 + v41);
              v47 = v41 + 1;
              while (1)
              {
                *(this + 1) = v47;
                v48 = *v46++;
                v45 |= (v48 & 0x7F) << v43;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                ++v47;
                v14 = v44++ > 8;
                if (v14)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_81:
            *(a1 + 52) = v45;
            goto LABEL_82;
          case 3:
            sub_19B48E17C();
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 60) |= 4u;
          v36 = *(this + 1);
          if (v36 >= *(this + 2))
          {
            v39 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v37 = v36 + 1;
            v38 = *(*this + v36);
            *(this + 1) = v37;
            v39 = v38 != 0;
          }

          *(a1 + 56) = v39;
          goto LABEL_82;
        }

        if (v22 == 7)
        {
          *(a1 + 60) |= 8u;
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

          *(a1 + 57) = v26;
          goto LABEL_82;
        }
      }

      else
      {
        if (v22 == 4)
        {
          operator new();
        }

        if (v22 == 5)
        {
          operator new();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v62 = 0;
        return v62 & 1;
      }

LABEL_82:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_86:
  v62 = v4 ^ 1;
  return v62 & 1;
}

uint64_t sub_19B48EB28(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if (v4)
  {
    v5 = *(result + 48);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 60);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 52);
    result = PB::Writer::writeVarInt(this);
  }

  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    result = PB::Writer::writeSubmessage(this, v10);
  }

  v11 = *(v3 + 8);
  if (v11)
  {
    result = PB::Writer::writeSubmessage(this, v11);
  }

  v12 = *(v3 + 60);
  if ((v12 & 4) != 0)
  {
    v13 = *(v3 + 56);
    result = PB::Writer::write(this);
    v12 = *(v3 + 60);
  }

  if ((v12 & 8) != 0)
  {
    v14 = *(v3 + 57);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B48EC18(uint64_t result)
{
  *(result + 56) = 0;
  *result = &unk_1F0E2F700;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B48EC40(PB::Base *this)
{
  *this = &unk_1F0E2F700;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

void sub_19B48ED24(PB::Base *a1)
{
  sub_19B48EC40(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48ED5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "baseline");
  }

  v6 = *(a1 + 56);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "conchaOpenResponse", *(a1 + 40));
    v6 = *(a1 + 56);
  }

  if ((v6 & 4) != 0)
  {
    PB::TextFormatter::format(this, "filter", *(a1 + 44));
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "lastBaseline");
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    v8 = *(a1 + 48);
    PB::TextFormatter::format(this, "location");
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "minimum");
  }

  v10 = *(a1 + 56);
  if ((v10 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "rho", *(a1 + 52));
    v10 = *(a1 + 56);
  }

  if (v10)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48EED4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_76;
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
            *(a1 + 56) |= 0x10u;
            v36 = *(this + 1);
            if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(this + 2))
            {
LABEL_54:
              *(this + 24) = 1;
              goto LABEL_72;
            }

            *(a1 + 52) = *(*this + v36);
LABEL_66:
            v35 = *(this + 1) + 4;
LABEL_67:
            *(this + 1) = v35;
            goto LABEL_72;
          }

          if (v22 == 8)
          {
            *(a1 + 56) |= 4u;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_54;
            }

            *(a1 + 44) = *(*this + v33);
            goto LABEL_66;
          }
        }

        else
        {
          if (v22 == 5)
          {
            operator new();
          }

          if (v22 == 6)
          {
            *(a1 + 56) |= 2u;
            v32 = *(this + 1);
            if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(this + 2))
            {
              goto LABEL_54;
            }

            *(a1 + 40) = *(*this + v32);
            goto LABEL_66;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          operator new();
        }

        if (v22 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 56) |= 1u;
          v34 = *(this + 1);
          if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(this + 2))
          {
            goto LABEL_54;
          }

          *(a1 + 32) = *(*this + v34);
          v35 = *(this + 1) + 8;
          goto LABEL_67;
        }

        if (v22 == 2)
        {
          *(a1 + 56) |= 8u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v37 = 0;
            v38 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v39 = v23 - v24;
            if (!v17)
            {
              v39 = 0;
            }

            v40 = (v25 + v24);
            v41 = v24 + 1;
            while (1)
            {
              if (!v39)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_71;
              }

              v42 = *v40;
              *(this + 1) = v41;
              v28 |= (v42 & 0x7F) << v37;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              --v39;
              ++v40;
              ++v41;
              v14 = v38++ > 8;
              if (v14)
              {
LABEL_64:
                LODWORD(v28) = 0;
                goto LABEL_71;
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
                goto LABEL_64;
              }
            }
          }

LABEL_71:
          *(a1 + 48) = v28;
          goto LABEL_72;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v44 = 0;
        return v44 & 1;
      }

LABEL_72:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_76:
  v44 = v4 ^ 1;
  return v44 & 1;
}

uint64_t sub_19B48F3D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 56);
  }

  if ((v4 & 8) != 0)
  {
    v5 = *(v3 + 48);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 24);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7);
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    result = PB::Writer::writeSubmessage(this, v8);
  }

  v9 = *(v3 + 56);
  if ((v9 & 2) == 0)
  {
    if ((*(v3 + 56) & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = PB::Writer::write(this, *(v3 + 52));
    if ((*(v3 + 56) & 4) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v9 = *(v3 + 56);
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if ((v9 & 4) == 0)
  {
    return result;
  }

LABEL_17:
  v10 = *(v3 + 44);

  return PB::Writer::write(this, v10);
}

uint64_t sub_19B48F4C8(uint64_t result)
{
  *(result + 48) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F0E2F380;
  return result;
}

void sub_19B48F4F0(PB::Base *this)
{
  *this = &unk_1F0E2F380;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void sub_19B48F5A4(PB::Base *a1)
{
  sub_19B48F4F0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48F5DC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 36);
    PB::TextFormatter::format(this, "above");
    v5 = *(a1 + 48);
  }

  if ((v5 & 8) != 0)
  {
    v7 = *(a1 + 37);
    PB::TextFormatter::format(this, "below");
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "current");
  }

  v9 = *(a1 + 48);
  if ((v9 & 2) != 0)
  {
    v14 = *(a1 + 32);
    PB::TextFormatter::format(this, "location");
    v9 = *(a1 + 48);
    if ((v9 & 0x10) == 0)
    {
LABEL_9:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((v9 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v15 = *(a1 + 38);
  PB::TextFormatter::format(this, "moving");
  v9 = *(a1 + 48);
  if ((v9 & 0x20) == 0)
  {
LABEL_10:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  v16 = *(a1 + 39);
  PB::TextFormatter::format(this, "partialin");
  if ((*(a1 + 48) & 0x40) != 0)
  {
LABEL_11:
    v10 = *(a1 + 40);
    PB::TextFormatter::format(this, "stable");
  }

LABEL_12:
  v11 = *(a1 + 16);
  if (v11)
  {
    (*(*v11 + 32))(v11, this, "threshold");
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 24));
    v12 = *(a1 + 48);
    if ((v12 & 0x80) == 0)
    {
LABEL_16:
      if ((v12 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v12 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a1 + 41);
  PB::TextFormatter::format(this, "upright");
  v12 = *(a1 + 48);
  if ((v12 & 0x100) == 0)
  {
LABEL_17:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = *(a1 + 42);
  PB::TextFormatter::format(this, "upsidedown");
  v12 = *(a1 + 48);
  if ((v12 & 0x200) == 0)
  {
LABEL_18:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_30:
  v19 = *(a1 + 43);
  PB::TextFormatter::format(this, "vertical");
  if ((*(a1 + 48) & 0x400) != 0)
  {
LABEL_19:
    v13 = *(a1 + 44);
    PB::TextFormatter::format(this, "walking");
  }

LABEL_20:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48F7E8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_90;
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
          *(a1 + 48) |= 1u;
          v22 = *(this + 1);
          if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(this + 2))
          {
            *(a1 + 24) = *(*this + v22);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_86;
        case 2u:
          *(a1 + 48) |= 2u;
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
                goto LABEL_85;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_70:
            LODWORD(v48) = 0;
            goto LABEL_85;
          }

          v68 = 0;
          v69 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v70 = v43 - v44;
          if (!v17)
          {
            v70 = 0;
          }

          v71 = (v45 + v44);
          v72 = v44 + 1;
          break;
        case 3u:
          operator new();
        case 4u:
          operator new();
        case 5u:
          *(a1 + 48) |= 0x80u;
          v27 = *(this + 1);
          if (v27 >= *(this + 2))
          {
            v30 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v28 = v27 + 1;
            v29 = *(*this + v27);
            *(this + 1) = v28;
            v30 = v29 != 0;
          }

          *(a1 + 41) = v30;
          goto LABEL_86;
        case 6u:
          *(a1 + 48) |= 0x20u;
          v52 = *(this + 1);
          if (v52 >= *(this + 2))
          {
            v55 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v53 = v52 + 1;
            v54 = *(*this + v52);
            *(this + 1) = v53;
            v55 = v54 != 0;
          }

          *(a1 + 39) = v55;
          goto LABEL_86;
        case 7u:
          *(a1 + 48) |= 4u;
          v56 = *(this + 1);
          if (v56 >= *(this + 2))
          {
            v59 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v57 = v56 + 1;
            v58 = *(*this + v56);
            *(this + 1) = v57;
            v59 = v58 != 0;
          }

          *(a1 + 36) = v59;
          goto LABEL_86;
        case 8u:
          *(a1 + 48) |= 8u;
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

          *(a1 + 37) = v42;
          goto LABEL_86;
        case 9u:
          *(a1 + 48) |= 0x40u;
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

          *(a1 + 40) = v67;
          goto LABEL_86;
        case 0xAu:
          *(a1 + 48) |= 0x200u;
          v35 = *(this + 1);
          if (v35 >= *(this + 2))
          {
            v38 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = v35 + 1;
            v37 = *(*this + v35);
            *(this + 1) = v36;
            v38 = v37 != 0;
          }

          *(a1 + 43) = v38;
          goto LABEL_86;
        case 0xBu:
          *(a1 + 48) |= 0x100u;
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

          *(a1 + 42) = v63;
          goto LABEL_86;
        case 0xCu:
          *(a1 + 48) |= 0x10u;
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

          *(a1 + 38) = v26;
          goto LABEL_86;
        case 0xDu:
          *(a1 + 48) |= 0x400u;
          v31 = *(this + 1);
          if (v31 >= *(this + 2))
          {
            v34 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = v31 + 1;
            v33 = *(*this + v31);
            *(this + 1) = v32;
            v34 = v33 != 0;
          }

          *(a1 + 44) = v34;
          goto LABEL_86;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_86;
          }

          v75 = 0;
          return v75 & 1;
      }

      while (1)
      {
        if (!v70)
        {
          LODWORD(v48) = 0;
          *(this + 24) = 1;
          goto LABEL_85;
        }

        v73 = *v71;
        *(this + 1) = v72;
        v48 |= (v73 & 0x7F) << v68;
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
          goto LABEL_70;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v48) = 0;
      }

LABEL_85:
      *(a1 + 32) = v48;
LABEL_86:
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

LABEL_90:
  v75 = v4 ^ 1;
  return v75 & 1;
}

uint64_t sub_19B48FE20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 48);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7);
  }

  v8 = *(v3 + 48);
  if ((v8 & 0x80) != 0)
  {
    v9 = *(v3 + 41);
    result = PB::Writer::write(this);
    v8 = *(v3 + 48);
    if ((v8 & 0x20) == 0)
    {
LABEL_11:
      if ((v8 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(v3 + 39);
  result = PB::Writer::write(this);
  v8 = *(v3 + 48);
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(v3 + 36);
  result = PB::Writer::write(this);
  v8 = *(v3 + 48);
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(v3 + 37);
  result = PB::Writer::write(this);
  v8 = *(v3 + 48);
  if ((v8 & 0x40) == 0)
  {
LABEL_14:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = *(v3 + 40);
  result = PB::Writer::write(this);
  v8 = *(v3 + 48);
  if ((v8 & 0x200) == 0)
  {
LABEL_15:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = *(v3 + 43);
  result = PB::Writer::write(this);
  v8 = *(v3 + 48);
  if ((v8 & 0x100) == 0)
  {
LABEL_16:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    v16 = *(v3 + 38);
    result = PB::Writer::write(this);
    if ((*(v3 + 48) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  v15 = *(v3 + 42);
  result = PB::Writer::write(this);
  v8 = *(v3 + 48);
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if ((v8 & 0x400) == 0)
  {
    return result;
  }

LABEL_27:
  v17 = *(v3 + 44);

  return PB::Writer::write(this);
}

uint64_t sub_19B48FFAC(uint64_t result)
{
  *(result + 44) = 0;
  *result = &unk_1F0E30490;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B48FFD4(PB::Base *this)
{
  *this = &unk_1F0E30490;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

void sub_19B4900B8(PB::Base *a1)
{
  sub_19B48FFD4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4900F0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "current");
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "last");
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    v7 = *(a1 + 40);
    PB::TextFormatter::format(this, "location");
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "minimum");
  }

  if (*(a1 + 44))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B490214(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 44) |= 1u;
          v32 = *(this + 1);
          if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(this + 2))
          {
            *(a1 + 32) = *(*this + v32);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_56;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v33 = 0;
            v34 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v35 = v23 - v24;
            if (!v17)
            {
              v35 = 0;
            }

            v36 = (v25 + v24);
            v37 = v24 + 1;
            while (1)
            {
              if (!v35)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_55;
              }

              v38 = *v36;
              *(this + 1) = v37;
              v28 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              --v35;
              ++v36;
              ++v37;
              v14 = v34++ > 8;
              if (v14)
              {
LABEL_50:
                LODWORD(v28) = 0;
                goto LABEL_55;
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
                goto LABEL_50;
              }
            }
          }

LABEL_55:
          *(a1 + 40) = v28;
          goto LABEL_56;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v40 = 0;
        return v40 & 1;
      }

LABEL_56:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_60:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B490638(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 44);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 40);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 24);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7);
  }

  v8 = *(v3 + 16);
  if (v8)
  {

    return PB::Writer::writeSubmessage(this, v8);
  }

  return result;
}

double sub_19B4906E0(uint64_t a1)
{
  *a1 = &unk_1F0E30458;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void sub_19B49071C(PB::Base *this)
{
  *this = &unk_1F0E30458;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

void sub_19B4907F0(PB::Base *a1)
{
  sub_19B49071C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B490828(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "acceleration", v7);
  }

  if ((*(a1 + 108) & 2) != 0)
  {
    PB::TextFormatter::format(this, "correlation", *(a1 + 80));
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "current");
  }

  if ((*(a1 + 108) & 4) != 0)
  {
    PB::TextFormatter::format(this, "deltatip", *(a1 + 84));
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "instability");
  }

  v10 = *(a1 + 108);
  if ((v10 & 8) != 0)
  {
    v14 = *(a1 + 88);
    PB::TextFormatter::format(this, "location");
    v10 = *(a1 + 108);
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 108) & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v15 = *(a1 + 92);
  PB::TextFormatter::format(this, "state");
  v10 = *(a1 + 108);
  if ((v10 & 0x20) == 0)
  {
LABEL_14:
    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "tilt", *(a1 + 96));
  v10 = *(a1 + 108);
  if ((v10 & 1) == 0)
  {
LABEL_15:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_26:
    PB::TextFormatter::format(this, "tip", *(a1 + 100));
    if ((*(a1 + 108) & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_25:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 72));
  v10 = *(a1 + 108);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  if ((v10 & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_27:
  v16 = *(a1 + 104);
  PB::TextFormatter::format(this, "upright");
LABEL_17:
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "variance", v13);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B490A3C(uint64_t a1, PB::Reader *this)
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
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 6)
      {
        if (v23 > 9)
        {
          switch(v23)
          {
            case 0xA:
              if (v22 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_178;
                }

                v38 = *(this + 1);
                v39 = *(this + 2);
                while (v38 < v39 && (*(this + 24) & 1) == 0)
                {
                  v41 = *(a1 + 40);
                  v40 = *(a1 + 48);
                  if (v41 >= v40)
                  {
                    v43 = *(a1 + 32);
                    v44 = v41 - v43;
                    v45 = (v41 - v43) >> 2;
                    v46 = v45 + 1;
                    if ((v45 + 1) >> 62)
                    {
                      goto LABEL_179;
                    }

                    v47 = v40 - v43;
                    if (v47 >> 1 > v46)
                    {
                      v46 = v47 >> 1;
                    }

                    if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v48 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v48 = v46;
                    }

                    if (v48)
                    {
                      sub_19B4C4FA8(a1 + 32, v48);
                    }

                    v49 = (v41 - v43) >> 2;
                    v50 = (4 * v45);
                    v51 = (4 * v45 - 4 * v49);
                    *v50 = 0;
                    v42 = v50 + 1;
                    memcpy(v51, v43, v44);
                    v52 = *(a1 + 32);
                    *(a1 + 32) = v51;
                    *(a1 + 40) = v42;
                    *(a1 + 48) = 0;
                    if (v52)
                    {
                      operator delete(v52);
                    }
                  }

                  else
                  {
                    *v41 = 0;
                    v42 = v41 + 4;
                  }

                  *(a1 + 40) = v42;
                  v53 = *(this + 1);
                  if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
                  {
LABEL_135:
                    *(this + 24) = 1;
                    break;
                  }

                  *(v42 - 1) = *(*this + v53);
                  v39 = *(this + 2);
                  v38 = *(this + 1) + 4;
                  *(this + 1) = v38;
                }

LABEL_58:
                PB::Reader::recallMark();
                goto LABEL_172;
              }

              v97 = *(a1 + 40);
              v96 = *(a1 + 48);
              if (v97 >= v96)
              {
                v101 = *(a1 + 32);
                v102 = v97 - v101;
                v103 = (v97 - v101) >> 2;
                v104 = v103 + 1;
                if ((v103 + 1) >> 62)
                {
                  goto LABEL_179;
                }

                v105 = v96 - v101;
                if (v105 >> 1 > v104)
                {
                  v104 = v105 >> 1;
                }

                if (v105 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v106 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v106 = v104;
                }

                if (v106)
                {
                  sub_19B4C4FA8(a1 + 32, v106);
                }

                v113 = (v97 - v101) >> 2;
                v114 = (4 * v103);
                v115 = (4 * v103 - 4 * v113);
                *v114 = 0;
                v98 = v114 + 1;
                memcpy(v115, v101, v102);
                v116 = *(a1 + 32);
                *(a1 + 32) = v115;
                *(a1 + 40) = v98;
                *(a1 + 48) = 0;
                if (v116)
                {
                  operator delete(v116);
                }
              }

              else
              {
                *v97 = 0;
                v98 = v97 + 4;
              }

              *(a1 + 40) = v98;
LABEL_166:
              v121 = *(this + 1);
              if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
              {
                goto LABEL_168;
              }

              *(v98 - 1) = *(*this + v121);
LABEL_170:
              v36 = *(this + 1) + 4;
LABEL_171:
              *(this + 1) = v36;
              goto LABEL_172;
            case 0xB:
              *(a1 + 108) |= 2u;
              v83 = *(this + 1);
              if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
              {
LABEL_168:
                *(this + 24) = 1;
                goto LABEL_172;
              }

              *(a1 + 80) = *(*this + v83);
              goto LABEL_170;
            case 0xC:
              *(a1 + 108) |= 4u;
              v34 = *(this + 1);
              if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
              {
                goto LABEL_168;
              }

              *(a1 + 84) = *(*this + v34);
              goto LABEL_170;
          }
        }

        else
        {
          switch(v23)
          {
            case 7:
              *(a1 + 108) |= 0x20u;
              v37 = *(this + 1);
              if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(this + 2))
              {
                goto LABEL_168;
              }

              *(a1 + 96) = *(*this + v37);
              goto LABEL_170;
            case 8:
              *(a1 + 108) |= 0x80u;
              v63 = *(this + 1);
              if (v63 >= *(this + 2))
              {
                v66 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v64 = v63 + 1;
                v65 = *(*this + v63);
                *(this + 1) = v64;
                v66 = v65 != 0;
              }

              *(a1 + 104) = v66;
              goto LABEL_172;
            case 9:
              *(a1 + 108) |= 0x10u;
              v25 = *(this + 1);
              v24 = *(this + 2);
              v26 = *this;
              if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
              {
                v84 = 0;
                v85 = 0;
                v29 = 0;
                v17 = v24 >= v25;
                v86 = v24 - v25;
                if (!v17)
                {
                  v86 = 0;
                }

                v87 = (v26 + v25);
                v88 = v25 + 1;
                while (1)
                {
                  if (!v86)
                  {
                    LODWORD(v29) = 0;
                    *(this + 24) = 1;
                    goto LABEL_156;
                  }

                  v89 = *v87;
                  *(this + 1) = v88;
                  v29 |= (v89 & 0x7F) << v84;
                  if ((v89 & 0x80) == 0)
                  {
                    break;
                  }

                  v84 += 7;
                  --v86;
                  ++v87;
                  ++v88;
                  v14 = v85++ > 8;
                  if (v14)
                  {
LABEL_120:
                    LODWORD(v29) = 0;
                    goto LABEL_156;
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
                    goto LABEL_120;
                  }
                }
              }

LABEL_156:
              *(a1 + 92) = v29;
              goto LABEL_172;
          }
        }
      }

      else if (v23 > 3)
      {
        switch(v23)
        {
          case 4:
            operator new();
          case 5:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_178;
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
                    goto LABEL_179;
                  }

                  v76 = v69 - v72;
                  if (v76 >> 1 > v75)
                  {
                    v75 = v76 >> 1;
                  }

                  if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v77 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
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
                  goto LABEL_135;
                }

                *(v71 - 1) = *(*this + v82);
                v68 = *(this + 2);
                v67 = *(this + 1) + 4;
                *(this + 1) = v67;
              }

              goto LABEL_58;
            }

            v100 = *(a1 + 16);
            v99 = *(a1 + 24);
            if (v100 >= v99)
            {
              v107 = *(a1 + 8);
              v108 = v100 - v107;
              v109 = (v100 - v107) >> 2;
              v110 = v109 + 1;
              if ((v109 + 1) >> 62)
              {
LABEL_179:
                sub_19B5BE690();
              }

              v111 = v99 - v107;
              if (v111 >> 1 > v110)
              {
                v110 = v111 >> 1;
              }

              if (v111 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v112 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v112 = v110;
              }

              if (v112)
              {
                sub_19B4C4FA8(a1 + 8, v112);
              }

              v117 = (v100 - v107) >> 2;
              v118 = (4 * v109);
              v119 = (4 * v109 - 4 * v117);
              *v118 = 0;
              v98 = v118 + 1;
              memcpy(v119, v107, v108);
              v120 = *(a1 + 8);
              *(a1 + 8) = v119;
              *(a1 + 16) = v98;
              *(a1 + 24) = 0;
              if (v120)
              {
                operator delete(v120);
              }
            }

            else
            {
              *v100 = 0;
              v98 = v100 + 4;
            }

            *(a1 + 16) = v98;
            goto LABEL_166;
          case 6:
            *(a1 + 108) |= 0x40u;
            v33 = *(this + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
            {
              goto LABEL_168;
            }

            *(a1 + 100) = *(*this + v33);
            goto LABEL_170;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            *(a1 + 108) |= 1u;
            v35 = *(this + 1);
            if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(this + 2))
            {
              goto LABEL_168;
            }

            *(a1 + 72) = *(*this + v35);
            v36 = *(this + 1) + 8;
            goto LABEL_171;
          case 2:
            *(a1 + 108) |= 8u;
            v55 = *(this + 1);
            v54 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v54)
            {
              v90 = 0;
              v91 = 0;
              v59 = 0;
              v17 = v54 >= v55;
              v92 = v54 - v55;
              if (!v17)
              {
                v92 = 0;
              }

              v93 = (v56 + v55);
              v94 = v55 + 1;
              while (1)
              {
                if (!v92)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_159;
                }

                v95 = *v93;
                *(this + 1) = v94;
                v59 |= (v95 & 0x7F) << v90;
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
LABEL_128:
                  LODWORD(v59) = 0;
                  goto LABEL_159;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }
            }

            else
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = (v56 + v55);
              v61 = v55 + 1;
              while (1)
              {
                *(this + 1) = v61;
                v62 = *v60++;
                v59 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
                  goto LABEL_128;
                }
              }
            }

LABEL_159:
            *(a1 + 88) = v59;
            goto LABEL_172;
          case 3:
            operator new();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_178:
        v122 = 0;
        return v122 & 1;
      }

LABEL_172:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v122 = v4 ^ 1;
  return v122 & 1;
}

uint64_t sub_19B491414(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 108);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 72));
    v4 = *(v3 + 108);
  }

  if ((v4 & 8) != 0)
  {
    v5 = *(v3 + 88);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 56);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 64);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 108);
  if ((v11 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 100));
    v11 = *(v3 + 108);
    if ((v11 & 0x20) == 0)
    {
LABEL_14:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_15;
      }

LABEL_26:
      v17 = *(v3 + 104);
      result = PB::Writer::write(this);
      if ((*(v3 + 108) & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(v3 + 108) & 0x20) == 0)
  {
    goto LABEL_14;
  }

  result = PB::Writer::write(this, *(v3 + 96));
  v11 = *(v3 + 108);
  if (v11 < 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v11 & 0x10) != 0)
  {
LABEL_16:
    v12 = *(v3 + 92);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_17:
  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 108);
  if ((v16 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 80));
    v16 = *(v3 + 108);
  }

  if ((v16 & 4) != 0)
  {
    v18 = *(v3 + 84);

    return PB::Writer::write(this, v18);
  }

  return result;
}

uint64_t sub_19B491594(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F0E30420;
  return result;
}

void sub_19B4915BC(PB::Base *this)
{
  *this = &unk_1F0E30420;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void sub_19B491670(PB::Base *a1)
{
  sub_19B4915BC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4916A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 32))
  {
    v5 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "maximum");
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "minimum");
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    v8 = *(a1 + 28);
    PB::TextFormatter::format(this, "state");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B491794(uint64_t a1, PB::Reader *this)
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
            goto LABEL_73;
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
          operator new();
        }

        if (v22 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v47 = 0;
            v48 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v49 = v32 - v33;
            if (!v17)
            {
              v49 = 0;
            }

            v50 = (v34 + v33);
            v51 = v33 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_68;
              }

              v52 = *v50;
              *(this + 1) = v51;
              v37 |= (v52 & 0x7F) << v47;
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
                LODWORD(v37) = 0;
                goto LABEL_68;
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
                goto LABEL_60;
              }
            }
          }

LABEL_68:
          *(a1 + 24) = v37;
          goto LABEL_69;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v41 = 0;
            v42 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v43 = v23 - v24;
            if (!v17)
            {
              v43 = 0;
            }

            v44 = (v25 + v24);
            v45 = v24 + 1;
            while (1)
            {
              if (!v43)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_65;
              }

              v46 = *v44;
              *(this + 1) = v45;
              v28 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              --v43;
              ++v44;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
LABEL_52:
                LODWORD(v28) = 0;
                goto LABEL_65;
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
                goto LABEL_52;
              }
            }
          }

LABEL_65:
          *(a1 + 28) = v28;
          goto LABEL_69;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v54 = 0;
        return v54 & 1;
      }

LABEL_69:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_19B491C08(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7);
  }

  v8 = *(v3 + 8);
  if (v8)
  {

    return PB::Writer::writeSubmessage(this, v8);
  }

  return result;
}