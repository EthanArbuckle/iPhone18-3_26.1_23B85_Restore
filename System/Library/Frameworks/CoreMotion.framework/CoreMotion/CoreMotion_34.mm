uint64_t sub_19B57F3D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 220);
  if ((v4 & 0x40000) != 0)
  {
    result = PB::Writer::write(this, *(result + 152));
    v4 = *(v3 + 220);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 220);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 220);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 220);
  if ((v4 & 0x20000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 220);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 220);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 220);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 220);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 220);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 220);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v5 = *(v3 + 204);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 220);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 208));
  v4 = *(v3 + 220);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v6 = *(v3 + 212);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x200000) == 0)
  {
LABEL_16:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 220);
  if ((v4 & 0x800000) == 0)
  {
LABEL_17:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 220);
  if ((v4 & 0x400000) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 180));
  v4 = *(v3 + 220);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 220);
  if ((v4 & 8) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 220);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 220);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v7 = *(v3 + 192);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v8 = *(v3 + 200);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v9 = *(v3 + 188);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x20) == 0)
  {
LABEL_25:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 220);
  if ((v4 & 0x40) == 0)
  {
LABEL_26:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 220);
  if ((v4 & 0x8000) == 0)
  {
LABEL_27:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 220);
  if ((v4 & 0x400) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 220);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v10 = *(v3 + 216);
  result = PB::Writer::write(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x1000) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 220);
  if ((v4 & 0x4000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    result = PB::Writer::write(this, *(v3 + 112));
    if ((*(v3 + 220) & 0x4000000) == 0)
    {
      return result;
    }

    goto LABEL_65;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 220);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x4000000) == 0)
  {
    return result;
  }

LABEL_65:
  v11 = *(v3 + 196);

  return PB::Writer::writeVarInt(this);
}

double sub_19B57F788(uint64_t a1)
{
  *a1 = &unk_1F0E39948;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B57F7B8(PB::Base *this)
{
  *this = &unk_1F0E39948;
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

void sub_19B57F82C(PB::Base *a1)
{
  sub_19B57F7B8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57F864(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "loiAltitude", v7);
  }

  v8 = a1[4];
  v9 = a1[5];
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "loiVerticalUncertainty", v10);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57F910(void *a1, PB::Reader *this)
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
        goto LABEL_102;
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
        goto LABEL_102;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        if (v22 != 2)
        {
          v56 = a1[2];
          v55 = a1[3];
          if (v56 >= v55)
          {
            v60 = a1[1];
            v61 = v56 - v60;
            v62 = (v56 - v60) >> 3;
            v63 = v62 + 1;
            if ((v62 + 1) >> 61)
            {
              goto LABEL_105;
            }

            v64 = v55 - v60;
            if (v64 >> 2 > v63)
            {
              v63 = v64 >> 2;
            }

            if (v64 >= 0x7FFFFFFFFFFFFFF8)
            {
              v65 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v65 = v63;
            }

            if (v65)
            {
              sub_19B4C50F0((a1 + 1), v65);
            }

            v72 = (v56 - v60) >> 3;
            v73 = (8 * v62);
            v74 = (8 * v62 - 8 * v72);
            *v73 = 0;
            v57 = v73 + 1;
            memcpy(v74, v60, v61);
            v75 = a1[1];
            a1[1] = v74;
            a1[2] = v57;
            a1[3] = 0;
            if (v75)
            {
              operator delete(v75);
            }
          }

          else
          {
            *v56 = 0;
            v57 = v56 + 8;
          }

          a1[2] = v57;
LABEL_94:
          v80 = *(this + 1);
          if (v80 <= 0xFFFFFFFFFFFFFFF7 && v80 + 8 <= *(this + 2))
          {
            *(v57 - 1) = *(*this + v80);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_98;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_104;
        }

        v23 = *(this + 1);
        v24 = *(this + 2);
        while (v23 < v24 && (*(this + 24) & 1) == 0)
        {
          v26 = a1[2];
          v25 = a1[3];
          if (v26 >= v25)
          {
            v28 = a1[1];
            v29 = v26 - v28;
            v30 = (v26 - v28) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              goto LABEL_105;
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
              sub_19B4C50F0((a1 + 1), v33);
            }

            v34 = (v26 - v28) >> 3;
            v35 = (8 * v30);
            v36 = (8 * v30 - 8 * v34);
            *v35 = 0;
            v27 = v35 + 1;
            memcpy(v36, v28, v29);
            v37 = a1[1];
            a1[1] = v36;
            a1[2] = v27;
            a1[3] = 0;
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

          a1[2] = v27;
          v38 = *(this + 1);
          if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(this + 2))
          {
            goto LABEL_70;
          }

          *(v27 - 1) = *(*this + v38);
          v24 = *(this + 2);
          v23 = *(this + 1) + 8;
          *(this + 1) = v23;
        }

LABEL_71:
        PB::Reader::recallMark();
        goto LABEL_98;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_104:
        v81 = 0;
        return v81 & 1;
      }

LABEL_98:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_102;
      }
    }

    if (v22 != 2)
    {
      v59 = a1[5];
      v58 = a1[6];
      if (v59 >= v58)
      {
        v66 = a1[4];
        v67 = v59 - v66;
        v68 = (v59 - v66) >> 3;
        v69 = v68 + 1;
        if ((v68 + 1) >> 61)
        {
LABEL_105:
          sub_19B5BE690();
        }

        v70 = v58 - v66;
        if (v70 >> 2 > v69)
        {
          v69 = v70 >> 2;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF8)
        {
          v71 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v69;
        }

        if (v71)
        {
          sub_19B4C50F0((a1 + 4), v71);
        }

        v76 = (v59 - v66) >> 3;
        v77 = (8 * v68);
        v78 = (8 * v68 - 8 * v76);
        *v77 = 0;
        v57 = v77 + 1;
        memcpy(v78, v66, v67);
        v79 = a1[4];
        a1[4] = v78;
        a1[5] = v57;
        a1[6] = 0;
        if (v79)
        {
          operator delete(v79);
        }
      }

      else
      {
        *v59 = 0;
        v57 = v59 + 8;
      }

      a1[5] = v57;
      goto LABEL_94;
    }

    if (PB::Reader::placeMark())
    {
      goto LABEL_104;
    }

    v39 = *(this + 1);
    v40 = *(this + 2);
    while (v39 < v40 && (*(this + 24) & 1) == 0)
    {
      v42 = a1[5];
      v41 = a1[6];
      if (v42 >= v41)
      {
        v44 = a1[4];
        v45 = v42 - v44;
        v46 = (v42 - v44) >> 3;
        v47 = v46 + 1;
        if ((v46 + 1) >> 61)
        {
          goto LABEL_105;
        }

        v48 = v41 - v44;
        if (v48 >> 2 > v47)
        {
          v47 = v48 >> 2;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF8)
        {
          v49 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          sub_19B4C50F0((a1 + 4), v49);
        }

        v50 = (v42 - v44) >> 3;
        v51 = (8 * v46);
        v52 = (8 * v46 - 8 * v50);
        *v51 = 0;
        v43 = v51 + 1;
        memcpy(v52, v44, v45);
        v53 = a1[4];
        a1[4] = v52;
        a1[5] = v43;
        a1[6] = 0;
        if (v53)
        {
          operator delete(v53);
        }
      }

      else
      {
        *v42 = 0;
        v43 = v42 + 8;
      }

      a1[5] = v43;
      v54 = *(this + 1);
      if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(this + 2))
      {
LABEL_70:
        *(this + 24) = 1;
        goto LABEL_71;
      }

      *(v43 - 1) = *(*this + v54);
      v40 = *(this + 2);
      v39 = *(this + 1) + 8;
      *(this + 1) = v39;
    }

    goto LABEL_71;
  }

LABEL_102:
  v81 = v4 ^ 1;
  return v81 & 1;
}

uint64_t sub_19B57FE4C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v8 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::write(this, v9);
  }

  return result;
}

uint64_t sub_19B57FEB8(uint64_t result)
{
  *result = &unk_1F0E2FF18;
  *(result + 84) = -1;
  *(result + 92) = 0;
  return result;
}

void sub_19B57FEE8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57FF20(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if (v5)
  {
    PB::TextFormatter::format(this, "arrivalDate", *(a1 + 8));
    v5 = *(a1 + 92);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a1 + 92) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 80);
  PB::TextFormatter::format(this, "confidence");
  v5 = *(a1 + 92);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "confidenceOfGeoLocation", *(a1 + 16));
  v5 = *(a1 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "departureDate", *(a1 + 24));
  v5 = *(a1 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "distanceToLoi", *(a1 + 32));
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = *(a1 + 88);
  PB::TextFormatter::format(this, "hashedLatLong");
  v5 = *(a1 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "horizontalAccuracy", *(a1 + 40));
  v5 = *(a1 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "latitude", *(a1 + 48));
  v5 = *(a1 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "longitude", *(a1 + 56));
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(a1 + 84);
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "uncertaintyOfGeoLocation", *(a1 + 64));
  if ((*(a1 + 92) & 0x100) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "withinDistance", *(a1 + 72));
  }

LABEL_14:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5800E4(uint64_t a1, PB::Reader *this)
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
              *(a1 + 92) |= 0x400u;
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
                    LODWORD(v37) = 0;
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
                    LODWORD(v37) = 0;
                    goto LABEL_110;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v37) = 0;
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
                    LODWORD(v37) = 0;
                    break;
                  }
                }
              }

LABEL_111:
              *(a1 + 84) = v37;
              goto LABEL_112;
            case 0xB:
              *(a1 + 92) |= 8u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
LABEL_79:
                *(this + 24) = 1;
                goto LABEL_112;
              }

              *(a1 + 32) = *(*this + v2);
              goto LABEL_101;
            case 0xC:
              *(a1 + 92) |= 0x800u;
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

              *(a1 + 88) = v32;
              goto LABEL_112;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 92) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 72) = *(*this + v2);
              goto LABEL_101;
            case 8:
              *(a1 + 92) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 64) = *(*this + v2);
              goto LABEL_101;
            case 9:
              *(a1 + 92) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 16) = *(*this + v2);
              goto LABEL_101;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 92) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_101;
          case 5:
            *(a1 + 92) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_101;
          case 6:
            *(a1 + 92) |= 0x200u;
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
                  LODWORD(v27) = 0;
                  goto LABEL_106;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
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
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_107:
            *(a1 + 80) = v27;
            goto LABEL_112;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 92) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_101;
          case 2:
            *(a1 + 92) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_101;
          case 3:
            *(a1 + 92) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_101:
            v2 = *(this + 1) + 8;
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

uint64_t sub_19B580720(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 92);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
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

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 92);
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
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 92) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  v6 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_25:
  v7 = *(v3 + 88);

  return PB::Writer::write(this);
}

void *sub_19B5808A8(void *result)
{
  *result = &unk_1F0E2EC10;
  result[4] = 0;
  result[24] = 0;
  return result;
}

void sub_19B5808D0(PB::Base *this)
{
  *this = &unk_1F0E2EC10;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B580954(PB::Base *a1)
{
  sub_19B5808D0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58098C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 192);
  if ((v5 & 0x40) != 0)
  {
    v10 = *(a1 + 64);
    PB::TextFormatter::format(this, "alsLux");
    v5 = *(a1 + 192);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(a1 + 68);
  PB::TextFormatter::format(this, "caltype");
  v5 = *(a1 + 192);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v12 = *(a1 + 72);
  PB::TextFormatter::format(this, "confidence");
  v5 = *(a1 + 192);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "drivingArmLikelihoodSum", *(a1 + 76));
  v5 = *(a1 + 192);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "drivingStowedLikelihoodSum", *(a1 + 80));
  v5 = *(a1 + 192);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v13 = *(a1 + 84);
  PB::TextFormatter::format(this, "exitState");
  v5 = *(a1 + 192);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "hidTimestamp", *(a1 + 8));
  v5 = *(a1 + 192);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(a1 + 88);
  PB::TextFormatter::format(this, "isMoving");
  v5 = *(a1 + 192);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(a1 + 92);
  PB::TextFormatter::format(this, "isVehicular");
  v5 = *(a1 + 192);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "machineFrequency", *(a1 + 96));
  v5 = *(a1 + 192);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  v16 = *(a1 + 100);
  PB::TextFormatter::format(this, "motionType");
  v5 = *(a1 + 192);
  if ((v5 & 0x10000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  v17 = *(a1 + 104);
  PB::TextFormatter::format(this, "mounted");
  v5 = *(a1 + 192);
  if ((v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  v18 = *(a1 + 108);
  PB::TextFormatter::format(this, "mountedConfidence");
  v5 = *(a1 + 192);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  v19 = *(a1 + 16);
  PB::TextFormatter::format(this, "now");
  v5 = *(a1 + 192);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  v20 = *(a1 + 112);
  PB::TextFormatter::format(this, "rawConfidence");
  v5 = *(a1 + 192);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  v21 = *(a1 + 116);
  PB::TextFormatter::format(this, "rawIsVehicular");
  v5 = *(a1 + 192);
  if ((v5 & 0x100000) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  v22 = *(a1 + 120);
  PB::TextFormatter::format(this, "rawMotionType");
  v5 = *(a1 + 192);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "rowStrokeAmplitude", *(a1 + 124));
  v5 = *(a1 + 192);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "rowStrokeFrequency", *(a1 + 128));
  v5 = *(a1 + 192);
  if ((v5 & 0x800000) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "rowStrokePower", *(a1 + 132));
  v5 = *(a1 + 192);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  v23 = *(a1 + 136);
  PB::TextFormatter::format(this, "seq");
  v5 = *(a1 + 192);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "ssLikelihoodSum", *(a1 + 140));
  v5 = *(a1 + 192);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_24:
    if ((v5 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  v24 = *(a1 + 144);
  PB::TextFormatter::format(this, "standing");
  v5 = *(a1 + 192);
  if ((v5 & 4) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  v25 = *(a1 + 24);
  PB::TextFormatter::format(this, "startTime");
  v5 = *(a1 + 192);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  v26 = *(a1 + 148);
  PB::TextFormatter::format(this, "turn");
  v5 = *(a1 + 192);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  v27 = *(a1 + 152);
  PB::TextFormatter::format(this, "typeYouth");
  v5 = *(a1 + 192);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "vectorMagnitude", *(a1 + 156));
  v5 = *(a1 + 192);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  v28 = *(a1 + 160);
  PB::TextFormatter::format(this, "vehicleExitState");
  v5 = *(a1 + 192);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean0", *(a1 + 164));
  v5 = *(a1 + 192);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean1", *(a1 + 168));
  v5 = *(a1 + 192);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean2", *(a1 + 172));
  v5 = *(a1 + 192);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_77:
  v29 = *(a1 + 176);
  PB::TextFormatter::format(this, "vehicleType");
  if ((*(a1 + 192) & 0x800000000) != 0)
  {
LABEL_34:
    v6 = *(a1 + 180);
    PB::TextFormatter::format(this, "vehicularConfidence");
  }

LABEL_35:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "vehicularFlags");
  }

  v8 = *(a1 + 192);
  if ((v8 & 8) != 0)
  {
    PB::TextFormatter::format(this, "wallStartTime", *(a1 + 40));
    v8 = *(a1 + 192);
    if ((v8 & 0x10) == 0)
    {
LABEL_39:
      if ((v8 & 0x1000000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_81;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_39;
  }

  v30 = *(a1 + 48);
  PB::TextFormatter::format(this, "workoutDetectionTime");
  v8 = *(a1 + 192);
  if ((v8 & 0x1000000000) == 0)
  {
LABEL_40:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_82;
  }

LABEL_81:
  v31 = *(a1 + 184);
  PB::TextFormatter::format(this, "workoutDetectionType");
  v8 = *(a1 + 192);
  if ((v8 & 0x20) == 0)
  {
LABEL_41:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_82:
  v32 = *(a1 + 56);
  PB::TextFormatter::format(this, "workoutEscalationTime");
  if ((*(a1 + 192) & 0x2000000000) != 0)
  {
LABEL_42:
    v9 = *(a1 + 188);
    PB::TextFormatter::format(this, "youthClassificationReason");
  }

LABEL_43:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B580EC8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_548;
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
          *(a1 + 192) |= 0x8000uLL;
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
                goto LABEL_504;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_336:
            LODWORD(v27) = 0;
            goto LABEL_504;
          }

          v327 = 0;
          v328 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v329 = v22 - v23;
          if (!v17)
          {
            v329 = 0;
          }

          v330 = (v24 + v23);
          v331 = v23 + 1;
          while (2)
          {
            if (v329)
            {
              v332 = *v330;
              *(this + 1) = v331;
              v27 |= (v332 & 0x7F) << v327;
              if (v332 < 0)
              {
                v327 += 7;
                --v329;
                ++v330;
                ++v331;
                v14 = v328++ > 8;
                if (v14)
                {
                  goto LABEL_336;
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

LABEL_504:
          *(a1 + 100) = v27;
          goto LABEL_544;
        case 2u:
          *(a1 + 192) |= 0x100uLL;
          v138 = *(this + 1);
          v137 = *(this + 2);
          v139 = *this;
          if (v138 <= 0xFFFFFFFFFFFFFFF5 && v138 + 10 <= v137)
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = (v139 + v138);
            v144 = v138 + 1;
            do
            {
              *(this + 1) = v144;
              v145 = *v143++;
              v142 |= (v145 & 0x7F) << v140;
              if ((v145 & 0x80) == 0)
              {
                goto LABEL_507;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_344:
            LODWORD(v142) = 0;
            goto LABEL_507;
          }

          v333 = 0;
          v334 = 0;
          v142 = 0;
          v17 = v137 >= v138;
          v335 = v137 - v138;
          if (!v17)
          {
            v335 = 0;
          }

          v336 = (v139 + v138);
          v337 = v138 + 1;
          while (2)
          {
            if (v335)
            {
              v338 = *v336;
              *(this + 1) = v337;
              v142 |= (v338 & 0x7F) << v333;
              if (v338 < 0)
              {
                v333 += 7;
                --v335;
                ++v336;
                ++v337;
                v14 = v334++ > 8;
                if (v14)
                {
                  goto LABEL_344;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v142) = 0;
              }
            }

            else
            {
              LODWORD(v142) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_507:
          *(a1 + 72) = v142;
          goto LABEL_544;
        case 3u:
          *(a1 + 192) |= 0x10000uLL;
          v102 = *(this + 1);
          v101 = *(this + 2);
          v103 = *this;
          if (v102 <= 0xFFFFFFFFFFFFFFF5 && v102 + 10 <= v101)
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
            v107 = (v103 + v102);
            v108 = v102 + 1;
            do
            {
              *(this + 1) = v108;
              v109 = *v107++;
              v106 |= (v109 & 0x7F) << v104;
              if ((v109 & 0x80) == 0)
              {
                goto LABEL_492;
              }

              v104 += 7;
              ++v108;
              v14 = v105++ > 8;
            }

            while (!v14);
LABEL_304:
            LODWORD(v106) = 0;
            goto LABEL_492;
          }

          v303 = 0;
          v304 = 0;
          v106 = 0;
          v17 = v101 >= v102;
          v305 = v101 - v102;
          if (!v17)
          {
            v305 = 0;
          }

          v306 = (v103 + v102);
          v307 = v102 + 1;
          while (2)
          {
            if (v305)
            {
              v308 = *v306;
              *(this + 1) = v307;
              v106 |= (v308 & 0x7F) << v303;
              if (v308 < 0)
              {
                v303 += 7;
                --v305;
                ++v306;
                ++v307;
                v14 = v304++ > 8;
                if (v14)
                {
                  goto LABEL_304;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              LODWORD(v106) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_492:
          *(a1 + 104) = v106;
          goto LABEL_544;
        case 4u:
          *(a1 + 192) |= 0x20000uLL;
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
                goto LABEL_498;
              }

              v122 += 7;
              ++v126;
              v14 = v123++ > 8;
            }

            while (!v14);
LABEL_320:
            LODWORD(v124) = 0;
            goto LABEL_498;
          }

          v315 = 0;
          v316 = 0;
          v124 = 0;
          v17 = v119 >= v120;
          v317 = v119 - v120;
          if (!v17)
          {
            v317 = 0;
          }

          v318 = (v121 + v120);
          v319 = v120 + 1;
          while (2)
          {
            if (v317)
            {
              v320 = *v318;
              *(this + 1) = v319;
              v124 |= (v320 & 0x7F) << v315;
              if (v320 < 0)
              {
                v315 += 7;
                --v317;
                ++v318;
                ++v319;
                v14 = v316++ > 8;
                if (v14)
                {
                  goto LABEL_320;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v124) = 0;
              }
            }

            else
            {
              LODWORD(v124) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_498:
          *(a1 + 108) = v124;
          goto LABEL_544;
        case 5u:
          *(a1 + 192) |= 0x800uLL;
          v65 = *(this + 1);
          v64 = *(this + 2);
          v66 = *this;
          if (v65 <= 0xFFFFFFFFFFFFFFF5 && v65 + 10 <= v64)
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = (v66 + v65);
            v71 = v65 + 1;
            do
            {
              *(this + 1) = v71;
              v72 = *v70++;
              v69 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                goto LABEL_480;
              }

              v67 += 7;
              ++v71;
              v14 = v68++ > 8;
            }

            while (!v14);
LABEL_272:
            LODWORD(v69) = 0;
            goto LABEL_480;
          }

          v279 = 0;
          v280 = 0;
          v69 = 0;
          v17 = v64 >= v65;
          v281 = v64 - v65;
          if (!v17)
          {
            v281 = 0;
          }

          v282 = (v66 + v65);
          v283 = v65 + 1;
          while (2)
          {
            if (v281)
            {
              v284 = *v282;
              *(this + 1) = v283;
              v69 |= (v284 & 0x7F) << v279;
              if (v284 < 0)
              {
                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v14 = v280++ > 8;
                if (v14)
                {
                  goto LABEL_272;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v69) = 0;
              }
            }

            else
            {
              LODWORD(v69) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_480:
          *(a1 + 84) = v69;
          goto LABEL_544;
        case 6u:
          *(a1 + 192) |= 0x8000000uLL;
          v166 = *(this + 1);
          v165 = *(this + 2);
          v167 = *this;
          if (v166 <= 0xFFFFFFFFFFFFFFF5 && v166 + 10 <= v165)
          {
            v168 = 0;
            v169 = 0;
            v170 = 0;
            v171 = (v167 + v166);
            v172 = v166 + 1;
            do
            {
              *(this + 1) = v172;
              v173 = *v171++;
              v170 |= (v173 & 0x7F) << v168;
              if ((v173 & 0x80) == 0)
              {
                goto LABEL_516;
              }

              v168 += 7;
              ++v172;
              v14 = v169++ > 8;
            }

            while (!v14);
LABEL_368:
            LODWORD(v170) = 0;
            goto LABEL_516;
          }

          v351 = 0;
          v352 = 0;
          v170 = 0;
          v17 = v165 >= v166;
          v353 = v165 - v166;
          if (!v17)
          {
            v353 = 0;
          }

          v354 = (v167 + v166);
          v355 = v166 + 1;
          while (2)
          {
            if (v353)
            {
              v356 = *v354;
              *(this + 1) = v355;
              v170 |= (v356 & 0x7F) << v351;
              if (v356 < 0)
              {
                v351 += 7;
                --v353;
                ++v354;
                ++v355;
                v14 = v352++ > 8;
                if (v14)
                {
                  goto LABEL_368;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v170) = 0;
              }
            }

            else
            {
              LODWORD(v170) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_516:
          *(a1 + 148) = v170;
          goto LABEL_544;
        case 7u:
          *(a1 + 192) |= 0x2000uLL;
          v193 = *(this + 1);
          v192 = *(this + 2);
          v194 = *this;
          if (v193 <= 0xFFFFFFFFFFFFFFF5 && v193 + 10 <= v192)
          {
            v195 = 0;
            v196 = 0;
            v197 = 0;
            v198 = (v194 + v193);
            v199 = v193 + 1;
            do
            {
              *(this + 1) = v199;
              v200 = *v198++;
              v197 |= (v200 & 0x7F) << v195;
              if ((v200 & 0x80) == 0)
              {
                goto LABEL_525;
              }

              v195 += 7;
              ++v199;
              v14 = v196++ > 8;
            }

            while (!v14);
LABEL_392:
            LODWORD(v197) = 0;
            goto LABEL_525;
          }

          v369 = 0;
          v370 = 0;
          v197 = 0;
          v17 = v192 >= v193;
          v371 = v192 - v193;
          if (!v17)
          {
            v371 = 0;
          }

          v372 = (v194 + v193);
          v373 = v193 + 1;
          while (2)
          {
            if (v371)
            {
              v374 = *v372;
              *(this + 1) = v373;
              v197 |= (v374 & 0x7F) << v369;
              if (v374 < 0)
              {
                v369 += 7;
                --v371;
                ++v372;
                ++v373;
                v14 = v370++ > 8;
                if (v14)
                {
                  goto LABEL_392;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v197) = 0;
              }
            }

            else
            {
              LODWORD(v197) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_525:
          *(a1 + 92) = v197;
          goto LABEL_544;
        case 8u:
          *(a1 + 192) |= 0x1000uLL;
          v129 = *(this + 1);
          v128 = *(this + 2);
          v130 = *this;
          if (v129 <= 0xFFFFFFFFFFFFFFF5 && v129 + 10 <= v128)
          {
            v131 = 0;
            v132 = 0;
            v133 = 0;
            v134 = (v130 + v129);
            v135 = v129 + 1;
            do
            {
              *(this + 1) = v135;
              v136 = *v134++;
              v133 |= (v136 & 0x7F) << v131;
              if ((v136 & 0x80) == 0)
              {
                goto LABEL_501;
              }

              v131 += 7;
              ++v135;
              v14 = v132++ > 8;
            }

            while (!v14);
LABEL_328:
            LODWORD(v133) = 0;
            goto LABEL_501;
          }

          v321 = 0;
          v322 = 0;
          v133 = 0;
          v17 = v128 >= v129;
          v323 = v128 - v129;
          if (!v17)
          {
            v323 = 0;
          }

          v324 = (v130 + v129);
          v325 = v129 + 1;
          while (2)
          {
            if (v323)
            {
              v326 = *v324;
              *(this + 1) = v325;
              v133 |= (v326 & 0x7F) << v321;
              if (v326 < 0)
              {
                v321 += 7;
                --v323;
                ++v324;
                ++v325;
                v14 = v322++ > 8;
                if (v14)
                {
                  goto LABEL_328;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v133) = 0;
              }
            }

            else
            {
              LODWORD(v133) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_501:
          *(a1 + 88) = v133;
          goto LABEL_544;
        case 9u:
          *(a1 + 192) |= 0x1000000uLL;
          v205 = *(this + 1);
          v204 = *(this + 2);
          v206 = *this;
          if (v205 <= 0xFFFFFFFFFFFFFFF5 && v205 + 10 <= v204)
          {
            v207 = 0;
            v208 = 0;
            v209 = 0;
            v210 = (v206 + v205);
            v211 = v205 + 1;
            do
            {
              *(this + 1) = v211;
              v212 = *v210++;
              v209 |= (v212 & 0x7F) << v207;
              if ((v212 & 0x80) == 0)
              {
                goto LABEL_528;
              }

              v207 += 7;
              ++v211;
              v14 = v208++ > 8;
            }

            while (!v14);
LABEL_400:
            LODWORD(v209) = 0;
            goto LABEL_528;
          }

          v375 = 0;
          v376 = 0;
          v209 = 0;
          v17 = v204 >= v205;
          v377 = v204 - v205;
          if (!v17)
          {
            v377 = 0;
          }

          v378 = (v206 + v205);
          v379 = v205 + 1;
          while (2)
          {
            if (v377)
            {
              v380 = *v378;
              *(this + 1) = v379;
              v209 |= (v380 & 0x7F) << v375;
              if (v380 < 0)
              {
                v375 += 7;
                --v377;
                ++v378;
                ++v379;
                v14 = v376++ > 8;
                if (v14)
                {
                  goto LABEL_400;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v209) = 0;
              }
            }

            else
            {
              LODWORD(v209) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_528:
          *(a1 + 136) = v209;
          goto LABEL_544;
        case 0xAu:
          *(a1 + 192) |= 8uLL;
          v82 = *(this + 1);
          if (v82 > 0xFFFFFFFFFFFFFFF7 || v82 + 8 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 40) = *(*this + v82);
          goto LABEL_186;
        case 0xBu:
          *(a1 + 192) |= 1uLL;
          v202 = *(this + 1);
          if (v202 > 0xFFFFFFFFFFFFFFF7 || v202 + 8 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 8) = *(*this + v202);
LABEL_186:
          v203 = *(this + 1) + 8;
          goto LABEL_443;
        case 0xCu:
          *(a1 + 192) |= 4uLL;
          v56 = *(this + 1);
          v55 = *(this + 2);
          v57 = *this;
          if (v56 <= 0xFFFFFFFFFFFFFFF5 && v56 + 10 <= v55)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            do
            {
              *(this + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                goto LABEL_477;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
            }

            while (!v14);
LABEL_264:
            v60 = 0;
            goto LABEL_477;
          }

          v273 = 0;
          v274 = 0;
          v60 = 0;
          v17 = v55 >= v56;
          v275 = v55 - v56;
          if (!v17)
          {
            v275 = 0;
          }

          v276 = (v57 + v56);
          v277 = v56 + 1;
          while (2)
          {
            if (v275)
            {
              v278 = *v276;
              *(this + 1) = v277;
              v60 |= (v278 & 0x7F) << v273;
              if (v278 < 0)
              {
                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v14 = v274++ > 8;
                if (v14)
                {
                  goto LABEL_264;
                }

                continue;
              }

              if (*(this + 24))
              {
                v60 = 0;
              }
            }

            else
            {
              v60 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_477:
          *(a1 + 24) = v60;
          goto LABEL_544;
        case 0xDu:
          *(a1 + 192) |= 2uLL;
          v74 = *(this + 1);
          v73 = *(this + 2);
          v75 = *this;
          if (v74 <= 0xFFFFFFFFFFFFFFF5 && v74 + 10 <= v73)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = (v75 + v74);
            v80 = v74 + 1;
            do
            {
              *(this + 1) = v80;
              v81 = *v79++;
              v78 |= (v81 & 0x7F) << v76;
              if ((v81 & 0x80) == 0)
              {
                goto LABEL_483;
              }

              v76 += 7;
              ++v80;
              v14 = v77++ > 8;
            }

            while (!v14);
LABEL_280:
            v78 = 0;
            goto LABEL_483;
          }

          v285 = 0;
          v286 = 0;
          v78 = 0;
          v17 = v73 >= v74;
          v287 = v73 - v74;
          if (!v17)
          {
            v287 = 0;
          }

          v288 = (v75 + v74);
          v289 = v74 + 1;
          while (2)
          {
            if (v287)
            {
              v290 = *v288;
              *(this + 1) = v289;
              v78 |= (v290 & 0x7F) << v285;
              if (v290 < 0)
              {
                v285 += 7;
                --v287;
                ++v288;
                ++v289;
                v14 = v286++ > 8;
                if (v14)
                {
                  goto LABEL_280;
                }

                continue;
              }

              if (*(this + 24))
              {
                v78 = 0;
              }
            }

            else
            {
              v78 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_483:
          *(a1 + 16) = v78;
          goto LABEL_544;
        case 0xEu:
          *(a1 + 192) |= 0x80uLL;
          v184 = *(this + 1);
          v183 = *(this + 2);
          v185 = *this;
          if (v184 <= 0xFFFFFFFFFFFFFFF5 && v184 + 10 <= v183)
          {
            v186 = 0;
            v187 = 0;
            v188 = 0;
            v189 = (v185 + v184);
            v190 = v184 + 1;
            do
            {
              *(this + 1) = v190;
              v191 = *v189++;
              v188 |= (v191 & 0x7F) << v186;
              if ((v191 & 0x80) == 0)
              {
                goto LABEL_522;
              }

              v186 += 7;
              ++v190;
              v14 = v187++ > 8;
            }

            while (!v14);
LABEL_384:
            LODWORD(v188) = 0;
            goto LABEL_522;
          }

          v363 = 0;
          v364 = 0;
          v188 = 0;
          v17 = v183 >= v184;
          v365 = v183 - v184;
          if (!v17)
          {
            v365 = 0;
          }

          v366 = (v185 + v184);
          v367 = v184 + 1;
          while (2)
          {
            if (v365)
            {
              v368 = *v366;
              *(this + 1) = v367;
              v188 |= (v368 & 0x7F) << v363;
              if (v368 < 0)
              {
                v363 += 7;
                --v365;
                ++v366;
                ++v367;
                v14 = v364++ > 8;
                if (v14)
                {
                  goto LABEL_384;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v188) = 0;
              }
            }

            else
            {
              LODWORD(v188) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_522:
          *(a1 + 68) = v188;
          goto LABEL_544;
        case 0xFu:
          *(a1 + 192) |= 0x20000000uLL;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 156) = *(*this + v45);
          goto LABEL_442;
        case 0x10u:
          *(a1 + 192) |= 0x4000000uLL;
          v111 = *(this + 1);
          v110 = *(this + 2);
          v112 = *this;
          if (v111 <= 0xFFFFFFFFFFFFFFF5 && v111 + 10 <= v110)
          {
            v113 = 0;
            v114 = 0;
            v115 = 0;
            v116 = (v112 + v111);
            v117 = v111 + 1;
            do
            {
              *(this + 1) = v117;
              v118 = *v116++;
              v115 |= (v118 & 0x7F) << v113;
              if ((v118 & 0x80) == 0)
              {
                goto LABEL_495;
              }

              v113 += 7;
              ++v117;
              v14 = v114++ > 8;
            }

            while (!v14);
LABEL_312:
            LODWORD(v115) = 0;
            goto LABEL_495;
          }

          v309 = 0;
          v310 = 0;
          v115 = 0;
          v17 = v110 >= v111;
          v311 = v110 - v111;
          if (!v17)
          {
            v311 = 0;
          }

          v312 = (v112 + v111);
          v313 = v111 + 1;
          while (2)
          {
            if (v311)
            {
              v314 = *v312;
              *(this + 1) = v313;
              v115 |= (v314 & 0x7F) << v309;
              if (v314 < 0)
              {
                v309 += 7;
                --v311;
                ++v312;
                ++v313;
                v14 = v310++ > 8;
                if (v14)
                {
                  goto LABEL_312;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v115) = 0;
              }
            }

            else
            {
              LODWORD(v115) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_495:
          *(a1 + 144) = v115;
          goto LABEL_544;
        case 0x11u:
          *(a1 + 192) |= 0x4000uLL;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 96) = *(*this + v44);
          goto LABEL_442;
        case 0x12u:
          *(a1 + 192) |= 0x400000uLL;
          v155 = *(this + 1);
          if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 128) = *(*this + v155);
          goto LABEL_442;
        case 0x13u:
          *(a1 + 192) |= 0x200000uLL;
          v201 = *(this + 1);
          if (v201 > 0xFFFFFFFFFFFFFFFBLL || v201 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 124) = *(*this + v201);
          goto LABEL_442;
        case 0x14u:
          *(a1 + 192) |= 0x800000uLL;
          v240 = *(this + 1);
          if (v240 > 0xFFFFFFFFFFFFFFFBLL || v240 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 132) = *(*this + v240);
          goto LABEL_442;
        case 0x15u:
          *(a1 + 192) |= 0x10uLL;
          v157 = *(this + 1);
          v156 = *(this + 2);
          v158 = *this;
          if (v157 <= 0xFFFFFFFFFFFFFFF5 && v157 + 10 <= v156)
          {
            v159 = 0;
            v160 = 0;
            v161 = 0;
            v162 = (v158 + v157);
            v163 = v157 + 1;
            do
            {
              *(this + 1) = v163;
              v164 = *v162++;
              v161 |= (v164 & 0x7F) << v159;
              if ((v164 & 0x80) == 0)
              {
                goto LABEL_513;
              }

              v159 += 7;
              ++v163;
              v14 = v160++ > 8;
            }

            while (!v14);
LABEL_360:
            v161 = 0;
            goto LABEL_513;
          }

          v345 = 0;
          v346 = 0;
          v161 = 0;
          v17 = v156 >= v157;
          v347 = v156 - v157;
          if (!v17)
          {
            v347 = 0;
          }

          v348 = (v158 + v157);
          v349 = v157 + 1;
          while (2)
          {
            if (v347)
            {
              v350 = *v348;
              *(this + 1) = v349;
              v161 |= (v350 & 0x7F) << v345;
              if (v350 < 0)
              {
                v345 += 7;
                --v347;
                ++v348;
                ++v349;
                v14 = v346++ > 8;
                if (v14)
                {
                  goto LABEL_360;
                }

                continue;
              }

              if (*(this + 24))
              {
                v161 = 0;
              }
            }

            else
            {
              v161 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_513:
          *(a1 + 48) = v161;
          goto LABEL_544;
        case 0x16u:
          *(a1 + 192) |= 0x800000000uLL;
          v175 = *(this + 1);
          v174 = *(this + 2);
          v176 = *this;
          if (v175 <= 0xFFFFFFFFFFFFFFF5 && v175 + 10 <= v174)
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            v180 = (v176 + v175);
            v181 = v175 + 1;
            do
            {
              *(this + 1) = v181;
              v182 = *v180++;
              v179 |= (v182 & 0x7F) << v177;
              if ((v182 & 0x80) == 0)
              {
                goto LABEL_519;
              }

              v177 += 7;
              ++v181;
              v14 = v178++ > 8;
            }

            while (!v14);
LABEL_376:
            LODWORD(v179) = 0;
            goto LABEL_519;
          }

          v357 = 0;
          v358 = 0;
          v179 = 0;
          v17 = v174 >= v175;
          v359 = v174 - v175;
          if (!v17)
          {
            v359 = 0;
          }

          v360 = (v176 + v175);
          v361 = v175 + 1;
          while (2)
          {
            if (v359)
            {
              v362 = *v360;
              *(this + 1) = v361;
              v179 |= (v362 & 0x7F) << v357;
              if (v362 < 0)
              {
                v357 += 7;
                --v359;
                ++v360;
                ++v361;
                v14 = v358++ > 8;
                if (v14)
                {
                  goto LABEL_376;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v179) = 0;
              }
            }

            else
            {
              LODWORD(v179) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_519:
          *(a1 + 180) = v179;
          goto LABEL_544;
        case 0x17u:
          *(a1 + 192) |= 0x40000000uLL;
          v232 = *(this + 1);
          v231 = *(this + 2);
          v233 = *this;
          if (v232 <= 0xFFFFFFFFFFFFFFF5 && v232 + 10 <= v231)
          {
            v234 = 0;
            v235 = 0;
            v236 = 0;
            v237 = (v233 + v232);
            v238 = v232 + 1;
            do
            {
              *(this + 1) = v238;
              v239 = *v237++;
              v236 |= (v239 & 0x7F) << v234;
              if ((v239 & 0x80) == 0)
              {
                goto LABEL_537;
              }

              v234 += 7;
              ++v238;
              v14 = v235++ > 8;
            }

            while (!v14);
LABEL_424:
            LODWORD(v236) = 0;
            goto LABEL_537;
          }

          v393 = 0;
          v394 = 0;
          v236 = 0;
          v17 = v231 >= v232;
          v395 = v231 - v232;
          if (!v17)
          {
            v395 = 0;
          }

          v396 = (v233 + v232);
          v397 = v232 + 1;
          while (2)
          {
            if (v395)
            {
              v398 = *v396;
              *(this + 1) = v397;
              v236 |= (v398 & 0x7F) << v393;
              if (v398 < 0)
              {
                v393 += 7;
                --v395;
                ++v396;
                ++v397;
                v14 = v394++ > 8;
                if (v14)
                {
                  goto LABEL_424;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v236) = 0;
              }
            }

            else
            {
              LODWORD(v236) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_537:
          *(a1 + 160) = v236;
          goto LABEL_544;
        case 0x18u:
          *(a1 + 192) |= 0x100000uLL;
          v242 = *(this + 1);
          v241 = *(this + 2);
          v243 = *this;
          if (v242 <= 0xFFFFFFFFFFFFFFF5 && v242 + 10 <= v241)
          {
            v244 = 0;
            v245 = 0;
            v246 = 0;
            v247 = (v243 + v242);
            v248 = v242 + 1;
            do
            {
              *(this + 1) = v248;
              v249 = *v247++;
              v246 |= (v249 & 0x7F) << v244;
              if ((v249 & 0x80) == 0)
              {
                goto LABEL_540;
              }

              v244 += 7;
              ++v248;
              v14 = v245++ > 8;
            }

            while (!v14);
LABEL_432:
            LODWORD(v246) = 0;
            goto LABEL_540;
          }

          v399 = 0;
          v400 = 0;
          v246 = 0;
          v17 = v241 >= v242;
          v401 = v241 - v242;
          if (!v17)
          {
            v401 = 0;
          }

          v402 = (v243 + v242);
          v403 = v242 + 1;
          while (2)
          {
            if (v401)
            {
              v404 = *v402;
              *(this + 1) = v403;
              v246 |= (v404 & 0x7F) << v399;
              if (v404 < 0)
              {
                v399 += 7;
                --v401;
                ++v402;
                ++v403;
                v14 = v400++ > 8;
                if (v14)
                {
                  goto LABEL_432;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v246) = 0;
              }
            }

            else
            {
              LODWORD(v246) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_540:
          *(a1 + 120) = v246;
          goto LABEL_544;
        case 0x19u:
          *(a1 + 192) |= 0x80000uLL;
          v93 = *(this + 1);
          v92 = *(this + 2);
          v94 = *this;
          if (v93 <= 0xFFFFFFFFFFFFFFF5 && v93 + 10 <= v92)
          {
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = (v94 + v93);
            v99 = v93 + 1;
            do
            {
              *(this + 1) = v99;
              v100 = *v98++;
              v97 |= (v100 & 0x7F) << v95;
              if ((v100 & 0x80) == 0)
              {
                goto LABEL_489;
              }

              v95 += 7;
              ++v99;
              v14 = v96++ > 8;
            }

            while (!v14);
LABEL_296:
            LODWORD(v97) = 0;
            goto LABEL_489;
          }

          v297 = 0;
          v298 = 0;
          v97 = 0;
          v17 = v92 >= v93;
          v299 = v92 - v93;
          if (!v17)
          {
            v299 = 0;
          }

          v300 = (v94 + v93);
          v301 = v93 + 1;
          while (2)
          {
            if (v299)
            {
              v302 = *v300;
              *(this + 1) = v301;
              v97 |= (v302 & 0x7F) << v297;
              if (v302 < 0)
              {
                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v14 = v298++ > 8;
                if (v14)
                {
                  goto LABEL_296;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v97) = 0;
              }
            }

            else
            {
              LODWORD(v97) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_489:
          *(a1 + 116) = v97;
          goto LABEL_544;
        case 0x1Au:
          *(a1 + 192) |= 0x40000uLL;
          v84 = *(this + 1);
          v83 = *(this + 2);
          v85 = *this;
          if (v84 <= 0xFFFFFFFFFFFFFFF5 && v84 + 10 <= v83)
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = (v85 + v84);
            v90 = v84 + 1;
            do
            {
              *(this + 1) = v90;
              v91 = *v89++;
              v88 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                goto LABEL_486;
              }

              v86 += 7;
              ++v90;
              v14 = v87++ > 8;
            }

            while (!v14);
LABEL_288:
            LODWORD(v88) = 0;
            goto LABEL_486;
          }

          v291 = 0;
          v292 = 0;
          v88 = 0;
          v17 = v83 >= v84;
          v293 = v83 - v84;
          if (!v17)
          {
            v293 = 0;
          }

          v294 = (v85 + v84);
          v295 = v84 + 1;
          while (2)
          {
            if (v293)
            {
              v296 = *v294;
              *(this + 1) = v295;
              v88 |= (v296 & 0x7F) << v291;
              if (v296 < 0)
              {
                v291 += 7;
                --v293;
                ++v294;
                ++v295;
                v14 = v292++ > 8;
                if (v14)
                {
                  goto LABEL_288;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v88) = 0;
              }
            }

            else
            {
              LODWORD(v88) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_486:
          *(a1 + 112) = v88;
          goto LABEL_544;
        case 0x1Bu:
          operator new();
        case 0x1Cu:
          *(a1 + 192) |= 0x400uLL;
          v34 = *(this + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 80) = *(*this + v34);
          goto LABEL_442;
        case 0x1Du:
          *(a1 + 192) |= 0x200uLL;
          v250 = *(this + 1);
          if (v250 > 0xFFFFFFFFFFFFFFFBLL || v250 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 76) = *(*this + v250);
          goto LABEL_442;
        case 0x1Eu:
          *(a1 + 192) |= 0x2000000uLL;
          v251 = *(this + 1);
          if (v251 > 0xFFFFFFFFFFFFFFFBLL || v251 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 140) = *(*this + v251);
          goto LABEL_442;
        case 0x1Fu:
          *(a1 + 192) |= 0x1000000000uLL;
          v214 = *(this + 1);
          v213 = *(this + 2);
          v215 = *this;
          if (v214 <= 0xFFFFFFFFFFFFFFF5 && v214 + 10 <= v213)
          {
            v216 = 0;
            v217 = 0;
            v218 = 0;
            v219 = (v215 + v214);
            v220 = v214 + 1;
            do
            {
              *(this + 1) = v220;
              v221 = *v219++;
              v218 |= (v221 & 0x7F) << v216;
              if ((v221 & 0x80) == 0)
              {
                goto LABEL_531;
              }

              v216 += 7;
              ++v220;
              v14 = v217++ > 8;
            }

            while (!v14);
LABEL_408:
            LODWORD(v218) = 0;
            goto LABEL_531;
          }

          v381 = 0;
          v382 = 0;
          v218 = 0;
          v17 = v213 >= v214;
          v383 = v213 - v214;
          if (!v17)
          {
            v383 = 0;
          }

          v384 = (v215 + v214);
          v385 = v214 + 1;
          while (2)
          {
            if (v383)
            {
              v386 = *v384;
              *(this + 1) = v385;
              v218 |= (v386 & 0x7F) << v381;
              if (v386 < 0)
              {
                v381 += 7;
                --v383;
                ++v384;
                ++v385;
                v14 = v382++ > 8;
                if (v14)
                {
                  goto LABEL_408;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v218) = 0;
              }
            }

            else
            {
              LODWORD(v218) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_531:
          *(a1 + 184) = v218;
          goto LABEL_544;
        case 0x20u:
          *(a1 + 192) |= 0x20uLL;
          v147 = *(this + 1);
          v146 = *(this + 2);
          v148 = *this;
          if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
          {
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = (v148 + v147);
            v153 = v147 + 1;
            do
            {
              *(this + 1) = v153;
              v154 = *v152++;
              v151 |= (v154 & 0x7F) << v149;
              if ((v154 & 0x80) == 0)
              {
                goto LABEL_510;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_352:
            v151 = 0;
            goto LABEL_510;
          }

          v339 = 0;
          v340 = 0;
          v151 = 0;
          v17 = v146 >= v147;
          v341 = v146 - v147;
          if (!v17)
          {
            v341 = 0;
          }

          v342 = (v148 + v147);
          v343 = v147 + 1;
          while (2)
          {
            if (v341)
            {
              v344 = *v342;
              *(this + 1) = v343;
              v151 |= (v344 & 0x7F) << v339;
              if (v344 < 0)
              {
                v339 += 7;
                --v341;
                ++v342;
                ++v343;
                v14 = v340++ > 8;
                if (v14)
                {
                  goto LABEL_352;
                }

                continue;
              }

              if (*(this + 24))
              {
                v151 = 0;
              }
            }

            else
            {
              v151 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_510:
          *(a1 + 56) = v151;
          goto LABEL_544;
        case 0x21u:
          *(a1 + 192) |= 0x10000000uLL;
          v223 = *(this + 1);
          v222 = *(this + 2);
          v224 = *this;
          if (v223 <= 0xFFFFFFFFFFFFFFF5 && v223 + 10 <= v222)
          {
            v225 = 0;
            v226 = 0;
            v227 = 0;
            v228 = (v224 + v223);
            v229 = v223 + 1;
            do
            {
              *(this + 1) = v229;
              v230 = *v228++;
              v227 |= (v230 & 0x7F) << v225;
              if ((v230 & 0x80) == 0)
              {
                goto LABEL_534;
              }

              v225 += 7;
              ++v229;
              v14 = v226++ > 8;
            }

            while (!v14);
LABEL_416:
            LODWORD(v227) = 0;
            goto LABEL_534;
          }

          v387 = 0;
          v388 = 0;
          v227 = 0;
          v17 = v222 >= v223;
          v389 = v222 - v223;
          if (!v17)
          {
            v389 = 0;
          }

          v390 = (v224 + v223);
          v391 = v223 + 1;
          while (2)
          {
            if (v389)
            {
              v392 = *v390;
              *(this + 1) = v391;
              v227 |= (v392 & 0x7F) << v387;
              if (v392 < 0)
              {
                v387 += 7;
                --v389;
                ++v390;
                ++v391;
                v14 = v388++ > 8;
                if (v14)
                {
                  goto LABEL_416;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v227) = 0;
              }
            }

            else
            {
              LODWORD(v227) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_534:
          *(a1 + 152) = v227;
          goto LABEL_544;
        case 0x22u:
          *(a1 + 192) |= 0x2000000000uLL;
          v47 = *(this + 1);
          v46 = *(this + 2);
          v48 = *this;
          if (v47 <= 0xFFFFFFFFFFFFFFF5 && v47 + 10 <= v46)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            do
            {
              *(this + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                goto LABEL_474;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
            }

            while (!v14);
LABEL_256:
            LODWORD(v51) = 0;
            goto LABEL_474;
          }

          v267 = 0;
          v268 = 0;
          v51 = 0;
          v17 = v46 >= v47;
          v269 = v46 - v47;
          if (!v17)
          {
            v269 = 0;
          }

          v270 = (v48 + v47);
          v271 = v47 + 1;
          while (2)
          {
            if (v269)
            {
              v272 = *v270;
              *(this + 1) = v271;
              v51 |= (v272 & 0x7F) << v267;
              if (v272 < 0)
              {
                v267 += 7;
                --v269;
                ++v270;
                ++v271;
                v14 = v268++ > 8;
                if (v14)
                {
                  goto LABEL_256;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }
            }

            else
            {
              LODWORD(v51) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_474:
          *(a1 + 188) = v51;
          goto LABEL_544;
        case 0x23u:
          *(a1 + 192) |= 0x40uLL;
          v36 = *(this + 1);
          v35 = *(this + 2);
          v37 = *this;
          if (v36 <= 0xFFFFFFFFFFFFFFF5 && v36 + 10 <= v35)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = (v37 + v36);
            v42 = v36 + 1;
            do
            {
              *(this + 1) = v42;
              v43 = *v41++;
              v40 |= (v43 & 0x7F) << v38;
              if ((v43 & 0x80) == 0)
              {
                goto LABEL_471;
              }

              v38 += 7;
              ++v42;
              v14 = v39++ > 8;
            }

            while (!v14);
LABEL_248:
            LODWORD(v40) = 0;
            goto LABEL_471;
          }

          v261 = 0;
          v262 = 0;
          v40 = 0;
          v17 = v35 >= v36;
          v263 = v35 - v36;
          if (!v17)
          {
            v263 = 0;
          }

          v264 = (v37 + v36);
          v265 = v36 + 1;
          while (2)
          {
            if (v263)
            {
              v266 = *v264;
              *(this + 1) = v265;
              v40 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                --v263;
                ++v264;
                ++v265;
                v14 = v262++ > 8;
                if (v14)
                {
                  goto LABEL_248;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v40) = 0;
              }
            }

            else
            {
              LODWORD(v40) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_471:
          *(a1 + 64) = v40;
          goto LABEL_544;
        case 0x24u:
          *(a1 + 192) |= 0x80000000uLL;
          v32 = *(this + 1);
          if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 164) = *(*this + v32);
          goto LABEL_442;
        case 0x25u:
          *(a1 + 192) |= 0x100000000uLL;
          v33 = *(this + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 168) = *(*this + v33);
          goto LABEL_442;
        case 0x26u:
          *(a1 + 192) |= 0x200000000uLL;
          v31 = *(this + 1);
          if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(this + 2))
          {
LABEL_232:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 172) = *(*this + v31);
LABEL_442:
            v203 = *(this + 1) + 4;
LABEL_443:
            *(this + 1) = v203;
          }

          goto LABEL_544;
        case 0x27u:
          *(a1 + 192) |= 0x400000000uLL;
          v253 = *(this + 1);
          v252 = *(this + 2);
          v254 = *this;
          if (v253 <= 0xFFFFFFFFFFFFFFF5 && v253 + 10 <= v252)
          {
            v255 = 0;
            v256 = 0;
            v257 = 0;
            v258 = (v254 + v253);
            v259 = v253 + 1;
            do
            {
              *(this + 1) = v259;
              v260 = *v258++;
              v257 |= (v260 & 0x7F) << v255;
              if ((v260 & 0x80) == 0)
              {
                goto LABEL_543;
              }

              v255 += 7;
              ++v259;
              v14 = v256++ > 8;
            }

            while (!v14);
LABEL_440:
            LODWORD(v257) = 0;
            goto LABEL_543;
          }

          v405 = 0;
          v406 = 0;
          v257 = 0;
          v17 = v252 >= v253;
          v407 = v252 - v253;
          if (!v17)
          {
            v407 = 0;
          }

          v408 = (v254 + v253);
          v409 = v253 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_544;
          }

          v412 = 0;
          return v412 & 1;
      }

      while (1)
      {
        if (!v407)
        {
          LODWORD(v257) = 0;
          *(this + 24) = 1;
          goto LABEL_543;
        }

        v410 = *v408;
        *(this + 1) = v409;
        v257 |= (v410 & 0x7F) << v405;
        if ((v410 & 0x80) == 0)
        {
          break;
        }

        v405 += 7;
        --v407;
        ++v408;
        ++v409;
        v14 = v406++ > 8;
        if (v14)
        {
          goto LABEL_440;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v257) = 0;
      }

LABEL_543:
      *(a1 + 176) = v257;
LABEL_544:
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

LABEL_548:
  v412 = v4 ^ 1;
  return v412 & 1;
}

uint64_t sub_19B582BD0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 192);
  if ((v4 & 0x8000) != 0)
  {
    v8 = *(result + 100);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 192);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x10000) == 0)
  {
LABEL_4:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x20000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  v12 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  v13 = *(v3 + 148);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v14 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  v16 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 192);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 192);
  if ((v4 & 4) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  v17 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 2) == 0)
  {
LABEL_14:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  v18 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x80) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  v19 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 192);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(v3 + 144);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 192);
  if ((v4 & 0x400000) == 0)
  {
LABEL_19:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 192);
  if ((v4 & 0x200000) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 192);
  if ((v4 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 192);
  if ((v4 & 0x10) == 0)
  {
LABEL_22:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(v3 + 180);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(v3 + 160);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x100000) == 0)
  {
LABEL_25:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  v24 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 192);
  if ((v4 & 0x80000) == 0)
  {
LABEL_26:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_67:
  v25 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 192) & 0x40000) != 0)
  {
LABEL_27:
    v5 = *(v3 + 112);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_28:
  v6 = *(v3 + 32);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 192);
  if ((v7 & 0x400) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 80));
    v7 = *(v3 + 192);
    if ((v7 & 0x200) == 0)
    {
LABEL_32:
      if ((v7 & 0x2000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_71;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  result = PB::Writer::write(this, *(v3 + 76));
  v7 = *(v3 + 192);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 140));
  v7 = *(v3 + 192);
  if ((v7 & 0x1000000000) == 0)
  {
LABEL_34:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v26 = *(v3 + 184);
  result = PB::Writer::writeVarInt(this);
  v7 = *(v3 + 192);
  if ((v7 & 0x20) == 0)
  {
LABEL_35:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  v27 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v7 = *(v3 + 192);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  v28 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v7 = *(v3 + 192);
  if ((v7 & 0x2000000000) == 0)
  {
LABEL_37:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_76;
  }

LABEL_75:
  v29 = *(v3 + 188);
  result = PB::Writer::writeVarInt(this);
  v7 = *(v3 + 192);
  if ((v7 & 0x40) == 0)
  {
LABEL_38:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_76:
  v30 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v7 = *(v3 + 192);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_39:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = PB::Writer::write(this, *(v3 + 164));
  v7 = *(v3 + 192);
  if ((v7 & 0x100000000) == 0)
  {
LABEL_40:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_79:
    result = PB::Writer::write(this, *(v3 + 172));
    if ((*(v3 + 192) & 0x400000000) == 0)
    {
      return result;
    }

    goto LABEL_80;
  }

LABEL_78:
  result = PB::Writer::write(this, *(v3 + 168));
  v7 = *(v3 + 192);
  if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_79;
  }

LABEL_41:
  if ((v7 & 0x400000000) == 0)
  {
    return result;
  }

LABEL_80:
  v31 = *(v3 + 176);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B583044(uint64_t result)
{
  *result = &unk_1F0E2D898;
  *(result + 12) = 0;
  return result;
}

void sub_19B58306C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5830A4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "isWifiAssociated");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B583104(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B5832B8(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::write(this);
  }

  return result;
}

void *sub_19B5832D8(void *result)
{
  *result = &unk_1F0E2E7B0;
  result[1] = 0;
  return result;
}

void sub_19B5832F8(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2E7B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B583378(PB::Base *a1)
{
  sub_19B5832F8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5833B0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58342C(int a1, PB::Reader *this)
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

uint64_t sub_19B583668(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B583684(uint64_t result)
{
  *result = &unk_1F0E2FEE0;
  *(result + 12) = 0;
  return result;
}

void sub_19B5836AC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5836E4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "walkingVariable01", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B583744(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B583904(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::write(this, *(result + 8));
  }

  return result;
}

double sub_19B583920(uint64_t a1)
{
  *a1 = &unk_1F0E2C1A0;
  *(a1 + 76) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B583954(PB::Base *this)
{
  *this = &unk_1F0E2C1A0;
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

void sub_19B5839C8(PB::Base *a1)
{
  sub_19B583954(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B583A00(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accel", v7);
  }

  if (*(a1 + 76))
  {
    PB::TextFormatter::format(this, "adjustedTimestamp", *(a1 + 56));
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "gravity", v10);
  }

  v11 = *(a1 + 76);
  if ((v11 & 4) != 0)
  {
    PB::TextFormatter::format(this, "rawProjectedSignal", *(a1 + 72));
    v11 = *(a1 + 76);
  }

  if ((v11 & 2) != 0)
  {
    v12 = *(a1 + 64);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B583B00(uint64_t a1, PB::Reader *this)
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
          *(a1 + 76) |= 2u;
          v60 = *(this + 1);
          v59 = *(this + 2);
          v61 = *this;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
          {
            v71 = 0;
            v72 = 0;
            v64 = 0;
            v17 = v59 >= v60;
            v73 = v59 - v60;
            if (!v17)
            {
              v73 = 0;
            }

            v74 = (v61 + v60);
            v75 = v60 + 1;
            while (1)
            {
              if (!v73)
              {
                v64 = 0;
                *(this + 24) = 1;
                goto LABEL_116;
              }

              v76 = *v74;
              *(this + 1) = v75;
              v64 |= (v76 & 0x7F) << v71;
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
LABEL_92:
                v64 = 0;
                goto LABEL_116;
              }
            }

            if (*(this + 24))
            {
              v64 = 0;
            }
          }

          else
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            while (1)
            {
              *(this + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
              if (v14)
              {
                goto LABEL_92;
              }
            }
          }

LABEL_116:
          *(a1 + 64) = v64;
          goto LABEL_129;
        }

        if (v23 == 2)
        {
          *(a1 + 76) |= 1u;
          v40 = *(this + 1);
          if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
          {
LABEL_125:
            *(this + 24) = 1;
            goto LABEL_129;
          }

          *(a1 + 56) = *(*this + v40);
          v41 = *(this + 1) + 8;
          goto LABEL_128;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(a1 + 76) |= 4u;
            v42 = *(this + 1);
            if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(this + 2))
            {
              goto LABEL_125;
            }

            *(a1 + 72) = *(*this + v42);
            goto LABEL_127;
          case 4:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_135;
              }

              v43 = *(this + 1);
              v44 = *(this + 2);
              while (v43 < v44 && (*(this + 24) & 1) == 0)
              {
                v46 = *(a1 + 40);
                v45 = *(a1 + 48);
                if (v46 >= v45)
                {
                  v48 = *(a1 + 32);
                  v49 = v46 - v48;
                  v50 = (v46 - v48) >> 2;
                  v51 = v50 + 1;
                  if ((v50 + 1) >> 62)
                  {
                    goto LABEL_136;
                  }

                  v52 = v45 - v48;
                  if (v52 >> 1 > v51)
                  {
                    v51 = v52 >> 1;
                  }

                  if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v53 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v53 = v51;
                  }

                  if (v53)
                  {
                    sub_19B4C4FA8(a1 + 32, v53);
                  }

                  v54 = (v46 - v48) >> 2;
                  v55 = (4 * v50);
                  v56 = (4 * v50 - 4 * v54);
                  *v55 = 0;
                  v47 = v55 + 1;
                  memcpy(v56, v48, v49);
                  v57 = *(a1 + 32);
                  *(a1 + 32) = v56;
                  *(a1 + 40) = v47;
                  *(a1 + 48) = 0;
                  if (v57)
                  {
                    operator delete(v57);
                  }
                }

                else
                {
                  *v46 = 0;
                  v47 = v46 + 4;
                }

                *(a1 + 40) = v47;
                v58 = *(this + 1);
                if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
                {
LABEL_95:
                  *(this + 24) = 1;
                  goto LABEL_96;
                }

                *(v47 - 1) = *(*this + v58);
                v44 = *(this + 2);
                v43 = *(this + 1) + 4;
                *(this + 1) = v43;
              }

              goto LABEL_96;
            }

            v69 = *(a1 + 40);
            v68 = *(a1 + 48);
            if (v69 >= v68)
            {
              v79 = *(a1 + 32);
              v80 = v69 - v79;
              v81 = (v69 - v79) >> 2;
              v82 = v81 + 1;
              if ((v81 + 1) >> 62)
              {
                goto LABEL_136;
              }

              v83 = v68 - v79;
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
                sub_19B4C4FA8(a1 + 32, v84);
              }

              v91 = (v69 - v79) >> 2;
              v92 = (4 * v81);
              v93 = (4 * v81 - 4 * v91);
              *v92 = 0;
              v70 = v92 + 1;
              memcpy(v93, v79, v80);
              v94 = *(a1 + 32);
              *(a1 + 32) = v93;
              *(a1 + 40) = v70;
              *(a1 + 48) = 0;
              if (v94)
              {
                operator delete(v94);
              }
            }

            else
            {
              *v69 = 0;
              v70 = v69 + 4;
            }

            *(a1 + 40) = v70;
LABEL_123:
            v99 = *(this + 1);
            if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(this + 2))
            {
              goto LABEL_125;
            }

            *(v70 - 1) = *(*this + v99);
LABEL_127:
            v41 = *(this + 1) + 4;
LABEL_128:
            *(this + 1) = v41;
            goto LABEL_129;
          case 5:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_135;
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
                    goto LABEL_136;
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
                  goto LABEL_95;
                }

                *(v28 - 1) = *(*this + v39);
                v25 = *(this + 2);
                v24 = *(this + 1) + 4;
                *(this + 1) = v24;
              }

LABEL_96:
              PB::Reader::recallMark();
              goto LABEL_129;
            }

            v78 = *(a1 + 16);
            v77 = *(a1 + 24);
            if (v78 >= v77)
            {
              v85 = *(a1 + 8);
              v86 = v78 - v85;
              v87 = (v78 - v85) >> 2;
              v88 = v87 + 1;
              if ((v87 + 1) >> 62)
              {
LABEL_136:
                sub_19B5BE690();
              }

              v89 = v77 - v85;
              if (v89 >> 1 > v88)
              {
                v88 = v89 >> 1;
              }

              if (v89 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v90 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v90 = v88;
              }

              if (v90)
              {
                sub_19B4C4FA8(a1 + 8, v90);
              }

              v95 = (v78 - v85) >> 2;
              v96 = (4 * v87);
              v97 = (4 * v87 - 4 * v95);
              *v96 = 0;
              v70 = v96 + 1;
              memcpy(v97, v85, v86);
              v98 = *(a1 + 8);
              *(a1 + 8) = v97;
              *(a1 + 16) = v70;
              *(a1 + 24) = 0;
              if (v98)
              {
                operator delete(v98);
              }
            }

            else
            {
              *v78 = 0;
              v70 = v78 + 4;
            }

            *(a1 + 16) = v70;
            goto LABEL_123;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_135:
        v100 = 0;
        return v100 & 1;
      }

LABEL_129:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t sub_19B5841C4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 76);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 76) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    result = PB::Writer::write(this, *(v3 + 56));
    if ((*(v3 + 76) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = *(result + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 76);
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v4 & 4) != 0)
  {
LABEL_4:
    result = PB::Writer::write(this, *(v3 + 72));
  }

LABEL_5:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v9 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v9 != v8)
  {
    v10 = *v9++;
    result = PB::Writer::write(this, v10);
  }

  return result;
}

uint64_t sub_19B584284(uint64_t result)
{
  *result = &unk_1F0E2E350;
  *(result + 40) = 0;
  return result;
}

void sub_19B5842AC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5842E4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "cadence", *(a1 + 16));
    v5 = *(a1 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "horizontalRotationRateFiltered", *(a1 + 20));
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "sample", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "verticalRotationRateFiltered", *(a1 + 28));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "verticalUserAcceleration", *(a1 + 32));
  if ((*(a1 + 40) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "walkSpeedFilteredSample", *(a1 + 36));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B584408(uint64_t a1, PB::Reader *this)
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
            goto LABEL_61;
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
            *(a1 + 40) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_53:
              *(this + 24) = 1;
              goto LABEL_57;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_56;
          case 2:
            *(a1 + 40) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_55:
            v2 = *(this + 1) + 4;
LABEL_56:
            *(this + 1) = v2;
            goto LABEL_57;
          case 3:
            *(a1 + 40) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 36) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_55;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_57:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_61:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B584760(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 36));
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
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 20));
    if ((*(v3 + 40) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 28);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B58485C(uint64_t result)
{
  *result = &unk_1F0E306F8;
  *(result + 68) = 0;
  return result;
}

void sub_19B584884(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5848BC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 0x20) != 0)
  {
    v6 = *(a1 + 48);
    PB::TextFormatter::format(this, "activityType");
    v5 = *(a1 + 68);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "duration", *(a1 + 8));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 64);
  PB::TextFormatter::format(this, "fGpsAvailability");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "fractionalGrade", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 52);
  PB::TextFormatter::format(this, "gradeType");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "hrmin", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a1 + 65);
  PB::TextFormatter::format(this, "isStanding");
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a1 + 56);
  PB::TextFormatter::format(this, "metSource");
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "mets", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v11 = *(a1 + 60);
  PB::TextFormatter::format(this, "rawGradeType");
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "startTime", *(a1 + 40));
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B584A60(uint64_t a1, PB::Reader *this)
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
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 68) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_82:
              *(this + 24) = 1;
              goto LABEL_143;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_122;
          }

          if (v22 == 2)
          {
            *(a1 + 68) |= 0x20u;
            v33 = *(this + 1);
            v2 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v59 = 0;
              v60 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(this + 1);
              }

              v61 = v2 - v33;
              v62 = (v34 + v33);
              v63 = v33 + 1;
              while (1)
              {
                if (!v61)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_130;
                }

                v64 = v63;
                v65 = *v62;
                *(this + 1) = v64;
                v37 |= (v65 & 0x7F) << v59;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                --v61;
                ++v62;
                v63 = v64 + 1;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  goto LABEL_129;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }

LABEL_129:
              v2 = v64;
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

LABEL_130:
            *(a1 + 48) = v37;
            goto LABEL_143;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 68) |= 0x400u;
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

              *(a1 + 65) = v50;
              goto LABEL_143;
            case 4:
              *(a1 + 68) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_82;
              }

              *(a1 + 16) = *(*this + v2);
              goto LABEL_122;
            case 5:
              *(a1 + 68) |= 0x40u;
              v23 = *(this + 1);
              v2 = *(this + 2);
              v24 = *this;
              if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
              {
                v73 = 0;
                v74 = 0;
                v27 = 0;
                if (v2 <= v23)
                {
                  v2 = *(this + 1);
                }

                v75 = v2 - v23;
                v76 = (v24 + v23);
                v77 = v23 + 1;
                while (1)
                {
                  if (!v75)
                  {
                    LODWORD(v27) = 0;
                    *(this + 24) = 1;
                    goto LABEL_138;
                  }

                  v78 = v77;
                  v79 = *v76;
                  *(this + 1) = v78;
                  v27 |= (v79 & 0x7F) << v73;
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
                    LODWORD(v27) = 0;
                    goto LABEL_137;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v27) = 0;
                }

LABEL_137:
                v2 = v78;
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

LABEL_138:
              *(a1 + 52) = v27;
              goto LABEL_143;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_82;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_122;
          case 0xA:
            *(a1 + 68) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_82;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_122;
          case 0xB:
            *(a1 + 68) |= 0x200u;
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

            *(a1 + 64) = v32;
            goto LABEL_143;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 68) |= 0x100u;
            v51 = *(this + 1);
            v2 = *(this + 2);
            v52 = *this;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v55 = 0;
              if (v2 <= v51)
              {
                v2 = *(this + 1);
              }

              v82 = v2 - v51;
              v83 = (v52 + v51);
              v84 = v51 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v55) = 0;
                  *(this + 24) = 1;
                  goto LABEL_142;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v55 |= (v86 & 0x7F) << v80;
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
                  LODWORD(v55) = 0;
                  goto LABEL_141;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v55) = 0;
              }

LABEL_141:
              v2 = v85;
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = (v52 + v51);
              v57 = v51 + 1;
              while (1)
              {
                v2 = v57;
                *(this + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v14 = v54++ > 8;
                if (v14)
                {
                  LODWORD(v55) = 0;
                  break;
                }
              }
            }

LABEL_142:
            *(a1 + 60) = v55;
            goto LABEL_143;
          case 7:
            *(a1 + 68) |= 0x80u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v66 = 0;
              v67 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v68 = v2 - v41;
              v69 = (v42 + v41);
              v70 = v41 + 1;
              while (1)
              {
                if (!v68)
                {
                  LODWORD(v45) = 0;
                  *(this + 24) = 1;
                  goto LABEL_134;
                }

                v71 = v70;
                v72 = *v69;
                *(this + 1) = v71;
                v45 |= (v72 & 0x7F) << v66;
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
                  LODWORD(v45) = 0;
                  goto LABEL_133;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_133:
              v2 = v71;
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

LABEL_134:
            *(a1 + 56) = v45;
            goto LABEL_143;
          case 8:
            *(a1 + 68) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_82;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_122:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_143;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v87 = 0;
        return v87 & 1;
      }

      v2 = *(this + 1);
LABEL_143:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_147:
  v87 = v4 ^ 1;
  return v87 & 1;
}

uint64_t sub_19B585200(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
    v4 = *(v3 + 68);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
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

  v5 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = *(v3 + 65);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
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
  v8 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 68) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v10 = *(v3 + 64);

  return PB::Writer::write(this);
}

double sub_19B58536C(uint64_t a1)
{
  *a1 = &unk_1F0E2F150;
  *(a1 + 180) = 0;
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
  *(a1 + 168) = 0;
  return result;
}

void sub_19B5853C0(PB::Base *this)
{
  *this = &unk_1F0E2F150;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }

  PB::Base::~Base(this);
}

void sub_19B585484(PB::Base *a1)
{
  sub_19B5853C0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5854BC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "error");
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "errorX");
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "errorY");
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "errorZ");
  }

  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(this, "intercept", v19);
  }

  if (*(a1 + 180))
  {
    PB::TextFormatter::format(this, "overlap", *(a1 + 176));
  }

  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "slope", v22);
  }

  v23 = *(a1 + 152);
  v24 = *(a1 + 160);
  while (v23 != v24)
  {
    v25 = *v23++;
    PB::TextFormatter::format(this, "temperature", v25);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B585660(uint64_t a1, PB::Reader *this)
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
          v56 = v15++ > 8;
          if (v56)
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
        v56 = v9++ > 8;
        if (v56)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
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
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_419;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v39 = *(a1 + 40);
                while (1)
                {
                  v151 = *(a1 + 48);
                  if (v39 >= v151)
                  {
                    v152 = *(a1 + 32);
                    v153 = v39 - v152;
                    v154 = (v39 - v152) >> 2;
                    v155 = v154 + 1;
                    if ((v154 + 1) >> 62)
                    {
                      goto LABEL_421;
                    }

                    v156 = v151 - v152;
                    if (v156 >> 1 > v155)
                    {
                      v155 = v156 >> 1;
                    }

                    if (v156 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v157 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v157 = v155;
                    }

                    if (v157)
                    {
                      sub_19B4C4FA8(a1 + 32, v157);
                    }

                    v158 = (v39 - v152) >> 2;
                    v159 = (4 * v154);
                    v160 = (4 * v154 - 4 * v158);
                    *v159 = 0;
                    v39 = (v159 + 1);
                    memcpy(v160, v152, v153);
                    v161 = *(a1 + 32);
                    *(a1 + 32) = v160;
                    *(a1 + 40) = v39;
                    *(a1 + 48) = 0;
                    if (v161)
                    {
                      operator delete(v161);
                    }
                  }

                  else
                  {
                    *v39 = 0;
                    v39 += 4;
                  }

                  *(a1 + 40) = v39;
                  v163 = *(this + 1);
                  v162 = *(this + 2);
                  v164 = *this;
                  v165 = 0;
                  v166 = 0;
                  if (v163 > 0xFFFFFFFFFFFFFFF5 || v163 + 10 > v162)
                  {
                    break;
                  }

                  v173 = 0;
                  v174 = (v164 + v163);
                  v175 = v163 + 1;
                  while (1)
                  {
                    v171 = v175;
                    *(this + 1) = v175;
                    v176 = *v174++;
                    v173 |= (v176 & 0x7F) << v165;
                    if ((v176 & 0x80) == 0)
                    {
                      break;
                    }

                    v165 += 7;
                    ++v175;
                    v56 = v166++ > 8;
                    if (v56)
                    {
                      goto LABEL_246;
                    }
                  }

LABEL_249:
                  *(v39 - 1) = v173;
                  if (v171 >= v162 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_270;
                  }
                }

                v173 = 0;
                v168 = v162 - v163;
                if (v162 < v163)
                {
                  v168 = 0;
                }

                v169 = (v164 + v163);
                v170 = v163 + 1;
                while (v168)
                {
                  v171 = v170;
                  v172 = *v169;
                  *(this + 1) = v171;
                  v173 |= (v172 & 0x7F) << v165;
                  if ((v172 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      LODWORD(v173) = 0;
                    }

                    goto LABEL_249;
                  }

                  v165 += 7;
                  --v168;
                  ++v169;
                  v170 = v171 + 1;
                  v56 = v166++ > 8;
                  if (v56)
                  {
LABEL_246:
                    LODWORD(v173) = 0;
                    goto LABEL_249;
                  }
                }

LABEL_254:
                *(this + 24) = 1;
                *(v39 - 1) = 0;
              }

              goto LABEL_270;
            }

            v186 = *(a1 + 40);
            v185 = *(a1 + 48);
            if (v186 >= v185)
            {
              v211 = *(a1 + 32);
              v212 = v186 - v211;
              v213 = (v186 - v211) >> 2;
              v214 = v213 + 1;
              if ((v213 + 1) >> 62)
              {
                goto LABEL_421;
              }

              v215 = v185 - v211;
              if (v215 >> 1 > v214)
              {
                v214 = v215 >> 1;
              }

              if (v215 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v216 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v216 = v214;
              }

              if (v216)
              {
                sub_19B4C4FA8(a1 + 32, v216);
              }

              v262 = (v186 - v211) >> 2;
              v263 = (4 * v213);
              v264 = (4 * v213 - 4 * v262);
              *v263 = 0;
              v182 = v263 + 1;
              memcpy(v264, v211, v212);
              v265 = *(a1 + 32);
              *(a1 + 32) = v264;
              *(a1 + 40) = v182;
              *(a1 + 48) = 0;
              if (v265)
              {
                operator delete(v265);
              }
            }

            else
            {
              *v186 = 0;
              v182 = v186 + 4;
            }

            *(a1 + 40) = v182;
            v267 = *(this + 1);
            v266 = *(this + 2);
            v268 = *this;
            if (v267 <= 0xFFFFFFFFFFFFFFF5 && v267 + 10 <= v266)
            {
              v269 = 0;
              v270 = 0;
              v248 = 0;
              v271 = (v268 + v267);
              v272 = v267 + 1;
              while (1)
              {
                *(this + 1) = v272;
                v273 = *v271++;
                v248 |= (v273 & 0x7F) << v269;
                if ((v273 & 0x80) == 0)
                {
                  goto LABEL_412;
                }

                v269 += 7;
                ++v272;
                v56 = v270++ > 8;
                if (v56)
                {
                  goto LABEL_408;
                }
              }
            }

            v274 = 0;
            v275 = 0;
            v248 = 0;
            v16 = v266 >= v267;
            v276 = v266 - v267;
            if (!v16)
            {
              v276 = 0;
            }

            v277 = (v268 + v267);
            v278 = v267 + 1;
            while (v276)
            {
              v279 = *v277;
              *(this + 1) = v278;
              v248 |= (v279 & 0x7F) << v274;
              if ((v279 & 0x80) == 0)
              {
LABEL_410:
                if (*(this + 24))
                {
                  LODWORD(v248) = 0;
                }

                goto LABEL_412;
              }

              v274 += 7;
              --v276;
              ++v277;
              ++v278;
              v56 = v275++ > 8;
              if (v56)
              {
LABEL_408:
                LODWORD(v248) = 0;
                goto LABEL_412;
              }
            }

            goto LABEL_409;
          }

          if (v22 == 8)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_419;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v39 = *(a1 + 64);
                do
                {
                  v67 = *(a1 + 72);
                  if (v39 >= v67)
                  {
                    v68 = *(a1 + 56);
                    v69 = v39 - v68;
                    v70 = (v39 - v68) >> 2;
                    v71 = v70 + 1;
                    if ((v70 + 1) >> 62)
                    {
                      goto LABEL_421;
                    }

                    v72 = v67 - v68;
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

                    v74 = (v39 - v68) >> 2;
                    v75 = (4 * v70);
                    v76 = (4 * v70 - 4 * v74);
                    *v75 = 0;
                    v39 = (v75 + 1);
                    memcpy(v76, v68, v69);
                    v77 = *(a1 + 56);
                    *(a1 + 56) = v76;
                    *(a1 + 64) = v39;
                    *(a1 + 72) = 0;
                    if (v77)
                    {
                      operator delete(v77);
                    }
                  }

                  else
                  {
                    *v39 = 0;
                    v39 += 4;
                  }

                  *(a1 + 64) = v39;
                  v79 = *(this + 1);
                  v78 = *(this + 2);
                  v80 = *this;
                  v81 = 0;
                  v82 = 0;
                  if (v79 > 0xFFFFFFFFFFFFFFF5 || v79 + 10 > v78)
                  {
                    v89 = 0;
                    v84 = v78 - v79;
                    if (v78 < v79)
                    {
                      v84 = 0;
                    }

                    v85 = (v80 + v79);
                    v86 = v79 + 1;
                    while (1)
                    {
                      if (!v84)
                      {
                        goto LABEL_254;
                      }

                      v87 = v86;
                      v88 = *v85;
                      *(this + 1) = v87;
                      v89 |= (v88 & 0x7F) << v81;
                      if ((v88 & 0x80) == 0)
                      {
                        break;
                      }

                      v81 += 7;
                      --v84;
                      ++v85;
                      v86 = v87 + 1;
                      v56 = v82++ > 8;
                      if (v56)
                      {
LABEL_128:
                        LODWORD(v89) = 0;
                        goto LABEL_131;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v89) = 0;
                    }
                  }

                  else
                  {
                    v89 = 0;
                    v90 = (v80 + v79);
                    v91 = v79 + 1;
                    while (1)
                    {
                      v87 = v91;
                      *(this + 1) = v91;
                      v92 = *v90++;
                      v89 |= (v92 & 0x7F) << v81;
                      if ((v92 & 0x80) == 0)
                      {
                        break;
                      }

                      v81 += 7;
                      ++v91;
                      v56 = v82++ > 8;
                      if (v56)
                      {
                        goto LABEL_128;
                      }
                    }
                  }

LABEL_131:
                  *(v39 - 1) = v89;
                }

                while (v87 < v78 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_270;
            }

            v192 = *(a1 + 64);
            v191 = *(a1 + 72);
            if (v192 >= v191)
            {
              v229 = *(a1 + 56);
              v230 = v192 - v229;
              v231 = (v192 - v229) >> 2;
              v232 = v231 + 1;
              if ((v231 + 1) >> 62)
              {
LABEL_421:
                sub_19B5BE690();
              }

              v233 = v191 - v229;
              if (v233 >> 1 > v232)
              {
                v232 = v233 >> 1;
              }

              if (v233 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v234 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v234 = v232;
              }

              if (v234)
              {
                sub_19B4C4FA8(a1 + 56, v234);
              }

              v303 = (v192 - v229) >> 2;
              v304 = (4 * v231);
              v305 = (4 * v231 - 4 * v303);
              *v304 = 0;
              v182 = v304 + 1;
              memcpy(v305, v229, v230);
              v306 = *(a1 + 56);
              *(a1 + 56) = v305;
              *(a1 + 64) = v182;
              *(a1 + 72) = 0;
              if (v306)
              {
                operator delete(v306);
              }
            }

            else
            {
              *v192 = 0;
              v182 = v192 + 4;
            }

            *(a1 + 64) = v182;
            v308 = *(this + 1);
            v307 = *(this + 2);
            v309 = *this;
            if (v308 <= 0xFFFFFFFFFFFFFFF5 && v308 + 10 <= v307)
            {
              v310 = 0;
              v311 = 0;
              v248 = 0;
              v312 = (v309 + v308);
              v313 = v308 + 1;
              while (1)
              {
                *(this + 1) = v313;
                v314 = *v312++;
                v248 |= (v314 & 0x7F) << v310;
                if ((v314 & 0x80) == 0)
                {
                  goto LABEL_412;
                }

                v310 += 7;
                ++v313;
                v56 = v311++ > 8;
                if (v56)
                {
                  goto LABEL_408;
                }
              }
            }

            v315 = 0;
            v316 = 0;
            v248 = 0;
            v16 = v307 >= v308;
            v317 = v307 - v308;
            if (!v16)
            {
              v317 = 0;
            }

            v318 = (v309 + v308);
            v319 = v308 + 1;
            while (v317)
            {
              v320 = *v318;
              *(this + 1) = v319;
              v248 |= (v320 & 0x7F) << v315;
              if ((v320 & 0x80) == 0)
              {
                goto LABEL_410;
              }

              v315 += 7;
              --v317;
              ++v318;
              ++v319;
              v56 = v316++ > 8;
              if (v56)
              {
                goto LABEL_408;
              }
            }

LABEL_409:
            LODWORD(v248) = 0;
            *(this + 24) = 1;
LABEL_412:
            *(v182 - 1) = v248;
            goto LABEL_413;
          }
        }

        else
        {
          if (v22 == 5)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_419;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v39 = *(a1 + 88);
                do
                {
                  v109 = *(a1 + 96);
                  if (v39 >= v109)
                  {
                    v110 = *(a1 + 80);
                    v111 = v39 - v110;
                    v112 = (v39 - v110) >> 2;
                    v113 = v112 + 1;
                    if ((v112 + 1) >> 62)
                    {
                      goto LABEL_421;
                    }

                    v114 = v109 - v110;
                    if (v114 >> 1 > v113)
                    {
                      v113 = v114 >> 1;
                    }

                    if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v115 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v115 = v113;
                    }

                    if (v115)
                    {
                      sub_19B4C4FA8(a1 + 80, v115);
                    }

                    v116 = (v39 - v110) >> 2;
                    v117 = (4 * v112);
                    v118 = (4 * v112 - 4 * v116);
                    *v117 = 0;
                    v39 = (v117 + 1);
                    memcpy(v118, v110, v111);
                    v119 = *(a1 + 80);
                    *(a1 + 80) = v118;
                    *(a1 + 88) = v39;
                    *(a1 + 96) = 0;
                    if (v119)
                    {
                      operator delete(v119);
                    }
                  }

                  else
                  {
                    *v39 = 0;
                    v39 += 4;
                  }

                  *(a1 + 88) = v39;
                  v121 = *(this + 1);
                  v120 = *(this + 2);
                  v122 = *this;
                  v123 = 0;
                  v124 = 0;
                  if (v121 > 0xFFFFFFFFFFFFFFF5 || v121 + 10 > v120)
                  {
                    v131 = 0;
                    v126 = v120 - v121;
                    if (v120 < v121)
                    {
                      v126 = 0;
                    }

                    v127 = (v122 + v121);
                    v128 = v121 + 1;
                    while (1)
                    {
                      if (!v126)
                      {
                        goto LABEL_254;
                      }

                      v129 = v128;
                      v130 = *v127;
                      *(this + 1) = v129;
                      v131 |= (v130 & 0x7F) << v123;
                      if ((v130 & 0x80) == 0)
                      {
                        break;
                      }

                      v123 += 7;
                      --v126;
                      ++v127;
                      v128 = v129 + 1;
                      v56 = v124++ > 8;
                      if (v56)
                      {
LABEL_187:
                        LODWORD(v131) = 0;
                        goto LABEL_190;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v131) = 0;
                    }
                  }

                  else
                  {
                    v131 = 0;
                    v132 = (v122 + v121);
                    v133 = v121 + 1;
                    while (1)
                    {
                      v129 = v133;
                      *(this + 1) = v133;
                      v134 = *v132++;
                      v131 |= (v134 & 0x7F) << v123;
                      if ((v134 & 0x80) == 0)
                      {
                        break;
                      }

                      v123 += 7;
                      ++v133;
                      v56 = v124++ > 8;
                      if (v56)
                      {
                        goto LABEL_187;
                      }
                    }
                  }

LABEL_190:
                  *(v39 - 1) = v131;
                }

                while (v129 < v120 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_270;
            }

            v181 = *(a1 + 88);
            v180 = *(a1 + 96);
            if (v181 >= v180)
            {
              v199 = *(a1 + 80);
              v200 = v181 - v199;
              v201 = (v181 - v199) >> 2;
              v202 = v201 + 1;
              if ((v201 + 1) >> 62)
              {
                goto LABEL_421;
              }

              v203 = v180 - v199;
              if (v203 >> 1 > v202)
              {
                v202 = v203 >> 1;
              }

              if (v203 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v204 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v204 = v202;
              }

              if (v204)
              {
                sub_19B4C4FA8(a1 + 80, v204);
              }

              v239 = (v181 - v199) >> 2;
              v240 = (4 * v201);
              v241 = (4 * v201 - 4 * v239);
              *v240 = 0;
              v182 = v240 + 1;
              memcpy(v241, v199, v200);
              v242 = *(a1 + 80);
              *(a1 + 80) = v241;
              *(a1 + 88) = v182;
              *(a1 + 96) = 0;
              if (v242)
              {
                operator delete(v242);
              }
            }

            else
            {
              *v181 = 0;
              v182 = v181 + 4;
            }

            *(a1 + 88) = v182;
            v244 = *(this + 1);
            v243 = *(this + 2);
            v245 = *this;
            if (v244 > 0xFFFFFFFFFFFFFFF5 || v244 + 10 > v243)
            {
              v252 = 0;
              v253 = 0;
              v248 = 0;
              v16 = v243 >= v244;
              v254 = v243 - v244;
              if (!v16)
              {
                v254 = 0;
              }

              v255 = (v245 + v244);
              v256 = v244 + 1;
              while (v254)
              {
                v257 = *v255;
                *(this + 1) = v256;
                v248 |= (v257 & 0x7F) << v252;
                if ((v257 & 0x80) == 0)
                {
                  goto LABEL_410;
                }

                v252 += 7;
                --v254;
                ++v255;
                ++v256;
                v56 = v253++ > 8;
                if (v56)
                {
                  goto LABEL_408;
                }
              }

              goto LABEL_409;
            }

            v246 = 0;
            v247 = 0;
            v248 = 0;
            v249 = (v245 + v244);
            v250 = v244 + 1;
            while (1)
            {
              *(this + 1) = v250;
              v251 = *v249++;
              v248 |= (v251 & 0x7F) << v246;
              if ((v251 & 0x80) == 0)
              {
                goto LABEL_412;
              }

              v246 += 7;
              ++v250;
              v56 = v247++ > 8;
              if (v56)
              {
                goto LABEL_408;
              }
            }
          }

          if (v22 == 6)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_419;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v39 = *(a1 + 16);
                do
                {
                  v40 = *(a1 + 24);
                  if (v39 >= v40)
                  {
                    v41 = *(a1 + 8);
                    v42 = v39 - v41;
                    v43 = (v39 - v41) >> 2;
                    v44 = v43 + 1;
                    if ((v43 + 1) >> 62)
                    {
                      goto LABEL_421;
                    }

                    v45 = v40 - v41;
                    if (v45 >> 1 > v44)
                    {
                      v44 = v45 >> 1;
                    }

                    if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v46 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v46 = v44;
                    }

                    if (v46)
                    {
                      sub_19B4C4FA8(a1 + 8, v46);
                    }

                    v47 = (v39 - v41) >> 2;
                    v48 = (4 * v43);
                    v49 = (4 * v43 - 4 * v47);
                    *v48 = 0;
                    v39 = (v48 + 1);
                    memcpy(v49, v41, v42);
                    v50 = *(a1 + 8);
                    *(a1 + 8) = v49;
                    *(a1 + 16) = v39;
                    *(a1 + 24) = 0;
                    if (v50)
                    {
                      operator delete(v50);
                    }
                  }

                  else
                  {
                    *v39 = 0;
                    v39 += 4;
                  }

                  *(a1 + 16) = v39;
                  v52 = *(this + 1);
                  v51 = *(this + 2);
                  v53 = *this;
                  v54 = 0;
                  v55 = 0;
                  v56 = v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v51;
                  if (v56)
                  {
                    v62 = 0;
                    v57 = v51 - v52;
                    if (v51 < v52)
                    {
                      v57 = 0;
                    }

                    v58 = (v53 + v52);
                    v59 = v52 + 1;
                    while (1)
                    {
                      if (!v57)
                      {
                        goto LABEL_254;
                      }

                      v60 = v59;
                      v61 = *v58;
                      *(this + 1) = v60;
                      v62 |= (v61 & 0x7F) << v54;
                      if ((v61 & 0x80) == 0)
                      {
                        break;
                      }

                      v54 += 7;
                      --v57;
                      ++v58;
                      v59 = v60 + 1;
                      v56 = v55++ > 8;
                      if (v56)
                      {
LABEL_82:
                        LODWORD(v62) = 0;
                        goto LABEL_85;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v62) = 0;
                    }
                  }

                  else
                  {
                    v62 = 0;
                    v63 = (v53 + v52);
                    v64 = v52 + 1;
                    while (1)
                    {
                      v60 = v64;
                      *(this + 1) = v64;
                      v65 = *v63++;
                      v62 |= (v65 & 0x7F) << v54;
                      if ((v65 & 0x80) == 0)
                      {
                        break;
                      }

                      v54 += 7;
                      ++v64;
                      v56 = v55++ > 8;
                      if (v56)
                      {
                        goto LABEL_82;
                      }
                    }
                  }

LABEL_85:
                  *(v39 - 1) = v62;
                }

                while (v60 < v51 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_270;
            }

            v190 = *(a1 + 16);
            v189 = *(a1 + 24);
            if (v190 >= v189)
            {
              v223 = *(a1 + 8);
              v224 = v190 - v223;
              v225 = (v190 - v223) >> 2;
              v226 = v225 + 1;
              if ((v225 + 1) >> 62)
              {
                goto LABEL_421;
              }

              v227 = v189 - v223;
              if (v227 >> 1 > v226)
              {
                v226 = v227 >> 1;
              }

              if (v227 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v228 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v228 = v226;
              }

              if (v228)
              {
                sub_19B4C4FA8(a1 + 8, v228);
              }

              v285 = (v190 - v223) >> 2;
              v286 = (4 * v225);
              v287 = (4 * v225 - 4 * v285);
              *v286 = 0;
              v182 = v286 + 1;
              memcpy(v287, v223, v224);
              v288 = *(a1 + 8);
              *(a1 + 8) = v287;
              *(a1 + 16) = v182;
              *(a1 + 24) = 0;
              if (v288)
              {
                operator delete(v288);
              }
            }

            else
            {
              *v190 = 0;
              v182 = v190 + 4;
            }

            *(a1 + 16) = v182;
            v290 = *(this + 1);
            v289 = *(this + 2);
            v291 = *this;
            if (v290 > 0xFFFFFFFFFFFFFFF5 || v290 + 10 > v289)
            {
              v297 = 0;
              v298 = 0;
              v248 = 0;
              v16 = v289 >= v290;
              v299 = v289 - v290;
              if (!v16)
              {
                v299 = 0;
              }

              v300 = (v291 + v290);
              v301 = v290 + 1;
              while (v299)
              {
                v302 = *v300;
                *(this + 1) = v301;
                v248 |= (v302 & 0x7F) << v297;
                if ((v302 & 0x80) == 0)
                {
                  goto LABEL_410;
                }

                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v56 = v298++ > 8;
                if (v56)
                {
                  goto LABEL_408;
                }
              }

              goto LABEL_409;
            }

            v292 = 0;
            v293 = 0;
            v248 = 0;
            v294 = (v291 + v290);
            v295 = v290 + 1;
            while (1)
            {
              *(this + 1) = v295;
              v296 = *v294++;
              v248 |= (v296 & 0x7F) << v292;
              if ((v296 & 0x80) == 0)
              {
                goto LABEL_412;
              }

              v292 += 7;
              ++v295;
              v56 = v293++ > 8;
              if (v56)
              {
                goto LABEL_408;
              }
            }
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_419;
            }

            v135 = *(this + 1);
            v136 = *(this + 2);
            while (v135 < v136 && (*(this + 24) & 1) == 0)
            {
              v138 = *(a1 + 160);
              v137 = *(a1 + 168);
              if (v138 >= v137)
              {
                v140 = *(a1 + 152);
                v141 = v138 - v140;
                v142 = (v138 - v140) >> 2;
                v143 = v142 + 1;
                if ((v142 + 1) >> 62)
                {
                  goto LABEL_420;
                }

                v144 = v137 - v140;
                if (v144 >> 1 > v143)
                {
                  v143 = v144 >> 1;
                }

                if (v144 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v145 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v145 = v143;
                }

                if (v145)
                {
                  sub_19B4C4FA8(a1 + 152, v145);
                }

                v146 = (v138 - v140) >> 2;
                v147 = (4 * v142);
                v148 = (4 * v142 - 4 * v146);
                *v147 = 0;
                v139 = v147 + 1;
                memcpy(v148, v140, v141);
                v149 = *(a1 + 152);
                *(a1 + 152) = v148;
                *(a1 + 160) = v139;
                *(a1 + 168) = 0;
                if (v149)
                {
                  operator delete(v149);
                }
              }

              else
              {
                *v138 = 0;
                v139 = v138 + 4;
              }

              *(a1 + 160) = v139;
              v150 = *(this + 1);
              if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(this + 2))
              {
LABEL_269:
                *(this + 24) = 1;
                goto LABEL_270;
              }

              *(v139 - 1) = *(*this + v150);
              v136 = *(this + 2);
              v135 = *(this + 1) + 4;
              *(this + 1) = v135;
            }

            goto LABEL_270;
          }

          v184 = *(a1 + 160);
          v183 = *(a1 + 168);
          if (v184 >= v183)
          {
            v205 = *(a1 + 152);
            v206 = v184 - v205;
            v207 = (v184 - v205) >> 2;
            v208 = v207 + 1;
            if ((v207 + 1) >> 62)
            {
              goto LABEL_420;
            }

            v209 = v183 - v205;
            if (v209 >> 1 > v208)
            {
              v208 = v209 >> 1;
            }

            if (v209 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v210 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v210 = v208;
            }

            if (v210)
            {
              sub_19B4C4FA8(a1 + 152, v210);
            }

            v258 = (v184 - v205) >> 2;
            v259 = (4 * v207);
            v260 = (4 * v207 - 4 * v258);
            *v259 = 0;
            v179 = v259 + 1;
            memcpy(v260, v205, v206);
            v261 = *(a1 + 152);
            *(a1 + 152) = v260;
            *(a1 + 160) = v179;
            *(a1 + 168) = 0;
            if (v261)
            {
              operator delete(v261);
            }
          }

          else
          {
            *v184 = 0;
            v179 = v184 + 4;
          }

          *(a1 + 160) = v179;
LABEL_370:
          v284 = *(this + 1);
          if (v284 > 0xFFFFFFFFFFFFFFFBLL || v284 + 4 > *(this + 2))
          {
            goto LABEL_372;
          }

          *(v179 - 1) = *(*this + v284);
LABEL_374:
          *(this + 1) += 4;
          goto LABEL_413;
        }

        if (v22 == 4)
        {
          *(a1 + 180) |= 1u;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
LABEL_372:
            *(this + 24) = 1;
            goto LABEL_413;
          }

          *(a1 + 176) = *(*this + v66);
          goto LABEL_374;
        }
      }

      else
      {
        if (v22 == 1)
        {
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_419;
            }

            v93 = *(this + 1);
            v94 = *(this + 2);
            while (v93 < v94 && (*(this + 24) & 1) == 0)
            {
              v96 = *(a1 + 136);
              v95 = *(a1 + 144);
              if (v96 >= v95)
              {
                v98 = *(a1 + 128);
                v99 = v96 - v98;
                v100 = (v96 - v98) >> 2;
                v101 = v100 + 1;
                if ((v100 + 1) >> 62)
                {
                  goto LABEL_420;
                }

                v102 = v95 - v98;
                if (v102 >> 1 > v101)
                {
                  v101 = v102 >> 1;
                }

                if (v102 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v103 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v101;
                }

                if (v103)
                {
                  sub_19B4C4FA8(a1 + 128, v103);
                }

                v104 = (v96 - v98) >> 2;
                v105 = (4 * v100);
                v106 = (4 * v100 - 4 * v104);
                *v105 = 0;
                v97 = v105 + 1;
                memcpy(v106, v98, v99);
                v107 = *(a1 + 128);
                *(a1 + 128) = v106;
                *(a1 + 136) = v97;
                *(a1 + 144) = 0;
                if (v107)
                {
                  operator delete(v107);
                }
              }

              else
              {
                *v96 = 0;
                v97 = v96 + 4;
              }

              *(a1 + 136) = v97;
              v108 = *(this + 1);
              if (v108 > 0xFFFFFFFFFFFFFFFBLL || v108 + 4 > *(this + 2))
              {
                goto LABEL_269;
              }

              *(v97 - 1) = *(*this + v108);
              v94 = *(this + 2);
              v93 = *(this + 1) + 4;
              *(this + 1) = v93;
            }

            goto LABEL_270;
          }

          v178 = *(a1 + 136);
          v177 = *(a1 + 144);
          if (v178 >= v177)
          {
            v193 = *(a1 + 128);
            v194 = v178 - v193;
            v195 = (v178 - v193) >> 2;
            v196 = v195 + 1;
            if ((v195 + 1) >> 62)
            {
              goto LABEL_420;
            }

            v197 = v177 - v193;
            if (v197 >> 1 > v196)
            {
              v196 = v197 >> 1;
            }

            if (v197 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v198 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v198 = v196;
            }

            if (v198)
            {
              sub_19B4C4FA8(a1 + 128, v198);
            }

            v235 = (v178 - v193) >> 2;
            v236 = (4 * v195);
            v237 = (4 * v195 - 4 * v235);
            *v236 = 0;
            v179 = v236 + 1;
            memcpy(v237, v193, v194);
            v238 = *(a1 + 128);
            *(a1 + 128) = v237;
            *(a1 + 136) = v179;
            *(a1 + 144) = 0;
            if (v238)
            {
              operator delete(v238);
            }
          }

          else
          {
            *v178 = 0;
            v179 = v178 + 4;
          }

          *(a1 + 136) = v179;
          goto LABEL_370;
        }

        if (v22 == 2)
        {
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_419;
            }

            v23 = *(this + 1);
            v24 = *(this + 2);
            while (v23 < v24 && (*(this + 24) & 1) == 0)
            {
              v26 = *(a1 + 112);
              v25 = *(a1 + 120);
              if (v26 >= v25)
              {
                v28 = *(a1 + 104);
                v29 = v26 - v28;
                v30 = (v26 - v28) >> 2;
                v31 = v30 + 1;
                if ((v30 + 1) >> 62)
                {
                  goto LABEL_420;
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
                  sub_19B4C4FA8(a1 + 104, v33);
                }

                v34 = (v26 - v28) >> 2;
                v35 = (4 * v30);
                v36 = (4 * v30 - 4 * v34);
                *v35 = 0;
                v27 = v35 + 1;
                memcpy(v36, v28, v29);
                v37 = *(a1 + 104);
                *(a1 + 104) = v36;
                *(a1 + 112) = v27;
                *(a1 + 120) = 0;
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

              *(a1 + 112) = v27;
              v38 = *(this + 1);
              if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
              {
                goto LABEL_269;
              }

              *(v27 - 1) = *(*this + v38);
              v24 = *(this + 2);
              v23 = *(this + 1) + 4;
              *(this + 1) = v23;
            }

LABEL_270:
            PB::Reader::recallMark();
            goto LABEL_413;
          }

          v188 = *(a1 + 112);
          v187 = *(a1 + 120);
          if (v188 >= v187)
          {
            v217 = *(a1 + 104);
            v218 = v188 - v217;
            v219 = (v188 - v217) >> 2;
            v220 = v219 + 1;
            if ((v219 + 1) >> 62)
            {
LABEL_420:
              sub_19B5BE690();
            }

            v221 = v187 - v217;
            if (v221 >> 1 > v220)
            {
              v220 = v221 >> 1;
            }

            if (v221 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v222 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v222 = v220;
            }

            if (v222)
            {
              sub_19B4C4FA8(a1 + 104, v222);
            }

            v280 = (v188 - v217) >> 2;
            v281 = (4 * v219);
            v282 = (4 * v219 - 4 * v280);
            *v281 = 0;
            v179 = v281 + 1;
            memcpy(v282, v217, v218);
            v283 = *(a1 + 104);
            *(a1 + 104) = v282;
            *(a1 + 112) = v179;
            *(a1 + 120) = 0;
            if (v283)
            {
              operator delete(v283);
            }
          }

          else
          {
            *v188 = 0;
            v179 = v188 + 4;
          }

          *(a1 + 112) = v179;
          goto LABEL_370;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_419:
        v321 = 0;
        return v321 & 1;
      }

LABEL_413:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v321 = v4 ^ 1;
  return v321 & 1;
}

uint64_t sub_19B586A48(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  v5 = *(result + 136);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 152);
  v11 = *(v3 + 160);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  if (*(v3 + 180))
  {
    result = PB::Writer::write(this, *(v3 + 176));
  }

  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::writeVarInt(this);
  }

  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  while (v16 != v17)
  {
    v18 = *v16++;
    result = PB::Writer::writeVarInt(this);
  }

  v19 = *(v3 + 32);
  v20 = *(v3 + 40);
  while (v19 != v20)
  {
    v21 = *v19++;
    result = PB::Writer::writeVarInt(this);
  }

  v23 = *(v3 + 56);
  v22 = *(v3 + 64);
  while (v23 != v22)
  {
    v24 = *v23++;
    result = PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B586B6C(uint64_t result)
{
  *result = &unk_1F0E39980;
  *(result + 68) = 0;
  return result;
}

void sub_19B586B94(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B586BCC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "maxMean", *(a1 + 8));
    v5 = *(a1 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
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

  PB::TextFormatter::format(this, "mean", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(a1 + 56);
  PB::TextFormatter::format(this, "meanN");
  v5 = *(a1 + 68);
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
  PB::TextFormatter::format(this, "minMean", *(a1 + 24));
  v5 = *(a1 + 68);
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
  PB::TextFormatter::format(this, "speedLB", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "speedUB", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 60);
  PB::TextFormatter::format(this, "updateN");
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "variance", *(a1 + 48));
  if ((*(a1 + 68) & 0x100) != 0)
  {
LABEL_10:
    v6 = *(a1 + 64);
    PB::TextFormatter::format(this, "varianceN");
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B586D30(uint64_t a1, PB::Reader *this)
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
            goto LABEL_120;
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
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_65:
              *(this + 24) = 1;
              goto LABEL_116;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_100;
          }

          if (v22 == 4)
          {
            *(a1 + 68) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_100;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_100;
          }

          if (v22 == 2)
          {
            *(a1 + 68) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_100;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 68) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_100;
        }

        if (v22 == 6)
        {
          *(a1 + 68) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_100:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_116;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 68) |= 0x40u;
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
                  goto LABEL_107;
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
                  goto LABEL_106;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_106:
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

LABEL_107:
            *(a1 + 56) = v35;
            goto LABEL_116;
          case 8:
            *(a1 + 68) |= 0x100u;
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
                  goto LABEL_115;
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
                  goto LABEL_114;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_114:
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

LABEL_115:
            *(a1 + 64) = v43;
            goto LABEL_116;
          case 9:
            *(a1 + 68) |= 0x80u;
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
                  goto LABEL_111;
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
                  goto LABEL_110;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_110:
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

LABEL_111:
            *(a1 + 60) = v27;
            goto LABEL_116;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_116:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_120:
  v68 = v4 ^ 1;
  return v68 & 1;
}