uint64_t sub_19B4DBD90(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 192))
  {
    result = PB::Writer::write(this, *(result + 152));
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

  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
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

  v16 = *(v3 + 192);
  if ((v16 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 184));
    v16 = *(v3 + 192);
    if ((v16 & 0x40) == 0)
    {
LABEL_17:
      if ((v16 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v16 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  v23 = *(v3 + 180);
  result = PB::Writer::writeVarInt(this);
  v16 = *(v3 + 192);
  if ((v16 & 0x100) == 0)
  {
LABEL_18:
    if ((v16 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = *(v3 + 188);
  result = PB::Writer::writeVarInt(this);
  v16 = *(v3 + 192);
  if ((v16 & 4) == 0)
  {
LABEL_19:
    if ((v16 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 164));
  v16 = *(v3 + 192);
  if ((v16 & 8) == 0)
  {
LABEL_20:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 168));
  v16 = *(v3 + 192);
  if ((v16 & 0x20) == 0)
  {
LABEL_21:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_37:
    result = PB::Writer::write(this, *(v3 + 172));
    if ((*(v3 + 192) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_36:
  v25 = *(v3 + 176);
  result = PB::Writer::writeVarInt(this);
  v16 = *(v3 + 192);
  if ((v16 & 0x10) != 0)
  {
    goto LABEL_37;
  }

LABEL_22:
  if ((v16 & 2) != 0)
  {
LABEL_23:
    result = PB::Writer::write(this, *(v3 + 160));
  }

LABEL_24:
  v17 = *(v3 + 104);
  v18 = *(v3 + 112);
  while (v17 != v18)
  {
    v19 = *v17++;
    result = PB::Writer::write(this, v19);
  }

  v21 = *(v3 + 128);
  v20 = *(v3 + 136);
  while (v21 != v20)
  {
    v22 = *v21++;
    result = PB::Writer::write(this, v22);
  }

  return result;
}

uint64_t sub_19B4DBF74(uint64_t result)
{
  *result = &unk_1F0E30880;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B4DBFA0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DBFD8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "eventTag");
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
  PB::TextFormatter::format(this, "location");
  if (*(a1 + 24))
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DC07C(uint64_t a1, PB::Reader *this)
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
        *(a1 + 24) |= 2u;
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
        *(a1 + 16) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 4u;
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
        *(a1 + 20) = v27;
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

uint64_t sub_19B4DC454(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 24) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(v3 + 20);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 24);
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

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4DC4E0(uint64_t result)
{
  *result = &unk_1F0E38DC8;
  *(result + 40) = 0;
  return result;
}

void sub_19B4DC508(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DC540(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "machAbsTimestamp", *(a1 + 8));
    v5 = *(a1 + 40);
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

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "pressure", *(a1 + 16));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "relativeAltitude", *(a1 + 24));
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DC604(uint64_t a1, PB::Reader *this)
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
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
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
          *(a1 + 40) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 8;
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

uint64_t sub_19B4DC88C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 40) & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B4DC934(uint64_t result)
{
  *result = &unk_1F0E30848;
  *(result + 64) = 0;
  return result;
}

void sub_19B4DC95C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DC994(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "accelBiasZ", *(a1 + 24));
    v5 = *(a1 + 64);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x800) == 0)
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

  PB::TextFormatter::format(this, "accelZ", *(a1 + 28));
  v5 = *(a1 + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = *(a1 + 60);
  PB::TextFormatter::format(this, "compensate");
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "height", *(a1 + 32));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "inertialCompOffset", *(a1 + 36));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "inertialCompPressure", *(a1 + 40));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "kfPressure", *(a1 + 44));
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
  PB::TextFormatter::format(this, "rawPressure", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "rawPressureTemperature", *(a1 + 52));
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "rawPressureTimestamp");
  v5 = *(a1 + 64);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 64) & 0x400) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 56));
  }

LABEL_14:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DCB58(uint64_t a1, PB::Reader *this)
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
            goto LABEL_116;
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
              *(a1 + 64) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_79:
                *(this + 24) = 1;
                goto LABEL_112;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_101;
            case 0xB:
              *(a1 + 64) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 36) = *(*this + v2);
              goto LABEL_101;
            case 0xC:
              *(a1 + 64) |= 0x800u;
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

              *(a1 + 60) = v32;
              goto LABEL_112;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 64) |= 1u;
              v33 = *(this + 1);
              v2 = *(this + 2);
              v34 = *this;
              if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
              {
                v48 = 0;
                v49 = 0;
                v37 = 0;
                if (v2 <= v33)
                {
                  v2 = *(this + 1);
                }

                v50 = v2 - v33;
                v51 = (v34 + v33);
                v52 = v33 + 1;
                while (1)
                {
                  if (!v50)
                  {
                    v37 = 0;
                    *(this + 24) = 1;
                    goto LABEL_111;
                  }

                  v53 = v52;
                  v54 = *v51;
                  *(this + 1) = v53;
                  v37 |= (v54 & 0x7F) << v48;
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
                    v37 = 0;
                    goto LABEL_110;
                  }
                }

                if (*(this + 24))
                {
                  v37 = 0;
                }

LABEL_110:
                v2 = v53;
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

LABEL_111:
              *(a1 + 8) = v37;
              goto LABEL_112;
            case 8:
              *(a1 + 64) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_101;
            case 9:
              *(a1 + 64) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 52) = *(*this + v2);
              goto LABEL_101;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 64) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_101;
          case 5:
            *(a1 + 64) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_101;
          case 6:
            *(a1 + 64) |= 2u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v41 = 0;
              v42 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v43 = v2 - v23;
              v44 = (v24 + v23);
              v45 = v23 + 1;
              while (1)
              {
                if (!v43)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_107;
                }

                v46 = v45;
                v47 = *v44;
                *(this + 1) = v46;
                v27 |= (v47 & 0x7F) << v41;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                --v43;
                ++v44;
                v45 = v46 + 1;
                v14 = v42++ > 8;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_106;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_106:
              v2 = v46;
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

LABEL_107:
            *(a1 + 16) = v27;
            goto LABEL_112;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 64) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_101;
          case 2:
            *(a1 + 64) |= 0x400u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_101;
          case 3:
            *(a1 + 64) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 28) = *(*this + v2);
LABEL_101:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_112;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v55 = 0;
        return v55 & 1;
      }

      v2 = *(this + 1);
LABEL_112:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_116:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t sub_19B4DD194(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 64);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(result + 64) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 28));
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
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 36));
    if ((*(v3 + 64) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_25:
  v7 = *(v3 + 60);

  return PB::Writer::write(this);
}

uint64_t sub_19B4DD31C(uint64_t result)
{
  *result = &unk_1F0E2F460;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B4DD340(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2F460;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4DD3C0(PB::Base *a1)
{
  sub_19B4DD340(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DD3F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format(this, "lastConvergenceTimestamp", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DD490(uint64_t a1, PB::Reader *this)
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

double sub_19B4DD750(uint64_t a1)
{
  *a1 = &unk_1F0E2D6A0;
  *(a1 + 160) = 0;
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
  return result;
}

uint64_t sub_19B4DD79C(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4DD804(uint64_t result)
{
  *result = &unk_1F0E38E00;
  *(result + 44) = 0;
  return result;
}

void sub_19B4DD82C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DD864(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if (v5)
  {
    PB::TextFormatter::format(this, "dThetaNorm", *(a1 + 8));
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

  PB::TextFormatter::format(this, "lastCorrespondenceTimestamp", *(a1 + 16));
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
  PB::TextFormatter::format(this, "lastUpdateTimestamp", *(a1 + 24));
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
  PB::TextFormatter::format(this, "state");
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DD948(uint64_t a1, PB::Reader *this)
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
          *(a1 + 44) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_48;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_47;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_47;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 44) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_41;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_47;
          case 4:
            *(a1 + 44) |= 0x10u;
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

            *(a1 + 40) = v24;
            goto LABEL_48;
          case 5:
            *(a1 + 44) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_41;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_47:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_48;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_48:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_52:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B4DDC1C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = *(v3 + 40);
    result = PB::Writer::write(this);
    if ((*(v3 + 44) & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_11:
  v6 = *(v3 + 8);

  return PB::Writer::write(this, v6);
}

void *sub_19B4DDCE0(void *result)
{
  *result = &unk_1F0E2EA50;
  result[1] = 0;
  return result;
}

void sub_19B4DDD00(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2EA50;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4DDD80(PB::Base *a1)
{
  sub_19B4DDD00(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DDDB8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DDE34(int a1, PB::Reader *this)
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

uint64_t sub_19B4DE084(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B4DE0A0(void *result)
{
  *result = &unk_1F0E38E38;
  result[1] = 0;
  return result;
}

void sub_19B4DE0C0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E38E38;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4DE140(PB::Base *a1)
{
  sub_19B4DE0C0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DE178(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DE1F4(int a1, PB::Reader *this)
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

double sub_19B4DE444(uint64_t a1)
{
  *a1 = &unk_1F0E2CBE8;
  *(a1 + 88) = 0;
  *(a1 + 124) = 0;
  *(a1 + 132) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t sub_19B4DE480(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void sub_19B4DE49C(PB::Base *this)
{
  *this = &unk_1F0E2CBE8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

void sub_19B4DE540(PB::Base *a1)
{
  sub_19B4DE49C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DE578(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 132);
  if ((v5 & 0x10) != 0)
  {
    v16 = *(a1 + 96);
    PB::TextFormatter::format(this, "activity");
    v5 = *(a1 + 132);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "arrivalTimestamp", *(a1 + 100));
  if (*(a1 + 132))
  {
LABEL_4:
    v6 = *(a1 + 56);
    PB::TextFormatter::format(this, "btcTimestamp");
  }

LABEL_5:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "filteredAcceleration", v9);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "gyroBias", v12);
  }

  v13 = *(a1 + 132);
  if ((v13 & 0x1000) != 0)
  {
    v17 = *(a1 + 128);
    PB::TextFormatter::format(this, "isIEDEnabled");
    v13 = *(a1 + 132);
    if ((v13 & 0x2000) == 0)
    {
LABEL_11:
      if ((v13 & 0x4000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  else if ((*(a1 + 132) & 0x2000) == 0)
  {
    goto LABEL_11;
  }

  v18 = *(a1 + 129);
  PB::TextFormatter::format(this, "isInEar");
  v13 = *(a1 + 132);
  if ((v13 & 0x4000) == 0)
  {
LABEL_12:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(a1 + 130);
  PB::TextFormatter::format(this, "isVirtual");
  v13 = *(a1 + 132);
  if ((v13 & 0x40) == 0)
  {
LABEL_13:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = *(a1 + 104);
  PB::TextFormatter::format(this, "location");
  v13 = *(a1 + 132);
  if ((v13 & 0x80) == 0)
  {
LABEL_14:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = *(a1 + 108);
  PB::TextFormatter::format(this, "quiescentMode");
  v13 = *(a1 + 132);
  if ((v13 & 0x100) == 0)
  {
LABEL_15:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "quiescentNoise", *(a1 + 112));
  v13 = *(a1 + 132);
  if ((v13 & 0x200) == 0)
  {
LABEL_16:
    if ((v13 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "sampleLatency", *(a1 + 116));
  v13 = *(a1 + 132);
  if ((v13 & 2) == 0)
  {
LABEL_17:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "sensorTimeUponReceival", *(a1 + 64));
  v13 = *(a1 + 132);
  if ((v13 & 0x400) == 0)
  {
LABEL_18:
    if ((v13 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = *(a1 + 120);
  PB::TextFormatter::format(this, "sequenceNumber");
  v13 = *(a1 + 132);
  if ((v13 & 4) == 0)
  {
LABEL_19:
    if ((v13 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_40:
  PB::TextFormatter::format(this, "sourceTimestampToCFAbsoluteTime", *(a1 + 72));
  if ((*(a1 + 132) & 8) != 0)
  {
LABEL_20:
    PB::TextFormatter::format(this, "sourceTimestampToMachContinuous", *(a1 + 80));
  }

LABEL_21:
  v14 = *(a1 + 88);
  if (v14)
  {
    (*(*v14 + 32))(v14, this, "super");
  }

  if ((*(a1 + 132) & 0x800) != 0)
  {
    v15 = *(a1 + 124);
    PB::TextFormatter::format(this, "timeSyncStatus");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DE838(uint64_t a1, PB::Reader *this)
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
        goto LABEL_249;
      }

      switch((v10 >> 3))
      {
        case 1u:
          operator new();
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_251:
              v190 = 0;
              return v190 & 1;
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
                  goto LABEL_252;
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
                goto LABEL_191;
              }

              *(v87 - 1) = *(*this + v98);
              v84 = *(this + 2);
              v83 = *(this + 1) + 4;
              *(this + 1) = v83;
            }

LABEL_192:
            PB::Reader::recallMark();
          }

          else
          {
            v156 = *(a1 + 16);
            v155 = *(a1 + 24);
            if (v156 >= v155)
            {
              v175 = *(a1 + 8);
              v176 = v156 - v175;
              v177 = (v156 - v175) >> 2;
              v178 = v177 + 1;
              if ((v177 + 1) >> 62)
              {
LABEL_252:
                sub_19B5BE690();
              }

              v179 = v155 - v175;
              if (v179 >> 1 > v178)
              {
                v178 = v179 >> 1;
              }

              if (v179 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v180 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v180 = v178;
              }

              if (v180)
              {
                sub_19B4C4FA8(a1 + 8, v180);
              }

              v185 = (v156 - v175) >> 2;
              v186 = (4 * v177);
              v187 = (4 * v177 - 4 * v185);
              *v186 = 0;
              v130 = v186 + 1;
              memcpy(v187, v175, v176);
              v188 = *(a1 + 8);
              *(a1 + 8) = v187;
              *(a1 + 16) = v130;
              *(a1 + 24) = 0;
              if (v188)
              {
                operator delete(v188);
              }
            }

            else
            {
              *v156 = 0;
              v130 = v156 + 4;
            }

            *(a1 + 16) = v130;
LABEL_239:
            v189 = *(this + 1);
            if (v189 <= 0xFFFFFFFFFFFFFFFBLL && v189 + 4 <= *(this + 2))
            {
              *(v130 - 1) = *(*this + v189);
LABEL_243:
              v117 = *(this + 1) + 4;
LABEL_244:
              *(this + 1) = v117;
            }

            else
            {
LABEL_241:
              *(this + 24) = 1;
            }
          }

LABEL_245:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_249;
          }

          break;
        case 3u:
          *(a1 + 132) |= 0x100u;
          v63 = *(this + 1);
          if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(this + 2))
          {
            goto LABEL_241;
          }

          *(a1 + 112) = *(*this + v63);
          goto LABEL_243;
        case 4u:
          *(a1 + 132) |= 0x80u;
          v66 = *(this + 1);
          v65 = *(this + 2);
          v67 = *this;
          if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            do
            {
              *(this + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_223;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_160:
            LODWORD(v70) = 0;
            goto LABEL_223;
          }

          v143 = 0;
          v144 = 0;
          v70 = 0;
          v17 = v65 >= v66;
          v145 = v65 - v66;
          if (!v17)
          {
            v145 = 0;
          }

          v146 = (v67 + v66);
          v147 = v66 + 1;
          while (2)
          {
            if (v145)
            {
              v148 = *v146;
              *(this + 1) = v147;
              v70 |= (v148 & 0x7F) << v143;
              if (v148 < 0)
              {
                v143 += 7;
                --v145;
                ++v146;
                ++v147;
                v14 = v144++ > 8;
                if (v14)
                {
                  goto LABEL_160;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v70) = 0;
              }
            }

            else
            {
              LODWORD(v70) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_223:
          *(a1 + 108) = v70;
          goto LABEL_245;
        case 5u:
          *(a1 + 132) |= 0x40u;
          v45 = *(this + 1);
          v44 = *(this + 2);
          v46 = *this;
          if (v45 <= 0xFFFFFFFFFFFFFFF5 && v45 + 10 <= v44)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            do
            {
              *(this + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_217;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
            }

            while (!v14);
LABEL_144:
            LODWORD(v49) = 0;
            goto LABEL_217;
          }

          v131 = 0;
          v132 = 0;
          v49 = 0;
          v17 = v44 >= v45;
          v133 = v44 - v45;
          if (!v17)
          {
            v133 = 0;
          }

          v134 = (v46 + v45);
          v135 = v45 + 1;
          while (2)
          {
            if (v133)
            {
              v136 = *v134;
              *(this + 1) = v135;
              v49 |= (v136 & 0x7F) << v131;
              if (v136 < 0)
              {
                v131 += 7;
                --v133;
                ++v134;
                ++v135;
                v14 = v132++ > 8;
                if (v14)
                {
                  goto LABEL_144;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v49) = 0;
              }
            }

            else
            {
              LODWORD(v49) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_217:
          *(a1 + 104) = v49;
          goto LABEL_245;
        case 6u:
          *(a1 + 132) |= 0x400u;
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
                goto LABEL_229;
              }

              v106 += 7;
              ++v110;
              v14 = v107++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v108) = 0;
            goto LABEL_229;
          }

          v157 = 0;
          v158 = 0;
          v108 = 0;
          v17 = v103 >= v104;
          v159 = v103 - v104;
          if (!v17)
          {
            v159 = 0;
          }

          v160 = (v105 + v104);
          v161 = v104 + 1;
          while (2)
          {
            if (v159)
            {
              v162 = *v160;
              *(this + 1) = v161;
              v108 |= (v162 & 0x7F) << v157;
              if (v162 < 0)
              {
                v157 += 7;
                --v159;
                ++v160;
                ++v161;
                v14 = v158++ > 8;
                if (v14)
                {
                  goto LABEL_180;
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

LABEL_229:
          *(a1 + 120) = v108;
          goto LABEL_245;
        case 7u:
          *(a1 + 132) |= 2u;
          v116 = *(this + 1);
          if (v116 > 0xFFFFFFFFFFFFFFF7 || v116 + 8 > *(this + 2))
          {
            goto LABEL_241;
          }

          *(a1 + 64) = *(*this + v116);
          goto LABEL_120;
        case 8u:
          *(a1 + 132) |= 0x800u;
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
                goto LABEL_226;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_168:
            LODWORD(v79) = 0;
            goto LABEL_226;
          }

          v149 = 0;
          v150 = 0;
          v79 = 0;
          v17 = v74 >= v75;
          v151 = v74 - v75;
          if (!v17)
          {
            v151 = 0;
          }

          v152 = (v76 + v75);
          v153 = v75 + 1;
          while (2)
          {
            if (v151)
            {
              v154 = *v152;
              *(this + 1) = v153;
              v79 |= (v154 & 0x7F) << v149;
              if (v154 < 0)
              {
                v149 += 7;
                --v151;
                ++v152;
                ++v153;
                v14 = v150++ > 8;
                if (v14)
                {
                  goto LABEL_168;
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

LABEL_226:
          *(a1 + 124) = v79;
          goto LABEL_245;
        case 9u:
          *(a1 + 132) |= 1u;
          v120 = *(this + 1);
          v119 = *(this + 2);
          v121 = *this;
          if (v120 <= 0xFFFFFFFFFFFFFFF5 && v120 + 10 <= v119)
          {
            v122 = 0;
            v123 = 0;
            v124 = 0;
            v125 = (v121 + v120);
            v126 = v120 + 1;
            do
            {
              *(this + 1) = v126;
              v127 = *v125++;
              v124 |= (v127 & 0x7F) << v122;
              if ((v127 & 0x80) == 0)
              {
                goto LABEL_232;
              }

              v122 += 7;
              ++v126;
              v14 = v123++ > 8;
            }

            while (!v14);
LABEL_188:
            v124 = 0;
            goto LABEL_232;
          }

          v163 = 0;
          v164 = 0;
          v124 = 0;
          v17 = v119 >= v120;
          v165 = v119 - v120;
          if (!v17)
          {
            v165 = 0;
          }

          v166 = (v121 + v120);
          v167 = v120 + 1;
          while (2)
          {
            if (v165)
            {
              v168 = *v166;
              *(this + 1) = v167;
              v124 |= (v168 & 0x7F) << v163;
              if (v168 < 0)
              {
                v163 += 7;
                --v165;
                ++v166;
                ++v167;
                v14 = v164++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(this + 24))
              {
                v124 = 0;
              }
            }

            else
            {
              v124 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_232:
          *(a1 + 56) = v124;
          goto LABEL_245;
        case 0xAu:
          *(a1 + 132) |= 0x20u;
          v62 = *(this + 1);
          if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(this + 2))
          {
            goto LABEL_241;
          }

          *(a1 + 100) = *(*this + v62);
          goto LABEL_243;
        case 0xBu:
          *(a1 + 132) |= 0x200u;
          v118 = *(this + 1);
          if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
          {
            goto LABEL_241;
          }

          *(a1 + 116) = *(*this + v118);
          goto LABEL_243;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_251;
            }

            v28 = *(this + 1);
            v29 = *(this + 2);
            while (v28 < v29 && (*(this + 24) & 1) == 0)
            {
              v31 = *(a1 + 40);
              v30 = *(a1 + 48);
              if (v31 >= v30)
              {
                v33 = *(a1 + 32);
                v34 = v31 - v33;
                v35 = (v31 - v33) >> 2;
                v36 = v35 + 1;
                if ((v35 + 1) >> 62)
                {
                  goto LABEL_252;
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
                  sub_19B4C4FA8(a1 + 32, v38);
                }

                v39 = (v31 - v33) >> 2;
                v40 = (4 * v35);
                v41 = (4 * v35 - 4 * v39);
                *v40 = 0;
                v32 = v40 + 1;
                memcpy(v41, v33, v34);
                v42 = *(a1 + 32);
                *(a1 + 32) = v41;
                *(a1 + 40) = v32;
                *(a1 + 48) = 0;
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

              *(a1 + 40) = v32;
              v43 = *(this + 1);
              if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(this + 2))
              {
LABEL_191:
                *(this + 24) = 1;
                goto LABEL_192;
              }

              *(v32 - 1) = *(*this + v43);
              v29 = *(this + 2);
              v28 = *(this + 1) + 4;
              *(this + 1) = v28;
            }

            goto LABEL_192;
          }

          v129 = *(a1 + 40);
          v128 = *(a1 + 48);
          if (v129 >= v128)
          {
            v169 = *(a1 + 32);
            v170 = v129 - v169;
            v171 = (v129 - v169) >> 2;
            v172 = v171 + 1;
            if ((v171 + 1) >> 62)
            {
              goto LABEL_252;
            }

            v173 = v128 - v169;
            if (v173 >> 1 > v172)
            {
              v172 = v173 >> 1;
            }

            if (v173 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v174 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v174 = v172;
            }

            if (v174)
            {
              sub_19B4C4FA8(a1 + 32, v174);
            }

            v181 = (v129 - v169) >> 2;
            v182 = (4 * v171);
            v183 = (4 * v171 - 4 * v181);
            *v182 = 0;
            v130 = v182 + 1;
            memcpy(v183, v169, v170);
            v184 = *(a1 + 32);
            *(a1 + 32) = v183;
            *(a1 + 40) = v130;
            *(a1 + 48) = 0;
            if (v184)
            {
              operator delete(v184);
            }
          }

          else
          {
            *v129 = 0;
            v130 = v129 + 4;
          }

          *(a1 + 40) = v130;
          goto LABEL_239;
        case 0xDu:
          *(a1 + 132) |= 0x10u;
          v54 = *(this + 1);
          v53 = *(this + 2);
          v55 = *this;
          if (v54 <= 0xFFFFFFFFFFFFFFF5 && v54 + 10 <= v53)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = (v55 + v54);
            v60 = v54 + 1;
            do
            {
              *(this + 1) = v60;
              v61 = *v59++;
              v58 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_220;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_152:
            LODWORD(v58) = 0;
            goto LABEL_220;
          }

          v137 = 0;
          v138 = 0;
          v58 = 0;
          v17 = v53 >= v54;
          v139 = v53 - v54;
          if (!v17)
          {
            v139 = 0;
          }

          v140 = (v55 + v54);
          v141 = v54 + 1;
          while (2)
          {
            if (v139)
            {
              v142 = *v140;
              *(this + 1) = v141;
              v58 |= (v142 & 0x7F) << v137;
              if (v142 < 0)
              {
                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
                  goto LABEL_152;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              LODWORD(v58) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_220:
          *(a1 + 96) = v58;
          goto LABEL_245;
        case 0xEu:
          *(a1 + 132) |= 0x2000u;
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

          *(a1 + 129) = v115;
          goto LABEL_245;
        case 0xFu:
          *(a1 + 132) |= 8u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
          {
            goto LABEL_241;
          }

          *(a1 + 80) = *(*this + v27);
          goto LABEL_120;
        case 0x10u:
          *(a1 + 132) |= 4u;
          v64 = *(this + 1);
          if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(this + 2))
          {
            goto LABEL_241;
          }

          *(a1 + 72) = *(*this + v64);
LABEL_120:
          v117 = *(this + 1) + 8;
          goto LABEL_244;
        case 0x11u:
          *(a1 + 132) |= 0x1000u;
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

          *(a1 + 128) = v26;
          goto LABEL_245;
        case 0x12u:
          *(a1 + 132) |= 0x4000u;
          v99 = *(this + 1);
          if (v99 >= *(this + 2))
          {
            v102 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v100 = v99 + 1;
            v101 = *(*this + v99);
            *(this + 1) = v100;
            v102 = v101 != 0;
          }

          *(a1 + 130) = v102;
          goto LABEL_245;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_245;
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

LABEL_249:
  v190 = v4 ^ 1;
  return v190 & 1;
}

double sub_19B4DF638(uint64_t a1)
{
  *a1 = &unk_1F0E2DCC0;
  *(a1 + 152) = 0;
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

uint64_t sub_19B4DF680(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 88);
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

  v8 = *(v3 + 132);
  if ((v8 & 0x100) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 112));
    v8 = *(v3 + 132);
    if ((v8 & 0x80) == 0)
    {
LABEL_8:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 132);
  if ((v8 & 0x40) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 132);
  if ((v8 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 132);
  if ((v8 & 2) == 0)
  {
LABEL_11:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 64));
  v8 = *(v3 + 132);
  if ((v8 & 0x800) == 0)
  {
LABEL_12:
    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(v3 + 124);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 132);
  if ((v8 & 1) == 0)
  {
LABEL_13:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    result = PB::Writer::write(this, *(v3 + 100));
    if ((*(v3 + 132) & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_32:
  v17 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 132);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_14:
  if ((v8 & 0x200) != 0)
  {
LABEL_15:
    result = PB::Writer::write(this, *(v3 + 116));
  }

LABEL_16:
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  v12 = *(v3 + 132);
  if ((v12 & 0x10) != 0)
  {
    v18 = *(v3 + 96);
    result = PB::Writer::writeVarInt(this);
    v12 = *(v3 + 132);
    if ((v12 & 0x2000) == 0)
    {
LABEL_21:
      if ((v12 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }
  }

  else if ((*(v3 + 132) & 0x2000) == 0)
  {
    goto LABEL_21;
  }

  v19 = *(v3 + 129);
  result = PB::Writer::write(this);
  v12 = *(v3 + 132);
  if ((v12 & 8) == 0)
  {
LABEL_22:
    if ((v12 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 80));
  v12 = *(v3 + 132);
  if ((v12 & 4) == 0)
  {
LABEL_23:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    v20 = *(v3 + 128);
    result = PB::Writer::write(this);
    if ((*(v3 + 132) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_40;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 72));
  v12 = *(v3 + 132);
  if ((v12 & 0x1000) != 0)
  {
    goto LABEL_39;
  }

LABEL_24:
  if ((v12 & 0x4000) == 0)
  {
    return result;
  }

LABEL_40:
  v21 = *(v3 + 130);

  return PB::Writer::write(this);
}

uint64_t sub_19B4DF8BC(uint64_t result)
{
  if (!*(result + 88))
  {
    operator new();
  }

  return result;
}

void sub_19B4DF98C(PB::Base *this)
{
  *this = &unk_1F0E2DCC0;
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

void sub_19B4DFA30(PB::Base *a1)
{
  sub_19B4DF98C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DFA68(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "acceleration", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "biasCovariance", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "quaternion", v13);
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "rotationRate", v16);
  }

  v17 = *(a1 + 152);
  if (v17)
  {
    v21 = *(a1 + 128);
    PB::TextFormatter::format(this, "sensorTime");
    v17 = *(a1 + 152);
    if ((v17 & 4) == 0)
    {
LABEL_11:
      if ((v17 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 152) & 4) == 0)
  {
    goto LABEL_11;
  }

  v22 = *(a1 + 144);
  PB::TextFormatter::format(this, "status");
  v17 = *(a1 + 152);
  if ((v17 & 8) == 0)
  {
LABEL_12:
    if ((v17 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v23 = *(a1 + 148);
  PB::TextFormatter::format(this, "statusDeprecated");
  if ((*(a1 + 152) & 2) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 136));
  }

LABEL_14:
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "userAcceleration", v20);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DFC18(uint64_t a1, PB::Reader *this)
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
                goto LABEL_274;
              }

              v76 = *(this + 1);
              v77 = *(this + 2);
              while (v76 < v77 && (*(this + 24) & 1) == 0)
              {
                v79 = *(a1 + 88);
                v78 = *(a1 + 96);
                if (v79 >= v78)
                {
                  v81 = *(a1 + 80);
                  v82 = v79 - v81;
                  v83 = (v79 - v81) >> 2;
                  v84 = v83 + 1;
                  if ((v83 + 1) >> 62)
                  {
                    goto LABEL_275;
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
                    sub_19B4C4FA8(a1 + 80, v86);
                  }

                  v87 = (v79 - v81) >> 2;
                  v88 = (4 * v83);
                  v89 = (4 * v83 - 4 * v87);
                  *v88 = 0;
                  v80 = v88 + 1;
                  memcpy(v89, v81, v82);
                  v90 = *(a1 + 80);
                  *(a1 + 80) = v89;
                  *(a1 + 88) = v80;
                  *(a1 + 96) = 0;
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

                *(a1 + 88) = v80;
                v91 = *(this + 1);
                if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
                {
LABEL_160:
                  *(this + 24) = 1;
                  goto LABEL_161;
                }

                *(v80 - 1) = *(*this + v91);
                v77 = *(this + 2);
                v76 = *(this + 1) + 4;
                *(this + 1) = v76;
              }

              goto LABEL_161;
            }

            v151 = *(a1 + 88);
            v150 = *(a1 + 96);
            if (v151 >= v150)
            {
              v174 = *(a1 + 80);
              v175 = v151 - v174;
              v176 = (v151 - v174) >> 2;
              v177 = v176 + 1;
              if ((v176 + 1) >> 62)
              {
                goto LABEL_275;
              }

              v178 = v150 - v174;
              if (v178 >> 1 > v177)
              {
                v177 = v178 >> 1;
              }

              if (v178 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v179 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v179 = v177;
              }

              if (v179)
              {
                sub_19B4C4FA8(a1 + 80, v179);
              }

              v200 = (v151 - v174) >> 2;
              v201 = (4 * v176);
              v202 = (4 * v176 - 4 * v200);
              *v201 = 0;
              v135 = v201 + 1;
              memcpy(v202, v174, v175);
              v203 = *(a1 + 80);
              *(a1 + 80) = v202;
              *(a1 + 88) = v135;
              *(a1 + 96) = 0;
              if (v203)
              {
                operator delete(v203);
              }
            }

            else
            {
              *v151 = 0;
              v135 = v151 + 4;
            }

            *(a1 + 88) = v135;
            goto LABEL_263;
          }

          if (v23 == 4)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_274;
              }

              v49 = *(this + 1);
              v50 = *(this + 2);
              while (v49 < v50 && (*(this + 24) & 1) == 0)
              {
                v52 = *(a1 + 40);
                v51 = *(a1 + 48);
                if (v52 >= v51)
                {
                  v54 = *(a1 + 32);
                  v55 = v52 - v54;
                  v56 = (v52 - v54) >> 2;
                  v57 = v56 + 1;
                  if ((v56 + 1) >> 62)
                  {
                    goto LABEL_275;
                  }

                  v58 = v51 - v54;
                  if (v58 >> 1 > v57)
                  {
                    v57 = v58 >> 1;
                  }

                  if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v59 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v59 = v57;
                  }

                  if (v59)
                  {
                    sub_19B4C4FA8(a1 + 32, v59);
                  }

                  v60 = (v52 - v54) >> 2;
                  v61 = (4 * v56);
                  v62 = (4 * v56 - 4 * v60);
                  *v61 = 0;
                  v53 = v61 + 1;
                  memcpy(v62, v54, v55);
                  v63 = *(a1 + 32);
                  *(a1 + 32) = v62;
                  *(a1 + 40) = v53;
                  *(a1 + 48) = 0;
                  if (v63)
                  {
                    operator delete(v63);
                  }
                }

                else
                {
                  *v52 = 0;
                  v53 = v52 + 4;
                }

                *(a1 + 40) = v53;
                v64 = *(this + 1);
                if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
                {
                  goto LABEL_160;
                }

                *(v53 - 1) = *(*this + v64);
                v50 = *(this + 2);
                v49 = *(this + 1) + 4;
                *(this + 1) = v49;
              }

              goto LABEL_161;
            }

            v137 = *(a1 + 40);
            v136 = *(a1 + 48);
            if (v137 >= v136)
            {
              v168 = *(a1 + 32);
              v169 = v137 - v168;
              v170 = (v137 - v168) >> 2;
              v171 = v170 + 1;
              if ((v170 + 1) >> 62)
              {
                goto LABEL_275;
              }

              v172 = v136 - v168;
              if (v172 >> 1 > v171)
              {
                v171 = v172 >> 1;
              }

              if (v172 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v173 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v173 = v171;
              }

              if (v173)
              {
                sub_19B4C4FA8(a1 + 32, v173);
              }

              v196 = (v137 - v168) >> 2;
              v197 = (4 * v170);
              v198 = (4 * v170 - 4 * v196);
              *v197 = 0;
              v135 = v197 + 1;
              memcpy(v198, v168, v169);
              v199 = *(a1 + 32);
              *(a1 + 32) = v198;
              *(a1 + 40) = v135;
              *(a1 + 48) = 0;
              if (v199)
              {
                operator delete(v199);
              }
            }

            else
            {
              *v137 = 0;
              v135 = v137 + 4;
            }

            *(a1 + 40) = v135;
LABEL_263:
            v212 = *(this + 1);
            if (v212 > 0xFFFFFFFFFFFFFFFBLL || v212 + 4 > *(this + 2))
            {
              goto LABEL_265;
            }

            *(v135 - 1) = *(*this + v212);
            v75 = *(this + 1) + 4;
LABEL_267:
            *(this + 1) = v75;
            goto LABEL_268;
          }
        }

        else
        {
          if (v23 == 1)
          {
            *(a1 + 152) |= 2u;
            v74 = *(this + 1);
            if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(this + 2))
            {
LABEL_265:
              *(this + 24) = 1;
              goto LABEL_268;
            }

            *(a1 + 136) = *(*this + v74);
            v75 = *(this + 1) + 8;
            goto LABEL_267;
          }

          if (v23 == 2)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_274;
              }

              v33 = *(this + 1);
              v34 = *(this + 2);
              while (v33 < v34 && (*(this + 24) & 1) == 0)
              {
                v36 = *(a1 + 64);
                v35 = *(a1 + 72);
                if (v36 >= v35)
                {
                  v38 = *(a1 + 56);
                  v39 = v36 - v38;
                  v40 = (v36 - v38) >> 2;
                  v41 = v40 + 1;
                  if ((v40 + 1) >> 62)
                  {
                    goto LABEL_275;
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
                    sub_19B4C4FA8(a1 + 56, v43);
                  }

                  v44 = (v36 - v38) >> 2;
                  v45 = (4 * v40);
                  v46 = (4 * v40 - 4 * v44);
                  *v45 = 0;
                  v37 = v45 + 1;
                  memcpy(v46, v38, v39);
                  v47 = *(a1 + 56);
                  *(a1 + 56) = v46;
                  *(a1 + 64) = v37;
                  *(a1 + 72) = 0;
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

                *(a1 + 64) = v37;
                v48 = *(this + 1);
                if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
                {
                  goto LABEL_160;
                }

                *(v37 - 1) = *(*this + v48);
                v34 = *(this + 2);
                v33 = *(this + 1) + 4;
                *(this + 1) = v33;
              }

LABEL_161:
              PB::Reader::recallMark();
              goto LABEL_268;
            }

            v134 = *(a1 + 64);
            v133 = *(a1 + 72);
            if (v134 >= v133)
            {
              v162 = *(a1 + 56);
              v163 = v134 - v162;
              v164 = (v134 - v162) >> 2;
              v165 = v164 + 1;
              if ((v164 + 1) >> 62)
              {
                goto LABEL_275;
              }

              v166 = v133 - v162;
              if (v166 >> 1 > v165)
              {
                v165 = v166 >> 1;
              }

              if (v166 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v167 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v167 = v165;
              }

              if (v167)
              {
                sub_19B4C4FA8(a1 + 56, v167);
              }

              v192 = (v134 - v162) >> 2;
              v193 = (4 * v164);
              v194 = (4 * v164 - 4 * v192);
              *v193 = 0;
              v135 = v193 + 1;
              memcpy(v194, v162, v163);
              v195 = *(a1 + 56);
              *(a1 + 56) = v194;
              *(a1 + 64) = v135;
              *(a1 + 72) = 0;
              if (v195)
              {
                operator delete(v195);
              }
            }

            else
            {
              *v134 = 0;
              v135 = v134 + 4;
            }

            *(a1 + 64) = v135;
            goto LABEL_263;
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
              goto LABEL_274;
            }

            v101 = *(this + 1);
            v102 = *(this + 2);
            while (v101 < v102 && (*(this + 24) & 1) == 0)
            {
              v104 = *(a1 + 16);
              v103 = *(a1 + 24);
              if (v104 >= v103)
              {
                v106 = *(a1 + 8);
                v107 = v104 - v106;
                v108 = (v104 - v106) >> 2;
                v109 = v108 + 1;
                if ((v108 + 1) >> 62)
                {
                  goto LABEL_275;
                }

                v110 = v103 - v106;
                if (v110 >> 1 > v109)
                {
                  v109 = v110 >> 1;
                }

                if (v110 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v111 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v111 = v109;
                }

                if (v111)
                {
                  sub_19B4C4FA8(a1 + 8, v111);
                }

                v112 = (v104 - v106) >> 2;
                v113 = (4 * v108);
                v114 = (4 * v108 - 4 * v112);
                *v113 = 0;
                v105 = v113 + 1;
                memcpy(v114, v106, v107);
                v115 = *(a1 + 8);
                *(a1 + 8) = v114;
                *(a1 + 16) = v105;
                *(a1 + 24) = 0;
                if (v115)
                {
                  operator delete(v115);
                }
              }

              else
              {
                *v104 = 0;
                v105 = v104 + 4;
              }

              *(a1 + 16) = v105;
              v116 = *(this + 1);
              if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(this + 2))
              {
                goto LABEL_160;
              }

              *(v105 - 1) = *(*this + v116);
              v102 = *(this + 2);
              v101 = *(this + 1) + 4;
              *(this + 1) = v101;
            }

            goto LABEL_161;
          }

          v159 = *(a1 + 16);
          v158 = *(a1 + 24);
          if (v159 >= v158)
          {
            v180 = *(a1 + 8);
            v181 = v159 - v180;
            v182 = (v159 - v180) >> 2;
            v183 = v182 + 1;
            if ((v182 + 1) >> 62)
            {
              goto LABEL_275;
            }

            v184 = v158 - v180;
            if (v184 >> 1 > v183)
            {
              v183 = v184 >> 1;
            }

            if (v184 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v185 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v185 = v183;
            }

            if (v185)
            {
              sub_19B4C4FA8(a1 + 8, v185);
            }

            v204 = (v159 - v180) >> 2;
            v205 = (4 * v182);
            v206 = (4 * v182 - 4 * v204);
            *v205 = 0;
            v135 = v205 + 1;
            memcpy(v206, v180, v181);
            v207 = *(a1 + 8);
            *(a1 + 8) = v206;
            *(a1 + 16) = v135;
            *(a1 + 24) = 0;
            if (v207)
            {
              operator delete(v207);
            }
          }

          else
          {
            *v159 = 0;
            v135 = v159 + 4;
          }

          *(a1 + 16) = v135;
          goto LABEL_263;
        }

        if (v23 == 6)
        {
          *(a1 + 152) |= 8u;
          v66 = *(this + 1);
          v65 = *(this + 2);
          v67 = *this;
          if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v65)
          {
            v138 = 0;
            v139 = 0;
            v70 = 0;
            v17 = v65 >= v66;
            v140 = v65 - v66;
            if (!v17)
            {
              v140 = 0;
            }

            v141 = (v67 + v66);
            v142 = v66 + 1;
            while (1)
            {
              if (!v140)
              {
                LODWORD(v70) = 0;
                *(this + 24) = 1;
                goto LABEL_241;
              }

              v143 = *v141;
              *(this + 1) = v142;
              v70 |= (v143 & 0x7F) << v138;
              if ((v143 & 0x80) == 0)
              {
                break;
              }

              v138 += 7;
              --v140;
              ++v141;
              ++v142;
              v14 = v139++ > 8;
              if (v14)
              {
LABEL_173:
                LODWORD(v70) = 0;
                goto LABEL_241;
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
                goto LABEL_173;
              }
            }
          }

LABEL_241:
          *(a1 + 148) = v70;
          goto LABEL_268;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            *(a1 + 152) |= 1u;
            v93 = *(this + 1);
            v92 = *(this + 2);
            v94 = *this;
            if (v93 > 0xFFFFFFFFFFFFFFF5 || v93 + 10 > v92)
            {
              v144 = 0;
              v145 = 0;
              v97 = 0;
              v17 = v92 >= v93;
              v146 = v92 - v93;
              if (!v17)
              {
                v146 = 0;
              }

              v147 = (v94 + v93);
              v148 = v93 + 1;
              while (1)
              {
                if (!v146)
                {
                  v97 = 0;
                  *(this + 24) = 1;
                  goto LABEL_244;
                }

                v149 = *v147;
                *(this + 1) = v148;
                v97 |= (v149 & 0x7F) << v144;
                if ((v149 & 0x80) == 0)
                {
                  break;
                }

                v144 += 7;
                --v146;
                ++v147;
                ++v148;
                v14 = v145++ > 8;
                if (v14)
                {
LABEL_181:
                  v97 = 0;
                  goto LABEL_244;
                }
              }

              if (*(this + 24))
              {
                v97 = 0;
              }
            }

            else
            {
              v95 = 0;
              v96 = 0;
              v97 = 0;
              v98 = (v94 + v93);
              v99 = v93 + 1;
              while (1)
              {
                *(this + 1) = v99;
                v100 = *v98++;
                v97 |= (v100 & 0x7F) << v95;
                if ((v100 & 0x80) == 0)
                {
                  break;
                }

                v95 += 7;
                ++v99;
                v14 = v96++ > 8;
                if (v14)
                {
                  goto LABEL_181;
                }
              }
            }

LABEL_244:
            *(a1 + 128) = v97;
            goto LABEL_268;
          case 8:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_274;
              }

              v117 = *(this + 1);
              v118 = *(this + 2);
              while (v117 < v118 && (*(this + 24) & 1) == 0)
              {
                v120 = *(a1 + 112);
                v119 = *(a1 + 120);
                if (v120 >= v119)
                {
                  v122 = *(a1 + 104);
                  v123 = v120 - v122;
                  v124 = (v120 - v122) >> 2;
                  v125 = v124 + 1;
                  if ((v124 + 1) >> 62)
                  {
                    goto LABEL_275;
                  }

                  v126 = v119 - v122;
                  if (v126 >> 1 > v125)
                  {
                    v125 = v126 >> 1;
                  }

                  if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v127 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v127 = v125;
                  }

                  if (v127)
                  {
                    sub_19B4C4FA8(a1 + 104, v127);
                  }

                  v128 = (v120 - v122) >> 2;
                  v129 = (4 * v124);
                  v130 = (4 * v124 - 4 * v128);
                  *v129 = 0;
                  v121 = v129 + 1;
                  memcpy(v130, v122, v123);
                  v131 = *(a1 + 104);
                  *(a1 + 104) = v130;
                  *(a1 + 112) = v121;
                  *(a1 + 120) = 0;
                  if (v131)
                  {
                    operator delete(v131);
                  }
                }

                else
                {
                  *v120 = 0;
                  v121 = v120 + 4;
                }

                *(a1 + 112) = v121;
                v132 = *(this + 1);
                if (v132 > 0xFFFFFFFFFFFFFFFBLL || v132 + 4 > *(this + 2))
                {
                  goto LABEL_160;
                }

                *(v121 - 1) = *(*this + v132);
                v118 = *(this + 2);
                v117 = *(this + 1) + 4;
                *(this + 1) = v117;
              }

              goto LABEL_161;
            }

            v161 = *(a1 + 112);
            v160 = *(a1 + 120);
            if (v161 >= v160)
            {
              v186 = *(a1 + 104);
              v187 = v161 - v186;
              v188 = (v161 - v186) >> 2;
              v189 = v188 + 1;
              if ((v188 + 1) >> 62)
              {
LABEL_275:
                sub_19B5BE690();
              }

              v190 = v160 - v186;
              if (v190 >> 1 > v189)
              {
                v189 = v190 >> 1;
              }

              if (v190 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v191 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v191 = v189;
              }

              if (v191)
              {
                sub_19B4C4FA8(a1 + 104, v191);
              }

              v208 = (v161 - v186) >> 2;
              v209 = (4 * v188);
              v210 = (4 * v188 - 4 * v208);
              *v209 = 0;
              v135 = v209 + 1;
              memcpy(v210, v186, v187);
              v211 = *(a1 + 104);
              *(a1 + 104) = v210;
              *(a1 + 112) = v135;
              *(a1 + 120) = 0;
              if (v211)
              {
                operator delete(v211);
              }
            }

            else
            {
              *v161 = 0;
              v135 = v161 + 4;
            }

            *(a1 + 112) = v135;
            goto LABEL_263;
          case 9:
            *(a1 + 152) |= 4u;
            v25 = *(this + 1);
            v24 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v152 = 0;
              v153 = 0;
              v29 = 0;
              v17 = v24 >= v25;
              v154 = v24 - v25;
              if (!v17)
              {
                v154 = 0;
              }

              v155 = (v26 + v25);
              v156 = v25 + 1;
              while (1)
              {
                if (!v154)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_247;
                }

                v157 = *v155;
                *(this + 1) = v156;
                v29 |= (v157 & 0x7F) << v152;
                if ((v157 & 0x80) == 0)
                {
                  break;
                }

                v152 += 7;
                --v154;
                ++v155;
                ++v156;
                v14 = v153++ > 8;
                if (v14)
                {
LABEL_191:
                  LODWORD(v29) = 0;
                  goto LABEL_247;
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
                  goto LABEL_191;
                }
              }
            }

LABEL_247:
            *(a1 + 144) = v29;
            goto LABEL_268;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_274:
        v213 = 0;
        return v213 & 1;
      }

LABEL_268:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v213 = v4 ^ 1;
  return v213 & 1;
}

uint64_t sub_19B4E09AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 152) & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 136));
  }

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
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

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 152);
  if ((v16 & 8) != 0)
  {
    v17 = *(v3 + 148);
    result = PB::Writer::writeVarInt(this);
    v16 = *(v3 + 152);
  }

  if (v16)
  {
    v18 = *(v3 + 128);
    result = PB::Writer::writeVarInt(this);
  }

  v19 = *(v3 + 104);
  v20 = *(v3 + 112);
  while (v19 != v20)
  {
    v21 = *v19++;
    result = PB::Writer::write(this, v21);
  }

  if ((*(v3 + 152) & 4) != 0)
  {
    v22 = *(v3 + 144);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B4E0AF4(uint64_t result)
{
  *result = &unk_1F0E2F968;
  *(result + 20) = 0;
  return result;
}

void sub_19B4E0B1C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E0B54(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "alsTrustedLux", *(a1 + 16));
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "startTime", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E0BD0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4E0DD8(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B4E0E44(uint64_t result)
{
  *result = &unk_1F0E30570;
  *(result + 28) = 0;
  return result;
}

void sub_19B4E0E6C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E0EA4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "fConnected");
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

  PB::TextFormatter::format(this, "fEndTime", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "fStartTime", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E0F48(uint64_t a1, PB::Reader *this)
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
        goto LABEL_39;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 16) = *(*this + v2);
LABEL_38:
        v2 = *(this + 1) + 8;
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

    *(a1 + 28) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_39;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_38;
  }

LABEL_43:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B4E1194(uint64_t result, PB::Writer *this)
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

  return PB::Writer::write(this);
}

uint64_t sub_19B4E1220(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F0E2FC40;
  return result;
}

void sub_19B4E1248(PB::Base *this)
{
  *this = &unk_1F0E2FC40;
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

void sub_19B4E12C0(PB::Base *a1)
{
  sub_19B4E1248(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E12F8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 28))
  {
    v5 = *(a1 + 24);
    PB::TextFormatter::format(this, "backlightState");
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E1388(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        operator new();
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_47;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_43:
              LODWORD(v28) = 0;
              goto LABEL_47;
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
              goto LABEL_43;
            }
          }
        }

LABEL_47:
        *(a1 + 24) = v28;
      }

      else if (!PB::Reader::skip(this))
      {
        v39 = 0;
        return v39 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_52:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_19B4E16A8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 28))
  {
    v4 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
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

uint64_t sub_19B4E1724(uint64_t result)
{
  *result = &unk_1F0E2E5B8;
  *(result + 28) = 0;
  return result;
}

void sub_19B4E174C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E1784(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 8) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "inCoex");
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

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "reserved");
  v5 = *(a1 + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "subType");
  if (*(a1 + 28))
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E1848(uint64_t a1, PB::Reader *this)
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
          *(a1 + 28) |= 8u;
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

          *(a1 + 24) = v40;
          goto LABEL_77;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 2u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v48 = 0;
            v49 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v50 = v2 - v31;
            v51 = (v32 + v31);
            v52 = v31 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_76;
              }

              v53 = v52;
              v54 = *v51;
              *(this + 1) = v53;
              v35 |= (v54 & 0x7F) << v48;
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
                LODWORD(v35) = 0;
                goto LABEL_75;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_75:
            v2 = v53;
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
          *(a1 + 16) = v35;
          goto LABEL_77;
        }
      }

      else
      {
        if (v22 == 1)
        {
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

          goto LABEL_77;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 4u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v41 = 0;
            v42 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v43 = v2 - v23;
            v44 = (v24 + v23);
            v45 = v23 + 1;
            while (1)
            {
              if (!v43)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_72;
              }

              v46 = v45;
              v47 = *v44;
              *(this + 1) = v46;
              v27 |= (v47 & 0x7F) << v41;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              --v43;
              ++v44;
              v45 = v46 + 1;
              v14 = v42++ > 8;
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
            v2 = v46;
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
          goto LABEL_77;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v55 = 0;
        return v55 & 1;
      }

      v2 = *(this + 1);
LABEL_77:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_81:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t sub_19B4E1C74(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = *(v3 + 24);
      result = PB::Writer::write(this);
      if ((*(v3 + 28) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 28);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4E1D1C(uint64_t result)
{
  *result = &unk_1F0E2C248;
  *(result + 48) = 0;
  return result;
}

void sub_19B4E1D44(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E1D7C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if ((v5 & 0x80) != 0)
  {
    v6 = *(a1 + 44);
    PB::TextFormatter::format(this, "activeCoex");
    v5 = *(a1 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
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

  PB::TextFormatter::format(this, "avgTemperature", *(a1 + 24));
  v5 = *(a1 + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 45);
  PB::TextFormatter::format(this, "blackout");
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "gradient", *(a1 + 28));
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "instTemperature", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = *(a1 + 46);
  PB::TextFormatter::format(this, "isSettle");
  v5 = *(a1 + 48);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a1 + 47);
  PB::TextFormatter::format(this, "rapidGradientChange");
  v5 = *(a1 + 48);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "startTime", *(a1 + 8));
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a1 + 36);
  PB::TextFormatter::format(this, "state");
  v5 = *(a1 + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "temperature", *(a1 + 40));
  if ((*(a1 + 48) & 2) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E1F20(uint64_t a1, PB::Reader *this)
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
            goto LABEL_100;
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
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_69:
              *(this + 24) = 1;
              goto LABEL_96;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_53:
            v2 = *(this + 1) + 8;
LABEL_90:
            *(this + 1) = v2;
            goto LABEL_96;
          }

          if (v22 == 2)
          {
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_69;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_53;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 48) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_69;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_89;
            case 4:
              *(a1 + 48) |= 8u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_69;
              }

              *(a1 + 28) = *(*this + v2);
              goto LABEL_89;
            case 5:
              *(a1 + 48) |= 0x400u;
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

              *(a1 + 47) = v32;
              goto LABEL_96;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 48) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_69;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_89;
          case 0xA:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_69;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_89:
            v2 = *(this + 1) + 4;
            goto LABEL_90;
          case 0xB:
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

            *(a1 + 46) = v34;
            goto LABEL_96;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 48) |= 0x100u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v38 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v37 = *(*this + v2++);
              *(this + 1) = v2;
              v38 = v37 != 0;
            }

            *(a1 + 45) = v38;
            goto LABEL_96;
          case 7:
            *(a1 + 48) |= 0x80u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v36 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v35 = *(*this + v2++);
              *(this + 1) = v2;
              v36 = v35 != 0;
            }

            *(a1 + 44) = v36;
            goto LABEL_96;
          case 8:
            *(a1 + 48) |= 0x20u;
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
                  goto LABEL_95;
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
                  goto LABEL_94;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_94:
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

LABEL_95:
            *(a1 + 36) = v27;
            goto LABEL_96;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v46 = 0;
        return v46 & 1;
      }

      v2 = *(this + 1);
LABEL_96:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_100:
  v46 = v4 ^ 1;
  return v46 & 1;
}

uint64_t sub_19B4E247C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 48);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = *(v3 + 47);
  result = PB::Writer::write(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(v3 + 45);
  result = PB::Writer::write(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(v3 + 44);
  result = PB::Writer::write(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 48) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v9 = *(v3 + 46);

  return PB::Writer::write(this);
}

uint64_t sub_19B4E25E8(uint64_t result)
{
  *result = &unk_1F0E300D8;
  *(result + 32) = 0;
  return result;
}

void sub_19B4E2610(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E2648(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "reserved");
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

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "scaledValue");
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
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "speedRange");
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
  v10 = *(a1 + 28);
  PB::TextFormatter::format(this, "speedThreshold");
  if (*(a1 + 32))
  {
LABEL_6:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E272C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_140;
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
          *(a1 + 32) |= 1u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v80 = v3 - v56;
            v81 = (v57 + v56);
            v82 = v56 + 1;
            while (1)
            {
              if (!v80)
              {
                v60 = 0;
                *(this + 24) = 1;
                goto LABEL_127;
              }

              v83 = v82;
              v84 = *v81;
              *(this + 1) = v83;
              v60 |= (v84 & 0x7F) << v78;
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
                v60 = 0;
                goto LABEL_126;
              }
            }

            if (*(this + 24))
            {
              v60 = 0;
            }

LABEL_126:
            v3 = v83;
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
              v3 = v62;
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
                v60 = 0;
                break;
              }
            }
          }

LABEL_127:
          *(a1 + 8) = v60;
          goto LABEL_136;
        }

        if (v23 == 2)
        {
          *(a1 + 32) |= 0x10u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v92 = 0;
            v93 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v94 = v3 - v32;
            v95 = (v33 + v32);
            v96 = v32 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_135;
              }

              v97 = v96;
              v98 = *v95;
              *(this + 1) = v97;
              v36 |= (v98 & 0x7F) << v92;
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
                LODWORD(v36) = 0;
                goto LABEL_134;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

LABEL_134:
            v3 = v97;
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

LABEL_135:
          *(a1 + 28) = v36;
          goto LABEL_136;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(a1 + 32) |= 8u;
            v40 = *(this + 1);
            v2 = *(this + 2);
            v41 = *this;
            if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
            {
              v64 = 0;
              v65 = 0;
              v44 = 0;
              if (v2 <= v40)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v66 = v3 - v40;
              v67 = (v41 + v40);
              v68 = v40 + 1;
              while (1)
              {
                if (!v66)
                {
                  LODWORD(v44) = 0;
                  *(this + 24) = 1;
                  goto LABEL_119;
                }

                v69 = v68;
                v70 = *v67;
                *(this + 1) = v69;
                v44 |= (v70 & 0x7F) << v64;
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
                  LODWORD(v44) = 0;
                  goto LABEL_118;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v44) = 0;
              }

LABEL_118:
              v3 = v69;
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

LABEL_119:
            *(a1 + 24) = v44;
            goto LABEL_136;
          case 4:
            *(a1 + 32) |= 4u;
            v48 = *(this + 1);
            v2 = *(this + 2);
            v49 = *this;
            if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v52 = 0;
              if (v2 <= v48)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v73 = v3 - v48;
              v74 = (v49 + v48);
              v75 = v48 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v52) = 0;
                  *(this + 24) = 1;
                  goto LABEL_123;
                }

                v76 = v75;
                v77 = *v74;
                *(this + 1) = v76;
                v52 |= (v77 & 0x7F) << v71;
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
                  LODWORD(v52) = 0;
                  goto LABEL_122;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v52) = 0;
              }

LABEL_122:
              v3 = v76;
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

LABEL_123:
            *(a1 + 20) = v52;
            goto LABEL_136;
          case 5:
            *(a1 + 32) |= 2u;
            v24 = *(this + 1);
            v2 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
            {
              v85 = 0;
              v86 = 0;
              v28 = 0;
              if (v2 <= v24)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v87 = v3 - v24;
              v88 = (v25 + v24);
              v89 = v24 + 1;
              while (1)
              {
                if (!v87)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_131;
                }

                v90 = v89;
                v91 = *v88;
                *(this + 1) = v90;
                v28 |= (v91 & 0x7F) << v85;
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
                  LODWORD(v28) = 0;
                  goto LABEL_130;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }

LABEL_130:
              v3 = v90;
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

LABEL_131:
            *(a1 + 16) = v28;
            goto LABEL_136;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v99 = 0;
        return v99 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_136:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_140:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t sub_19B4E2DD8(uint64_t result, PB::Writer *this)
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
      if ((v4 & 8) == 0)
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

  v6 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 20);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v9 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4E2E9C(uint64_t result)
{
  *result = &unk_1F0E2EA18;
  *(result + 28) = 0;
  return result;
}

void sub_19B4E2EC4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E2EFC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "lux", *(a1 + 16));
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "minPostSUIProx", *(a1 + 20));
  v5 = *(a1 + 28);
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
  v7 = *(a1 + 24);
  PB::TextFormatter::format(this, "possibleObstructed");
  v5 = *(a1 + 28);
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
  v8 = *(a1 + 25);
  PB::TextFormatter::format(this, "resetTriggered");
  if (*(a1 + 28))
  {
LABEL_6:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E2FE0(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v27 = *(this + 1);
          v2 = *(this + 2);
          v28 = *this;
          if (v27 > 0xFFFFFFFFFFFFFFF5 || v27 + 10 > v2)
          {
            v35 = 0;
            v36 = 0;
            v31 = 0;
            if (v2 <= v27)
            {
              v2 = *(this + 1);
            }

            v37 = v2 - v27;
            v38 = (v28 + v27);
            v39 = v27 + 1;
            while (1)
            {
              if (!v37)
              {
                v31 = 0;
                *(this + 24) = 1;
                goto LABEL_65;
              }

              v40 = v39;
              v41 = *v38;
              *(this + 1) = v40;
              v31 |= (v41 & 0x7F) << v35;
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
                v31 = 0;
                goto LABEL_64;
              }
            }

            if (*(this + 24))
            {
              v31 = 0;
            }

LABEL_64:
            v2 = v40;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = (v28 + v27);
            v33 = v27 + 1;
            while (1)
            {
              v2 = v33;
              *(this + 1) = v33;
              v34 = *v32++;
              v31 |= (v34 & 0x7F) << v29;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              ++v33;
              v14 = v30++ > 8;
              if (v14)
              {
                v31 = 0;
                break;
              }
            }
          }

LABEL_65:
          *(a1 + 8) = v31;
          goto LABEL_66;
        }

        if (v22 == 2)
        {
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
          goto LABEL_66;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
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

            *(a1 + 24) = v26;
            goto LABEL_66;
          case 4:
            *(a1 + 28) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_37:
              *(this + 24) = 1;
              goto LABEL_66;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_60;
          case 5:
            *(a1 + 28) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_37;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_60:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_66;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v42 = 0;
        return v42 & 1;
      }

      v2 = *(this + 1);
LABEL_66:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_70:
  v42 = v4 ^ 1;
  return v42 & 1;
}

uint64_t sub_19B4E338C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 28);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 25);
  result = PB::Writer::write(this);
  v4 = *(v3 + 28);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 20));
    if ((*(v3 + 28) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 24);
  result = PB::Writer::write(this);
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v3 + 16);

  return PB::Writer::write(this, v8);
}

uint64_t sub_19B4E3450(uint64_t result)
{
  *result = &unk_1F0E2C7F8;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_19B4E3474(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2C7F8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4E34F4(PB::Base *a1)
{
  sub_19B4E3474(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E352C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 20))
  {
    v5 = *(a1 + 16);
    PB::TextFormatter::format(this, "batchedLocationFixType");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E35C4(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B4E38E4(uint64_t result, PB::Writer *this)
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

double sub_19B4E394C(uint64_t a1)
{
  *a1 = &unk_1F0E38E70;
  *(a1 + 140) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_19B4E398C(PB::Base *this)
{
  *this = &unk_1F0E38E70;
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

void sub_19B4E3A20(PB::Base *a1)
{
  sub_19B4E398C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4E3A58(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 140);
  if ((v5 & 0x80) != 0)
  {
    v6 = *(a1 + 132);
    PB::TextFormatter::format(this, "TIA");
    v5 = *(a1 + 140);
  }

  if (v5)
  {
    v7 = *(a1 + 104);
    PB::TextFormatter::format(this, "blankDacOffset");
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "blankDark");
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "blankLight");
  }

  v14 = *(a1 + 140);
  if ((v14 & 2) != 0)
  {
    v28 = *(a1 + 108);
    PB::TextFormatter::format(this, "blankTIA");
    v14 = *(a1 + 140);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v14 & 4) == 0)
  {
    goto LABEL_11;
  }

  v29 = *(a1 + 112);
  PB::TextFormatter::format(this, "blankiLED");
  if ((*(a1 + 140) & 8) != 0)
  {
LABEL_12:
    v15 = *(a1 + 116);
    PB::TextFormatter::format(this, "dacOffset");
  }

LABEL_13:
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(this, "dark");
  }

  v19 = *(a1 + 140);
  if ((v19 & 0x10) != 0)
  {
    v20 = *(a1 + 120);
    PB::TextFormatter::format(this, "flagBitfield");
    v19 = *(a1 + 140);
  }

  if ((v19 & 0x20) != 0)
  {
    v21 = *(a1 + 124);
    PB::TextFormatter::format(this, "iLED");
  }

  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  while (v22 != v23)
  {
    v24 = *v22++;
    PB::TextFormatter::format(this, "light");
  }

  v25 = *(a1 + 140);
  if ((v25 & 0x40) != 0)
  {
    v26 = *(a1 + 128);
    PB::TextFormatter::format(this, "samplingFrequency");
    v25 = *(a1 + 140);
  }

  if ((v25 & 0x100) != 0)
  {
    v27 = *(a1 + 136);
    PB::TextFormatter::format(this, "timestampRel");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4E3C64(uint64_t a1, PB::Reader *this)
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
        v48 = v9++ > 8;
        if (v48)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        goto LABEL_470;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 140) |= 0x100u;
          v23 = *(this + 1);
          v22 = *(this + 2);
          v24 = *this;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(this + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_387;
              }

              v25 += 7;
              ++v29;
              v48 = v26++ > 8;
            }

            while (!v48);
LABEL_303:
            LODWORD(v27) = 0;
            goto LABEL_387;
          }

          v247 = 0;
          v248 = 0;
          v27 = 0;
          v16 = v22 >= v23;
          v249 = v22 - v23;
          if (!v16)
          {
            v249 = 0;
          }

          v250 = (v24 + v23);
          v251 = v23 + 1;
          while (2)
          {
            if (v249)
            {
              v252 = *v250;
              *(this + 1) = v251;
              v27 |= (v252 & 0x7F) << v247;
              if (v252 < 0)
              {
                v247 += 7;
                --v249;
                ++v250;
                ++v251;
                v48 = v248++ > 8;
                if (v48)
                {
                  goto LABEL_303;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }
            }

            else
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_387:
          *(a1 + 136) = v27;
          goto LABEL_466;
        case 2u:
          *(a1 + 140) |= 0x10u;
          v113 = *(this + 1);
          v112 = *(this + 2);
          v114 = *this;
          if (v113 <= 0xFFFFFFFFFFFFFFF5 && v113 + 10 <= v112)
          {
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = (v114 + v113);
            v119 = v113 + 1;
            do
            {
              *(this + 1) = v119;
              v120 = *v118++;
              v117 |= (v120 & 0x7F) << v115;
              if ((v120 & 0x80) == 0)
              {
                goto LABEL_390;
              }

              v115 += 7;
              ++v119;
              v48 = v116++ > 8;
            }

            while (!v48);
LABEL_311:
            LODWORD(v117) = 0;
            goto LABEL_390;
          }

          v253 = 0;
          v254 = 0;
          v117 = 0;
          v16 = v112 >= v113;
          v255 = v112 - v113;
          if (!v16)
          {
            v255 = 0;
          }

          v256 = (v114 + v113);
          v257 = v113 + 1;
          while (2)
          {
            if (v255)
            {
              v258 = *v256;
              *(this + 1) = v257;
              v117 |= (v258 & 0x7F) << v253;
              if (v258 < 0)
              {
                v253 += 7;
                --v255;
                ++v256;
                ++v257;
                v48 = v254++ > 8;
                if (v48)
                {
                  goto LABEL_311;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v117) = 0;
              }
            }

            else
            {
              LODWORD(v117) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_390:
          *(a1 + 120) = v117;
          goto LABEL_466;
        case 3u:
          *(a1 + 140) |= 0x40u;
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
                goto LABEL_378;
              }

              v88 += 7;
              ++v92;
              v48 = v89++ > 8;
            }

            while (!v48);
LABEL_279:
            LODWORD(v90) = 0;
            goto LABEL_378;
          }

          v229 = 0;
          v230 = 0;
          v90 = 0;
          v16 = v85 >= v86;
          v231 = v85 - v86;
          if (!v16)
          {
            v231 = 0;
          }

          v232 = (v87 + v86);
          v233 = v86 + 1;
          while (2)
          {
            if (v231)
            {
              v234 = *v232;
              *(this + 1) = v233;
              v90 |= (v234 & 0x7F) << v229;
              if (v234 < 0)
              {
                v229 += 7;
                --v231;
                ++v232;
                ++v233;
                v48 = v230++ > 8;
                if (v48)
                {
                  goto LABEL_279;
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

LABEL_378:
          *(a1 + 128) = v90;
          goto LABEL_466;
        case 4u:
          *(a1 + 140) |= 0x20u;
          v95 = *(this + 1);
          v94 = *(this + 2);
          v96 = *this;
          if (v95 <= 0xFFFFFFFFFFFFFFF5 && v95 + 10 <= v94)
          {
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = (v96 + v95);
            v101 = v95 + 1;
            do
            {
              *(this + 1) = v101;
              v102 = *v100++;
              v99 |= (v102 & 0x7F) << v97;
              if ((v102 & 0x80) == 0)
              {
                goto LABEL_381;
              }

              v97 += 7;
              ++v101;
              v48 = v98++ > 8;
            }

            while (!v48);
LABEL_287:
            LODWORD(v99) = 0;
            goto LABEL_381;
          }

          v235 = 0;
          v236 = 0;
          v99 = 0;
          v16 = v94 >= v95;
          v237 = v94 - v95;
          if (!v16)
          {
            v237 = 0;
          }

          v238 = (v96 + v95);
          v239 = v95 + 1;
          while (2)
          {
            if (v237)
            {
              v240 = *v238;
              *(this + 1) = v239;
              v99 |= (v240 & 0x7F) << v235;
              if (v240 < 0)
              {
                v235 += 7;
                --v237;
                ++v238;
                ++v239;
                v48 = v236++ > 8;
                if (v48)
                {
                  goto LABEL_287;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v99) = 0;
              }
            }

            else
            {
              LODWORD(v99) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_381:
          *(a1 + 124) = v99;
          goto LABEL_466;
        case 5u:
          *(a1 + 140) |= 0x80u;
          v59 = *(this + 1);
          v58 = *(this + 2);
          v60 = *this;
          if (v59 <= 0xFFFFFFFFFFFFFFF5 && v59 + 10 <= v58)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = (v60 + v59);
            v65 = v59 + 1;
            do
            {
              *(this + 1) = v65;
              v66 = *v64++;
              v63 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                goto LABEL_369;
              }

              v61 += 7;
              ++v65;
              v48 = v62++ > 8;
            }

            while (!v48);
LABEL_255:
            LODWORD(v63) = 0;
            goto LABEL_369;
          }

          v211 = 0;
          v212 = 0;
          v63 = 0;
          v16 = v58 >= v59;
          v213 = v58 - v59;
          if (!v16)
          {
            v213 = 0;
          }

          v214 = (v60 + v59);
          v215 = v59 + 1;
          while (2)
          {
            if (v213)
            {
              v216 = *v214;
              *(this + 1) = v215;
              v63 |= (v216 & 0x7F) << v211;
              if (v216 < 0)
              {
                v211 += 7;
                --v213;
                ++v214;
                ++v215;
                v48 = v212++ > 8;
                if (v48)
                {
                  goto LABEL_255;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v63) = 0;
              }
            }

            else
            {
              LODWORD(v63) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_369:
          *(a1 + 132) = v63;
          goto LABEL_466;
        case 6u:
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_472;
            }

            if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
            {
              v31 = *(a1 + 88);
              do
              {
                v121 = *(a1 + 96);
                if (v31 >= v121)
                {
                  v122 = *(a1 + 80);
                  v123 = v31 - v122;
                  v124 = (v31 - v122) >> 2;
                  v125 = v124 + 1;
                  if ((v124 + 1) >> 62)
                  {
                    goto LABEL_473;
                  }

                  v126 = v121 - v122;
                  if (v126 >> 1 > v125)
                  {
                    v125 = v126 >> 1;
                  }

                  if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v127 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v127 = v125;
                  }

                  if (v127)
                  {
                    sub_19B4C4FA8(a1 + 80, v127);
                  }

                  v128 = (v31 - v122) >> 2;
                  v129 = (4 * v124);
                  v130 = (4 * v124 - 4 * v128);
                  *v129 = 0;
                  v31 = (v129 + 1);
                  memcpy(v130, v122, v123);
                  v131 = *(a1 + 80);
                  *(a1 + 80) = v130;
                  *(a1 + 88) = v31;
                  *(a1 + 96) = 0;
                  if (v131)
                  {
                    operator delete(v131);
                  }
                }

                else
                {
                  *v31 = 0;
                  v31 += 4;
                }

                *(a1 + 88) = v31;
                v133 = *(this + 1);
                v132 = *(this + 2);
                v134 = *this;
                v135 = 0;
                v136 = 0;
                if (v133 > 0xFFFFFFFFFFFFFFF5 || v133 + 10 > v132)
                {
                  v143 = 0;
                  v138 = v132 - v133;
                  if (v132 < v133)
                  {
                    v138 = 0;
                  }

                  v139 = (v134 + v133);
                  v140 = v133 + 1;
                  while (1)
                  {
                    if (!v138)
                    {
                      goto LABEL_244;
                    }

                    v141 = v140;
                    v142 = *v139;
                    *(this + 1) = v141;
                    v143 |= (v142 & 0x7F) << v135;
                    if ((v142 & 0x80) == 0)
                    {
                      break;
                    }

                    v135 += 7;
                    --v138;
                    ++v139;
                    v140 = v141 + 1;
                    v48 = v136++ > 8;
                    if (v48)
                    {
LABEL_151:
                      LODWORD(v143) = 0;
                      goto LABEL_154;
                    }
                  }

                  if (*(this + 24))
                  {
                    LODWORD(v143) = 0;
                  }
                }

                else
                {
                  v143 = 0;
                  v144 = (v134 + v133);
                  v145 = v133 + 1;
                  while (1)
                  {
                    v141 = v145;
                    *(this + 1) = v145;
                    v146 = *v144++;
                    v143 |= (v146 & 0x7F) << v135;
                    if ((v146 & 0x80) == 0)
                    {
                      break;
                    }

                    v135 += 7;
                    ++v145;
                    v48 = v136++ > 8;
                    if (v48)
                    {
                      goto LABEL_151;
                    }
                  }
                }

LABEL_154:
                *(v31 - 1) = v143;
              }

              while (v141 < v132 && (*(this + 24) & 1) == 0);
            }

            goto LABEL_245;
          }

          v260 = *(a1 + 88);
          v259 = *(a1 + 96);
          if (v260 >= v259)
          {
            v277 = *(a1 + 80);
            v278 = v260 - v277;
            v279 = (v260 - v277) >> 2;
            v280 = v279 + 1;
            if ((v279 + 1) >> 62)
            {
              goto LABEL_473;
            }

            v281 = v259 - v277;
            if (v281 >> 1 > v280)
            {
              v280 = v281 >> 1;
            }

            if (v281 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v282 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v282 = v280;
            }

            if (v282)
            {
              sub_19B4C4FA8(a1 + 80, v282);
            }

            v314 = (v260 - v277) >> 2;
            v315 = (4 * v279);
            v316 = (4 * v279 - 4 * v314);
            *v315 = 0;
            v210 = v315 + 1;
            memcpy(v316, v277, v278);
            v317 = *(a1 + 80);
            *(a1 + 80) = v316;
            *(a1 + 88) = v210;
            *(a1 + 96) = 0;
            if (v317)
            {
              operator delete(v317);
            }
          }

          else
          {
            *v260 = 0;
            v210 = v260 + 4;
          }

          *(a1 + 88) = v210;
          v319 = *(this + 1);
          v318 = *(this + 2);
          v320 = *this;
          if (v319 <= 0xFFFFFFFFFFFFFFF5 && v319 + 10 <= v318)
          {
            v321 = 0;
            v322 = 0;
            v304 = 0;
            v323 = (v320 + v319);
            v324 = v319 + 1;
            while (1)
            {
              *(this + 1) = v324;
              v325 = *v323++;
              v304 |= (v325 & 0x7F) << v321;
              if ((v325 & 0x80) == 0)
              {
                goto LABEL_465;
              }

              v321 += 7;
              ++v324;
              v48 = v322++ > 8;
              if (v48)
              {
                goto LABEL_461;
              }
            }
          }

          v326 = 0;
          v327 = 0;
          v304 = 0;
          v16 = v318 >= v319;
          v328 = v318 - v319;
          if (!v16)
          {
            v328 = 0;
          }

          v329 = (v320 + v319);
          v330 = v319 + 1;
          while (v328)
          {
            v331 = *v329;
            *(this + 1) = v330;
            v304 |= (v331 & 0x7F) << v326;
            if ((v331 & 0x80) == 0)
            {
              goto LABEL_463;
            }

            v326 += 7;
            --v328;
            ++v329;
            ++v330;
            v48 = v327++ > 8;
            if (v48)
            {
              goto LABEL_461;
            }
          }

          goto LABEL_462;
        case 7u:
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_472;
            }

            if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
            {
              v31 = *(a1 + 64);
              do
              {
                v147 = *(a1 + 72);
                if (v31 >= v147)
                {
                  v148 = *(a1 + 56);
                  v149 = v31 - v148;
                  v150 = (v31 - v148) >> 2;
                  v151 = v150 + 1;
                  if ((v150 + 1) >> 62)
                  {
                    goto LABEL_473;
                  }

                  v152 = v147 - v148;
                  if (v152 >> 1 > v151)
                  {
                    v151 = v152 >> 1;
                  }

                  if (v152 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v153 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v153 = v151;
                  }

                  if (v153)
                  {
                    sub_19B4C4FA8(a1 + 56, v153);
                  }

                  v154 = (v31 - v148) >> 2;
                  v155 = (4 * v150);
                  v156 = (4 * v150 - 4 * v154);
                  *v155 = 0;
                  v31 = (v155 + 1);
                  memcpy(v156, v148, v149);
                  v157 = *(a1 + 56);
                  *(a1 + 56) = v156;
                  *(a1 + 64) = v31;
                  *(a1 + 72) = 0;
                  if (v157)
                  {
                    operator delete(v157);
                  }
                }

                else
                {
                  *v31 = 0;
                  v31 += 4;
                }

                *(a1 + 64) = v31;
                v159 = *(this + 1);
                v158 = *(this + 2);
                v160 = *this;
                v161 = 0;
                v162 = 0;
                if (v159 > 0xFFFFFFFFFFFFFFF5 || v159 + 10 > v158)
                {
                  v169 = 0;
                  v164 = v158 - v159;
                  if (v158 < v159)
                  {
                    v164 = 0;
                  }

                  v165 = (v160 + v159);
                  v166 = v159 + 1;
                  while (1)
                  {
                    if (!v164)
                    {
                      goto LABEL_244;
                    }

                    v167 = v166;
                    v168 = *v165;
                    *(this + 1) = v167;
                    v169 |= (v168 & 0x7F) << v161;
                    if ((v168 & 0x80) == 0)
                    {
                      break;
                    }

                    v161 += 7;
                    --v164;
                    ++v165;
                    v166 = v167 + 1;
                    v48 = v162++ > 8;
                    if (v48)
                    {
LABEL_192:
                      LODWORD(v169) = 0;
                      goto LABEL_195;
                    }
                  }

                  if (*(this + 24))
                  {
                    LODWORD(v169) = 0;
                  }
                }

                else
                {
                  v169 = 0;
                  v170 = (v160 + v159);
                  v171 = v159 + 1;
                  while (1)
                  {
                    v167 = v171;
                    *(this + 1) = v171;
                    v172 = *v170++;
                    v169 |= (v172 & 0x7F) << v161;
                    if ((v172 & 0x80) == 0)
                    {
                      break;
                    }

                    v161 += 7;
                    ++v171;
                    v48 = v162++ > 8;
                    if (v48)
                    {
                      goto LABEL_192;
                    }
                  }
                }

LABEL_195:
                *(v31 - 1) = v169;
              }

              while (v167 < v158 && (*(this + 24) & 1) == 0);
            }

            goto LABEL_245;
          }

          v268 = *(a1 + 64);
          v267 = *(a1 + 72);
          if (v268 >= v267)
          {
            v283 = *(a1 + 56);
            v284 = v268 - v283;
            v285 = (v268 - v283) >> 2;
            v286 = v285 + 1;
            if ((v285 + 1) >> 62)
            {
              goto LABEL_473;
            }

            v287 = v267 - v283;
            if (v287 >> 1 > v286)
            {
              v286 = v287 >> 1;
            }

            if (v287 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v288 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v288 = v286;
            }

            if (v288)
            {
              sub_19B4C4FA8(a1 + 56, v288);
            }

            v332 = (v268 - v283) >> 2;
            v333 = (4 * v285);
            v334 = (4 * v285 - 4 * v332);
            *v333 = 0;
            v210 = v333 + 1;
            memcpy(v334, v283, v284);
            v335 = *(a1 + 56);
            *(a1 + 56) = v334;
            *(a1 + 64) = v210;
            *(a1 + 72) = 0;
            if (v335)
            {
              operator delete(v335);
            }
          }

          else
          {
            *v268 = 0;
            v210 = v268 + 4;
          }

          *(a1 + 64) = v210;
          v337 = *(this + 1);
          v336 = *(this + 2);
          v338 = *this;
          if (v337 <= 0xFFFFFFFFFFFFFFF5 && v337 + 10 <= v336)
          {
            v339 = 0;
            v340 = 0;
            v304 = 0;
            v341 = (v338 + v337);
            v342 = v337 + 1;
            while (1)
            {
              *(this + 1) = v342;
              v343 = *v341++;
              v304 |= (v343 & 0x7F) << v339;
              if ((v343 & 0x80) == 0)
              {
                goto LABEL_465;
              }

              v339 += 7;
              ++v342;
              v48 = v340++ > 8;
              if (v48)
              {
                goto LABEL_461;
              }
            }
          }

          v344 = 0;
          v345 = 0;
          v304 = 0;
          v16 = v336 >= v337;
          v346 = v336 - v337;
          if (!v16)
          {
            v346 = 0;
          }

          v347 = (v338 + v337);
          v348 = v337 + 1;
          while (v346)
          {
            v349 = *v347;
            *(this + 1) = v348;
            v304 |= (v349 & 0x7F) << v344;
            if ((v349 & 0x80) == 0)
            {
              goto LABEL_463;
            }

            v344 += 7;
            --v346;
            ++v347;
            ++v348;
            v48 = v345++ > 8;
            if (v48)
            {
              goto LABEL_461;
            }
          }

          goto LABEL_462;
        case 8u:
          *(a1 + 140) |= 8u;
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
                goto LABEL_384;
              }

              v106 += 7;
              ++v110;
              v48 = v107++ > 8;
            }

            while (!v48);
LABEL_295:
            LODWORD(v108) = 0;
            goto LABEL_384;
          }

          v241 = 0;
          v242 = 0;
          v108 = 0;
          v16 = v103 >= v104;
          v243 = v103 - v104;
          if (!v16)
          {
            v243 = 0;
          }

          v244 = (v105 + v104);
          v245 = v104 + 1;
          while (2)
          {
            if (v243)
            {
              v246 = *v244;
              *(this + 1) = v245;
              v108 |= (v246 & 0x7F) << v241;
              if (v246 < 0)
              {
                v241 += 7;
                --v243;
                ++v244;
                ++v245;
                v48 = v242++ > 8;
                if (v48)
                {
                  goto LABEL_295;
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

LABEL_384:
          *(a1 + 116) = v108;
          goto LABEL_466;
        case 9u:
          *(a1 + 140) |= 4u;
          v200 = *(this + 1);
          v199 = *(this + 2);
          v201 = *this;
          if (v200 <= 0xFFFFFFFFFFFFFFF5 && v200 + 10 <= v199)
          {
            v202 = 0;
            v203 = 0;
            v204 = 0;
            v205 = (v201 + v200);
            v206 = v200 + 1;
            do
            {
              *(this + 1) = v206;
              v207 = *v205++;
              v204 |= (v207 & 0x7F) << v202;
              if ((v207 & 0x80) == 0)
              {
                goto LABEL_393;
              }

              v202 += 7;
              ++v206;
              v48 = v203++ > 8;
            }

            while (!v48);
LABEL_321:
            LODWORD(v204) = 0;
            goto LABEL_393;
          }

          v261 = 0;
          v262 = 0;
          v204 = 0;
          v16 = v199 >= v200;
          v263 = v199 - v200;
          if (!v16)
          {
            v263 = 0;
          }

          v264 = (v201 + v200);
          v265 = v200 + 1;
          while (2)
          {
            if (v263)
            {
              v266 = *v264;
              *(this + 1) = v265;
              v204 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                --v263;
                ++v264;
                ++v265;
                v48 = v262++ > 8;
                if (v48)
                {
                  goto LABEL_321;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v204) = 0;
              }
            }

            else
            {
              LODWORD(v204) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_393:
          *(a1 + 112) = v204;
          goto LABEL_466;
        case 0xAu:
          *(a1 + 140) |= 2u;
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
                goto LABEL_375;
              }

              v79 += 7;
              ++v83;
              v48 = v80++ > 8;
            }

            while (!v48);
LABEL_271:
            LODWORD(v81) = 0;
            goto LABEL_375;
          }

          v223 = 0;
          v224 = 0;
          v81 = 0;
          v16 = v76 >= v77;
          v225 = v76 - v77;
          if (!v16)
          {
            v225 = 0;
          }

          v226 = (v78 + v77);
          v227 = v77 + 1;
          while (2)
          {
            if (v225)
            {
              v228 = *v226;
              *(this + 1) = v227;
              v81 |= (v228 & 0x7F) << v223;
              if (v228 < 0)
              {
                v223 += 7;
                --v225;
                ++v226;
                ++v227;
                v48 = v224++ > 8;
                if (v48)
                {
                  goto LABEL_271;
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

LABEL_375:
          *(a1 + 108) = v81;
          goto LABEL_466;
        case 0xBu:
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_472:
              v368 = 0;
              return v368 & 1;
            }

            if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
            {
              v31 = *(a1 + 40);
              do
              {
                v173 = *(a1 + 48);
                if (v31 >= v173)
                {
                  v174 = *(a1 + 32);
                  v175 = v31 - v174;
                  v176 = (v31 - v174) >> 2;
                  v177 = v176 + 1;
                  if ((v176 + 1) >> 62)
                  {
                    goto LABEL_473;
                  }

                  v178 = v173 - v174;
                  if (v178 >> 1 > v177)
                  {
                    v177 = v178 >> 1;
                  }

                  if (v178 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v179 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v179 = v177;
                  }

                  if (v179)
                  {
                    sub_19B4C4FA8(a1 + 32, v179);
                  }

                  v180 = (v31 - v174) >> 2;
                  v181 = (4 * v176);
                  v182 = (4 * v176 - 4 * v180);
                  *v181 = 0;
                  v31 = (v181 + 1);
                  memcpy(v182, v174, v175);
                  v183 = *(a1 + 32);
                  *(a1 + 32) = v182;
                  *(a1 + 40) = v31;
                  *(a1 + 48) = 0;
                  if (v183)
                  {
                    operator delete(v183);
                  }
                }

                else
                {
                  *v31 = 0;
                  v31 += 4;
                }

                *(a1 + 40) = v31;
                v185 = *(this + 1);
                v184 = *(this + 2);
                v186 = *this;
                v187 = 0;
                v188 = 0;
                if (v185 > 0xFFFFFFFFFFFFFFF5 || v185 + 10 > v184)
                {
                  v195 = 0;
                  v190 = v184 - v185;
                  if (v184 < v185)
                  {
                    v190 = 0;
                  }

                  v191 = (v186 + v185);
                  v192 = v185 + 1;
                  while (1)
                  {
                    if (!v190)
                    {
                      goto LABEL_244;
                    }

                    v193 = v192;
                    v194 = *v191;
                    *(this + 1) = v193;
                    v195 |= (v194 & 0x7F) << v187;
                    if ((v194 & 0x80) == 0)
                    {
                      break;
                    }

                    v187 += 7;
                    --v190;
                    ++v191;
                    v192 = v193 + 1;
                    v48 = v188++ > 8;
                    if (v48)
                    {
LABEL_231:
                      LODWORD(v195) = 0;
                      goto LABEL_234;
                    }
                  }

                  if (*(this + 24))
                  {
                    LODWORD(v195) = 0;
                  }
                }

                else
                {
                  v195 = 0;
                  v196 = (v186 + v185);
                  v197 = v185 + 1;
                  while (1)
                  {
                    v193 = v197;
                    *(this + 1) = v197;
                    v198 = *v196++;
                    v195 |= (v198 & 0x7F) << v187;
                    if ((v198 & 0x80) == 0)
                    {
                      break;
                    }

                    v187 += 7;
                    ++v197;
                    v48 = v188++ > 8;
                    if (v48)
                    {
                      goto LABEL_231;
                    }
                  }
                }

LABEL_234:
                *(v31 - 1) = v195;
              }

              while (v193 < v184 && (*(this + 24) & 1) == 0);
            }

LABEL_245:
            PB::Reader::recallMark();
          }

          else
          {
            v270 = *(a1 + 40);
            v269 = *(a1 + 48);
            if (v270 >= v269)
            {
              v289 = *(a1 + 32);
              v290 = v270 - v289;
              v291 = (v270 - v289) >> 2;
              v292 = v291 + 1;
              if ((v291 + 1) >> 62)
              {
LABEL_473:
                sub_19B5BE690();
              }

              v293 = v269 - v289;
              if (v293 >> 1 > v292)
              {
                v292 = v293 >> 1;
              }

              if (v293 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v294 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v294 = v292;
              }

              if (v294)
              {
                sub_19B4C4FA8(a1 + 32, v294);
              }

              v350 = (v270 - v289) >> 2;
              v351 = (4 * v291);
              v352 = (4 * v291 - 4 * v350);
              *v351 = 0;
              v210 = v351 + 1;
              memcpy(v352, v289, v290);
              v353 = *(a1 + 32);
              *(a1 + 32) = v352;
              *(a1 + 40) = v210;
              *(a1 + 48) = 0;
              if (v353)
              {
                operator delete(v353);
              }
            }

            else
            {
              *v270 = 0;
              v210 = v270 + 4;
            }

            *(a1 + 40) = v210;
            v355 = *(this + 1);
            v354 = *(this + 2);
            v356 = *this;
            if (v355 > 0xFFFFFFFFFFFFFFF5 || v355 + 10 > v354)
            {
              v362 = 0;
              v363 = 0;
              v304 = 0;
              v16 = v354 >= v355;
              v364 = v354 - v355;
              if (!v16)
              {
                v364 = 0;
              }

              v365 = (v356 + v355);
              v366 = v355 + 1;
              while (v364)
              {
                v367 = *v365;
                *(this + 1) = v366;
                v304 |= (v367 & 0x7F) << v362;
                if ((v367 & 0x80) == 0)
                {
                  goto LABEL_463;
                }

                v362 += 7;
                --v364;
                ++v365;
                ++v366;
                v48 = v363++ > 8;
                if (v48)
                {
                  goto LABEL_461;
                }
              }

LABEL_462:
              LODWORD(v304) = 0;
              *(this + 24) = 1;
            }

            else
            {
              v357 = 0;
              v358 = 0;
              v304 = 0;
              v359 = (v356 + v355);
              v360 = v355 + 1;
              while (1)
              {
                *(this + 1) = v360;
                v361 = *v359++;
                v304 |= (v361 & 0x7F) << v357;
                if ((v361 & 0x80) == 0)
                {
                  break;
                }

                v357 += 7;
                ++v360;
                v48 = v358++ > 8;
                if (v48)
                {
                  goto LABEL_461;
                }
              }
            }

LABEL_465:
            *(v210 - 1) = v304;
          }

LABEL_466:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_470;
          }

          break;
        case 0xCu:
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_472;
            }

            if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
            {
              v31 = *(a1 + 16);
              while (1)
              {
                v32 = *(a1 + 24);
                if (v31 >= v32)
                {
                  v33 = *(a1 + 8);
                  v34 = v31 - v33;
                  v35 = (v31 - v33) >> 2;
                  v36 = v35 + 1;
                  if ((v35 + 1) >> 62)
                  {
                    goto LABEL_473;
                  }

                  v37 = v32 - v33;
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
                    sub_19B4C4FA8(a1 + 8, v38);
                  }

                  v39 = (v31 - v33) >> 2;
                  v40 = (4 * v35);
                  v41 = (4 * v35 - 4 * v39);
                  *v40 = 0;
                  v31 = (v40 + 1);
                  memcpy(v41, v33, v34);
                  v42 = *(a1 + 8);
                  *(a1 + 8) = v41;
                  *(a1 + 16) = v31;
                  *(a1 + 24) = 0;
                  if (v42)
                  {
                    operator delete(v42);
                  }
                }

                else
                {
                  *v31 = 0;
                  v31 += 4;
                }

                *(a1 + 16) = v31;
                v44 = *(this + 1);
                v43 = *(this + 2);
                v45 = *this;
                v46 = 0;
                v47 = 0;
                v48 = v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43;
                if (v48)
                {
                  break;
                }

                v54 = 0;
                v55 = (v45 + v44);
                v56 = v44 + 1;
                while (1)
                {
                  v52 = v56;
                  *(this + 1) = v56;
                  v57 = *v55++;
                  v54 |= (v57 & 0x7F) << v46;
                  if ((v57 & 0x80) == 0)
                  {
                    break;
                  }

                  v46 += 7;
                  ++v56;
                  v48 = v47++ > 8;
                  if (v48)
                  {
                    goto LABEL_63;
                  }
                }

LABEL_66:
                *(v31 - 1) = v54;
                if (v52 >= v43 || (*(this + 24) & 1) != 0)
                {
                  goto LABEL_245;
                }
              }

              v54 = 0;
              v49 = v43 - v44;
              if (v43 < v44)
              {
                v49 = 0;
              }

              v50 = (v45 + v44);
              v51 = v44 + 1;
              while (v49)
              {
                v52 = v51;
                v53 = *v50;
                *(this + 1) = v52;
                v54 |= (v53 & 0x7F) << v46;
                if ((v53 & 0x80) == 0)
                {
                  if (*(this + 24))
                  {
                    LODWORD(v54) = 0;
                  }

                  goto LABEL_66;
                }

                v46 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v48 = v47++ > 8;
                if (v48)
                {
LABEL_63:
                  LODWORD(v54) = 0;
                  goto LABEL_66;
                }
              }

LABEL_244:
              *(this + 24) = 1;
              *(v31 - 1) = 0;
            }

            goto LABEL_245;
          }

          v209 = *(a1 + 16);
          v208 = *(a1 + 24);
          if (v209 >= v208)
          {
            v271 = *(a1 + 8);
            v272 = v209 - v271;
            v273 = (v209 - v271) >> 2;
            v274 = v273 + 1;
            if ((v273 + 1) >> 62)
            {
              goto LABEL_473;
            }

            v275 = v208 - v271;
            if (v275 >> 1 > v274)
            {
              v274 = v275 >> 1;
            }

            if (v275 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v276 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v276 = v274;
            }

            if (v276)
            {
              sub_19B4C4FA8(a1 + 8, v276);
            }

            v295 = (v209 - v271) >> 2;
            v296 = (4 * v273);
            v297 = (4 * v273 - 4 * v295);
            *v296 = 0;
            v210 = v296 + 1;
            memcpy(v297, v271, v272);
            v298 = *(a1 + 8);
            *(a1 + 8) = v297;
            *(a1 + 16) = v210;
            *(a1 + 24) = 0;
            if (v298)
            {
              operator delete(v298);
            }
          }

          else
          {
            *v209 = 0;
            v210 = v209 + 4;
          }

          *(a1 + 16) = v210;
          v300 = *(this + 1);
          v299 = *(this + 2);
          v301 = *this;
          if (v300 <= 0xFFFFFFFFFFFFFFF5 && v300 + 10 <= v299)
          {
            v302 = 0;
            v303 = 0;
            v304 = 0;
            v305 = (v301 + v300);
            v306 = v300 + 1;
            while (1)
            {
              *(this + 1) = v306;
              v307 = *v305++;
              v304 |= (v307 & 0x7F) << v302;
              if ((v307 & 0x80) == 0)
              {
                goto LABEL_465;
              }

              v302 += 7;
              ++v306;
              v48 = v303++ > 8;
              if (v48)
              {
                goto LABEL_461;
              }
            }
          }

          v308 = 0;
          v309 = 0;
          v304 = 0;
          v16 = v299 >= v300;
          v310 = v299 - v300;
          if (!v16)
          {
            v310 = 0;
          }

          v311 = (v301 + v300);
          v312 = v300 + 1;
          while (v310)
          {
            v313 = *v311;
            *(this + 1) = v312;
            v304 |= (v313 & 0x7F) << v308;
            if ((v313 & 0x80) == 0)
            {
LABEL_463:
              if (*(this + 24))
              {
                LODWORD(v304) = 0;
              }

              goto LABEL_465;
            }

            v308 += 7;
            --v310;
            ++v311;
            ++v312;
            v48 = v309++ > 8;
            if (v48)
            {
LABEL_461:
              LODWORD(v304) = 0;
              goto LABEL_465;
            }
          }

          goto LABEL_462;
        case 0xDu:
          *(a1 + 140) |= 1u;
          v68 = *(this + 1);
          v67 = *(this + 2);
          v69 = *this;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(this + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_372;
              }

              v70 += 7;
              ++v74;
              v48 = v71++ > 8;
            }

            while (!v48);
LABEL_263:
            LODWORD(v72) = 0;
            goto LABEL_372;
          }

          v217 = 0;
          v218 = 0;
          v72 = 0;
          v16 = v67 >= v68;
          v219 = v67 - v68;
          if (!v16)
          {
            v219 = 0;
          }

          v220 = (v69 + v68);
          v221 = v68 + 1;
          while (2)
          {
            if (v219)
            {
              v222 = *v220;
              *(this + 1) = v221;
              v72 |= (v222 & 0x7F) << v217;
              if (v222 < 0)
              {
                v217 += 7;
                --v219;
                ++v220;
                ++v221;
                v48 = v218++ > 8;
                if (v48)
                {
                  goto LABEL_263;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v72) = 0;
              }
            }

            else
            {
              LODWORD(v72) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_372:
          *(a1 + 104) = v72;
          goto LABEL_466;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_472;
          }

          goto LABEL_466;
      }
    }

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
    while (v17)
    {
      v20 = *v18;
      *(this + 1) = v19;
      v10 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v14 += 7;
      --v17;
      ++v18;
      ++v19;
      v48 = v15++ > 8;
      if (v48)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_470:
  v368 = v4 ^ 1;
  return v368 & 1;
}