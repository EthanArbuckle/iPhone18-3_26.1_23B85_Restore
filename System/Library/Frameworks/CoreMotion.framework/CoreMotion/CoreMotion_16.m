uint64_t sub_19B4CA9D4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  v5 = *(result + 64);
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

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 116);
  if ((v13 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 88));
    v13 = *(v3 + 116);
    if ((v13 & 1) == 0)
    {
LABEL_12:
      if ((v13 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v3 + 116) & 1) == 0)
  {
    goto LABEL_12;
  }

  result = PB::Writer::write(this, *(v3 + 80));
  v13 = *(v3 + 116);
  if ((v13 & 8) == 0)
  {
LABEL_13:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v14 = *(v3 + 112);
    result = PB::Writer::write(this);
    if ((*(v3 + 116) & 4) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 104));
  v13 = *(v3 + 116);
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v13 & 4) == 0)
  {
    return result;
  }

LABEL_20:
  v15 = *(v3 + 96);

  return PB::Writer::write(this, v15);
}

uint64_t sub_19B4CAB04(uint64_t result)
{
  *result = &unk_1F0E2EF90;
  *(result + 32) = 0;
  return result;
}

void sub_19B4CAB2C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CAB64(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    PB::TextFormatter::format(this, "calibrated", *(a1 + 8));
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

  PB::TextFormatter::format(this, "lowerBound", *(a1 + 16));
  if ((*(a1 + 32) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "upperBound", *(a1 + 24));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CAC08(uint64_t a1, PB::Reader *this)
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
            goto LABEL_42;
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
        goto LABEL_42;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 32) |= 4u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
LABEL_33:
          *(this + 24) = 1;
          goto LABEL_38;
        }

        *(a1 + 24) = *(*this + v2);
        goto LABEL_37;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 32) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_37:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_38;
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_38:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_42;
      }
    }

    *(a1 + 32) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
      goto LABEL_33;
    }

    *(a1 + 16) = *(*this + v2);
    goto LABEL_37;
  }

LABEL_42:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B4CAE48(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 32) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 32);
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
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B4CAED4(uint64_t result)
{
  *result = &unk_1F0E2FC78;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_19B4CAEF8(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2FC78;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4CAF78(PB::Base *a1)
{
  sub_19B4CAEF8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CAFB0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "accel");
  }

  v6 = *(a1 + 32);
  if ((v6 & 2) != 0)
  {
    v8 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
    v6 = *(a1 + 32);
    if ((v6 & 1) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 16);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 32) & 4) != 0)
  {
LABEL_6:
    v7 = *(a1 + 28);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CB08C(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 4u;
          v42 = *(this + 1);
          v41 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
          {
            v62 = 0;
            v63 = 0;
            v46 = 0;
            v17 = v41 >= v42;
            v64 = v41 - v42;
            if (!v17)
            {
              v64 = 0;
            }

            v65 = (v43 + v42);
            v66 = v42 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v46) = 0;
                *(this + 24) = 1;
                goto LABEL_86;
              }

              v67 = *v65;
              *(this + 1) = v66;
              v46 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              --v64;
              ++v65;
              ++v66;
              v14 = v63++ > 8;
              if (v14)
              {
LABEL_74:
                LODWORD(v46) = 0;
                goto LABEL_86;
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
                goto LABEL_74;
              }
            }
          }

LABEL_86:
          *(a1 + 28) = v46;
          goto LABEL_87;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 1u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v56 = 0;
            v57 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v58 = v32 - v33;
            if (!v17)
            {
              v58 = 0;
            }

            v59 = (v34 + v33);
            v60 = v33 + 1;
            while (1)
            {
              if (!v58)
              {
                v37 = 0;
                *(this + 24) = 1;
                goto LABEL_83;
              }

              v61 = *v59;
              *(this + 1) = v60;
              v37 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              --v58;
              ++v59;
              ++v60;
              v14 = v57++ > 8;
              if (v14)
              {
LABEL_66:
                v37 = 0;
                goto LABEL_83;
              }
            }

            if (*(this + 24))
            {
              v37 = 0;
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
                goto LABEL_66;
              }
            }
          }

LABEL_83:
          *(a1 + 16) = v37;
          goto LABEL_87;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v50 = 0;
            v51 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v52 = v23 - v24;
            if (!v17)
            {
              v52 = 0;
            }

            v53 = (v25 + v24);
            v54 = v24 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_80;
              }

              v55 = *v53;
              *(this + 1) = v54;
              v28 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              --v52;
              ++v53;
              ++v54;
              v14 = v51++ > 8;
              if (v14)
              {
LABEL_58:
                LODWORD(v28) = 0;
                goto LABEL_80;
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

LABEL_80:
          *(a1 + 24) = v28;
          goto LABEL_87;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v69 = 0;
        return v69 & 1;
      }

LABEL_87:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_91:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t sub_19B4CB5C0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 32);
  if ((v5 & 2) == 0)
  {
    if ((*(v3 + 32) & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 32);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v5 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4CB660(uint64_t result)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

void *sub_19B4CB70C(void *result)
{
  *result = &unk_1F0E2E158;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B4CB730(uint64_t a1)
{
  *a1 = &unk_1F0E2E158;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    sub_19B4C51F4(a1 + 16, v3);
  }

  sub_19B4C5250((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_19B4CB7D4(uint64_t a1)
{
  sub_19B4CB730(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CB80C(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (a1[1])
  {
    PB::TextFormatter::format();
  }

  if (a1[2])
  {
    PB::TextFormatter::format();
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CB8B8(int a1, PB::Reader *this)
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
            goto LABEL_33;
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

      v21 = v9 >> 3;
      if ((v9 >> 3) == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_33:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B4CBBB8(uint64_t result)
{
  *(result + 36) = 0;
  *result = &unk_1F0E2F9A0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_19B4CBBE0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_19B4CBC58(uint64_t result)
{
  *result = &unk_1F0E2BAD8;
  *(result + 32) = 0;
  return result;
}

void sub_19B4CBC80(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CBCB8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 0x10) != 0)
  {
    v7 = *(a1 + 28);
    PB::TextFormatter::format(this, "asleep");
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "averageConfidence");
  v5 = *(a1 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(a1 + 29);
  PB::TextFormatter::format(this, "initialized");
  v5 = *(a1 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "rawConfidence", *(a1 + 20));
  v5 = *(a1 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v10 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 32) & 8) != 0)
  {
LABEL_7:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CBDBC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_107;
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
            *(a1 + 32) |= 4u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
            {
              *(a1 + 20) = *(*this + v2);
              v2 = *(this + 1) + 4;
              *(this + 1) = v2;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_103;
          case 5:
            *(a1 + 32) |= 8u;
            v43 = *(this + 1);
            v2 = *(this + 2);
            v44 = *this;
            if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
            {
              v65 = 0;
              v66 = 0;
              v47 = 0;
              if (v2 <= v43)
              {
                v2 = *(this + 1);
              }

              v67 = v2 - v43;
              v68 = (v44 + v43);
              v69 = v43 + 1;
              while (1)
              {
                if (!v67)
                {
                  LODWORD(v47) = 0;
                  *(this + 24) = 1;
                  goto LABEL_102;
                }

                v70 = v69;
                v71 = *v68;
                *(this + 1) = v70;
                v47 |= (v71 & 0x7F) << v65;
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
                  LODWORD(v47) = 0;
                  goto LABEL_101;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v47) = 0;
              }

LABEL_101:
              v2 = v70;
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = (v44 + v43);
              v49 = v43 + 1;
              while (1)
              {
                v2 = v49;
                *(this + 1) = v49;
                v50 = *v48++;
                v47 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  break;
                }
              }
            }

LABEL_102:
            *(a1 + 24) = v47;
            goto LABEL_103;
          case 6:
            *(a1 + 32) |= 0x20u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v32 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v31 = *(*this + v2++);
              *(this + 1) = v2;
              v32 = v31 != 0;
            }

            *(a1 + 29) = v32;
            goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 32) |= 1u;
            v33 = *(this + 1);
            v2 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v51 = 0;
              v52 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(this + 1);
              }

              v53 = v2 - v33;
              v54 = (v34 + v33);
              v55 = v33 + 1;
              while (1)
              {
                if (!v53)
                {
                  v37 = 0;
                  *(this + 24) = 1;
                  goto LABEL_94;
                }

                v56 = v55;
                v57 = *v54;
                *(this + 1) = v56;
                v37 |= (v57 & 0x7F) << v51;
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
                  v37 = 0;
                  goto LABEL_93;
                }
              }

              if (*(this + 24))
              {
                v37 = 0;
              }

LABEL_93:
              v2 = v56;
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

LABEL_94:
            *(a1 + 8) = v37;
            goto LABEL_103;
          case 2:
            *(a1 + 32) |= 0x10u;
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

            *(a1 + 28) = v42;
            goto LABEL_103;
          case 3:
            *(a1 + 32) |= 2u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v58 = 0;
              v59 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v60 = v2 - v23;
              v61 = (v24 + v23);
              v62 = v23 + 1;
              while (1)
              {
                if (!v60)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_98;
                }

                v63 = v62;
                v64 = *v61;
                *(this + 1) = v63;
                v27 |= (v64 & 0x7F) << v58;
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
                  LODWORD(v27) = 0;
                  goto LABEL_97;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_97:
              v2 = v63;
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

LABEL_98:
            *(a1 + 16) = v27;
            goto LABEL_103;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v72 = 0;
        return v72 & 1;
      }

      v2 = *(this + 1);
LABEL_103:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_107:
  v72 = v4 ^ 1;
  return v72 & 1;
}

uint64_t sub_19B4CC340(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 28);
  result = PB::Writer::write(this);
  v4 = *(v3 + 32);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v9 = *(v3 + 29);

  return PB::Writer::write(this);
}

uint64_t sub_19B4CC420(uint64_t result)
{
  *result = &unk_1F0E2C590;
  *(result + 28) = 0;
  return result;
}

void sub_19B4CC448(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CC480(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "activity");
    v5 = *(a1 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
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

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "confidenceLevel");
  v5 = *(a1 + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 28) & 8) != 0)
  {
LABEL_5:
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CC544(uint64_t a1, PB::Reader *this)
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
            goto LABEL_118;
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
      if ((v10 >> 3) > 2)
      {
        if (v23 == 3)
        {
          *(a1 + 28) |= 4u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v79 = v3 - v48;
            v80 = (v49 + v48);
            v81 = v48 + 1;
            while (1)
            {
              if (!v79)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_113;
              }

              v82 = v81;
              v83 = *v80;
              *(this + 1) = v82;
              v52 |= (v83 & 0x7F) << v77;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              --v79;
              ++v80;
              v81 = v82 + 1;
              v14 = v78++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

LABEL_112:
            v3 = v82;
          }

          else
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = (v49 + v48);
            v54 = v48 + 1;
            while (1)
            {
              v3 = v54;
              *(this + 1) = v54;
              v55 = *v53++;
              v52 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              ++v54;
              v14 = v51++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
                break;
              }
            }
          }

LABEL_113:
          *(a1 + 20) = v52;
          goto LABEL_114;
        }

        if (v23 == 4)
        {
          *(a1 + 28) |= 8u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v65 = v3 - v32;
            v66 = (v33 + v32);
            v67 = v32 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_105;
              }

              v68 = v67;
              v69 = *v66;
              *(this + 1) = v68;
              v36 |= (v69 & 0x7F) << v63;
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
                LODWORD(v36) = 0;
                goto LABEL_104;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

LABEL_104:
            v3 = v68;
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

LABEL_105:
          *(a1 + 24) = v36;
          goto LABEL_114;
        }
      }

      else
      {
        if (v23 == 1)
        {
          *(a1 + 28) |= 1u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v72 = v3 - v40;
            v73 = (v41 + v40);
            v74 = v40 + 1;
            while (1)
            {
              if (!v72)
              {
                v44 = 0;
                *(this + 24) = 1;
                goto LABEL_109;
              }

              v75 = v74;
              v76 = *v73;
              *(this + 1) = v75;
              v44 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              --v72;
              ++v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                v44 = 0;
                goto LABEL_108;
              }
            }

            if (*(this + 24))
            {
              v44 = 0;
            }

LABEL_108:
            v3 = v75;
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
                v44 = 0;
                break;
              }
            }
          }

LABEL_109:
          *(a1 + 8) = v44;
          goto LABEL_114;
        }

        if (v23 == 2)
        {
          *(a1 + 28) |= 2u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v58 = v3 - v24;
            v59 = (v25 + v24);
            v60 = v24 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_101;
              }

              v61 = v60;
              v62 = *v59;
              *(this + 1) = v61;
              v28 |= (v62 & 0x7F) << v56;
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
                LODWORD(v28) = 0;
                goto LABEL_100;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

LABEL_100:
            v3 = v61;
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

LABEL_101:
          *(a1 + 16) = v28;
          goto LABEL_114;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v84 = 0;
        return v84 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_114:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_118:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_19B4CCAE4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v3 + 20);
      result = PB::Writer::writeVarInt(this);
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

  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
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
  v8 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4CCB8C(uint64_t result)
{
  *result = &unk_1F0E38C78;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_19B4CCBB4(void **a1)
{
  *a1 = &unk_1F0E38C78;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B4CCC10(void **a1)
{
  *a1 = &unk_1F0E38C78;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B4CCC80(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "batchedPPGData");
  }

  v8 = *(a1 + 64);
  if ((v8 & 4) != 0)
  {
    v9 = *(a1 + 48);
    PB::TextFormatter::format(this, "flagBitfield");
    v8 = *(a1 + 64);
    if ((v8 & 8) == 0)
    {
LABEL_5:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 64) & 8) == 0)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 52);
  PB::TextFormatter::format(this, "frameNum");
  v8 = *(a1 + 64);
  if ((v8 & 0x10) == 0)
  {
LABEL_6:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = *(a1 + 56);
  PB::TextFormatter::format(this, "frameType");
  v8 = *(a1 + 64);
  if ((v8 & 0x20) == 0)
  {
LABEL_7:
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = *(a1 + 60);
  PB::TextFormatter::format(this, "payloadsInBatch");
  v8 = *(a1 + 64);
  if ((v8 & 1) == 0)
  {
LABEL_8:
    if ((v8 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v13 = *(a1 + 32);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 64) & 2) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_10:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CCDE0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_137;
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
            *(a1 + 64) |= 2u;
            v41 = *(this + 1);
            if (v41 <= 0xFFFFFFFFFFFFFFF7 && v41 + 8 <= *(this + 2))
            {
              *(a1 + 40) = *(*this + v41);
              *(this + 1) += 8;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_133;
          case 2:
            *(a1 + 64) |= 1u;
            v61 = *(this + 1);
            v60 = *(this + 2);
            v62 = *this;
            if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v60)
            {
              v93 = 0;
              v94 = 0;
              v65 = 0;
              v17 = v60 >= v61;
              v95 = v60 - v61;
              if (!v17)
              {
                v95 = 0;
              }

              v96 = (v62 + v61);
              v97 = v61 + 1;
              while (1)
              {
                if (!v95)
                {
                  v65 = 0;
                  *(this + 24) = 1;
                  goto LABEL_132;
                }

                v98 = *v96;
                *(this + 1) = v97;
                v65 |= (v98 & 0x7F) << v93;
                if ((v98 & 0x80) == 0)
                {
                  break;
                }

                v93 += 7;
                --v95;
                ++v96;
                ++v97;
                v14 = v94++ > 8;
                if (v14)
                {
LABEL_111:
                  v65 = 0;
                  goto LABEL_132;
                }
              }

              if (*(this + 24))
              {
                v65 = 0;
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
                *(this + 1) = v67;
                v68 = *v66++;
                v65 |= (v68 & 0x7F) << v63;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                ++v67;
                v14 = v64++ > 8;
                if (v14)
                {
                  goto LABEL_111;
                }
              }
            }

LABEL_132:
            *(a1 + 32) = v65;
            goto LABEL_133;
          case 3:
            *(a1 + 64) |= 0x10u;
            v33 = *(this + 1);
            v32 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v87 = 0;
              v88 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v89 = v32 - v33;
              if (!v17)
              {
                v89 = 0;
              }

              v90 = (v34 + v33);
              v91 = v33 + 1;
              while (1)
              {
                if (!v89)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_129;
                }

                v92 = *v90;
                *(this + 1) = v91;
                v37 |= (v92 & 0x7F) << v87;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v87 += 7;
                --v89;
                ++v90;
                ++v91;
                v14 = v88++ > 8;
                if (v14)
                {
LABEL_103:
                  LODWORD(v37) = 0;
                  goto LABEL_129;
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

LABEL_129:
            *(a1 + 56) = v37;
            goto LABEL_133;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 64) |= 0x20u;
          v52 = *(this + 1);
          v51 = *(this + 2);
          v53 = *this;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v51)
          {
            v75 = 0;
            v76 = 0;
            v56 = 0;
            v17 = v51 >= v52;
            v77 = v51 - v52;
            if (!v17)
            {
              v77 = 0;
            }

            v78 = (v53 + v52);
            v79 = v52 + 1;
            while (1)
            {
              if (!v77)
              {
                LODWORD(v56) = 0;
                *(this + 24) = 1;
                goto LABEL_123;
              }

              v80 = *v78;
              *(this + 1) = v79;
              v56 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              --v77;
              ++v78;
              ++v79;
              v14 = v76++ > 8;
              if (v14)
              {
LABEL_87:
                LODWORD(v56) = 0;
                goto LABEL_123;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v56) = 0;
            }
          }

          else
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = (v53 + v52);
            v58 = v52 + 1;
            while (1)
            {
              *(this + 1) = v58;
              v59 = *v57++;
              v56 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              ++v58;
              v14 = v55++ > 8;
              if (v14)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_123:
          *(a1 + 60) = v56;
          goto LABEL_133;
        }

        if (v22 == 7)
        {
          sub_19B4CD4F4();
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 64) |= 8u;
          v43 = *(this + 1);
          v42 = *(this + 2);
          v44 = *this;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v42)
          {
            v69 = 0;
            v70 = 0;
            v47 = 0;
            v17 = v42 >= v43;
            v71 = v42 - v43;
            if (!v17)
            {
              v71 = 0;
            }

            v72 = (v44 + v43);
            v73 = v43 + 1;
            while (1)
            {
              if (!v71)
              {
                LODWORD(v47) = 0;
                *(this + 24) = 1;
                goto LABEL_120;
              }

              v74 = *v72;
              *(this + 1) = v73;
              v47 |= (v74 & 0x7F) << v69;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              --v71;
              ++v72;
              ++v73;
              v14 = v70++ > 8;
              if (v14)
              {
LABEL_79:
                LODWORD(v47) = 0;
                goto LABEL_120;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v47) = 0;
            }
          }

          else
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            while (1)
            {
              *(this + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
              if (v14)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_120:
          *(a1 + 52) = v47;
          goto LABEL_133;
        }

        if (v22 == 5)
        {
          *(a1 + 64) |= 4u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v81 = 0;
            v82 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v83 = v23 - v24;
            if (!v17)
            {
              v83 = 0;
            }

            v84 = (v25 + v24);
            v85 = v24 + 1;
            while (1)
            {
              if (!v83)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_126;
              }

              v86 = *v84;
              *(this + 1) = v85;
              v28 |= (v86 & 0x7F) << v81;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              --v83;
              ++v84;
              ++v85;
              v14 = v82++ > 8;
              if (v14)
              {
LABEL_95:
                LODWORD(v28) = 0;
                goto LABEL_126;
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

LABEL_126:
          *(a1 + 48) = v28;
          goto LABEL_133;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v100 = 0;
        return v100 & 1;
      }

LABEL_133:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_137:
  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t sub_19B4CD678(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 64);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(result + 64) & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v12 = *(v3 + 48);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 64) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    v5 = *(v3 + 60);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_8:
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::writeSubmessage(this, v8);
  }

  return result;
}

void sub_19B4CD76C(PB::Base *this)
{
  *this = &unk_1F0E2F9A0;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_19B4C51F4(v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    sub_19B4C51F4(this + 8, v5);
  }

  PB::Base::~Base(this);
}

void sub_19B4CD7E4(PB::Base *a1)
{
  sub_19B4CD76C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CD81C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 36);
  if (v5)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "hardwareModel");
    v5 = *(a1 + 36);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(a1 + 32);
    PB::TextFormatter::format(this, "isVirtualTransport");
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    v8 = *(a1 + 28);
    PB::TextFormatter::format(this, "side");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CD8E4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_78;
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
          *(a1 + 36) |= 2u;
          v37 = *(this + 1);
          v36 = *(this + 2);
          v38 = *this;
          if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
          {
            v51 = 0;
            v52 = 0;
            v41 = 0;
            v17 = v36 >= v37;
            v53 = v36 - v37;
            if (!v17)
            {
              v53 = 0;
            }

            v54 = (v38 + v37);
            v55 = v37 + 1;
            while (1)
            {
              if (!v53)
              {
                LODWORD(v41) = 0;
                *(this + 24) = 1;
                goto LABEL_73;
              }

              v56 = *v54;
              *(this + 1) = v55;
              v41 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              --v53;
              ++v54;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
LABEL_63:
                LODWORD(v41) = 0;
                goto LABEL_73;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v41) = 0;
            }
          }

          else
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            while (1)
            {
              *(this + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
              if (v14)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_73:
          *(a1 + 28) = v41;
          goto LABEL_74;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            operator new();
          case 4:
            *(a1 + 36) |= 1u;
            v28 = *(this + 1);
            v27 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
            {
              v45 = 0;
              v46 = 0;
              v32 = 0;
              v17 = v27 >= v28;
              v47 = v27 - v28;
              if (!v17)
              {
                v47 = 0;
              }

              v48 = (v29 + v28);
              v49 = v28 + 1;
              while (1)
              {
                if (!v47)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_70;
                }

                v50 = *v48;
                *(this + 1) = v49;
                v32 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v47;
                ++v48;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
LABEL_55:
                  LODWORD(v32) = 0;
                  goto LABEL_70;
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
                  goto LABEL_55;
                }
              }
            }

LABEL_70:
            *(a1 + 24) = v32;
            goto LABEL_74;
          case 5:
            *(a1 + 36) |= 4u;
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

            *(a1 + 32) = v26;
            goto LABEL_74;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v58 = 0;
        return v58 & 1;
      }

LABEL_74:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_78:
  v58 = v4 ^ 1;
  return v58 & 1;
}

uint64_t sub_19B4CDD50(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 36) & 2) != 0)
  {
    v4 = *(result + 28);
    result = PB::Writer::writeVarInt(this);
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 36);
  if (v5)
  {
    v6 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    v5 = *(v3 + 36);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(v3 + 32);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B4CDDFC(uint64_t result)
{
  *result = &unk_1F0E2DD68;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B4CDE20(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2DD68;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4CDEA0(PB::Base *a1)
{
  sub_19B4CDE20(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CDED8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "dm");
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "location");
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(a1 + 20);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CDF8C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_70;
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
        *(a1 + 24) |= 2u;
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
              goto LABEL_65;
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
LABEL_57:
              LODWORD(v37) = 0;
              goto LABEL_65;
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
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        *(a1 + 20) = v37;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 1u;
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
              goto LABEL_62;
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
LABEL_49:
              LODWORD(v28) = 0;
              goto LABEL_62;
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
              goto LABEL_49;
            }
          }
        }

LABEL_62:
        *(a1 + 16) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v54 = 0;
          return v54 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_19B4CE3C0(uint64_t result)
{
  *result = &unk_1F0E30538;
  *(result + 124) = 0;
  return result;
}

uint64_t sub_19B4CE3E4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    v5 = *(v3 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(v3 + 20);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void sub_19B4CE464(PB::Base *this)
{
  *this = &unk_1F0E2C868;
  v2 = *(this + 4);
  *(this + 4) = 0;
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

void sub_19B4CE4F8(PB::Base *a1)
{
  sub_19B4CE464(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CE530(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "headToHeadsetTransformation", v8);
  }

  if (*(a1 + 44))
  {
    v9 = *(a1 + 40);
    PB::TextFormatter::format(this, "isH2HValid");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CE604(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) == 3)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_76;
          }

          v27 = *(this + 1);
          v28 = *(this + 2);
          while (v27 < v28 && (*(this + 24) & 1) == 0)
          {
            v30 = *(a1 + 16);
            v29 = *(a1 + 24);
            if (v30 >= v29)
            {
              v32 = *(a1 + 8);
              v33 = v30 - v32;
              v34 = (v30 - v32) >> 2;
              v35 = v34 + 1;
              if ((v34 + 1) >> 62)
              {
                goto LABEL_77;
              }

              v36 = v29 - v32;
              if (v36 >> 1 > v35)
              {
                v35 = v36 >> 1;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v37 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                sub_19B4C4FA8(a1 + 8, v37);
              }

              v38 = (v30 - v32) >> 2;
              v39 = (4 * v34);
              v40 = (4 * v34 - 4 * v38);
              *v39 = 0;
              v31 = v39 + 1;
              memcpy(v40, v32, v33);
              v41 = *(a1 + 8);
              *(a1 + 8) = v40;
              *(a1 + 16) = v31;
              *(a1 + 24) = 0;
              if (v41)
              {
                operator delete(v41);
              }
            }

            else
            {
              *v30 = 0;
              v31 = v30 + 4;
            }

            *(a1 + 16) = v31;
            v42 = *(this + 1);
            if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
            {
              *(this + 24) = 1;
              break;
            }

            *(v31 - 1) = *(*this + v42);
            v28 = *(this + 2);
            v27 = *(this + 1) + 4;
            *(this + 1) = v27;
          }

          PB::Reader::recallMark();
        }

        else
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
LABEL_77:
              sub_19B5BE690();
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
          if (v56 <= 0xFFFFFFFFFFFFFFFBLL && v56 + 4 <= *(this + 2))
          {
            *(v45 - 1) = *(*this + v56);
            *(this + 1) += 4;
          }

          else
          {
            *(this + 24) = 1;
          }
        }
      }

      else if (v22 == 2)
      {
        *(a1 + 44) |= 1u;
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

        *(a1 + 40) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
LABEL_76:
          v57 = 0;
          return v57 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_74:
  v57 = v4 ^ 1;
  return v57 & 1;
}

uint64_t sub_19B4CEAA8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 44))
  {
    v5 = *(v3 + 40);
    result = PB::Writer::write(this);
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::write(this, v8);
  }

  return result;
}

uint64_t sub_19B4CEB20(uint64_t result)
{
  if (!*(result + 32))
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B4CEBD0(uint64_t result)
{
  *result = &unk_1F0E30180;
  *(result + 8) = 0;
  *(result + 36) = 0;
  return result;
}

void sub_19B4CEBF4(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E30180;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4CEC74(PB::Base *a1)
{
  sub_19B4CEBF4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CECAC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "gyro");
  }

  v6 = *(a1 + 36);
  if ((v6 & 2) != 0)
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
    v6 = *(a1 + 36);
    if ((v6 & 1) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 36) & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "sensorTime");
  v6 = *(a1 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v9 = *(a1 + 28);
  PB::TextFormatter::format(this, "sequenceNumber");
  if ((*(a1 + 36) & 8) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "temp", *(a1 + 32));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CEDA8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_96;
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
          operator new();
        }

        if (v22 == 2)
        {
          *(a1 + 36) |= 2u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v63 = 0;
            v64 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v65 = v32 - v33;
            if (!v17)
            {
              v65 = 0;
            }

            v66 = (v34 + v33);
            v67 = v33 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_91;
              }

              v68 = *v66;
              *(this + 1) = v67;
              v37 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              --v65;
              ++v66;
              ++v67;
              v14 = v64++ > 8;
              if (v14)
              {
LABEL_78:
                LODWORD(v37) = 0;
                goto LABEL_91;
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
                goto LABEL_78;
              }
            }
          }

LABEL_91:
          *(a1 + 24) = v37;
          goto LABEL_92;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 36) |= 4u;
            v42 = *(this + 1);
            v41 = *(this + 2);
            v43 = *this;
            if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
            {
              v51 = 0;
              v52 = 0;
              v46 = 0;
              v17 = v41 >= v42;
              v53 = v41 - v42;
              if (!v17)
              {
                v53 = 0;
              }

              v54 = (v43 + v42);
              v55 = v42 + 1;
              while (1)
              {
                if (!v53)
                {
                  LODWORD(v46) = 0;
                  *(this + 24) = 1;
                  goto LABEL_85;
                }

                v56 = *v54;
                *(this + 1) = v55;
                v46 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                --v53;
                ++v54;
                ++v55;
                v14 = v52++ > 8;
                if (v14)
                {
LABEL_62:
                  LODWORD(v46) = 0;
                  goto LABEL_85;
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
                  goto LABEL_62;
                }
              }
            }

LABEL_85:
            *(a1 + 28) = v46;
            goto LABEL_92;
          case 4:
            *(a1 + 36) |= 8u;
            v50 = *(this + 1);
            if (v50 <= 0xFFFFFFFFFFFFFFFBLL && v50 + 4 <= *(this + 2))
            {
              *(a1 + 32) = *(*this + v50);
              *(this + 1) += 4;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_92;
          case 5:
            *(a1 + 36) |= 1u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v57 = 0;
              v58 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v59 = v23 - v24;
              if (!v17)
              {
                v59 = 0;
              }

              v60 = (v25 + v24);
              v61 = v24 + 1;
              while (1)
              {
                if (!v59)
                {
                  v28 = 0;
                  *(this + 24) = 1;
                  goto LABEL_88;
                }

                v62 = *v60;
                *(this + 1) = v61;
                v28 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                --v59;
                ++v60;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
LABEL_70:
                  v28 = 0;
                  goto LABEL_88;
                }
              }

              if (*(this + 24))
              {
                v28 = 0;
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
                  goto LABEL_70;
                }
              }
            }

LABEL_88:
            *(a1 + 16) = v28;
            goto LABEL_92;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v70 = 0;
        return v70 & 1;
      }

LABEL_92:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_96:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t sub_19B4CF314(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 36);
  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    v5 = *(v3 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      result = PB::Writer::write(this, *(v3 + 32));
      if ((*(v3 + 36) & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v3 + 36) & 4) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 36);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4CF3D0(uint64_t result)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

void *sub_19B4CF460(void *result)
{
  *result = &unk_1F0E2D278;
  result[1] = 0;
  return result;
}

void sub_19B4CF480(PB::Base *this)
{
  *this = &unk_1F0E2D278;
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

void sub_19B4CF4E4(PB::Base *a1)
{
  sub_19B4CF480(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CF51C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CF578(int a1, PB::Reader *this)
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

      if (!PB::Reader::skip(this))
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

uint64_t sub_19B4CF74C(uint64_t result)
{
  if (*(result + 8))
  {
    return PB::Writer::write();
  }

  return result;
}

void *sub_19B4CF768(void *result)
{
  *result = &unk_1F0E2E5F0;
  result[1] = 0;
  return result;
}

void sub_19B4CF788(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2E5F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4CF808(PB::Base *a1)
{
  sub_19B4CF788(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CF840(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CF8BC(int a1, PB::Reader *this)
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

uint64_t sub_19B4CFAF8(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B4CFB14(void *result)
{
  *result = &unk_1F0E2EF58;
  result[1] = 0;
  return result;
}

void sub_19B4CFB34(PB::Base *this)
{
  *this = &unk_1F0E2EF58;
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

void sub_19B4CFB98(PB::Base *a1)
{
  sub_19B4CFB34(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CFBD0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CFC2C(int a1, PB::Reader *this)
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

      if (!PB::Reader::skip(this))
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

uint64_t sub_19B4CFE00(uint64_t result)
{
  if (*(result + 8))
  {
    return PB::Writer::write();
  }

  return result;
}

void sub_19B4CFE20(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4CFE58(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "arrivalTimestamp", *(a1 + 8));
    v5 = *(a1 + 68);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "confidence", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = *(a1 + 52);
  PB::TextFormatter::format(this, "heartRate");
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 56);
  PB::TextFormatter::format(this, "hrSensorLocation");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "sensorTime", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 60);
  PB::TextFormatter::format(this, "sequenceNumber");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "sourceTimestampToCFAbsoluteTime", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "sourceTimestampToMachContinuous", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v9 = *(a1 + 64);
  PB::TextFormatter::format(this, "timeSyncStatus");
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_12:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4CFFDC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_142;
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
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_73:
              *(this + 24) = 1;
              goto LABEL_138;
            }

            *(a1 + 32) = *(*this + v2);
LABEL_116:
            v2 = *(this + 1) + 8;
LABEL_117:
            *(this + 1) = v2;
            goto LABEL_138;
          }

          if (v22 == 7)
          {
            *(a1 + 68) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_73;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_116;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 68) |= 1u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_73;
              }

              *(a1 + 8) = *(*this + v2);
              goto LABEL_116;
            case 9:
              *(a1 + 68) |= 0x200u;
              v47 = *(this + 1);
              v2 = *(this + 2);
              v48 = *this;
              if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
              {
                v76 = 0;
                v77 = 0;
                v51 = 0;
                if (v2 <= v47)
                {
                  v2 = *(this + 1);
                }

                v78 = v2 - v47;
                v79 = (v48 + v47);
                v80 = v47 + 1;
                while (1)
                {
                  if (!v78)
                  {
                    LODWORD(v51) = 0;
                    *(this + 24) = 1;
                    goto LABEL_137;
                  }

                  v81 = v80;
                  v82 = *v79;
                  *(this + 1) = v81;
                  v51 |= (v82 & 0x7F) << v76;
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
                    LODWORD(v51) = 0;
                    goto LABEL_136;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v51) = 0;
                }

LABEL_136:
                v2 = v81;
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

LABEL_137:
              *(a1 + 64) = v51;
              goto LABEL_138;
            case 0xA:
              *(a1 + 68) |= 0x80u;
              v31 = *(this + 1);
              v2 = *(this + 2);
              v32 = *this;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v69 = 0;
                v70 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(this + 1);
                }

                v71 = v2 - v31;
                v72 = (v32 + v31);
                v73 = v31 + 1;
                while (1)
                {
                  if (!v71)
                  {
                    LODWORD(v35) = 0;
                    *(this + 24) = 1;
                    goto LABEL_133;
                  }

                  v74 = v73;
                  v75 = *v72;
                  *(this + 1) = v74;
                  v35 |= (v75 & 0x7F) << v69;
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
                    LODWORD(v35) = 0;
                    goto LABEL_132;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v35) = 0;
                }

LABEL_132:
                v2 = v74;
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

LABEL_133:
              *(a1 + 56) = v35;
              goto LABEL_138;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 68) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_116;
        }

        if (v22 == 2)
        {
          *(a1 + 68) |= 0x40u;
          v39 = *(this + 1);
          v2 = *(this + 2);
          v40 = *this;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v55 = 0;
            v56 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(this + 1);
            }

            v57 = v2 - v39;
            v58 = (v40 + v39);
            v59 = v39 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v43) = 0;
                *(this + 24) = 1;
                goto LABEL_125;
              }

              v60 = v59;
              v61 = *v58;
              *(this + 1) = v60;
              v43 |= (v61 & 0x7F) << v55;
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
                LODWORD(v43) = 0;
                goto LABEL_124;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_124:
            v2 = v60;
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

LABEL_125:
          *(a1 + 52) = v43;
          goto LABEL_138;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 68) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_73;
            }

            *(a1 + 48) = *(*this + v2);
            v2 = *(this + 1) + 4;
            goto LABEL_117;
          case 4:
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_73;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_116;
          case 5:
            *(a1 + 68) |= 0x100u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v64 = v2 - v23;
              v65 = (v24 + v23);
              v66 = v23 + 1;
              while (1)
              {
                if (!v64)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_129;
                }

                v67 = v66;
                v68 = *v65;
                *(this + 1) = v67;
                v27 |= (v68 & 0x7F) << v62;
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
                  LODWORD(v27) = 0;
                  goto LABEL_128;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_128:
              v2 = v67;
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

LABEL_129:
            *(a1 + 60) = v27;
            goto LABEL_138;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v83 = 0;
        return v83 & 1;
      }

      v2 = *(this + 1);
LABEL_138:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_142:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_19B4D072C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 68);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v7 = *(v3 + 64);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_21:
  v8 = *(v3 + 56);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4D087C(uint64_t result)
{
  *result = &unk_1F0E38CE8;
  *(result + 112) = 0;
  return result;
}

void sub_19B4D08A4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D08DC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 112);
  if ((v5 & 4) != 0)
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "configId");
    v5 = *(a1 + 112);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 28);
  PB::TextFormatter::format(this, "failure");
  v5 = *(a1 + 112);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(a1 + 32);
  PB::TextFormatter::format(this, "frameNum");
  v5 = *(a1 + 112);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(a1 + 36);
  PB::TextFormatter::format(this, "reportId");
  v5 = *(a1 + 112);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(a1 + 40);
  PB::TextFormatter::format(this, "scanError");
  v5 = *(a1 + 112);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  v5 = *(a1 + 112);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(a1 + 44);
  PB::TextFormatter::format(this, "temperature");
  v5 = *(a1 + 112);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  v5 = *(a1 + 112);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = *(a1 + 48);
  PB::TextFormatter::format(this, "ts0CalCount");
  v5 = *(a1 + 112);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "ts0CalnA", *(a1 + 52));
  v5 = *(a1 + 112);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v15 = *(a1 + 56);
  PB::TextFormatter::format(this, "ts0Dark0");
  v5 = *(a1 + 112);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v16 = *(a1 + 60);
  PB::TextFormatter::format(this, "ts0Dark1");
  v5 = *(a1 + 112);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v17 = *(a1 + 64);
  PB::TextFormatter::format(this, "ts0Light");
  v5 = *(a1 + 112);
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
  v18 = *(a1 + 68);
  PB::TextFormatter::format(this, "ts0PdVf");
  v5 = *(a1 + 112);
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
  v19 = *(a1 + 72);
  PB::TextFormatter::format(this, "ts0RxGain");
  v5 = *(a1 + 112);
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
  v20 = *(a1 + 76);
  PB::TextFormatter::format(this, "ts1CalCount");
  v5 = *(a1 + 112);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "ts1CalnA", *(a1 + 80));
  v5 = *(a1 + 112);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a1 + 84);
  PB::TextFormatter::format(this, "ts1Dark0");
  v5 = *(a1 + 112);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a1 + 88);
  PB::TextFormatter::format(this, "ts1Dark1");
  v5 = *(a1 + 112);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = *(a1 + 92);
  PB::TextFormatter::format(this, "ts1Light");
  v5 = *(a1 + 112);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = *(a1 + 96);
  PB::TextFormatter::format(this, "ts1PdVf");
  v5 = *(a1 + 112);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = *(a1 + 100);
  PB::TextFormatter::format(this, "ts1RxGain");
  v5 = *(a1 + 112);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  v26 = *(a1 + 104);
  PB::TextFormatter::format(this, "tx0CurrentuA");
  if ((*(a1 + 112) & 0x800000) != 0)
  {
LABEL_25:
    v6 = *(a1 + 108);
    PB::TextFormatter::format(this, "tx1CurrentuA");
  }

LABEL_26:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D0C20(uint64_t a1, PB::Reader *this)
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
            goto LABEL_440;
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
          *(a1 + 112) |= 2u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_101;
          }

          *(a1 + 16) = *(*this + v22);
          v23 = *(this + 1) + 8;
          goto LABEL_351;
        case 2u:
          *(a1 + 112) |= 1u;
          v107 = *(this + 1);
          v106 = *(this + 2);
          v108 = *this;
          if (v107 <= 0xFFFFFFFFFFFFFFF5 && v107 + 10 <= v106)
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            do
            {
              *(this + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                goto LABEL_402;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
            }

            while (!v14);
LABEL_260:
            v111 = 0;
            goto LABEL_402;
          }

          v269 = 0;
          v270 = 0;
          v111 = 0;
          v17 = v106 >= v107;
          v271 = v106 - v107;
          if (!v17)
          {
            v271 = 0;
          }

          v272 = (v108 + v107);
          v273 = v107 + 1;
          while (2)
          {
            if (v271)
            {
              v274 = *v272;
              *(this + 1) = v273;
              v111 |= (v274 & 0x7F) << v269;
              if (v274 < 0)
              {
                v269 += 7;
                --v271;
                ++v272;
                ++v273;
                v14 = v270++ > 8;
                if (v14)
                {
                  goto LABEL_260;
                }

                continue;
              }

              if (*(this + 24))
              {
                v111 = 0;
              }
            }

            else
            {
              v111 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_402:
          *(a1 + 8) = v111;
          goto LABEL_436;
        case 3u:
          *(a1 + 112) |= 0x20u;
          v79 = *(this + 1);
          v78 = *(this + 2);
          v80 = *this;
          if (v79 <= 0xFFFFFFFFFFFFFFF5 && v79 + 10 <= v78)
          {
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v84 = (v80 + v79);
            v85 = v79 + 1;
            do
            {
              *(this + 1) = v85;
              v86 = *v84++;
              v83 |= (v86 & 0x7F) << v81;
              if ((v86 & 0x80) == 0)
              {
                goto LABEL_393;
              }

              v81 += 7;
              ++v85;
              v14 = v82++ > 8;
            }

            while (!v14);
LABEL_236:
            LODWORD(v83) = 0;
            goto LABEL_393;
          }

          v251 = 0;
          v252 = 0;
          v83 = 0;
          v17 = v78 >= v79;
          v253 = v78 - v79;
          if (!v17)
          {
            v253 = 0;
          }

          v254 = (v80 + v79);
          v255 = v79 + 1;
          while (2)
          {
            if (v253)
            {
              v256 = *v254;
              *(this + 1) = v255;
              v83 |= (v256 & 0x7F) << v251;
              if (v256 < 0)
              {
                v251 += 7;
                --v253;
                ++v254;
                ++v255;
                v14 = v252++ > 8;
                if (v14)
                {
                  goto LABEL_236;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v83) = 0;
              }
            }

            else
            {
              LODWORD(v83) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_393:
          *(a1 + 36) = v83;
          goto LABEL_436;
        case 4u:
          *(a1 + 112) |= 0x10u;
          v89 = *(this + 1);
          v88 = *(this + 2);
          v90 = *this;
          if (v89 <= 0xFFFFFFFFFFFFFFF5 && v89 + 10 <= v88)
          {
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = (v90 + v89);
            v95 = v89 + 1;
            do
            {
              *(this + 1) = v95;
              v96 = *v94++;
              v93 |= (v96 & 0x7F) << v91;
              if ((v96 & 0x80) == 0)
              {
                goto LABEL_396;
              }

              v91 += 7;
              ++v95;
              v14 = v92++ > 8;
            }

            while (!v14);
LABEL_244:
            LODWORD(v93) = 0;
            goto LABEL_396;
          }

          v257 = 0;
          v258 = 0;
          v93 = 0;
          v17 = v88 >= v89;
          v259 = v88 - v89;
          if (!v17)
          {
            v259 = 0;
          }

          v260 = (v90 + v89);
          v261 = v89 + 1;
          while (2)
          {
            if (v259)
            {
              v262 = *v260;
              *(this + 1) = v261;
              v93 |= (v262 & 0x7F) << v257;
              if (v262 < 0)
              {
                v257 += 7;
                --v259;
                ++v260;
                ++v261;
                v14 = v258++ > 8;
                if (v14)
                {
                  goto LABEL_244;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v93) = 0;
              }
            }

            else
            {
              LODWORD(v93) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_396:
          *(a1 + 32) = v93;
          goto LABEL_436;
        case 5u:
          *(a1 + 112) |= 0x40u;
          v52 = *(this + 1);
          v51 = *(this + 2);
          v53 = *this;
          if (v52 <= 0xFFFFFFFFFFFFFFF5 && v52 + 10 <= v51)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = (v53 + v52);
            v58 = v52 + 1;
            do
            {
              *(this + 1) = v58;
              v59 = *v57++;
              v56 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                goto LABEL_384;
              }

              v54 += 7;
              ++v58;
              v14 = v55++ > 8;
            }

            while (!v14);
LABEL_212:
            LODWORD(v56) = 0;
            goto LABEL_384;
          }

          v233 = 0;
          v234 = 0;
          v56 = 0;
          v17 = v51 >= v52;
          v235 = v51 - v52;
          if (!v17)
          {
            v235 = 0;
          }

          v236 = (v53 + v52);
          v237 = v52 + 1;
          while (2)
          {
            if (v235)
            {
              v238 = *v236;
              *(this + 1) = v237;
              v56 |= (v238 & 0x7F) << v233;
              if (v238 < 0)
              {
                v233 += 7;
                --v235;
                ++v236;
                ++v237;
                v14 = v234++ > 8;
                if (v14)
                {
                  goto LABEL_212;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v56) = 0;
              }
            }

            else
            {
              LODWORD(v56) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_384:
          *(a1 + 40) = v56;
          goto LABEL_436;
        case 6u:
          *(a1 + 112) |= 8u;
          v126 = *(this + 1);
          v125 = *(this + 2);
          v127 = *this;
          if (v126 <= 0xFFFFFFFFFFFFFFF5 && v126 + 10 <= v125)
          {
            v128 = 0;
            v129 = 0;
            v130 = 0;
            v131 = (v127 + v126);
            v132 = v126 + 1;
            do
            {
              *(this + 1) = v132;
              v133 = *v131++;
              v130 |= (v133 & 0x7F) << v128;
              if ((v133 & 0x80) == 0)
              {
                goto LABEL_408;
              }

              v128 += 7;
              ++v132;
              v14 = v129++ > 8;
            }

            while (!v14);
LABEL_276:
            LODWORD(v130) = 0;
            goto LABEL_408;
          }

          v281 = 0;
          v282 = 0;
          v130 = 0;
          v17 = v125 >= v126;
          v283 = v125 - v126;
          if (!v17)
          {
            v283 = 0;
          }

          v284 = (v127 + v126);
          v285 = v126 + 1;
          while (2)
          {
            if (v283)
            {
              v286 = *v284;
              *(this + 1) = v285;
              v130 |= (v286 & 0x7F) << v281;
              if (v286 < 0)
              {
                v281 += 7;
                --v283;
                ++v284;
                ++v285;
                v14 = v282++ > 8;
                if (v14)
                {
                  goto LABEL_276;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v130) = 0;
              }
            }

            else
            {
              LODWORD(v130) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_408:
          *(a1 + 28) = v130;
          goto LABEL_436;
        case 7u:
          *(a1 + 112) |= 0x400u;
          v153 = *(this + 1);
          v152 = *(this + 2);
          v154 = *this;
          if (v153 <= 0xFFFFFFFFFFFFFFF5 && v153 + 10 <= v152)
          {
            v155 = 0;
            v156 = 0;
            v157 = 0;
            v158 = (v154 + v153);
            v159 = v153 + 1;
            do
            {
              *(this + 1) = v159;
              v160 = *v158++;
              v157 |= (v160 & 0x7F) << v155;
              if ((v160 & 0x80) == 0)
              {
                goto LABEL_417;
              }

              v155 += 7;
              ++v159;
              v14 = v156++ > 8;
            }

            while (!v14);
LABEL_300:
            LODWORD(v157) = 0;
            goto LABEL_417;
          }

          v299 = 0;
          v300 = 0;
          v157 = 0;
          v17 = v152 >= v153;
          v301 = v152 - v153;
          if (!v17)
          {
            v301 = 0;
          }

          v302 = (v154 + v153);
          v303 = v153 + 1;
          while (2)
          {
            if (v301)
            {
              v304 = *v302;
              *(this + 1) = v303;
              v157 |= (v304 & 0x7F) << v299;
              if (v304 < 0)
              {
                v299 += 7;
                --v301;
                ++v302;
                ++v303;
                v14 = v300++ > 8;
                if (v14)
                {
                  goto LABEL_300;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v157) = 0;
              }
            }

            else
            {
              LODWORD(v157) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_417:
          *(a1 + 56) = v157;
          goto LABEL_436;
        case 8u:
          *(a1 + 112) |= 0x1000u;
          v98 = *(this + 1);
          v97 = *(this + 2);
          v99 = *this;
          if (v98 <= 0xFFFFFFFFFFFFFFF5 && v98 + 10 <= v97)
          {
            v100 = 0;
            v101 = 0;
            v102 = 0;
            v103 = (v99 + v98);
            v104 = v98 + 1;
            do
            {
              *(this + 1) = v104;
              v105 = *v103++;
              v102 |= (v105 & 0x7F) << v100;
              if ((v105 & 0x80) == 0)
              {
                goto LABEL_399;
              }

              v100 += 7;
              ++v104;
              v14 = v101++ > 8;
            }

            while (!v14);
LABEL_252:
            LODWORD(v102) = 0;
            goto LABEL_399;
          }

          v263 = 0;
          v264 = 0;
          v102 = 0;
          v17 = v97 >= v98;
          v265 = v97 - v98;
          if (!v17)
          {
            v265 = 0;
          }

          v266 = (v99 + v98);
          v267 = v98 + 1;
          while (2)
          {
            if (v265)
            {
              v268 = *v266;
              *(this + 1) = v267;
              v102 |= (v268 & 0x7F) << v263;
              if (v268 < 0)
              {
                v263 += 7;
                --v265;
                ++v266;
                ++v267;
                v14 = v264++ > 8;
                if (v14)
                {
                  goto LABEL_252;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v102) = 0;
              }
            }

            else
            {
              LODWORD(v102) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_399:
          *(a1 + 64) = v102;
          goto LABEL_436;
        case 9u:
          *(a1 + 112) |= 0x800u;
          v180 = *(this + 1);
          v179 = *(this + 2);
          v181 = *this;
          if (v180 <= 0xFFFFFFFFFFFFFFF5 && v180 + 10 <= v179)
          {
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v185 = (v181 + v180);
            v186 = v180 + 1;
            do
            {
              *(this + 1) = v186;
              v187 = *v185++;
              v184 |= (v187 & 0x7F) << v182;
              if ((v187 & 0x80) == 0)
              {
                goto LABEL_426;
              }

              v182 += 7;
              ++v186;
              v14 = v183++ > 8;
            }

            while (!v14);
LABEL_324:
            LODWORD(v184) = 0;
            goto LABEL_426;
          }

          v317 = 0;
          v318 = 0;
          v184 = 0;
          v17 = v179 >= v180;
          v319 = v179 - v180;
          if (!v17)
          {
            v319 = 0;
          }

          v320 = (v181 + v180);
          v321 = v180 + 1;
          while (2)
          {
            if (v319)
            {
              v322 = *v320;
              *(this + 1) = v321;
              v184 |= (v322 & 0x7F) << v317;
              if (v322 < 0)
              {
                v317 += 7;
                --v319;
                ++v320;
                ++v321;
                v14 = v318++ > 8;
                if (v14)
                {
                  goto LABEL_324;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v184) = 0;
              }
            }

            else
            {
              LODWORD(v184) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_426:
          *(a1 + 60) = v184;
          goto LABEL_436;
        case 0xAu:
          *(a1 + 112) |= 0x2000u;
          v70 = *(this + 1);
          v69 = *(this + 2);
          v71 = *this;
          if (v70 <= 0xFFFFFFFFFFFFFFF5 && v70 + 10 <= v69)
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            v75 = (v71 + v70);
            v76 = v70 + 1;
            do
            {
              *(this + 1) = v76;
              v77 = *v75++;
              v74 |= (v77 & 0x7F) << v72;
              if ((v77 & 0x80) == 0)
              {
                goto LABEL_390;
              }

              v72 += 7;
              ++v76;
              v14 = v73++ > 8;
            }

            while (!v14);
LABEL_228:
            LODWORD(v74) = 0;
            goto LABEL_390;
          }

          v245 = 0;
          v246 = 0;
          v74 = 0;
          v17 = v69 >= v70;
          v247 = v69 - v70;
          if (!v17)
          {
            v247 = 0;
          }

          v248 = (v71 + v70);
          v249 = v70 + 1;
          while (2)
          {
            if (v247)
            {
              v250 = *v248;
              *(this + 1) = v249;
              v74 |= (v250 & 0x7F) << v245;
              if (v250 < 0)
              {
                v245 += 7;
                --v247;
                ++v248;
                ++v249;
                v14 = v246++ > 8;
                if (v14)
                {
                  goto LABEL_228;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v74) = 0;
              }
            }

            else
            {
              LODWORD(v74) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_390:
          *(a1 + 68) = v74;
          goto LABEL_436;
        case 0xBu:
          *(a1 + 112) |= 0x20000u;
          v171 = *(this + 1);
          v170 = *(this + 2);
          v172 = *this;
          if (v171 <= 0xFFFFFFFFFFFFFFF5 && v171 + 10 <= v170)
          {
            v173 = 0;
            v174 = 0;
            v175 = 0;
            v176 = (v172 + v171);
            v177 = v171 + 1;
            do
            {
              *(this + 1) = v177;
              v178 = *v176++;
              v175 |= (v178 & 0x7F) << v173;
              if ((v178 & 0x80) == 0)
              {
                goto LABEL_423;
              }

              v173 += 7;
              ++v177;
              v14 = v174++ > 8;
            }

            while (!v14);
LABEL_316:
            LODWORD(v175) = 0;
            goto LABEL_423;
          }

          v311 = 0;
          v312 = 0;
          v175 = 0;
          v17 = v170 >= v171;
          v313 = v170 - v171;
          if (!v17)
          {
            v313 = 0;
          }

          v314 = (v172 + v171);
          v315 = v171 + 1;
          while (2)
          {
            if (v313)
            {
              v316 = *v314;
              *(this + 1) = v315;
              v175 |= (v316 & 0x7F) << v311;
              if (v316 < 0)
              {
                v311 += 7;
                --v313;
                ++v314;
                ++v315;
                v14 = v312++ > 8;
                if (v14)
                {
                  goto LABEL_316;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v175) = 0;
              }
            }

            else
            {
              LODWORD(v175) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_423:
          *(a1 + 84) = v175;
          goto LABEL_436;
        case 0xCu:
          *(a1 + 112) |= 0x80000u;
          v43 = *(this + 1);
          v42 = *(this + 2);
          v44 = *this;
          if (v43 <= 0xFFFFFFFFFFFFFFF5 && v43 + 10 <= v42)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            do
            {
              *(this + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                goto LABEL_381;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
            }

            while (!v14);
LABEL_204:
            LODWORD(v47) = 0;
            goto LABEL_381;
          }

          v227 = 0;
          v228 = 0;
          v47 = 0;
          v17 = v42 >= v43;
          v229 = v42 - v43;
          if (!v17)
          {
            v229 = 0;
          }

          v230 = (v44 + v43);
          v231 = v43 + 1;
          while (2)
          {
            if (v229)
            {
              v232 = *v230;
              *(this + 1) = v231;
              v47 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                --v229;
                ++v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_204;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v47) = 0;
              }
            }

            else
            {
              LODWORD(v47) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_381:
          *(a1 + 92) = v47;
          goto LABEL_436;
        case 0xDu:
          *(a1 + 112) |= 0x40000u;
          v61 = *(this + 1);
          v60 = *(this + 2);
          v62 = *this;
          if (v61 <= 0xFFFFFFFFFFFFFFF5 && v61 + 10 <= v60)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = (v62 + v61);
            v67 = v61 + 1;
            do
            {
              *(this + 1) = v67;
              v68 = *v66++;
              v65 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                goto LABEL_387;
              }

              v63 += 7;
              ++v67;
              v14 = v64++ > 8;
            }

            while (!v14);
LABEL_220:
            LODWORD(v65) = 0;
            goto LABEL_387;
          }

          v239 = 0;
          v240 = 0;
          v65 = 0;
          v17 = v60 >= v61;
          v241 = v60 - v61;
          if (!v17)
          {
            v241 = 0;
          }

          v242 = (v62 + v61);
          v243 = v61 + 1;
          while (2)
          {
            if (v241)
            {
              v244 = *v242;
              *(this + 1) = v243;
              v65 |= (v244 & 0x7F) << v239;
              if (v244 < 0)
              {
                v239 += 7;
                --v241;
                ++v242;
                ++v243;
                v14 = v240++ > 8;
                if (v14)
                {
                  goto LABEL_220;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v65) = 0;
              }
            }

            else
            {
              LODWORD(v65) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_387:
          *(a1 + 88) = v65;
          goto LABEL_436;
        case 0xEu:
          *(a1 + 112) |= 0x100000u;
          v144 = *(this + 1);
          v143 = *(this + 2);
          v145 = *this;
          if (v144 <= 0xFFFFFFFFFFFFFFF5 && v144 + 10 <= v143)
          {
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = (v145 + v144);
            v150 = v144 + 1;
            do
            {
              *(this + 1) = v150;
              v151 = *v149++;
              v148 |= (v151 & 0x7F) << v146;
              if ((v151 & 0x80) == 0)
              {
                goto LABEL_414;
              }

              v146 += 7;
              ++v150;
              v14 = v147++ > 8;
            }

            while (!v14);
LABEL_292:
            LODWORD(v148) = 0;
            goto LABEL_414;
          }

          v293 = 0;
          v294 = 0;
          v148 = 0;
          v17 = v143 >= v144;
          v295 = v143 - v144;
          if (!v17)
          {
            v295 = 0;
          }

          v296 = (v145 + v144);
          v297 = v144 + 1;
          while (2)
          {
            if (v295)
            {
              v298 = *v296;
              *(this + 1) = v297;
              v148 |= (v298 & 0x7F) << v293;
              if (v298 < 0)
              {
                v293 += 7;
                --v295;
                ++v296;
                ++v297;
                v14 = v294++ > 8;
                if (v14)
                {
                  goto LABEL_292;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v148) = 0;
              }
            }

            else
            {
              LODWORD(v148) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_414:
          *(a1 + 96) = v148;
          goto LABEL_436;
        case 0xFu:
          *(a1 + 112) |= 0x100u;
          v34 = *(this + 1);
          v33 = *(this + 2);
          v35 = *this;
          if (v34 <= 0xFFFFFFFFFFFFFFF5 && v34 + 10 <= v33)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = (v35 + v34);
            v40 = v34 + 1;
            do
            {
              *(this + 1) = v40;
              v41 = *v39++;
              v38 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                goto LABEL_378;
              }

              v36 += 7;
              ++v40;
              v14 = v37++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v38) = 0;
            goto LABEL_378;
          }

          v221 = 0;
          v222 = 0;
          v38 = 0;
          v17 = v33 >= v34;
          v223 = v33 - v34;
          if (!v17)
          {
            v223 = 0;
          }

          v224 = (v35 + v34);
          v225 = v34 + 1;
          while (2)
          {
            if (v223)
            {
              v226 = *v224;
              *(this + 1) = v225;
              v38 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                --v223;
                ++v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_196;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v38) = 0;
              }
            }

            else
            {
              LODWORD(v38) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_378:
          *(a1 + 48) = v38;
          goto LABEL_436;
        case 0x10u:
          *(a1 + 112) |= 0x200u;
          v87 = *(this + 1);
          if (v87 > 0xFFFFFFFFFFFFFFFBLL || v87 + 4 > *(this + 2))
          {
            goto LABEL_101;
          }

          *(a1 + 52) = *(*this + v87);
          goto LABEL_350;
        case 0x11u:
          *(a1 + 112) |= 0x8000u;
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
                goto LABEL_375;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
            }

            while (!v14);
LABEL_188:
            LODWORD(v29) = 0;
            goto LABEL_375;
          }

          v215 = 0;
          v216 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v217 = v24 - v25;
          if (!v17)
          {
            v217 = 0;
          }

          v218 = (v26 + v25);
          v219 = v25 + 1;
          while (2)
          {
            if (v217)
            {
              v220 = *v218;
              *(this + 1) = v219;
              v29 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                --v217;
                ++v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }
            }

            else
            {
              LODWORD(v29) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_375:
          *(a1 + 76) = v29;
          goto LABEL_436;
        case 0x12u:
          *(a1 + 112) |= 0x10000u;
          v115 = *(this + 1);
          if (v115 <= 0xFFFFFFFFFFFFFFFBLL && v115 + 4 <= *(this + 2))
          {
            *(a1 + 80) = *(*this + v115);
LABEL_350:
            v23 = *(this + 1) + 4;
LABEL_351:
            *(this + 1) = v23;
          }

          else
          {
LABEL_101:
            *(this + 24) = 1;
          }

          goto LABEL_436;
        case 0x13u:
          *(a1 + 112) |= 0x4000u;
          v162 = *(this + 1);
          v161 = *(this + 2);
          v163 = *this;
          if (v162 <= 0xFFFFFFFFFFFFFFF5 && v162 + 10 <= v161)
          {
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v167 = (v163 + v162);
            v168 = v162 + 1;
            do
            {
              *(this + 1) = v168;
              v169 = *v167++;
              v166 |= (v169 & 0x7F) << v164;
              if ((v169 & 0x80) == 0)
              {
                goto LABEL_420;
              }

              v164 += 7;
              ++v168;
              v14 = v165++ > 8;
            }

            while (!v14);
LABEL_308:
            LODWORD(v166) = 0;
            goto LABEL_420;
          }

          v305 = 0;
          v306 = 0;
          v166 = 0;
          v17 = v161 >= v162;
          v307 = v161 - v162;
          if (!v17)
          {
            v307 = 0;
          }

          v308 = (v163 + v162);
          v309 = v162 + 1;
          while (2)
          {
            if (v307)
            {
              v310 = *v308;
              *(this + 1) = v309;
              v166 |= (v310 & 0x7F) << v305;
              if (v310 < 0)
              {
                v305 += 7;
                --v307;
                ++v308;
                ++v309;
                v14 = v306++ > 8;
                if (v14)
                {
                  goto LABEL_308;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v166) = 0;
              }
            }

            else
            {
              LODWORD(v166) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_420:
          *(a1 + 72) = v166;
          goto LABEL_436;
        case 0x14u:
          *(a1 + 112) |= 0x200000u;
          v198 = *(this + 1);
          v197 = *(this + 2);
          v199 = *this;
          if (v198 <= 0xFFFFFFFFFFFFFFF5 && v198 + 10 <= v197)
          {
            v200 = 0;
            v201 = 0;
            v202 = 0;
            v203 = (v199 + v198);
            v204 = v198 + 1;
            do
            {
              *(this + 1) = v204;
              v205 = *v203++;
              v202 |= (v205 & 0x7F) << v200;
              if ((v205 & 0x80) == 0)
              {
                goto LABEL_432;
              }

              v200 += 7;
              ++v204;
              v14 = v201++ > 8;
            }

            while (!v14);
LABEL_340:
            LODWORD(v202) = 0;
            goto LABEL_432;
          }

          v329 = 0;
          v330 = 0;
          v202 = 0;
          v17 = v197 >= v198;
          v331 = v197 - v198;
          if (!v17)
          {
            v331 = 0;
          }

          v332 = (v199 + v198);
          v333 = v198 + 1;
          while (2)
          {
            if (v331)
            {
              v334 = *v332;
              *(this + 1) = v333;
              v202 |= (v334 & 0x7F) << v329;
              if (v334 < 0)
              {
                v329 += 7;
                --v331;
                ++v332;
                ++v333;
                v14 = v330++ > 8;
                if (v14)
                {
                  goto LABEL_340;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v202) = 0;
              }
            }

            else
            {
              LODWORD(v202) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_432:
          *(a1 + 100) = v202;
          goto LABEL_436;
        case 0x15u:
          *(a1 + 112) |= 0x80u;
          v117 = *(this + 1);
          v116 = *(this + 2);
          v118 = *this;
          if (v117 <= 0xFFFFFFFFFFFFFFF5 && v117 + 10 <= v116)
          {
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = (v118 + v117);
            v123 = v117 + 1;
            do
            {
              *(this + 1) = v123;
              v124 = *v122++;
              v121 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                goto LABEL_405;
              }

              v119 += 7;
              ++v123;
              v14 = v120++ > 8;
            }

            while (!v14);
LABEL_268:
            LODWORD(v121) = 0;
            goto LABEL_405;
          }

          v275 = 0;
          v276 = 0;
          v121 = 0;
          v17 = v116 >= v117;
          v277 = v116 - v117;
          if (!v17)
          {
            v277 = 0;
          }

          v278 = (v118 + v117);
          v279 = v117 + 1;
          while (2)
          {
            if (v277)
            {
              v280 = *v278;
              *(this + 1) = v279;
              v121 |= (v280 & 0x7F) << v275;
              if (v280 < 0)
              {
                v275 += 7;
                --v277;
                ++v278;
                ++v279;
                v14 = v276++ > 8;
                if (v14)
                {
                  goto LABEL_268;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v121) = 0;
              }
            }

            else
            {
              LODWORD(v121) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_405:
          *(a1 + 44) = v121;
          goto LABEL_436;
        case 0x16u:
          *(a1 + 112) |= 4u;
          v135 = *(this + 1);
          v134 = *(this + 2);
          v136 = *this;
          if (v135 <= 0xFFFFFFFFFFFFFFF5 && v135 + 10 <= v134)
          {
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = (v136 + v135);
            v141 = v135 + 1;
            do
            {
              *(this + 1) = v141;
              v142 = *v140++;
              v139 |= (v142 & 0x7F) << v137;
              if ((v142 & 0x80) == 0)
              {
                goto LABEL_411;
              }

              v137 += 7;
              ++v141;
              v14 = v138++ > 8;
            }

            while (!v14);
LABEL_284:
            LODWORD(v139) = 0;
            goto LABEL_411;
          }

          v287 = 0;
          v288 = 0;
          v139 = 0;
          v17 = v134 >= v135;
          v289 = v134 - v135;
          if (!v17)
          {
            v289 = 0;
          }

          v290 = (v136 + v135);
          v291 = v135 + 1;
          while (2)
          {
            if (v289)
            {
              v292 = *v290;
              *(this + 1) = v291;
              v139 |= (v292 & 0x7F) << v287;
              if (v292 < 0)
              {
                v287 += 7;
                --v289;
                ++v290;
                ++v291;
                v14 = v288++ > 8;
                if (v14)
                {
                  goto LABEL_284;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v139) = 0;
              }
            }

            else
            {
              LODWORD(v139) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_411:
          *(a1 + 24) = v139;
          goto LABEL_436;
        case 0x17u:
          *(a1 + 112) |= 0x400000u;
          v189 = *(this + 1);
          v188 = *(this + 2);
          v190 = *this;
          if (v189 <= 0xFFFFFFFFFFFFFFF5 && v189 + 10 <= v188)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = (v190 + v189);
            v195 = v189 + 1;
            do
            {
              *(this + 1) = v195;
              v196 = *v194++;
              v193 |= (v196 & 0x7F) << v191;
              if ((v196 & 0x80) == 0)
              {
                goto LABEL_429;
              }

              v191 += 7;
              ++v195;
              v14 = v192++ > 8;
            }

            while (!v14);
LABEL_332:
            LODWORD(v193) = 0;
            goto LABEL_429;
          }

          v323 = 0;
          v324 = 0;
          v193 = 0;
          v17 = v188 >= v189;
          v325 = v188 - v189;
          if (!v17)
          {
            v325 = 0;
          }

          v326 = (v190 + v189);
          v327 = v189 + 1;
          while (2)
          {
            if (v325)
            {
              v328 = *v326;
              *(this + 1) = v327;
              v193 |= (v328 & 0x7F) << v323;
              if (v328 < 0)
              {
                v323 += 7;
                --v325;
                ++v326;
                ++v327;
                v14 = v324++ > 8;
                if (v14)
                {
                  goto LABEL_332;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v193) = 0;
              }
            }

            else
            {
              LODWORD(v193) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_429:
          *(a1 + 104) = v193;
          goto LABEL_436;
        case 0x18u:
          *(a1 + 112) |= 0x800000u;
          v207 = *(this + 1);
          v206 = *(this + 2);
          v208 = *this;
          if (v207 <= 0xFFFFFFFFFFFFFFF5 && v207 + 10 <= v206)
          {
            v209 = 0;
            v210 = 0;
            v211 = 0;
            v212 = (v208 + v207);
            v213 = v207 + 1;
            do
            {
              *(this + 1) = v213;
              v214 = *v212++;
              v211 |= (v214 & 0x7F) << v209;
              if ((v214 & 0x80) == 0)
              {
                goto LABEL_435;
              }

              v209 += 7;
              ++v213;
              v14 = v210++ > 8;
            }

            while (!v14);
LABEL_348:
            LODWORD(v211) = 0;
            goto LABEL_435;
          }

          v335 = 0;
          v336 = 0;
          v211 = 0;
          v17 = v206 >= v207;
          v337 = v206 - v207;
          if (!v17)
          {
            v337 = 0;
          }

          v338 = (v208 + v207);
          v339 = v207 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_436;
          }

          v342 = 0;
          return v342 & 1;
      }

      while (1)
      {
        if (!v337)
        {
          LODWORD(v211) = 0;
          *(this + 24) = 1;
          goto LABEL_435;
        }

        v340 = *v338;
        *(this + 1) = v339;
        v211 |= (v340 & 0x7F) << v335;
        if ((v340 & 0x80) == 0)
        {
          break;
        }

        v335 += 7;
        --v337;
        ++v338;
        ++v339;
        v14 = v336++ > 8;
        if (v14)
        {
          goto LABEL_348;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v211) = 0;
      }

LABEL_435:
      *(a1 + 108) = v211;
LABEL_436:
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

LABEL_440:
  v342 = v4 ^ 1;
  return v342 & 1;
}

uint64_t sub_19B4D2228(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 112);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 112);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v14 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v15 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x40000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x100000) == 0)
  {
LABEL_15:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_16:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 112);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x10000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 112);
  if ((v4 & 0x4000) == 0)
  {
LABEL_20:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x200000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v24 = *(v3 + 104);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 112) & 0x800000) == 0)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_47:
  v23 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 112);
  if ((v4 & 0x400000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v4 & 0x800000) == 0)
  {
    return result;
  }

LABEL_49:
  v25 = *(v3 + 108);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4D2500(uint64_t result)
{
  *result = &unk_1F0E2E120;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_19B4D252C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D2564(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "status");
    v5 = *(a1 + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 12));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D25E0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4D28AC(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4D2918(uint64_t result)
{
  *result = &unk_1F0E2DD30;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_19B4D293C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2DD30;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4D29BC(PB::Base *a1)
{
  sub_19B4D293C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D29F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 32) & 2) != 0)
  {
    v5 = *(a1 + 24);
    PB::TextFormatter::format(this, "location");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "magnetometer");
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(a1 + 16);
    PB::TextFormatter::format(this, "sensorTime");
    v7 = *(a1 + 32);
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(a1 + 28);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D2AC4(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 4u;
          v42 = *(this + 1);
          v41 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
          {
            v62 = 0;
            v63 = 0;
            v46 = 0;
            v17 = v41 >= v42;
            v64 = v41 - v42;
            if (!v17)
            {
              v64 = 0;
            }

            v65 = (v43 + v42);
            v66 = v42 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v46) = 0;
                *(this + 24) = 1;
                goto LABEL_86;
              }

              v67 = *v65;
              *(this + 1) = v66;
              v46 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              --v64;
              ++v65;
              ++v66;
              v14 = v63++ > 8;
              if (v14)
              {
LABEL_74:
                LODWORD(v46) = 0;
                goto LABEL_86;
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
                goto LABEL_74;
              }
            }
          }

LABEL_86:
          *(a1 + 28) = v46;
          goto LABEL_87;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 1u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v56 = 0;
            v57 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v58 = v32 - v33;
            if (!v17)
            {
              v58 = 0;
            }

            v59 = (v34 + v33);
            v60 = v33 + 1;
            while (1)
            {
              if (!v58)
              {
                v37 = 0;
                *(this + 24) = 1;
                goto LABEL_83;
              }

              v61 = *v59;
              *(this + 1) = v60;
              v37 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              --v58;
              ++v59;
              ++v60;
              v14 = v57++ > 8;
              if (v14)
              {
LABEL_66:
                v37 = 0;
                goto LABEL_83;
              }
            }

            if (*(this + 24))
            {
              v37 = 0;
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
                goto LABEL_66;
              }
            }
          }

LABEL_83:
          *(a1 + 16) = v37;
          goto LABEL_87;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v50 = 0;
            v51 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v52 = v23 - v24;
            if (!v17)
            {
              v52 = 0;
            }

            v53 = (v25 + v24);
            v54 = v24 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_80;
              }

              v55 = *v53;
              *(this + 1) = v54;
              v28 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              --v52;
              ++v53;
              ++v54;
              v14 = v51++ > 8;
              if (v14)
              {
LABEL_58:
                LODWORD(v28) = 0;
                goto LABEL_80;
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

LABEL_80:
          *(a1 + 24) = v28;
          goto LABEL_87;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v69 = 0;
        return v69 & 1;
      }

LABEL_87:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_91:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t sub_19B4D2FDC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 32);
  if ((v5 & 2) == 0)
  {
    if ((*(v3 + 32) & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 32);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v5 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

void *sub_19B4D307C(void *result)
{
  *result = &unk_1F0E2C830;
  result[1] = 0;
  return result;
}

void sub_19B4D309C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2C830;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4D311C(PB::Base *a1)
{
  sub_19B4D309C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D3154(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D31D0(int a1, PB::Reader *this)
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