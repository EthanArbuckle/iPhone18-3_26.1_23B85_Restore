uint64_t sub_19B58FF40(uint64_t result, PB::Writer *this)
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
    v5 = *(v3 + 52);
    result = PB::Writer::write(this);
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  v9 = *(v3 + 56);
  if ((v9 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v9 = *(v3 + 56);
  }

  if ((v9 & 4) != 0)
  {
    v10 = *(v3 + 48);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B590008(uint64_t result)
{
  *result = &unk_1F0E2C6E0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_19B590030(PB::Base *this)
{
  *this = &unk_1F0E2C6E0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B590094(PB::Base *a1)
{
  sub_19B590030(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5900CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 52) & 4) != 0)
  {
    v5 = *(a1 + 48);
    PB::TextFormatter::format(this, "placement");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "placementProbability", v8);
  }

  v9 = *(a1 + 52);
  if (v9)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
    v9 = *(a1 + 52);
  }

  if ((v9 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5901A0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_98;
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
        goto LABEL_98;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v22 != 3)
      {
        if (v22 == 4)
        {
          *(a1 + 52) |= 2u;
          v32 = *(this + 1);
          if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(this + 2))
          {
            *(a1 + 40) = *(*this + v32);
LABEL_42:
            v34 = *(this + 1) + 8;
LABEL_43:
            *(this + 1) = v34;
            goto LABEL_93;
          }

          goto LABEL_92;
        }

LABEL_37:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_93;
      }

      if ((v10 & 7) != 2)
      {
        v58 = *(a1 + 16);
        v57 = *(a1 + 24);
        if (v58 >= v57)
        {
          v60 = *(a1 + 8);
          v61 = v58 - v60;
          v62 = (v58 - v60) >> 2;
          v63 = v62 + 1;
          if ((v62 + 1) >> 62)
          {
LABEL_101:
            sub_19B5BE690();
          }

          v64 = v57 - v60;
          if (v64 >> 1 > v63)
          {
            v63 = v64 >> 1;
          }

          if (v64 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v65 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            sub_19B4C4FA8(a1 + 8, v65);
          }

          v66 = (v58 - v60) >> 2;
          v67 = (4 * v62);
          v68 = (4 * v62 - 4 * v66);
          *v67 = 0;
          v59 = v67 + 1;
          memcpy(v68, v60, v61);
          v69 = *(a1 + 8);
          *(a1 + 8) = v68;
          *(a1 + 16) = v59;
          *(a1 + 24) = 0;
          if (v69)
          {
            operator delete(v69);
          }
        }

        else
        {
          *v58 = 0;
          v59 = v58 + 4;
        }

        *(a1 + 16) = v59;
        v70 = *(this + 1);
        if (v70 <= 0xFFFFFFFFFFFFFFFBLL && v70 + 4 <= *(this + 2))
        {
          *(v59 - 1) = *(*this + v70);
          v34 = *(this + 1) + 4;
          goto LABEL_43;
        }

LABEL_92:
        *(this + 24) = 1;
        goto LABEL_93;
      }

      if (PB::Reader::placeMark())
      {
LABEL_100:
        v71 = 0;
        return v71 & 1;
      }

      v35 = *(this + 1);
      v36 = *(this + 2);
      while (v35 < v36 && (*(this + 24) & 1) == 0)
      {
        v38 = *(a1 + 16);
        v37 = *(a1 + 24);
        if (v38 >= v37)
        {
          v40 = *(a1 + 8);
          v41 = v38 - v40;
          v42 = (v38 - v40) >> 2;
          v43 = v42 + 1;
          if ((v42 + 1) >> 62)
          {
            goto LABEL_101;
          }

          v44 = v37 - v40;
          if (v44 >> 1 > v43)
          {
            v43 = v44 >> 1;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v45 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            sub_19B4C4FA8(a1 + 8, v45);
          }

          v46 = (v38 - v40) >> 2;
          v47 = (4 * v42);
          v48 = (4 * v42 - 4 * v46);
          *v47 = 0;
          v39 = v47 + 1;
          memcpy(v48, v40, v41);
          v49 = *(a1 + 8);
          *(a1 + 8) = v48;
          *(a1 + 16) = v39;
          *(a1 + 24) = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        else
        {
          *v38 = 0;
          v39 = v38 + 4;
        }

        *(a1 + 16) = v39;
        v50 = *(this + 1);
        if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v39 - 1) = *(*this + v50);
        v36 = *(this + 2);
        v35 = *(this + 1) + 4;
        *(this + 1) = v35;
      }

      PB::Reader::recallMark();
LABEL_93:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_98;
      }
    }

    if (v22 == 1)
    {
      *(a1 + 52) |= 1u;
      v33 = *(this + 1);
      if (v33 <= 0xFFFFFFFFFFFFFFF7 && v33 + 8 <= *(this + 2))
      {
        *(a1 + 32) = *(*this + v33);
        goto LABEL_42;
      }

      goto LABEL_92;
    }

    if (v22 == 2)
    {
      *(a1 + 52) |= 4u;
      v24 = *(this + 1);
      v23 = *(this + 2);
      v25 = *this;
      if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
      {
        v51 = 0;
        v52 = 0;
        v28 = 0;
        v17 = v23 >= v24;
        v53 = v23 - v24;
        if (!v17)
        {
          v53 = 0;
        }

        v54 = (v25 + v24);
        v55 = v24 + 1;
        while (1)
        {
          if (!v53)
          {
            LODWORD(v28) = 0;
            *(this + 24) = 1;
            goto LABEL_85;
          }

          v56 = *v54;
          *(this + 1) = v55;
          v28 |= (v56 & 0x7F) << v51;
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
LABEL_71:
            LODWORD(v28) = 0;
            goto LABEL_85;
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
            goto LABEL_71;
          }
        }
      }

LABEL_85:
      *(a1 + 48) = v28;
      goto LABEL_93;
    }

    goto LABEL_37;
  }

LABEL_98:
  v71 = v4 ^ 1;
  return v71 & 1;
}

uint64_t sub_19B5906B4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 52);
  }

  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 48);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  if ((*(v3 + 52) & 2) != 0)
  {
    v9 = *(v3 + 40);

    return PB::Writer::write(this, v9);
  }

  return result;
}

uint64_t sub_19B590764(uint64_t result)
{
  *result = &unk_1F0E2D470;
  *(result + 32) = 0;
  return result;
}

void sub_19B59078C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5907C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "speed", *(a1 + 24));
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

  PB::TextFormatter::format(this, "speedUnc", *(a1 + 28));
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B590888(uint64_t a1, PB::Reader *this)
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
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
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
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
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
          goto LABEL_43;
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

uint64_t sub_19B590B18(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 28));
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
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B590BC0(uint64_t result)
{
  *result = &unk_1F0E2C6A8;
  *(result + 32) = 0;
  return result;
}

void sub_19B590BE8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B590C20(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "speed", *(a1 + 24));
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

  PB::TextFormatter::format(this, "speedUnc", *(a1 + 28));
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B590CE4(uint64_t a1, PB::Reader *this)
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
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
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
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
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
          goto LABEL_43;
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

uint64_t sub_19B590F74(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 28));
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
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B59101C(uint64_t result)
{
  *result = &unk_1F0E2CCC8;
  *(result + 48) = 0;
  return result;
}

void sub_19B591044(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B59107C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 48);
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

  else if ((*(a1 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  v5 = *(a1 + 48);
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
  PB::TextFormatter::format(this, "velocityUncX", *(a1 + 24));
  v5 = *(a1 + 48);
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
  PB::TextFormatter::format(this, "velocityUncY", *(a1 + 28));
  v5 = *(a1 + 48);
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
  PB::TextFormatter::format(this, "velocityUncZ", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(this, "velocityY", *(a1 + 40));
    if ((*(a1 + 48) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(this, "velocityX", *(a1 + 36));
  v5 = *(a1 + 48);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(this, "velocityZ", *(a1 + 44));
LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5911C0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_67;
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
            *(a1 + 48) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_57:
              *(this + 24) = 1;
              goto LABEL_63;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_61;
          }

          if (v22 == 8)
          {
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_48:
            v2 = *(this + 1) + 8;
LABEL_62:
            *(this + 1) = v2;
            goto LABEL_63;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_61;
          }

          if (v22 == 6)
          {
            *(a1 + 48) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_61;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 48) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_61;
        }

        if (v22 == 4)
        {
          *(a1 + 48) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 44) = *(*this + v2);
LABEL_61:
          v2 = *(this + 1) + 4;
          goto LABEL_62;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 48) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_48;
        }

        if (v22 == 2)
        {
          *(a1 + 48) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_61;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_63:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_67:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B591560(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 48) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 48) & 2) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_17:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

void *sub_19B591678(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_1F0E39B08;
  return result;
}

void sub_19B59169C(PB::Base *this)
{
  *this = &unk_1F0E39B08;
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

void sub_19B591750(PB::Base *a1)
{
  sub_19B59169C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B591788(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "signalEnvironment");
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B59183C(int a1, PB::Reader *this)
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
            goto LABEL_31;
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

      if ((v9 >> 3) == 2)
      {
        operator new();
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

LABEL_31:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_19B591AE0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

uint64_t sub_19B591B44(uint64_t result)
{
  *result = &unk_1F0E39B40;
  *(result + 48) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_19B591B6C(PB::Base *this)
{
  *this = &unk_1F0E39B40;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B591BF0(PB::Base *a1)
{
  sub_19B591B6C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B591C28(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "course", *(a1 + 8));
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "courseAccuracy", *(a1 + 16));
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "horizontalAccuracy", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  PB::TextFormatter::format(this, "latitude", *(a1 + 32));
  if ((*(a1 + 64) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "longitude", *(a1 + 40));
  }

LABEL_7:
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "signalEnvironment");
  }

  if ((*(a1 + 64) & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B591D60(uint64_t a1, PB::Reader *this)
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
            goto LABEL_58;
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
            *(a1 + 64) |= 0x20u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
            {
LABEL_51:
              *(this + 24) = 1;
              goto LABEL_54;
            }

            *(a1 + 56) = *(*this + v25);
            goto LABEL_53;
          case 2:
            *(a1 + 64) |= 8u;
            v28 = *(this + 1);
            if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(this + 2))
            {
              goto LABEL_51;
            }

            *(a1 + 32) = *(*this + v28);
            goto LABEL_53;
          case 3:
            *(a1 + 64) |= 0x10u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
            {
              goto LABEL_51;
            }

            *(a1 + 40) = *(*this + v24);
            goto LABEL_53;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 64) |= 2u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 16) = *(*this + v27);
          goto LABEL_53;
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
          *(a1 + 64) |= 4u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 24) = *(*this + v26);
          goto LABEL_53;
        }

        if (v22 == 5)
        {
          *(a1 + 64) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 8) = *(*this + v23);
LABEL_53:
          *(this + 1) += 8;
          goto LABEL_54;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v30 = 0;
        return v30 & 1;
      }

LABEL_54:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_58:
  v30 = v4 ^ 1;
  return v30 & 1;
}

uint64_t sub_19B59212C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(result + 64) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 8));
  if ((*(v3 + 64) & 2) != 0)
  {
LABEL_7:
    result = PB::Writer::write(this, *(v3 + 16));
  }

LABEL_8:
  v5 = *(v3 + 48);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

void *sub_19B592224(void *result)
{
  *result = &unk_1F0E39B78;
  result[1] = 0;
  return result;
}

void sub_19B592244(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E39B78;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B5922C4(PB::Base *a1)
{
  sub_19B592244(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5922FC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B592378(int a1, PB::Reader *this)
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

uint64_t sub_19B5925B4(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B5925D0(void *result)
{
  *result = &unk_1F0E39BB0;
  result[1] = 0;
  return result;
}

void sub_19B5925F0(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E39BB0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B592670(PB::Base *a1)
{
  sub_19B5925F0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5926A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B592724(int a1, PB::Reader *this)
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

uint64_t sub_19B592960(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B59297C(void *result)
{
  *result = &unk_1F0E39BE8;
  result[1] = 0;
  return result;
}

void sub_19B59299C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E39BE8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B592A1C(PB::Base *a1)
{
  sub_19B59299C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B592A54(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B592AD0(int a1, PB::Reader *this)
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

uint64_t sub_19B592D0C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B592D28(uint64_t result)
{
  *result = &unk_1F0E2F118;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_19B592D50(PB::Base *this)
{
  *this = &unk_1F0E2F118;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B592DB4(PB::Base *a1)
{
  sub_19B592D50(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B592DEC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 40))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "velocity", v7);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B592E80(uint64_t a1, PB::Reader *this)
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
            goto LABEL_72;
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
        if ((v10 & 7) != 2)
        {
          v40 = *(a1 + 16);
          v39 = *(a1 + 24);
          if (v40 >= v39)
          {
            v42 = *(a1 + 8);
            v43 = v40 - v42;
            v44 = (v40 - v42) >> 3;
            v45 = v44 + 1;
            if ((v44 + 1) >> 61)
            {
LABEL_75:
              sub_19B5BE690();
            }

            v46 = v39 - v42;
            if (v46 >> 2 > v45)
            {
              v45 = v46 >> 2;
            }

            if (v46 >= 0x7FFFFFFFFFFFFFF8)
            {
              v47 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v47 = v45;
            }

            if (v47)
            {
              sub_19B4C50F0(a1 + 8, v47);
            }

            v48 = (v40 - v42) >> 3;
            v49 = (8 * v44);
            v50 = (8 * v44 - 8 * v48);
            *v49 = 0;
            v41 = v49 + 1;
            memcpy(v50, v42, v43);
            v51 = *(a1 + 8);
            *(a1 + 8) = v50;
            *(a1 + 16) = v41;
            *(a1 + 24) = 0;
            if (v51)
            {
              operator delete(v51);
            }
          }

          else
          {
            *v40 = 0;
            v41 = v40 + 8;
          }

          *(a1 + 16) = v41;
          v52 = *(this + 1);
          if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(this + 2))
          {
LABEL_65:
            *(this + 24) = 1;
            goto LABEL_68;
          }

          *(v41 - 1) = *(*this + v52);
          goto LABEL_67;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_74;
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
              goto LABEL_75;
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
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          *(a1 + 40) |= 1u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 32) = *(*this + v22);
LABEL_67:
          *(this + 1) += 8;
          goto LABEL_68;
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
LABEL_74:
          v53 = 0;
          return v53 & 1;
        }
      }

LABEL_68:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_72:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B59324C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 40))
  {
    result = PB::Writer::write(this, *(result + 32));
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    result = PB::Writer::write(this, v6);
  }

  return result;
}

double sub_19B5932B0(uint64_t a1)
{
  *a1 = &unk_1F0E2FE70;
  *(a1 + 124) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_19B5932EC(PB::Base *this)
{
  *this = &unk_1F0E2FE70;
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

void sub_19B593370(PB::Base *a1)
{
  sub_19B5932EC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5933A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 124);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "distance", *(a1 + 88));
    v5 = *(a1 + 124);
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

  PB::TextFormatter::format(this, "focalLength", *(a1 + 92));
  v5 = *(a1 + 124);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  PB::TextFormatter::format(this, "height", *(a1 + 96));
  if ((*(a1 + 124) & 0x10) != 0)
  {
LABEL_5:
    v6 = *(a1 + 100);
    PB::TextFormatter::format(this, "orientation");
  }

LABEL_6:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "origin", v9);
  }

  if ((*(a1 + 124) & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "pitch", *(a1 + 104));
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "principlePoint", v12);
  }

  v13 = *(a1 + 124);
  if ((v13 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "roll", *(a1 + 108));
    v13 = *(a1 + 124);
  }

  if (v13)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 80));
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "transform", v16);
  }

  v17 = *(a1 + 124);
  if ((v17 & 0x80) != 0)
  {
    v18 = *(a1 + 112);
    PB::TextFormatter::format(this, "type");
    v17 = *(a1 + 124);
    if ((v17 & 0x100) == 0)
    {
LABEL_20:
      if ((v17 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 124) & 0x100) == 0)
  {
    goto LABEL_20;
  }

  PB::TextFormatter::format(this, "width", *(a1 + 116));
  if ((*(a1 + 124) & 0x200) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(this, "yaw", *(a1 + 120));
  }

LABEL_22:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5935B4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_198;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 124) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 80) = *(*this + v23);
          v24 = *(this + 1) + 8;
          goto LABEL_193;
        case 2u:
          *(a1 + 124) |= 0x40u;
          v77 = *(this + 1);
          if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 108) = *(*this + v77);
          goto LABEL_192;
        case 3u:
          *(a1 + 124) |= 0x20u;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 104) = *(*this + v59);
          goto LABEL_192;
        case 4u:
          *(a1 + 124) |= 0x200u;
          v60 = *(this + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 120) = *(*this + v60);
          goto LABEL_192;
        case 5u:
          *(a1 + 124) |= 2u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 88) = *(*this + v41);
          goto LABEL_192;
        case 6u:
          *(a1 + 124) |= 0x80u;
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
                goto LABEL_175;
              }

              v81 += 7;
              ++v85;
              v14 = v82++ > 8;
            }

            while (!v14);
LABEL_136:
            LODWORD(v83) = 0;
            goto LABEL_175;
          }

          v105 = 0;
          v106 = 0;
          v83 = 0;
          v17 = v78 >= v79;
          v107 = v78 - v79;
          if (!v17)
          {
            v107 = 0;
          }

          v108 = (v80 + v79);
          v109 = v79 + 1;
          while (2)
          {
            if (v107)
            {
              v110 = *v108;
              *(this + 1) = v109;
              v83 |= (v110 & 0x7F) << v105;
              if (v110 < 0)
              {
                v105 += 7;
                --v107;
                ++v108;
                ++v109;
                v14 = v106++ > 8;
                if (v14)
                {
                  goto LABEL_136;
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

LABEL_175:
          *(a1 + 112) = v83;
          goto LABEL_194;
        case 7u:
          *(a1 + 124) |= 0x10u;
          v88 = *(this + 1);
          v87 = *(this + 2);
          v89 = *this;
          if (v88 <= 0xFFFFFFFFFFFFFFF5 && v88 + 10 <= v87)
          {
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = (v89 + v88);
            v94 = v88 + 1;
            do
            {
              *(this + 1) = v94;
              v95 = *v93++;
              v92 |= (v95 & 0x7F) << v90;
              if ((v95 & 0x80) == 0)
              {
                goto LABEL_178;
              }

              v90 += 7;
              ++v94;
              v14 = v91++ > 8;
            }

            while (!v14);
LABEL_144:
            LODWORD(v92) = 0;
            goto LABEL_178;
          }

          v111 = 0;
          v112 = 0;
          v92 = 0;
          v17 = v87 >= v88;
          v113 = v87 - v88;
          if (!v17)
          {
            v113 = 0;
          }

          v114 = (v89 + v88);
          v115 = v88 + 1;
          while (2)
          {
            if (v113)
            {
              v116 = *v114;
              *(this + 1) = v115;
              v92 |= (v116 & 0x7F) << v111;
              if (v116 < 0)
              {
                v111 += 7;
                --v113;
                ++v114;
                ++v115;
                v14 = v112++ > 8;
                if (v14)
                {
                  goto LABEL_144;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v92) = 0;
              }
            }

            else
            {
              LODWORD(v92) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_178:
          *(a1 + 100) = v92;
          goto LABEL_194;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_200:
              v148 = 0;
              return v148 & 1;
            }

            v61 = *(this + 1);
            v62 = *(this + 2);
            while (v61 < v62 && (*(this + 24) & 1) == 0)
            {
              v64 = *(a1 + 16);
              v63 = *(a1 + 24);
              if (v64 >= v63)
              {
                v66 = *(a1 + 8);
                v67 = v64 - v66;
                v68 = (v64 - v66) >> 2;
                v69 = v68 + 1;
                if ((v68 + 1) >> 62)
                {
                  goto LABEL_201;
                }

                v70 = v63 - v66;
                if (v70 >> 1 > v69)
                {
                  v69 = v70 >> 1;
                }

                if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v71 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v71 = v69;
                }

                if (v71)
                {
                  sub_19B4C4FA8(a1 + 8, v71);
                }

                v72 = (v64 - v66) >> 2;
                v73 = (4 * v68);
                v74 = (4 * v68 - 4 * v72);
                *v73 = 0;
                v65 = v73 + 1;
                memcpy(v74, v66, v67);
                v75 = *(a1 + 8);
                *(a1 + 8) = v74;
                *(a1 + 16) = v65;
                *(a1 + 24) = 0;
                if (v75)
                {
                  operator delete(v75);
                }
              }

              else
              {
                *v64 = 0;
                v65 = v64 + 4;
              }

              *(a1 + 16) = v65;
              v76 = *(this + 1);
              if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
              {
                goto LABEL_145;
              }

              *(v65 - 1) = *(*this + v76);
              v62 = *(this + 2);
              v61 = *(this + 1) + 4;
              *(this + 1) = v61;
            }

LABEL_146:
            PB::Reader::recallMark();
          }

          else
          {
            v104 = *(a1 + 16);
            v103 = *(a1 + 24);
            if (v104 >= v103)
            {
              v129 = *(a1 + 8);
              v130 = v104 - v129;
              v131 = (v104 - v129) >> 2;
              v132 = v131 + 1;
              if ((v131 + 1) >> 62)
              {
LABEL_201:
                sub_19B5BE690();
              }

              v133 = v103 - v129;
              if (v133 >> 1 > v132)
              {
                v132 = v133 >> 1;
              }

              if (v133 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v134 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v134 = v132;
              }

              if (v134)
              {
                sub_19B4C4FA8(a1 + 8, v134);
              }

              v143 = (v104 - v129) >> 2;
              v144 = (4 * v131);
              v145 = (4 * v131 - 4 * v143);
              *v144 = 0;
              v100 = v144 + 1;
              memcpy(v145, v129, v130);
              v146 = *(a1 + 8);
              *(a1 + 8) = v145;
              *(a1 + 16) = v100;
              *(a1 + 24) = 0;
              if (v146)
              {
                operator delete(v146);
              }
            }

            else
            {
              *v104 = 0;
              v100 = v104 + 4;
            }

            *(a1 + 16) = v100;
LABEL_188:
            v147 = *(this + 1);
            if (v147 <= 0xFFFFFFFFFFFFFFFBLL && v147 + 4 <= *(this + 2))
            {
              *(v100 - 1) = *(*this + v147);
LABEL_192:
              v24 = *(this + 1) + 4;
LABEL_193:
              *(this + 1) = v24;
            }

            else
            {
LABEL_190:
              *(this + 24) = 1;
            }
          }

LABEL_194:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_198;
          }

          break;
        case 9u:
          *(a1 + 124) |= 8u;
          v97 = *(this + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 96) = *(*this + v97);
          goto LABEL_192;
        case 0xAu:
          *(a1 + 124) |= 0x100u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 116) = *(*this + v58);
          goto LABEL_192;
        case 0xBu:
          *(a1 + 124) |= 4u;
          v96 = *(this + 1);
          if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 92) = *(*this + v96);
          goto LABEL_192;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_200;
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
                  goto LABEL_201;
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
                goto LABEL_145;
              }

              *(v29 - 1) = *(*this + v40);
              v26 = *(this + 2);
              v25 = *(this + 1) + 4;
              *(this + 1) = v25;
            }

            goto LABEL_146;
          }

          v99 = *(a1 + 40);
          v98 = *(a1 + 48);
          if (v99 >= v98)
          {
            v117 = *(a1 + 32);
            v118 = v99 - v117;
            v119 = (v99 - v117) >> 2;
            v120 = v119 + 1;
            if ((v119 + 1) >> 62)
            {
              goto LABEL_201;
            }

            v121 = v98 - v117;
            if (v121 >> 1 > v120)
            {
              v120 = v121 >> 1;
            }

            if (v121 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v122 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v122 = v120;
            }

            if (v122)
            {
              sub_19B4C4FA8(a1 + 32, v122);
            }

            v135 = (v99 - v117) >> 2;
            v136 = (4 * v119);
            v137 = (4 * v119 - 4 * v135);
            *v136 = 0;
            v100 = v136 + 1;
            memcpy(v137, v117, v118);
            v138 = *(a1 + 32);
            *(a1 + 32) = v137;
            *(a1 + 40) = v100;
            *(a1 + 48) = 0;
            if (v138)
            {
              operator delete(v138);
            }
          }

          else
          {
            *v99 = 0;
            v100 = v99 + 4;
          }

          *(a1 + 40) = v100;
          goto LABEL_188;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_200;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 64);
              v44 = *(a1 + 72);
              if (v45 >= v44)
              {
                v47 = *(a1 + 56);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_201;
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
                  sub_19B4C4FA8(a1 + 56, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 56);
                *(a1 + 56) = v55;
                *(a1 + 64) = v46;
                *(a1 + 72) = 0;
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

              *(a1 + 64) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
              {
LABEL_145:
                *(this + 24) = 1;
                goto LABEL_146;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 4;
              *(this + 1) = v42;
            }

            goto LABEL_146;
          }

          v102 = *(a1 + 64);
          v101 = *(a1 + 72);
          if (v102 >= v101)
          {
            v123 = *(a1 + 56);
            v124 = v102 - v123;
            v125 = (v102 - v123) >> 2;
            v126 = v125 + 1;
            if ((v125 + 1) >> 62)
            {
              goto LABEL_201;
            }

            v127 = v101 - v123;
            if (v127 >> 1 > v126)
            {
              v126 = v127 >> 1;
            }

            if (v127 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v128 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v128 = v126;
            }

            if (v128)
            {
              sub_19B4C4FA8(a1 + 56, v128);
            }

            v139 = (v102 - v123) >> 2;
            v140 = (4 * v125);
            v141 = (4 * v125 - 4 * v139);
            *v140 = 0;
            v100 = v140 + 1;
            memcpy(v141, v123, v124);
            v142 = *(a1 + 56);
            *(a1 + 56) = v141;
            *(a1 + 64) = v100;
            *(a1 + 72) = 0;
            if (v142)
            {
              operator delete(v142);
            }
          }

          else
          {
            *v102 = 0;
            v100 = v102 + 4;
          }

          *(a1 + 64) = v100;
          goto LABEL_188;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_200;
          }

          goto LABEL_194;
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

LABEL_198:
  v148 = v4 ^ 1;
  return v148 & 1;
}

uint64_t sub_19B59405C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 124);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 80));
    v4 = *(v3 + 124);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 124);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 124);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 124);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

LABEL_28:
    v16 = *(v3 + 112);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 124) & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 124);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  if ((v4 & 0x10) != 0)
  {
LABEL_8:
    v5 = *(v3 + 100);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_9:
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  v9 = *(v3 + 124);
  if ((v9 & 8) == 0)
  {
    if ((*(v3 + 124) & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    result = PB::Writer::write(this, *(v3 + 116));
    if ((*(v3 + 124) & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  result = PB::Writer::write(this, *(v3 + 96));
  v9 = *(v3 + 124);
  if ((v9 & 0x100) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v9 & 4) != 0)
  {
LABEL_15:
    result = PB::Writer::write(this, *(v3 + 92));
  }

LABEL_16:
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v14 = *(v3 + 56);
  v13 = *(v3 + 64);
  while (v14 != v13)
  {
    v15 = *v14++;
    result = PB::Writer::write(this, v15);
  }

  return result;
}

uint64_t sub_19B594200(uint64_t result)
{
  *result = &unk_1F0E2BF38;
  *(result + 56) = 0;
  return result;
}

void sub_19B594228(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B594260(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if ((v5 & 0x20) != 0)
  {
    v6 = *(a1 + 48);
    PB::TextFormatter::format(this, "batchedLocationFixType");
    v5 = *(a1 + 56);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "distOdom", *(a1 + 8));
  v5 = *(a1 + 56);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "distPed", *(a1 + 16));
  v5 = *(a1 + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = *(a1 + 52);
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "timeStart", *(a1 + 24));
  v5 = *(a1 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timeStop", *(a1 + 32));
  if ((*(a1 + 56) & 0x10) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "uncOdom", *(a1 + 40));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B594384(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 56) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_74;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_68;
          case 2:
            *(a1 + 56) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_68;
          case 3:
            *(a1 + 56) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_68;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 56) |= 0x40u;
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

          *(a1 + 52) = v32;
          goto LABEL_74;
        }

        if (v22 == 7)
        {
          *(a1 + 56) |= 0x20u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v35 = v2 - v23;
            v36 = (v24 + v23);
            v37 = v23 + 1;
            while (1)
            {
              if (!v35)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_73;
              }

              v38 = v37;
              v39 = *v36;
              *(this + 1) = v38;
              v27 |= (v39 & 0x7F) << v33;
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
                LODWORD(v27) = 0;
                goto LABEL_72;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_72:
            v2 = v38;
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

LABEL_73:
          *(a1 + 48) = v27;
          goto LABEL_74;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 56) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_68;
        }

        if (v22 == 5)
        {
          *(a1 + 56) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 40) = *(*this + v2);
LABEL_68:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_74;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_74:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_78:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B5947AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 56);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 56);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v5 = *(v3 + 52);
    result = PB::Writer::write(this);
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 56);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_15:
  v6 = *(v3 + 48);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B5948A8(uint64_t result)
{
  *result = &unk_1F0E39C20;
  *(result + 116) = 0;
  return result;
}

void sub_19B5948D0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B594908(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 116);
  if (v5)
  {
    PB::TextFormatter::format(this, "activeTime", *(a1 + 8));
    v5 = *(a1 + 116);
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

  PB::TextFormatter::format(this, "currentPace", *(a1 + 16));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "distance", *(a1 + 24));
  v5 = *(a1 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "duration", *(a1 + 32));
  v5 = *(a1 + 116);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "firstStepTime", *(a1 + 40));
  v5 = *(a1 + 116);
  if ((v5 & 0x1000) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(a1 + 104);
  PB::TextFormatter::format(this, "gradeType");
  v5 = *(a1 + 116);
  if ((v5 & 0x4000) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = *(a1 + 112);
  PB::TextFormatter::format(this, "isIndoor");
  v5 = *(a1 + 116);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = *(a1 + 113);
  PB::TextFormatter::format(this, "isMotionOverrideSet");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "metsWR", *(a1 + 48));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "rawDistance", *(a1 + 56));
  v5 = *(a1 + 116);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "startTime", *(a1 + 64));
  v5 = *(a1 + 116);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v9 = *(a1 + 108);
  PB::TextFormatter::format(this, "steps");
  v5 = *(a1 + 116);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "stepsDuration", *(a1 + 72));
  v5 = *(a1 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "truthMetsGradeCorrected", *(a1 + 80));
  v5 = *(a1 + 116);
  if ((v5 & 0x400) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  PB::TextFormatter::format(this, "truthMetsStrollerCorrected", *(a1 + 88));
  if ((*(a1 + 116) & 0x800) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 96));
  }

LABEL_18:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B594B4C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_115;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 116) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_100;
        case 2u:
          *(a1 + 116) |= 0x2000u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v51 = v2 - v32;
            v52 = (v33 + v32);
            v53 = v32 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_110;
              }

              v54 = v53;
              v55 = *v52;
              *(this + 1) = v54;
              v36 |= (v55 & 0x7F) << v49;
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
                LODWORD(v36) = 0;
LABEL_109:
                v2 = v54;
                goto LABEL_110;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_109;
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
              goto LABEL_110;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_110:
          *(a1 + 108) = v36;
          goto LABEL_111;
        case 3u:
          *(a1 + 116) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_100;
        case 4u:
          *(a1 + 116) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_100;
        case 5u:
          *(a1 + 116) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_100;
        case 6u:
          *(a1 + 116) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_100;
        case 7u:
          *(a1 + 116) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_100;
        case 8u:
          *(a1 + 116) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_100;
        case 9u:
          *(a1 + 116) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_100;
        case 0xAu:
          *(a1 + 116) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_100;
        case 0xBu:
          *(a1 + 116) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_100;
        case 0xCu:
          *(a1 + 116) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_100;
        case 0xDu:
          *(a1 + 116) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_76:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 80) = *(*this + v2);
LABEL_100:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_111;
        case 0xEu:
          *(a1 + 116) |= 0x8000u;
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

          *(a1 + 113) = v41;
          goto LABEL_111;
        case 0xFu:
          *(a1 + 116) |= 0x4000u;
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

          *(a1 + 112) = v23;
          goto LABEL_111;
        case 0x10u:
          *(a1 + 116) |= 0x1000u;
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
                goto LABEL_106;
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
LABEL_105:
                v2 = v47;
                goto LABEL_106;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_105;
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
              goto LABEL_106;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_106:
          *(a1 + 104) = v28;
          goto LABEL_111;
        default:
          if (!PB::Reader::skip(this))
          {
            v56 = 0;
            return v56 & 1;
          }

          v2 = *(this + 1);
LABEL_111:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_115;
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

LABEL_115:
  v56 = v4 ^ 1;
  return v56 & 1;
}

uint64_t sub_19B595228(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 116);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 116);
    if ((v4 & 0x2000) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(result + 116) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 116);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 116);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 116);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v7 = *(v3 + 112);
    result = PB::Writer::write(this);
    if ((*(v3 + 116) & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  v6 = *(v3 + 113);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 0x1000) == 0)
  {
    return result;
  }

LABEL_33:
  v8 = *(v3 + 104);

  return PB::Writer::writeVarInt(this);
}

double sub_19B595420(void *a1)
{
  *a1 = &unk_1F0E2E318;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 28) = 0xFFFFFFFFLL;
  return result;
}

void sub_19B59544C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B595484(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "radius", *(a1 + 24));
    v5 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestampExit", *(a1 + 8));
  v5 = *(a1 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "timestampSet", *(a1 + 16));
  if ((*(a1 + 32) & 8) != 0)
  {
LABEL_5:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "userResponse");
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B595548(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_45:
            *(this + 24) = 1;
            goto LABEL_61;
          }

          *(a1 + 24) = *(*this + v2);
          v2 = *(this + 1) + 4;
          goto LABEL_55;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 8u;
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
                goto LABEL_60;
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
                goto LABEL_59;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_59:
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

LABEL_60:
          *(a1 + 28) = v27;
          goto LABEL_61;
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
            goto LABEL_45;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_45;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 8;
LABEL_55:
          *(this + 1) = v2;
          goto LABEL_61;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_61:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_65:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B5958A4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 32);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 24));
      if ((*(v3 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 32);
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
  v5 = *(v3 + 28);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B59594C(uint64_t result)
{
  *result = &unk_1F0E2CC90;
  *(result + 56) = 0;
  return result;
}

void sub_19B595974(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5959AC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if (v5)
  {
    PB::TextFormatter::format(this, "complexHandMotionPercentage", *(a1 + 8));
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

  PB::TextFormatter::format(this, "confidence", *(a1 + 16));
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
  PB::TextFormatter::format(this, "endTime", *(a1 + 24));
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
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
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
  PB::TextFormatter::format(this, "straightnessMetric", *(a1 + 40));
  if ((*(a1 + 56) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "walkPercentage", *(a1 + 48));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B595AB0(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 56) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_48:
              *(this + 24) = 1;
              goto LABEL_51;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_50;
          case 5:
            *(a1 + 56) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_50;
          case 6:
            *(a1 + 56) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_50;
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
              goto LABEL_48;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_50;
          case 2:
            *(a1 + 56) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_50;
          case 3:
            *(a1 + 56) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 40) = *(*this + v2);
LABEL_50:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_51;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_51:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B595DB8(uint64_t result, PB::Writer *this)
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
      if ((v4 & 0x10) == 0)
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
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 56) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 56);
  if ((v4 & 0x20) != 0)
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

uint64_t sub_19B595E98(uint64_t result)
{
  *result = &unk_1F0E39C58;
  *(result + 20) = 0;
  return result;
}

void sub_19B595EC0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B595EF8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "motionState");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B595F74(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B596240(uint64_t result, PB::Writer *this)
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

double sub_19B5962AC(uint64_t a1)
{
  *a1 = &unk_1F0E39C90;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_19B5962DC(PB::Base *this)
{
  *this = &unk_1F0E39C90;
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

void sub_19B596370(PB::Base *a1)
{
  sub_19B5962DC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5963A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "gyroBias", v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "super");
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    PB::TextFormatter::format(this, "temperatureGyro", *(a1 + 40));
    v9 = *(a1 + 48);
  }

  if ((v9 & 2) != 0)
  {
    PB::TextFormatter::format(this, "temperatureGyroBias", *(a1 + 44));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B596498(uint64_t a1, PB::Reader *this)
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
            goto LABEL_79;
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
        goto LABEL_79;
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
        goto LABEL_50;
      }

      if ((v10 & 7) != 2)
      {
        v42 = *(a1 + 16);
        v41 = *(a1 + 24);
        if (v42 >= v41)
        {
          v44 = *(a1 + 8);
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 2;
          v47 = v46 + 1;
          if ((v46 + 1) >> 62)
          {
LABEL_82:
            sub_19B5BE690();
          }

          v48 = v41 - v44;
          if (v48 >> 1 > v47)
          {
            v47 = v48 >> 1;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v49 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            sub_19B4C4FA8(a1 + 8, v49);
          }

          v50 = (v42 - v44) >> 2;
          v51 = (4 * v46);
          v52 = (4 * v46 - 4 * v50);
          *v51 = 0;
          v43 = v51 + 1;
          memcpy(v52, v44, v45);
          v53 = *(a1 + 8);
          *(a1 + 8) = v52;
          *(a1 + 16) = v43;
          *(a1 + 24) = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *v42 = 0;
          v43 = v42 + 4;
        }

        *(a1 + 16) = v43;
        v54 = *(this + 1);
        if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(this + 2))
        {
LABEL_72:
          *(this + 24) = 1;
          goto LABEL_75;
        }

        *(v43 - 1) = *(*this + v54);
        goto LABEL_74;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_81;
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
          v30 = (v26 - v28) >> 2;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            goto LABEL_82;
          }

          v32 = v25 - v28;
          if (v32 >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_19B4C4FA8(a1 + 8, v33);
          }

          v34 = (v26 - v28) >> 2;
          v35 = (4 * v30);
          v36 = (4 * v30 - 4 * v34);
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
          v27 = v26 + 4;
        }

        *(a1 + 16) = v27;
        v38 = *(this + 1);
        if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v27 - 1) = *(*this + v38);
        v24 = *(this + 2);
        v23 = *(this + 1) + 4;
        *(this + 1) = v23;
      }

      PB::Reader::recallMark();
LABEL_75:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_79;
      }
    }

    if (v22 == 3)
    {
      *(a1 + 48) |= 2u;
      v40 = *(this + 1);
      if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
      {
        goto LABEL_72;
      }

      *(a1 + 44) = *(*this + v40);
      goto LABEL_74;
    }

    if (v22 == 4)
    {
      *(a1 + 48) |= 1u;
      v39 = *(this + 1);
      if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
      {
        goto LABEL_72;
      }

      *(a1 + 40) = *(*this + v39);
LABEL_74:
      *(this + 1) += 4;
      goto LABEL_75;
    }

LABEL_50:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_81:
      v55 = 0;
      return v55 & 1;
    }

    goto LABEL_75;
  }

LABEL_79:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t sub_19B596958(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
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

  v8 = *(v3 + 48);
  if ((v8 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 44));
    v8 = *(v3 + 48);
  }

  if (v8)
  {
    v9 = *(v3 + 40);

    return PB::Writer::write(this, v9);
  }

  return result;
}

uint64_t sub_19B596A04(uint64_t result)
{
  *result = &unk_1F0E39CC8;
  *(result + 64) = 0;
  return result;
}

void sub_19B596A2C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B596A64(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "firstRingSensorTimeStampMicroSeconds");
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "lastRingSensorTimeStampMicroSeconds");
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a1 + 56);
  PB::TextFormatter::format(this, "medianBufferNumSamples");
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "medianNorthAlignmentEstimateRad", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "newNorthAlignmentEstimateRad", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a1 + 60);
  PB::TextFormatter::format(this, "numRingSensorSamples");
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v10 = *(a1 + 40);
  PB::TextFormatter::format(this, "timeElapsedSinceLastUpdateMicroSeconds");
  if ((*(a1 + 64) & 0x20) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 48));
  }

LABEL_10:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B596BA8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_150;
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
            *(a1 + 64) |= 2u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v70 = 0;
              v71 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v72 = v2 - v55;
              v73 = (v56 + v55);
              v74 = v55 + 1;
              while (1)
              {
                if (!v72)
                {
                  v59 = 0;
                  *(this + 24) = 1;
                  goto LABEL_133;
                }

                v75 = v74;
                v76 = *v73;
                *(this + 1) = v75;
                v59 |= (v76 & 0x7F) << v70;
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
                  v59 = 0;
                  goto LABEL_132;
                }
              }

              if (*(this + 24))
              {
                v59 = 0;
              }

LABEL_132:
              v2 = v75;
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
                  v59 = 0;
                  break;
                }
              }
            }

LABEL_133:
            *(a1 + 16) = v59;
            goto LABEL_146;
          }

          if (v22 == 8)
          {
            *(a1 + 64) |= 0x80u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v91 = 0;
              v92 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v93 = v2 - v39;
              v94 = (v40 + v39);
              v95 = v39 + 1;
              while (1)
              {
                if (!v93)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_145;
                }

                v96 = v95;
                v97 = *v94;
                *(this + 1) = v96;
                v43 |= (v97 & 0x7F) << v91;
                if ((v97 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                --v93;
                ++v94;
                v95 = v96 + 1;
                v14 = v92++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_144;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_144:
              v2 = v96;
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

LABEL_145:
            *(a1 + 60) = v43;
            goto LABEL_146;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 64) |= 0x10u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v65 = v2 - v47;
              v66 = (v48 + v47);
              v67 = v47 + 1;
              while (1)
              {
                if (!v65)
                {
                  v51 = 0;
                  *(this + 24) = 1;
                  goto LABEL_129;
                }

                v68 = v67;
                v69 = *v66;
                *(this + 1) = v68;
                v51 |= (v69 & 0x7F) << v63;
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
                  v51 = 0;
                  goto LABEL_128;
                }
              }

              if (*(this + 24))
              {
                v51 = 0;
              }

LABEL_128:
              v2 = v68;
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
                  v51 = 0;
                  break;
                }
              }
            }

LABEL_129:
            *(a1 + 40) = v51;
            goto LABEL_146;
          }

          if (v22 == 6)
          {
            *(a1 + 64) |= 1u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v77 = 0;
              v78 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v79 = v2 - v23;
              v80 = (v24 + v23);
              v81 = v23 + 1;
              while (1)
              {
                if (!v79)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_137;
                }

                v82 = v81;
                v83 = *v80;
                *(this + 1) = v82;
                v27 |= (v83 & 0x7F) << v77;
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
                  v27 = 0;
                  goto LABEL_136;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_136:
              v2 = v82;
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

LABEL_137:
            *(a1 + 8) = v27;
            goto LABEL_146;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_69:
            *(this + 24) = 1;
            goto LABEL_146;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_120;
        }

        if (v22 == 4)
        {
          *(a1 + 64) |= 0x40u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v84 = 0;
            v85 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v86 = v2 - v31;
            v87 = (v32 + v31);
            v88 = v31 + 1;
            while (1)
            {
              if (!v86)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_141;
              }

              v89 = v88;
              v90 = *v87;
              *(this + 1) = v89;
              v35 |= (v90 & 0x7F) << v84;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              --v86;
              ++v87;
              v88 = v89 + 1;
              v14 = v85++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_140;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_140:
            v2 = v89;
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

LABEL_141:
          *(a1 + 56) = v35;
          goto LABEL_146;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_69;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_120;
        }

        if (v22 == 2)
        {
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_69;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_120:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_146;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v98 = 0;
        return v98 & 1;
      }

      v2 = *(this + 1);
LABEL_146:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_150:
  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t sub_19B59733C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 48));
    v4 = *(v3 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 64) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 64) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  v7 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v9 = *(v3 + 60);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B597454(uint64_t result)
{
  *result = &unk_1F0E39D00;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_19B597480(PB::Base *this)
{
  *this = &unk_1F0E39D00;
  v2 = *(this + 6);
  *(this + 6) = 0;
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

void sub_19B597514(PB::Base *a1)
{
  sub_19B597480(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B59754C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "lastAuxTimeStampMicroSeconds");
    v5 = *(a1 + 64);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 40);
    PB::TextFormatter::format(this, "lastRingSensorTimeStampMicroSeconds");
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "qSP", v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(*v11 + 32))(v11, this, "super");
  }

  if ((*(a1 + 64) & 4) != 0)
  {
    v12 = *(a1 + 56);
    PB::TextFormatter::format(this, "timeStampMicroSeconds");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B597658(uint64_t a1, PB::Reader *this)
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
            goto LABEL_130;
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
        goto LABEL_130;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v22 != 3)
      {
        if (v22 == 4)
        {
          *(a1 + 64) |= 1u;
          v58 = *(this + 1);
          v57 = *(this + 2);
          v59 = *this;
          if (v58 > 0xFFFFFFFFFFFFFFF5 || v58 + 10 > v57)
          {
            v66 = 0;
            v67 = 0;
            v62 = 0;
            v17 = v57 >= v58;
            v68 = v57 - v58;
            if (!v17)
            {
              v68 = 0;
            }

            v69 = (v59 + v58);
            v70 = v58 + 1;
            while (1)
            {
              if (!v68)
              {
                v62 = 0;
                *(this + 24) = 1;
                goto LABEL_112;
              }

              v71 = *v69;
              *(this + 1) = v70;
              v62 |= (v71 & 0x7F) << v66;
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
LABEL_80:
                v62 = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              v62 = 0;
            }
          }

          else
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = (v59 + v58);
            v64 = v58 + 1;
            while (1)
            {
              *(this + 1) = v64;
              v65 = *v63++;
              v62 |= (v65 & 0x7F) << v60;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              ++v64;
              v14 = v61++ > 8;
              if (v14)
              {
                goto LABEL_80;
              }
            }
          }

LABEL_112:
          *(a1 + 32) = v62;
          goto LABEL_126;
        }

        if (v22 == 5)
        {
          *(a1 + 64) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v75 = 0;
            v76 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v77 = v23 - v24;
            if (!v17)
            {
              v77 = 0;
            }

            v78 = (v25 + v24);
            v79 = v24 + 1;
            while (1)
            {
              if (!v77)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_115;
              }

              v80 = *v78;
              *(this + 1) = v79;
              v28 |= (v80 & 0x7F) << v75;
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
LABEL_90:
                v28 = 0;
                goto LABEL_115;
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
                goto LABEL_90;
              }
            }
          }

LABEL_115:
          *(a1 + 40) = v28;
          goto LABEL_126;
        }

        goto LABEL_71;
      }

      if ((v10 & 7) == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_132;
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
              goto LABEL_133;
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
            *(this + 24) = 1;
            break;
          }

          *(v45 - 1) = *(*this + v56);
          v42 = *(this + 2);
          v41 = *(this + 1) + 8;
          *(this + 1) = v41;
        }

        PB::Reader::recallMark();
      }

      else
      {
        v73 = *(a1 + 16);
        v72 = *(a1 + 24);
        if (v73 >= v72)
        {
          v87 = *(a1 + 8);
          v88 = v73 - v87;
          v89 = (v73 - v87) >> 3;
          v90 = v89 + 1;
          if ((v89 + 1) >> 61)
          {
LABEL_133:
            sub_19B5BE690();
          }

          v91 = v72 - v87;
          if (v91 >> 2 > v90)
          {
            v90 = v91 >> 2;
          }

          if (v91 >= 0x7FFFFFFFFFFFFFF8)
          {
            v92 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v92 = v90;
          }

          if (v92)
          {
            sub_19B4C50F0(a1 + 8, v92);
          }

          v93 = (v73 - v87) >> 3;
          v94 = (8 * v89);
          v95 = (8 * v89 - 8 * v93);
          *v94 = 0;
          v74 = v94 + 1;
          memcpy(v95, v87, v88);
          v96 = *(a1 + 8);
          *(a1 + 8) = v95;
          *(a1 + 16) = v74;
          *(a1 + 24) = 0;
          if (v96)
          {
            operator delete(v96);
          }
        }

        else
        {
          *v73 = 0;
          v74 = v73 + 8;
        }

        *(a1 + 16) = v74;
        v97 = *(this + 1);
        if (v97 <= 0xFFFFFFFFFFFFFFF7 && v97 + 8 <= *(this + 2))
        {
          *(v74 - 1) = *(*this + v97);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

LABEL_126:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_130;
      }
    }

    if (v22 == 1)
    {
      operator new();
    }

    if (v22 == 2)
    {
      *(a1 + 64) |= 4u;
      v33 = *(this + 1);
      v32 = *(this + 2);
      v34 = *this;
      if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
      {
        v81 = 0;
        v82 = 0;
        v37 = 0;
        v17 = v32 >= v33;
        v83 = v32 - v33;
        if (!v17)
        {
          v83 = 0;
        }

        v84 = (v34 + v33);
        v85 = v33 + 1;
        while (1)
        {
          if (!v83)
          {
            v37 = 0;
            *(this + 24) = 1;
            goto LABEL_118;
          }

          v86 = *v84;
          *(this + 1) = v85;
          v37 |= (v86 & 0x7F) << v81;
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
LABEL_98:
            v37 = 0;
            goto LABEL_118;
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
            goto LABEL_98;
          }
        }
      }

LABEL_118:
      *(a1 + 56) = v37;
      goto LABEL_126;
    }

LABEL_71:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_132:
      v98 = 0;
      return v98 & 1;
    }

    goto LABEL_126;
  }

LABEL_130:
  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t sub_19B597D9C(uint64_t result)
{
  *result = &unk_1F0E39D38;
  *(result + 76) = 0;
  return result;
}

uint64_t sub_19B597DC0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if ((*(v3 + 64) & 4) != 0)
  {
    v5 = *(v3 + 56);
    result = PB::Writer::writeVarInt(this);
  }

  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  v9 = *(v3 + 64);
  if (v9)
  {
    v10 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    v9 = *(v3 + 64);
  }

  if ((v9 & 2) != 0)
  {
    v11 = *(v3 + 40);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void sub_19B597E88(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B597EC0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 76);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitudeAngle", *(a1 + 8));
    v5 = *(a1 + 76);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "azimuthAngle", *(a1 + 16));
  v5 = *(a1 + 76);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(a1 + 72);
  PB::TextFormatter::format(this, "estimated");
  v5 = *(a1 + 76);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 24);
  PB::TextFormatter::format(this, "estimationUpdateIndex");
  v5 = *(a1 + 76);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "rollAngle", *(a1 + 32));
  v5 = *(a1 + 76);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 76);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "x", *(a1 + 48));
  v5 = *(a1 + 76);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "y", *(a1 + 56));
  if ((*(a1 + 76) & 0x80) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "z", *(a1 + 64));
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B598024(uint64_t a1, PB::Reader *this)
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
            goto LABEL_87;
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
            *(a1 + 76) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_83;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_77;
          }

          if (v22 == 4)
          {
            *(a1 + 76) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_77;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 76) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_77;
          }

          if (v22 == 2)
          {
            *(a1 + 76) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_77;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 76) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_77;
        }

        if (v22 == 6)
        {
          *(a1 + 76) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_77;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 76) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 32) = *(*this + v2);
LABEL_77:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_83;
          case 8:
            *(a1 + 76) |= 4u;
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
                  v29 = 0;
                  *(this + 24) = 1;
                  goto LABEL_82;
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
                  v29 = 0;
                  goto LABEL_81;
                }
              }

              if (*(this + 24))
              {
                v29 = 0;
              }

LABEL_81:
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
                  v29 = 0;
                  break;
                }
              }
            }

LABEL_82:
            *(a1 + 24) = v29;
            goto LABEL_83;
          case 9:
            *(a1 + 76) |= 0x100u;
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

            *(a1 + 72) = v24;
            goto LABEL_83;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_83:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_87:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B5984D4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 76);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 76);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 76);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 76);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 76);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 76);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v5 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 76) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 76);
  if ((v4 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v6 = *(v3 + 72);

  return PB::Writer::write(this);
}

uint64_t sub_19B598608(uint64_t result)
{
  *result = &unk_1F0E39D70;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_19B598634(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B59866C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    PB::TextFormatter::format(this, "avgRelOmegaRps", *(a1 + 8));
    v5 = *(a1 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 24);
  PB::TextFormatter::format(this, "ringSensorTrustModelMode");
  v5 = *(a1 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  if ((*(a1 + 32) & 8) != 0)
  {
LABEL_5:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "trustPencilRingSensorBool");
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B598730(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 4u;
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
                goto LABEL_60;
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
                goto LABEL_59;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_59:
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

LABEL_60:
          *(a1 + 24) = v29;
          goto LABEL_61;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_36:
            *(this + 24) = 1;
            goto LABEL_61;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_55;
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
            goto LABEL_36;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_55:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_61;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 8u;
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

          *(a1 + 28) = v24;
          goto LABEL_61;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_61:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_65:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B598A90(uint64_t result, PB::Writer *this)
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
  result = PB::Writer::write(this);
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

uint64_t sub_19B598B38(uint64_t result)
{
  *result = &unk_1F0E2FB28;
  *(result + 24) = 0;
  return result;
}

void sub_19B598B60(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B598B98(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "tipForce", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B598C14(uint64_t a1, PB::Reader *this)
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
        *(a1 + 24) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_29;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_33:
        v2 = *(this + 1) + 8;
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

    *(a1 + 24) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_29:
      *(this + 24) = 1;
      goto LABEL_34;
    }

    *(a1 + 16) = *(*this + v2);
    goto LABEL_33;
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B598E14(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_19B598E80(uint64_t result)
{
  *result = &unk_1F0E30650;
  *(result + 88) = 0;
  return result;
}

void sub_19B598EA8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}