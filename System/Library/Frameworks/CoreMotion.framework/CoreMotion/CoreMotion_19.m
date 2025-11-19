uint64_t sub_19B4E5318(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 140);
  if ((v4 & 0x100) != 0)
  {
    v20 = *(result + 136);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 140);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v21 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 140);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_28:
    v23 = *(v3 + 124);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 140) & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  v22 = *(v3 + 128);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 140);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_5:
  if ((v4 & 0x80) != 0)
  {
LABEL_6:
    v5 = *(v3 + 132);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_7:
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::writeVarInt(this);
  }

  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::writeVarInt(this);
  }

  v12 = *(v3 + 140);
  if ((v12 & 8) == 0)
  {
    if ((v12 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v25 = *(v3 + 112);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 140) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v24 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v12 = *(v3 + 140);
  if ((v12 & 4) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v12 & 2) != 0)
  {
LABEL_16:
    v13 = *(v3 + 108);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_17:
  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  while (v14 != v15)
  {
    v16 = *v14++;
    result = PB::Writer::writeVarInt(this);
  }

  v17 = *(v3 + 8);
  v18 = *(v3 + 16);
  while (v17 != v18)
  {
    v19 = *v17++;
    result = PB::Writer::writeVarInt(this);
  }

  if (*(v3 + 140))
  {
    v26 = *(v3 + 104);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B4E54D8(uint64_t result)
{
  *result = &unk_1F0E2D7B8;
  *(result + 12) = 0;
  return result;
}

void sub_19B4E5500(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E5538(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "isBatterySaverModeEnabled");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E5598(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4E574C(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B4E576C(uint64_t result)
{
  *result = &unk_1F0E300A0;
  *(result + 28) = 0;
  return result;
}

void sub_19B4E5794(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E57CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 8) != 0)
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "charged");
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "chargerFamily");
  v5 = *(a1 + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(a1 + 20);
  PB::TextFormatter::format(this, "chargerType");
  v5 = *(a1 + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = *(a1 + 25);
  PB::TextFormatter::format(this, "connected");
  v5 = *(a1 + 28);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(this, "level", *(a1 + 8));
  if ((*(a1 + 28) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(a1 + 26);
    PB::TextFormatter::format(this, "wasConnected");
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E58D0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_91;
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
            *(a1 + 28) |= 4u;
            v33 = *(this + 1);
            v2 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v45 = 0;
              v46 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(this + 1);
              }

              v47 = v2 - v33;
              v48 = (v34 + v33);
              v49 = v33 + 1;
              while (1)
              {
                if (!v47)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_82;
                }

                v50 = v49;
                v51 = *v48;
                *(this + 1) = v50;
                v37 |= (v51 & 0x7F) << v45;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v47;
                ++v48;
                v49 = v50 + 1;
                v14 = v46++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  goto LABEL_81;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }

LABEL_81:
              v2 = v50;
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
                  LODWORD(v37) = 0;
                  break;
                }
              }
            }

LABEL_82:
            *(a1 + 20) = v37;
            goto LABEL_87;
          case 5:
            *(a1 + 28) |= 0x20u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v44 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v43 = *(*this + v2++);
              *(this + 1) = v2;
              v44 = v43 != 0;
            }

            *(a1 + 26) = v44;
            goto LABEL_87;
          case 6:
            *(a1 + 28) |= 2u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v52 = 0;
              v53 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v54 = v2 - v25;
              v55 = (v26 + v25);
              v56 = v25 + 1;
              while (1)
              {
                if (!v54)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_86;
                }

                v57 = v56;
                v58 = *v55;
                *(this + 1) = v57;
                v29 |= (v58 & 0x7F) << v52;
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
                  LODWORD(v29) = 0;
                  goto LABEL_85;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_85:
              v2 = v57;
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

LABEL_86:
            *(a1 + 16) = v29;
            goto LABEL_87;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 28) |= 1u;
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

            goto LABEL_87;
          case 2:
            *(a1 + 28) |= 8u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v42 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v41 = *(*this + v2++);
              *(this + 1) = v2;
              v42 = v41 != 0;
            }

            *(a1 + 24) = v42;
            goto LABEL_87;
          case 3:
            *(a1 + 28) |= 0x10u;
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

            *(a1 + 25) = v24;
            goto LABEL_87;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v59 = 0;
        return v59 & 1;
      }

      v2 = *(this + 1);
LABEL_87:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_91:
  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t sub_19B4E5D94(uint64_t result, PB::Writer *this)
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
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 24);
  result = PB::Writer::write(this);
  v4 = *(v3 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = *(v3 + 25);
  result = PB::Writer::write(this);
  v4 = *(v3 + 28);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = *(v3 + 26);
    result = PB::Writer::write(this);
    if ((*(v3 + 28) & 2) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 28);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_13:
  v9 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void sub_19B4E5E74(PB::Base *this)
{
  *this = &unk_1F0E2F930;
  v2 = *(this + 5);
  *(this + 5) = 0;
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

void sub_19B4E5F08(PB::Base *a1)
{
  sub_19B4E5E74(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E5F40(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 52))
  {
    PB::TextFormatter::format(this, "bioMotionTimestamp", *(a1 + 32));
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "pose");
  }

  if ((*(a1 + 52) & 2) != 0)
  {
    v6 = *(a1 + 48);
    PB::TextFormatter::format(this, "runSmoother");
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "velocity", v9);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E6028(uint64_t a1, PB::Reader *this)
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
            goto LABEL_80;
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
        goto LABEL_80;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v22 == 1)
      {
        operator new();
      }

      if (v22 != 2)
      {
        goto LABEL_49;
      }

      if ((v10 & 7) != 2)
      {
        v45 = *(a1 + 16);
        v44 = *(a1 + 24);
        if (v45 >= v44)
        {
          v47 = *(a1 + 8);
          v48 = v45 - v47;
          v49 = (v45 - v47) >> 3;
          v50 = v49 + 1;
          if ((v49 + 1) >> 61)
          {
LABEL_83:
            sub_19B5BE690();
          }

          v51 = v44 - v47;
          if (v51 >> 2 > v50)
          {
            v50 = v51 >> 2;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_19B4C50F0(a1 + 8, v52);
          }

          v53 = (v45 - v47) >> 3;
          v54 = (8 * v49);
          v55 = (8 * v49 - 8 * v53);
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
          v46 = v45 + 8;
        }

        *(a1 + 16) = v46;
        v57 = *(this + 1);
        if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(this + 2))
        {
LABEL_73:
          *(this + 24) = 1;
          goto LABEL_76;
        }

        *(v46 - 1) = *(*this + v57);
        goto LABEL_75;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_82;
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
          v30 = (v26 - v28) >> 3;
          v31 = v30 + 1;
          if ((v30 + 1) >> 61)
          {
            goto LABEL_83;
          }

          v32 = v25 - v28;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_19B4C50F0(a1 + 8, v33);
          }

          v34 = (v26 - v28) >> 3;
          v35 = (8 * v30);
          v36 = (8 * v30 - 8 * v34);
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
          v27 = v26 + 8;
        }

        *(a1 + 16) = v27;
        v38 = *(this + 1);
        if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v27 - 1) = *(*this + v38);
        v24 = *(this + 2);
        v23 = *(this + 1) + 8;
        *(this + 1) = v23;
      }

      PB::Reader::recallMark();
LABEL_76:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_80;
      }
    }

    if (v22 == 3)
    {
      *(a1 + 52) |= 1u;
      v43 = *(this + 1);
      if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(this + 2))
      {
        goto LABEL_73;
      }

      *(a1 + 32) = *(*this + v43);
LABEL_75:
      *(this + 1) += 8;
      goto LABEL_76;
    }

    if (v22 == 4)
    {
      *(a1 + 52) |= 2u;
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

      *(a1 + 48) = v42;
      goto LABEL_76;
    }

LABEL_49:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_82:
      v58 = 0;
      return v58 & 1;
    }

    goto LABEL_76;
  }

LABEL_80:
  v58 = v4 ^ 1;
  return v58 & 1;
}

uint64_t sub_19B4E64F4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
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

  v8 = *(v3 + 52);
  if (v8)
  {
    result = PB::Writer::write(this, *(v3 + 32));
    v8 = *(v3 + 52);
  }

  if ((v8 & 2) != 0)
  {
    v9 = *(v3 + 48);

    return PB::Writer::write(this);
  }

  return result;
}

void *sub_19B4E65A0(void *result)
{
  *result = &unk_1F0E2E580;
  result[1] = 0;
  return result;
}

void sub_19B4E65C0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2E580;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4E6640(PB::Base *a1)
{
  sub_19B4E65C0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E6678(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E66F4(int a1, PB::Reader *this)
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

uint64_t sub_19B4E6934(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B4E6950(uint64_t result)
{
  *result = &unk_1F0E2D208;
  *(result + 48) = 0;
  return result;
}

void sub_19B4E6978(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E69B0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    PB::TextFormatter::format(this, "probabilityGenericMotion", *(a1 + 8));
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

  PB::TextFormatter::format(this, "probabilityHeadMotion", *(a1 + 16));
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
  PB::TextFormatter::format(this, "probabilityPedestrianMotion", *(a1 + 24));
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
  PB::TextFormatter::format(this, "probabilityTorsoMotion", *(a1 + 32));
  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E6A94(uint64_t a1, PB::Reader *this)
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
          *(a1 + 48) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_42:
            *(this + 24) = 1;
            goto LABEL_47;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_46;
        }

        if (v22 == 2)
        {
          *(a1 + 48) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_42;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_46;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 48) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_46;
          case 4:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_46;
          case 5:
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 8) = *(*this + v2);
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

uint64_t sub_19B4E6D5C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 48) & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

double sub_19B4E6E20(uint64_t a1)
{
  *a1 = &unk_1F0E2BFA8;
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_19B4E6E60(PB::Base *this)
{
  *this = &unk_1F0E2BFA8;
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

void sub_19B4E6EF4(PB::Base *a1)
{
  sub_19B4E6E60(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E6F2C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "centerOfRotationEstVars", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "centerOfRotationEsts", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "linkLengthEstVars", v13);
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "linkLengthEsts", v16);
  }

  v17 = *(a1 + 144);
  if (v17)
  {
    PB::TextFormatter::format(this, "positionResidualNormMean", *(a1 + 104));
    v17 = *(a1 + 144);
    if ((v17 & 2) == 0)
    {
LABEL_11:
      if ((v17 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a1 + 144) & 2) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(this, "positionResidualNormVar", *(a1 + 112));
  v17 = *(a1 + 144);
  if ((v17 & 4) == 0)
  {
LABEL_12:
    if ((v17 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 120));
  v17 = *(a1 + 144);
  if ((v17 & 8) == 0)
  {
LABEL_13:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  PB::TextFormatter::format(this, "timestampBegin", *(a1 + 128));
  if ((*(a1 + 144) & 0x10) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "timestampEnd", *(a1 + 136));
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E70D0(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_196;
              }

              v59 = *(this + 1);
              v60 = *(this + 2);
              while (v59 < v60 && (*(this + 24) & 1) == 0)
              {
                v62 = *(a1 + 88);
                v61 = *(a1 + 96);
                if (v62 >= v61)
                {
                  v64 = *(a1 + 80);
                  v65 = v62 - v64;
                  v66 = (v62 - v64) >> 3;
                  v67 = v66 + 1;
                  if ((v66 + 1) >> 61)
                  {
                    goto LABEL_197;
                  }

                  v68 = v61 - v64;
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
                    sub_19B4C50F0(a1 + 80, v69);
                  }

                  v70 = (v62 - v64) >> 3;
                  v71 = (8 * v66);
                  v72 = (8 * v66 - 8 * v70);
                  *v71 = 0;
                  v63 = v71 + 1;
                  memcpy(v72, v64, v65);
                  v73 = *(a1 + 80);
                  *(a1 + 80) = v72;
                  *(a1 + 88) = v63;
                  *(a1 + 96) = 0;
                  if (v73)
                  {
                    operator delete(v73);
                  }
                }

                else
                {
                  *v62 = 0;
                  v63 = v62 + 8;
                }

                *(a1 + 88) = v63;
                v74 = *(this + 1);
                if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(this + 2))
                {
LABEL_131:
                  *(this + 24) = 1;
                  goto LABEL_132;
                }

                *(v63 - 1) = *(*this + v74);
                v60 = *(this + 2);
                v59 = *(this + 1) + 8;
                *(this + 1) = v59;
              }

              goto LABEL_132;
            }

            v99 = *(a1 + 88);
            v98 = *(a1 + 96);
            if (v99 >= v98)
            {
              v114 = *(a1 + 80);
              v115 = v99 - v114;
              v116 = (v99 - v114) >> 3;
              v117 = v116 + 1;
              if ((v116 + 1) >> 61)
              {
                goto LABEL_197;
              }

              v118 = v98 - v114;
              if (v118 >> 2 > v117)
              {
                v117 = v118 >> 2;
              }

              if (v118 >= 0x7FFFFFFFFFFFFFF8)
              {
                v119 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v119 = v117;
              }

              if (v119)
              {
                sub_19B4C50F0(a1 + 80, v119);
              }

              v134 = (v99 - v114) >> 3;
              v135 = (8 * v116);
              v136 = (8 * v116 - 8 * v134);
              *v135 = 0;
              v95 = v135 + 1;
              memcpy(v136, v114, v115);
              v137 = *(a1 + 80);
              *(a1 + 80) = v136;
              *(a1 + 88) = v95;
              *(a1 + 96) = 0;
              if (v137)
              {
                operator delete(v137);
              }
            }

            else
            {
              *v99 = 0;
              v95 = v99 + 8;
            }

            *(a1 + 88) = v95;
LABEL_185:
            v142 = *(this + 1);
            if (v142 > 0xFFFFFFFFFFFFFFF7 || v142 + 8 > *(this + 2))
            {
              goto LABEL_187;
            }

            *(v95 - 1) = *(*this + v142);
            goto LABEL_189;
          }

          if (v23 == 4)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_196;
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
                    goto LABEL_197;
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
                  goto LABEL_131;
                }

                *(v45 - 1) = *(*this + v56);
                v42 = *(this + 2);
                v41 = *(this + 1) + 8;
                *(this + 1) = v41;
              }

              goto LABEL_132;
            }

            v97 = *(a1 + 16);
            v96 = *(a1 + 24);
            if (v97 >= v96)
            {
              v108 = *(a1 + 8);
              v109 = v97 - v108;
              v110 = (v97 - v108) >> 3;
              v111 = v110 + 1;
              if ((v110 + 1) >> 61)
              {
                goto LABEL_197;
              }

              v112 = v96 - v108;
              if (v112 >> 2 > v111)
              {
                v111 = v112 >> 2;
              }

              if (v112 >= 0x7FFFFFFFFFFFFFF8)
              {
                v113 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v113 = v111;
              }

              if (v113)
              {
                sub_19B4C50F0(a1 + 8, v113);
              }

              v130 = (v97 - v108) >> 3;
              v131 = (8 * v110);
              v132 = (8 * v110 - 8 * v130);
              *v131 = 0;
              v95 = v131 + 1;
              memcpy(v132, v108, v109);
              v133 = *(a1 + 8);
              *(a1 + 8) = v132;
              *(a1 + 16) = v95;
              *(a1 + 24) = 0;
              if (v133)
              {
                operator delete(v133);
              }
            }

            else
            {
              *v97 = 0;
              v95 = v97 + 8;
            }

            *(a1 + 16) = v95;
            goto LABEL_185;
          }
        }

        else
        {
          if (v23 == 1)
          {
            *(a1 + 144) |= 4u;
            v58 = *(this + 1);
            if (v58 > 0xFFFFFFFFFFFFFFF7 || v58 + 8 > *(this + 2))
            {
LABEL_187:
              *(this + 24) = 1;
              goto LABEL_190;
            }

            *(a1 + 120) = *(*this + v58);
            goto LABEL_189;
          }

          if (v23 == 2)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_196;
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
                    goto LABEL_197;
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
                  goto LABEL_131;
                }

                *(v29 - 1) = *(*this + v40);
                v26 = *(this + 2);
                v25 = *(this + 1) + 8;
                *(this + 1) = v25;
              }

LABEL_132:
              PB::Reader::recallMark();
              goto LABEL_190;
            }

            v94 = *(a1 + 40);
            v93 = *(a1 + 48);
            if (v94 >= v93)
            {
              v102 = *(a1 + 32);
              v103 = v94 - v102;
              v104 = (v94 - v102) >> 3;
              v105 = v104 + 1;
              if ((v104 + 1) >> 61)
              {
                goto LABEL_197;
              }

              v106 = v93 - v102;
              if (v106 >> 2 > v105)
              {
                v105 = v106 >> 2;
              }

              if (v106 >= 0x7FFFFFFFFFFFFFF8)
              {
                v107 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v107 = v105;
              }

              if (v107)
              {
                sub_19B4C50F0(a1 + 32, v107);
              }

              v126 = (v94 - v102) >> 3;
              v127 = (8 * v104);
              v128 = (8 * v104 - 8 * v126);
              *v127 = 0;
              v95 = v127 + 1;
              memcpy(v128, v102, v103);
              v129 = *(a1 + 32);
              *(a1 + 32) = v128;
              *(a1 + 40) = v95;
              *(a1 + 48) = 0;
              if (v129)
              {
                operator delete(v129);
              }
            }

            else
            {
              *v94 = 0;
              v95 = v94 + 8;
            }

            *(a1 + 40) = v95;
            goto LABEL_185;
          }
        }
      }

      else if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_196;
            }

            v76 = *(this + 1);
            v77 = *(this + 2);
            while (v76 < v77 && (*(this + 24) & 1) == 0)
            {
              v79 = *(a1 + 64);
              v78 = *(a1 + 72);
              if (v79 >= v78)
              {
                v81 = *(a1 + 56);
                v82 = v79 - v81;
                v83 = (v79 - v81) >> 3;
                v84 = v83 + 1;
                if ((v83 + 1) >> 61)
                {
                  goto LABEL_197;
                }

                v85 = v78 - v81;
                if (v85 >> 2 > v84)
                {
                  v84 = v85 >> 2;
                }

                if (v85 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v86 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v86 = v84;
                }

                if (v86)
                {
                  sub_19B4C50F0(a1 + 56, v86);
                }

                v87 = (v79 - v81) >> 3;
                v88 = (8 * v83);
                v89 = (8 * v83 - 8 * v87);
                *v88 = 0;
                v80 = v88 + 1;
                memcpy(v89, v81, v82);
                v90 = *(a1 + 56);
                *(a1 + 56) = v89;
                *(a1 + 64) = v80;
                *(a1 + 72) = 0;
                if (v90)
                {
                  operator delete(v90);
                }
              }

              else
              {
                *v79 = 0;
                v80 = v79 + 8;
              }

              *(a1 + 64) = v80;
              v91 = *(this + 1);
              if (v91 > 0xFFFFFFFFFFFFFFF7 || v91 + 8 > *(this + 2))
              {
                goto LABEL_131;
              }

              *(v80 - 1) = *(*this + v91);
              v77 = *(this + 2);
              v76 = *(this + 1) + 8;
              *(this + 1) = v76;
            }

            goto LABEL_132;
          }

          v101 = *(a1 + 64);
          v100 = *(a1 + 72);
          if (v101 >= v100)
          {
            v120 = *(a1 + 56);
            v121 = v101 - v120;
            v122 = (v101 - v120) >> 3;
            v123 = v122 + 1;
            if ((v122 + 1) >> 61)
            {
LABEL_197:
              sub_19B5BE690();
            }

            v124 = v100 - v120;
            if (v124 >> 2 > v123)
            {
              v123 = v124 >> 2;
            }

            if (v124 >= 0x7FFFFFFFFFFFFFF8)
            {
              v125 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v125 = v123;
            }

            if (v125)
            {
              sub_19B4C50F0(a1 + 56, v125);
            }

            v138 = (v101 - v120) >> 3;
            v139 = (8 * v122);
            v140 = (8 * v122 - 8 * v138);
            *v139 = 0;
            v95 = v139 + 1;
            memcpy(v140, v120, v121);
            v141 = *(a1 + 56);
            *(a1 + 56) = v140;
            *(a1 + 64) = v95;
            *(a1 + 72) = 0;
            if (v141)
            {
              operator delete(v141);
            }
          }

          else
          {
            *v101 = 0;
            v95 = v101 + 8;
          }

          *(a1 + 64) = v95;
          goto LABEL_185;
        }

        if (v23 == 6)
        {
          *(a1 + 144) |= 1u;
          v57 = *(this + 1);
          if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(this + 2))
          {
            goto LABEL_187;
          }

          *(a1 + 104) = *(*this + v57);
          goto LABEL_189;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            *(a1 + 144) |= 2u;
            v75 = *(this + 1);
            if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(this + 2))
            {
              goto LABEL_187;
            }

            *(a1 + 112) = *(*this + v75);
            goto LABEL_189;
          case 8:
            *(a1 + 144) |= 8u;
            v92 = *(this + 1);
            if (v92 > 0xFFFFFFFFFFFFFFF7 || v92 + 8 > *(this + 2))
            {
              goto LABEL_187;
            }

            *(a1 + 128) = *(*this + v92);
            goto LABEL_189;
          case 9:
            *(a1 + 144) |= 0x10u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
            {
              goto LABEL_187;
            }

            *(a1 + 136) = *(*this + v24);
LABEL_189:
            *(this + 1) += 8;
            goto LABEL_190;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_196:
        v143 = 0;
        return v143 & 1;
      }

LABEL_190:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v143 = v4 ^ 1;
  return v143 & 1;
}

uint64_t sub_19B4E7AC4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 144) & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 120));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 56);
  v14 = *(v3 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 144);
  if (v16)
  {
    result = PB::Writer::write(this, *(v3 + 104));
    v16 = *(v3 + 144);
    if ((v16 & 2) == 0)
    {
LABEL_17:
      if ((v16 & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      result = PB::Writer::write(this, *(v3 + 128));
      if ((*(v3 + 144) & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v3 + 144) & 2) == 0)
  {
    goto LABEL_17;
  }

  result = PB::Writer::write(this, *(v3 + 112));
  v16 = *(v3 + 144);
  if ((v16 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v16 & 0x10) == 0)
  {
    return result;
  }

LABEL_23:
  v17 = *(v3 + 136);

  return PB::Writer::write(this, v17);
}

uint64_t sub_19B4E7C10(uint64_t result)
{
  *result = &unk_1F0E2C050;
  *(result + 20) = 0;
  return result;
}

void sub_19B4E7C38(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E7C70(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestampEnd", *(a1 + 8));
    v5 = *(a1 + 20);
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

  else if ((*(a1 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "updatedLinkLengthX");
  v5 = *(a1 + 20);
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
  v8 = *(a1 + 17);
  PB::TextFormatter::format(this, "updatedLinkLengthY");
  if ((*(a1 + 20) & 8) != 0)
  {
LABEL_5:
    v6 = *(a1 + 18);
    PB::TextFormatter::format(this, "updatedLinkLengthZ");
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E7D34(uint64_t a1, PB::Reader *this)
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
          *(a1 + 20) |= 4u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v28 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v27 = *(*this + v2++);
            *(this + 1) = v2;
            v28 = v27 != 0;
          }

          *(a1 + 17) = v28;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(a1 + 20) |= 8u;
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

          *(a1 + 18) = v26;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
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

          goto LABEL_44;
        }

        if (v22 == 2)
        {
          *(a1 + 20) |= 2u;
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

          *(a1 + 16) = v24;
          goto LABEL_44;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v29 = 0;
        return v29 & 1;
      }

      v2 = *(this + 1);
LABEL_44:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t sub_19B4E7FE0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = v3[20];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = v3[17];
      result = PB::Writer::write(this);
      if ((v3[20] & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = v3[16];
  result = PB::Writer::write(this);
  v4 = v3[20];
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
  v7 = v3[18];

  return PB::Writer::write(this);
}

double sub_19B4E8088(uint64_t a1)
{
  *a1 = &unk_1F0E30068;
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void sub_19B4E80D0(PB::Base *this)
{
  *this = &unk_1F0E30068;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  PB::Base::~Base(this);
}

void sub_19B4E8174(PB::Base *a1)
{
  sub_19B4E80D0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E81AC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "attitude", v7);
  }

  if ((*(a1 + 144) & 2) != 0)
  {
    v8 = *(a1 + 136);
    PB::TextFormatter::format(this, "modelType");
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "rotationRate", v11);
  }

  v12 = *(a1 + 144);
  if ((v12 & 4) != 0)
  {
    v13 = *(a1 + 140);
    PB::TextFormatter::format(this, "status");
    v12 = *(a1 + 144);
  }

  if (v12)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 128));
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "translation", v16);
  }

  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(this, "userAcceleration", v19);
  }

  v20 = *(a1 + 104);
  v21 = *(a1 + 112);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "velocity", v22);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E8330(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 7)
          {
            *(a1 + 144) |= 1u;
            v122 = *(this + 1);
            if (v122 > 0xFFFFFFFFFFFFFFF7 || v122 + 8 > *(this + 2))
            {
LABEL_245:
              *(this + 24) = 1;
              goto LABEL_248;
            }

            *(a1 + 128) = *(*this + v122);
            goto LABEL_247;
          }

          if (v23 == 8)
          {
            *(a1 + 144) |= 2u;
            v66 = *(this + 1);
            v65 = *(this + 2);
            v67 = *this;
            if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v65)
            {
              v136 = 0;
              v137 = 0;
              v70 = 0;
              v17 = v65 >= v66;
              v138 = v65 - v66;
              if (!v17)
              {
                v138 = 0;
              }

              v139 = (v67 + v66);
              v140 = v66 + 1;
              while (1)
              {
                if (!v138)
                {
                  LODWORD(v70) = 0;
                  *(this + 24) = 1;
                  goto LABEL_227;
                }

                v141 = *v139;
                *(this + 1) = v140;
                v70 |= (v141 & 0x7F) << v136;
                if ((v141 & 0x80) == 0)
                {
                  break;
                }

                v136 += 7;
                --v138;
                ++v139;
                ++v140;
                v14 = v137++ > 8;
                if (v14)
                {
LABEL_175:
                  LODWORD(v70) = 0;
                  goto LABEL_227;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v70) = 0;
              }
            }

            else
            {
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v71 = (v67 + v66);
              v72 = v66 + 1;
              while (1)
              {
                *(this + 1) = v72;
                v73 = *v71++;
                v70 |= (v73 & 0x7F) << v68;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v68 += 7;
                ++v72;
                v14 = v69++ > 8;
                if (v14)
                {
                  goto LABEL_175;
                }
              }
            }

LABEL_227:
            *(a1 + 136) = v70;
            goto LABEL_248;
          }
        }

        else
        {
          if (v23 == 5)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_254;
              }

              v90 = *(this + 1);
              v91 = *(this + 2);
              while (v90 < v91 && (*(this + 24) & 1) == 0)
              {
                v93 = *(a1 + 112);
                v92 = *(a1 + 120);
                if (v93 >= v92)
                {
                  v95 = *(a1 + 104);
                  v96 = v93 - v95;
                  v97 = (v93 - v95) >> 3;
                  v98 = v97 + 1;
                  if ((v97 + 1) >> 61)
                  {
                    goto LABEL_255;
                  }

                  v99 = v92 - v95;
                  if (v99 >> 2 > v98)
                  {
                    v98 = v99 >> 2;
                  }

                  if (v99 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v100 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v100 = v98;
                  }

                  if (v100)
                  {
                    sub_19B4C50F0(a1 + 104, v100);
                  }

                  v101 = (v93 - v95) >> 3;
                  v102 = (8 * v97);
                  v103 = (8 * v97 - 8 * v101);
                  *v102 = 0;
                  v94 = v102 + 1;
                  memcpy(v103, v95, v96);
                  v104 = *(a1 + 104);
                  *(a1 + 104) = v103;
                  *(a1 + 112) = v94;
                  *(a1 + 120) = 0;
                  if (v104)
                  {
                    operator delete(v104);
                  }
                }

                else
                {
                  *v93 = 0;
                  v94 = v93 + 8;
                }

                *(a1 + 112) = v94;
                v105 = *(this + 1);
                if (v105 > 0xFFFFFFFFFFFFFFF7 || v105 + 8 > *(this + 2))
                {
LABEL_152:
                  *(this + 24) = 1;
                  goto LABEL_153;
                }

                *(v94 - 1) = *(*this + v105);
                v91 = *(this + 2);
                v90 = *(this + 1) + 8;
                *(this + 1) = v90;
              }

              goto LABEL_153;
            }

            v127 = *(a1 + 112);
            v126 = *(a1 + 120);
            if (v127 >= v126)
            {
              v152 = *(a1 + 104);
              v153 = v127 - v152;
              v154 = (v127 - v152) >> 3;
              v155 = v154 + 1;
              if ((v154 + 1) >> 61)
              {
                goto LABEL_255;
              }

              v156 = v126 - v152;
              if (v156 >> 2 > v155)
              {
                v155 = v156 >> 2;
              }

              if (v156 >= 0x7FFFFFFFFFFFFFF8)
              {
                v157 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v157 = v155;
              }

              if (v157)
              {
                sub_19B4C50F0(a1 + 104, v157);
              }

              v180 = (v127 - v152) >> 3;
              v181 = (8 * v154);
              v182 = (8 * v154 - 8 * v180);
              *v181 = 0;
              v125 = v181 + 1;
              memcpy(v182, v152, v153);
              v183 = *(a1 + 104);
              *(a1 + 104) = v182;
              *(a1 + 112) = v125;
              *(a1 + 120) = 0;
              if (v183)
              {
                operator delete(v183);
              }
            }

            else
            {
              *v127 = 0;
              v125 = v127 + 8;
            }

            *(a1 + 112) = v125;
            goto LABEL_243;
          }

          if (v23 == 6)
          {
            *(a1 + 144) |= 4u;
            v41 = *(this + 1);
            v40 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
            {
              v130 = 0;
              v131 = 0;
              v45 = 0;
              v17 = v40 >= v41;
              v132 = v40 - v41;
              if (!v17)
              {
                v132 = 0;
              }

              v133 = (v42 + v41);
              v134 = v41 + 1;
              while (1)
              {
                if (!v132)
                {
                  LODWORD(v45) = 0;
                  *(this + 24) = 1;
                  goto LABEL_224;
                }

                v135 = *v133;
                *(this + 1) = v134;
                v45 |= (v135 & 0x7F) << v130;
                if ((v135 & 0x80) == 0)
                {
                  break;
                }

                v130 += 7;
                --v132;
                ++v133;
                ++v134;
                v14 = v131++ > 8;
                if (v14)
                {
LABEL_167:
                  LODWORD(v45) = 0;
                  goto LABEL_224;
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
                  goto LABEL_167;
                }
              }
            }

LABEL_224:
            *(a1 + 140) = v45;
            goto LABEL_248;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
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
                v113 = (v109 - v111) >> 3;
                v114 = v113 + 1;
                if ((v113 + 1) >> 61)
                {
                  goto LABEL_255;
                }

                v115 = v108 - v111;
                if (v115 >> 2 > v114)
                {
                  v114 = v115 >> 2;
                }

                if (v115 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v116 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v114;
                }

                if (v116)
                {
                  sub_19B4C50F0(a1 + 32, v116);
                }

                v117 = (v109 - v111) >> 3;
                v118 = (8 * v113);
                v119 = (8 * v113 - 8 * v117);
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
                v110 = v109 + 8;
              }

              *(a1 + 40) = v110;
              v121 = *(this + 1);
              if (v121 > 0xFFFFFFFFFFFFFFF7 || v121 + 8 > *(this + 2))
              {
                goto LABEL_152;
              }

              *(v110 - 1) = *(*this + v121);
              v107 = *(this + 2);
              v106 = *(this + 1) + 8;
              *(this + 1) = v106;
            }

            goto LABEL_153;
          }

          v129 = *(a1 + 40);
          v128 = *(a1 + 48);
          if (v129 >= v128)
          {
            v158 = *(a1 + 32);
            v159 = v129 - v158;
            v160 = (v129 - v158) >> 3;
            v161 = v160 + 1;
            if ((v160 + 1) >> 61)
            {
              goto LABEL_255;
            }

            v162 = v128 - v158;
            if (v162 >> 2 > v161)
            {
              v161 = v162 >> 2;
            }

            if (v162 >= 0x7FFFFFFFFFFFFFF8)
            {
              v163 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v161;
            }

            if (v163)
            {
              sub_19B4C50F0(a1 + 32, v163);
            }

            v184 = (v129 - v158) >> 3;
            v185 = (8 * v160);
            v186 = (8 * v160 - 8 * v184);
            *v185 = 0;
            v125 = v185 + 1;
            memcpy(v186, v158, v159);
            v187 = *(a1 + 32);
            *(a1 + 32) = v186;
            *(a1 + 40) = v125;
            *(a1 + 48) = 0;
            if (v187)
            {
              operator delete(v187);
            }
          }

          else
          {
            *v129 = 0;
            v125 = v129 + 8;
          }

          *(a1 + 40) = v125;
LABEL_243:
          v196 = *(this + 1);
          if (v196 > 0xFFFFFFFFFFFFFFF7 || v196 + 8 > *(this + 2))
          {
            goto LABEL_245;
          }

          *(v125 - 1) = *(*this + v196);
LABEL_247:
          *(this + 1) += 8;
          goto LABEL_248;
        }

        if (v23 == 4)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
            }

            v49 = *(this + 1);
            v50 = *(this + 2);
            while (v49 < v50 && (*(this + 24) & 1) == 0)
            {
              v52 = *(a1 + 88);
              v51 = *(a1 + 96);
              if (v52 >= v51)
              {
                v54 = *(a1 + 80);
                v55 = v52 - v54;
                v56 = (v52 - v54) >> 3;
                v57 = v56 + 1;
                if ((v56 + 1) >> 61)
                {
                  goto LABEL_255;
                }

                v58 = v51 - v54;
                if (v58 >> 2 > v57)
                {
                  v57 = v58 >> 2;
                }

                if (v58 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v59 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v59 = v57;
                }

                if (v59)
                {
                  sub_19B4C50F0(a1 + 80, v59);
                }

                v60 = (v52 - v54) >> 3;
                v61 = (8 * v56);
                v62 = (8 * v56 - 8 * v60);
                *v61 = 0;
                v53 = v61 + 1;
                memcpy(v62, v54, v55);
                v63 = *(a1 + 80);
                *(a1 + 80) = v62;
                *(a1 + 88) = v53;
                *(a1 + 96) = 0;
                if (v63)
                {
                  operator delete(v63);
                }
              }

              else
              {
                *v52 = 0;
                v53 = v52 + 8;
              }

              *(a1 + 88) = v53;
              v64 = *(this + 1);
              if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(this + 2))
              {
                goto LABEL_152;
              }

              *(v53 - 1) = *(*this + v64);
              v50 = *(this + 2);
              v49 = *(this + 1) + 8;
              *(this + 1) = v49;
            }

            goto LABEL_153;
          }

          v145 = *(a1 + 88);
          v144 = *(a1 + 96);
          if (v145 >= v144)
          {
            v170 = *(a1 + 80);
            v171 = v145 - v170;
            v172 = (v145 - v170) >> 3;
            v173 = v172 + 1;
            if ((v172 + 1) >> 61)
            {
LABEL_255:
              sub_19B5BE690();
            }

            v174 = v144 - v170;
            if (v174 >> 2 > v173)
            {
              v173 = v174 >> 2;
            }

            if (v174 >= 0x7FFFFFFFFFFFFFF8)
            {
              v175 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v175 = v173;
            }

            if (v175)
            {
              sub_19B4C50F0(a1 + 80, v175);
            }

            v192 = (v145 - v170) >> 3;
            v193 = (8 * v172);
            v194 = (8 * v172 - 8 * v192);
            *v193 = 0;
            v125 = v193 + 1;
            memcpy(v194, v170, v171);
            v195 = *(a1 + 80);
            *(a1 + 80) = v194;
            *(a1 + 88) = v125;
            *(a1 + 96) = 0;
            if (v195)
            {
              operator delete(v195);
            }
          }

          else
          {
            *v145 = 0;
            v125 = v145 + 8;
          }

          *(a1 + 88) = v125;
          goto LABEL_243;
        }
      }

      else
      {
        if (v23 == 1)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
            }

            v74 = *(this + 1);
            v75 = *(this + 2);
            while (v74 < v75 && (*(this + 24) & 1) == 0)
            {
              v77 = *(a1 + 16);
              v76 = *(a1 + 24);
              if (v77 >= v76)
              {
                v79 = *(a1 + 8);
                v80 = v77 - v79;
                v81 = (v77 - v79) >> 3;
                v82 = v81 + 1;
                if ((v81 + 1) >> 61)
                {
                  goto LABEL_255;
                }

                v83 = v76 - v79;
                if (v83 >> 2 > v82)
                {
                  v82 = v83 >> 2;
                }

                if (v83 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v84 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = v82;
                }

                if (v84)
                {
                  sub_19B4C50F0(a1 + 8, v84);
                }

                v85 = (v77 - v79) >> 3;
                v86 = (8 * v81);
                v87 = (8 * v81 - 8 * v85);
                *v86 = 0;
                v78 = v86 + 1;
                memcpy(v87, v79, v80);
                v88 = *(a1 + 8);
                *(a1 + 8) = v87;
                *(a1 + 16) = v78;
                *(a1 + 24) = 0;
                if (v88)
                {
                  operator delete(v88);
                }
              }

              else
              {
                *v77 = 0;
                v78 = v77 + 8;
              }

              *(a1 + 16) = v78;
              v89 = *(this + 1);
              if (v89 > 0xFFFFFFFFFFFFFFF7 || v89 + 8 > *(this + 2))
              {
                goto LABEL_152;
              }

              *(v78 - 1) = *(*this + v89);
              v75 = *(this + 2);
              v74 = *(this + 1) + 8;
              *(this + 1) = v74;
            }

            goto LABEL_153;
          }

          v124 = *(a1 + 16);
          v123 = *(a1 + 24);
          if (v124 >= v123)
          {
            v146 = *(a1 + 8);
            v147 = v124 - v146;
            v148 = (v124 - v146) >> 3;
            v149 = v148 + 1;
            if ((v148 + 1) >> 61)
            {
              goto LABEL_255;
            }

            v150 = v123 - v146;
            if (v150 >> 2 > v149)
            {
              v149 = v150 >> 2;
            }

            if (v150 >= 0x7FFFFFFFFFFFFFF8)
            {
              v151 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v151 = v149;
            }

            if (v151)
            {
              sub_19B4C50F0(a1 + 8, v151);
            }

            v176 = (v124 - v146) >> 3;
            v177 = (8 * v148);
            v178 = (8 * v148 - 8 * v176);
            *v177 = 0;
            v125 = v177 + 1;
            memcpy(v178, v146, v147);
            v179 = *(a1 + 8);
            *(a1 + 8) = v178;
            *(a1 + 16) = v125;
            *(a1 + 24) = 0;
            if (v179)
            {
              operator delete(v179);
            }
          }

          else
          {
            *v124 = 0;
            v125 = v124 + 8;
          }

          *(a1 + 16) = v125;
          goto LABEL_243;
        }

        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
            }

            v24 = *(this + 1);
            v25 = *(this + 2);
            while (v24 < v25 && (*(this + 24) & 1) == 0)
            {
              v27 = *(a1 + 64);
              v26 = *(a1 + 72);
              if (v27 >= v26)
              {
                v29 = *(a1 + 56);
                v30 = v27 - v29;
                v31 = (v27 - v29) >> 3;
                v32 = v31 + 1;
                if ((v31 + 1) >> 61)
                {
                  goto LABEL_255;
                }

                v33 = v26 - v29;
                if (v33 >> 2 > v32)
                {
                  v32 = v33 >> 2;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v34 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_19B4C50F0(a1 + 56, v34);
                }

                v35 = (v27 - v29) >> 3;
                v36 = (8 * v31);
                v37 = (8 * v31 - 8 * v35);
                *v36 = 0;
                v28 = v36 + 1;
                memcpy(v37, v29, v30);
                v38 = *(a1 + 56);
                *(a1 + 56) = v37;
                *(a1 + 64) = v28;
                *(a1 + 72) = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v27 = 0;
                v28 = v27 + 8;
              }

              *(a1 + 64) = v28;
              v39 = *(this + 1);
              if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
              {
                goto LABEL_152;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 8;
              *(this + 1) = v24;
            }

LABEL_153:
            PB::Reader::recallMark();
            goto LABEL_248;
          }

          v143 = *(a1 + 64);
          v142 = *(a1 + 72);
          if (v143 >= v142)
          {
            v164 = *(a1 + 56);
            v165 = v143 - v164;
            v166 = (v143 - v164) >> 3;
            v167 = v166 + 1;
            if ((v166 + 1) >> 61)
            {
              goto LABEL_255;
            }

            v168 = v142 - v164;
            if (v168 >> 2 > v167)
            {
              v167 = v168 >> 2;
            }

            if (v168 >= 0x7FFFFFFFFFFFFFF8)
            {
              v169 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v169 = v167;
            }

            if (v169)
            {
              sub_19B4C50F0(a1 + 56, v169);
            }

            v188 = (v143 - v164) >> 3;
            v189 = (8 * v166);
            v190 = (8 * v166 - 8 * v188);
            *v189 = 0;
            v125 = v189 + 1;
            memcpy(v190, v164, v165);
            v191 = *(a1 + 56);
            *(a1 + 56) = v190;
            *(a1 + 64) = v125;
            *(a1 + 72) = 0;
            if (v191)
            {
              operator delete(v191);
            }
          }

          else
          {
            *v143 = 0;
            v125 = v143 + 8;
          }

          *(a1 + 64) = v125;
          goto LABEL_243;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_254:
        v197 = 0;
        return v197 & 1;
      }

LABEL_248:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v197 = v4 ^ 1;
  return v197 & 1;
}

uint64_t sub_19B4E8FC4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
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

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 104);
  v17 = *(v3 + 112);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::write(this, v18);
  }

  v19 = *(v3 + 144);
  if ((v19 & 4) == 0)
  {
    if ((*(v3 + 144) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    result = PB::Writer::write(this, *(v3 + 128));
    if ((*(v3 + 144) & 2) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  v20 = *(v3 + 140);
  result = PB::Writer::writeVarInt(this);
  v19 = *(v3 + 144);
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v19 & 2) == 0)
  {
    return result;
  }

LABEL_22:
  v21 = *(v3 + 136);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4E90FC(uint64_t result)
{
  *result = &unk_1F0E2D780;
  *(result + 8) = 0;
  *(result + 28) = 0;
  return result;
}

void sub_19B4E9120(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2D780;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4E91A0(PB::Base *a1)
{
  sub_19B4E9120(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E91D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 28) & 2) != 0)
  {
    v5 = *(a1 + 24);
    PB::TextFormatter::format(this, "modelType");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "state");
  }

  if (*(a1 + 28))
  {
    PB::TextFormatter::format(this, "targetTimestamp", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E928C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_55;
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
        *(a1 + 28) |= 2u;
        v25 = *(this + 1);
        v24 = *(this + 2);
        v26 = *this;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v33 = 0;
          v34 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v35 = v24 - v25;
          if (!v17)
          {
            v35 = 0;
          }

          v36 = (v26 + v25);
          v37 = v25 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v29) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v38 = *v36;
            *(this + 1) = v37;
            v29 |= (v38 & 0x7F) << v33;
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
LABEL_45:
              LODWORD(v29) = 0;
              goto LABEL_50;
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
              goto LABEL_45;
            }
          }
        }

LABEL_50:
        *(a1 + 24) = v29;
      }

      else if (v22 == 2)
      {
        *(a1 + 28) |= 1u;
        v23 = *(this + 1);
        if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v23);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v40 = 0;
          return v40 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B4E9600(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 28);
  if (v5)
  {
    result = PB::Writer::write(this, *(v3 + 16));
    v5 = *(v3 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 24);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B4E9680(void *result)
{
  *result = &unk_1F0E2CE18;
  result[1] = 0;
  return result;
}

void sub_19B4E96A0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2CE18;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4E9720(PB::Base *a1)
{
  sub_19B4E96A0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E9758(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E97D4(int a1, PB::Reader *this)
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

uint64_t sub_19B4E99F0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B4E9A0C(uint64_t result)
{
  *result = &unk_1F0E2DC88;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_19B4E9A30(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2DC88;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4E9AB0(PB::Base *a1)
{
  sub_19B4E9A30(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E9AE8(uint64_t a1, PB::TextFormatter *this, char *a3)
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
    PB::TextFormatter::format(this, "withAnchoredStaticPose");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E9B80(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4E9E38(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4E9EA0(uint64_t result)
{
  *result = &unk_1F0E30810;
  *(result + 64) = 0;
  return result;
}

void sub_19B4E9EC8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E9F00(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "adaptiveExerciseMinuteThreshold", *(a1 + 8));
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000) == 0)
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

  PB::TextFormatter::format(this, "age", *(a1 + 12));
  v5 = *(a1 + 64);
  if ((v5 & 0x2000) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = *(a1 + 60);
  PB::TextFormatter::format(this, "betaBlockerUse");
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "biologicalSex");
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "condition");
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "gender");
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "heightM", *(a1 + 28));
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "hrmax", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "hrmin", *(a1 + 36));
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "hronset", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "pal", *(a1 + 44));
  v5 = *(a1 + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "runVo2max", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(this, "vo2max", *(a1 + 52));
  if ((*(a1 + 64) & 0x1000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(this, "weightKG", *(a1 + 56));
  }

LABEL_16:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EA104(uint64_t a1, PB::Reader *this)
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
        goto LABEL_125;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 64) |= 0x10u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v64 = v2 - v22;
            v65 = (v23 + v22);
            v66 = v22 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_120;
              }

              v67 = v66;
              v68 = *v65;
              *(this + 1) = v67;
              v26 |= (v68 & 0x7F) << v62;
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
                LODWORD(v26) = 0;
                goto LABEL_119;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

LABEL_119:
            v2 = v67;
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
                goto LABEL_120;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            LODWORD(v26) = 0;
          }

LABEL_120:
          *(a1 + 24) = v26;
          goto LABEL_121;
        case 2u:
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_105;
        case 3u:
          *(a1 + 64) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_105;
        case 4u:
          *(a1 + 64) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_105;
        case 5u:
          *(a1 + 64) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 12) = *(*this + v2);
          goto LABEL_105;
        case 6u:
          *(a1 + 64) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_105;
        case 7u:
          *(a1 + 64) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_105;
        case 8u:
          *(a1 + 64) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_105;
        case 9u:
          *(a1 + 64) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_105;
        case 0xAu:
          *(a1 + 64) |= 8u;
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
              v2 = *(this + 1);
            }

            v57 = v2 - v40;
            v58 = (v41 + v40);
            v59 = v40 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_116;
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
LABEL_115:
                v2 = v60;
                goto LABEL_116;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_115;
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
              goto LABEL_116;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_116:
          *(a1 + 20) = v44;
          goto LABEL_121;
        case 0xBu:
          *(a1 + 64) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_105;
        case 0xCu:
          *(a1 + 64) |= 0x2000u;
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

          *(a1 + 60) = v31;
          goto LABEL_121;
        case 0xDu:
          *(a1 + 64) |= 4u;
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
              v2 = *(this + 1);
            }

            v50 = v2 - v32;
            v51 = (v33 + v32);
            v52 = v32 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_112;
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
LABEL_111:
                v2 = v53;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_111;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(this + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_112;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_112:
          *(a1 + 16) = v36;
          goto LABEL_121;
        case 0xEu:
          *(a1 + 64) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_75:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 8) = *(*this + v2);
LABEL_105:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_121;
        default:
          if (!PB::Reader::skip(this))
          {
            v69 = 0;
            return v69 & 1;
          }

          v2 = *(this + 1);
LABEL_121:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_125;
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

LABEL_125:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t sub_19B4EA830(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 12));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v8 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 64) & 1) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  v7 = *(v3 + 60);
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_29:
  v9 = *(v3 + 8);

  return PB::Writer::write(this, v9);
}

void *sub_19B4EA9F0(void *result)
{
  *result = &unk_1F0E2F8F8;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B4EAA14(void **a1)
{
  *a1 = &unk_1F0E2F8F8;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B4EAA70(void **a1)
{
  *a1 = &unk_1F0E2F8F8;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B4EAAE0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "accel");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EAB78(int a1, PB::Reader *this)
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
        sub_19B4EAD4C();
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

uint64_t sub_19B4EAEB4(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

void *sub_19B4EAF00(void *result)
{
  *result = &unk_1F0E2D748;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B4EAF24(void **a1)
{
  *a1 = &unk_1F0E2D748;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B4EAF80(void **a1)
{
  *a1 = &unk_1F0E2D748;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B4EAFF0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "deviceMotion");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EB088(int a1, PB::Reader *this)
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
        sub_19B4EB25C();
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

uint64_t sub_19B4EB3C4(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_19B4EB410(uint64_t result)
{
  *result = &unk_1F0E2DC50;
  *(result + 44) = 0;
  return result;
}

void sub_19B4EB438(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4EB470(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if (v5)
  {
    PB::TextFormatter::format(this, "basalNatalies", *(a1 + 8));
    v5 = *(a1 + 44);
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

  else if ((*(a1 + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "mets", *(a1 + 16));
  v5 = *(a1 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "natalies", *(a1 + 24));
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v6 = *(a1 + 40);
  PB::TextFormatter::format(this, "session");
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "startDate", *(a1 + 32));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EB554(uint64_t a1, PB::Reader *this)
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
            goto LABEL_68;
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
          *(a1 + 44) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_46:
            *(this + 24) = 1;
            goto LABEL_64;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_58;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_46;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_58;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 44) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_46;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_58;
          case 4:
            *(a1 + 44) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_46;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_58:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_64;
          case 5:
            *(a1 + 44) |= 0x10u;
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
                  goto LABEL_63;
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
                  goto LABEL_62;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_62:
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

LABEL_63:
            *(a1 + 40) = v27;
            goto LABEL_64;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_64:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_68:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B4EB8E8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
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
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 44) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 44);
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
  v5 = *(v3 + 40);

  return PB::Writer::writeVarInt(this);
}

void *sub_19B4EB9AC(void *result)
{
  *result = &unk_1F0E2DC18;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B4EB9D0(void **a1)
{
  *a1 = &unk_1F0E2DC18;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B4EBA2C(void **a1)
{
  *a1 = &unk_1F0E2DC18;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B4EBA9C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "vo2MaxInput");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EBB34(int a1, PB::Reader *this)
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
        sub_19B4EBD08();
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

uint64_t sub_19B4EBE54(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_19B4EBEA0(uint64_t result)
{
  *result = &unk_1F0E2D710;
  *(result + 24) = 0;
  return result;
}

void sub_19B4EBEC8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4EBF00(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "eventTime", *(a1 + 8));
    v5 = *(a1 + 24);
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

  else if ((*(a1 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "eventType");
  if ((*(a1 + 24) & 4) != 0)
  {
LABEL_4:
    v6 = *(a1 + 20);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EBFA4(uint64_t a1, PB::Reader *this)
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

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
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
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_66;
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
              LODWORD(v35) = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_65:
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
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_66:
        *(a1 + 16) = v35;
      }

      else if (v22 == 1)
      {
        *(a1 + 24) |= 4u;
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
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_70;
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
              LODWORD(v27) = 0;
              goto LABEL_69;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_69:
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
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_70:
        *(a1 + 20) = v27;
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

uint64_t sub_19B4EC37C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 4) == 0)
  {
    if ((*(result + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v5 = *(result + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 24);
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
  v7 = *(v3 + 8);

  return PB::Writer::write(this, v7);
}

uint64_t sub_19B4EC408(uint64_t result)
{
  *result = &unk_1F0E38EA8;
  *(result + 20) = 0;
  return result;
}

void sub_19B4EC430(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4EC468(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "state");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EC4E4(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4EC864(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4EC8D0(uint64_t result)
{
  *result = &unk_1F0E38EE0;
  *(result + 28) = 0;
  return result;
}

void sub_19B4EC8F8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4EC930(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "distance", *(a1 + 16));
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

  PB::TextFormatter::format(this, "speed", *(a1 + 20));
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
  PB::TextFormatter::format(this, "speedUncertainty", *(a1 + 24));
  if (*(a1 + 28))
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EC9F4(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4ECC84(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4ECD2C(uint64_t result)
{
  *result = &unk_1F0E38F18;
  *(result + 64) = 0;
  return result;
}

void sub_19B4ECD54(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4ECD8C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 0x20) != 0)
  {
    v6 = *(a1 + 48);
    PB::TextFormatter::format(this, "configMask");
    v5 = *(a1 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 52);
  PB::TextFormatter::format(this, "count");
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "currentCadence", *(a1 + 8));
  v5 = *(a1 + 64);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "currentPace", *(a1 + 16));
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "distance", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "endTime", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 60);
  PB::TextFormatter::format(this, "isStepPace");
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v9 = *(a1 + 56);
  PB::TextFormatter::format(this, "pedometerArmConstrainedState");
  if ((*(a1 + 64) & 0x10) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "startTime", *(a1 + 40));
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4ECEF0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_121;
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
            *(a1 + 64) |= 0x40u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v49 = 0;
              v50 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v51 = v2 - v25;
              v52 = (v26 + v25);
              v53 = v25 + 1;
              while (1)
              {
                if (!v51)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_108;
                }

                v54 = v53;
                v55 = *v52;
                *(this + 1) = v54;
                v29 |= (v55 & 0x7F) << v49;
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
                  LODWORD(v29) = 0;
                  goto LABEL_107;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_107:
              v2 = v54;
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

LABEL_108:
            *(a1 + 52) = v29;
            goto LABEL_117;
          }

          if (v22 == 4)
          {
            *(a1 + 64) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_64:
              *(this + 24) = 1;
              goto LABEL_117;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_101;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 64) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_101;
          }

          if (v22 == 2)
          {
            *(a1 + 64) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_101;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 64) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_101;
        }

        if (v22 == 6)
        {
          *(a1 + 64) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_101:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_117;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 64) |= 0x80u;
            v33 = *(this + 1);
            v2 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v56 = 0;
              v57 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(this + 1);
              }

              v58 = v2 - v33;
              v59 = (v34 + v33);
              v60 = v33 + 1;
              while (1)
              {
                if (!v58)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_112;
                }

                v61 = v60;
                v62 = *v59;
                *(this + 1) = v61;
                v37 |= (v62 & 0x7F) << v56;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                --v58;
                ++v59;
                v60 = v61 + 1;
                v14 = v57++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  goto LABEL_111;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }

LABEL_111:
              v2 = v61;
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
                  LODWORD(v37) = 0;
                  break;
                }
              }
            }

LABEL_112:
            *(a1 + 56) = v37;
            goto LABEL_117;
          case 8:
            *(a1 + 64) |= 0x20u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v65 = v2 - v41;
              v66 = (v42 + v41);
              v67 = v41 + 1;
              while (1)
              {
                if (!v65)
                {
                  LODWORD(v45) = 0;
                  *(this + 24) = 1;
                  goto LABEL_116;
                }

                v68 = v67;
                v69 = *v66;
                *(this + 1) = v68;
                v45 |= (v69 & 0x7F) << v63;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                --v65;
                ++v66;
                v67 = v68 + 1;
                v14 = v64++ > 8;
                if (v14)
                {
                  LODWORD(v45) = 0;
                  goto LABEL_115;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_115:
              v2 = v68;
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

LABEL_116:
            *(a1 + 48) = v45;
            goto LABEL_117;
          case 9:
            *(a1 + 64) |= 0x100u;
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

            *(a1 + 60) = v24;
            goto LABEL_117;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v70 = 0;
        return v70 & 1;
      }

      v2 = *(this + 1);
LABEL_117:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_121:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t sub_19B4ED538(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v7 = *(v3 + 48);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 64) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  v6 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v8 = *(v3 + 60);

  return PB::Writer::write(this);
}

double sub_19B4ED66C(uint64_t a1)
{
  *a1 = &unk_1F0E2EF20;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B4ED6A0(PB::Base *this)
{
  *this = &unk_1F0E2EF20;
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

void sub_19B4ED714(PB::Base *a1)
{
  sub_19B4ED6A0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4ED74C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "rotationMatrix", v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    PB::TextFormatter::format(this, "targetTimestamp", *(a1 + 56));
    v8 = *(a1 + 72);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "translation", v11);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4ED830(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 2)
      {
        if (v23 == 3)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_114:
              v84 = 0;
              return v84 & 1;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 40);
              v44 = *(a1 + 48);
              if (v45 >= v44)
              {
                v47 = *(a1 + 32);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 3;
                v50 = v49 + 1;
                if ((v49 + 1) >> 61)
                {
                  goto LABEL_115;
                }

                v51 = v44 - v47;
                if (v51 >> 2 > v50)
                {
                  v50 = v51 >> 2;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v52 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_19B4C50F0(a1 + 32, v52);
                }

                v53 = (v45 - v47) >> 3;
                v54 = (8 * v49);
                v55 = (8 * v49 - 8 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 32);
                *(a1 + 32) = v55;
                *(a1 + 40) = v46;
                *(a1 + 48) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 8;
              }

              *(a1 + 40) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(this + 2))
              {
LABEL_79:
                *(this + 24) = 1;
                goto LABEL_80;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 8;
              *(this + 1) = v42;
            }

            goto LABEL_80;
          }

          v62 = *(a1 + 40);
          v61 = *(a1 + 48);
          if (v62 >= v61)
          {
            v69 = *(a1 + 32);
            v70 = v62 - v69;
            v71 = (v62 - v69) >> 3;
            v72 = v71 + 1;
            if ((v71 + 1) >> 61)
            {
LABEL_115:
              sub_19B5BE690();
            }

            v73 = v61 - v69;
            if (v73 >> 2 > v72)
            {
              v72 = v73 >> 2;
            }

            if (v73 >= 0x7FFFFFFFFFFFFFF8)
            {
              v74 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v74 = v72;
            }

            if (v74)
            {
              sub_19B4C50F0(a1 + 32, v74);
            }

            v79 = (v62 - v69) >> 3;
            v80 = (8 * v71);
            v81 = (8 * v71 - 8 * v79);
            *v80 = 0;
            v60 = v80 + 1;
            memcpy(v81, v69, v70);
            v82 = *(a1 + 32);
            *(a1 + 32) = v81;
            *(a1 + 40) = v60;
            *(a1 + 48) = 0;
            if (v82)
            {
              operator delete(v82);
            }
          }

          else
          {
            *v62 = 0;
            v60 = v62 + 8;
          }

          *(a1 + 40) = v60;
          goto LABEL_103;
        }

        if (v23 != 4)
        {
LABEL_50:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_114;
          }

          goto LABEL_108;
        }

        *(a1 + 72) |= 1u;
        v40 = *(this + 1);
        if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
        {
LABEL_105:
          *(this + 24) = 1;
          goto LABEL_108;
        }

        *(a1 + 56) = *(*this + v40);
      }

      else
      {
        if (v23 != 1)
        {
          if (v23 != 2)
          {
            goto LABEL_50;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_114;
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
                v31 = (v27 - v29) >> 3;
                v32 = v31 + 1;
                if ((v31 + 1) >> 61)
                {
                  goto LABEL_115;
                }

                v33 = v26 - v29;
                if (v33 >> 2 > v32)
                {
                  v32 = v33 >> 2;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v34 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_19B4C50F0(a1 + 8, v34);
                }

                v35 = (v27 - v29) >> 3;
                v36 = (8 * v31);
                v37 = (8 * v31 - 8 * v35);
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
                v28 = v27 + 8;
              }

              *(a1 + 16) = v28;
              v39 = *(this + 1);
              if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 8;
              *(this + 1) = v24;
            }

LABEL_80:
            PB::Reader::recallMark();
            goto LABEL_108;
          }

          v59 = *(a1 + 16);
          v58 = *(a1 + 24);
          if (v59 >= v58)
          {
            v63 = *(a1 + 8);
            v64 = v59 - v63;
            v65 = (v59 - v63) >> 3;
            v66 = v65 + 1;
            if ((v65 + 1) >> 61)
            {
              goto LABEL_115;
            }

            v67 = v58 - v63;
            if (v67 >> 2 > v66)
            {
              v66 = v67 >> 2;
            }

            if (v67 >= 0x7FFFFFFFFFFFFFF8)
            {
              v68 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v68 = v66;
            }

            if (v68)
            {
              sub_19B4C50F0(a1 + 8, v68);
            }

            v75 = (v59 - v63) >> 3;
            v76 = (8 * v65);
            v77 = (8 * v65 - 8 * v75);
            *v76 = 0;
            v60 = v76 + 1;
            memcpy(v77, v63, v64);
            v78 = *(a1 + 8);
            *(a1 + 8) = v77;
            *(a1 + 16) = v60;
            *(a1 + 24) = 0;
            if (v78)
            {
              operator delete(v78);
            }
          }

          else
          {
            *v59 = 0;
            v60 = v59 + 8;
          }

          *(a1 + 16) = v60;
LABEL_103:
          v83 = *(this + 1);
          if (v83 > 0xFFFFFFFFFFFFFFF7 || v83 + 8 > *(this + 2))
          {
            goto LABEL_105;
          }

          *(v60 - 1) = *(*this + v83);
          goto LABEL_107;
        }

        *(a1 + 72) |= 2u;
        v41 = *(this + 1);
        if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
        {
          goto LABEL_105;
        }

        *(a1 + 64) = *(*this + v41);
      }

LABEL_107:
      *(this + 1) += 8;
LABEL_108:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_19B4EDDF4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 72) & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  if (*(v3 + 72))
  {
    v10 = *(v3 + 56);

    return PB::Writer::write(this, v10);
  }

  return result;
}

void sub_19B4EDEAC(PB::Base *this)
{
  *this = &unk_1F0E30030;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

void sub_19B4EDF30(PB::Base *a1)
{
  sub_19B4EDEAC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4EDF68(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "rotationMatrix", v7);
  }

  if (*(a1 + 88))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 80));
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "translation", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "velocity", v13);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4EE05C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_142;
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
        goto LABEL_142;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_67;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_144;
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
              v31 = (v27 - v29) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_145;
              }

              v33 = v26 - v29;
              if (v33 >> 2 > v32)
              {
                v32 = v33 >> 2;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFF8)
              {
                v34 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                sub_19B4C50F0(a1 + 8, v34);
              }

              v35 = (v27 - v29) >> 3;
              v36 = (8 * v31);
              v37 = (8 * v31 - 8 * v35);
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
              v28 = v27 + 8;
            }

            *(a1 + 16) = v28;
            v39 = *(this + 1);
            if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
            {
              goto LABEL_98;
            }

            *(v28 - 1) = *(*this + v39);
            v25 = *(this + 2);
            v24 = *(this + 1) + 8;
            *(this + 1) = v24;
          }

LABEL_99:
          PB::Reader::recallMark();
          goto LABEL_138;
        }

        v74 = *(a1 + 16);
        v73 = *(a1 + 24);
        if (v74 >= v73)
        {
          v80 = *(a1 + 8);
          v81 = v74 - v80;
          v82 = (v74 - v80) >> 3;
          v83 = v82 + 1;
          if ((v82 + 1) >> 61)
          {
            goto LABEL_145;
          }

          v84 = v73 - v80;
          if (v84 >> 2 > v83)
          {
            v83 = v84 >> 2;
          }

          if (v84 >= 0x7FFFFFFFFFFFFFF8)
          {
            v85 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            sub_19B4C50F0(a1 + 8, v85);
          }

          v98 = (v74 - v80) >> 3;
          v99 = (8 * v82);
          v100 = (8 * v82 - 8 * v98);
          *v99 = 0;
          v75 = v99 + 1;
          memcpy(v100, v80, v81);
          v101 = *(a1 + 8);
          *(a1 + 8) = v100;
          *(a1 + 16) = v75;
          *(a1 + 24) = 0;
          if (v101)
          {
            operator delete(v101);
          }
        }

        else
        {
          *v74 = 0;
          v75 = v74 + 8;
        }

        *(a1 + 16) = v75;
LABEL_133:
        v110 = *(this + 1);
        if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(this + 2))
        {
          goto LABEL_135;
        }

        *(v75 - 1) = *(*this + v110);
        goto LABEL_137;
      }

      *(a1 + 88) |= 1u;
      v56 = *(this + 1);
      if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
      {
LABEL_135:
        *(this + 24) = 1;
        goto LABEL_138;
      }

      *(a1 + 80) = *(*this + v56);
LABEL_137:
      *(this + 1) += 8;
LABEL_138:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_142;
      }
    }

    if (v23 == 3)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_144:
          v111 = 0;
          return v111 & 1;
        }

        v57 = *(this + 1);
        v58 = *(this + 2);
        while (v57 < v58 && (*(this + 24) & 1) == 0)
        {
          v60 = *(a1 + 40);
          v59 = *(a1 + 48);
          if (v60 >= v59)
          {
            v62 = *(a1 + 32);
            v63 = v60 - v62;
            v64 = (v60 - v62) >> 3;
            v65 = v64 + 1;
            if ((v64 + 1) >> 61)
            {
              goto LABEL_145;
            }

            v66 = v59 - v62;
            if (v66 >> 2 > v65)
            {
              v65 = v66 >> 2;
            }

            if (v66 >= 0x7FFFFFFFFFFFFFF8)
            {
              v67 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v67 = v65;
            }

            if (v67)
            {
              sub_19B4C50F0(a1 + 32, v67);
            }

            v68 = (v60 - v62) >> 3;
            v69 = (8 * v64);
            v70 = (8 * v64 - 8 * v68);
            *v69 = 0;
            v61 = v69 + 1;
            memcpy(v70, v62, v63);
            v71 = *(a1 + 32);
            *(a1 + 32) = v70;
            *(a1 + 40) = v61;
            *(a1 + 48) = 0;
            if (v71)
            {
              operator delete(v71);
            }
          }

          else
          {
            *v60 = 0;
            v61 = v60 + 8;
          }

          *(a1 + 40) = v61;
          v72 = *(this + 1);
          if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(this + 2))
          {
LABEL_98:
            *(this + 24) = 1;
            goto LABEL_99;
          }

          *(v61 - 1) = *(*this + v72);
          v58 = *(this + 2);
          v57 = *(this + 1) + 8;
          *(this + 1) = v57;
        }

        goto LABEL_99;
      }

      v79 = *(a1 + 40);
      v78 = *(a1 + 48);
      if (v79 >= v78)
      {
        v92 = *(a1 + 32);
        v93 = v79 - v92;
        v94 = (v79 - v92) >> 3;
        v95 = v94 + 1;
        if ((v94 + 1) >> 61)
        {
LABEL_145:
          sub_19B5BE690();
        }

        v96 = v78 - v92;
        if (v96 >> 2 > v95)
        {
          v95 = v96 >> 2;
        }

        if (v96 >= 0x7FFFFFFFFFFFFFF8)
        {
          v97 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v97 = v95;
        }

        if (v97)
        {
          sub_19B4C50F0(a1 + 32, v97);
        }

        v106 = (v79 - v92) >> 3;
        v107 = (8 * v94);
        v108 = (8 * v94 - 8 * v106);
        *v107 = 0;
        v75 = v107 + 1;
        memcpy(v108, v92, v93);
        v109 = *(a1 + 32);
        *(a1 + 32) = v108;
        *(a1 + 40) = v75;
        *(a1 + 48) = 0;
        if (v109)
        {
          operator delete(v109);
        }
      }

      else
      {
        *v79 = 0;
        v75 = v79 + 8;
      }

      *(a1 + 40) = v75;
    }

    else
    {
      if (v23 != 4)
      {
LABEL_67:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_144;
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
            v47 = (v43 - v45) >> 3;
            v48 = v47 + 1;
            if ((v47 + 1) >> 61)
            {
              goto LABEL_145;
            }

            v49 = v42 - v45;
            if (v49 >> 2 > v48)
            {
              v48 = v49 >> 2;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFF8)
            {
              v50 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              sub_19B4C50F0(a1 + 56, v50);
            }

            v51 = (v43 - v45) >> 3;
            v52 = (8 * v47);
            v53 = (8 * v47 - 8 * v51);
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
            v44 = v43 + 8;
          }

          *(a1 + 64) = v44;
          v55 = *(this + 1);
          if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(this + 2))
          {
            goto LABEL_98;
          }

          *(v44 - 1) = *(*this + v55);
          v41 = *(this + 2);
          v40 = *(this + 1) + 8;
          *(this + 1) = v40;
        }

        goto LABEL_99;
      }

      v77 = *(a1 + 64);
      v76 = *(a1 + 72);
      if (v77 >= v76)
      {
        v86 = *(a1 + 56);
        v87 = v77 - v86;
        v88 = (v77 - v86) >> 3;
        v89 = v88 + 1;
        if ((v88 + 1) >> 61)
        {
          goto LABEL_145;
        }

        v90 = v76 - v86;
        if (v90 >> 2 > v89)
        {
          v89 = v90 >> 2;
        }

        if (v90 >= 0x7FFFFFFFFFFFFFF8)
        {
          v91 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v91 = v89;
        }

        if (v91)
        {
          sub_19B4C50F0(a1 + 56, v91);
        }

        v102 = (v77 - v86) >> 3;
        v103 = (8 * v88);
        v104 = (8 * v88 - 8 * v102);
        *v103 = 0;
        v75 = v103 + 1;
        memcpy(v104, v86, v87);
        v105 = *(a1 + 56);
        *(a1 + 56) = v104;
        *(a1 + 64) = v75;
        *(a1 + 72) = 0;
        if (v105)
        {
          operator delete(v105);
        }
      }

      else
      {
        *v77 = 0;
        v75 = v77 + 8;
      }

      *(a1 + 64) = v75;
    }

    goto LABEL_133;
  }

LABEL_142:
  v111 = v4 ^ 1;
  return v111 & 1;
}