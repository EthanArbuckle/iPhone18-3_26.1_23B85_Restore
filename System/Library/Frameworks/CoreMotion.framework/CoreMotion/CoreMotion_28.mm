uint64_t sub_19B549E0C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B549E28(void *result)
{
  *result = &unk_1F0E39450;
  result[1] = 0;
  return result;
}

void sub_19B549E48(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E39450;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B549EC8(PB::Base *a1)
{
  sub_19B549E48(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B549F00(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B549F7C(int a1, PB::Reader *this)
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

uint64_t sub_19B54A198(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B54A1B4(void *result)
{
  *result = &unk_1F0E39488;
  result[1] = 0;
  return result;
}

void sub_19B54A1D4(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E39488;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B54A254(PB::Base *a1)
{
  sub_19B54A1D4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54A28C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54A308(int a1, PB::Reader *this)
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

uint64_t sub_19B54A524(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B54A540(uint64_t result)
{
  *result = &unk_1F0E302D0;
  *(result + 40) = 0;
  return result;
}

void sub_19B54A568(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54A5A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "begin", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 32);
  PB::TextFormatter::format(this, "bin");
  v5 = *(a1 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "end", *(a1 + 16));
  v5 = *(a1 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "kValue", *(a1 + 24));
  if ((*(a1 + 40) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(a1 + 36);
    PB::TextFormatter::format(this, "state");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54A684(uint64_t a1, PB::Reader *this)
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
            goto LABEL_85;
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
          *(a1 + 40) |= 8u;
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
                goto LABEL_80;
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
                goto LABEL_79;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_79:
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

LABEL_80:
          *(a1 + 32) = v35;
          goto LABEL_81;
        }

        if (v22 == 2)
        {
          *(a1 + 40) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_36:
            *(this + 24) = 1;
            goto LABEL_81;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_70;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 40) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_36;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_70;
          case 4:
            *(a1 + 40) |= 0x10u;
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
                  goto LABEL_76;
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
                  goto LABEL_75;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_75:
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

LABEL_76:
            *(a1 + 36) = v27;
            goto LABEL_81;
          case 5:
            *(a1 + 40) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_36;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_70:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_81;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_81:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_85:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B54AAE4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 8) != 0)
  {
    v5 = *(result + 32);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 40);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = *(v3 + 36);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 40) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v3 + 24);

  return PB::Writer::write(this, v7);
}

uint64_t sub_19B54ABA8(uint64_t result)
{
  *result = &unk_1F0E2FA80;
  *(result + 92) = 0;
  return result;
}

void sub_19B54ABD0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54AC08(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if (v5)
  {
    PB::TextFormatter::format(this, "distance", *(a1 + 8));
    v5 = *(a1 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "endTime", *(a1 + 16));
  v5 = *(a1 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "gpsSource", *(a1 + 24));
  v5 = *(a1 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "kvalue", *(a1 + 32));
  v5 = *(a1 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "kvalueTrack", *(a1 + 40));
  v5 = *(a1 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "percentGrade", *(a1 + 48));
  v5 = *(a1 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "runningFormStrideLength", *(a1 + 56));
  v5 = *(a1 + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = *(a1 + 80);
  PB::TextFormatter::format(this, "runningFormStrideLengthMetrics");
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(a1 + 84);
  PB::TextFormatter::format(this, "session");
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "speed", *(a1 + 64));
  v5 = *(a1 + 92);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "startTime", *(a1 + 72));
  if ((*(a1 + 92) & 0x800) != 0)
  {
LABEL_13:
    v6 = *(a1 + 88);
    PB::TextFormatter::format(this, "steps");
  }

LABEL_14:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54ADCC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_132;
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
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 92) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
LABEL_84:
                *(this + 24) = 1;
                goto LABEL_128;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_112;
            case 0xB:
              *(a1 + 92) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_84;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_112;
            case 0xC:
              *(a1 + 92) |= 0x200u;
              v31 = *(this + 1);
              v2 = *(this + 2);
              v32 = *this;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v54 = 0;
                v55 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(this + 1);
                }

                v56 = v2 - v31;
                v57 = (v32 + v31);
                v58 = v31 + 1;
                while (1)
                {
                  if (!v56)
                  {
                    LODWORD(v35) = 0;
                    *(this + 24) = 1;
                    goto LABEL_123;
                  }

                  v59 = v58;
                  v60 = *v57;
                  *(this + 1) = v59;
                  v35 |= (v60 & 0x7F) << v54;
                  if ((v60 & 0x80) == 0)
                  {
                    break;
                  }

                  v54 += 7;
                  --v56;
                  ++v57;
                  v58 = v59 + 1;
                  v14 = v55++ > 8;
                  if (v14)
                  {
                    LODWORD(v35) = 0;
                    goto LABEL_122;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v35) = 0;
                }

LABEL_122:
                v2 = v59;
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

LABEL_123:
              *(a1 + 80) = v35;
              goto LABEL_128;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 92) |= 0x400u;
              v39 = *(this + 1);
              v2 = *(this + 2);
              v40 = *this;
              if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
              {
                v61 = 0;
                v62 = 0;
                v43 = 0;
                if (v2 <= v39)
                {
                  v2 = *(this + 1);
                }

                v63 = v2 - v39;
                v64 = (v40 + v39);
                v65 = v39 + 1;
                while (1)
                {
                  if (!v63)
                  {
                    LODWORD(v43) = 0;
                    *(this + 24) = 1;
                    goto LABEL_127;
                  }

                  v66 = v65;
                  v67 = *v64;
                  *(this + 1) = v66;
                  v43 |= (v67 & 0x7F) << v61;
                  if ((v67 & 0x80) == 0)
                  {
                    break;
                  }

                  v61 += 7;
                  --v63;
                  ++v64;
                  v65 = v66 + 1;
                  v14 = v62++ > 8;
                  if (v14)
                  {
                    LODWORD(v43) = 0;
                    goto LABEL_126;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v43) = 0;
                }

LABEL_126:
                v2 = v66;
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
                    LODWORD(v43) = 0;
                    break;
                  }
                }
              }

LABEL_127:
              *(a1 + 84) = v43;
              goto LABEL_128;
            case 8:
              *(a1 + 92) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_84;
              }

              *(a1 + 64) = *(*this + v2);
              goto LABEL_112;
            case 9:
              *(a1 + 92) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_84;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_112;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 92) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_84;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_112;
          case 5:
            *(a1 + 92) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_84;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_112;
          case 6:
            *(a1 + 92) |= 0x800u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v47 = 0;
              v48 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v49 = v2 - v23;
              v50 = (v24 + v23);
              v51 = v23 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_119;
                }

                v52 = v51;
                v53 = *v50;
                *(this + 1) = v52;
                v27 |= (v53 & 0x7F) << v47;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v14 = v48++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_118;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_118:
              v2 = v52;
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

LABEL_119:
            *(a1 + 88) = v27;
            goto LABEL_128;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 92) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_84;
            }

            *(a1 + 72) = *(*this + v2);
            goto LABEL_112;
          case 2:
            *(a1 + 92) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_84;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_112;
          case 3:
            *(a1 + 92) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_84;
            }

            *(a1 + 32) = *(*this + v2);
LABEL_112:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_128;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_128:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_132:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_19B54B4C8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if ((v4 & 0x100) != 0)
  {
    result = PB::Writer::write(this, *(result + 72));
    v4 = *(v3 + 92);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 56));
    if ((*(v3 + 92) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_25:
  v7 = *(v3 + 80);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B54B650(uint64_t result)
{
  *result = &unk_1F0E2B328;
  *(result + 56) = 0;
  return result;
}

void sub_19B54B678(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54B6B0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "classifierCall");
    v5 = *(a1 + 56);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "featureSlope", *(a1 + 20));
  v5 = *(a1 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "maxAccel", *(a1 + 24));
  v5 = *(a1 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "maxMinPressure", *(a1 + 28));
  v5 = *(a1 + 56);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 32);
  PB::TextFormatter::format(this, "model");
  v5 = *(a1 + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "sCal", *(a1 + 36));
  v5 = *(a1 + 56);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "slopeNxCorr", *(a1 + 40));
  v5 = *(a1 + 56);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a1 + 44);
  PB::TextFormatter::format(this, "state");
  v5 = *(a1 + 56);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a1 + 8);
  PB::TextFormatter::format(this, "timestamp");
  v5 = *(a1 + 56);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "xCorr", *(a1 + 48));
  if ((*(a1 + 56) & 0x400) != 0)
  {
LABEL_12:
    v6 = *(a1 + 52);
    PB::TextFormatter::format(this, "zoh");
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54B854(uint64_t a1, PB::Reader *this)
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
            goto LABEL_146;
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
            *(a1 + 56) |= 1u;
            v33 = *(this + 1);
            v2 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v57 = 0;
              v58 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(this + 1);
              }

              v59 = v2 - v33;
              v60 = (v34 + v33);
              v61 = v33 + 1;
              while (1)
              {
                if (!v59)
                {
                  v37 = 0;
                  *(this + 24) = 1;
                  goto LABEL_129;
                }

                v62 = v61;
                v63 = *v60;
                *(this + 1) = v62;
                v37 |= (v63 & 0x7F) << v57;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                --v59;
                ++v60;
                v61 = v62 + 1;
                v14 = v58++ > 8;
                if (v14)
                {
                  v37 = 0;
                  goto LABEL_128;
                }
              }

              if (*(this + 24))
              {
                v37 = 0;
              }

LABEL_128:
              v2 = v62;
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
                v2 = v39;
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
                  v37 = 0;
                  break;
                }
              }
            }

LABEL_129:
            *(a1 + 8) = v37;
            goto LABEL_142;
          }

          if (v22 == 2)
          {
            *(a1 + 56) |= 0x20u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v64 = 0;
              v65 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v66 = v2 - v25;
              v67 = (v26 + v25);
              v68 = v25 + 1;
              while (1)
              {
                if (!v66)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_133;
                }

                v69 = v68;
                v70 = *v67;
                *(this + 1) = v69;
                v29 |= (v70 & 0x7F) << v64;
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
                  LODWORD(v29) = 0;
                  goto LABEL_132;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_132:
              v2 = v69;
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

LABEL_133:
            *(a1 + 32) = v29;
            goto LABEL_142;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 56) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_76:
                *(this + 24) = 1;
                goto LABEL_142;
              }

              *(a1 + 20) = *(*this + v2);
              goto LABEL_121;
            case 4:
              *(a1 + 56) |= 0x10u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 28) = *(*this + v2);
              goto LABEL_121;
            case 5:
              *(a1 + 56) |= 8u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_121;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 56) |= 2u;
            v49 = *(this + 1);
            v2 = *(this + 2);
            v50 = *this;
            if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v53 = 0;
              if (v2 <= v49)
              {
                v2 = *(this + 1);
              }

              v80 = v2 - v49;
              v81 = (v50 + v49);
              v82 = v49 + 1;
              while (1)
              {
                if (!v80)
                {
                  LODWORD(v53) = 0;
                  *(this + 24) = 1;
                  goto LABEL_141;
                }

                v83 = v82;
                v84 = *v81;
                *(this + 1) = v83;
                v53 |= (v84 & 0x7F) << v78;
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
                  LODWORD(v53) = 0;
                  goto LABEL_140;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v53) = 0;
              }

LABEL_140:
              v2 = v83;
            }

            else
            {
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = (v50 + v49);
              v55 = v49 + 1;
              while (1)
              {
                v2 = v55;
                *(this + 1) = v55;
                v56 = *v54++;
                v53 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                ++v55;
                v14 = v52++ > 8;
                if (v14)
                {
                  LODWORD(v53) = 0;
                  break;
                }
              }
            }

LABEL_141:
            *(a1 + 16) = v53;
            goto LABEL_142;
          case 0xA:
            *(a1 + 56) |= 0x100u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v73 = v2 - v41;
              v74 = (v42 + v41);
              v75 = v41 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v45) = 0;
                  *(this + 24) = 1;
                  goto LABEL_137;
                }

                v76 = v75;
                v77 = *v74;
                *(this + 1) = v76;
                v45 |= (v77 & 0x7F) << v71;
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
                  LODWORD(v45) = 0;
                  goto LABEL_136;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_136:
              v2 = v76;
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
                v2 = v47;
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
                  LODWORD(v45) = 0;
                  break;
                }
              }
            }

LABEL_137:
            *(a1 + 44) = v45;
            goto LABEL_142;
          case 0xB:
            *(a1 + 56) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_121;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 56) |= 0x200u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_121;
          case 7:
            *(a1 + 56) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 40) = *(*this + v2);
LABEL_121:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_142;
          case 8:
            *(a1 + 56) |= 0x400u;
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
            goto LABEL_142;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v85 = 0;
        return v85 & 1;
      }

      v2 = *(this + 1);
LABEL_142:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_146:
  v85 = v4 ^ 1;
  return v85 & 1;
}

uint64_t sub_19B54BFE8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
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

  v6 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 56);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 56);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 56);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = *(v3 + 52);
  result = PB::Writer::write(this);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v9 = *(v3 + 44);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 56) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v8 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_23:
  v10 = *(v3 + 36);

  return PB::Writer::write(this, v10);
}

uint64_t sub_19B54C154(uint64_t result)
{
  *result = &unk_1F0E2EB68;
  *(result + 32) = 0;
  return result;
}

void sub_19B54C17C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54C1B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dirAngleRad", *(a1 + 24));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "extremaVal", *(a1 + 28));
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "peakTimestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "valleyTimestamp", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54C278(uint64_t a1, PB::Reader *this)
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
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 8;
LABEL_44:
          *(this + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_43;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_38:
          v2 = *(this + 1) + 4;
          goto LABEL_44;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B54C508(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 28));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 8));
      if ((*(v3 + 32) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B54C5B0(uint64_t result)
{
  *result = &unk_1F0E394C0;
  *(result + 92) = 0;
  return result;
}

void sub_19B54C5D8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54C610(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "binormalX", *(a1 + 16));
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

  PB::TextFormatter::format(this, "binormalY", *(a1 + 20));
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
  PB::TextFormatter::format(this, "binormalZ", *(a1 + 24));
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
  PB::TextFormatter::format(this, "centerFrequency", *(a1 + 28));
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
  PB::TextFormatter::format(this, "curvature", *(a1 + 32));
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
  PB::TextFormatter::format(this, "curveX", *(a1 + 36));
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
  PB::TextFormatter::format(this, "curveY", *(a1 + 40));
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
  PB::TextFormatter::format(this, "curveZ", *(a1 + 44));
  v5 = *(a1 + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6 = *(a1 + 48);
  PB::TextFormatter::format(this, "idxFilter");
  v5 = *(a1 + 92);
  if ((v5 & 0x80000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v7 = *(a1 + 88);
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "normalX", *(a1 + 52));
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "normalY", *(a1 + 56));
  v5 = *(a1 + 92);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "normalZ", *(a1 + 60));
  v5 = *(a1 + 92);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "parametricSpeed", *(a1 + 64));
  v5 = *(a1 + 92);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "tangentX", *(a1 + 68));
  v5 = *(a1 + 92);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "tangentY", *(a1 + 72));
  v5 = *(a1 + 92);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "tangentZ", *(a1 + 76));
  v5 = *(a1 + 92);
  if ((v5 & 1) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 92);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  PB::TextFormatter::format(this, "torsion", *(a1 + 80));
  if ((*(a1 + 92) & 0x40000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(this, "uncertainty", *(a1 + 84));
  }

LABEL_22:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54C8D4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_110;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 92) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_100;
        case 2u:
          *(a1 + 92) |= 0x200u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v34 = v2 - v24;
            v35 = (v25 + v24);
            v36 = v24 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_108;
              }

              v37 = v36;
              v38 = *v35;
              *(this + 1) = v37;
              v28 |= (v38 & 0x7F) << v32;
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
                LODWORD(v28) = 0;
LABEL_107:
                v2 = v37;
                goto LABEL_108;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_107;
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
              goto LABEL_108;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_108:
          *(a1 + 48) = v28;
          goto LABEL_101;
        case 3u:
          *(a1 + 92) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_99;
        case 4u:
          *(a1 + 92) |= 0x80000u;
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

          *(a1 + 88) = v23;
          goto LABEL_101;
        case 5u:
          *(a1 + 92) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_99;
        case 6u:
          *(a1 + 92) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_99;
        case 7u:
          *(a1 + 92) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_99;
        case 8u:
          *(a1 + 92) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_99;
        case 9u:
          *(a1 + 92) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_99;
        case 0xAu:
          *(a1 + 92) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_99;
        case 0xBu:
          *(a1 + 92) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_99;
        case 0xCu:
          *(a1 + 92) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_99;
        case 0xDu:
          *(a1 + 92) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_99;
        case 0xEu:
          *(a1 + 92) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_99;
        case 0xFu:
          *(a1 + 92) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_99;
        case 0x10u:
          *(a1 + 92) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_99;
        case 0x11u:
          *(a1 + 92) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_99;
        case 0x12u:
          *(a1 + 92) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_99;
        case 0x13u:
          *(a1 + 92) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_99;
        case 0x14u:
          *(a1 + 92) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 84) = *(*this + v2);
LABEL_99:
            v2 = *(this + 1) + 4;
LABEL_100:
            *(this + 1) = v2;
          }

          else
          {
LABEL_87:
            *(this + 24) = 1;
          }

          goto LABEL_101;
        default:
          if (!PB::Reader::skip(this))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(this + 1);
LABEL_101:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_110;
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

LABEL_110:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_19B54CFC0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 92);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 92);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(v3 + 88);
  result = PB::Writer::write(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x10000) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_15:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
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
  result = PB::Writer::write(this, *(v3 + 32));
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
  v7 = *(v3 + 84);

  return PB::Writer::write(this, v7);
}

uint64_t sub_19B54D228(uint64_t result)
{
  *result = &unk_1F0E2B1A0;
  *(result + 36) = -1;
  *(result + 44) = 0;
  return result;
}

void sub_19B54D258(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54D290(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
    v5 = *(a1 + 44);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 44) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "peakHalfWidth", *(a1 + 28));
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "peakMagnitude", *(a1 + 32));
  v5 = *(a1 + 44);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "peakTime", *(a1 + 8));
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
  v7 = *(a1 + 36);
  PB::TextFormatter::format(this, "tapAcceptStatus");
  v5 = *(a1 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "tapCounter");
  if ((*(a1 + 44) & 2) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54D3B4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_113;
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
            *(a1 + 44) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_59:
              *(this + 24) = 1;
              goto LABEL_109;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_92:
            v2 = *(this + 1) + 8;
LABEL_93:
            *(this + 1) = v2;
            goto LABEL_109;
          case 2:
            *(a1 + 44) |= 4u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v63 = v2 - v39;
              v64 = (v40 + v39);
              v65 = v39 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_108;
                }

                v66 = v65;
                v67 = *v64;
                *(this + 1) = v66;
                v43 |= (v67 & 0x7F) << v61;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                --v63;
                ++v64;
                v65 = v66 + 1;
                v14 = v62++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_107;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_107:
              v2 = v66;
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
                  LODWORD(v43) = 0;
                  break;
                }
              }
            }

LABEL_108:
            *(a1 + 24) = v43;
            goto LABEL_109;
          case 3:
            *(a1 + 44) |= 0x20u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v56 = v2 - v23;
              v57 = (v24 + v23);
              v58 = v23 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_104;
                }

                v59 = v58;
                v60 = *v57;
                *(this + 1) = v59;
                v27 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                --v56;
                ++v57;
                v58 = v59 + 1;
                v14 = v55++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_103;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_103:
              v2 = v59;
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

LABEL_104:
            *(a1 + 36) = v27;
            goto LABEL_109;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 44) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_92;
        }

        if (v22 == 7)
        {
          *(a1 + 44) |= 0x40u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v47 = 0;
            v48 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v49 = v2 - v31;
            v50 = (v32 + v31);
            v51 = v31 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_100;
              }

              v52 = v51;
              v53 = *v50;
              *(this + 1) = v52;
              v35 |= (v53 & 0x7F) << v47;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              --v49;
              ++v50;
              v51 = v52 + 1;
              v14 = v48++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_99;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_99:
            v2 = v52;
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

LABEL_100:
          *(a1 + 40) = v35;
          goto LABEL_109;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 44) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(a1 + 44) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_56:
          v2 = *(this + 1) + 4;
          goto LABEL_93;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_109:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_113:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_19B54D970(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 44) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 44);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:
  v7 = *(v3 + 40);

  return PB::Writer::writeVarInt(this);
}

double sub_19B54DA6C(uint64_t a1)
{
  *a1 = &unk_1F0E2B168;
  *(a1 + 28) = -2;
  result = NAN;
  *(a1 + 52) = xmmword_19B7B5290;
  return result;
}

void sub_19B54DAA4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54DADC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 4) != 0)
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "axis");
    v5 = *(a1 + 64);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 28);
  PB::TextFormatter::format(this, "clippedPeakType");
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a1 + 32);
  PB::TextFormatter::format(this, "direction");
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a1 + 36);
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "peakHalfWidth", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "peakMagnitude", *(a1 + 44));
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "peakTime", *(a1 + 8));
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "peakValue", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(a1 + 52);
  PB::TextFormatter::format(this, "strideDirection");
  v5 = *(a1 + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(a1 + 56);
  PB::TextFormatter::format(this, "tapDetectStatus");
  v5 = *(a1 + 64);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  if ((*(a1 + 64) & 0x800) != 0)
  {
LABEL_13:
    v6 = *(a1 + 60);
    PB::TextFormatter::format(this, "widthCalculationMethod");
  }

LABEL_14:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54DCA0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_202;
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
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 64) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_101:
                *(this + 24) = 1;
                goto LABEL_198;
              }

              *(a1 + 44) = *(*this + v2);
              goto LABEL_161;
            case 0xB:
              *(a1 + 64) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_101;
              }

              *(a1 + 40) = *(*this + v2);
LABEL_161:
              v2 = *(this + 1) + 4;
              goto LABEL_162;
            case 0xC:
              *(a1 + 64) |= 1u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_101;
              }

              *(a1 + 8) = *(*this + v2);
LABEL_60:
              v2 = *(this + 1) + 8;
LABEL_162:
              *(this + 1) = v2;
              goto LABEL_198;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 64) |= 0x800u;
              v39 = *(this + 1);
              v2 = *(this + 2);
              v40 = *this;
              if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
              {
                v93 = 0;
                v94 = 0;
                v43 = 0;
                if (v2 <= v39)
                {
                  v2 = *(this + 1);
                }

                v95 = v2 - v39;
                v96 = (v40 + v39);
                v97 = v39 + 1;
                while (1)
                {
                  if (!v95)
                  {
                    LODWORD(v43) = 0;
                    *(this + 24) = 1;
                    goto LABEL_181;
                  }

                  v98 = v97;
                  v99 = *v96;
                  *(this + 1) = v98;
                  v43 |= (v99 & 0x7F) << v93;
                  if ((v99 & 0x80) == 0)
                  {
                    break;
                  }

                  v93 += 7;
                  --v95;
                  ++v96;
                  v97 = v98 + 1;
                  v14 = v94++ > 8;
                  if (v14)
                  {
                    LODWORD(v43) = 0;
                    goto LABEL_180;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v43) = 0;
                }

LABEL_180:
                v2 = v98;
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
                    LODWORD(v43) = 0;
                    break;
                  }
                }
              }

LABEL_181:
              *(a1 + 60) = v43;
              goto LABEL_198;
            case 8:
              *(a1 + 64) |= 8u;
              v63 = *(this + 1);
              v2 = *(this + 2);
              v64 = *this;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
              {
                v114 = 0;
                v115 = 0;
                v67 = 0;
                if (v2 <= v63)
                {
                  v2 = *(this + 1);
                }

                v116 = v2 - v63;
                v117 = (v64 + v63);
                v118 = v63 + 1;
                while (1)
                {
                  if (!v116)
                  {
                    LODWORD(v67) = 0;
                    *(this + 24) = 1;
                    goto LABEL_193;
                  }

                  v119 = v118;
                  v120 = *v117;
                  *(this + 1) = v119;
                  v67 |= (v120 & 0x7F) << v114;
                  if ((v120 & 0x80) == 0)
                  {
                    break;
                  }

                  v114 += 7;
                  --v116;
                  ++v117;
                  v118 = v119 + 1;
                  v14 = v115++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    goto LABEL_192;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v67) = 0;
                }

LABEL_192:
                v2 = v119;
              }

              else
              {
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = (v64 + v63);
                v69 = v63 + 1;
                while (1)
                {
                  v2 = v69;
                  *(this + 1) = v69;
                  v70 = *v68++;
                  v67 |= (v70 & 0x7F) << v65;
                  if ((v70 & 0x80) == 0)
                  {
                    break;
                  }

                  v65 += 7;
                  ++v69;
                  v14 = v66++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    break;
                  }
                }
              }

LABEL_193:
              *(a1 + 28) = v67;
              goto LABEL_198;
            case 9:
              *(a1 + 64) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_101;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_161;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 64) |= 4u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v100 = 0;
              v101 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v102 = v2 - v47;
              v103 = (v48 + v47);
              v104 = v47 + 1;
              while (1)
              {
                if (!v102)
                {
                  LODWORD(v51) = 0;
                  *(this + 24) = 1;
                  goto LABEL_185;
                }

                v105 = v104;
                v106 = *v103;
                *(this + 1) = v105;
                v51 |= (v106 & 0x7F) << v100;
                if ((v106 & 0x80) == 0)
                {
                  break;
                }

                v100 += 7;
                --v102;
                ++v103;
                v104 = v105 + 1;
                v14 = v101++ > 8;
                if (v14)
                {
                  LODWORD(v51) = 0;
                  goto LABEL_184;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }

LABEL_184:
              v2 = v105;
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
                  LODWORD(v51) = 0;
                  break;
                }
              }
            }

LABEL_185:
            *(a1 + 24) = v51;
            goto LABEL_198;
          case 5:
            *(a1 + 64) |= 0x10u;
            v71 = *(this + 1);
            v2 = *(this + 2);
            v72 = *this;
            if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v2)
            {
              v121 = 0;
              v122 = 0;
              v75 = 0;
              if (v2 <= v71)
              {
                v2 = *(this + 1);
              }

              v123 = v2 - v71;
              v124 = (v72 + v71);
              v125 = v71 + 1;
              while (1)
              {
                if (!v123)
                {
                  LODWORD(v75) = 0;
                  *(this + 24) = 1;
                  goto LABEL_197;
                }

                v126 = v125;
                v127 = *v124;
                *(this + 1) = v126;
                v75 |= (v127 & 0x7F) << v121;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v121 += 7;
                --v123;
                ++v124;
                v125 = v126 + 1;
                v14 = v122++ > 8;
                if (v14)
                {
                  LODWORD(v75) = 0;
                  goto LABEL_196;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v75) = 0;
              }

LABEL_196:
              v2 = v126;
            }

            else
            {
              v73 = 0;
              v74 = 0;
              v75 = 0;
              v76 = (v72 + v71);
              v77 = v71 + 1;
              while (1)
              {
                v2 = v77;
                *(this + 1) = v77;
                v78 = *v76++;
                v75 |= (v78 & 0x7F) << v73;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v73 += 7;
                ++v77;
                v14 = v74++ > 8;
                if (v14)
                {
                  LODWORD(v75) = 0;
                  break;
                }
              }
            }

LABEL_197:
            *(a1 + 32) = v75;
            goto LABEL_198;
          case 6:
            *(a1 + 64) |= 0x200u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v86 = 0;
              v87 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v88 = v2 - v31;
              v89 = (v32 + v31);
              v90 = v31 + 1;
              while (1)
              {
                if (!v88)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_177;
                }

                v91 = v90;
                v92 = *v89;
                *(this + 1) = v91;
                v35 |= (v92 & 0x7F) << v86;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v86 += 7;
                --v88;
                ++v89;
                v90 = v91 + 1;
                v14 = v87++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_176;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_176:
              v2 = v91;
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

LABEL_177:
            *(a1 + 52) = v35;
            goto LABEL_198;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 64) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_101;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_60;
          case 2:
            *(a1 + 64) |= 0x20u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v107 = 0;
              v108 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v109 = v2 - v55;
              v110 = (v56 + v55);
              v111 = v55 + 1;
              while (1)
              {
                if (!v109)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_189;
                }

                v112 = v111;
                v113 = *v110;
                *(this + 1) = v112;
                v59 |= (v113 & 0x7F) << v107;
                if ((v113 & 0x80) == 0)
                {
                  break;
                }

                v107 += 7;
                --v109;
                ++v110;
                v111 = v112 + 1;
                v14 = v108++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  goto LABEL_188;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_188:
              v2 = v112;
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
                v2 = v61;
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
                  LODWORD(v59) = 0;
                  break;
                }
              }
            }

LABEL_189:
            *(a1 + 36) = v59;
            goto LABEL_198;
          case 3:
            *(a1 + 64) |= 0x400u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v79 = 0;
              v80 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v81 = v2 - v23;
              v82 = (v24 + v23);
              v83 = v23 + 1;
              while (1)
              {
                if (!v81)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_173;
                }

                v84 = v83;
                v85 = *v82;
                *(this + 1) = v84;
                v27 |= (v85 & 0x7F) << v79;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v79 += 7;
                --v81;
                ++v82;
                v83 = v84 + 1;
                v14 = v80++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_172;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_172:
              v2 = v84;
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

LABEL_173:
            *(a1 + 56) = v27;
            goto LABEL_198;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v128 = 0;
        return v128 & 1;
      }

      v2 = *(this + 1);
LABEL_198:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_202:
  v128 = v4 ^ 1;
  return v128 & 1;
}

uint64_t sub_19B54E6D4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 40));
    if ((*(v3 + 64) & 1) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_25:
  v12 = *(v3 + 8);

  return PB::Writer::write(this, v12);
}

uint64_t sub_19B54E85C(uint64_t result)
{
  *result = &unk_1F0E2C018;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  return result;
}

void sub_19B54E888(PB::Base *this)
{
  *this = &unk_1F0E2C018;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

void sub_19B54E91C(PB::Base *a1)
{
  sub_19B54E888(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54E954(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 104))
  {
    PB::TextFormatter::format(this, "auxiliaryIosTimeUncertainty", *(a1 + 32));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "filteredAcceleration", v7);
  }

  v8 = *(a1 + 104);
  if ((v8 & 0x40) != 0)
  {
    v10 = *(a1 + 88);
    PB::TextFormatter::format(this, "quiescentMode");
    v8 = *(a1 + 104);
    if ((v8 & 0x80) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(this, "quiescentNoise", *(a1 + 92));
  v8 = *(a1 + 104);
  if ((v8 & 2) == 0)
  {
LABEL_8:
    if ((v8 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "sensorTimeBeforeAlignment", *(a1 + 40));
  v8 = *(a1 + 104);
  if ((v8 & 4) == 0)
  {
LABEL_9:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "sentCftime", *(a1 + 48));
  v8 = *(a1 + 104);
  if ((v8 & 0x100) == 0)
  {
LABEL_10:
    if ((v8 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(a1 + 96);
  PB::TextFormatter::format(this, "sequenceNumber");
  v8 = *(a1 + 104);
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "sourceIosTimeUncertainty", *(a1 + 56));
  v8 = *(a1 + 104);
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "sourceReceiveCftime", *(a1 + 64));
  if ((*(a1 + 104) & 0x20) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "sourceReceiveSensorTimestamp", *(a1 + 72));
  }

LABEL_14:
  v9 = *(a1 + 80);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "super");
  }

  if ((*(a1 + 104) & 0x200) != 0)
  {
    PB::TextFormatter::format(this, "version", *(a1 + 100));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54EB44(uint64_t a1, PB::Reader *this)
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
            goto LABEL_147;
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
        goto LABEL_147;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 104) |= 0x20u;
              v37 = *(this + 1);
              if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 72) = *(*this + v37);
              goto LABEL_97;
            case 0xB:
              *(a1 + 104) |= 1u;
              v64 = *(this + 1);
              if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 32) = *(*this + v64);
              goto LABEL_97;
            case 0xC:
              *(a1 + 104) |= 8u;
              v26 = *(this + 1);
              if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 56) = *(*this + v26);
              goto LABEL_97;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 104) |= 2u;
              v27 = *(this + 1);
              if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 40) = *(*this + v27);
              goto LABEL_97;
            case 8:
              *(a1 + 104) |= 4u;
              v54 = *(this + 1);
              if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 48) = *(*this + v54);
              goto LABEL_97;
            case 9:
              *(a1 + 104) |= 0x10u;
              v24 = *(this + 1);
              if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 64) = *(*this + v24);
LABEL_97:
              v65 = *(this + 1) + 8;
              goto LABEL_142;
          }
        }

        goto LABEL_98;
      }

      if (v22 > 3)
      {
        break;
      }

      if (v22 == 1)
      {
        operator new();
      }

      if (v22 != 2)
      {
        if (v22 == 3)
        {
          *(a1 + 104) |= 0x80u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 92) = *(*this + v23);
          goto LABEL_141;
        }

LABEL_98:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
LABEL_149:
          v92 = 0;
          return v92 & 1;
        }

        goto LABEL_143;
      }

      if ((v10 & 7) != 2)
      {
        v79 = *(a1 + 16);
        v78 = *(a1 + 24);
        if (v79 >= v78)
        {
          v81 = *(a1 + 8);
          v82 = v79 - v81;
          v83 = (v79 - v81) >> 2;
          v84 = v83 + 1;
          if ((v83 + 1) >> 62)
          {
LABEL_150:
            sub_19B5BE690();
          }

          v85 = v78 - v81;
          if (v85 >> 1 > v84)
          {
            v84 = v85 >> 1;
          }

          if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v86 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = v84;
          }

          if (v86)
          {
            sub_19B4C4FA8(a1 + 8, v86);
          }

          v87 = (v79 - v81) >> 2;
          v88 = (4 * v83);
          v89 = (4 * v83 - 4 * v87);
          *v88 = 0;
          v80 = v88 + 1;
          memcpy(v89, v81, v82);
          v90 = *(a1 + 8);
          *(a1 + 8) = v89;
          *(a1 + 16) = v80;
          *(a1 + 24) = 0;
          if (v90)
          {
            operator delete(v90);
          }
        }

        else
        {
          *v79 = 0;
          v80 = v79 + 4;
        }

        *(a1 + 16) = v80;
        v91 = *(this + 1);
        if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
        {
LABEL_139:
          *(this + 24) = 1;
          goto LABEL_143;
        }

        *(v80 - 1) = *(*this + v91);
LABEL_141:
        v65 = *(this + 1) + 4;
LABEL_142:
        *(this + 1) = v65;
        goto LABEL_143;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_149;
      }

      v38 = *(this + 1);
      v39 = *(this + 2);
      while (v38 < v39 && (*(this + 24) & 1) == 0)
      {
        v41 = *(a1 + 16);
        v40 = *(a1 + 24);
        if (v41 >= v40)
        {
          v43 = *(a1 + 8);
          v44 = v41 - v43;
          v45 = (v41 - v43) >> 2;
          v46 = v45 + 1;
          if ((v45 + 1) >> 62)
          {
            goto LABEL_150;
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
            sub_19B4C4FA8(a1 + 8, v48);
          }

          v49 = (v41 - v43) >> 2;
          v50 = (4 * v45);
          v51 = (4 * v45 - 4 * v49);
          *v50 = 0;
          v42 = v50 + 1;
          memcpy(v51, v43, v44);
          v52 = *(a1 + 8);
          *(a1 + 8) = v51;
          *(a1 + 16) = v42;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v42;
        v53 = *(this + 1);
        if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v42 - 1) = *(*this + v53);
        v39 = *(this + 2);
        v38 = *(this + 1) + 4;
        *(this + 1) = v38;
      }

      PB::Reader::recallMark();
LABEL_143:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_147;
      }
    }

    switch(v22)
    {
      case 4:
        *(a1 + 104) |= 0x40u;
        v29 = *(this + 1);
        v28 = *(this + 2);
        v30 = *this;
        if (v29 > 0xFFFFFFFFFFFFFFF5 || v29 + 10 > v28)
        {
          v66 = 0;
          v67 = 0;
          v33 = 0;
          v17 = v28 >= v29;
          v68 = v28 - v29;
          if (!v17)
          {
            v68 = 0;
          }

          v69 = (v30 + v29);
          v70 = v29 + 1;
          while (1)
          {
            if (!v68)
            {
              LODWORD(v33) = 0;
              *(this + 24) = 1;
              goto LABEL_130;
            }

            v71 = *v69;
            *(this + 1) = v70;
            v33 |= (v71 & 0x7F) << v66;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            --v68;
            ++v69;
            ++v70;
            v14 = v67++ > 8;
            if (v14)
            {
LABEL_107:
              LODWORD(v33) = 0;
              goto LABEL_130;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v33) = 0;
          }
        }

        else
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = (v30 + v29);
          v35 = v29 + 1;
          while (1)
          {
            *(this + 1) = v35;
            v36 = *v34++;
            v33 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
              goto LABEL_107;
            }
          }
        }

LABEL_130:
        *(a1 + 88) = v33;
        goto LABEL_143;
      case 5:
        *(a1 + 104) |= 0x100u;
        v56 = *(this + 1);
        v55 = *(this + 2);
        v57 = *this;
        if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v55)
        {
          v72 = 0;
          v73 = 0;
          v60 = 0;
          v17 = v55 >= v56;
          v74 = v55 - v56;
          if (!v17)
          {
            v74 = 0;
          }

          v75 = (v57 + v56);
          v76 = v56 + 1;
          while (1)
          {
            if (!v74)
            {
              LODWORD(v60) = 0;
              *(this + 24) = 1;
              goto LABEL_133;
            }

            v77 = *v75;
            *(this + 1) = v76;
            v60 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            --v74;
            ++v75;
            ++v76;
            v14 = v73++ > 8;
            if (v14)
            {
LABEL_115:
              LODWORD(v60) = 0;
              goto LABEL_133;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v60) = 0;
          }
        }

        else
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          while (1)
          {
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
            if (v14)
            {
              goto LABEL_115;
            }
          }
        }

LABEL_133:
        *(a1 + 96) = v60;
        goto LABEL_143;
      case 6:
        *(a1 + 104) |= 0x200u;
        v25 = *(this + 1);
        if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
        {
          goto LABEL_139;
        }

        *(a1 + 100) = *(*this + v25);
        goto LABEL_141;
    }

    goto LABEL_98;
  }

LABEL_147:
  v92 = v4 ^ 1;
  return v92 & 1;
}

uint64_t sub_19B54F38C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 104);
  if ((v8 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 92));
    v8 = *(v3 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_8:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 104);
  if ((v8 & 0x100) == 0)
  {
LABEL_9:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 104);
  if ((v8 & 0x200) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 100));
  v8 = *(v3 + 104);
  if ((v8 & 2) == 0)
  {
LABEL_11:
    if ((v8 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 40));
  v8 = *(v3 + 104);
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v8 = *(v3 + 104);
  if ((v8 & 0x10) == 0)
  {
LABEL_13:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 64));
  v8 = *(v3 + 104);
  if ((v8 & 0x20) == 0)
  {
LABEL_14:
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 104) & 8) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 72));
  v8 = *(v3 + 104);
  if (v8)
  {
    goto LABEL_25;
  }

LABEL_15:
  if ((v8 & 8) == 0)
  {
    return result;
  }

LABEL_26:
  v11 = *(v3 + 56);

  return PB::Writer::write(this, v11);
}

double sub_19B54F51C(uint64_t a1)
{
  *a1 = &unk_1F0E2C280;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B54F550(PB::Base *this)
{
  *this = &unk_1F0E2C280;
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

void sub_19B54F5C4(PB::Base *a1)
{
  sub_19B54F550(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54F5FC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 128);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "angularVelocityConstraintRps", *(a1 + 104));
    v5 = *(a1 + 128);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "consumedAuxTimestamp", *(a1 + 56));
  v5 = *(a1 + 128);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "dthetaNormRad", *(a1 + 108));
  v5 = *(a1 + 128);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a1 + 124);
  PB::TextFormatter::format(this, "inBTZ");
  v5 = *(a1 + 128);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "listenerPitch", *(a1 + 112));
  v5 = *(a1 + 128);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "listenerRoll", *(a1 + 116));
  v5 = *(a1 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "listenerYaw", *(a1 + 120));
  v5 = *(a1 + 128);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  PB::TextFormatter::format(this, "machAbsTimestamp", *(a1 + 64));
  if ((*(a1 + 128) & 4) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "presentationTimestamp", *(a1 + 72));
  }

LABEL_11:
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "quaternion", v8);
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "quaternionWithoutPrediction", v11);
  }

  v12 = *(a1 + 128);
  if ((v12 & 8) != 0)
  {
    PB::TextFormatter::format(this, "receivedAuxTimestamp", *(a1 + 80));
    v12 = *(a1 + 128);
    if ((v12 & 0x10) == 0)
    {
LABEL_17:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  PB::TextFormatter::format(this, "srcTimestamp", *(a1 + 88));
  if ((*(a1 + 128) & 0x20) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 96));
  }

LABEL_19:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54F828(uint64_t a1, PB::Reader *this)
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
        goto LABEL_141;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 128) |= 0x20u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 96) = *(*this + v23);
          goto LABEL_98;
        case 2u:
          *(a1 + 128) |= 0x400u;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 120) = *(*this + v61);
          goto LABEL_135;
        case 3u:
          *(a1 + 128) |= 0x100u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 112) = *(*this + v58);
          goto LABEL_135;
        case 4u:
          *(a1 + 128) |= 0x200u;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 116) = *(*this + v59);
          goto LABEL_135;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_143;
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
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  goto LABEL_144;
                }

                v34 = v27 - v30;
                if (v34 >> 1 > v33)
                {
                  v33 = v34 >> 1;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v35 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  sub_19B4C4FA8(a1 + 32, v35);
                }

                v36 = (v28 - v30) >> 2;
                v37 = (4 * v32);
                v38 = (4 * v32 - 4 * v36);
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
                v29 = v28 + 4;
              }

              *(a1 + 40) = v29;
              v40 = *(this + 1);
              if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
              {
                goto LABEL_107;
              }

              *(v29 - 1) = *(*this + v40);
              v26 = *(this + 2);
              v25 = *(this + 1) + 4;
              *(this + 1) = v25;
            }

            goto LABEL_108;
          }

          v72 = *(a1 + 40);
          v71 = *(a1 + 48);
          if (v72 >= v71)
          {
            v76 = *(a1 + 32);
            v77 = v72 - v76;
            v78 = (v72 - v76) >> 2;
            v79 = v78 + 1;
            if ((v78 + 1) >> 62)
            {
              goto LABEL_144;
            }

            v80 = v71 - v76;
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
              sub_19B4C4FA8(a1 + 32, v81);
            }

            v88 = (v72 - v76) >> 2;
            v89 = (4 * v78);
            v90 = (4 * v78 - 4 * v88);
            *v89 = 0;
            v73 = v89 + 1;
            memcpy(v90, v76, v77);
            v91 = *(a1 + 32);
            *(a1 + 32) = v90;
            *(a1 + 40) = v73;
            *(a1 + 48) = 0;
            if (v91)
            {
              operator delete(v91);
            }
          }

          else
          {
            *v72 = 0;
            v73 = v72 + 4;
          }

          *(a1 + 40) = v73;
          goto LABEL_131;
        case 6u:
          *(a1 + 128) |= 0x800u;
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

          *(a1 + 124) = v65;
          goto LABEL_137;
        case 7u:
          *(a1 + 128) |= 0x40u;
          v67 = *(this + 1);
          if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 104) = *(*this + v67);
          goto LABEL_135;
        case 8u:
          *(a1 + 128) |= 0x80u;
          v60 = *(this + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 108) = *(*this + v60);
          goto LABEL_135;
        case 9u:
          *(a1 + 128) |= 0x10u;
          v69 = *(this + 1);
          if (v69 > 0xFFFFFFFFFFFFFFF7 || v69 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 88) = *(*this + v69);
          goto LABEL_98;
        case 0xAu:
          *(a1 + 128) |= 1u;
          v57 = *(this + 1);
          if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 56) = *(*this + v57);
          goto LABEL_98;
        case 0xBu:
          *(a1 + 128) |= 8u;
          v68 = *(this + 1);
          if (v68 > 0xFFFFFFFFFFFFFFF7 || v68 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 80) = *(*this + v68);
          goto LABEL_98;
        case 0xCu:
          *(a1 + 128) |= 2u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 64) = *(*this + v24);
          goto LABEL_98;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_143:
              v97 = 0;
              return v97 & 1;
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
                v48 = (v44 - v46) >> 2;
                v49 = v48 + 1;
                if ((v48 + 1) >> 62)
                {
                  goto LABEL_144;
                }

                v50 = v43 - v46;
                if (v50 >> 1 > v49)
                {
                  v49 = v50 >> 1;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v51 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  sub_19B4C4FA8(a1 + 8, v51);
                }

                v52 = (v44 - v46) >> 2;
                v53 = (4 * v48);
                v54 = (4 * v48 - 4 * v52);
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
                v45 = v44 + 4;
              }

              *(a1 + 16) = v45;
              v56 = *(this + 1);
              if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
              {
LABEL_107:
                *(this + 24) = 1;
                break;
              }

              *(v45 - 1) = *(*this + v56);
              v42 = *(this + 2);
              v41 = *(this + 1) + 4;
              *(this + 1) = v41;
            }

LABEL_108:
            PB::Reader::recallMark();
          }

          else
          {
            v75 = *(a1 + 16);
            v74 = *(a1 + 24);
            if (v75 >= v74)
            {
              v82 = *(a1 + 8);
              v83 = v75 - v82;
              v84 = (v75 - v82) >> 2;
              v85 = v84 + 1;
              if ((v84 + 1) >> 62)
              {
LABEL_144:
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
                sub_19B4C4FA8(a1 + 8, v87);
              }

              v92 = (v75 - v82) >> 2;
              v93 = (4 * v84);
              v94 = (4 * v84 - 4 * v92);
              *v93 = 0;
              v73 = v93 + 1;
              memcpy(v94, v82, v83);
              v95 = *(a1 + 8);
              *(a1 + 8) = v94;
              *(a1 + 16) = v73;
              *(a1 + 24) = 0;
              if (v95)
              {
                operator delete(v95);
              }
            }

            else
            {
              *v75 = 0;
              v73 = v75 + 4;
            }

            *(a1 + 16) = v73;
LABEL_131:
            v96 = *(this + 1);
            if (v96 <= 0xFFFFFFFFFFFFFFFBLL && v96 + 4 <= *(this + 2))
            {
              *(v73 - 1) = *(*this + v96);
LABEL_135:
              v70 = *(this + 1) + 4;
LABEL_136:
              *(this + 1) = v70;
            }

            else
            {
LABEL_133:
              *(this + 24) = 1;
            }
          }

LABEL_137:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_141;
          }

          break;
        case 0xEu:
          *(a1 + 128) |= 4u;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFF7 || v66 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 72) = *(*this + v66);
LABEL_98:
          v70 = *(this + 1) + 8;
          goto LABEL_136;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_143;
          }

          goto LABEL_137;
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

LABEL_141:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t sub_19B550034(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 96));
    v4 = *(v3 + 128);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      result = PB::Writer::write(this, *(v3 + 112));
      if ((*(v3 + 128) & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 128) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v4 & 0x200) != 0)
  {
LABEL_5:
    result = PB::Writer::write(this, *(v3 + 116));
  }

LABEL_6:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 128);
  if ((v8 & 0x800) != 0)
  {
    v12 = *(v3 + 124);
    result = PB::Writer::write(this);
    v8 = *(v3 + 128);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  result = PB::Writer::write(this, *(v3 + 104));
  v8 = *(v3 + 128);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 108));
  v8 = *(v3 + 128);
  if ((v8 & 0x10) == 0)
  {
LABEL_13:
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 88));
  v8 = *(v3 + 128);
  if ((v8 & 1) == 0)
  {
LABEL_14:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 128) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 56));
  v8 = *(v3 + 128);
  if ((v8 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v8 & 2) != 0)
  {
LABEL_16:
    result = PB::Writer::write(this, *(v3 + 64));
  }

LABEL_17:
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  if ((*(v3 + 128) & 4) != 0)
  {
    v13 = *(v3 + 72);

    return PB::Writer::write(this, v13);
  }

  return result;
}

void *sub_19B550208(void *result)
{
  *result = &unk_1F0E2B130;
  result[2] = 0;
  return result;
}

void sub_19B550230(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B550268(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "source");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5502E4(uint64_t a1, PB::Reader *this)
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
        *(a1 + 20) |= 1u;
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
              v35 = 0;
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
              v35 = 0;
              goto LABEL_67;
            }
          }

          if (*(this + 24))
          {
            v35 = 0;
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
              v35 = 0;
              break;
            }
          }
        }

LABEL_68:
        *(a1 + 8) = v35;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 2u;
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
        *(a1 + 16) = v27;
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

uint64_t sub_19B550664(uint64_t result, PB::Writer *this)
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

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B5506D0(uint64_t result)
{
  *result = &unk_1F0E2FDC8;
  *(result + 20) = 0;
  return result;
}

void sub_19B5506F8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B550730(uint64_t a1, PB::TextFormatter *this, char *a3)
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
    PB::TextFormatter::format(this, "touchDetected");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5507AC(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B5509B8(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B550A24(uint64_t result)
{
  *result = &unk_1F0E30298;
  *(result + 40) = 0;
  return result;
}

void sub_19B550A4C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B550A84(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "distanceToTrackMeters", *(a1 + 8));
    v5 = *(a1 + 40);
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

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "estimatedLaneConfidence");
  v5 = *(a1 + 40);
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
  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "estimatedLaneNumber");
  v5 = *(a1 + 40);
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
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "laneCount");
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a1 + 28);
  PB::TextFormatter::format(this, "laneNumber");
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v11 = *(a1 + 36);
  PB::TextFormatter::format(this, "odometerHasBeenCorrected");
  if ((*(a1 + 40) & 0x20) != 0)
  {
LABEL_8:
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "trackProximity");
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B550BA8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_145;
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
            *(a1 + 40) |= 0x10u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v65 = 0;
              v66 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v67 = v2 - v41;
              v68 = (v42 + v41);
              v69 = v41 + 1;
              while (1)
              {
                if (!v67)
                {
                  LODWORD(v45) = 0;
                  *(this + 24) = 1;
                  goto LABEL_124;
                }

                v70 = v69;
                v71 = *v68;
                *(this + 1) = v70;
                v45 |= (v71 & 0x7F) << v65;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                --v67;
                ++v68;
                v69 = v70 + 1;
                v14 = v66++ > 8;
                if (v14)
                {
                  LODWORD(v45) = 0;
                  goto LABEL_123;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_123:
              v2 = v70;
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
                v2 = v47;
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
                  LODWORD(v45) = 0;
                  break;
                }
              }
            }

LABEL_124:
            *(a1 + 28) = v45;
            goto LABEL_141;
          case 2:
            *(a1 + 40) |= 4u;
            v57 = *(this + 1);
            v2 = *(this + 2);
            v58 = *this;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v93 = 0;
              v94 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(this + 1);
              }

              v95 = v2 - v57;
              v96 = (v58 + v57);
              v97 = v57 + 1;
              while (1)
              {
                if (!v95)
                {
                  LODWORD(v61) = 0;
                  *(this + 24) = 1;
                  goto LABEL_140;
                }

                v98 = v97;
                v99 = *v96;
                *(this + 1) = v98;
                v61 |= (v99 & 0x7F) << v93;
                if ((v99 & 0x80) == 0)
                {
                  break;
                }

                v93 += 7;
                --v95;
                ++v96;
                v97 = v98 + 1;
                v14 = v94++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  goto LABEL_139;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v61) = 0;
              }

LABEL_139:
              v2 = v98;
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = (v58 + v57);
              v63 = v57 + 1;
              while (1)
              {
                v2 = v63;
                *(this + 1) = v63;
                v64 = *v62++;
                v61 |= (v64 & 0x7F) << v59;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                ++v63;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  break;
                }
              }
            }

LABEL_140:
            *(a1 + 20) = v61;
            goto LABEL_141;
          case 3:
            *(a1 + 40) |= 8u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v86 = 0;
              v87 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v88 = v2 - v31;
              v89 = (v32 + v31);
              v90 = v31 + 1;
              while (1)
              {
                if (!v88)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_136;
                }

                v91 = v90;
                v92 = *v89;
                *(this + 1) = v91;
                v35 |= (v92 & 0x7F) << v86;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v86 += 7;
                --v88;
                ++v89;
                v90 = v91 + 1;
                v14 = v87++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_135;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_135:
              v2 = v91;
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

LABEL_136:
            *(a1 + 24) = v35;
            goto LABEL_141;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 1u;
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

          goto LABEL_141;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 0x40u;
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

          *(a1 + 36) = v40;
          goto LABEL_141;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 2u;
          v49 = *(this + 1);
          v2 = *(this + 2);
          v50 = *this;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(this + 1);
            }

            v74 = v2 - v49;
            v75 = (v50 + v49);
            v76 = v49 + 1;
            while (1)
            {
              if (!v74)
              {
                LODWORD(v53) = 0;
                *(this + 24) = 1;
                goto LABEL_128;
              }

              v77 = v76;
              v78 = *v75;
              *(this + 1) = v77;
              v53 |= (v78 & 0x7F) << v72;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              --v74;
              ++v75;
              v76 = v77 + 1;
              v14 = v73++ > 8;
              if (v14)
              {
                LODWORD(v53) = 0;
                goto LABEL_127;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v53) = 0;
            }

LABEL_127:
            v2 = v77;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            while (1)
            {
              v2 = v55;
              *(this + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
                LODWORD(v53) = 0;
                break;
              }
            }
          }

LABEL_128:
          *(a1 + 16) = v53;
          goto LABEL_141;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 0x20u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v81 = v2 - v23;
            v82 = (v24 + v23);
            v83 = v23 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_132;
              }

              v84 = v83;
              v85 = *v82;
              *(this + 1) = v84;
              v27 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              --v81;
              ++v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_131;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_131:
            v2 = v84;
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

LABEL_132:
          *(a1 + 32) = v27;
          goto LABEL_141;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v100 = 0;
        return v100 & 1;
      }

      v2 = *(this + 1);
LABEL_141:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_145:
  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t sub_19B551300(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(result + 28);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  v9 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:
  v10 = *(v3 + 36);

  return PB::Writer::write(this);
}

uint64_t sub_19B5513FC(uint64_t result)
{
  *result = &unk_1F0E2B2F0;
  *(result + 56) = 0;
  return result;
}

void sub_19B551424(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B55145C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "cycleIndex");
    v5 = *(a1 + 56);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "error");
  v5 = *(a1 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(this, "machAbsoluteTimestamp", *(a1 + 24));
  v5 = *(a1 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "machContinuousTimestamp", *(a1 + 32));
  v5 = *(a1 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(this, "range", *(a1 + 40));
  if ((*(a1 + 56) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "rssi", *(a1 + 48));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B551560(uint64_t a1, PB::Reader *this)
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
            goto LABEL_89;
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 56) |= 2u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v39 = 0;
              v40 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v41 = v2 - v31;
              v42 = (v32 + v31);
              v43 = v31 + 1;
              while (1)
              {
                if (!v41)
                {
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_80;
                }

                v44 = v43;
                v45 = *v42;
                *(this + 1) = v44;
                v35 |= (v45 & 0x7F) << v39;
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
                  v35 = 0;
                  goto LABEL_79;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_79:
              v2 = v44;
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
                  v35 = 0;
                  break;
                }
              }
            }

LABEL_80:
            *(a1 + 16) = v35;
            goto LABEL_85;
          case 5:
            *(a1 + 56) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_85;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_74;
          case 6:
            *(a1 + 56) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_74;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 56) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_74;
          case 2:
            *(a1 + 56) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_74:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_85;
          case 3:
            *(a1 + 56) |= 1u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v46 = 0;
              v47 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v48 = v2 - v23;
              v49 = (v24 + v23);
              v50 = v23 + 1;
              while (1)
              {
                if (!v48)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_84;
                }

                v51 = v50;
                v52 = *v49;
                *(this + 1) = v51;
                v27 |= (v52 & 0x7F) << v46;
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
                  v27 = 0;
                  goto LABEL_83;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_83:
              v2 = v51;
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

LABEL_84:
            *(a1 + 8) = v27;
            goto LABEL_85;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_85:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_89:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B551A00(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 56);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v5 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = PB::Writer::write(this, *(v3 + 40));
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v7 = *(v3 + 48);

  return PB::Writer::write(this, v7);
}

uint64_t sub_19B551AE0(uint64_t result)
{
  *result = &unk_1F0E2FA48;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B551B08(PB::Base *this)
{
  *this = &unk_1F0E2FA48;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B551B8C(PB::Base *a1)
{
  sub_19B551B08(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B551BC4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 24))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "aopTimestamp");
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B551C5C(uint64_t a1, PB::Reader *this)
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
        *(a1 + 8) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
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

uint64_t sub_19B551F7C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 24))
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B551FE4(uint64_t result)
{
  *result = &unk_1F0E2FA10;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B552008(PB::Base *this)
{
  *this = &unk_1F0E2FA10;
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

void sub_19B55206C(PB::Base *a1)
{
  sub_19B552008(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5520A4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}