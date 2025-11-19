uint64_t sub_19B58736C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 68);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
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

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v6 = *(v3 + 64);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  v5 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v3 + 60);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B5874A0(uint64_t result)
{
  *result = &unk_1F0E2B590;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_19B5874C8(PB::Base *this)
{
  *this = &unk_1F0E2B590;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B58752C(PB::Base *a1)
{
  sub_19B5874C8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B587564(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "pose", v7);
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B587600(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B5879CC(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B587A30(uint64_t result)
{
  *result = &unk_1F0E2B3D0;
  *(result + 100) = 0;
  return result;
}

void sub_19B587A58(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B587A90(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 100);
  if (v5)
  {
    PB::TextFormatter::format(this, "accuracy", *(a1 + 8));
    v5 = *(a1 + 100);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 100) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 80);
  PB::TextFormatter::format(this, "batchedLocationFixType");
  v5 = *(a1 + 100);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "distance", *(a1 + 16));
  v5 = *(a1 + 100);
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
  PB::TextFormatter::format(this, "gpsAltitude", *(a1 + 24));
  v5 = *(a1 + 100);
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
  PB::TextFormatter::format(this, "gpsSpeedAccuracy", *(a1 + 32));
  v5 = *(a1 + 100);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "odometer", *(a1 + 40));
  v5 = *(a1 + 100);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(a1 + 84);
  PB::TextFormatter::format(this, "originDevice");
  v5 = *(a1 + 100);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a1 + 88);
  PB::TextFormatter::format(this, "quality");
  v5 = *(a1 + 100);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "rawSpeed", *(a1 + 48));
  v5 = *(a1 + 100);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "speed", *(a1 + 56));
  v5 = *(a1 + 100);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "startTime", *(a1 + 64));
  v5 = *(a1 + 100);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "timestampGps", *(a1 + 72));
  v5 = *(a1 + 100);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v10 = *(a1 + 96);
  PB::TextFormatter::format(this, "trackRunOdometerHasBeenCorrected");
  if ((*(a1 + 100) & 0x1000) != 0)
  {
LABEL_15:
    v6 = *(a1 + 92);
    PB::TextFormatter::format(this, "type");
  }

LABEL_16:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B587C94(uint64_t a1, PB::Reader *this)
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
        goto LABEL_142;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 100) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_117;
        case 2u:
          *(a1 + 100) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_117;
        case 3u:
          *(a1 + 100) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_117;
        case 4u:
          *(a1 + 100) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_117;
        case 5u:
          *(a1 + 100) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_117;
        case 6u:
          *(a1 + 100) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_117;
        case 7u:
          *(a1 + 100) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_117;
        case 8u:
          *(a1 + 100) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_117;
        case 9u:
          *(a1 + 100) |= 0x100u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 72) = *(*this + v2);
LABEL_117:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          else
          {
LABEL_79:
            *(this + 24) = 1;
          }

          goto LABEL_138;
        case 0xAu:
          *(a1 + 100) |= 0x400u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v72 = v2 - v38;
            v73 = (v39 + v38);
            v74 = v38 + 1;
            while (1)
            {
              if (!v72)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_133;
              }

              v75 = v74;
              v76 = *v73;
              *(this + 1) = v75;
              v42 |= (v76 & 0x7F) << v70;
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
                LODWORD(v42) = 0;
LABEL_132:
                v2 = v75;
                goto LABEL_133;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_132;
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
              goto LABEL_133;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_133:
          *(a1 + 84) = v42;
          goto LABEL_138;
        case 0xBu:
          *(a1 + 100) |= 0x800u;
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
              v2 = *(this + 1);
            }

            v79 = v2 - v48;
            v80 = (v49 + v48);
            v81 = v48 + 1;
            while (1)
            {
              if (!v79)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_137;
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
LABEL_136:
                v2 = v82;
                goto LABEL_137;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_136;
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
              goto LABEL_137;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_137:
          *(a1 + 88) = v52;
          goto LABEL_138;
        case 0xCu:
          *(a1 + 100) |= 0x1000u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v58 = v2 - v22;
            v59 = (v23 + v22);
            v60 = v22 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_125;
              }

              v61 = v60;
              v62 = *v59;
              *(this + 1) = v61;
              v26 |= (v62 & 0x7F) << v56;
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
                LODWORD(v26) = 0;
LABEL_124:
                v2 = v61;
                goto LABEL_125;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_124;
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
              goto LABEL_125;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_125:
          *(a1 + 92) = v26;
          goto LABEL_138;
        case 0xDu:
          *(a1 + 100) |= 0x200u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v65 = v2 - v30;
            v66 = (v31 + v30);
            v67 = v30 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_129;
              }

              v68 = v67;
              v69 = *v66;
              *(this + 1) = v68;
              v34 |= (v69 & 0x7F) << v63;
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
                LODWORD(v34) = 0;
LABEL_128:
                v2 = v68;
                goto LABEL_129;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_128;
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
              goto LABEL_129;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_129:
          *(a1 + 80) = v34;
          goto LABEL_138;
        case 0xEu:
          *(a1 + 100) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v47 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v46 = *(*this + v2++);
            *(this + 1) = v2;
            v47 = v46 != 0;
          }

          *(a1 + 96) = v47;
          goto LABEL_138;
        default:
          if (!PB::Reader::skip(this))
          {
            v84 = 0;
            return v84 & 1;
          }

          v2 = *(this + 1);
LABEL_138:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_142;
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

LABEL_142:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_19B58848C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 100);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 100);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 100);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 100);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 100);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 100);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v5 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v8 = *(v3 + 80);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 100) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  v7 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x2000) == 0)
  {
    return result;
  }

LABEL_29:
  v9 = *(v3 + 96);

  return PB::Writer::write(this);
}

uint64_t sub_19B58864C(uint64_t result)
{
  *result = &unk_1F0E2DEB8;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

void sub_19B588674(PB::Base *this)
{
  *this = &unk_1F0E2DEB8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B5886F8(PB::Base *a1)
{
  sub_19B588674(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B588730(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    PB::TextFormatter::format(this, "gpsCourseAccuracy", *(a1 + 8));
    v5 = *(a1 + 80);
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

  else if ((*(a1 + 80) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "gpsCourseRadians", *(a1 + 16));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "groundAltitude", *(a1 + 24));
  v5 = *(a1 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "groundAltitudeUncertainty", *(a1 + 32));
  v5 = *(a1 + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "maxAbsSlope", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    PB::TextFormatter::format(this, "smoothedGPSAltitude", *(a1 + 56));
    if ((*(a1 + 80) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  PB::TextFormatter::format(this, "slope", *(a1 + 48));
  v5 = *(a1 + 80);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  PB::TextFormatter::format(this, "smoothedGPSAltitudeUncertainty", *(a1 + 64));
LABEL_9:
  v6 = *(a1 + 72);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5888AC(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 80) |= 8u;
            v27 = *(this + 1);
            if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
            {
LABEL_58:
              *(this + 24) = 1;
              goto LABEL_63;
            }

            *(a1 + 32) = *(*this + v27);
            goto LABEL_62;
          }

          if (v22 == 4)
          {
            *(a1 + 80) |= 0x40u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 56) = *(*this + v25);
            goto LABEL_62;
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
            *(a1 + 80) |= 4u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 24) = *(*this + v24);
            goto LABEL_62;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 80) |= 0x80u;
          v29 = *(this + 1);
          if (v29 > 0xFFFFFFFFFFFFFFF7 || v29 + 8 > *(this + 2))
          {
            goto LABEL_58;
          }

          *(a1 + 64) = *(*this + v29);
          goto LABEL_62;
        }

        if (v22 == 6)
        {
          *(a1 + 80) |= 2u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_58;
          }

          *(a1 + 16) = *(*this + v26);
          goto LABEL_62;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 80) |= 1u;
            v28 = *(this + 1);
            if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 8) = *(*this + v28);
            goto LABEL_62;
          case 8:
            *(a1 + 80) |= 0x20u;
            v30 = *(this + 1);
            if (v30 > 0xFFFFFFFFFFFFFFF7 || v30 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 48) = *(*this + v30);
            goto LABEL_62;
          case 9:
            *(a1 + 80) |= 0x10u;
            v23 = *(this + 1);
            if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 40) = *(*this + v23);
LABEL_62:
            *(this + 1) += 8;
            goto LABEL_63;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v32 = 0;
        return v32 & 1;
      }

LABEL_63:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_67:
  v32 = v4 ^ 1;
  return v32 & 1;
}

uint64_t sub_19B588D1C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 80);
  if ((v5 & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 24));
    v5 = *(v3 + 80);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v3 + 80) & 8) == 0)
  {
    goto LABEL_5;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v5 = *(v3 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 56));
  v5 = *(v3 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 64));
  v5 = *(v3 + 80);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v5 = *(v3 + 80);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 80) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 8));
  v5 = *(v3 + 80);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

LABEL_19:
  v6 = *(v3 + 40);

  return PB::Writer::write(this, v6);
}

uint64_t sub_19B588E48(uint64_t result)
{
  *result = &unk_1F0E2E778;
  *(result + 68) = 0;
  return result;
}

void sub_19B588E70(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B588EA8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "confidence", *(a1 + 8));
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

  v6 = *(a1 + 48);
  PB::TextFormatter::format(this, "context");
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 52);
  PB::TextFormatter::format(this, "dataSource");
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 64);
  PB::TextFormatter::format(this, "error");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "heartRate", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 56);
  PB::TextFormatter::format(this, "interpolation");
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a1 + 60);
  PB::TextFormatter::format(this, "mode");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "sinceLastGood", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_12:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58902C(uint64_t a1, PB::Reader *this)
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
            *(a1 + 68) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_72:
              *(this + 24) = 1;
              goto LABEL_138;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_117;
          }

          if (v22 == 7)
          {
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_117;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 68) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_72;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_117;
            case 9:
              *(a1 + 68) |= 0x100u;
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
                    goto LABEL_137;
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
                    goto LABEL_136;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v53) = 0;
                }

LABEL_136:
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

LABEL_137:
              *(a1 + 60) = v53;
              goto LABEL_138;
            case 0xA:
              *(a1 + 68) |= 0x20u;
              v25 = *(this + 1);
              v2 = *(this + 2);
              v26 = *this;
              if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
              {
                v71 = 0;
                v72 = 0;
                v29 = 0;
                if (v2 <= v25)
                {
                  v2 = *(this + 1);
                }

                v73 = v2 - v25;
                v74 = (v26 + v25);
                v75 = v25 + 1;
                while (1)
                {
                  if (!v73)
                  {
                    LODWORD(v29) = 0;
                    *(this + 24) = 1;
                    goto LABEL_133;
                  }

                  v76 = v75;
                  v77 = *v74;
                  *(this + 1) = v76;
                  v29 |= (v77 & 0x7F) << v71;
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
                    LODWORD(v29) = 0;
                    goto LABEL_132;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v29) = 0;
                }

LABEL_132:
                v2 = v76;
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
              *(a1 + 48) = v29;
              goto LABEL_138;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 68) |= 0x40u;
          v41 = *(this + 1);
          v2 = *(this + 2);
          v42 = *this;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v45 = 0;
            if (v2 <= v41)
            {
              v2 = *(this + 1);
            }

            v66 = v2 - v41;
            v67 = (v42 + v41);
            v68 = v41 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v45) = 0;
                *(this + 24) = 1;
                goto LABEL_129;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v45 |= (v70 & 0x7F) << v64;
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
                LODWORD(v45) = 0;
                goto LABEL_128;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v45) = 0;
            }

LABEL_128:
            v2 = v69;
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

LABEL_129:
          *(a1 + 52) = v45;
          goto LABEL_138;
        }

        if (v22 == 2)
        {
          *(a1 + 68) |= 0x80u;
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
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_125;
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
                LODWORD(v37) = 0;
                goto LABEL_124;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
            }

LABEL_124:
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
                LODWORD(v37) = 0;
                break;
              }
            }
          }

LABEL_125:
          *(a1 + 56) = v37;
          goto LABEL_138;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_117;
          case 4:
            *(a1 + 68) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_117:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_138;
          case 5:
            *(a1 + 68) |= 0x200u;
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

            *(a1 + 64) = v24;
            goto LABEL_138;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v85 = 0;
        return v85 & 1;
      }

      v2 = *(this + 1);
LABEL_138:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_142:
  v85 = v4 ^ 1;
  return v85 & 1;
}

uint64_t sub_19B589780(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x40) != 0)
  {
    v5 = *(result + 52);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 68);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(v3 + 64);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v8 = *(v3 + 60);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_21:
  v9 = *(v3 + 48);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B5898D0(uint64_t result)
{
  *result = &unk_1F0E306C0;
  *(result + 20) = 0;
  return result;
}

void sub_19B5898F8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B589930(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "orientation");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5899AC(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B589C78(uint64_t result, PB::Writer *this)
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

void *sub_19B589CE4(void *result)
{
  *result = &unk_1F0E30960;
  result[1] = 0;
  return result;
}

void sub_19B589D08(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B589D40(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B589DA0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B58A014(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B58A034(uint64_t result)
{
  *result = &unk_1F0E2DE80;
  *(result + 32) = 0;
  return result;
}

void sub_19B58A05C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58A094(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
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

uint64_t sub_19B58A158(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B58A3E8(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B58A490(uint64_t result)
{
  *result = &unk_1F0E2C4E8;
  *(result + 32) = 0;
  return result;
}

void sub_19B58A4B8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58A4F0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
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

uint64_t sub_19B58A5B4(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B58A844(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B58A8EC(uint64_t result)
{
  *result = &unk_1F0E2CF68;
  *(result + 32) = 0;
  return result;
}

void sub_19B58A914(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58A94C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
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

uint64_t sub_19B58AA10(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B58ACA0(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B58AD48(uint64_t result)
{
  *result = &unk_1F0E399B8;
  *(result + 40) = 0;
  return result;
}

void sub_19B58AD70(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58ADA8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "dotAngularRateVar", *(a1 + 16));
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

  PB::TextFormatter::format(this, "dotUncTNB", *(a1 + 20));
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "dotUncertainty", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "dotVectorX", *(a1 + 28));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "dotVectorY", *(a1 + 32));
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v6 = *(a1 + 36);
  PB::TextFormatter::format(this, "hasValidTNBFrame");
  if (*(a1 + 40))
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58AECC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_62;
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
LABEL_52:
              *(this + 24) = 1;
              goto LABEL_58;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_57;
          case 2:
            *(a1 + 40) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 28) = *(*this + v2);
LABEL_56:
            v2 = *(this + 1) + 4;
LABEL_57:
            *(this + 1) = v2;
            goto LABEL_58;
          case 3:
            *(a1 + 40) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_56;
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
            goto LABEL_52;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_56;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 0x40u;
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

          *(a1 + 36) = v24;
          goto LABEL_58;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_58:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_62:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B58B230(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 20));
    if ((*(v3 + 40) & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  v5 = *(v3 + 36);
  result = PB::Writer::write(this);
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_15:
  v6 = *(v3 + 16);

  return PB::Writer::write(this, v6);
}

uint64_t sub_19B58B32C(uint64_t result)
{
  *result = &unk_1F0E399F0;
  *(result + 32) = 0;
  return result;
}

void sub_19B58B354(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58B38C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dotMeasurement", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotMeasurementUnc", *(a1 + 28));
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

uint64_t sub_19B58B450(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B58B6E0(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B58B788(uint64_t result)
{
  *result = &unk_1F0E2C718;
  *(result + 32) = 0;
  return result;
}

void sub_19B58B7B0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58B7E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
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

uint64_t sub_19B58B8AC(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B58BB3C(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B58BBE4(uint64_t result)
{
  *result = &unk_1F0E39A28;
  *(result + 40) = 0;
  return result;
}

void sub_19B58BC0C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58BC44(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 16));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 20));
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "dotUncRecency", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "dotVar", *(a1 + 28));
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = *(a1 + 36);
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timeSinceLastDOTUpdate", *(a1 + 32));
  if (*(a1 + 40))
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58BD68(uint64_t a1, PB::Reader *this)
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
            goto LABEL_62;
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
LABEL_52:
              *(this + 24) = 1;
              goto LABEL_58;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_57;
          case 2:
            *(a1 + 40) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_56:
            v2 = *(this + 1) + 4;
LABEL_57:
            *(this + 1) = v2;
            goto LABEL_58;
          case 3:
            *(a1 + 40) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_56;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 0x40u;
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

          *(a1 + 36) = v24;
          goto LABEL_58;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_56;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_58:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_62:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B58C0CC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
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

  else if ((*(result + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 40);
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
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 40);
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
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 36);

  return PB::Writer::write(this);
}

uint64_t sub_19B58C1C8(uint64_t result)
{
  *result = &unk_1F0E39A60;
  *(result + 16) = 0;
  *(result + 80) = 0;
  return result;
}

void sub_19B58C1F0(PB::Base *this)
{
  *this = &unk_1F0E39A60;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B58C274(PB::Base *a1)
{
  sub_19B58C1F0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58C2AC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "curveUnfilteredX", *(a1 + 24));
    v5 = *(a1 + 80);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "curveUnfilteredY", *(a1 + 28));
  v5 = *(a1 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "curveUnfilteredZ", *(a1 + 32));
  v5 = *(a1 + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "dot", *(a1 + 36));
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "dotUncertainty", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "dotUnfiltered", *(a1 + 44));
  v5 = *(a1 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "dotVecUnfilteredX", *(a1 + 48));
  v5 = *(a1 + 80);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "dotVecUnfilteredY", *(a1 + 52));
  v5 = *(a1 + 80);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "dotVecUnfilteredZ", *(a1 + 56));
  v5 = *(a1 + 80);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "dotVecX", *(a1 + 60));
  v5 = *(a1 + 80);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "dotVecY", *(a1 + 64));
  v5 = *(a1 + 80);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "frequencySelected", *(a1 + 68));
  v5 = *(a1 + 80);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v7 = *(a1 + 72);
  PB::TextFormatter::format(this, "idxFilterSelected");
  v5 = *(a1 + 80);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  v8 = *(a1 + 76);
  PB::TextFormatter::format(this, "isValidDOT");
  if (*(a1 + 80))
  {
LABEL_16:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_17:
  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "tnb");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58C508(uint64_t a1, PB::Reader *this)
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
            goto LABEL_95;
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
          *(a1 + 80) |= 1u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 8) = *(*this + v22);
          v23 = *(this + 1) + 8;
          goto LABEL_86;
        case 2u:
          *(a1 + 80) |= 0x4000u;
          v40 = *(this + 1);
          if (v40 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v41 = v40 + 1;
            v42 = *(*this + v40);
            *(this + 1) = v41;
            v43 = v42 != 0;
          }

          *(a1 + 76) = v43;
          goto LABEL_91;
        case 3u:
          *(a1 + 80) |= 0x2000u;
          v30 = *(this + 1);
          v29 = *(this + 2);
          v31 = *this;
          if (v30 <= 0xFFFFFFFFFFFFFFF5 && v30 + 10 <= v29)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = (v31 + v30);
            v36 = v30 + 1;
            do
            {
              *(this + 1) = v36;
              v37 = *v35++;
              v34 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                goto LABEL_90;
              }

              v32 += 7;
              ++v36;
              v14 = v33++ > 8;
            }

            while (!v14);
LABEL_81:
            LODWORD(v34) = 0;
            goto LABEL_90;
          }

          v49 = 0;
          v50 = 0;
          v34 = 0;
          v17 = v29 >= v30;
          v51 = v29 - v30;
          if (!v17)
          {
            v51 = 0;
          }

          v52 = (v31 + v30);
          v53 = v30 + 1;
          break;
        case 4u:
          *(a1 + 80) |= 0x1000u;
          v38 = *(this + 1);
          if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 68) = *(*this + v38);
          goto LABEL_85;
        case 5u:
          *(a1 + 80) |= 2u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 24) = *(*this + v26);
          goto LABEL_85;
        case 6u:
          *(a1 + 80) |= 4u;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 28) = *(*this + v44);
          goto LABEL_85;
        case 7u:
          *(a1 + 80) |= 8u;
          v46 = *(this + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 32) = *(*this + v46);
          goto LABEL_85;
        case 8u:
          *(a1 + 80) |= 0x80u;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 48) = *(*this + v39);
          goto LABEL_85;
        case 9u:
          *(a1 + 80) |= 0x100u;
          v48 = *(this + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 52) = *(*this + v48);
          goto LABEL_85;
        case 0xAu:
          *(a1 + 80) |= 0x200u;
          v28 = *(this + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 56) = *(*this + v28);
          goto LABEL_85;
        case 0xBu:
          *(a1 + 80) |= 0x400u;
          v47 = *(this + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 60) = *(*this + v47);
          goto LABEL_85;
        case 0xCu:
          *(a1 + 80) |= 0x800u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 64) = *(*this + v25);
          goto LABEL_85;
        case 0xDu:
          *(a1 + 80) |= 0x40u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFFBLL || v27 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 44) = *(*this + v27);
          goto LABEL_85;
        case 0xEu:
          *(a1 + 80) |= 0x10u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 36) = *(*this + v45);
          goto LABEL_85;
        case 0xFu:
          *(a1 + 80) |= 0x20u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
          {
LABEL_71:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 40) = *(*this + v24);
LABEL_85:
            v23 = *(this + 1) + 4;
LABEL_86:
            *(this + 1) = v23;
          }

          goto LABEL_91;
        case 0x10u:
          operator new();
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_91;
          }

          v56 = 0;
          return v56 & 1;
      }

      while (1)
      {
        if (!v51)
        {
          LODWORD(v34) = 0;
          *(this + 24) = 1;
          goto LABEL_90;
        }

        v54 = *v52;
        *(this + 1) = v53;
        v34 |= (v54 & 0x7F) << v49;
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
          goto LABEL_81;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v34) = 0;
      }

LABEL_90:
      *(a1 + 72) = v34;
LABEL_91:
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

LABEL_95:
  v56 = v4 ^ 1;
  return v56 & 1;
}

uint64_t sub_19B58CB7C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 80);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(result + 80) & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 76);
  result = PB::Writer::write(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 80);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 36));
  if ((*(v3 + 80) & 0x20) != 0)
  {
LABEL_16:
    result = PB::Writer::write(this, *(v3 + 40));
  }

LABEL_17:
  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

uint64_t sub_19B58CD70(uint64_t result)
{
  *result = &unk_1F0E39A98;
  *(result + 40) = 0;
  return result;
}

void sub_19B58CD98(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58CDD0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "dotDeltaBufferMaxAbs", *(a1 + 16));
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

  PB::TextFormatter::format(this, "dotDeltaBufferVar", *(a1 + 20));
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "dotErrorEstimate", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "dotRelativeChangeOverBuffer", *(a1 + 28));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "headingDeltaBufferVar", *(a1 + 32));
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "headingRelativeChangeOverBuffer", *(a1 + 36));
  if (*(a1 + 40))
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58CEF4(uint64_t a1, PB::Reader *this)
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
            *(a1 + 40) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 20) = *(*this + v2);
LABEL_55:
            v2 = *(this + 1) + 4;
LABEL_56:
            *(this + 1) = v2;
            goto LABEL_57;
          case 3:
            *(a1 + 40) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
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

        if (v22 == 7)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 4)
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

        if (v22 == 5)
        {
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

uint64_t sub_19B58D24C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
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

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 28));
    if ((*(v3 + 40) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B58D348(uint64_t result)
{
  *result = &unk_1F0E39AD0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_19B58D370(PB::Base *this)
{
  *this = &unk_1F0E39AD0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B58D3D4(PB::Base *a1)
{
  sub_19B58D370(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58D40C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 52) & 4) != 0)
  {
    v5 = *(a1 + 48);
    PB::TextFormatter::format(this, "placementFiltered");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "placementProbabilityFiltered", v8);
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

uint64_t sub_19B58D4E0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B58D9F4(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B58DAA4(uint64_t result)
{
  *result = &unk_1F0E30688;
  *(result + 108) = 0;
  return result;
}

void sub_19B58DACC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58DB04(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 108);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "pitchMean", *(a1 + 24));
    v5 = *(a1 + 108);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "pitchStd", *(a1 + 28));
  v5 = *(a1 + 108);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "rollMeanAbs", *(a1 + 32));
  v5 = *(a1 + 108);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "rollStd", *(a1 + 36));
  v5 = *(a1 + 108);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "rotRateInerFFTAmpXYHigh", *(a1 + 40));
  v5 = *(a1 + 108);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "rotRateInerFFTAmpXYPed", *(a1 + 44));
  v5 = *(a1 + 108);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "rotRateInerFFTAmpZHigh", *(a1 + 48));
  v5 = *(a1 + 108);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "rotRateInerFFTAmpZPed", *(a1 + 52));
  v5 = *(a1 + 108);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "rotRateInerXYMean", *(a1 + 56));
  v5 = *(a1 + 108);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "rotRateInerXYStd", *(a1 + 60));
  v5 = *(a1 + 108);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "rotRateInerZMean", *(a1 + 64));
  v5 = *(a1 + 108);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "rotRateInerZStd", *(a1 + 68));
  v5 = *(a1 + 108);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 108);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  v5 = *(a1 + 108);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "userAccelInerFFTAmpXYHigh", *(a1 + 72));
  v5 = *(a1 + 108);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "userAccelInerFFTAmpXYPed", *(a1 + 76));
  v5 = *(a1 + 108);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "userAccelInerFFTAmpZHigh", *(a1 + 80));
  v5 = *(a1 + 108);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "userAccelInerFFTAmpZPed", *(a1 + 84));
  v5 = *(a1 + 108);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "userAccelInerXYMean", *(a1 + 88));
  v5 = *(a1 + 108);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "userAccelInerXYStd", *(a1 + 92));
  v5 = *(a1 + 108);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "userAccelInerZMean", *(a1 + 96));
  v5 = *(a1 + 108);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_49:
  PB::TextFormatter::format(this, "userAccelInerZStd", *(a1 + 100));
  if ((*(a1 + 108) & 0x400000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(this, "yawStd", *(a1 + 104));
  }

LABEL_25:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58DE28(uint64_t a1, PB::Reader *this)
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
        goto LABEL_102;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 108) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_89;
        case 2u:
          *(a1 + 108) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_96;
        case 3u:
          *(a1 + 108) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_96;
        case 4u:
          *(a1 + 108) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_96;
        case 5u:
          *(a1 + 108) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_96;
        case 6u:
          *(a1 + 108) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_96;
        case 7u:
          *(a1 + 108) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_96;
        case 8u:
          *(a1 + 108) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_96;
        case 9u:
          *(a1 + 108) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_96;
        case 0xAu:
          *(a1 + 108) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_96;
        case 0xBu:
          *(a1 + 108) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_96;
        case 0xCu:
          *(a1 + 108) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_96;
        case 0xDu:
          *(a1 + 108) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_96;
        case 0xEu:
          *(a1 + 108) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_96;
        case 0xFu:
          *(a1 + 108) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_96;
        case 0x10u:
          *(a1 + 108) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_96;
        case 0x11u:
          *(a1 + 108) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_96;
        case 0x12u:
          *(a1 + 108) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_96;
        case 0x13u:
          *(a1 + 108) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_96;
        case 0x14u:
          *(a1 + 108) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_96;
        case 0x15u:
          *(a1 + 108) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_96;
        case 0x16u:
          *(a1 + 108) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 80) = *(*this + v2);
LABEL_96:
          v2 = *(this + 1) + 4;
          goto LABEL_97;
        case 0x17u:
          *(a1 + 108) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_92:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 16) = *(*this + v2);
LABEL_89:
            v2 = *(this + 1) + 8;
LABEL_97:
            *(this + 1) = v2;
          }

          goto LABEL_98;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_98:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_102;
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

LABEL_102:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B58E4E4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 108);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 108);
    if ((v4 & 0x40000) == 0)
    {
LABEL_3:
      if ((v4 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 108);
  if ((v4 & 0x100000) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 108);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 108);
  if ((v4 & 0x200000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 108);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 108);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 108);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 108);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 108);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 108);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 108);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 108);
  if ((v4 & 0x20) == 0)
  {
LABEL_14:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 108);
  if ((v4 & 0x400000) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 108);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 108);
  if ((v4 & 0x40) == 0)
  {
LABEL_17:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 108);
  if ((v4 & 0x200) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 108);
  if ((v4 & 0x100) == 0)
  {
LABEL_19:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 108);
  if ((v4 & 0x8000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 108);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 108);
  if ((v4 & 0x20000) == 0)
  {
LABEL_22:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

LABEL_46:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 108) & 2) == 0)
    {
      return result;
    }

    goto LABEL_47;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 108);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_47:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B58E7A0(uint64_t result)
{
  *result = &unk_1F0E2EBD8;
  *(result + 20) = 0;
  return result;
}

void sub_19B58E7C8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58E800(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "radius", *(a1 + 16));
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58E87C(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B58EA84(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B58EAF0(uint64_t result)
{
  *result = &unk_1F0E2FEA8;
  *(result + 68) = 0;
  return result;
}

void sub_19B58EB18(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58EB50(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 0x1000) != 0)
  {
    v6 = *(a1 + 64);
    PB::TextFormatter::format(this, "didExceedRadius");
    v5 = *(a1 + 68);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 24);
  PB::TextFormatter::format(this, "fenceID");
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "positionRefX", *(a1 + 28));
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "positionRefY", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "positionRefZ", *(a1 + 36));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "positionUncX", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "positionUncY", *(a1 + 44));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "positionUncZ", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "positionX", *(a1 + 52));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "positionY", *(a1 + 56));
  v5 = *(a1 + 68);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "positionZ", *(a1 + 60));
  v5 = *(a1 + 68);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 68) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58ED34(uint64_t a1, PB::Reader *this)
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
        goto LABEL_90;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 68) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_83;
        case 2u:
          *(a1 + 68) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_64;
        case 3u:
          *(a1 + 68) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_64;
        case 4u:
          *(a1 + 68) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_64;
        case 5u:
          *(a1 + 68) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_64;
        case 6u:
          *(a1 + 68) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_64;
        case 7u:
          *(a1 + 68) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_64;
        case 8u:
          *(a1 + 68) |= 0x1000u;
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

          *(a1 + 64) = v31;
          goto LABEL_69;
        case 9u:
          *(a1 + 68) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_83:
          v2 = *(this + 1) + 8;
          goto LABEL_65;
        case 0xAu:
          *(a1 + 68) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_64;
        case 0xBu:
          *(a1 + 68) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_64;
        case 0xCu:
          *(a1 + 68) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_68:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 36) = *(*this + v2);
LABEL_64:
            v2 = *(this + 1) + 4;
LABEL_65:
            *(this + 1) = v2;
          }

          goto LABEL_69;
        case 0xDu:
          *(a1 + 68) |= 4u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v34 = v2 - v22;
            v35 = (v23 + v22);
            v36 = v22 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_88;
              }

              v37 = v36;
              v38 = *v35;
              *(this + 1) = v37;
              v26 |= (v38 & 0x7F) << v32;
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
                LODWORD(v26) = 0;
LABEL_87:
                v2 = v37;
                goto LABEL_88;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_87;
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
              goto LABEL_88;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_88:
          *(a1 + 24) = v26;
          goto LABEL_69;
        default:
          if (!PB::Reader::skip(this))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(this + 1);
LABEL_69:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_90;
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

LABEL_90:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_19B58F298(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 68);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(result + 68) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5 = *(v3 + 64);
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    result = PB::Writer::write(this, *(v3 + 36));
    if ((*(v3 + 68) & 4) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_27:
  v6 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

void sub_19B58F440(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58F478(uint64_t a1, PB::TextFormatter *this, char *a3)
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
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58F4F4(uint64_t a1, PB::Reader *this)
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

      else if ((v10 >> 3) == 1)
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

uint64_t sub_19B58F7C0(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this, v6);
  }

  return result;
}

uint64_t sub_19B58F82C(uint64_t result)
{
  *result = &unk_1F0E2C4B0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 56) = 0;
  return result;
}

void sub_19B58F854(PB::Base *this)
{
  *this = &unk_1F0E2C4B0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B58F8B8(PB::Base *a1)
{
  sub_19B58F854(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58F8F0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if ((v5 & 8) != 0)
  {
    v6 = *(a1 + 52);
    PB::TextFormatter::format(this, "isPedestrian");
    v5 = *(a1 + 56);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(a1 + 48);
    PB::TextFormatter::format(this, "pedestrianClass");
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "pedestrianClassProbability", v10);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
    v11 = *(a1 + 56);
  }

  if ((v11 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B58F9E0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_103;
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
        goto LABEL_103;
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
          *(a1 + 56) |= 2u;
          v52 = *(this + 1);
          if (v52 <= 0xFFFFFFFFFFFFFFF7 && v52 + 8 <= *(this + 2))
          {
            *(a1 + 40) = *(*this + v52);
LABEL_63:
            v54 = *(this + 1) + 8;
LABEL_64:
            *(this + 1) = v54;
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        if (v22 == 5)
        {
          *(a1 + 56) |= 4u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v58 = 0;
            v59 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v60 = v23 - v24;
            if (!v17)
            {
              v60 = 0;
            }

            v61 = (v25 + v24);
            v62 = v24 + 1;
            while (1)
            {
              if (!v60)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_90;
              }

              v63 = *v61;
              *(this + 1) = v62;
              v28 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              --v60;
              ++v61;
              ++v62;
              v14 = v59++ > 8;
              if (v14)
              {
LABEL_76:
                LODWORD(v28) = 0;
                goto LABEL_90;
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
                goto LABEL_76;
              }
            }
          }

LABEL_90:
          *(a1 + 48) = v28;
          goto LABEL_98;
        }

        goto LABEL_65;
      }

      if ((v10 & 7) != 2)
      {
        v56 = *(a1 + 16);
        v55 = *(a1 + 24);
        if (v56 >= v55)
        {
          v64 = *(a1 + 8);
          v65 = v56 - v64;
          v66 = (v56 - v64) >> 2;
          v67 = v66 + 1;
          if ((v66 + 1) >> 62)
          {
LABEL_106:
            sub_19B5BE690();
          }

          v68 = v55 - v64;
          if (v68 >> 1 > v67)
          {
            v67 = v68 >> 1;
          }

          if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v69 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v67;
          }

          if (v69)
          {
            sub_19B4C4FA8(a1 + 8, v69);
          }

          v70 = (v56 - v64) >> 2;
          v71 = (4 * v66);
          v72 = (4 * v66 - 4 * v70);
          *v71 = 0;
          v57 = v71 + 1;
          memcpy(v72, v64, v65);
          v73 = *(a1 + 8);
          *(a1 + 8) = v72;
          *(a1 + 16) = v57;
          *(a1 + 24) = 0;
          if (v73)
          {
            operator delete(v73);
          }
        }

        else
        {
          *v56 = 0;
          v57 = v56 + 4;
        }

        *(a1 + 16) = v57;
        v74 = *(this + 1);
        if (v74 <= 0xFFFFFFFFFFFFFFFBLL && v74 + 4 <= *(this + 2))
        {
          *(v57 - 1) = *(*this + v74);
          v54 = *(this + 1) + 4;
          goto LABEL_64;
        }

LABEL_97:
        *(this + 24) = 1;
        goto LABEL_98;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_105;
      }

      v36 = *(this + 1);
      v37 = *(this + 2);
      while (v36 < v37 && (*(this + 24) & 1) == 0)
      {
        v39 = *(a1 + 16);
        v38 = *(a1 + 24);
        if (v39 >= v38)
        {
          v41 = *(a1 + 8);
          v42 = v39 - v41;
          v43 = (v39 - v41) >> 2;
          v44 = v43 + 1;
          if ((v43 + 1) >> 62)
          {
            goto LABEL_106;
          }

          v45 = v38 - v41;
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
          v40 = v48 + 1;
          memcpy(v49, v41, v42);
          v50 = *(a1 + 8);
          *(a1 + 8) = v49;
          *(a1 + 16) = v40;
          *(a1 + 24) = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v39 = 0;
          v40 = v39 + 4;
        }

        *(a1 + 16) = v40;
        v51 = *(this + 1);
        if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v40 - 1) = *(*this + v51);
        v37 = *(this + 2);
        v36 = *(this + 1) + 4;
        *(this + 1) = v36;
      }

      PB::Reader::recallMark();
LABEL_98:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_103;
      }
    }

    if (v22 == 1)
    {
      *(a1 + 56) |= 1u;
      v53 = *(this + 1);
      if (v53 <= 0xFFFFFFFFFFFFFFF7 && v53 + 8 <= *(this + 2))
      {
        *(a1 + 32) = *(*this + v53);
        goto LABEL_63;
      }

      goto LABEL_97;
    }

    if (v22 == 2)
    {
      *(a1 + 56) |= 8u;
      v32 = *(this + 1);
      if (v32 >= *(this + 2))
      {
        v35 = 0;
        *(this + 24) = 1;
      }

      else
      {
        v33 = v32 + 1;
        v34 = *(*this + v32);
        *(this + 1) = v33;
        v35 = v34 != 0;
      }

      *(a1 + 52) = v35;
      goto LABEL_98;
    }

LABEL_65:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_105:
      v75 = 0;
      return v75 & 1;
    }

    goto LABEL_98;
  }

LABEL_103:
  v75 = v4 ^ 1;
  return v75 & 1;
}