uint64_t sub_19B47F014(uint64_t result)
{
  *result = &unk_1F0E38590;
  *(result + 40) = 0;
  return result;
}

void sub_19B47F03C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B47F074(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "dt", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "quaternionW", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 28));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 32));
  v5 = *(a1 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 36));
  if ((*(a1 + 40) & 2) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B47F178(uint64_t a1, PB::Reader *this)
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
            goto LABEL_57;
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
            *(a1 + 40) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_49:
              *(this + 24) = 1;
              goto LABEL_53;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_51;
          case 5:
            *(a1 + 40) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_51:
            v2 = *(this + 1) + 4;
            goto LABEL_52;
          case 6:
            *(a1 + 40) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_38:
            v2 = *(this + 1) + 8;
LABEL_52:
            *(this + 1) = v2;
            goto LABEL_53;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 40) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_38;
          case 2:
            *(a1 + 40) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_51;
          case 3:
            *(a1 + 40) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_49;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_51;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_53:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_57:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B47F488(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 40);
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

  else if ((*(result + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 40) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B47F568(uint64_t result)
{
  *result = &unk_1F0E2C328;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_19B47F594(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B47F5CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "measSource");
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

  v7 = *(a1 + 28);
  PB::TextFormatter::format(this, "state");
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
  PB::TextFormatter::format(this, "stateProbability", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B47F690(uint64_t a1, PB::Reader *this)
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
            goto LABEL_81;
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
          *(a1 + 32) |= 4u;
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
                goto LABEL_76;
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
                goto LABEL_75;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_75:
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

LABEL_76:
          *(a1 + 24) = v35;
          goto LABEL_77;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_77;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_66;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_66:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_77;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 8u;
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
                goto LABEL_72;
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
                goto LABEL_71;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
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

LABEL_72:
          *(a1 + 28) = v27;
          goto LABEL_77;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_77:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_81:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B47FAB0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = *(v3 + 24);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 32) & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v3 + 8);

  return PB::Writer::write(this, v7);
}

double sub_19B47FB58(uint64_t a1)
{
  *a1 = &unk_1F0E2DA90;
  *(a1 + 152) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

void sub_19B47FBA0(void **a1)
{
  *a1 = &unk_1F0E2DA90;
  v2 = a1 + 3;
  v3 = a1 + 15;
  sub_19B4C4D80(&v3);
  v3 = a1 + 12;
  sub_19B4C4D80(&v3);
  v3 = a1 + 9;
  sub_19B4C4D80(&v3);
  v3 = a1 + 6;
  sub_19B4C4D80(&v3);
  v3 = v2;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
}

void sub_19B47FC40(void **a1)
{
  sub_19B47FBA0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B47FC78(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 152);
  if (v5)
  {
    PB::TextFormatter::format(this, "lifespan", *(a1 + 8));
    v5 = *(a1 + 152);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "machTime", *(a1 + 16));
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "satInfoBeidou");
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, this, "satInfoGalileo");
  }

  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, this, "satInfoGlonass");
  }

  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, this, "satInfoGps");
  }

  v18 = *(a1 + 120);
  v19 = *(a1 + 128);
  while (v18 != v19)
  {
    v20 = *v18++;
    (*(*v20 + 32))(v20, this, "satInfoQzss");
  }

  if ((*(a1 + 152) & 4) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 144));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B47FE9C(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            *(a1 + 152) |= 2u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
            {
LABEL_46:
              *(this + 24) = 1;
              goto LABEL_51;
            }

            *(a1 + 16) = *(*this + v25);
            goto LABEL_50;
          }

          if (v22 == 8)
          {
            *(a1 + 152) |= 1u;
            v23 = *(this + 1);
            if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
            {
              goto LABEL_46;
            }

            *(a1 + 8) = *(*this + v23);
            goto LABEL_50;
          }
        }

        else
        {
          if (v22 == 5)
          {
            sub_19B4801C0();
          }

          if (v22 == 6)
          {
            sub_19B4801C0();
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          sub_19B4801C0();
        }

        if (v22 == 4)
        {
          sub_19B4801C0();
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 152) |= 4u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
            goto LABEL_46;
          }

          *(a1 + 144) = *(*this + v24);
LABEL_50:
          *(this + 1) += 8;
          goto LABEL_51;
        }

        if (v22 == 2)
        {
          sub_19B4801C0();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v27 = 0;
        return v27 & 1;
      }

LABEL_51:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t sub_19B48030C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 152) & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 144));
  }

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = *(v3 + 120);
  v11 = *(v3 + 128);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::writeSubmessage(this, v12);
  }

  v13 = *(v3 + 48);
  v14 = *(v3 + 56);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::writeSubmessage(this, v15);
  }

  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::writeSubmessage(this, v18);
  }

  v19 = *(v3 + 152);
  if ((v19 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 16));
    v19 = *(v3 + 152);
  }

  if (v19)
  {
    v20 = *(v3 + 8);

    return PB::Writer::write(this, v20);
  }

  return result;
}

uint64_t sub_19B48043C(uint64_t result)
{
  *result = &unk_1F0E2E890;
  *(result + 32) = 0;
  return result;
}

void sub_19B480464(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48049C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "gyroMaxMean", *(a1 + 16));
    v5 = *(a1 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "magnitudeDiffUnity", *(a1 + 20));
  v5 = *(a1 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "magnitudeVar", *(a1 + 24));
  v5 = *(a1 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "maxAccelStdAxis", *(a1 + 28));
  if (*(a1 + 32))
  {
LABEL_6:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B480580(uint64_t a1, PB::Reader *this)
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
            goto LABEL_52;
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
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_41;
          }

LABEL_44:
          *(this + 24) = 1;
          goto LABEL_47;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 0x10u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 28) = *(*this + v2);
            goto LABEL_40;
          }

          goto LABEL_44;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 32) |= 4u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
            {
              *(a1 + 20) = *(*this + v2);
              goto LABEL_40;
            }

            goto LABEL_44;
          case 4:
            *(a1 + 32) |= 2u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
            {
              *(a1 + 16) = *(*this + v2);
              goto LABEL_40;
            }

            goto LABEL_44;
          case 5:
            *(a1 + 32) |= 8u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
            {
              *(a1 + 24) = *(*this + v2);
LABEL_40:
              v2 = *(this + 1) + 4;
LABEL_41:
              *(this + 1) = v2;
              goto LABEL_47;
            }

            goto LABEL_44;
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

LABEL_52:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B480850(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 32) & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B480914(uint64_t result)
{
  *result = &unk_1F0E2EDD0;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_19B480938(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2EDD0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4809B8(PB::Base *a1)
{
  sub_19B480938(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4809F0(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_19B480A88(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B480CFC(uint64_t result, PB::Writer *this)
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

void sub_19B480D68(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B480DA0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "location");
    v5 = *(a1 + 44);
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

  v7 = *(a1 + 20);
  PB::TextFormatter::format(this, "sampleNumMod3");
  v5 = *(a1 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "subType");
  v5 = *(a1 + 44);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a1 + 40);
  PB::TextFormatter::format(this, "triggerEnabled");
  v5 = *(a1 + 44);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a1 + 41);
  PB::TextFormatter::format(this, "triggerOn");
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "x", *(a1 + 28));
  v5 = *(a1 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "y", *(a1 + 32));
  if ((*(a1 + 44) & 0x40) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "z", *(a1 + 36));
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B480F04(uint64_t a1, PB::Reader *this)
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
            goto LABEL_123;
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
            *(a1 + 44) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_59:
              *(this + 24) = 1;
              goto LABEL_119;
            }

            *(a1 + 32) = *(*this + v2);
LABEL_102:
            v2 = *(this + 1) + 4;
LABEL_103:
            *(this + 1) = v2;
            goto LABEL_119;
          }

          if (v22 == 4)
          {
            *(a1 + 44) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_102;
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
              goto LABEL_59;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_103;
          }

          if (v22 == 2)
          {
            *(a1 + 44) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_102;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 44) |= 8u;
          v41 = *(this + 1);
          v2 = *(this + 2);
          v42 = *this;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
          {
            v58 = 0;
            v59 = 0;
            v45 = 0;
            if (v2 <= v41)
            {
              v2 = *(this + 1);
            }

            v60 = v2 - v41;
            v61 = (v42 + v41);
            v62 = v41 + 1;
            while (1)
            {
              if (!v60)
              {
                LODWORD(v45) = 0;
                *(this + 24) = 1;
                goto LABEL_114;
              }

              v63 = v62;
              v64 = *v61;
              *(this + 1) = v63;
              v45 |= (v64 & 0x7F) << v58;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              --v60;
              ++v61;
              v62 = v63 + 1;
              v14 = v59++ > 8;
              if (v14)
              {
                LODWORD(v45) = 0;
                goto LABEL_113;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v45) = 0;
            }

LABEL_113:
            v2 = v63;
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

LABEL_114:
          *(a1 + 24) = v45;
          goto LABEL_119;
        }

        if (v22 == 6)
        {
          *(a1 + 44) |= 4u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v51 = 0;
            v52 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v53 = v2 - v31;
            v54 = (v32 + v31);
            v55 = v31 + 1;
            while (1)
            {
              if (!v53)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_110;
              }

              v56 = v55;
              v57 = *v54;
              *(this + 1) = v56;
              v35 |= (v57 & 0x7F) << v51;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              --v53;
              ++v54;
              v55 = v56 + 1;
              v14 = v52++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_109;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_109:
            v2 = v56;
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

LABEL_110:
          *(a1 + 20) = v35;
          goto LABEL_119;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 44) |= 0x80u;
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

            *(a1 + 40) = v40;
            goto LABEL_119;
          case 8:
            *(a1 + 44) |= 0x100u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v50 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v49 = *(*this + v2++);
              *(this + 1) = v2;
              v50 = v49 != 0;
            }

            *(a1 + 41) = v50;
            goto LABEL_119;
          case 9:
            *(a1 + 44) |= 2u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v65 = 0;
              v66 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v67 = v2 - v23;
              v68 = (v24 + v23);
              v69 = v23 + 1;
              while (1)
              {
                if (!v67)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_118;
                }

                v70 = v69;
                v71 = *v68;
                *(this + 1) = v70;
                v27 |= (v71 & 0x7F) << v65;
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
                  LODWORD(v27) = 0;
                  goto LABEL_117;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_117:
              v2 = v70;
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

LABEL_118:
            *(a1 + 16) = v27;
            goto LABEL_119;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v72 = 0;
        return v72 & 1;
      }

      v2 = *(this + 1);
LABEL_119:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_123:
  v72 = v4 ^ 1;
  return v72 & 1;
}

uint64_t sub_19B481560(uint64_t result, PB::Writer *this)
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
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v8 = *(v3 + 41);
    result = PB::Writer::write(this);
    if ((*(v3 + 44) & 2) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  v7 = *(v3 + 40);
  result = PB::Writer::write(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_19:
  v9 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B481694(uint64_t result)
{
  *result = &unk_1F0E2E4A0;
  *(result + 36) = 0;
  return result;
}

void sub_19B4816BC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4816F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 36);
  if (v5)
  {
    PB::TextFormatter::format(this, "biasX", *(a1 + 8));
    v5 = *(a1 + 36);
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

  else if ((*(a1 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "biasY", *(a1 + 12));
  v5 = *(a1 + 36);
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
  PB::TextFormatter::format(this, "biasZ", *(a1 + 16));
  v5 = *(a1 + 36);
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
  v6 = *(a1 + 20);
  PB::TextFormatter::format(this, "doingBiasEstimation");
  v5 = *(a1 + 36);
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
  PB::TextFormatter::format(this, "varianceX", *(a1 + 24));
  v5 = *(a1 + 36);
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
  PB::TextFormatter::format(this, "varianceY", *(a1 + 28));
  if ((*(a1 + 36) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "varianceZ", *(a1 + 32));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B481818(uint64_t a1, PB::Reader *this)
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
            goto LABEL_77;
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
            *(a1 + 36) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_57:
              *(this + 24) = 1;
              goto LABEL_73;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_67;
          case 2:
            *(a1 + 36) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 12) = *(*this + v2);
            goto LABEL_67;
          case 3:
            *(a1 + 36) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_67;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 36) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_67;
        }

        if (v22 == 7)
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
                goto LABEL_72;
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
                goto LABEL_71;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
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

LABEL_72:
          *(a1 + 20) = v27;
          goto LABEL_73;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 36) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_67;
        }

        if (v22 == 5)
        {
          *(a1 + 36) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_67:
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
          goto LABEL_73;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_73:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_77:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B481C34(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 12));
  v4 = *(v3 + 36);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 36);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 36) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 36);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 20);

  return PB::Writer::writeVarInt(this);
}

double sub_19B481D30(uint64_t a1)
{
  *a1 = &unk_1F0E2E468;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_19B481D70(PB::Base *this)
{
  *this = &unk_1F0E2E468;
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

void sub_19B481E04(PB::Base *a1)
{
  sub_19B481D70(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B481E3C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 120) & 2) != 0)
  {
    PB::TextFormatter::format(this, "accelRotationRate", *(a1 + 112));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accelVariance", v7);
  }

  if ((*(a1 + 120) & 4) != 0)
  {
    v8 = *(a1 + 116);
    PB::TextFormatter::format(this, "allowRelaxedGyroMean");
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "gyroMean", v11);
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(this, "gyroVariance", v14);
  }

  if ((*(a1 + 120) & 8) != 0)
  {
    v15 = *(a1 + 117);
    PB::TextFormatter::format(this, "stillOnAll");
  }

  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(this, "temperatureBias", v18);
  }

  if (*(a1 + 120))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 104));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B481FB0(uint64_t a1, PB::Reader *this)
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
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_195;
              }

              v83 = *(this + 1);
              v84 = *(this + 2);
              while (v83 < v84 && (*(this + 24) & 1) == 0)
              {
                v86 = *(a1 + 16);
                v85 = *(a1 + 24);
                if (v86 >= v85)
                {
                  v88 = *(a1 + 8);
                  v89 = v86 - v88;
                  v90 = (v86 - v88) >> 2;
                  v91 = v90 + 1;
                  if ((v90 + 1) >> 62)
                  {
                    goto LABEL_196;
                  }

                  v92 = v85 - v88;
                  if (v92 >> 1 > v91)
                  {
                    v91 = v92 >> 1;
                  }

                  if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v93 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v93 = v91;
                  }

                  if (v93)
                  {
                    sub_19B4C4FA8(a1 + 8, v93);
                  }

                  v94 = (v86 - v88) >> 2;
                  v95 = (4 * v90);
                  v96 = (4 * v90 - 4 * v94);
                  *v95 = 0;
                  v87 = v95 + 1;
                  memcpy(v96, v88, v89);
                  v97 = *(a1 + 8);
                  *(a1 + 8) = v96;
                  *(a1 + 16) = v87;
                  *(a1 + 24) = 0;
                  if (v97)
                  {
                    operator delete(v97);
                  }
                }

                else
                {
                  *v86 = 0;
                  v87 = v86 + 4;
                }

                *(a1 + 16) = v87;
                v98 = *(this + 1);
                if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(this + 2))
                {
LABEL_125:
                  *(this + 24) = 1;
                  goto LABEL_126;
                }

                *(v87 - 1) = *(*this + v98);
                v84 = *(this + 2);
                v83 = *(this + 1) + 4;
                *(this + 1) = v83;
              }

              goto LABEL_126;
            }

            v103 = *(a1 + 16);
            v102 = *(a1 + 24);
            if (v103 >= v102)
            {
              v114 = *(a1 + 8);
              v115 = v103 - v114;
              v116 = (v103 - v114) >> 2;
              v117 = v116 + 1;
              if ((v116 + 1) >> 62)
              {
                goto LABEL_196;
              }

              v118 = v102 - v114;
              if (v118 >> 1 > v117)
              {
                v117 = v118 >> 1;
              }

              if (v118 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v119 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v119 = v117;
              }

              if (v119)
              {
                sub_19B4C4FA8(a1 + 8, v119);
              }

              v136 = (v103 - v114) >> 2;
              v137 = (4 * v116);
              v138 = (4 * v116 - 4 * v136);
              *v137 = 0;
              v101 = v137 + 1;
              memcpy(v138, v114, v115);
              v139 = *(a1 + 8);
              *(a1 + 8) = v138;
              *(a1 + 16) = v101;
              *(a1 + 24) = 0;
              if (v139)
              {
                operator delete(v139);
              }
            }

            else
            {
              *v103 = 0;
              v101 = v103 + 4;
            }

            *(a1 + 16) = v101;
            goto LABEL_183;
          }

          if (v23 == 8)
          {
            *(a1 + 120) |= 2u;
            v60 = *(this + 1);
            if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
            {
LABEL_185:
              *(this + 24) = 1;
              goto LABEL_189;
            }

            *(a1 + 112) = *(*this + v60);
LABEL_187:
            v62 = *(this + 1) + 4;
LABEL_188:
            *(this + 1) = v62;
            goto LABEL_189;
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
                goto LABEL_195;
              }

              v63 = *(this + 1);
              v64 = *(this + 2);
              while (v63 < v64 && (*(this + 24) & 1) == 0)
              {
                v66 = *(a1 + 64);
                v65 = *(a1 + 72);
                if (v66 >= v65)
                {
                  v68 = *(a1 + 56);
                  v69 = v66 - v68;
                  v70 = (v66 - v68) >> 2;
                  v71 = v70 + 1;
                  if ((v70 + 1) >> 62)
                  {
                    goto LABEL_196;
                  }

                  v72 = v65 - v68;
                  if (v72 >> 1 > v71)
                  {
                    v71 = v72 >> 1;
                  }

                  if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v73 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v73 = v71;
                  }

                  if (v73)
                  {
                    sub_19B4C4FA8(a1 + 56, v73);
                  }

                  v74 = (v66 - v68) >> 2;
                  v75 = (4 * v70);
                  v76 = (4 * v70 - 4 * v74);
                  *v75 = 0;
                  v67 = v75 + 1;
                  memcpy(v76, v68, v69);
                  v77 = *(a1 + 56);
                  *(a1 + 56) = v76;
                  *(a1 + 64) = v67;
                  *(a1 + 72) = 0;
                  if (v77)
                  {
                    operator delete(v77);
                  }
                }

                else
                {
                  *v66 = 0;
                  v67 = v66 + 4;
                }

                *(a1 + 64) = v67;
                v78 = *(this + 1);
                if (v78 > 0xFFFFFFFFFFFFFFFBLL || v78 + 4 > *(this + 2))
                {
                  goto LABEL_125;
                }

                *(v67 - 1) = *(*this + v78);
                v64 = *(this + 2);
                v63 = *(this + 1) + 4;
                *(this + 1) = v63;
              }

              goto LABEL_126;
            }

            v100 = *(a1 + 64);
            v99 = *(a1 + 72);
            if (v100 >= v99)
            {
              v108 = *(a1 + 56);
              v109 = v100 - v108;
              v110 = (v100 - v108) >> 2;
              v111 = v110 + 1;
              if ((v110 + 1) >> 62)
              {
                goto LABEL_196;
              }

              v112 = v99 - v108;
              if (v112 >> 1 > v111)
              {
                v111 = v112 >> 1;
              }

              if (v112 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v113 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v113 = v111;
              }

              if (v113)
              {
                sub_19B4C4FA8(a1 + 56, v113);
              }

              v132 = (v100 - v108) >> 2;
              v133 = (4 * v110);
              v134 = (4 * v110 - 4 * v132);
              *v133 = 0;
              v101 = v133 + 1;
              memcpy(v134, v108, v109);
              v135 = *(a1 + 56);
              *(a1 + 56) = v134;
              *(a1 + 64) = v101;
              *(a1 + 72) = 0;
              if (v135)
              {
                operator delete(v135);
              }
            }

            else
            {
              *v100 = 0;
              v101 = v100 + 4;
            }

            *(a1 + 64) = v101;
LABEL_183:
            v148 = *(this + 1);
            if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(this + 2))
            {
              goto LABEL_185;
            }

            *(v101 - 1) = *(*this + v148);
            goto LABEL_187;
          }

          if (v23 == 6)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_195;
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
                  v35 = (v31 - v33) >> 2;
                  v36 = v35 + 1;
                  if ((v35 + 1) >> 62)
                  {
                    goto LABEL_196;
                  }

                  v37 = v30 - v33;
                  if (v37 >> 1 > v36)
                  {
                    v36 = v37 >> 1;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v38 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    sub_19B4C4FA8(a1 + 80, v38);
                  }

                  v39 = (v31 - v33) >> 2;
                  v40 = (4 * v35);
                  v41 = (4 * v35 - 4 * v39);
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
                  v32 = v31 + 4;
                }

                *(a1 + 88) = v32;
                v43 = *(this + 1);
                if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(this + 2))
                {
                  goto LABEL_125;
                }

                *(v32 - 1) = *(*this + v43);
                v29 = *(this + 2);
                v28 = *(this + 1) + 4;
                *(this + 1) = v28;
              }

LABEL_126:
              PB::Reader::recallMark();
              goto LABEL_189;
            }

            v105 = *(a1 + 88);
            v104 = *(a1 + 96);
            if (v105 >= v104)
            {
              v120 = *(a1 + 80);
              v121 = v105 - v120;
              v122 = (v105 - v120) >> 2;
              v123 = v122 + 1;
              if ((v122 + 1) >> 62)
              {
                goto LABEL_196;
              }

              v124 = v104 - v120;
              if (v124 >> 1 > v123)
              {
                v123 = v124 >> 1;
              }

              if (v124 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v125 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v125 = v123;
              }

              if (v125)
              {
                sub_19B4C4FA8(a1 + 80, v125);
              }

              v140 = (v105 - v120) >> 2;
              v141 = (4 * v122);
              v142 = (4 * v122 - 4 * v140);
              *v141 = 0;
              v101 = v141 + 1;
              memcpy(v142, v120, v121);
              v143 = *(a1 + 80);
              *(a1 + 80) = v142;
              *(a1 + 88) = v101;
              *(a1 + 96) = 0;
              if (v143)
              {
                operator delete(v143);
              }
            }

            else
            {
              *v105 = 0;
              v101 = v105 + 4;
            }

            *(a1 + 88) = v101;
            goto LABEL_183;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          *(a1 + 120) |= 4u;
          v79 = *(this + 1);
          if (v79 >= *(this + 2))
          {
            v82 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v80 = v79 + 1;
            v81 = *(*this + v79);
            *(this + 1) = v80;
            v82 = v81 != 0;
          }

          *(a1 + 116) = v82;
          goto LABEL_189;
        }

        if (v23 == 4)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_195;
            }

            v44 = *(this + 1);
            v45 = *(this + 2);
            while (v44 < v45 && (*(this + 24) & 1) == 0)
            {
              v47 = *(a1 + 40);
              v46 = *(a1 + 48);
              if (v47 >= v46)
              {
                v49 = *(a1 + 32);
                v50 = v47 - v49;
                v51 = (v47 - v49) >> 2;
                v52 = v51 + 1;
                if ((v51 + 1) >> 62)
                {
                  goto LABEL_196;
                }

                v53 = v46 - v49;
                if (v53 >> 1 > v52)
                {
                  v52 = v53 >> 1;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v54 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v54 = v52;
                }

                if (v54)
                {
                  sub_19B4C4FA8(a1 + 32, v54);
                }

                v55 = (v47 - v49) >> 2;
                v56 = (4 * v51);
                v57 = (4 * v51 - 4 * v55);
                *v56 = 0;
                v48 = v56 + 1;
                memcpy(v57, v49, v50);
                v58 = *(a1 + 32);
                *(a1 + 32) = v57;
                *(a1 + 40) = v48;
                *(a1 + 48) = 0;
                if (v58)
                {
                  operator delete(v58);
                }
              }

              else
              {
                *v47 = 0;
                v48 = v47 + 4;
              }

              *(a1 + 40) = v48;
              v59 = *(this + 1);
              if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
              {
                goto LABEL_125;
              }

              *(v48 - 1) = *(*this + v59);
              v45 = *(this + 2);
              v44 = *(this + 1) + 4;
              *(this + 1) = v44;
            }

            goto LABEL_126;
          }

          v107 = *(a1 + 40);
          v106 = *(a1 + 48);
          if (v107 >= v106)
          {
            v126 = *(a1 + 32);
            v127 = v107 - v126;
            v128 = (v107 - v126) >> 2;
            v129 = v128 + 1;
            if ((v128 + 1) >> 62)
            {
LABEL_196:
              sub_19B5BE690();
            }

            v130 = v106 - v126;
            if (v130 >> 1 > v129)
            {
              v129 = v130 >> 1;
            }

            if (v130 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v131 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v131 = v129;
            }

            if (v131)
            {
              sub_19B4C4FA8(a1 + 32, v131);
            }

            v144 = (v107 - v126) >> 2;
            v145 = (4 * v128);
            v146 = (4 * v128 - 4 * v144);
            *v145 = 0;
            v101 = v145 + 1;
            memcpy(v146, v126, v127);
            v147 = *(a1 + 32);
            *(a1 + 32) = v146;
            *(a1 + 40) = v101;
            *(a1 + 48) = 0;
            if (v147)
            {
              operator delete(v147);
            }
          }

          else
          {
            *v107 = 0;
            v101 = v107 + 4;
          }

          *(a1 + 40) = v101;
          goto LABEL_183;
        }
      }

      else
      {
        if (v23 == 1)
        {
          *(a1 + 120) |= 1u;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(this + 2))
          {
            goto LABEL_185;
          }

          *(a1 + 104) = *(*this + v61);
          v62 = *(this + 1) + 8;
          goto LABEL_188;
        }

        if (v23 == 2)
        {
          *(a1 + 120) |= 8u;
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

          *(a1 + 117) = v27;
          goto LABEL_189;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_195:
        v149 = 0;
        return v149 & 1;
      }

LABEL_189:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v149 = v4 ^ 1;
  return v149 & 1;
}

uint64_t sub_19B482984(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 120);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 120) & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    v18 = *(v3 + 117);
    result = PB::Writer::write(this);
    if ((*(v3 + 120) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  result = PB::Writer::write(this, *(result + 104));
  v4 = *(v3 + 120);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v4 & 4) != 0)
  {
LABEL_4:
    v5 = *(v3 + 116);
    result = PB::Writer::write(this);
  }

LABEL_5:
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
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

  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  while (v12 != v13)
  {
    v14 = *v12++;
    result = PB::Writer::write(this, v14);
  }

  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  while (v15 != v16)
  {
    v17 = *v15++;
    result = PB::Writer::write(this, v17);
  }

  if ((*(v3 + 120) & 2) != 0)
  {
    v19 = *(v3 + 112);

    return PB::Writer::write(this, v19);
  }

  return result;
}

uint64_t sub_19B482AB8(uint64_t result)
{
  *result = &unk_1F0E2E858;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_19B482ADC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2E858;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B482B5C(PB::Base *a1)
{
  sub_19B482ADC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B482B94(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 20))
  {
    v5 = *(a1 + 16);
    PB::TextFormatter::format(this, "axis");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "correction");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B482C2C(uint64_t a1, PB::Reader *this)
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
        *(a1 + 20) |= 1u;
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
        *(a1 + 16) = v27;
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

uint64_t sub_19B482F4C(uint64_t result, PB::Writer *this)
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

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

double sub_19B482FB4(uint64_t a1)
{
  *a1 = &unk_1F0E385C8;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B482FE8(PB::Base *this)
{
  *this = &unk_1F0E385C8;
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

void sub_19B48305C(PB::Base *a1)
{
  sub_19B482FE8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B483094(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "covUT", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "est", v10);
  }

  v11 = *(a1 + 80);
  if ((v11 & 8) != 0)
  {
    v12 = *(a1 + 76);
    PB::TextFormatter::format(this, "isCandidate");
    v11 = *(a1 + 80);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 80) & 4) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a1 + 72);
  PB::TextFormatter::format(this, "numSamplesInAverage");
  v11 = *(a1 + 80);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PB::TextFormatter::format(this, "temperature", *(a1 + 56));
  if ((*(a1 + 80) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  }

LABEL_10:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4831C0(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 3)
      {
        if (v23 == 4)
        {
          *(a1 + 80) |= 8u;
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

          *(a1 + 76) = v45;
          goto LABEL_133;
        }

        if (v23 == 5)
        {
          *(a1 + 80) |= 4u;
          v63 = *(this + 1);
          v62 = *(this + 2);
          v64 = *this;
          if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
          {
            v71 = 0;
            v72 = 0;
            v67 = 0;
            v17 = v62 >= v63;
            v73 = v62 - v63;
            if (!v17)
            {
              v73 = 0;
            }

            v74 = (v64 + v63);
            v75 = v63 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v67) = 0;
                *(this + 24) = 1;
                goto LABEL_121;
              }

              v76 = *v74;
              *(this + 1) = v75;
              v67 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              --v73;
              ++v74;
              ++v75;
              v14 = v72++ > 8;
              if (v14)
              {
LABEL_95:
                LODWORD(v67) = 0;
                goto LABEL_121;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v67) = 0;
            }
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
                goto LABEL_95;
              }
            }
          }

LABEL_121:
          *(a1 + 72) = v67;
          goto LABEL_133;
        }

        if (v23 != 6)
        {
LABEL_57:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_133;
        }

        *(a1 + 80) |= 1u;
        v40 = *(this + 1);
        if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
        {
          goto LABEL_130;
        }

        *(a1 + 56) = *(*this + v40);
      }

      else if (v23 == 1)
      {
        *(a1 + 80) |= 2u;
        v41 = *(this + 1);
        if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
        {
          goto LABEL_130;
        }

        *(a1 + 64) = *(*this + v41);
      }

      else
      {
        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_139:
              v103 = 0;
              return v103 & 1;
            }

            v46 = *(this + 1);
            v47 = *(this + 2);
            while (v46 < v47 && (*(this + 24) & 1) == 0)
            {
              v49 = *(a1 + 40);
              v48 = *(a1 + 48);
              if (v49 >= v48)
              {
                v51 = *(a1 + 32);
                v52 = v49 - v51;
                v53 = (v49 - v51) >> 3;
                v54 = v53 + 1;
                if ((v53 + 1) >> 61)
                {
                  goto LABEL_140;
                }

                v55 = v48 - v51;
                if (v55 >> 2 > v54)
                {
                  v54 = v55 >> 2;
                }

                if (v55 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v56 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v56 = v54;
                }

                if (v56)
                {
                  sub_19B4C50F0(a1 + 32, v56);
                }

                v57 = (v49 - v51) >> 3;
                v58 = (8 * v53);
                v59 = (8 * v53 - 8 * v57);
                *v58 = 0;
                v50 = v58 + 1;
                memcpy(v59, v51, v52);
                v60 = *(a1 + 32);
                *(a1 + 32) = v59;
                *(a1 + 40) = v50;
                *(a1 + 48) = 0;
                if (v60)
                {
                  operator delete(v60);
                }
              }

              else
              {
                *v49 = 0;
                v50 = v49 + 8;
              }

              *(a1 + 40) = v50;
              v61 = *(this + 1);
              if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(this + 2))
              {
LABEL_100:
                *(this + 24) = 1;
                goto LABEL_101;
              }

              *(v50 - 1) = *(*this + v61);
              v47 = *(this + 2);
              v46 = *(this + 1) + 8;
              *(this + 1) = v46;
            }

            goto LABEL_101;
          }

          v81 = *(a1 + 40);
          v80 = *(a1 + 48);
          if (v81 >= v80)
          {
            v88 = *(a1 + 32);
            v89 = v81 - v88;
            v90 = (v81 - v88) >> 3;
            v91 = v90 + 1;
            if ((v90 + 1) >> 61)
            {
LABEL_140:
              sub_19B5BE690();
            }

            v92 = v80 - v88;
            if (v92 >> 2 > v91)
            {
              v91 = v92 >> 2;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFF8)
            {
              v93 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              sub_19B4C50F0(a1 + 32, v93);
            }

            v98 = (v81 - v88) >> 3;
            v99 = (8 * v90);
            v100 = (8 * v90 - 8 * v98);
            *v99 = 0;
            v79 = v99 + 1;
            memcpy(v100, v88, v89);
            v101 = *(a1 + 32);
            *(a1 + 32) = v100;
            *(a1 + 40) = v79;
            *(a1 + 48) = 0;
            if (v101)
            {
              operator delete(v101);
            }
          }

          else
          {
            *v81 = 0;
            v79 = v81 + 8;
          }

          *(a1 + 40) = v79;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_57;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_139;
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
                  goto LABEL_140;
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
                goto LABEL_100;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 8;
              *(this + 1) = v24;
            }

LABEL_101:
            PB::Reader::recallMark();
            goto LABEL_133;
          }

          v78 = *(a1 + 16);
          v77 = *(a1 + 24);
          if (v78 >= v77)
          {
            v82 = *(a1 + 8);
            v83 = v78 - v82;
            v84 = (v78 - v82) >> 3;
            v85 = v84 + 1;
            if ((v84 + 1) >> 61)
            {
              goto LABEL_140;
            }

            v86 = v77 - v82;
            if (v86 >> 2 > v85)
            {
              v85 = v86 >> 2;
            }

            if (v86 >= 0x7FFFFFFFFFFFFFF8)
            {
              v87 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v87 = v85;
            }

            if (v87)
            {
              sub_19B4C50F0(a1 + 8, v87);
            }

            v94 = (v78 - v82) >> 3;
            v95 = (8 * v84);
            v96 = (8 * v84 - 8 * v94);
            *v95 = 0;
            v79 = v95 + 1;
            memcpy(v96, v82, v83);
            v97 = *(a1 + 8);
            *(a1 + 8) = v96;
            *(a1 + 16) = v79;
            *(a1 + 24) = 0;
            if (v97)
            {
              operator delete(v97);
            }
          }

          else
          {
            *v78 = 0;
            v79 = v78 + 8;
          }

          *(a1 + 16) = v79;
        }

        v102 = *(this + 1);
        if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(this + 2))
        {
LABEL_130:
          *(this + 24) = 1;
          goto LABEL_133;
        }

        *(v79 - 1) = *(*this + v102);
      }

      *(this + 1) += 8;
LABEL_133:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v103 = v4 ^ 1;
  return v103 & 1;
}

uint64_t sub_19B4838C8(uint64_t result, PB::Writer *this)
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

double sub_19B4839B8(uint64_t a1)
{
  *a1 = &unk_1F0E2DA58;
  *(a1 + 92) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_19B4839F4(PB::Base *this)
{
  *this = &unk_1F0E2DA58;
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

void sub_19B483A78(PB::Base *a1)
{
  sub_19B4839F4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B483AB0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "dynamicBiasEstimate", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "estimateErrorMetric", v10);
  }

  if ((*(a1 + 92) & 2) != 0)
  {
    PB::TextFormatter::format(this, "rawGyroTemperature", *(a1 + 88));
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "subFitError", v13);
  }

  if (*(a1 + 92))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 80));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B483BC0(uint64_t a1, PB::Reader *this)
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
          *(a1 + 92) |= 1u;
          v73 = *(this + 1);
          if (v73 > 0xFFFFFFFFFFFFFFF7 || v73 + 8 > *(this + 2))
          {
LABEL_139:
            *(this + 24) = 1;
            goto LABEL_143;
          }

          *(a1 + 80) = *(*this + v73);
          v74 = *(this + 1) + 8;
          goto LABEL_142;
        }

        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_149;
            }

            v25 = *(this + 1);
            v26 = *(this + 2);
            while (v25 < v26 && (*(this + 24) & 1) == 0)
            {
              v28 = *(a1 + 16);
              v27 = *(a1 + 24);
              if (v28 >= v27)
              {
                v30 = *(a1 + 8);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  goto LABEL_150;
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
                  sub_19B4C4FA8(a1 + 8, v35);
                }

                v36 = (v28 - v30) >> 2;
                v37 = (4 * v32);
                v38 = (4 * v32 - 4 * v36);
                *v37 = 0;
                v29 = v37 + 1;
                memcpy(v38, v30, v31);
                v39 = *(a1 + 8);
                *(a1 + 8) = v38;
                *(a1 + 16) = v29;
                *(a1 + 24) = 0;
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

              *(a1 + 16) = v29;
              v40 = *(this + 1);
              if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
              {
LABEL_102:
                *(this + 24) = 1;
                break;
              }

              *(v29 - 1) = *(*this + v40);
              v26 = *(this + 2);
              v25 = *(this + 1) + 4;
              *(this + 1) = v25;
            }

LABEL_103:
            PB::Reader::recallMark();
            goto LABEL_143;
          }

          v81 = *(a1 + 16);
          v80 = *(a1 + 24);
          if (v81 >= v80)
          {
            v94 = *(a1 + 8);
            v95 = v81 - v94;
            v96 = (v81 - v94) >> 2;
            v97 = v96 + 1;
            if ((v96 + 1) >> 62)
            {
LABEL_150:
              sub_19B5BE690();
            }

            v98 = v80 - v94;
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
              sub_19B4C4FA8(a1 + 8, v99);
            }

            v108 = (v81 - v94) >> 2;
            v109 = (4 * v96);
            v110 = (4 * v96 - 4 * v108);
            *v109 = 0;
            v77 = v109 + 1;
            memcpy(v110, v94, v95);
            v111 = *(a1 + 8);
            *(a1 + 8) = v110;
            *(a1 + 16) = v77;
            *(a1 + 24) = 0;
            if (v111)
            {
              operator delete(v111);
            }
          }

          else
          {
            *v81 = 0;
            v77 = v81 + 4;
          }

          *(a1 + 16) = v77;
          goto LABEL_137;
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
                goto LABEL_149;
              }

              v41 = *(this + 1);
              v42 = *(this + 2);
              while (v41 < v42 && (*(this + 24) & 1) == 0)
              {
                v44 = *(a1 + 40);
                v43 = *(a1 + 48);
                if (v44 >= v43)
                {
                  v46 = *(a1 + 32);
                  v47 = v44 - v46;
                  v48 = (v44 - v46) >> 2;
                  v49 = v48 + 1;
                  if ((v48 + 1) >> 62)
                  {
                    goto LABEL_150;
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
                    sub_19B4C4FA8(a1 + 32, v51);
                  }

                  v52 = (v44 - v46) >> 2;
                  v53 = (4 * v48);
                  v54 = (4 * v48 - 4 * v52);
                  *v53 = 0;
                  v45 = v53 + 1;
                  memcpy(v54, v46, v47);
                  v55 = *(a1 + 32);
                  *(a1 + 32) = v54;
                  *(a1 + 40) = v45;
                  *(a1 + 48) = 0;
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

                *(a1 + 40) = v45;
                v56 = *(this + 1);
                if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
                {
                  goto LABEL_102;
                }

                *(v45 - 1) = *(*this + v56);
                v42 = *(this + 2);
                v41 = *(this + 1) + 4;
                *(this + 1) = v41;
              }

              goto LABEL_103;
            }

            v76 = *(a1 + 40);
            v75 = *(a1 + 48);
            if (v76 >= v75)
            {
              v82 = *(a1 + 32);
              v83 = v76 - v82;
              v84 = (v76 - v82) >> 2;
              v85 = v84 + 1;
              if ((v84 + 1) >> 62)
              {
                goto LABEL_150;
              }

              v86 = v75 - v82;
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

              v100 = (v76 - v82) >> 2;
              v101 = (4 * v84);
              v102 = (4 * v84 - 4 * v100);
              *v101 = 0;
              v77 = v101 + 1;
              memcpy(v102, v82, v83);
              v103 = *(a1 + 32);
              *(a1 + 32) = v102;
              *(a1 + 40) = v77;
              *(a1 + 48) = 0;
              if (v103)
              {
                operator delete(v103);
              }
            }

            else
            {
              *v76 = 0;
              v77 = v76 + 4;
            }

            *(a1 + 40) = v77;
LABEL_137:
            v112 = *(this + 1);
            if (v112 > 0xFFFFFFFFFFFFFFFBLL || v112 + 4 > *(this + 2))
            {
              goto LABEL_139;
            }

            *(v77 - 1) = *(*this + v112);
LABEL_141:
            v74 = *(this + 1) + 4;
LABEL_142:
            *(this + 1) = v74;
            goto LABEL_143;
          case 4:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_149;
              }

              v57 = *(this + 1);
              v58 = *(this + 2);
              while (v57 < v58 && (*(this + 24) & 1) == 0)
              {
                v60 = *(a1 + 64);
                v59 = *(a1 + 72);
                if (v60 >= v59)
                {
                  v62 = *(a1 + 56);
                  v63 = v60 - v62;
                  v64 = (v60 - v62) >> 2;
                  v65 = v64 + 1;
                  if ((v64 + 1) >> 62)
                  {
                    goto LABEL_150;
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
                    sub_19B4C4FA8(a1 + 56, v67);
                  }

                  v68 = (v60 - v62) >> 2;
                  v69 = (4 * v64);
                  v70 = (4 * v64 - 4 * v68);
                  *v69 = 0;
                  v61 = v69 + 1;
                  memcpy(v70, v62, v63);
                  v71 = *(a1 + 56);
                  *(a1 + 56) = v70;
                  *(a1 + 64) = v61;
                  *(a1 + 72) = 0;
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

                *(a1 + 64) = v61;
                v72 = *(this + 1);
                if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(this + 2))
                {
                  goto LABEL_102;
                }

                *(v61 - 1) = *(*this + v72);
                v58 = *(this + 2);
                v57 = *(this + 1) + 4;
                *(this + 1) = v57;
              }

              goto LABEL_103;
            }

            v79 = *(a1 + 64);
            v78 = *(a1 + 72);
            if (v79 >= v78)
            {
              v88 = *(a1 + 56);
              v89 = v79 - v88;
              v90 = (v79 - v88) >> 2;
              v91 = v90 + 1;
              if ((v90 + 1) >> 62)
              {
                goto LABEL_150;
              }

              v92 = v78 - v88;
              if (v92 >> 1 > v91)
              {
                v91 = v92 >> 1;
              }

              if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v93 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v93 = v91;
              }

              if (v93)
              {
                sub_19B4C4FA8(a1 + 56, v93);
              }

              v104 = (v79 - v88) >> 2;
              v105 = (4 * v90);
              v106 = (4 * v90 - 4 * v104);
              *v105 = 0;
              v77 = v105 + 1;
              memcpy(v106, v88, v89);
              v107 = *(a1 + 56);
              *(a1 + 56) = v106;
              *(a1 + 64) = v77;
              *(a1 + 72) = 0;
              if (v107)
              {
                operator delete(v107);
              }
            }

            else
            {
              *v79 = 0;
              v77 = v79 + 4;
            }

            *(a1 + 64) = v77;
            goto LABEL_137;
          case 5:
            *(a1 + 92) |= 2u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
            {
              goto LABEL_139;
            }

            *(a1 + 88) = *(*this + v24);
            goto LABEL_141;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_149:
        v113 = 0;
        return v113 & 1;
      }

LABEL_143:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t sub_19B48433C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 92))
  {
    result = PB::Writer::write(this, *(result + 80));
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

  v10 = *(v3 + 56);
  v11 = *(v3 + 64);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  if ((*(v3 + 92) & 2) != 0)
  {
    v13 = *(v3 + 88);

    return PB::Writer::write(this, v13);
  }

  return result;
}

double sub_19B484414(uint64_t a1)
{
  *a1 = &unk_1F0E30768;
  *(a1 + 60) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B484448(PB::Base *this)
{
  *this = &unk_1F0E30768;
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

void sub_19B4844BC(PB::Base *a1)
{
  sub_19B484448(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4844F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "intercept", v7);
  }

  if (*(a1 + 60))
  {
    PB::TextFormatter::format(this, "lastMiniCal", *(a1 + 56));
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "slope", v10);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4845BC(uint64_t a1, PB::Reader *this)
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

          v40 = *(this + 1);
          v41 = *(this + 2);
          while (v40 < v41 && (*(this + 24) & 1) == 0)
          {
            v43 = *(a1 + 16);
            v42 = *(a1 + 24);
            if (v43 >= v42)
            {
              v45 = *(a1 + 8);
              v46 = v43 - v45;
              v47 = (v43 - v45) >> 2;
              v48 = v47 + 1;
              if ((v47 + 1) >> 62)
              {
                goto LABEL_110;
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
                sub_19B4C4FA8(a1 + 8, v50);
              }

              v51 = (v43 - v45) >> 2;
              v52 = (4 * v47);
              v53 = (4 * v47 - 4 * v51);
              *v52 = 0;
              v44 = v52 + 1;
              memcpy(v53, v45, v46);
              v54 = *(a1 + 8);
              *(a1 + 8) = v53;
              *(a1 + 16) = v44;
              *(a1 + 24) = 0;
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

            *(a1 + 16) = v44;
            v55 = *(this + 1);
            if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(this + 2))
            {
LABEL_74:
              *(this + 24) = 1;
              goto LABEL_75;
            }

            *(v44 - 1) = *(*this + v55);
            v41 = *(this + 2);
            v40 = *(this + 1) + 4;
            *(this + 1) = v40;
          }

          goto LABEL_75;
        }

        v58 = *(a1 + 16);
        v57 = *(a1 + 24);
        if (v58 >= v57)
        {
          v62 = *(a1 + 8);
          v63 = v58 - v62;
          v64 = (v58 - v62) >> 2;
          v65 = v64 + 1;
          if ((v64 + 1) >> 62)
          {
            goto LABEL_110;
          }

          v66 = v57 - v62;
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

          v74 = (v58 - v62) >> 2;
          v75 = (4 * v64);
          v76 = (4 * v64 - 4 * v74);
          *v75 = 0;
          v59 = v75 + 1;
          memcpy(v76, v62, v63);
          v77 = *(a1 + 8);
          *(a1 + 8) = v76;
          *(a1 + 16) = v59;
          *(a1 + 24) = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          *v58 = 0;
          v59 = v58 + 4;
        }

        *(a1 + 16) = v59;
LABEL_98:
        v82 = *(this + 1);
        if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
        {
          goto LABEL_100;
        }

        *(v59 - 1) = *(*this + v82);
LABEL_102:
        *(this + 1) += 4;
        goto LABEL_103;
      }

      if (v23 == 1)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_109;
          }

          v24 = *(this + 1);
          v25 = *(this + 2);
          while (v24 < v25 && (*(this + 24) & 1) == 0)
          {
            v27 = *(a1 + 40);
            v26 = *(a1 + 48);
            if (v27 >= v26)
            {
              v29 = *(a1 + 32);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 2;
              v32 = v31 + 1;
              if ((v31 + 1) >> 62)
              {
                goto LABEL_110;
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
                sub_19B4C4FA8(a1 + 32, v34);
              }

              v35 = (v27 - v29) >> 2;
              v36 = (4 * v31);
              v37 = (4 * v31 - 4 * v35);
              *v36 = 0;
              v28 = v36 + 1;
              memcpy(v37, v29, v30);
              v38 = *(a1 + 32);
              *(a1 + 32) = v37;
              *(a1 + 40) = v28;
              *(a1 + 48) = 0;
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

            *(a1 + 40) = v28;
            v39 = *(this + 1);
            if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(v28 - 1) = *(*this + v39);
            v25 = *(this + 2);
            v24 = *(this + 1) + 4;
            *(this + 1) = v24;
          }

LABEL_75:
          PB::Reader::recallMark();
          goto LABEL_103;
        }

        v61 = *(a1 + 40);
        v60 = *(a1 + 48);
        if (v61 >= v60)
        {
          v68 = *(a1 + 32);
          v69 = v61 - v68;
          v70 = (v61 - v68) >> 2;
          v71 = v70 + 1;
          if ((v70 + 1) >> 62)
          {
LABEL_110:
            sub_19B5BE690();
          }

          v72 = v60 - v68;
          if (v72 >> 1 > v71)
          {
            v71 = v72 >> 1;
          }

          if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v73 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v71;
          }

          if (v73)
          {
            sub_19B4C4FA8(a1 + 32, v73);
          }

          v78 = (v61 - v68) >> 2;
          v79 = (4 * v70);
          v80 = (4 * v70 - 4 * v78);
          *v79 = 0;
          v59 = v79 + 1;
          memcpy(v80, v68, v69);
          v81 = *(a1 + 32);
          *(a1 + 32) = v80;
          *(a1 + 40) = v59;
          *(a1 + 48) = 0;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          *v61 = 0;
          v59 = v61 + 4;
        }

        *(a1 + 40) = v59;
        goto LABEL_98;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_109:
        v83 = 0;
        return v83 & 1;
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

    *(a1 + 60) |= 1u;
    v56 = *(this + 1);
    if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
    {
LABEL_100:
      *(this + 24) = 1;
      goto LABEL_103;
    }

    *(a1 + 56) = *(*this + v56);
    goto LABEL_102;
  }

LABEL_107:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_19B484B38(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(result + 40);
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

  if (*(v3 + 60))
  {
    v10 = *(v3 + 56);

    return PB::Writer::write(this, v10);
  }

  return result;
}

void *sub_19B484BD8(void *result)
{
  *result = &unk_1F0E2CB40;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B484BFC(void **a1)
{
  *a1 = &unk_1F0E2CB40;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B484C58(void **a1)
{
  *a1 = &unk_1F0E2CB40;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B484CC8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "sample");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B484D60(int a1, PB::Reader *this)
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
        sub_19B484F34();
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

uint64_t sub_19B48509C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

void *sub_19B4850E8(void *result)
{
  *result = &unk_1F0E2BAA0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B48510C(void **a1)
{
  *a1 = &unk_1F0E2BAA0;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B485168(void **a1)
{
  *a1 = &unk_1F0E2BAA0;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B4851D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "sample");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B485270(int a1, PB::Reader *this)
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
        sub_19B485444();
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

uint64_t sub_19B4855AC(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_19B4855F8(uint64_t result)
{
  *result = &unk_1F0E2DA20;
  *(result + 24) = 0;
  return result;
}

void sub_19B485620(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B485658(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "temperature", *(a1 + 8));
    v5 = *(a1 + 24);
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

  else if ((*(a1 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "x", *(a1 + 12));
  v5 = *(a1 + 24);
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
  PB::TextFormatter::format(this, "y", *(a1 + 16));
  if ((*(a1 + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "z", *(a1 + 20));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B48571C(uint64_t a1, PB::Reader *this)
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
          *(a1 + 24) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_43;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(a1 + 24) |= 8u;
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
          *(a1 + 24) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 24) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 12) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
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

uint64_t sub_19B4859A4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 24);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 24) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 12));
  v4 = *(v3 + 24);
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
  v5 = *(v3 + 20);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B485A4C(uint64_t result)
{
  *result = &unk_1F0E2C210;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B485A70(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2C210;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B485AF0(PB::Base *a1)
{
  sub_19B485A70(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B485B28(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B485BC0(uint64_t a1, PB::Reader *this)
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

        if ((PB::Reader::skip(this) & 1) == 0)
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

uint64_t sub_19B485E58(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 24))
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_19B485EC0(uint64_t result)
{
  *result = &unk_1F0E30730;
  *(result + 60) = 0;
  return result;
}

void sub_19B485EE8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B485F20(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "accuracy", *(a1 + 16));
    v5 = *(a1 + 60);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 20);
  PB::TextFormatter::format(this, "calibrationLevel");
  v5 = *(a1 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "magneticFieldX", *(a1 + 24));
  v5 = *(a1 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "magneticFieldY", *(a1 + 28));
  v5 = *(a1 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "magneticFieldZ", *(a1 + 32));
  v5 = *(a1 + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "magneticHeading", *(a1 + 36));
  v5 = *(a1 + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "quaternionW", *(a1 + 40));
  v5 = *(a1 + 60);
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
  PB::TextFormatter::format(this, "quaternionX", *(a1 + 44));
  v5 = *(a1 + 60);
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
  PB::TextFormatter::format(this, "quaternionY", *(a1 + 48));
  v5 = *(a1 + 60);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "quaternionZ", *(a1 + 52));
  v5 = *(a1 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 60) & 0x800) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "trueHeading", *(a1 + 56));
  }

LABEL_14:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4860E4(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 60) |= 0x10u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_76:
                *(this + 24) = 1;
                goto LABEL_95;
              }

              *(a1 + 28) = *(*this + v2);
LABEL_88:
              v2 = *(this + 1) + 4;
LABEL_89:
              *(this + 1) = v2;
              goto LABEL_95;
            case 0xB:
              *(a1 + 60) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 32) = *(*this + v2);
              goto LABEL_88;
            case 0xC:
              *(a1 + 60) |= 4u;
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
                    goto LABEL_94;
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
                    goto LABEL_93;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v27) = 0;
                }

LABEL_93:
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

LABEL_94:
              *(a1 + 20) = v27;
              goto LABEL_95;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 60) |= 0x800u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_88;
            case 8:
              *(a1 + 60) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 16) = *(*this + v2);
              goto LABEL_88;
            case 9:
              *(a1 + 60) |= 8u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_88;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 60) |= 0x400u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 52) = *(*this + v2);
            goto LABEL_88;
          case 5:
            *(a1 + 60) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_88;
          case 6:
            *(a1 + 60) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_88;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 60) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_89;
          case 2:
            *(a1 + 60) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_88;
          case 3:
            *(a1 + 60) |= 0x200u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_88;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_95:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_99:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B486650(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 60);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(result + 60) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 60);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 60) & 4) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 60);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_25:
  v5 = *(v3 + 20);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4867D8(uint64_t result)
{
  *result = &unk_1F0E38600;
  *(result + 20) = 0;
  return result;
}

void sub_19B486800(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B486838(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "isGyroOn");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4868B4(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B486AC0(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B486B2C(uint64_t result)
{
  *result = &unk_1F0E2B720;
  *(result + 12) = 0;
  return result;
}

void sub_19B486B54(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B486B8C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "dt", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B486BEC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_33;
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

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
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
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_33:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B486DAC(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::write(this, *(result + 8));
  }

  return result;
}

uint64_t sub_19B486DC8(uint64_t result)
{
  *result = &unk_1F0E2CB08;
  *(result + 24) = 0;
  return result;
}

void sub_19B486DF0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B486E28(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "temperature", *(a1 + 8));
    v5 = *(a1 + 24);
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

  else if ((*(a1 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "x", *(a1 + 12));
  v5 = *(a1 + 24);
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
  PB::TextFormatter::format(this, "y", *(a1 + 16));
  if ((*(a1 + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "z", *(a1 + 20));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B486EEC(uint64_t a1, PB::Reader *this)
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
          *(a1 + 24) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_43;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(a1 + 24) |= 8u;
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
          *(a1 + 24) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 24) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 12) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
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

uint64_t sub_19B487174(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 24);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 24) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 12));
  v4 = *(v3 + 24);
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
  v5 = *(v3 + 20);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B48721C(uint64_t result)
{
  *result = &unk_1F0E2B600;
  *(result + 28) = 0;
  return result;
}

void sub_19B487244(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B48727C(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_19B487340(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4875D0(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B487678(uint64_t result)
{
  *result = &unk_1F0E304C8;
  *(result + 36) = 0;
  return result;
}

void sub_19B4876A0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4876D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 36);
  if ((v5 & 0x20) != 0)
  {
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "fsync");
    v5 = *(a1 + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "sampleNum");
  v5 = *(a1 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "x", *(a1 + 20));
  v5 = *(a1 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(this, "y", *(a1 + 24));
  if ((*(a1 + 36) & 0x10) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "z", *(a1 + 28));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4877DC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_74;
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
            *(a1 + 36) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_44:
              *(this + 24) = 1;
              goto LABEL_70;
            }

            *(a1 + 28) = *(*this + v2);
LABEL_63:
            v2 = *(this + 1) + 4;
LABEL_64:
            *(this + 1) = v2;
            goto LABEL_70;
          case 5:
            *(a1 + 36) |= 2u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v33 = 0;
              v34 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v35 = v2 - v25;
              v36 = (v26 + v25);
              v37 = v25 + 1;
              while (1)
              {
                if (!v35)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_69;
                }

                v38 = v37;
                v39 = *v36;
                *(this + 1) = v38;
                v29 |= (v39 & 0x7F) << v33;
                if ((v39 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                --v35;
                ++v36;
                v37 = v38 + 1;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_68;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_68:
              v2 = v38;
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

LABEL_69:
            *(a1 + 16) = v29;
            goto LABEL_70;
          case 6:
            *(a1 + 36) |= 0x20u;
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

            *(a1 + 32) = v24;
            goto LABEL_70;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 36) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_44;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_64;
          case 2:
            *(a1 + 36) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_44;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_63;
          case 3:
            *(a1 + 36) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_44;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_63;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_70:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_74:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B487BC4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 36) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v6 = *(v3 + 32);

  return PB::Writer::write(this);
}

double sub_19B487CA4(uint64_t a1)
{
  *a1 = &unk_1F0E38638;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B487CD8(PB::Base *this)
{
  *this = &unk_1F0E38638;
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

void sub_19B487D4C(PB::Base *a1)
{
  sub_19B487CD8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B487D84(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "covUT", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "est", v10);
  }

  v11 = *(a1 + 80);
  if ((v11 & 8) != 0)
  {
    v12 = *(a1 + 76);
    PB::TextFormatter::format(this, "isCandidate");
    v11 = *(a1 + 80);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 80) & 4) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a1 + 72);
  PB::TextFormatter::format(this, "numSamplesInAverage");
  v11 = *(a1 + 80);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PB::TextFormatter::format(this, "temperature", *(a1 + 56));
  if ((*(a1 + 80) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  }

LABEL_10:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B487EB0(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 3)
      {
        if (v23 == 4)
        {
          *(a1 + 80) |= 8u;
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

          *(a1 + 76) = v45;
          goto LABEL_133;
        }

        if (v23 == 5)
        {
          *(a1 + 80) |= 4u;
          v63 = *(this + 1);
          v62 = *(this + 2);
          v64 = *this;
          if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
          {
            v71 = 0;
            v72 = 0;
            v67 = 0;
            v17 = v62 >= v63;
            v73 = v62 - v63;
            if (!v17)
            {
              v73 = 0;
            }

            v74 = (v64 + v63);
            v75 = v63 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v67) = 0;
                *(this + 24) = 1;
                goto LABEL_121;
              }

              v76 = *v74;
              *(this + 1) = v75;
              v67 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              --v73;
              ++v74;
              ++v75;
              v14 = v72++ > 8;
              if (v14)
              {
LABEL_95:
                LODWORD(v67) = 0;
                goto LABEL_121;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v67) = 0;
            }
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
                goto LABEL_95;
              }
            }
          }

LABEL_121:
          *(a1 + 72) = v67;
          goto LABEL_133;
        }

        if (v23 != 6)
        {
LABEL_57:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_133;
        }

        *(a1 + 80) |= 1u;
        v40 = *(this + 1);
        if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
        {
          goto LABEL_130;
        }

        *(a1 + 56) = *(*this + v40);
      }

      else if (v23 == 1)
      {
        *(a1 + 80) |= 2u;
        v41 = *(this + 1);
        if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
        {
          goto LABEL_130;
        }

        *(a1 + 64) = *(*this + v41);
      }

      else
      {
        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_139:
              v103 = 0;
              return v103 & 1;
            }

            v46 = *(this + 1);
            v47 = *(this + 2);
            while (v46 < v47 && (*(this + 24) & 1) == 0)
            {
              v49 = *(a1 + 40);
              v48 = *(a1 + 48);
              if (v49 >= v48)
              {
                v51 = *(a1 + 32);
                v52 = v49 - v51;
                v53 = (v49 - v51) >> 3;
                v54 = v53 + 1;
                if ((v53 + 1) >> 61)
                {
                  goto LABEL_140;
                }

                v55 = v48 - v51;
                if (v55 >> 2 > v54)
                {
                  v54 = v55 >> 2;
                }

                if (v55 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v56 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v56 = v54;
                }

                if (v56)
                {
                  sub_19B4C50F0(a1 + 32, v56);
                }

                v57 = (v49 - v51) >> 3;
                v58 = (8 * v53);
                v59 = (8 * v53 - 8 * v57);
                *v58 = 0;
                v50 = v58 + 1;
                memcpy(v59, v51, v52);
                v60 = *(a1 + 32);
                *(a1 + 32) = v59;
                *(a1 + 40) = v50;
                *(a1 + 48) = 0;
                if (v60)
                {
                  operator delete(v60);
                }
              }

              else
              {
                *v49 = 0;
                v50 = v49 + 8;
              }

              *(a1 + 40) = v50;
              v61 = *(this + 1);
              if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(this + 2))
              {
LABEL_100:
                *(this + 24) = 1;
                goto LABEL_101;
              }

              *(v50 - 1) = *(*this + v61);
              v47 = *(this + 2);
              v46 = *(this + 1) + 8;
              *(this + 1) = v46;
            }

            goto LABEL_101;
          }

          v81 = *(a1 + 40);
          v80 = *(a1 + 48);
          if (v81 >= v80)
          {
            v88 = *(a1 + 32);
            v89 = v81 - v88;
            v90 = (v81 - v88) >> 3;
            v91 = v90 + 1;
            if ((v90 + 1) >> 61)
            {
LABEL_140:
              sub_19B5BE690();
            }

            v92 = v80 - v88;
            if (v92 >> 2 > v91)
            {
              v91 = v92 >> 2;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFF8)
            {
              v93 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              sub_19B4C50F0(a1 + 32, v93);
            }

            v98 = (v81 - v88) >> 3;
            v99 = (8 * v90);
            v100 = (8 * v90 - 8 * v98);
            *v99 = 0;
            v79 = v99 + 1;
            memcpy(v100, v88, v89);
            v101 = *(a1 + 32);
            *(a1 + 32) = v100;
            *(a1 + 40) = v79;
            *(a1 + 48) = 0;
            if (v101)
            {
              operator delete(v101);
            }
          }

          else
          {
            *v81 = 0;
            v79 = v81 + 8;
          }

          *(a1 + 40) = v79;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_57;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_139;
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
                  goto LABEL_140;
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
                goto LABEL_100;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 8;
              *(this + 1) = v24;
            }

LABEL_101:
            PB::Reader::recallMark();
            goto LABEL_133;
          }

          v78 = *(a1 + 16);
          v77 = *(a1 + 24);
          if (v78 >= v77)
          {
            v82 = *(a1 + 8);
            v83 = v78 - v82;
            v84 = (v78 - v82) >> 3;
            v85 = v84 + 1;
            if ((v84 + 1) >> 61)
            {
              goto LABEL_140;
            }

            v86 = v77 - v82;
            if (v86 >> 2 > v85)
            {
              v85 = v86 >> 2;
            }

            if (v86 >= 0x7FFFFFFFFFFFFFF8)
            {
              v87 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v87 = v85;
            }

            if (v87)
            {
              sub_19B4C50F0(a1 + 8, v87);
            }

            v94 = (v78 - v82) >> 3;
            v95 = (8 * v84);
            v96 = (8 * v84 - 8 * v94);
            *v95 = 0;
            v79 = v95 + 1;
            memcpy(v96, v82, v83);
            v97 = *(a1 + 8);
            *(a1 + 8) = v96;
            *(a1 + 16) = v79;
            *(a1 + 24) = 0;
            if (v97)
            {
              operator delete(v97);
            }
          }

          else
          {
            *v78 = 0;
            v79 = v78 + 8;
          }

          *(a1 + 16) = v79;
        }

        v102 = *(this + 1);
        if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(this + 2))
        {
LABEL_130:
          *(this + 24) = 1;
          goto LABEL_133;
        }

        *(v79 - 1) = *(*this + v102);
      }

      *(this + 1) += 8;
LABEL_133:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v103 = v4 ^ 1;
  return v103 & 1;
}