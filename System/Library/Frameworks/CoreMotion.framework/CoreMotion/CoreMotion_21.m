uint64_t sub_19B4F6DE0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 124);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 124);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_29:
    result = PB::Writer::write(this, *(v3 + 68));
    if ((*(v3 + 124) & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 124);
  if ((v4 & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_5:
  if ((v4 & 0x20) != 0)
  {
LABEL_6:
    result = PB::Writer::write(this, *(v3 + 80));
  }

LABEL_7:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 124);
  if ((v11 & 0x800) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 104));
    v11 = *(v3 + 124);
    if ((v11 & 0x100) == 0)
    {
LABEL_15:
      if ((v11 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((v11 & 0x100) == 0)
  {
    goto LABEL_15;
  }

  result = PB::Writer::write(this, *(v3 + 92));
  v11 = *(v3 + 124);
  if ((v11 & 2) == 0)
  {
LABEL_16:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 64));
  v11 = *(v3 + 124);
  if ((v11 & 0x10) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 124);
  if ((v11 & 8) == 0)
  {
LABEL_18:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 124);
  if ((v11 & 0x400) == 0)
  {
LABEL_19:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 100));
  v11 = *(v3 + 124);
  if ((v11 & 0x10000) == 0)
  {
LABEL_20:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = *(v3 + 121);
  result = PB::Writer::write(this);
  v11 = *(v3 + 124);
  if ((v11 & 0x8000) == 0)
  {
LABEL_21:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = *(v3 + 120);
  result = PB::Writer::write(this);
  v11 = *(v3 + 124);
  if ((v11 & 0x200) == 0)
  {
LABEL_22:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 96));
  v11 = *(v3 + 124);
  if ((v11 & 0x1000) == 0)
  {
LABEL_23:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    result = PB::Writer::write(this, *(v3 + 84));
    if ((*(v3 + 124) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_42;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 108));
  v11 = *(v3 + 124);
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  if ((v11 & 0x2000) == 0)
  {
    return result;
  }

LABEL_42:
  v16 = *(v3 + 112);

  return PB::Writer::write(this, v16);
}

void *sub_19B4F7040(void *result)
{
  *result = &unk_1F0E2EEE8;
  result[1] = 0;
  return result;
}

void sub_19B4F7060(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2EEE8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4F70E0(PB::Base *a1)
{
  sub_19B4F7060(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F7118(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F7194(int a1, PB::Reader *this)
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

uint64_t sub_19B4F73F4(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B4F7410(uint64_t result)
{
  *result = &unk_1F0E2EEB0;
  *(result + 28) = 0;
  return result;
}

void sub_19B4F7438(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F7470(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "finalDecision");
    v5 = *(a1 + 28);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 25);
  PB::TextFormatter::format(this, "instantDecision");
  v5 = *(a1 + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "timeStart", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timeStop", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F7534(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v26 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v25 = *(*this + v2++);
            *(this + 1) = v2;
            v26 = v25 != 0;
          }

          *(a1 + 25) = v26;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 4u;
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

          *(a1 + 24) = v24;
          goto LABEL_45;
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
LABEL_36:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_44;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_36;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_44:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_45;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v27 = 0;
        return v27 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t sub_19B4F77D4(uint64_t result, PB::Writer *this)
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
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = *(v3 + 25);
      result = PB::Writer::write(this);
      if ((*(v3 + 28) & 4) == 0)
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
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v6 = *(v3 + 24);

  return PB::Writer::write(this);
}

void *sub_19B4F787C(void *result)
{
  *result = &unk_1F0E2BA30;
  result[1] = 0;
  return result;
}

void sub_19B4F789C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2BA30;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4F791C(PB::Base *a1)
{
  sub_19B4F789C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F7954(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F79D0(int a1, PB::Reader *this)
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

uint64_t sub_19B4F7C08(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B4F7C24(void *result)
{
  *result = &unk_1F0E2CDA8;
  result[1] = 0;
  return result;
}

void sub_19B4F7C44(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2CDA8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4F7CC4(PB::Base *a1)
{
  sub_19B4F7C44(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F7CFC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F7D78(int a1, PB::Reader *this)
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

uint64_t sub_19B4F7FD4(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B4F7FF0(uint64_t result)
{
  *result = &unk_1F0E2C7C0;
  *(result + 92) = 0;
  return result;
}

void sub_19B4F8018(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F8050(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "asymmetryProbabilityEstimate", *(a1 + 16));
    v5 = *(a1 + 92);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "cycleTime", *(a1 + 20));
  v5 = *(a1 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v6 = *(a1 + 24);
  PB::TextFormatter::format(this, "deviceSide");
  v5 = *(a1 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "doubleSupportEstimate", *(a1 + 28));
  v5 = *(a1 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = *(a1 + 32);
  PB::TextFormatter::format(this, "gaitPhase");
  v5 = *(a1 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = *(a1 + 36);
  PB::TextFormatter::format(this, "segmentsRejectedByIsCadenceConcordant");
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(a1 + 40);
  PB::TextFormatter::format(this, "segmentsRejectedByIsFeasibleWalkingSpeed");
  v5 = *(a1 + 92);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(a1 + 44);
  PB::TextFormatter::format(this, "segmentsRejectedByIsNotRunning");
  v5 = *(a1 + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "segmentsRejectedByIsPendular");
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(a1 + 52);
  PB::TextFormatter::format(this, "segmentsRejectedByIsSufficientVerticalTwist");
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(a1 + 56);
  PB::TextFormatter::format(this, "segmentsRejectedByIsSwingStanceCycle");
  v5 = *(a1 + 92);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityAP", *(a1 + 60));
  v5 = *(a1 + 92);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityML", *(a1 + 64));
  v5 = *(a1 + 92);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityVT", *(a1 + 68));
  v5 = *(a1 + 92);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "stepLengthEstimate", *(a1 + 72));
  v5 = *(a1 + 92);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityAP", *(a1 + 76));
  v5 = *(a1 + 92);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityML", *(a1 + 80));
  v5 = *(a1 + 92);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityVT", *(a1 + 84));
  v5 = *(a1 + 92);
  if ((v5 & 1) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  v14 = *(a1 + 8);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 92) & 0x80000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(this, "walkSpeedEstimate", *(a1 + 88));
  }

LABEL_22:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F8314(uint64_t a1, PB::Reader *this)
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
          *(a1 + 92) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v122 = 0;
            v123 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v124 = v2 - v22;
            v125 = (v23 + v22);
            v126 = v22 + 1;
            while (1)
            {
              if (!v124)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_223;
              }

              v127 = v126;
              v128 = *v125;
              *(this + 1) = v127;
              v26 |= (v128 & 0x7F) << v122;
              if ((v128 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              --v124;
              ++v125;
              v126 = v127 + 1;
              v14 = v123++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_222;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_222:
            v2 = v127;
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
                goto LABEL_223;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_223:
          *(a1 + 8) = v26;
          goto LABEL_240;
        case 2u:
          *(a1 + 92) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_194;
        case 3u:
          *(a1 + 92) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_194;
        case 4u:
          *(a1 + 92) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_194;
        case 5u:
          *(a1 + 92) |= 0x20u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v96 = v2 - v30;
            v97 = (v31 + v30);
            v98 = v30 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_207;
              }

              v99 = v98;
              v100 = *v97;
              *(this + 1) = v99;
              v34 |= (v100 & 0x7F) << v94;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              --v96;
              ++v97;
              v98 = v99 + 1;
              v14 = v95++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_206:
                v2 = v99;
                goto LABEL_207;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_206;
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
              goto LABEL_207;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_207:
          *(a1 + 32) = v34;
          goto LABEL_240;
        case 6u:
          *(a1 + 92) |= 8u;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v129 = 0;
            v130 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v131 = v2 - v62;
            v132 = (v63 + v62);
            v133 = v62 + 1;
            while (1)
            {
              if (!v131)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_227;
              }

              v134 = v133;
              v135 = *v132;
              *(this + 1) = v134;
              v66 |= (v135 & 0x7F) << v129;
              if ((v135 & 0x80) == 0)
              {
                break;
              }

              v129 += 7;
              --v131;
              ++v132;
              v133 = v134 + 1;
              v14 = v130++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_226:
                v2 = v134;
                goto LABEL_227;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_226;
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
              goto LABEL_227;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_227:
          *(a1 + 24) = v66;
          goto LABEL_240;
        case 7u:
          *(a1 + 92) |= 0x800u;
          v78 = *(this + 1);
          v2 = *(this + 2);
          v79 = *this;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v143 = 0;
            v144 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(this + 1);
            }

            v145 = v2 - v78;
            v146 = (v79 + v78);
            v147 = v78 + 1;
            while (1)
            {
              if (!v145)
              {
                LODWORD(v82) = 0;
                *(this + 24) = 1;
                goto LABEL_235;
              }

              v148 = v147;
              v149 = *v146;
              *(this + 1) = v148;
              v82 |= (v149 & 0x7F) << v143;
              if ((v149 & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              --v145;
              ++v146;
              v147 = v148 + 1;
              v14 = v144++ > 8;
              if (v14)
              {
                LODWORD(v82) = 0;
LABEL_234:
                v2 = v148;
                goto LABEL_235;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v82) = 0;
            }

            goto LABEL_234;
          }

          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            v2 = v84;
            *(this + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_235;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          LODWORD(v82) = 0;
LABEL_235:
          *(a1 + 56) = v82;
          goto LABEL_240;
        case 8u:
          *(a1 + 92) |= 0x100u;
          v54 = *(this + 1);
          v2 = *(this + 2);
          v55 = *this;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v115 = 0;
            v116 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(this + 1);
            }

            v117 = v2 - v54;
            v118 = (v55 + v54);
            v119 = v54 + 1;
            while (1)
            {
              if (!v117)
              {
                LODWORD(v58) = 0;
                *(this + 24) = 1;
                goto LABEL_219;
              }

              v120 = v119;
              v121 = *v118;
              *(this + 1) = v120;
              v58 |= (v121 & 0x7F) << v115;
              if ((v121 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              --v117;
              ++v118;
              v119 = v120 + 1;
              v14 = v116++ > 8;
              if (v14)
              {
                LODWORD(v58) = 0;
LABEL_218:
                v2 = v120;
                goto LABEL_219;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_218;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(this + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_219;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_219:
          *(a1 + 44) = v58;
          goto LABEL_240;
        case 9u:
          *(a1 + 92) |= 0x80u;
          v86 = *(this + 1);
          v2 = *(this + 2);
          v87 = *this;
          if (v86 > 0xFFFFFFFFFFFFFFF5 || v86 + 10 > v2)
          {
            v150 = 0;
            v151 = 0;
            v90 = 0;
            if (v2 <= v86)
            {
              v2 = *(this + 1);
            }

            v152 = v2 - v86;
            v153 = (v87 + v86);
            v154 = v86 + 1;
            while (1)
            {
              if (!v152)
              {
                LODWORD(v90) = 0;
                *(this + 24) = 1;
                goto LABEL_239;
              }

              v155 = v154;
              v156 = *v153;
              *(this + 1) = v155;
              v90 |= (v156 & 0x7F) << v150;
              if ((v156 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              --v152;
              ++v153;
              v154 = v155 + 1;
              v14 = v151++ > 8;
              if (v14)
              {
                LODWORD(v90) = 0;
LABEL_238:
                v2 = v155;
                goto LABEL_239;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v90) = 0;
            }

            goto LABEL_238;
          }

          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = (v87 + v86);
          v92 = v86 + 1;
          do
          {
            v2 = v92;
            *(this + 1) = v92;
            v93 = *v91++;
            v90 |= (v93 & 0x7F) << v88;
            if ((v93 & 0x80) == 0)
            {
              goto LABEL_239;
            }

            v88 += 7;
            ++v92;
            v14 = v89++ > 8;
          }

          while (!v14);
          LODWORD(v90) = 0;
LABEL_239:
          *(a1 + 40) = v90;
          goto LABEL_240;
        case 0xAu:
          *(a1 + 92) |= 0x200u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v110 = v2 - v46;
            v111 = (v47 + v46);
            v112 = v46 + 1;
            while (1)
            {
              if (!v110)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_215;
              }

              v113 = v112;
              v114 = *v111;
              *(this + 1) = v113;
              v50 |= (v114 & 0x7F) << v108;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              --v110;
              ++v111;
              v112 = v113 + 1;
              v14 = v109++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_214:
                v2 = v113;
                goto LABEL_215;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_214;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(this + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_215;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_215:
          *(a1 + 48) = v50;
          goto LABEL_240;
        case 0xBu:
          *(a1 + 92) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_194;
        case 0xCu:
          *(a1 + 92) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_194;
        case 0xDu:
          *(a1 + 92) |= 0x400u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v103 = v2 - v38;
            v104 = (v39 + v38);
            v105 = v38 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_211;
              }

              v106 = v105;
              v107 = *v104;
              *(this + 1) = v106;
              v42 |= (v107 & 0x7F) << v101;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              --v103;
              ++v104;
              v105 = v106 + 1;
              v14 = v102++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_210:
                v2 = v106;
                goto LABEL_211;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_210;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(this + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_211;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_211:
          *(a1 + 52) = v42;
          goto LABEL_240;
        case 0xEu:
          *(a1 + 92) |= 0x40u;
          v70 = *(this + 1);
          v2 = *(this + 2);
          v71 = *this;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v136 = 0;
            v137 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(this + 1);
            }

            v138 = v2 - v70;
            v139 = (v71 + v70);
            v140 = v70 + 1;
            while (1)
            {
              if (!v138)
              {
                LODWORD(v74) = 0;
                *(this + 24) = 1;
                goto LABEL_231;
              }

              v141 = v140;
              v142 = *v139;
              *(this + 1) = v141;
              v74 |= (v142 & 0x7F) << v136;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              --v138;
              ++v139;
              v140 = v141 + 1;
              v14 = v137++ > 8;
              if (v14)
              {
                LODWORD(v74) = 0;
LABEL_230:
                v2 = v141;
                goto LABEL_231;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_230;
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = (v71 + v70);
          v76 = v70 + 1;
          do
          {
            v2 = v76;
            *(this + 1) = v76;
            v77 = *v75++;
            v74 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_231;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_231:
          *(a1 + 36) = v74;
          goto LABEL_240;
        case 0xFu:
          *(a1 + 92) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_194;
        case 0x10u:
          *(a1 + 92) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_194;
        case 0x11u:
          *(a1 + 92) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_194;
        case 0x12u:
          *(a1 + 92) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_194;
        case 0x13u:
          *(a1 + 92) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_120;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_194;
        case 0x14u:
          *(a1 + 92) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 84) = *(*this + v2);
LABEL_194:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
LABEL_120:
            *(this + 24) = 1;
          }

          goto LABEL_240;
        default:
          if (!PB::Reader::skip(this))
          {
            v157 = 0;
            return v157 & 1;
          }

          v2 = *(this + 1);
LABEL_240:
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
  v157 = v4 ^ 1;
  return v157 & 1;
}

uint64_t sub_19B4F904C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 92);
    if ((v4 & 0x80000) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 92);
  if ((v4 & 0x10000) == 0)
  {
LABEL_19:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 92) & 0x40000) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 92);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v4 & 0x40000) == 0)
  {
    return result;
  }

LABEL_41:
  v14 = *(v3 + 84);

  return PB::Writer::write(this, v14);
}

uint64_t sub_19B4F92B4(uint64_t result)
{
  *result = &unk_1F0E2EE78;
  *(result + 20) = 0;
  return result;
}

void sub_19B4F92DC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F9314(uint64_t a1, PB::TextFormatter *this, char *a3)
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
    PB::TextFormatter::format(this, "yaw", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F9390(uint64_t a1, PB::Reader *this)
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
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_29;
        }

        *(a1 + 8) = *(*this + v2);
        v2 = *(this + 1) + 8;
LABEL_33:
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

    *(a1 + 20) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
LABEL_29:
      *(this + 24) = 1;
      goto LABEL_34;
    }

    *(a1 + 16) = *(*this + v2);
    v2 = *(this + 1) + 4;
    goto LABEL_33;
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B4F9598(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this, v5);
  }

  return result;
}

void *sub_19B4F9604(void *result)
{
  *result = &unk_1F0E2F3F0;
  result[1] = 0;
  return result;
}

void sub_19B4F9624(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2F3F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4F96A4(PB::Base *a1)
{
  sub_19B4F9624(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F96DC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F9758(int a1, PB::Reader *this)
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

uint64_t sub_19B4F99B8(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B4F99D4(uint64_t result)
{
  *result = &unk_1F0E38FC0;
  *(result + 64) = 0;
  return result;
}

void sub_19B4F99FC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4F9A34(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 0x1000) != 0)
  {
    v6 = *(a1 + 60);
    PB::TextFormatter::format(this, "doGyroPropagate");
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "estimate", *(a1 + 16));
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "gravVarianceSum", *(a1 + 20));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "horizontalRotation", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = *(a1 + 61);
  PB::TextFormatter::format(this, "isCourseStable");
  v5 = *(a1 + 64);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(a1 + 62);
  PB::TextFormatter::format(this, "isCourseValid");
  v5 = *(a1 + 64);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(a1 + 63);
  PB::TextFormatter::format(this, "isFiller");
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "isStablePoseFiltered", *(a1 + 28));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "kalmanGain", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "measurement", *(a1 + 36));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "measurementNoise", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "notHorizontalRotation", *(a1 + 44));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "radiusOfCurvatureFiltered", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "stateCov", *(a1 + 52));
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 64) & 0x800) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(this, "yawDelta", *(a1 + 56));
  }

LABEL_18:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4F9C78(uint64_t a1, PB::Reader *this)
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
        goto LABEL_84;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 64) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_79;
        case 2u:
          *(a1 + 64) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_78;
        case 3u:
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_78;
        case 4u:
          *(a1 + 64) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_78;
        case 5u:
          *(a1 + 64) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_78;
        case 6u:
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_78;
        case 7u:
          *(a1 + 64) |= 0x1000u;
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

          *(a1 + 60) = v27;
          goto LABEL_80;
        case 8u:
          *(a1 + 64) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_78;
        case 9u:
          *(a1 + 64) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_78;
        case 0xAu:
          *(a1 + 64) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_78;
        case 0xBu:
          *(a1 + 64) |= 0x4000u;
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

          *(a1 + 62) = v29;
          goto LABEL_80;
        case 0xCu:
          *(a1 + 64) |= 0x8000u;
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

          *(a1 + 63) = v23;
          goto LABEL_80;
        case 0xDu:
          *(a1 + 64) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_78;
        case 0xEu:
          *(a1 + 64) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_78;
        case 0xFu:
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_66:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 32) = *(*this + v2);
LABEL_78:
            v2 = *(this + 1) + 4;
LABEL_79:
            *(this + 1) = v2;
          }

          goto LABEL_80;
        case 0x10u:
          *(a1 + 64) |= 0x2000u;
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

          *(a1 + 61) = v25;
          goto LABEL_80;
        default:
          if (!PB::Reader::skip(this))
          {
            v30 = 0;
            return v30 & 1;
          }

          v2 = *(this + 1);
LABEL_80:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_84;
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

LABEL_84:
  v30 = v4 ^ 1;
  return v30 & 1;
}

uint64_t sub_19B4FA1DC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 64);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(result + 64) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = *(v3 + 60);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = *(v3 + 62);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x8000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = *(v3 + 63);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 64) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 0x2000) == 0)
  {
    return result;
  }

LABEL_33:
  v8 = *(v3 + 61);

  return PB::Writer::write(this);
}

void sub_19B4FA3D8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FA410(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 124);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "accuracy", *(a1 + 48));
    v5 = *(a1 + 124);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 52);
  PB::TextFormatter::format(this, "clientID");
  v5 = *(a1 + 124);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v7 = *(a1 + 120);
  PB::TextFormatter::format(this, "isGyroOn");
  v5 = *(a1 + 124);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v8 = *(a1 + 56);
  PB::TextFormatter::format(this, "magneticFieldCalibrationLevel");
  v5 = *(a1 + 124);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "magneticFieldX", *(a1 + 60));
  v5 = *(a1 + 124);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "magneticFieldY", *(a1 + 64));
  v5 = *(a1 + 124);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "magneticFieldZ", *(a1 + 68));
  v5 = *(a1 + 124);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "magneticHeading", *(a1 + 72));
  v5 = *(a1 + 124);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v9 = *(a1 + 76);
  PB::TextFormatter::format(this, "mode");
  v5 = *(a1 + 124);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 8));
  v5 = *(a1 + 124);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 16));
  v5 = *(a1 + 124);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 24));
  v5 = *(a1 + 124);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 32));
  v5 = *(a1 + 124);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "rotationRateX", *(a1 + 80));
  v5 = *(a1 + 124);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "rotationRateY", *(a1 + 84));
  v5 = *(a1 + 124);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "rotationRateZ", *(a1 + 88));
  v5 = *(a1 + 124);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(a1 + 92);
  PB::TextFormatter::format(this, "status");
  v5 = *(a1 + 124);
  if ((v5 & 0x10) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 124);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "trueHeading", *(a1 + 96));
  v5 = *(a1 + 124);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "userAccelerationX", *(a1 + 100));
  v5 = *(a1 + 124);
  if ((v5 & 0x80000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "userAccelerationY", *(a1 + 104));
  v5 = *(a1 + 124);
  if ((v5 & 0x100000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "userAccelerationZ", *(a1 + 108));
  v5 = *(a1 + 124);
  if ((v5 & 0x200000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  v11 = *(a1 + 112);
  PB::TextFormatter::format(this, "variant");
  if ((*(a1 + 124) & 0x400000) != 0)
  {
LABEL_25:
    PB::TextFormatter::format(this, "visionCompassBias", *(a1 + 116));
  }

LABEL_26:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FA754(uint64_t a1, PB::Reader *this)
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
        goto LABEL_191;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 124) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_63;
        case 2u:
          *(a1 + 124) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_63;
        case 3u:
          *(a1 + 124) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_63;
        case 4u:
          *(a1 + 124) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_63;
        case 5u:
          *(a1 + 124) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_63:
          v2 = *(this + 1) + 8;
          goto LABEL_161;
        case 6u:
          *(a1 + 124) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_160;
        case 7u:
          *(a1 + 124) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_160;
        case 8u:
          *(a1 + 124) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_160;
        case 9u:
          *(a1 + 124) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_160;
        case 0xAu:
          *(a1 + 124) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_160;
        case 0xBu:
          *(a1 + 124) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_160;
        case 0xCu:
          *(a1 + 124) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_160;
        case 0xDu:
          *(a1 + 124) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_160;
        case 0xEu:
          *(a1 + 124) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_160;
        case 0xFu:
          *(a1 + 124) |= 0x80u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v66 = v2 - v22;
            v67 = (v23 + v22);
            v68 = v22 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_173;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v26 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              --v66;
              ++v67;
              v68 = v69 + 1;
              v14 = v65++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_172:
                v2 = v69;
                goto LABEL_173;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_172;
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
              goto LABEL_173;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_173:
          *(a1 + 56) = v26;
          goto LABEL_162;
        case 0x10u:
          *(a1 + 124) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_160;
        case 0x11u:
          *(a1 + 124) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_160;
        case 0x12u:
          *(a1 + 124) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_160;
        case 0x13u:
          *(a1 + 124) |= 0x1000u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v85 = 0;
            v86 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v87 = v2 - v46;
            v88 = (v47 + v46);
            v89 = v46 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_185;
              }

              v90 = v89;
              v91 = *v88;
              *(this + 1) = v90;
              v50 |= (v91 & 0x7F) << v85;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              --v87;
              ++v88;
              v89 = v90 + 1;
              v14 = v86++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_184:
                v2 = v90;
                goto LABEL_185;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_184;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(this + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_185;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_185:
          *(a1 + 76) = v50;
          goto LABEL_162;
        case 0x14u:
          *(a1 + 124) |= 0x40u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v92 = 0;
            v93 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v94 = v2 - v56;
            v95 = (v57 + v56);
            v96 = v56 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_189;
              }

              v97 = v96;
              v98 = *v95;
              *(this + 1) = v97;
              v60 |= (v98 & 0x7F) << v92;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              v92 += 7;
              --v94;
              ++v95;
              v96 = v97 + 1;
              v14 = v93++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_188:
                v2 = v97;
                goto LABEL_189;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_188;
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
              goto LABEL_189;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_189:
          *(a1 + 52) = v60;
          goto LABEL_162;
        case 0x15u:
          *(a1 + 124) |= 0x10000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v73 = v2 - v30;
            v74 = (v31 + v30);
            v75 = v30 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_177;
              }

              v76 = v75;
              v77 = *v74;
              *(this + 1) = v76;
              v34 |= (v77 & 0x7F) << v71;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              --v73;
              ++v74;
              v75 = v76 + 1;
              v14 = v72++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_176:
                v2 = v76;
                goto LABEL_177;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_176;
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
              goto LABEL_177;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_177:
          *(a1 + 92) = v34;
          goto LABEL_162;
        case 0x16u:
          *(a1 + 124) |= 0x200000u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v80 = v2 - v38;
            v81 = (v39 + v38);
            v82 = v38 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_181;
              }

              v83 = v82;
              v84 = *v81;
              *(this + 1) = v83;
              v42 |= (v84 & 0x7F) << v78;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              --v80;
              ++v81;
              v82 = v83 + 1;
              v14 = v79++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_180:
                v2 = v83;
                goto LABEL_181;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_180;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(this + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_181;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_181:
          *(a1 + 112) = v42;
          goto LABEL_162;
        case 0x17u:
          *(a1 + 124) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v55 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v54 = *(*this + v2++);
            *(this + 1) = v2;
            v55 = v54 != 0;
          }

          *(a1 + 120) = v55;
          goto LABEL_162;
        case 0x18u:
          *(a1 + 124) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 116) = *(*this + v2);
LABEL_160:
            v2 = *(this + 1) + 4;
LABEL_161:
            *(this + 1) = v2;
          }

          else
          {
LABEL_114:
            *(this + 24) = 1;
          }

          goto LABEL_162;
        default:
          if (!PB::Reader::skip(this))
          {
            v99 = 0;
            return v99 & 1;
          }

          v2 = *(this + 1);
LABEL_162:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_191;
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

LABEL_191:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t sub_19B4FB250(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 124);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 124);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 124);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 124);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 124);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 124);
  if ((v4 & 0x40000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 124);
  if ((v4 & 0x80000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 124);
  if ((v4 & 0x100000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 124);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 124);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 124);
  if ((v4 & 0x100) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 124);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 124);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 124);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v5 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 124);
  if ((v4 & 0x20000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 124);
  if ((v4 & 0x20) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 124);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x40) == 0)
  {
LABEL_21:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v7 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x10000) == 0)
  {
LABEL_22:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x200000) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v10 = *(v3 + 120);
    result = PB::Writer::write(this);
    if ((*(v3 + 124) & 0x400000) == 0)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_47:
  v9 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 124);
  if ((v4 & 0x800000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v4 & 0x400000) == 0)
  {
    return result;
  }

LABEL_49:
  v11 = *(v3 + 116);

  return PB::Writer::write(this, v11);
}

uint64_t sub_19B4FB528(uint64_t result)
{
  *result = &unk_1F0E2E0B0;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_19B4FB54C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2E0B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4FB5CC(PB::Base *a1)
{
  sub_19B4FB54C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FB604(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "deviceMotion");
  }

  v6 = *(a1 + 20);
  if (v6)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "inQuiescentMode");
    v6 = *(a1 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(a1 + 17);
    PB::TextFormatter::format(this, "shouldGyroBeOn");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FB6B8(_BYTE *a1, PB::Reader *this)
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
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        a1[20] |= 2u;
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

        a1[17] = v30;
      }

      else if (v22 == 2)
      {
        a1[20] |= 1u;
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

        a1[16] = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v32 = 0;
          return v32 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_40:
  v32 = v4 ^ 1;
  return v32 & 1;
}

uint64_t sub_19B4FB994(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = v3[20];
  if (v5)
  {
    v6 = v3[16];
    result = PB::Writer::write(this);
    v5 = v3[20];
  }

  if ((v5 & 2) != 0)
  {
    v7 = v3[17];

    return PB::Writer::write(this);
  }

  return result;
}

void sub_19B4FBA14(PB::Base *this)
{
  *this = &unk_1F0E2D6A0;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  PB::Base::~Base(this);
}

void sub_19B4FBAC8(PB::Base *a1)
{
  sub_19B4FBA14(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FBB00(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "dx", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "estimate", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "measurement", v13);
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "noisevariance", v16);
  }

  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(this, "residual", v19);
  }

  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "statevariance", v22);
  }

  if (*(a1 + 160))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 152));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FBC78(uint64_t a1, PB::Reader *this)
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
        goto LABEL_245;
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
        goto LABEL_245;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        break;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_247:
              v196 = 0;
              return v196 & 1;
            }

            v106 = *(this + 1);
            v107 = *(this + 2);
            while (v106 < v107 && (*(this + 24) & 1) == 0)
            {
              v109 = *(a1 + 40);
              v108 = *(a1 + 48);
              if (v109 >= v108)
              {
                v111 = *(a1 + 32);
                v112 = v109 - v111;
                v113 = (v109 - v111) >> 2;
                v114 = v113 + 1;
                if ((v113 + 1) >> 62)
                {
                  goto LABEL_248;
                }

                v115 = v108 - v111;
                if (v115 >> 1 > v114)
                {
                  v114 = v115 >> 1;
                }

                if (v115 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v116 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v114;
                }

                if (v116)
                {
                  sub_19B4C4FA8(a1 + 32, v116);
                }

                v117 = (v109 - v111) >> 2;
                v118 = (4 * v113);
                v119 = (4 * v113 - 4 * v117);
                *v118 = 0;
                v110 = v118 + 1;
                memcpy(v119, v111, v112);
                v120 = *(a1 + 32);
                *(a1 + 32) = v119;
                *(a1 + 40) = v110;
                *(a1 + 48) = 0;
                if (v120)
                {
                  operator delete(v120);
                }
              }

              else
              {
                *v109 = 0;
                v110 = v109 + 4;
              }

              *(a1 + 40) = v110;
              v121 = *(this + 1);
              if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
              {
LABEL_156:
                *(this + 24) = 1;
                goto LABEL_157;
              }

              *(v110 - 1) = *(*this + v121);
              v107 = *(this + 2);
              v106 = *(this + 1) + 4;
              *(this + 1) = v106;
            }

            goto LABEL_157;
          }

          v134 = *(a1 + 40);
          v133 = *(a1 + 48);
          if (v134 >= v133)
          {
            v165 = *(a1 + 32);
            v166 = v134 - v165;
            v167 = (v134 - v165) >> 2;
            v168 = v167 + 1;
            if ((v167 + 1) >> 62)
            {
LABEL_248:
              sub_19B5BE690();
            }

            v169 = v133 - v165;
            if (v169 >> 1 > v168)
            {
              v168 = v169 >> 1;
            }

            if (v169 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v170 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v170 = v168;
            }

            if (v170)
            {
              sub_19B4C4FA8(a1 + 32, v170);
            }

            v191 = (v134 - v165) >> 2;
            v192 = (4 * v167);
            v193 = (4 * v167 - 4 * v191);
            *v192 = 0;
            v124 = v192 + 1;
            memcpy(v193, v165, v166);
            v194 = *(a1 + 32);
            *(a1 + 32) = v193;
            *(a1 + 40) = v124;
            *(a1 + 48) = 0;
            if (v194)
            {
              operator delete(v194);
            }
          }

          else
          {
            *v134 = 0;
            v124 = v134 + 4;
          }

          *(a1 + 40) = v124;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_94;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_247;
            }

            v40 = *(this + 1);
            v41 = *(this + 2);
            while (v40 < v41 && (*(this + 24) & 1) == 0)
            {
              v43 = *(a1 + 64);
              v42 = *(a1 + 72);
              if (v43 >= v42)
              {
                v45 = *(a1 + 56);
                v46 = v43 - v45;
                v47 = (v43 - v45) >> 2;
                v48 = v47 + 1;
                if ((v47 + 1) >> 62)
                {
                  goto LABEL_248;
                }

                v49 = v42 - v45;
                if (v49 >> 1 > v48)
                {
                  v48 = v49 >> 1;
                }

                if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v50 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v50 = v48;
                }

                if (v50)
                {
                  sub_19B4C4FA8(a1 + 56, v50);
                }

                v51 = (v43 - v45) >> 2;
                v52 = (4 * v47);
                v53 = (4 * v47 - 4 * v51);
                *v52 = 0;
                v44 = v52 + 1;
                memcpy(v53, v45, v46);
                v54 = *(a1 + 56);
                *(a1 + 56) = v53;
                *(a1 + 64) = v44;
                *(a1 + 72) = 0;
                if (v54)
                {
                  operator delete(v54);
                }
              }

              else
              {
                *v43 = 0;
                v44 = v43 + 4;
              }

              *(a1 + 64) = v44;
              v55 = *(this + 1);
              if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(this + 2))
              {
                goto LABEL_156;
              }

              *(v44 - 1) = *(*this + v55);
              v41 = *(this + 2);
              v40 = *(this + 1) + 4;
              *(this + 1) = v40;
            }

            goto LABEL_157;
          }

          v132 = *(a1 + 64);
          v131 = *(a1 + 72);
          if (v132 >= v131)
          {
            v159 = *(a1 + 56);
            v160 = v132 - v159;
            v161 = (v132 - v159) >> 2;
            v162 = v161 + 1;
            if ((v161 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v163 = v131 - v159;
            if (v163 >> 1 > v162)
            {
              v162 = v163 >> 1;
            }

            if (v163 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v164 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v164 = v162;
            }

            if (v164)
            {
              sub_19B4C4FA8(a1 + 56, v164);
            }

            v187 = (v132 - v159) >> 2;
            v188 = (4 * v161);
            v189 = (4 * v161 - 4 * v187);
            *v188 = 0;
            v124 = v188 + 1;
            memcpy(v189, v159, v160);
            v190 = *(a1 + 56);
            *(a1 + 56) = v189;
            *(a1 + 64) = v124;
            *(a1 + 72) = 0;
            if (v190)
            {
              operator delete(v190);
            }
          }

          else
          {
            *v132 = 0;
            v124 = v132 + 4;
          }

          *(a1 + 64) = v124;
        }

        goto LABEL_236;
      }

      *(a1 + 160) |= 1u;
      v72 = *(this + 1);
      if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(this + 2))
      {
LABEL_238:
        *(this + 24) = 1;
        goto LABEL_241;
      }

      *(a1 + 152) = *(*this + v72);
      v73 = *(this + 1) + 8;
LABEL_240:
      *(this + 1) = v73;
LABEL_241:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_245;
      }
    }

    if (v23 > 5)
    {
      if (v23 == 6)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_247;
          }

          v90 = *(this + 1);
          v91 = *(this + 2);
          while (v90 < v91 && (*(this + 24) & 1) == 0)
          {
            v93 = *(a1 + 88);
            v92 = *(a1 + 96);
            if (v93 >= v92)
            {
              v95 = *(a1 + 80);
              v96 = v93 - v95;
              v97 = (v93 - v95) >> 2;
              v98 = v97 + 1;
              if ((v97 + 1) >> 62)
              {
                goto LABEL_248;
              }

              v99 = v92 - v95;
              if (v99 >> 1 > v98)
              {
                v98 = v99 >> 1;
              }

              if (v99 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v100 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v100 = v98;
              }

              if (v100)
              {
                sub_19B4C4FA8(a1 + 80, v100);
              }

              v101 = (v93 - v95) >> 2;
              v102 = (4 * v97);
              v103 = (4 * v97 - 4 * v101);
              *v102 = 0;
              v94 = v102 + 1;
              memcpy(v103, v95, v96);
              v104 = *(a1 + 80);
              *(a1 + 80) = v103;
              *(a1 + 88) = v94;
              *(a1 + 96) = 0;
              if (v104)
              {
                operator delete(v104);
              }
            }

            else
            {
              *v93 = 0;
              v94 = v93 + 4;
            }

            *(a1 + 88) = v94;
            v105 = *(this + 1);
            if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(this + 2))
            {
              goto LABEL_156;
            }

            *(v94 - 1) = *(*this + v105);
            v91 = *(this + 2);
            v90 = *(this + 1) + 4;
            *(this + 1) = v90;
          }

          goto LABEL_157;
        }

        v126 = *(a1 + 88);
        v125 = *(a1 + 96);
        if (v126 >= v125)
        {
          v141 = *(a1 + 80);
          v142 = v126 - v141;
          v143 = (v126 - v141) >> 2;
          v144 = v143 + 1;
          if ((v143 + 1) >> 62)
          {
            goto LABEL_248;
          }

          v145 = v125 - v141;
          if (v145 >> 1 > v144)
          {
            v144 = v145 >> 1;
          }

          if (v145 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v146 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v146 = v144;
          }

          if (v146)
          {
            sub_19B4C4FA8(a1 + 80, v146);
          }

          v175 = (v126 - v141) >> 2;
          v176 = (4 * v143);
          v177 = (4 * v143 - 4 * v175);
          *v176 = 0;
          v124 = v176 + 1;
          memcpy(v177, v141, v142);
          v178 = *(a1 + 80);
          *(a1 + 80) = v177;
          *(a1 + 88) = v124;
          *(a1 + 96) = 0;
          if (v178)
          {
            operator delete(v178);
          }
        }

        else
        {
          *v126 = 0;
          v124 = v126 + 4;
        }

        *(a1 + 88) = v124;
      }

      else
      {
        if (v23 != 7)
        {
LABEL_94:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_241;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_247;
          }

          v56 = *(this + 1);
          v57 = *(this + 2);
          while (v56 < v57 && (*(this + 24) & 1) == 0)
          {
            v59 = *(a1 + 136);
            v58 = *(a1 + 144);
            if (v59 >= v58)
            {
              v61 = *(a1 + 128);
              v62 = v59 - v61;
              v63 = (v59 - v61) >> 2;
              v64 = v63 + 1;
              if ((v63 + 1) >> 62)
              {
                goto LABEL_248;
              }

              v65 = v58 - v61;
              if (v65 >> 1 > v64)
              {
                v64 = v65 >> 1;
              }

              if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v66 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v66 = v64;
              }

              if (v66)
              {
                sub_19B4C4FA8(a1 + 128, v66);
              }

              v67 = (v59 - v61) >> 2;
              v68 = (4 * v63);
              v69 = (4 * v63 - 4 * v67);
              *v68 = 0;
              v60 = v68 + 1;
              memcpy(v69, v61, v62);
              v70 = *(a1 + 128);
              *(a1 + 128) = v69;
              *(a1 + 136) = v60;
              *(a1 + 144) = 0;
              if (v70)
              {
                operator delete(v70);
              }
            }

            else
            {
              *v59 = 0;
              v60 = v59 + 4;
            }

            *(a1 + 136) = v60;
            v71 = *(this + 1);
            if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(this + 2))
            {
              goto LABEL_156;
            }

            *(v60 - 1) = *(*this + v71);
            v57 = *(this + 2);
            v56 = *(this + 1) + 4;
            *(this + 1) = v56;
          }

          goto LABEL_157;
        }

        v130 = *(a1 + 136);
        v129 = *(a1 + 144);
        if (v130 >= v129)
        {
          v153 = *(a1 + 128);
          v154 = v130 - v153;
          v155 = (v130 - v153) >> 2;
          v156 = v155 + 1;
          if ((v155 + 1) >> 62)
          {
            goto LABEL_248;
          }

          v157 = v129 - v153;
          if (v157 >> 1 > v156)
          {
            v156 = v157 >> 1;
          }

          if (v157 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v158 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v158 = v156;
          }

          if (v158)
          {
            sub_19B4C4FA8(a1 + 128, v158);
          }

          v183 = (v130 - v153) >> 2;
          v184 = (4 * v155);
          v185 = (4 * v155 - 4 * v183);
          *v184 = 0;
          v124 = v184 + 1;
          memcpy(v185, v153, v154);
          v186 = *(a1 + 128);
          *(a1 + 128) = v185;
          *(a1 + 136) = v124;
          *(a1 + 144) = 0;
          if (v186)
          {
            operator delete(v186);
          }
        }

        else
        {
          *v130 = 0;
          v124 = v130 + 4;
        }

        *(a1 + 136) = v124;
      }
    }

    else if (v23 == 4)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_247;
        }

        v74 = *(this + 1);
        v75 = *(this + 2);
        while (v74 < v75 && (*(this + 24) & 1) == 0)
        {
          v77 = *(a1 + 112);
          v76 = *(a1 + 120);
          if (v77 >= v76)
          {
            v79 = *(a1 + 104);
            v80 = v77 - v79;
            v81 = (v77 - v79) >> 2;
            v82 = v81 + 1;
            if ((v81 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v83 = v76 - v79;
            if (v83 >> 1 > v82)
            {
              v82 = v83 >> 1;
            }

            if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v84 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v82;
            }

            if (v84)
            {
              sub_19B4C4FA8(a1 + 104, v84);
            }

            v85 = (v77 - v79) >> 2;
            v86 = (4 * v81);
            v87 = (4 * v81 - 4 * v85);
            *v86 = 0;
            v78 = v86 + 1;
            memcpy(v87, v79, v80);
            v88 = *(a1 + 104);
            *(a1 + 104) = v87;
            *(a1 + 112) = v78;
            *(a1 + 120) = 0;
            if (v88)
            {
              operator delete(v88);
            }
          }

          else
          {
            *v77 = 0;
            v78 = v77 + 4;
          }

          *(a1 + 112) = v78;
          v89 = *(this + 1);
          if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
          {
            goto LABEL_156;
          }

          *(v78 - 1) = *(*this + v89);
          v75 = *(this + 2);
          v74 = *(this + 1) + 4;
          *(this + 1) = v74;
        }

        goto LABEL_157;
      }

      v123 = *(a1 + 112);
      v122 = *(a1 + 120);
      if (v123 >= v122)
      {
        v135 = *(a1 + 104);
        v136 = v123 - v135;
        v137 = (v123 - v135) >> 2;
        v138 = v137 + 1;
        if ((v137 + 1) >> 62)
        {
          goto LABEL_248;
        }

        v139 = v122 - v135;
        if (v139 >> 1 > v138)
        {
          v138 = v139 >> 1;
        }

        if (v139 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v140 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = v138;
        }

        if (v140)
        {
          sub_19B4C4FA8(a1 + 104, v140);
        }

        v171 = (v123 - v135) >> 2;
        v172 = (4 * v137);
        v173 = (4 * v137 - 4 * v171);
        *v172 = 0;
        v124 = v172 + 1;
        memcpy(v173, v135, v136);
        v174 = *(a1 + 104);
        *(a1 + 104) = v173;
        *(a1 + 112) = v124;
        *(a1 + 120) = 0;
        if (v174)
        {
          operator delete(v174);
        }
      }

      else
      {
        *v123 = 0;
        v124 = v123 + 4;
      }

      *(a1 + 112) = v124;
    }

    else
    {
      if (v23 != 5)
      {
        goto LABEL_94;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_247;
        }

        v24 = *(this + 1);
        v25 = *(this + 2);
        while (v24 < v25 && (*(this + 24) & 1) == 0)
        {
          v27 = *(a1 + 16);
          v26 = *(a1 + 24);
          if (v27 >= v26)
          {
            v29 = *(a1 + 8);
            v30 = v27 - v29;
            v31 = (v27 - v29) >> 2;
            v32 = v31 + 1;
            if ((v31 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v33 = v26 - v29;
            if (v33 >> 1 > v32)
            {
              v32 = v33 >> 1;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v34 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              sub_19B4C4FA8(a1 + 8, v34);
            }

            v35 = (v27 - v29) >> 2;
            v36 = (4 * v31);
            v37 = (4 * v31 - 4 * v35);
            *v36 = 0;
            v28 = v36 + 1;
            memcpy(v37, v29, v30);
            v38 = *(a1 + 8);
            *(a1 + 8) = v37;
            *(a1 + 16) = v28;
            *(a1 + 24) = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v27 = 0;
            v28 = v27 + 4;
          }

          *(a1 + 16) = v28;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
          {
            goto LABEL_156;
          }

          *(v28 - 1) = *(*this + v39);
          v25 = *(this + 2);
          v24 = *(this + 1) + 4;
          *(this + 1) = v24;
        }

LABEL_157:
        PB::Reader::recallMark();
        goto LABEL_241;
      }

      v128 = *(a1 + 16);
      v127 = *(a1 + 24);
      if (v128 >= v127)
      {
        v147 = *(a1 + 8);
        v148 = v128 - v147;
        v149 = (v128 - v147) >> 2;
        v150 = v149 + 1;
        if ((v149 + 1) >> 62)
        {
          goto LABEL_248;
        }

        v151 = v127 - v147;
        if (v151 >> 1 > v150)
        {
          v150 = v151 >> 1;
        }

        if (v151 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v152 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v152 = v150;
        }

        if (v152)
        {
          sub_19B4C4FA8(a1 + 8, v152);
        }

        v179 = (v128 - v147) >> 2;
        v180 = (4 * v149);
        v181 = (4 * v149 - 4 * v179);
        *v180 = 0;
        v124 = v180 + 1;
        memcpy(v181, v147, v148);
        v182 = *(a1 + 8);
        *(a1 + 8) = v181;
        *(a1 + 16) = v124;
        *(a1 + 24) = 0;
        if (v182)
        {
          operator delete(v182);
        }
      }

      else
      {
        *v128 = 0;
        v124 = v128 + 4;
      }

      *(a1 + 16) = v124;
    }

LABEL_236:
    v195 = *(this + 1);
    if (v195 > 0xFFFFFFFFFFFFFFFBLL || v195 + 4 > *(this + 2))
    {
      goto LABEL_238;
    }

    *(v124 - 1) = *(*this + v195);
    v73 = *(this + 1) + 4;
    goto LABEL_240;
  }

LABEL_245:
  v196 = v4 ^ 1;
  return v196 & 1;
}

uint64_t sub_19B4FC8CC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 160))
  {
    result = PB::Writer::write(this, *(result + 152));
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = v3[7];
  v8 = v3[8];
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = v3[13];
  v11 = v3[14];
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = v3[1];
  v14 = v3[2];
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = v3[10];
  v17 = v3[11];
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::write(this, v18);
  }

  v20 = v3[16];
  v19 = v3[17];
  while (v20 != v19)
  {
    v21 = *v20++;
    result = PB::Writer::write(this, v21);
  }

  return result;
}

double sub_19B4FC9D0(uint64_t a1)
{
  *a1 = &unk_1F0E2D668;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B4FCA04(PB::Base *this)
{
  *this = &unk_1F0E2D668;
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

void sub_19B4FCA78(PB::Base *a1)
{
  sub_19B4FCA04(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FCAB0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "biasvariance", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "statevariance", v10);
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FCB78(uint64_t a1, PB::Reader *this)
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
        goto LABEL_107;
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
        goto LABEL_107;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_109;
          }

          v26 = *(this + 1);
          v27 = *(this + 2);
          while (v26 < v27 && (*(this + 24) & 1) == 0)
          {
            v29 = *(a1 + 40);
            v28 = *(a1 + 48);
            if (v29 >= v28)
            {
              v31 = *(a1 + 32);
              v32 = v29 - v31;
              v33 = (v29 - v31) >> 2;
              v34 = v33 + 1;
              if ((v33 + 1) >> 62)
              {
                goto LABEL_110;
              }

              v35 = v28 - v31;
              if (v35 >> 1 > v34)
              {
                v34 = v35 >> 1;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v36 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                sub_19B4C4FA8(a1 + 32, v36);
              }

              v37 = (v29 - v31) >> 2;
              v38 = (4 * v33);
              v39 = (4 * v33 - 4 * v37);
              *v38 = 0;
              v30 = v38 + 1;
              memcpy(v39, v31, v32);
              v40 = *(a1 + 32);
              *(a1 + 32) = v39;
              *(a1 + 40) = v30;
              *(a1 + 48) = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v29 = 0;
              v30 = v29 + 4;
            }

            *(a1 + 40) = v30;
            v41 = *(this + 1);
            if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(v30 - 1) = *(*this + v41);
            v27 = *(this + 2);
            v26 = *(this + 1) + 4;
            *(this + 1) = v26;
          }

LABEL_75:
          PB::Reader::recallMark();
          goto LABEL_103;
        }

        v59 = *(a1 + 40);
        v58 = *(a1 + 48);
        if (v59 >= v58)
        {
          v63 = *(a1 + 32);
          v64 = v59 - v63;
          v65 = (v59 - v63) >> 2;
          v66 = v65 + 1;
          if ((v65 + 1) >> 62)
          {
            goto LABEL_110;
          }

          v67 = v58 - v63;
          if (v67 >> 1 > v66)
          {
            v66 = v67 >> 1;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v68 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            sub_19B4C4FA8(a1 + 32, v68);
          }

          v75 = (v59 - v63) >> 2;
          v76 = (4 * v65);
          v77 = (4 * v65 - 4 * v75);
          *v76 = 0;
          v60 = v76 + 1;
          memcpy(v77, v63, v64);
          v78 = *(a1 + 32);
          *(a1 + 32) = v77;
          *(a1 + 40) = v60;
          *(a1 + 48) = 0;
          if (v78)
          {
            operator delete(v78);
          }
        }

        else
        {
          *v59 = 0;
          v60 = v59 + 4;
        }

        *(a1 + 40) = v60;
LABEL_98:
        v83 = *(this + 1);
        if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
        {
LABEL_100:
          *(this + 24) = 1;
          goto LABEL_103;
        }

        *(v60 - 1) = *(*this + v83);
        v25 = *(this + 1) + 4;
        goto LABEL_102;
      }

      if (v23 == 1)
      {
        *(a1 + 64) |= 1u;
        v24 = *(this + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
        {
          goto LABEL_100;
        }

        *(a1 + 56) = *(*this + v24);
        v25 = *(this + 1) + 8;
LABEL_102:
        *(this + 1) = v25;
        goto LABEL_103;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_109:
        v84 = 0;
        return v84 & 1;
      }

LABEL_103:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_109;
      }

      v42 = *(this + 1);
      v43 = *(this + 2);
      while (v42 < v43 && (*(this + 24) & 1) == 0)
      {
        v45 = *(a1 + 16);
        v44 = *(a1 + 24);
        if (v45 >= v44)
        {
          v47 = *(a1 + 8);
          v48 = v45 - v47;
          v49 = (v45 - v47) >> 2;
          v50 = v49 + 1;
          if ((v49 + 1) >> 62)
          {
            goto LABEL_110;
          }

          v51 = v44 - v47;
          if (v51 >> 1 > v50)
          {
            v50 = v51 >> 1;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v52 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_19B4C4FA8(a1 + 8, v52);
          }

          v53 = (v45 - v47) >> 2;
          v54 = (4 * v49);
          v55 = (4 * v49 - 4 * v53);
          *v54 = 0;
          v46 = v54 + 1;
          memcpy(v55, v47, v48);
          v56 = *(a1 + 8);
          *(a1 + 8) = v55;
          *(a1 + 16) = v46;
          *(a1 + 24) = 0;
          if (v56)
          {
            operator delete(v56);
          }
        }

        else
        {
          *v45 = 0;
          v46 = v45 + 4;
        }

        *(a1 + 16) = v46;
        v57 = *(this + 1);
        if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
        {
LABEL_74:
          *(this + 24) = 1;
          goto LABEL_75;
        }

        *(v46 - 1) = *(*this + v57);
        v43 = *(this + 2);
        v42 = *(this + 1) + 4;
        *(this + 1) = v42;
      }

      goto LABEL_75;
    }

    v62 = *(a1 + 16);
    v61 = *(a1 + 24);
    if (v62 >= v61)
    {
      v69 = *(a1 + 8);
      v70 = v62 - v69;
      v71 = (v62 - v69) >> 2;
      v72 = v71 + 1;
      if ((v71 + 1) >> 62)
      {
LABEL_110:
        sub_19B5BE690();
      }

      v73 = v61 - v69;
      if (v73 >> 1 > v72)
      {
        v72 = v73 >> 1;
      }

      if (v73 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v74 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      if (v74)
      {
        sub_19B4C4FA8(a1 + 8, v74);
      }

      v79 = (v62 - v69) >> 2;
      v80 = (4 * v71);
      v81 = (4 * v71 - 4 * v79);
      *v80 = 0;
      v60 = v80 + 1;
      memcpy(v81, v69, v70);
      v82 = *(a1 + 8);
      *(a1 + 8) = v81;
      *(a1 + 16) = v60;
      *(a1 + 24) = 0;
      if (v82)
      {
        operator delete(v82);
      }
    }

    else
    {
      *v62 = 0;
      v60 = v62 + 4;
    }

    *(a1 + 16) = v60;
    goto LABEL_98;
  }

LABEL_107:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_19B4FD0FC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 64))
  {
    result = PB::Writer::write(this, *(result + 56));
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v8 = v3[1];
  v7 = v3[2];
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::write(this, v9);
  }

  return result;
}

uint64_t sub_19B4FD180(uint64_t result)
{
  *result = &unk_1F0E2D010;
  *(result + 28) = 0;
  return result;
}

void sub_19B4FD1A8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FD1E0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "cadence", *(a1 + 24));
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

  PB::TextFormatter::format(this, "theta", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FD284(uint64_t a1, PB::Reader *this)
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
        *(a1 + 28) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_34;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_31:
        v2 = *(this + 1) + 8;
LABEL_38:
        *(this + 1) = v2;
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_34;
        }

        *(a1 + 16) = *(*this + v2);
        goto LABEL_31;
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

    *(a1 + 28) |= 4u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
LABEL_34:
      *(this + 24) = 1;
      goto LABEL_39;
    }

    *(a1 + 24) = *(*this + v2);
    v2 = *(this + 1) + 4;
    goto LABEL_38;
  }

LABEL_43:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B4FD4CC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 16));
  v4 = *(v3 + 28);
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
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B4FD558(uint64_t result)
{
  *result = &unk_1F0E38FF8;
  *(result + 20) = 0;
  return result;
}

void sub_19B4FD580(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FD5B8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "displacingState");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FD634(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4FD900(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4FD96C(uint64_t result)
{
  *result = &unk_1F0E39030;
  *(result + 24) = 0;
  return result;
}

void sub_19B4FD994(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FD9CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 20);
    PB::TextFormatter::format(this, "isPitchStable");
    v5 = *(a1 + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "pitch", *(a1 + 16));
  if (*(a1 + 24))
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FDA70(uint64_t a1, PB::Reader *this)
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
        *(a1 + 24) |= 4u;
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

        *(a1 + 20) = v24;
        goto LABEL_39;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 24) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 8) = *(*this + v2);
        v2 = *(this + 1) + 8;
LABEL_38:
        *(this + 1) = v2;
        goto LABEL_39;
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
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

    *(a1 + 24) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_39;
    }

    *(a1 + 16) = *(*this + v2);
    v2 = *(this + 1) + 4;
    goto LABEL_38;
  }

LABEL_43:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B4FDCC4(uint64_t result, PB::Writer *this)
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
    result = PB::Writer::write(this, *(v3 + 16));
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
  v5 = *(v3 + 20);

  return PB::Writer::write(this);
}

uint64_t sub_19B4FDD50(uint64_t result)
{
  *result = &unk_1F0E2FFF8;
  *(result + 12) = 0;
  return result;
}

void sub_19B4FDD78(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FDDB0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "displayOn");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FDE10(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4FDFC4(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::write(this);
  }

  return result;
}

double sub_19B4FDFE4(uint64_t a1)
{
  *a1 = &unk_1F0E2DB70;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void sub_19B4FE030(PB::Base *this)
{
  *this = &unk_1F0E2DB70;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  PB::Base::~Base(this);
}

void sub_19B4FE124(PB::Base *a1)
{
  sub_19B4FE030(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FE15C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 168);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "AzABufferMean", *(a1 + 136));
    v5 = *(a1 + 168);
  }

  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "AzBBufferMean", *(a1 + 140));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "cachedAttitude", v8);
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "candidateA");
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    (*(*v10 + 32))(v10, this, "candidateB");
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "currAttitude", v13);
  }

  v14 = *(a1 + 168);
  if ((v14 & 0x10) != 0)
  {
    v22 = *(a1 + 144);
    PB::TextFormatter::format(this, "disambiguationFlag");
    v14 = *(a1 + 168);
    if ((v14 & 1) == 0)
    {
LABEL_15:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  PB::TextFormatter::format(this, "lastDoTUpdateTime", *(a1 + 120));
  if ((*(a1 + 168) & 0x20) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(this, "lastEstimatedDoTAngleRad", *(a1 + 148));
  }

LABEL_17:
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(this, "lpfInertialRotationRate", v17);
  }

  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "lpfInertialUserAccel", v20);
  }

  v21 = *(a1 + 168);
  if ((v21 & 0x200) != 0)
  {
    v23 = *(a1 + 164);
    PB::TextFormatter::format(this, "newDisambiguation");
    v21 = *(a1 + 168);
    if ((v21 & 0x40) == 0)
    {
LABEL_23:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }
  }

  else if ((v21 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v24 = *(a1 + 152);
  PB::TextFormatter::format(this, "numAbortedPeaks");
  v21 = *(a1 + 168);
  if ((v21 & 0x80) == 0)
  {
LABEL_24:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  v25 = *(a1 + 156);
  PB::TextFormatter::format(this, "numLargeYawDetections");
  v21 = *(a1 + 168);
  if ((v21 & 0x100) == 0)
  {
LABEL_25:
    if ((v21 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_36:
  v26 = *(a1 + 160);
  PB::TextFormatter::format(this, "stateFSM");
  if ((*(a1 + 168) & 2) != 0)
  {
LABEL_26:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 128));
  }

LABEL_27:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4FE408(uint64_t a1, PB::Reader *this)
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
        goto LABEL_267;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 168) |= 2u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 128) = *(*this + v23);
          goto LABEL_52;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_269:
              v207 = 0;
              return v207 & 1;
            }

            v89 = *(this + 1);
            v90 = *(this + 2);
            while (v89 < v90 && (*(this + 24) & 1) == 0)
            {
              v92 = *(a1 + 88);
              v91 = *(a1 + 96);
              if (v92 >= v91)
              {
                v94 = *(a1 + 80);
                v95 = v92 - v94;
                v96 = (v92 - v94) >> 2;
                v97 = v96 + 1;
                if ((v96 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v98 = v91 - v94;
                if (v98 >> 1 > v97)
                {
                  v97 = v98 >> 1;
                }

                if (v98 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v99 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v99 = v97;
                }

                if (v99)
                {
                  sub_19B4C4FA8(a1 + 80, v99);
                }

                v100 = (v92 - v94) >> 2;
                v101 = (4 * v96);
                v102 = (4 * v96 - 4 * v100);
                *v101 = 0;
                v93 = v101 + 1;
                memcpy(v102, v94, v95);
                v103 = *(a1 + 80);
                *(a1 + 80) = v102;
                *(a1 + 88) = v93;
                *(a1 + 96) = 0;
                if (v103)
                {
                  operator delete(v103);
                }
              }

              else
              {
                *v92 = 0;
                v93 = v92 + 4;
              }

              *(a1 + 88) = v93;
              v104 = *(this + 1);
              if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
              {
                goto LABEL_153;
              }

              *(v93 - 1) = *(*this + v104);
              v90 = *(this + 2);
              v89 = *(this + 1) + 4;
              *(this + 1) = v89;
            }

LABEL_154:
            PB::Reader::recallMark();
          }

          else
          {
            v147 = *(a1 + 88);
            v146 = *(a1 + 96);
            if (v147 >= v146)
            {
              v184 = *(a1 + 80);
              v185 = v147 - v184;
              v186 = (v147 - v184) >> 2;
              v187 = v186 + 1;
              if ((v186 + 1) >> 62)
              {
LABEL_270:
                sub_19B5BE690();
              }

              v188 = v146 - v184;
              if (v188 >> 1 > v187)
              {
                v187 = v188 >> 1;
              }

              if (v188 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v189 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v189 = v187;
              }

              if (v189)
              {
                sub_19B4C4FA8(a1 + 80, v189);
              }

              v202 = (v147 - v184) >> 2;
              v203 = (4 * v186);
              v204 = (4 * v186 - 4 * v202);
              *v203 = 0;
              v135 = v203 + 1;
              memcpy(v204, v184, v185);
              v205 = *(a1 + 80);
              *(a1 + 80) = v204;
              *(a1 + 88) = v135;
              *(a1 + 96) = 0;
              if (v205)
              {
                operator delete(v205);
              }
            }

            else
            {
              *v147 = 0;
              v135 = v147 + 4;
            }

            *(a1 + 88) = v135;
LABEL_257:
            v206 = *(this + 1);
            if (v206 <= 0xFFFFFFFFFFFFFFFBLL && v206 + 4 <= *(this + 2))
            {
              *(v135 - 1) = *(*this + v206);
LABEL_261:
              v42 = *(this + 1) + 4;
LABEL_262:
              *(this + 1) = v42;
            }

            else
            {
LABEL_259:
              *(this + 24) = 1;
            }
          }

LABEL_263:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_267;
          }

          break;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v56 = *(this + 1);
            v57 = *(this + 2);
            while (v56 < v57 && (*(this + 24) & 1) == 0)
            {
              v59 = *(a1 + 64);
              v58 = *(a1 + 72);
              if (v59 >= v58)
              {
                v61 = *(a1 + 56);
                v62 = v59 - v61;
                v63 = (v59 - v61) >> 2;
                v64 = v63 + 1;
                if ((v63 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v65 = v58 - v61;
                if (v65 >> 1 > v64)
                {
                  v64 = v65 >> 1;
                }

                if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v66 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v66 = v64;
                }

                if (v66)
                {
                  sub_19B4C4FA8(a1 + 56, v66);
                }

                v67 = (v59 - v61) >> 2;
                v68 = (4 * v63);
                v69 = (4 * v63 - 4 * v67);
                *v68 = 0;
                v60 = v68 + 1;
                memcpy(v69, v61, v62);
                v70 = *(a1 + 56);
                *(a1 + 56) = v69;
                *(a1 + 64) = v60;
                *(a1 + 72) = 0;
                if (v70)
                {
                  operator delete(v70);
                }
              }

              else
              {
                *v59 = 0;
                v60 = v59 + 4;
              }

              *(a1 + 64) = v60;
              v71 = *(this + 1);
              if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(this + 2))
              {
                goto LABEL_153;
              }

              *(v60 - 1) = *(*this + v71);
              v57 = *(this + 2);
              v56 = *(this + 1) + 4;
              *(this + 1) = v56;
            }

            goto LABEL_154;
          }

          v143 = *(a1 + 64);
          v142 = *(a1 + 72);
          if (v143 >= v142)
          {
            v172 = *(a1 + 56);
            v173 = v143 - v172;
            v174 = (v143 - v172) >> 2;
            v175 = v174 + 1;
            if ((v174 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v176 = v142 - v172;
            if (v176 >> 1 > v175)
            {
              v175 = v176 >> 1;
            }

            if (v176 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v177 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v175;
            }

            if (v177)
            {
              sub_19B4C4FA8(a1 + 56, v177);
            }

            v194 = (v143 - v172) >> 2;
            v195 = (4 * v174);
            v196 = (4 * v174 - 4 * v194);
            *v195 = 0;
            v135 = v195 + 1;
            memcpy(v196, v172, v173);
            v197 = *(a1 + 56);
            *(a1 + 56) = v196;
            *(a1 + 64) = v135;
            *(a1 + 72) = 0;
            if (v197)
            {
              operator delete(v197);
            }
          }

          else
          {
            *v143 = 0;
            v135 = v143 + 4;
          }

          *(a1 + 64) = v135;
          goto LABEL_257;
        case 4u:
          *(a1 + 168) |= 0x20u;
          v88 = *(this + 1);
          if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 148) = *(*this + v88);
          goto LABEL_261;
        case 5u:
          *(a1 + 168) |= 1u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 120) = *(*this + v41);
LABEL_52:
          v42 = *(this + 1) + 8;
          goto LABEL_262;
        case 6u:
          *(a1 + 168) |= 0x100u;
          v106 = *(this + 1);
          v105 = *(this + 2);
          v107 = *this;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(this + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_238;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v110) = 0;
            goto LABEL_238;
          }

          v148 = 0;
          v149 = 0;
          v110 = 0;
          v17 = v105 >= v106;
          v150 = v105 - v106;
          if (!v17)
          {
            v150 = 0;
          }

          v151 = (v107 + v106);
          v152 = v106 + 1;
          while (2)
          {
            if (v150)
            {
              v153 = *v151;
              *(this + 1) = v152;
              v110 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                --v150;
                ++v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_180;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v110) = 0;
              }
            }

            else
            {
              LODWORD(v110) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_238:
          *(a1 + 160) = v110;
          goto LABEL_263;
        case 7u:
          operator new();
        case 8u:
          operator new();
        case 9u:
          *(a1 + 168) |= 0x10u;
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
                goto LABEL_244;
              }

              v127 += 7;
              ++v131;
              v14 = v128++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v129) = 0;
            goto LABEL_244;
          }

          v160 = 0;
          v161 = 0;
          v129 = 0;
          v17 = v124 >= v125;
          v162 = v124 - v125;
          if (!v17)
          {
            v162 = 0;
          }

          v163 = (v126 + v125);
          v164 = v125 + 1;
          while (2)
          {
            if (v162)
            {
              v165 = *v163;
              *(this + 1) = v164;
              v129 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                --v162;
                ++v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_196;
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

LABEL_244:
          *(a1 + 144) = v129;
          goto LABEL_263;
        case 0xAu:
          *(a1 + 168) |= 0x200u;
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

          *(a1 + 164) = v55;
          goto LABEL_263;
        case 0xBu:
          *(a1 + 168) |= 4u;
          v123 = *(this + 1);
          if (v123 > 0xFFFFFFFFFFFFFFFBLL || v123 + 4 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 136) = *(*this + v123);
          goto LABEL_261;
        case 0xCu:
          *(a1 + 168) |= 8u;
          v40 = *(this + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
          {
            goto LABEL_259;
          }

          *(a1 + 140) = *(*this + v40);
          goto LABEL_261;
        case 0xDu:
          *(a1 + 168) |= 0x40u;
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
                goto LABEL_235;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_164:
            LODWORD(v48) = 0;
            goto LABEL_235;
          }

          v136 = 0;
          v137 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v138 = v43 - v44;
          if (!v17)
          {
            v138 = 0;
          }

          v139 = (v45 + v44);
          v140 = v44 + 1;
          while (2)
          {
            if (v138)
            {
              v141 = *v139;
              *(this + 1) = v140;
              v48 |= (v141 & 0x7F) << v136;
              if (v141 < 0)
              {
                v136 += 7;
                --v138;
                ++v139;
                ++v140;
                v14 = v137++ > 8;
                if (v14)
                {
                  goto LABEL_164;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v48) = 0;
              }
            }

            else
            {
              LODWORD(v48) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_235:
          *(a1 + 152) = v48;
          goto LABEL_263;
        case 0xEu:
          *(a1 + 168) |= 0x80u;
          v115 = *(this + 1);
          v114 = *(this + 2);
          v116 = *this;
          if (v115 <= 0xFFFFFFFFFFFFFFF5 && v115 + 10 <= v114)
          {
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v120 = (v116 + v115);
            v121 = v115 + 1;
            do
            {
              *(this + 1) = v121;
              v122 = *v120++;
              v119 |= (v122 & 0x7F) << v117;
              if ((v122 & 0x80) == 0)
              {
                goto LABEL_241;
              }

              v117 += 7;
              ++v121;
              v14 = v118++ > 8;
            }

            while (!v14);
LABEL_188:
            LODWORD(v119) = 0;
            goto LABEL_241;
          }

          v154 = 0;
          v155 = 0;
          v119 = 0;
          v17 = v114 >= v115;
          v156 = v114 - v115;
          if (!v17)
          {
            v156 = 0;
          }

          v157 = (v116 + v115);
          v158 = v115 + 1;
          while (2)
          {
            if (v156)
            {
              v159 = *v157;
              *(this + 1) = v158;
              v119 |= (v159 & 0x7F) << v154;
              if (v159 < 0)
              {
                v154 += 7;
                --v156;
                ++v157;
                ++v158;
                v14 = v155++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v119) = 0;
              }
            }

            else
            {
              LODWORD(v119) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_241:
          *(a1 + 156) = v119;
          goto LABEL_263;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v24 = *(this + 1);
            v25 = *(this + 2);
            while (v24 < v25 && (*(this + 24) & 1) == 0)
            {
              v27 = *(a1 + 16);
              v26 = *(a1 + 24);
              if (v27 >= v26)
              {
                v29 = *(a1 + 8);
                v30 = v27 - v29;
                v31 = (v27 - v29) >> 2;
                v32 = v31 + 1;
                if ((v31 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v33 = v26 - v29;
                if (v33 >> 1 > v32)
                {
                  v32 = v33 >> 1;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v34 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_19B4C4FA8(a1 + 8, v34);
                }

                v35 = (v27 - v29) >> 2;
                v36 = (4 * v31);
                v37 = (4 * v31 - 4 * v35);
                *v36 = 0;
                v28 = v36 + 1;
                memcpy(v37, v29, v30);
                v38 = *(a1 + 8);
                *(a1 + 8) = v37;
                *(a1 + 16) = v28;
                *(a1 + 24) = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v27 = 0;
                v28 = v27 + 4;
              }

              *(a1 + 16) = v28;
              v39 = *(this + 1);
              if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
              {
                goto LABEL_153;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 4;
              *(this + 1) = v24;
            }

            goto LABEL_154;
          }

          v134 = *(a1 + 16);
          v133 = *(a1 + 24);
          if (v134 >= v133)
          {
            v166 = *(a1 + 8);
            v167 = v134 - v166;
            v168 = (v134 - v166) >> 2;
            v169 = v168 + 1;
            if ((v168 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v170 = v133 - v166;
            if (v170 >> 1 > v169)
            {
              v169 = v170 >> 1;
            }

            if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v171 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v171 = v169;
            }

            if (v171)
            {
              sub_19B4C4FA8(a1 + 8, v171);
            }

            v190 = (v134 - v166) >> 2;
            v191 = (4 * v168);
            v192 = (4 * v168 - 4 * v190);
            *v191 = 0;
            v135 = v191 + 1;
            memcpy(v192, v166, v167);
            v193 = *(a1 + 8);
            *(a1 + 8) = v192;
            *(a1 + 16) = v135;
            *(a1 + 24) = 0;
            if (v193)
            {
              operator delete(v193);
            }
          }

          else
          {
            *v134 = 0;
            v135 = v134 + 4;
          }

          *(a1 + 16) = v135;
          goto LABEL_257;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v72 = *(this + 1);
            v73 = *(this + 2);
            while (v72 < v73 && (*(this + 24) & 1) == 0)
            {
              v75 = *(a1 + 40);
              v74 = *(a1 + 48);
              if (v75 >= v74)
              {
                v77 = *(a1 + 32);
                v78 = v75 - v77;
                v79 = (v75 - v77) >> 2;
                v80 = v79 + 1;
                if ((v79 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v81 = v74 - v77;
                if (v81 >> 1 > v80)
                {
                  v80 = v81 >> 1;
                }

                if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v82 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v82 = v80;
                }

                if (v82)
                {
                  sub_19B4C4FA8(a1 + 32, v82);
                }

                v83 = (v75 - v77) >> 2;
                v84 = (4 * v79);
                v85 = (4 * v79 - 4 * v83);
                *v84 = 0;
                v76 = v84 + 1;
                memcpy(v85, v77, v78);
                v86 = *(a1 + 32);
                *(a1 + 32) = v85;
                *(a1 + 40) = v76;
                *(a1 + 48) = 0;
                if (v86)
                {
                  operator delete(v86);
                }
              }

              else
              {
                *v75 = 0;
                v76 = v75 + 4;
              }

              *(a1 + 40) = v76;
              v87 = *(this + 1);
              if (v87 > 0xFFFFFFFFFFFFFFFBLL || v87 + 4 > *(this + 2))
              {
LABEL_153:
                *(this + 24) = 1;
                goto LABEL_154;
              }

              *(v76 - 1) = *(*this + v87);
              v73 = *(this + 2);
              v72 = *(this + 1) + 4;
              *(this + 1) = v72;
            }

            goto LABEL_154;
          }

          v145 = *(a1 + 40);
          v144 = *(a1 + 48);
          if (v145 >= v144)
          {
            v178 = *(a1 + 32);
            v179 = v145 - v178;
            v180 = (v145 - v178) >> 2;
            v181 = v180 + 1;
            if ((v180 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v182 = v144 - v178;
            if (v182 >> 1 > v181)
            {
              v181 = v182 >> 1;
            }

            if (v182 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v183 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v183 = v181;
            }

            if (v183)
            {
              sub_19B4C4FA8(a1 + 32, v183);
            }

            v198 = (v145 - v178) >> 2;
            v199 = (4 * v180);
            v200 = (4 * v180 - 4 * v198);
            *v199 = 0;
            v135 = v199 + 1;
            memcpy(v200, v178, v179);
            v201 = *(a1 + 32);
            *(a1 + 32) = v200;
            *(a1 + 40) = v135;
            *(a1 + 48) = 0;
            if (v201)
            {
              operator delete(v201);
            }
          }

          else
          {
            *v145 = 0;
            v135 = v145 + 4;
          }

          *(a1 + 40) = v135;
          goto LABEL_257;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_269;
          }

          goto LABEL_263;
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

LABEL_267:
  v207 = v4 ^ 1;
  return v207 & 1;
}

uint64_t sub_19B4FF2C4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 168) & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 128));
  }

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 168);
  if ((v10 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 148));
    v10 = *(v3 + 168);
    if ((v10 & 1) == 0)
    {
LABEL_11:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  result = PB::Writer::write(this, *(v3 + 120));
  if ((*(v3 + 168) & 0x100) != 0)
  {
LABEL_12:
    v11 = *(v3 + 160);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_13:
  v12 = *(v3 + 104);
  if (v12)
  {
    result = PB::Writer::writeSubmessage(this, v12);
  }

  v13 = *(v3 + 112);
  if (v13)
  {
    result = PB::Writer::writeSubmessage(this, v13);
  }

  v14 = *(v3 + 168);
  if ((v14 & 0x10) != 0)
  {
    v22 = *(v3 + 144);
    result = PB::Writer::writeVarInt(this);
    v14 = *(v3 + 168);
    if ((v14 & 0x200) == 0)
    {
LABEL_19:
      if ((v14 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }
  }

  else if ((*(v3 + 168) & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v23 = *(v3 + 164);
  result = PB::Writer::write(this);
  v14 = *(v3 + 168);
  if ((v14 & 4) == 0)
  {
LABEL_20:
    if ((v14 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 136));
  v14 = *(v3 + 168);
  if ((v14 & 8) == 0)
  {
LABEL_21:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_38:
    v24 = *(v3 + 152);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 168) & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 140));
  v14 = *(v3 + 168);
  if ((v14 & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v14 & 0x80) != 0)
  {
LABEL_23:
    v15 = *(v3 + 156);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_24:
  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::write(this, v18);
  }

  v20 = *(v3 + 32);
  v19 = *(v3 + 40);
  while (v20 != v19)
  {
    v21 = *v20++;
    result = PB::Writer::write(this, v21);
  }

  return result;
}

double sub_19B4FF4AC(uint64_t a1)
{
  *a1 = &unk_1F0E2E548;
  *(a1 + 204) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return result;
}

void sub_19B4FF500(PB::Base *this)
{
  *this = &unk_1F0E2E548;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    *(this + 2) = v9;
    operator delete(v9);
  }

  PB::Base::~Base(this);
}

void sub_19B4FF5F4(PB::Base *a1)
{
  sub_19B4FF500(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4FF62C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 176);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "TNBFrame");
  }

  if ((*(a1 + 204) & 2) != 0)
  {
    PB::TextFormatter::format(this, "dotQuality", *(a1 + 192));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "dotVector", v8);
  }

  if ((*(a1 + 204) & 8) != 0)
  {
    v9 = *(a1 + 200);
    PB::TextFormatter::format(this, "fusingGaze");
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "gazeVector", v12);
  }

  v13 = *(a1 + 204);
  if ((v13 & 0x10) != 0)
  {
    v14 = *(a1 + 201);
    PB::TextFormatter::format(this, "hasStep");
    v13 = *(a1 + 204);
  }

  if ((v13 & 0x20) != 0)
  {
    v15 = *(a1 + 202);
    PB::TextFormatter::format(this, "hasValidTNBFrame");
  }

  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(this, "lpfInertialRotationRate", v18);
  }

  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  while (v19 != v20)
  {
    v21 = *v19++;
    PB::TextFormatter::format(this, "lpfInertialUserAccel", v21);
  }

  v22 = *(a1 + 104);
  v23 = *(a1 + 112);
  while (v22 != v23)
  {
    v24 = *v22++;
    PB::TextFormatter::format(this, "rawDoTVector", v24);
  }

  v25 = *(a1 + 128);
  v26 = *(a1 + 136);
  while (v25 != v26)
  {
    v27 = *v25++;
    PB::TextFormatter::format(this, "rawInertialRotationRate", v27);
  }

  v28 = *(a1 + 152);
  v29 = *(a1 + 160);
  while (v28 != v29)
  {
    v30 = *v28++;
    PB::TextFormatter::format(this, "rawInertialUserAccel", v30);
  }

  v31 = *(a1 + 204);
  if ((v31 & 4) != 0)
  {
    PB::TextFormatter::format(this, "speed", *(a1 + 196));
    v31 = *(a1 + 204);
  }

  if (v31)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 184));
  }

  return MEMORY[0x1EEE30A90](this);
}