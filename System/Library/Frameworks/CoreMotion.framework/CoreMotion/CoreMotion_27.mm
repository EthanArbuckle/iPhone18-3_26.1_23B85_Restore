uint64_t sub_19B541A08(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 40);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 24));
      if ((*(v3 + 40) & 8) == 0)
      {
        return result;
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
  v5 = *(v3 + 32);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B541AB0(uint64_t result)
{
  *result = &unk_1F0E2B9C0;
  *(result + 176) = 0;
  return result;
}

void sub_19B541AD8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B541B10(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 176);
  if (v5)
  {
    PB::TextFormatter::format(this, "allBoutsBoutDurationSecCv", *(a1 + 8));
    v5 = *(a1 + 176);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "allBoutsBoutDurationSecMedian", *(a1 + 16));
  v5 = *(a1 + 176);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "allBoutsCycleTimeCv", *(a1 + 24));
  v5 = *(a1 + 176);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "intermediateBoutsCycleTimeCv", *(a1 + 32));
  v5 = *(a1 + 176);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "intermediateBoutsCycleTimeMedian", *(a1 + 40));
  v5 = *(a1 + 176);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "intermediateBoutsDoubleSupportPercentageMedian", *(a1 + 48));
  v5 = *(a1 + 176);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "intermediateBoutsStepLengthCv", *(a1 + 56));
  v5 = *(a1 + 176);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "intermediateBoutsStepLengthMedian", *(a1 + 64));
  v5 = *(a1 + 176);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "intermediateBoutsStepLengthMedianHeightnorm", *(a1 + 72));
  v5 = *(a1 + 176);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "intermediateBoutsWalkingSpeedCv", *(a1 + 80));
  v5 = *(a1 + 176);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "intermediateBoutsWalkingSpeedMedian", *(a1 + 88));
  v5 = *(a1 + 176);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "intermediateBoutsWalkingSpeedMedianSqrtheightnorm", *(a1 + 96));
  v5 = *(a1 + 176);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "longBoutsWalkingSpeedCountRatioLog", *(a1 + 104));
  v5 = *(a1 + 176);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "shortBoutsCycleTimeCv", *(a1 + 112));
  v5 = *(a1 + 176);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "shortBoutsCycleTimeMedian", *(a1 + 120));
  v5 = *(a1 + 176);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "shortBoutsDoubleSupportPercentageMedian", *(a1 + 128));
  v5 = *(a1 + 176);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "shortBoutsStepLengthCv", *(a1 + 136));
  v5 = *(a1 + 176);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "shortBoutsStepLengthMedianHeightnorm", *(a1 + 144));
  v5 = *(a1 + 176);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "shortBoutsWalkingSpeedCv", *(a1 + 152));
  v5 = *(a1 + 176);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  PB::TextFormatter::format(this, "shortBoutsWalkingSpeedMedian", *(a1 + 160));
  if ((*(a1 + 176) & 0x100000) != 0)
  {
LABEL_22:
    PB::TextFormatter::format(this, "shortBoutsWalkingSpeedMedianSqrtheightnorm", *(a1 + 168));
  }

LABEL_23:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B541DF4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_94;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 176) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_89;
        case 2u:
          *(a1 + 176) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_89;
        case 3u:
          *(a1 + 176) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_89;
        case 4u:
          *(a1 + 176) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_89;
        case 5u:
          *(a1 + 176) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_89;
        case 6u:
          *(a1 + 176) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_89;
        case 7u:
          *(a1 + 176) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_89;
        case 8u:
          *(a1 + 176) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_89;
        case 9u:
          *(a1 + 176) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_89;
        case 0xAu:
          *(a1 + 176) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_89;
        case 0xBu:
          *(a1 + 176) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_89;
        case 0xCu:
          *(a1 + 176) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_89;
        case 0xDu:
          *(a1 + 176) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_89;
        case 0xEu:
          *(a1 + 176) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_89;
        case 0xFu:
          *(a1 + 176) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_89;
        case 0x10u:
          *(a1 + 176) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_89;
        case 0x11u:
          *(a1 + 176) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_89;
        case 0x12u:
          *(a1 + 176) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_89;
        case 0x13u:
          *(a1 + 176) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_89;
        case 0x14u:
          *(a1 + 176) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_89;
        case 0x15u:
          *(a1 + 176) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_87:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 104) = *(*this + v2);
LABEL_89:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_90;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_90:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_94;
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

LABEL_94:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B542438(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 176);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 176);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 176);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 176);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 176);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 176);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 176);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 176);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 176);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 176);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 176);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 176);
  if ((v4 & 0x100) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 176);
  if ((v4 & 0x80000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 176);
  if ((v4 & 0x100000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 176);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 176);
  if ((v4 & 0x4000) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 176);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 176);
  if ((v4 & 0x40000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 176);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    result = PB::Writer::write(this, *(v3 + 136));
    if ((*(v3 + 176) & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 176);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((v4 & 0x1000) == 0)
  {
    return result;
  }

LABEL_43:
  v5 = *(v3 + 104);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5426BC(uint64_t result)
{
  *result = &unk_1F0E2BD08;
  *(result + 88) = 0;
  return result;
}

void sub_19B5426E4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54271C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 88);
  if (v5)
  {
    PB::TextFormatter::format(this, "asymmetryPercentageMedian", *(a1 + 8));
    v5 = *(a1 + 88);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "asymmetryPercentageStd", *(a1 + 16));
  v5 = *(a1 + 88);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "doubleSupportPercentageMedian", *(a1 + 24));
  v5 = *(a1 + 88);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "height", *(a1 + 32));
  v5 = *(a1 + 88);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "intermediateBoutsStepLengthQ95Heightnorm", *(a1 + 40));
  v5 = *(a1 + 88);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "intermediateBoutsWalkingSpeedQ95Sqrtheightnorm", *(a1 + 48));
  v5 = *(a1 + 88);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "modelOutputBalancePrior", *(a1 + 56));
  v5 = *(a1 + 88);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "stepLengthMedian", *(a1 + 64));
  v5 = *(a1 + 88);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "stepLengthXWalkingSpeedMedian", *(a1 + 72));
  if ((*(a1 + 88) & 0x200) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "walkingSpeedMedian", *(a1 + 80));
  }

LABEL_12:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5428A0(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 88) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_64:
              *(this + 24) = 1;
              goto LABEL_69;
            }

            *(a1 + 72) = *(*this + v2);
            goto LABEL_68;
          }

          if (v22 == 7)
          {
            *(a1 + 88) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_68;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 88) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_68;
            case 9:
              *(a1 + 88) |= 0x10u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_68;
            case 0xA:
              *(a1 + 88) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_68;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 88) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_68;
        }

        if (v22 == 2)
        {
          *(a1 + 88) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_68;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 88) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_68;
          case 4:
            *(a1 + 88) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_68;
          case 5:
            *(a1 + 88) |= 0x200u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 80) = *(*this + v2);
LABEL_68:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_69;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_69:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B542CB8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 88);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 88);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 88);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 88);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 88);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 88);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = PB::Writer::write(this, *(v3 + 40));
    if ((*(v3 + 88) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 88);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_21:
  v5 = *(v3 + 48);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B542E08(uint64_t result)
{
  *result = &unk_1F0E393E0;
  *(result + 248) = 0;
  return result;
}

void sub_19B542E30(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B542E68(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 248);
  if (v5)
  {
    PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApCv", *(a1 + 8));
    v5 = *(a1 + 248);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApMean", *(a1 + 16));
  v5 = *(a1 + 248);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApMedian", *(a1 + 24));
  v5 = *(a1 + 248);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApQ5", *(a1 + 32));
  v5 = *(a1 + 248);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApQ95", *(a1 + 40));
  v5 = *(a1 + 248);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlCv", *(a1 + 48));
  v5 = *(a1 + 248);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlMean", *(a1 + 56));
  v5 = *(a1 + 248);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlMedian", *(a1 + 64));
  v5 = *(a1 + 248);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlQ5", *(a1 + 72));
  v5 = *(a1 + 248);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlQ95", *(a1 + 80));
  v5 = *(a1 + 248);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtCv", *(a1 + 88));
  v5 = *(a1 + 248);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtMean", *(a1 + 96));
  v5 = *(a1 + 248);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtMedian", *(a1 + 104));
  v5 = *(a1 + 248);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtQ5", *(a1 + 112));
  v5 = *(a1 + 248);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtQ95", *(a1 + 120));
  v5 = *(a1 + 248);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApCv", *(a1 + 128));
  v5 = *(a1 + 248);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApMean", *(a1 + 136));
  v5 = *(a1 + 248);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApMedian", *(a1 + 144));
  v5 = *(a1 + 248);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApQ5", *(a1 + 152));
  v5 = *(a1 + 248);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApQ95", *(a1 + 160));
  v5 = *(a1 + 248);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlCv", *(a1 + 168));
  v5 = *(a1 + 248);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlMean", *(a1 + 176));
  v5 = *(a1 + 248);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlMedian", *(a1 + 184));
  v5 = *(a1 + 248);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlQ5", *(a1 + 192));
  v5 = *(a1 + 248);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlQ95", *(a1 + 200));
  v5 = *(a1 + 248);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtCv", *(a1 + 208));
  v5 = *(a1 + 248);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtMean", *(a1 + 216));
  v5 = *(a1 + 248);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtMedian", *(a1 + 224));
  v5 = *(a1 + 248);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_63:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtQ5", *(a1 + 232));
  if ((*(a1 + 248) & 0x20000000) != 0)
  {
LABEL_31:
    PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtQ95", *(a1 + 240));
  }

LABEL_32:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54326C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_121;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 248) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_116;
        case 2u:
          *(a1 + 248) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_116;
        case 3u:
          *(a1 + 248) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_116;
        case 4u:
          *(a1 + 248) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_116;
        case 5u:
          *(a1 + 248) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_116;
        case 6u:
          *(a1 + 248) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_116;
        case 7u:
          *(a1 + 248) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_116;
        case 8u:
          *(a1 + 248) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_116;
        case 9u:
          *(a1 + 248) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_116;
        case 0xAu:
          *(a1 + 248) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_116;
        case 0xBu:
          *(a1 + 248) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_116;
        case 0xCu:
          *(a1 + 248) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_116;
        case 0xDu:
          *(a1 + 248) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_116;
        case 0xEu:
          *(a1 + 248) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_116;
        case 0xFu:
          *(a1 + 248) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_116;
        case 0x10u:
          *(a1 + 248) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_116;
        case 0x11u:
          *(a1 + 248) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_116;
        case 0x12u:
          *(a1 + 248) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_116;
        case 0x13u:
          *(a1 + 248) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_116;
        case 0x14u:
          *(a1 + 248) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_116;
        case 0x15u:
          *(a1 + 248) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_116;
        case 0x16u:
          *(a1 + 248) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_116;
        case 0x17u:
          *(a1 + 248) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_116;
        case 0x18u:
          *(a1 + 248) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 192) = *(*this + v2);
          goto LABEL_116;
        case 0x19u:
          *(a1 + 248) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 200) = *(*this + v2);
          goto LABEL_116;
        case 0x1Au:
          *(a1 + 248) |= 0x4000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 216) = *(*this + v2);
          goto LABEL_116;
        case 0x1Bu:
          *(a1 + 248) |= 0x8000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 224) = *(*this + v2);
          goto LABEL_116;
        case 0x1Cu:
          *(a1 + 248) |= 0x10000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 232) = *(*this + v2);
          goto LABEL_116;
        case 0x1Du:
          *(a1 + 248) |= 0x20000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 240) = *(*this + v2);
          goto LABEL_116;
        case 0x1Eu:
          *(a1 + 248) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_114:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 208) = *(*this + v2);
LABEL_116:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_117;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_117:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_121;
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

LABEL_121:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B543AA0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 248);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 248);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 248);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 248);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 248);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 248);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 248);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 248);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 248);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 248);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 248);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 248);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 248);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 248);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 248);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 248);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 248);
  if ((v4 & 0x10000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 248);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 248);
  if ((v4 & 0x40000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 248);
  if ((v4 & 0x80000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 248);
  if ((v4 & 0x100000) == 0)
  {
LABEL_22:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 248);
  if ((v4 & 0x200000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 248);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 248);
  if ((v4 & 0x800000) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 248);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 200));
  v4 = *(v3 + 248);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 216));
  v4 = *(v3 + 248);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 224));
  v4 = *(v3 + 248);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    result = PB::Writer::write(this, *(v3 + 240));
    if ((*(v3 + 248) & 0x2000000) == 0)
    {
      return result;
    }

    goto LABEL_61;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 232));
  v4 = *(v3 + 248);
  if ((v4 & 0x20000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((v4 & 0x2000000) == 0)
  {
    return result;
  }

LABEL_61:
  v5 = *(v3 + 208);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B543E20(uint64_t result)
{
  *result = &unk_1F0E2D7F0;
  *(result + 52) = 0;
  return result;
}

void sub_19B543E48(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B543E80(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    PB::TextFormatter::format(this, "likelihoodNotOK", *(a1 + 8));
    v5 = *(a1 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "likelihoodOK", *(a1 + 16));
  v5 = *(a1 + 52);
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
  v6 = *(a1 + 32);
  PB::TextFormatter::format(this, "numDaysWithDataLast30Days");
  v5 = *(a1 + 52);
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
  v7 = *(a1 + 36);
  PB::TextFormatter::format(this, "numDaysWithDataLast7Days");
  v5 = *(a1 + 52);
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
  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "numValidBouts28Days");
  v5 = *(a1 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(this, "rawSteadiness", *(a1 + 24));
    if ((*(a1 + 52) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  v9 = *(a1 + 44);
  PB::TextFormatter::format(this, "numValidBouts7Days");
  v5 = *(a1 + 52);
  if ((v5 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  v10 = *(a1 + 48);
  PB::TextFormatter::format(this, "rejectionStatus");
LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B543FC4(uint64_t a1, PB::Reader *this)
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
            *(a1 + 52) |= 0x40u;
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
                  LODWORD(v59) = 0;
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
                  LODWORD(v59) = 0;
                  goto LABEL_132;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
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
                  LODWORD(v59) = 0;
                  break;
                }
              }
            }

LABEL_133:
            *(a1 + 44) = v59;
            goto LABEL_146;
          }

          if (v22 == 8)
          {
            *(a1 + 52) |= 0x20u;
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
            *(a1 + 40) = v43;
            goto LABEL_146;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 52) |= 0x10u;
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
                  LODWORD(v51) = 0;
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
                  LODWORD(v51) = 0;
                  goto LABEL_128;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
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
                  LODWORD(v51) = 0;
                  break;
                }
              }
            }

LABEL_129:
            *(a1 + 36) = v51;
            goto LABEL_146;
          }

          if (v22 == 6)
          {
            *(a1 + 52) |= 8u;
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
                  LODWORD(v27) = 0;
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
                  LODWORD(v27) = 0;
                  goto LABEL_136;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
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
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_137:
            *(a1 + 32) = v27;
            goto LABEL_146;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 52) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_69:
            *(this + 24) = 1;
            goto LABEL_146;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_120;
        }

        if (v22 == 4)
        {
          *(a1 + 52) |= 0x80u;
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
          *(a1 + 48) = v35;
          goto LABEL_146;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 52) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_69;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_120;
        }

        if (v22 == 2)
        {
          *(a1 + 52) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_69;
          }

          *(a1 + 16) = *(*this + v2);
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

uint64_t sub_19B544758(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = *(v3 + 44);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 52) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  v7 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 52);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_17:
  v9 = *(v3 + 40);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B544870(uint64_t result)
{
  *result = &unk_1F0E2B988;
  *(result + 40) = 0;
  return result;
}

void sub_19B544898(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5448D0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "centroidSlopeHeightNormDoubleSupportPercentageCadence", *(a1 + 8));
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

  PB::TextFormatter::format(this, "centroidSlopeHeightNormWalkingSpeedStepLength", *(a1 + 16));
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
  PB::TextFormatter::format(this, "l2DispersionHeightNormDoubleSupportPercentageCadence", *(a1 + 24));
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "l2DispersionHeightNormWalkingSpeedStepLength", *(a1 + 32));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B544994(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B544C1C(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B544CC4(uint64_t result)
{
  *result = &unk_1F0E2BA68;
  *(result + 216) = 0;
  return result;
}

void sub_19B544CEC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B544D24(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 216);
  if (v5)
  {
    PB::TextFormatter::format(this, "allBoutsCycleTimeEntropy5thTo95th", *(a1 + 8));
    v5 = *(a1 + 216);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "allBoutsCycleTimeEntropyMean", *(a1 + 16));
  v5 = *(a1 + 216);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "allBoutsCycleTimePoincareSd1Mean", *(a1 + 24));
  v5 = *(a1 + 216);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "allBoutsCycleTimePoincareSd1P5", *(a1 + 32));
  v5 = *(a1 + 216);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "allBoutsCycleTimePoincareSd1P95", *(a1 + 40));
  v5 = *(a1 + 216);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "allBoutsCycleTimePoincareSd2Mean", *(a1 + 48));
  v5 = *(a1 + 216);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "allBoutsCycleTimePoincareSd2P5", *(a1 + 56));
  v5 = *(a1 + 216);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "allBoutsCycleTimePoincareSd2P95", *(a1 + 64));
  v5 = *(a1 + 216);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21CycleTimeEntropy5thTo95thLog", *(a1 + 72));
  v5 = *(a1 + 216);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21CycleTimeEntropyMeanLog", *(a1 + 80));
  v5 = *(a1 + 216);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21CycleTimeEntropyP5Log", *(a1 + 88));
  v5 = *(a1 + 216);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21CycleTimePoincareSd1P5Log", *(a1 + 96));
  v5 = *(a1 + 216);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21CycleTimePoincareSd2P5Log", *(a1 + 104));
  v5 = *(a1 + 216);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21StepLengthEntropyMeanLog", *(a1 + 112));
  v5 = *(a1 + 216);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21StepLengthPoincareSd1P5Log", *(a1 + 120));
  v5 = *(a1 + 216);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21StepLengthPoincareSd1P95Log", *(a1 + 128));
  v5 = *(a1 + 216);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21StepLengthPoincareSd2MeanLog", *(a1 + 136));
  v5 = *(a1 + 216);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "allBoutsMinGaitMetrics21StepLengthPoincareSd2P5Log", *(a1 + 144));
  v5 = *(a1 + 216);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "allBoutsStepLengthEntropy5thTo95th", *(a1 + 152));
  v5 = *(a1 + 216);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "allBoutsStepLengthEntropyMean", *(a1 + 160));
  v5 = *(a1 + 216);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "allBoutsStepLengthPoincareSd1Mean", *(a1 + 168));
  v5 = *(a1 + 216);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "allBoutsStepLengthPoincareSd1P5", *(a1 + 176));
  v5 = *(a1 + 216);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "allBoutsStepLengthPoincareSd1P95", *(a1 + 184));
  v5 = *(a1 + 216);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "allBoutsStepLengthPoincareSd2Mean", *(a1 + 192));
  v5 = *(a1 + 216);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(this, "allBoutsStepLengthPoincareSd2P5", *(a1 + 200));
  if ((*(a1 + 216) & 0x2000000) != 0)
  {
LABEL_27:
    PB::TextFormatter::format(this, "allBoutsStepLengthPoincareSd2P95", *(a1 + 208));
  }

LABEL_28:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5450A8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_109;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 216) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_104;
        case 2u:
          *(a1 + 216) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_104;
        case 3u:
          *(a1 + 216) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_104;
        case 4u:
          *(a1 + 216) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_104;
        case 5u:
          *(a1 + 216) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_104;
        case 6u:
          *(a1 + 216) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_104;
        case 7u:
          *(a1 + 216) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_104;
        case 8u:
          *(a1 + 216) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 192) = *(*this + v2);
          goto LABEL_104;
        case 9u:
          *(a1 + 216) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 208) = *(*this + v2);
          goto LABEL_104;
        case 0xAu:
          *(a1 + 216) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 200) = *(*this + v2);
          goto LABEL_104;
        case 0xBu:
          *(a1 + 216) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_104;
        case 0xCu:
          *(a1 + 216) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_104;
        case 0xDu:
          *(a1 + 216) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_104;
        case 0xEu:
          *(a1 + 216) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_104;
        case 0xFu:
          *(a1 + 216) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_104;
        case 0x10u:
          *(a1 + 216) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_104;
        case 0x11u:
          *(a1 + 216) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_104;
        case 0x12u:
          *(a1 + 216) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_104;
        case 0x13u:
          *(a1 + 216) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_104;
        case 0x14u:
          *(a1 + 216) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_104;
        case 0x15u:
          *(a1 + 216) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_104;
        case 0x16u:
          *(a1 + 216) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_104;
        case 0x17u:
          *(a1 + 216) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_104;
        case 0x18u:
          *(a1 + 216) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_104;
        case 0x19u:
          *(a1 + 216) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_100;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_104;
        case 0x1Au:
          *(a1 + 216) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_100:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 104) = *(*this + v2);
LABEL_104:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_105;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_105:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_109;
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

LABEL_109:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B5457FC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 216);
  if ((v4 & 0x80000) != 0)
  {
    result = PB::Writer::write(this, *(result + 160));
    v4 = *(v3 + 216);
    if ((v4 & 0x40000) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 216);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 216);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 216);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 216);
  if ((v4 & 0x400000) == 0)
  {
LABEL_7:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 216);
  if ((v4 & 0x200000) == 0)
  {
LABEL_8:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 216);
  if ((v4 & 0x800000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 216);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 208));
  v4 = *(v3 + 216);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 200));
  v4 = *(v3 + 216);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 216);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 216);
  if ((v4 & 8) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 216);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 216);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 216);
  if ((v4 & 0x40) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 216);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 216);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 216);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 216);
  if ((v4 & 0x400) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 216);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 216);
  if ((v4 & 0x8000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 216);
  if ((v4 & 0x20000) == 0)
  {
LABEL_24:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 216);
  if ((v4 & 0x10000) == 0)
  {
LABEL_25:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    result = PB::Writer::write(this, *(v3 + 96));
    if ((*(v3 + 216) & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_53;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 216);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 0x1000) == 0)
  {
    return result;
  }

LABEL_53:
  v5 = *(v3 + 104);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B545B0C(uint64_t result)
{
  *result = &unk_1F0E2C440;
  *(result + 40) = 0;
  return result;
}

void sub_19B545B34(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B545B6C(uint64_t a1, PB::TextFormatter *this, char *a3)
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

  v6 = *(a1 + 32);
  PB::TextFormatter::format(this, "bin");
  v5 = *(a1 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "end", *(a1 + 16));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v7 = *(a1 + 36);
  PB::TextFormatter::format(this, "state");
  if ((*(a1 + 40) & 4) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "strideLength", *(a1 + 24));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B545C50(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B5460B0(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B546174(uint64_t result)
{
  *result = &unk_1F0E2FAB8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 152) = 0;
  return result;
}

void sub_19B5461A0(PB::Base *this)
{
  *this = &unk_1F0E2FAB8;
  v4 = *(this + 9);
  v2 = (this + 72);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_19B4C51F4(v2, v3);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  PB::Base::~Base(this);
}

void sub_19B546264(PB::Base *a1)
{
  sub_19B5461A0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54629C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "accelerometerPace");
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    PB::TextFormatter::format(this, "activeTime", *(a1 + 16));
    v6 = *(a1 + 152);
    if ((v6 & 0x100) == 0)
    {
LABEL_5:
      if ((v6 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_5;
  }

  v13 = *(a1 + 96);
  PB::TextFormatter::format(this, "count");
  v6 = *(a1 + 152);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "currentCadence", *(a1 + 24));
  v6 = *(a1 + 152);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "currentPace", *(a1 + 32));
  v6 = *(a1 + 152);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "distance", *(a1 + 40));
  v6 = *(a1 + 152);
  if ((v6 & 0x200) == 0)
  {
LABEL_9:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(a1 + 100);
  PB::TextFormatter::format(this, "distanceSource");
  v6 = *(a1 + 152);
  if ((v6 & 0x400) == 0)
  {
LABEL_10:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(a1 + 104);
  PB::TextFormatter::format(this, "elevationAscended");
  v6 = *(a1 + 152);
  if ((v6 & 0x800) == 0)
  {
LABEL_11:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = *(a1 + 108);
  PB::TextFormatter::format(this, "elevationDescended");
  v6 = *(a1 + 152);
  if ((v6 & 0x1000) == 0)
  {
LABEL_12:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = *(a1 + 112);
  PB::TextFormatter::format(this, "falseStepDetectorState");
  v6 = *(a1 + 152);
  if ((v6 & 0x2000) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(a1 + 116);
  PB::TextFormatter::format(this, "falseStepsSuppressed");
  v6 = *(a1 + 152);
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "firstStepTime", *(a1 + 48));
  v6 = *(a1 + 152);
  if ((v6 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(a1 + 120);
  PB::TextFormatter::format(this, "floorsAscended");
  v6 = *(a1 + 152);
  if ((v6 & 0x8000) == 0)
  {
LABEL_16:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = *(a1 + 124);
  PB::TextFormatter::format(this, "floorsDescended");
  v6 = *(a1 + 152);
  if ((v6 & 0x200000) == 0)
  {
LABEL_17:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_49:
  v21 = *(a1 + 148);
  PB::TextFormatter::format(this, "isOdometerDistance");
  if ((*(a1 + 152) & 0x400000) != 0)
  {
LABEL_18:
    v7 = *(a1 + 149);
    PB::TextFormatter::format(this, "isOdometerPace");
  }

LABEL_19:
  v8 = *(a1 + 56);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "movementStats");
  }

  v9 = *(a1 + 152);
  if ((v9 & 0x10000) != 0)
  {
    v22 = *(a1 + 128);
    PB::TextFormatter::format(this, "paceSource");
    v9 = *(a1 + 152);
    if ((v9 & 0x20000) == 0)
    {
LABEL_23:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_53;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_23;
  }

  v23 = *(a1 + 132);
  PB::TextFormatter::format(this, "pedometerArmConstrainedState");
  v9 = *(a1 + 152);
  if ((v9 & 0x40000) == 0)
  {
LABEL_24:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v24 = *(a1 + 136);
  PB::TextFormatter::format(this, "pushCount");
  v9 = *(a1 + 152);
  if ((v9 & 0x20) == 0)
  {
LABEL_25:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_54:
  PB::TextFormatter::format(this, "rawDistance", *(a1 + 64));
  if ((*(a1 + 152) & 0x80000) != 0)
  {
LABEL_26:
    v10 = *(a1 + 140);
    PB::TextFormatter::format(this, "recordId");
  }

LABEL_27:
  if (*(a1 + 72))
  {
    PB::TextFormatter::format();
  }

  v11 = *(a1 + 152);
  if ((v11 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "startTime", *(a1 + 80));
    v11 = *(a1 + 152);
    if ((v11 & 0x80) == 0)
    {
LABEL_31:
      if ((v11 & 0x100000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 88));
  if ((*(a1 + 152) & 0x100000) != 0)
  {
LABEL_32:
    v12 = *(a1 + 144);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_33:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B546648(uint64_t a1, PB::Reader *this)
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
            goto LABEL_313;
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
          *(a1 + 152) |= 0x80u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 88) = *(*this + v22);
          goto LABEL_256;
        case 2u:
          *(a1 + 152) |= 0x40u;
          v75 = *(this + 1);
          if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 80) = *(*this + v75);
          goto LABEL_256;
        case 3u:
          *(a1 + 152) |= 0x10u;
          v56 = *(this + 1);
          if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 48) = *(*this + v56);
          goto LABEL_256;
        case 4u:
          *(a1 + 152) |= 0x100u;
          v58 = *(this + 1);
          v57 = *(this + 2);
          v59 = *this;
          if (v58 <= 0xFFFFFFFFFFFFFFF5 && v58 + 10 <= v57)
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = (v59 + v58);
            v64 = v58 + 1;
            do
            {
              *(this + 1) = v64;
              v65 = *v63++;
              v62 |= (v65 & 0x7F) << v60;
              if ((v65 & 0x80) == 0)
              {
                goto LABEL_281;
              }

              v60 += 7;
              ++v64;
              v14 = v61++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v62) = 0;
            goto LABEL_281;
          }

          v173 = 0;
          v174 = 0;
          v62 = 0;
          v17 = v57 >= v58;
          v175 = v57 - v58;
          if (!v17)
          {
            v175 = 0;
          }

          v176 = (v59 + v58);
          v177 = v58 + 1;
          while (2)
          {
            if (v175)
            {
              v178 = *v176;
              *(this + 1) = v177;
              v62 |= (v178 & 0x7F) << v173;
              if (v178 < 0)
              {
                v173 += 7;
                --v175;
                ++v176;
                ++v177;
                v14 = v174++ > 8;
                if (v14)
                {
                  goto LABEL_180;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v62) = 0;
              }
            }

            else
            {
              LODWORD(v62) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_281:
          *(a1 + 96) = v62;
          goto LABEL_309;
        case 5u:
          *(a1 + 152) |= 8u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 40) = *(*this + v45);
          goto LABEL_256;
        case 6u:
          *(a1 + 152) |= 0x20u;
          v94 = *(this + 1);
          if (v94 > 0xFFFFFFFFFFFFFFF7 || v94 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 64) = *(*this + v94);
          goto LABEL_256;
        case 7u:
          *(a1 + 152) |= 0x4000u;
          v109 = *(this + 1);
          v108 = *(this + 2);
          v110 = *this;
          if (v109 <= 0xFFFFFFFFFFFFFFF5 && v109 + 10 <= v108)
          {
            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = (v110 + v109);
            v115 = v109 + 1;
            do
            {
              *(this + 1) = v115;
              v116 = *v114++;
              v113 |= (v116 & 0x7F) << v111;
              if ((v116 & 0x80) == 0)
              {
                goto LABEL_296;
              }

              v111 += 7;
              ++v115;
              v14 = v112++ > 8;
            }

            while (!v14);
LABEL_220:
            LODWORD(v113) = 0;
            goto LABEL_296;
          }

          v203 = 0;
          v204 = 0;
          v113 = 0;
          v17 = v108 >= v109;
          v205 = v108 - v109;
          if (!v17)
          {
            v205 = 0;
          }

          v206 = (v110 + v109);
          v207 = v109 + 1;
          while (2)
          {
            if (v205)
            {
              v208 = *v206;
              *(this + 1) = v207;
              v113 |= (v208 & 0x7F) << v203;
              if (v208 < 0)
              {
                v203 += 7;
                --v205;
                ++v206;
                ++v207;
                v14 = v204++ > 8;
                if (v14)
                {
                  goto LABEL_220;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v113) = 0;
              }
            }

            else
            {
              LODWORD(v113) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_296:
          *(a1 + 120) = v113;
          goto LABEL_309;
        case 8u:
          *(a1 + 152) |= 0x8000u;
          v67 = *(this + 1);
          v66 = *(this + 2);
          v68 = *this;
          if (v67 <= 0xFFFFFFFFFFFFFFF5 && v67 + 10 <= v66)
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = (v68 + v67);
            v73 = v67 + 1;
            do
            {
              *(this + 1) = v73;
              v74 = *v72++;
              v71 |= (v74 & 0x7F) << v69;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_284;
              }

              v69 += 7;
              ++v73;
              v14 = v70++ > 8;
            }

            while (!v14);
LABEL_188:
            LODWORD(v71) = 0;
            goto LABEL_284;
          }

          v179 = 0;
          v180 = 0;
          v71 = 0;
          v17 = v66 >= v67;
          v181 = v66 - v67;
          if (!v17)
          {
            v181 = 0;
          }

          v182 = (v68 + v67);
          v183 = v67 + 1;
          while (2)
          {
            if (v181)
            {
              v184 = *v182;
              *(this + 1) = v183;
              v71 |= (v184 & 0x7F) << v179;
              if (v184 < 0)
              {
                v179 += 7;
                --v181;
                ++v182;
                ++v183;
                v14 = v180++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v71) = 0;
              }
            }

            else
            {
              LODWORD(v71) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_284:
          *(a1 + 124) = v71;
          goto LABEL_309;
        case 9u:
          *(a1 + 152) |= 4u;
          v127 = *(this + 1);
          if (v127 > 0xFFFFFFFFFFFFFFF7 || v127 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 32) = *(*this + v127);
          goto LABEL_256;
        case 0xAu:
          *(a1 + 152) |= 2u;
          v46 = *(this + 1);
          if (v46 > 0xFFFFFFFFFFFFFFF7 || v46 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 24) = *(*this + v46);
          goto LABEL_256;
        case 0xBu:
          *(a1 + 152) |= 1u;
          v126 = *(this + 1);
          if (v126 > 0xFFFFFFFFFFFFFFF7 || v126 + 8 > *(this + 2))
          {
LABEL_123:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 16) = *(*this + v126);
LABEL_256:
            *(this + 1) += 8;
          }

          goto LABEL_309;
        case 0xCu:
          *(a1 + 152) |= 0x80000u;
          v37 = *(this + 1);
          v36 = *(this + 2);
          v38 = *this;
          if (v37 <= 0xFFFFFFFFFFFFFFF5 && v37 + 10 <= v36)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            do
            {
              *(this + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                goto LABEL_275;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
            }

            while (!v14);
LABEL_164:
            LODWORD(v41) = 0;
            goto LABEL_275;
          }

          v161 = 0;
          v162 = 0;
          v41 = 0;
          v17 = v36 >= v37;
          v163 = v36 - v37;
          if (!v17)
          {
            v163 = 0;
          }

          v164 = (v38 + v37);
          v165 = v37 + 1;
          while (2)
          {
            if (v163)
            {
              v166 = *v164;
              *(this + 1) = v165;
              v41 |= (v166 & 0x7F) << v161;
              if (v166 < 0)
              {
                v161 += 7;
                --v163;
                ++v164;
                ++v165;
                v14 = v162++ > 8;
                if (v14)
                {
                  goto LABEL_164;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v41) = 0;
              }
            }

            else
            {
              LODWORD(v41) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_275:
          *(a1 + 140) = v41;
          goto LABEL_309;
        case 0xDu:
          operator new();
        case 0xEu:
          *(a1 + 152) |= 0x200000u;
          v104 = *(this + 1);
          if (v104 >= *(this + 2))
          {
            v107 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v105 = v104 + 1;
            v106 = *(*this + v104);
            *(this + 1) = v105;
            v107 = v106 != 0;
          }

          *(a1 + 148) = v107;
          goto LABEL_309;
        case 0xFu:
          *(a1 + 152) |= 0x400000u;
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

          *(a1 + 149) = v35;
          goto LABEL_309;
        case 0x10u:
          operator new();
        case 0x11u:
          *(a1 + 152) |= 0x40000u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_272;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_154:
            LODWORD(v28) = 0;
            goto LABEL_272;
          }

          v155 = 0;
          v156 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v157 = v23 - v24;
          if (!v17)
          {
            v157 = 0;
          }

          v158 = (v25 + v24);
          v159 = v24 + 1;
          while (2)
          {
            if (v157)
            {
              v160 = *v158;
              *(this + 1) = v159;
              v28 |= (v160 & 0x7F) << v155;
              if (v160 < 0)
              {
                v155 += 7;
                --v157;
                ++v158;
                ++v159;
                v14 = v156++ > 8;
                if (v14)
                {
                  goto LABEL_154;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_272:
          *(a1 + 136) = v28;
          goto LABEL_309;
        case 0x12u:
          *(a1 + 152) |= 0x100000u;
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
                goto LABEL_287;
              }

              v79 += 7;
              ++v83;
              v14 = v80++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v81) = 0;
            goto LABEL_287;
          }

          v185 = 0;
          v186 = 0;
          v81 = 0;
          v17 = v76 >= v77;
          v187 = v76 - v77;
          if (!v17)
          {
            v187 = 0;
          }

          v188 = (v78 + v77);
          v189 = v77 + 1;
          while (2)
          {
            if (v187)
            {
              v190 = *v188;
              *(this + 1) = v189;
              v81 |= (v190 & 0x7F) << v185;
              if (v190 < 0)
              {
                v185 += 7;
                --v187;
                ++v188;
                ++v189;
                v14 = v186++ > 8;
                if (v14)
                {
                  goto LABEL_196;
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

LABEL_287:
          *(a1 + 144) = v81;
          goto LABEL_309;
        case 0x13u:
          *(a1 + 152) |= 0x20000u;
          v118 = *(this + 1);
          v117 = *(this + 2);
          v119 = *this;
          if (v118 <= 0xFFFFFFFFFFFFFFF5 && v118 + 10 <= v117)
          {
            v120 = 0;
            v121 = 0;
            v122 = 0;
            v123 = (v119 + v118);
            v124 = v118 + 1;
            do
            {
              *(this + 1) = v124;
              v125 = *v123++;
              v122 |= (v125 & 0x7F) << v120;
              if ((v125 & 0x80) == 0)
              {
                goto LABEL_299;
              }

              v120 += 7;
              ++v124;
              v14 = v121++ > 8;
            }

            while (!v14);
LABEL_228:
            LODWORD(v122) = 0;
            goto LABEL_299;
          }

          v209 = 0;
          v210 = 0;
          v122 = 0;
          v17 = v117 >= v118;
          v211 = v117 - v118;
          if (!v17)
          {
            v211 = 0;
          }

          v212 = (v119 + v118);
          v213 = v118 + 1;
          while (2)
          {
            if (v211)
            {
              v214 = *v212;
              *(this + 1) = v213;
              v122 |= (v214 & 0x7F) << v209;
              if (v214 < 0)
              {
                v209 += 7;
                --v211;
                ++v212;
                ++v213;
                v14 = v210++ > 8;
                if (v14)
                {
                  goto LABEL_228;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v122) = 0;
              }
            }

            else
            {
              LODWORD(v122) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_299:
          *(a1 + 132) = v122;
          goto LABEL_309;
        case 0x14u:
          *(a1 + 152) |= 0x400u;
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
                goto LABEL_305;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_246:
            LODWORD(v142) = 0;
            goto LABEL_305;
          }

          v221 = 0;
          v222 = 0;
          v142 = 0;
          v17 = v137 >= v138;
          v223 = v137 - v138;
          if (!v17)
          {
            v223 = 0;
          }

          v224 = (v139 + v138);
          v225 = v138 + 1;
          while (2)
          {
            if (v223)
            {
              v226 = *v224;
              *(this + 1) = v225;
              v142 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                --v223;
                ++v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_246;
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

LABEL_305:
          *(a1 + 104) = v142;
          goto LABEL_309;
        case 0x15u:
          *(a1 + 152) |= 0x800u;
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
                goto LABEL_290;
              }

              v88 += 7;
              ++v92;
              v14 = v89++ > 8;
            }

            while (!v14);
LABEL_204:
            LODWORD(v90) = 0;
            goto LABEL_290;
          }

          v191 = 0;
          v192 = 0;
          v90 = 0;
          v17 = v85 >= v86;
          v193 = v85 - v86;
          if (!v17)
          {
            v193 = 0;
          }

          v194 = (v87 + v86);
          v195 = v86 + 1;
          while (2)
          {
            if (v193)
            {
              v196 = *v194;
              *(this + 1) = v195;
              v90 |= (v196 & 0x7F) << v191;
              if (v196 < 0)
              {
                v191 += 7;
                --v193;
                ++v194;
                ++v195;
                v14 = v192++ > 8;
                if (v14)
                {
                  goto LABEL_204;
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

LABEL_290:
          *(a1 + 108) = v90;
          goto LABEL_309;
        case 0x16u:
          *(a1 + 152) |= 0x2000u;
          v96 = *(this + 1);
          v95 = *(this + 2);
          v97 = *this;
          if (v96 <= 0xFFFFFFFFFFFFFFF5 && v96 + 10 <= v95)
          {
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = (v97 + v96);
            v102 = v96 + 1;
            do
            {
              *(this + 1) = v102;
              v103 = *v101++;
              v100 |= (v103 & 0x7F) << v98;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_293;
              }

              v98 += 7;
              ++v102;
              v14 = v99++ > 8;
            }

            while (!v14);
LABEL_212:
            LODWORD(v100) = 0;
            goto LABEL_293;
          }

          v197 = 0;
          v198 = 0;
          v100 = 0;
          v17 = v95 >= v96;
          v199 = v95 - v96;
          if (!v17)
          {
            v199 = 0;
          }

          v200 = (v97 + v96);
          v201 = v96 + 1;
          while (2)
          {
            if (v199)
            {
              v202 = *v200;
              *(this + 1) = v201;
              v100 |= (v202 & 0x7F) << v197;
              if (v202 < 0)
              {
                v197 += 7;
                --v199;
                ++v200;
                ++v201;
                v14 = v198++ > 8;
                if (v14)
                {
                  goto LABEL_212;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v100) = 0;
              }
            }

            else
            {
              LODWORD(v100) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_293:
          *(a1 + 116) = v100;
          goto LABEL_309;
        case 0x17u:
          *(a1 + 152) |= 0x200u;
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
                goto LABEL_302;
              }

              v131 += 7;
              ++v135;
              v14 = v132++ > 8;
            }

            while (!v14);
LABEL_238:
            LODWORD(v133) = 0;
            goto LABEL_302;
          }

          v215 = 0;
          v216 = 0;
          v133 = 0;
          v17 = v128 >= v129;
          v217 = v128 - v129;
          if (!v17)
          {
            v217 = 0;
          }

          v218 = (v130 + v129);
          v219 = v129 + 1;
          while (2)
          {
            if (v217)
            {
              v220 = *v218;
              *(this + 1) = v219;
              v133 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                --v217;
                ++v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_238;
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

LABEL_302:
          *(a1 + 100) = v133;
          goto LABEL_309;
        case 0x18u:
          *(a1 + 152) |= 0x1000u;
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
                goto LABEL_308;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_254:
            LODWORD(v151) = 0;
            goto LABEL_308;
          }

          v227 = 0;
          v228 = 0;
          v151 = 0;
          v17 = v146 >= v147;
          v229 = v146 - v147;
          if (!v17)
          {
            v229 = 0;
          }

          v230 = (v148 + v147);
          v231 = v147 + 1;
          while (2)
          {
            if (v229)
            {
              v232 = *v230;
              *(this + 1) = v231;
              v151 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                --v229;
                ++v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_254;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v151) = 0;
              }
            }

            else
            {
              LODWORD(v151) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_308:
          *(a1 + 112) = v151;
          goto LABEL_309;
        case 0x19u:
          operator new();
        case 0x1Au:
          *(a1 + 152) |= 0x10000u;
          v48 = *(this + 1);
          v47 = *(this + 2);
          v49 = *this;
          if (v48 <= 0xFFFFFFFFFFFFFFF5 && v48 + 10 <= v47)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = (v49 + v48);
            v54 = v48 + 1;
            do
            {
              *(this + 1) = v54;
              v55 = *v53++;
              v52 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                goto LABEL_278;
              }

              v50 += 7;
              ++v54;
              v14 = v51++ > 8;
            }

            while (!v14);
LABEL_172:
            LODWORD(v52) = 0;
            goto LABEL_278;
          }

          v167 = 0;
          v168 = 0;
          v52 = 0;
          v17 = v47 >= v48;
          v169 = v47 - v48;
          if (!v17)
          {
            v169 = 0;
          }

          v170 = (v49 + v48);
          v171 = v48 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_309;
          }

          v234 = 0;
          return v234 & 1;
      }

      while (1)
      {
        if (!v169)
        {
          LODWORD(v52) = 0;
          *(this + 24) = 1;
          goto LABEL_278;
        }

        v172 = *v170;
        *(this + 1) = v171;
        v52 |= (v172 & 0x7F) << v167;
        if ((v172 & 0x80) == 0)
        {
          break;
        }

        v167 += 7;
        --v169;
        ++v170;
        ++v171;
        v14 = v168++ > 8;
        if (v14)
        {
          goto LABEL_172;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v52) = 0;
      }

LABEL_278:
      *(a1 + 128) = v52;
LABEL_309:
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

LABEL_313:
  v234 = v4 ^ 1;
  return v234 & 1;
}

uint64_t sub_19B547804(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 152);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 88));
    v4 = *(v3 + 152);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 152);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 152);
  if ((v4 & 0x100) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 152);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 152);
  if ((v4 & 0x4000) == 0)
  {
LABEL_8:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 0x8000) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(v3 + 124);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 152);
  if ((v4 & 4) == 0)
  {
LABEL_10:
    if ((v4 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 152);
  if ((v4 & 2) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 152);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 16));
  if ((*(v3 + 152) & 0x80000) != 0)
  {
LABEL_13:
    v5 = *(v3 + 140);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_14:
  if (*(v3 + 72))
  {
    result = PB::Writer::write();
  }

  v6 = *(v3 + 152);
  if ((v6 & 0x200000) != 0)
  {
    v7 = *(v3 + 148);
    result = PB::Writer::write(this);
    v6 = *(v3 + 152);
  }

  if ((v6 & 0x400000) != 0)
  {
    v8 = *(v3 + 149);
    result = PB::Writer::write(this);
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = *(v3 + 152);
  if ((v10 & 0x40000) != 0)
  {
    v16 = *(v3 + 136);
    result = PB::Writer::writeVarInt(this);
    v10 = *(v3 + 152);
    if ((v10 & 0x100000) == 0)
    {
LABEL_24:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_49;
    }
  }

  else if ((v10 & 0x100000) == 0)
  {
    goto LABEL_24;
  }

  v17 = *(v3 + 144);
  result = PB::Writer::writeVarInt(this);
  v10 = *(v3 + 152);
  if ((v10 & 0x20000) == 0)
  {
LABEL_25:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v18 = *(v3 + 132);
  result = PB::Writer::writeVarInt(this);
  v10 = *(v3 + 152);
  if ((v10 & 0x400) == 0)
  {
LABEL_26:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v19 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v10 = *(v3 + 152);
  if ((v10 & 0x800) == 0)
  {
LABEL_27:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v10 = *(v3 + 152);
  if ((v10 & 0x2000) == 0)
  {
LABEL_28:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v10 = *(v3 + 152);
  if ((v10 & 0x200) == 0)
  {
LABEL_29:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_53:
  v22 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 152) & 0x1000) != 0)
  {
LABEL_30:
    v11 = *(v3 + 112);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_31:
  v12 = *(v3 + 56);
  if (v12)
  {
    result = PB::Writer::writeSubmessage(this, v12);
  }

  if (*(v3 + 154))
  {
    v23 = *(v3 + 128);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B547AF4(uint64_t result)
{
  *result = &unk_1F0E2D400;
  *(result + 72) = 0;
  return result;
}

void sub_19B547B1C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B547B54(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 72);
  if (v5)
  {
    PB::TextFormatter::format(this, "calibratedDistance", *(a1 + 8));
    v5 = *(a1 + 72);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "energyDeltaDistance", *(a1 + 16));
  v5 = *(a1 + 72);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(a1 + 68);
  PB::TextFormatter::format(this, "energyIsCalibrated");
  v5 = *(a1 + 72);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "incrementalActiveTime", *(a1 + 24));
  v5 = *(a1 + 72);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 64);
  PB::TextFormatter::format(this, "incrementalSteps");
  v5 = *(a1 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "lastStepTime", *(a1 + 32));
  v5 = *(a1 + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "odometerSpeed", *(a1 + 40));
  v5 = *(a1 + 72);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "rawPace", *(a1 + 48));
  v5 = *(a1 + 72);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a1 + 69);
  PB::TextFormatter::format(this, "rawPaceDidJump");
  v5 = *(a1 + 72);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "stepCadenceDeltaDistance", *(a1 + 56));
  if ((*(a1 + 72) & 0x400) != 0)
  {
LABEL_12:
    v6 = *(a1 + 70);
    PB::TextFormatter::format(this, "stepCadenceIsCalibrated");
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B547CF8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_97;
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
            *(a1 + 72) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_65:
              *(this + 24) = 1;
              goto LABEL_93;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_87;
          }

          if (v22 == 2)
          {
            *(a1 + 72) |= 0x80u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v37 = 0;
              v38 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v39 = v2 - v25;
              v40 = (v26 + v25);
              v41 = v25 + 1;
              while (1)
              {
                if (!v39)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_92;
                }

                v42 = v41;
                v43 = *v40;
                *(this + 1) = v42;
                v29 |= (v43 & 0x7F) << v37;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                --v39;
                ++v40;
                v41 = v42 + 1;
                v14 = v38++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_91;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_91:
              v2 = v42;
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

LABEL_92:
            *(a1 + 64) = v29;
            goto LABEL_93;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 72) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_65;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_87;
            case 4:
              *(a1 + 72) |= 8u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_65;
              }

              *(a1 + 32) = *(*this + v2);
              goto LABEL_87;
            case 5:
              *(a1 + 72) |= 0x10u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_65;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_87;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 72) |= 0x400u;
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

            *(a1 + 70) = v36;
            goto LABEL_93;
          case 0xA:
            *(a1 + 72) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_87;
          case 0xB:
            *(a1 + 72) |= 0x100u;
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

            *(a1 + 68) = v24;
            goto LABEL_93;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 72) |= 0x200u;
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

            *(a1 + 69) = v34;
            goto LABEL_93;
          case 7:
            *(a1 + 72) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_87;
          case 8:
            *(a1 + 72) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 56) = *(*this + v2);
LABEL_87:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_93;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v44 = 0;
        return v44 & 1;
      }

      v2 = *(this + 1);
LABEL_93:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_97:
  v44 = v4 ^ 1;
  return v44 & 1;
}

uint64_t sub_19B548240(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 48));
    v4 = *(v3 + 72);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 72);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(v3 + 69);
  result = PB::Writer::write(this);
  v4 = *(v3 + 72);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 72);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 72);
  if ((v4 & 0x400) == 0)
  {
LABEL_10:
    if ((v4 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 72) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v7 = *(v3 + 70);
  result = PB::Writer::write(this);
  v4 = *(v3 + 72);
  if ((v4 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v3 + 68);

  return PB::Writer::write(this);
}

uint64_t sub_19B5483AC(uint64_t result)
{
  *(result + 100) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F0E2CEF8;
  return result;
}

void sub_19B5483D4(PB::Base *this)
{
  *this = &unk_1F0E2CEF8;
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

void sub_19B548488(PB::Base *a1)
{
  sub_19B5483D4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5484C0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "addition");
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "fused");
  }

  v7 = *(a1 + 100);
  if ((v7 & 0x400) != 0)
  {
    v8 = *(a1 + 96);
    PB::TextFormatter::format(this, "isVehicular");
    v7 = *(a1 + 100);
    if ((v7 & 1) == 0)
    {
LABEL_7:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(this, "odometerDeltaDistance", *(a1 + 24));
  v7 = *(a1 + 100);
  if ((v7 & 0x100) == 0)
  {
LABEL_8:
    if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a1 + 88);
  PB::TextFormatter::format(this, "odometerQuality");
  v7 = *(a1 + 100);
  if ((v7 & 2) == 0)
  {
LABEL_9:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "odometerSmoothMeanPace", *(a1 + 32));
  v7 = *(a1 + 100);
  if ((v7 & 0x200) == 0)
  {
LABEL_10:
    if ((v7 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a1 + 92);
  PB::TextFormatter::format(this, "pedometerDistanceSource");
  v7 = *(a1 + 100);
  if ((v7 & 4) == 0)
  {
LABEL_11:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "speedStdDevOdometer", *(a1 + 40));
  v7 = *(a1 + 100);
  if ((v7 & 8) == 0)
  {
LABEL_12:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "speedStdDevPedometer", *(a1 + 48));
  v7 = *(a1 + 100);
  if ((v7 & 0x10) == 0)
  {
LABEL_13:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "speedStdDevResidualTolerance", *(a1 + 56));
  v7 = *(a1 + 100);
  if ((v7 & 0x20) == 0)
  {
LABEL_14:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "totalDistanceCalibratedPedometer", *(a1 + 64));
  v7 = *(a1 + 100);
  if ((v7 & 0x40) == 0)
  {
LABEL_15:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  PB::TextFormatter::format(this, "totalDistanceFused", *(a1 + 72));
  if ((*(a1 + 100) & 0x80) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(this, "totalDistanceOdometer", *(a1 + 80));
  }

LABEL_17:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5486D4(uint64_t a1, PB::Reader *this)
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

      switch((v10 >> 3))
      {
        case 1u:
          operator new();
        case 2u:
          operator new();
        case 3u:
          *(a1 + 100) |= 1u;
          v42 = *(this + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 24) = *(*this + v42);
          goto LABEL_86;
        case 4u:
          *(a1 + 100) |= 2u;
          v43 = *(this + 1);
          if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 32) = *(*this + v43);
          goto LABEL_86;
        case 5u:
          *(a1 + 100) |= 0x80u;
          v31 = *(this + 1);
          if (v31 > 0xFFFFFFFFFFFFFFF7 || v31 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 80) = *(*this + v31);
          goto LABEL_86;
        case 6u:
          *(a1 + 100) |= 0x20u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 64) = *(*this + v45);
          goto LABEL_86;
        case 7u:
          *(a1 + 100) |= 0x40u;
          v46 = *(this + 1);
          if (v46 > 0xFFFFFFFFFFFFFFF7 || v46 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 72) = *(*this + v46);
          goto LABEL_86;
        case 8u:
          *(a1 + 100) |= 4u;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 40) = *(*this + v44);
          goto LABEL_86;
        case 9u:
          *(a1 + 100) |= 8u;
          v51 = *(this + 1);
          if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(this + 2))
          {
            goto LABEL_66;
          }

          *(a1 + 48) = *(*this + v51);
          goto LABEL_86;
        case 0xAu:
          *(a1 + 100) |= 0x10u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(this + 2))
          {
LABEL_66:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 56) = *(*this + v41);
LABEL_86:
            *(this + 1) += 8;
          }

          goto LABEL_95;
        case 0xBu:
          *(a1 + 100) |= 0x400u;
          v47 = *(this + 1);
          if (v47 >= *(this + 2))
          {
            v50 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v48 = v47 + 1;
            v49 = *(*this + v47);
            *(this + 1) = v48;
            v50 = v49 != 0;
          }

          *(a1 + 96) = v50;
          goto LABEL_95;
        case 0xCu:
          *(a1 + 100) |= 0x200u;
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
                goto LABEL_91;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_74:
            LODWORD(v27) = 0;
            goto LABEL_91;
          }

          v52 = 0;
          v53 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v54 = v22 - v23;
          if (!v17)
          {
            v54 = 0;
          }

          v55 = (v24 + v23);
          v56 = v23 + 1;
          while (2)
          {
            if (v54)
            {
              v57 = *v55;
              *(this + 1) = v56;
              v27 |= (v57 & 0x7F) << v52;
              if (v57 < 0)
              {
                v52 += 7;
                --v54;
                ++v55;
                ++v56;
                v14 = v53++ > 8;
                if (v14)
                {
                  goto LABEL_74;
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

LABEL_91:
          *(a1 + 92) = v27;
          goto LABEL_95;
        case 0xDu:
          *(a1 + 100) |= 0x100u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_94;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_82:
            LODWORD(v37) = 0;
            goto LABEL_94;
          }

          v58 = 0;
          v59 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v60 = v32 - v33;
          if (!v17)
          {
            v60 = 0;
          }

          v61 = (v34 + v33);
          v62 = v33 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_95;
          }

          v65 = 0;
          return v65 & 1;
      }

      while (1)
      {
        if (!v60)
        {
          LODWORD(v37) = 0;
          *(this + 24) = 1;
          goto LABEL_94;
        }

        v63 = *v61;
        *(this + 1) = v62;
        v37 |= (v63 & 0x7F) << v58;
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
          goto LABEL_82;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v37) = 0;
      }

LABEL_94:
      *(a1 + 88) = v37;
LABEL_95:
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

LABEL_99:
  v65 = v4 ^ 1;
  return v65 & 1;
}

uint64_t sub_19B548DB4(uint64_t result, PB::Writer *this)
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
    result = PB::Writer::writeSubmessage(this, v5);
  }

  v6 = *(v3 + 100);
  if (v6)
  {
    result = PB::Writer::write(this, *(v3 + 24));
    v6 = *(v3 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_7:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v6 = *(v3 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 80));
  v6 = *(v3 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 64));
  v6 = *(v3 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 72));
  v6 = *(v3 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 40));
  v6 = *(v3 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 48));
  v6 = *(v3 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 56));
  v6 = *(v3 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_14:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v8 = *(v3 + 92);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 100) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  v7 = *(v3 + 96);
  result = PB::Writer::write(this);
  v6 = *(v3 + 100);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_27:
  v9 = *(v3 + 88);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B548F48(uint64_t result)
{
  *result = &unk_1F0E2D3C8;
  *(result + 96) = 0;
  return result;
}

void sub_19B548F70(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B548FA8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 96);
  if (v5)
  {
    PB::TextFormatter::format(this, "bobbiness", *(a1 + 8));
    v5 = *(a1 + 96);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "bufferAvgSampleRateHz", *(a1 + 16));
  v5 = *(a1 + 96);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "concavityDeltaDeg", *(a1 + 24));
  v5 = *(a1 + 96);
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
  PB::TextFormatter::format(this, "deltaInertialZVel", *(a1 + 32));
  v5 = *(a1 + 96);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "horizontalDisplacement", *(a1 + 40));
  v5 = *(a1 + 96);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "impulseDurationSec", *(a1 + 48));
  v5 = *(a1 + 96);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "likelihoodRatio", *(a1 + 56));
  v5 = *(a1 + 96);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "peakiness", *(a1 + 64));
  v5 = *(a1 + 96);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "thetaPitchFaceDeg", *(a1 + 72));
  v5 = *(a1 + 96);
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
  PB::TextFormatter::format(this, "thetaRollFaceDeg", *(a1 + 80));
  if ((*(a1 + 96) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "timeSinceLastStepSec", *(a1 + 88));
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54914C(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 96) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_68:
              *(this + 24) = 1;
              goto LABEL_73;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_72;
          }

          if (v22 == 2)
          {
            *(a1 + 96) |= 0x400u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 88) = *(*this + v2);
            goto LABEL_72;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 96) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_68;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_72;
            case 4:
              *(a1 + 96) |= 8u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_68;
              }

              *(a1 + 32) = *(*this + v2);
              goto LABEL_72;
            case 5:
              *(a1 + 96) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_68;
              }

              *(a1 + 80) = *(*this + v2);
              goto LABEL_72;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 96) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_72;
          case 0xA:
            *(a1 + 96) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_72;
          case 0xB:
            *(a1 + 96) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_72;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 96) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 72) = *(*this + v2);
            goto LABEL_72;
          case 7:
            *(a1 + 96) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_72;
          case 8:
            *(a1 + 96) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_72:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_73;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_73:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_77:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B5495A4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 96);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 96);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(result + 96) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 96);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 96);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 96);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 64));
    if ((*(v3 + 96) & 1) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 96);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_23:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

void *sub_19B549710(void *result)
{
  *result = &unk_1F0E2D390;
  result[1] = 0;
  return result;
}

void sub_19B549730(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2D390;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B5497B0(PB::Base *a1)
{
  sub_19B549730(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5497E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B549864(int a1, PB::Reader *this)
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

uint64_t sub_19B549A80(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_19B549A9C(void *result)
{
  *result = &unk_1F0E39418;
  result[1] = 0;
  return result;
}

void sub_19B549ABC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E39418;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B549B3C(PB::Base *a1)
{
  sub_19B549ABC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B549B74(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B549BF0(int a1, PB::Reader *this)
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