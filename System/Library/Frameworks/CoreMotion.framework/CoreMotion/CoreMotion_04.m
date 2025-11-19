uint64_t sub_19B467484(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = (result + 364);
  v5 = *(result + 364);
  if ((v5 & 0x40000000) != 0)
  {
    v6 = *(result + 248);
    result = PB::Writer::writeVarInt(this);
    v5 = *v4;
    if ((*v4 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v3 + 256);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  v8 = *(v3 + 160);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x100000) == 0)
  {
LABEL_5:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  v9 = *(v3 + 168);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x200000) == 0)
  {
LABEL_6:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  v10 = *(v3 + 176);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x8000000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  v11 = *(v3 + 320);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x40000000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(v3 + 344);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x10000000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(v3 + 328);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x20000000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(v3 + 336);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x80000000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  v15 = *(v3 + 352);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x100000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  v16 = *(v3 + 360);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  v17 = *(v3 + 200);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x8000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  v18 = *(v3 + 224);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  v19 = *(v3 + 208);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x4000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  v20 = *(v3 + 216);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x400000) == 0)
  {
LABEL_17:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  v21 = *(v3 + 184);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x800000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  v22 = *(v3 + 192);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x20) == 0)
  {
LABEL_19:
    if ((v5 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  v23 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 8) == 0)
  {
LABEL_20:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  v24 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 1) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  v25 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  v26 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x100) == 0)
  {
LABEL_23:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  v27 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_24:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  v28 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x200) == 0)
  {
LABEL_25:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  v29 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x400) == 0)
  {
LABEL_26:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_72;
  }

LABEL_71:
  v30 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x800) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

LABEL_72:
  v31 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x4000) == 0)
  {
LABEL_28:
    if ((v5 & 2) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_74;
  }

LABEL_73:
  v32 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 2) == 0)
  {
LABEL_29:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_75;
  }

LABEL_74:
  v33 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x8000) == 0)
  {
LABEL_30:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

LABEL_75:
  v34 = *(v3 + 128);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x800000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

LABEL_76:
  v35 = *(v3 + 288);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x400000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_77:
  v36 = *(v3 + 280);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x200000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v37 = *(v3 + 272);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x100000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_80;
  }

LABEL_79:
  v38 = *(v3 + 264);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x20000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

LABEL_80:
  v39 = *(v3 + 240);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_82;
  }

LABEL_81:
  v40 = *(v3 + 232);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x2000) == 0)
  {
LABEL_37:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_83;
  }

LABEL_82:
  v41 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x10000) == 0)
  {
LABEL_38:
    if ((v5 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_84;
  }

LABEL_83:
  v42 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 4) == 0)
  {
LABEL_39:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

LABEL_84:
  v43 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x40000) == 0)
  {
LABEL_40:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  v44 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x20000) == 0)
  {
LABEL_41:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  v45 = *(v3 + 144);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x80) == 0)
  {
LABEL_42:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  v46 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x1000) == 0)
  {
LABEL_43:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  v47 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x4000000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_90:
    v49 = *(v3 + 296);
    result = PB::Writer::writeVarInt(this);
    if ((*v4 & 0x2000000000) == 0)
    {
      return result;
    }

    goto LABEL_91;
  }

LABEL_89:
  v48 = *(v3 + 312);
  result = PB::Writer::writeVarInt(this);
  v5 = *v4;
  if ((*v4 & 0x1000000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_45:
  if ((v5 & 0x2000000000) == 0)
  {
    return result;
  }

LABEL_91:
  v50 = *(v3 + 304);

  return PB::Writer::write(this, v50);
}

void *sub_19B4679B8(void *result)
{
  *result = &unk_1F0E2CD70;
  *(result + 156) = 0;
  return result;
}

void sub_19B4679E0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B467A18(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 156);
  if ((v5 & 0x10) != 0)
  {
    v7 = *(a1 + 40);
    PB::TextFormatter::format(this, "conisderedSOS");
    v5 = *(a1 + 156);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x100000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 44);
  PB::TextFormatter::format(this, "deltaSteps");
  v5 = *(a1 + 156);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  v9 = *(a1 + 152);
  PB::TextFormatter::format(this, "didCancelSOS");
  v5 = *(a1 + 156);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "distanceTraveled", *(a1 + 48));
  v5 = *(a1 + 156);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "fallAlertUndelayedTimestamp", *(a1 + 8));
  v5 = *(a1 + 156);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  v10 = *(a1 + 16);
  PB::TextFormatter::format(this, "fallTime");
  v5 = *(a1 + 156);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  v11 = *(a1 + 52);
  PB::TextFormatter::format(this, "fromState");
  v5 = *(a1 + 156);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "gyroMaxMean", *(a1 + 56));
  v5 = *(a1 + 156);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "iostime", *(a1 + 24));
  v5 = *(a1 + 156);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  v12 = *(a1 + 153);
  PB::TextFormatter::format(this, "isActive");
  v5 = *(a1 + 156);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  v13 = *(a1 + 154);
  PB::TextFormatter::format(this, "isStand");
  v5 = *(a1 + 156);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "magnitudeDiffUnity", *(a1 + 60));
  v5 = *(a1 + 156);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "maxAccelStdAxis", *(a1 + 64));
  v5 = *(a1 + 156);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  v14 = *(a1 + 68);
  PB::TextFormatter::format(this, "maxNumQuiescentBins");
  v5 = *(a1 + 156);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  v15 = *(a1 + 72);
  PB::TextFormatter::format(this, "maxNumStaticBins");
  v5 = *(a1 + 156);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  v16 = *(a1 + 76);
  PB::TextFormatter::format(this, "nominalQuiescentThreshold");
  v5 = *(a1 + 156);
  if ((v5 & 0x4000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "normalizedIQR", *(a1 + 80));
  v5 = *(a1 + 156);
  if ((v5 & 0x8000) == 0)
  {
LABEL_19:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  v17 = *(a1 + 84);
  PB::TextFormatter::format(this, "numActiveBins");
  v5 = *(a1 + 156);
  if ((v5 & 0x10000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  v18 = *(a1 + 88);
  PB::TextFormatter::format(this, "numCyclingEpochs");
  v5 = *(a1 + 156);
  if ((v5 & 0x20000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  v19 = *(a1 + 92);
  PB::TextFormatter::format(this, "numNonzeroStepEpochs");
  v5 = *(a1 + 156);
  if ((v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  v20 = *(a1 + 96);
  PB::TextFormatter::format(this, "numPeaks");
  v5 = *(a1 + 156);
  if ((v5 & 0x80000) == 0)
  {
LABEL_23:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  v21 = *(a1 + 100);
  PB::TextFormatter::format(this, "numQuiescentBins");
  v5 = *(a1 + 156);
  if ((v5 & 0x100000) == 0)
  {
LABEL_24:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  v22 = *(a1 + 104);
  PB::TextFormatter::format(this, "numSharpPeaks");
  v5 = *(a1 + 156);
  if ((v5 & 0x200000) == 0)
  {
LABEL_25:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  v23 = *(a1 + 108);
  PB::TextFormatter::format(this, "numStandBins");
  v5 = *(a1 + 156);
  if ((v5 & 0x400000) == 0)
  {
LABEL_26:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  v24 = *(a1 + 112);
  PB::TextFormatter::format(this, "numStaticBins");
  v5 = *(a1 + 156);
  if ((v5 & 0x800000) == 0)
  {
LABEL_27:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "onBodyFeature", *(a1 + 116));
  v5 = *(a1 + 156);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v25 = *(a1 + 120);
  PB::TextFormatter::format(this, "operatingMode");
  v5 = *(a1 + 156);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_29:
    if ((v5 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  v26 = *(a1 + 124);
  PB::TextFormatter::format(this, "quiescentThreshold");
  v5 = *(a1 + 156);
  if ((v5 & 8) == 0)
  {
LABEL_30:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  v27 = *(a1 + 32);
  PB::TextFormatter::format(this, "sensorTime");
  v5 = *(a1 + 156);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  v28 = *(a1 + 155);
  PB::TextFormatter::format(this, "sentFallAlert");
  v5 = *(a1 + 156);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "sharpPeaksDelaySpread", *(a1 + 128));
  v5 = *(a1 + 156);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "sumHighQPeaksInDecLowFreqFFT", *(a1 + 132));
  v5 = *(a1 + 156);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "sumHighQPeaksInHighFreqFFT", *(a1 + 136));
  v5 = *(a1 + 156);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "sumHighQPeaksInLowFreqFFT", *(a1 + 140));
  v5 = *(a1 + 156);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_75:
  v29 = *(a1 + 144);
  PB::TextFormatter::format(this, "toState");
  if ((*(a1 + 156) & 0x80000000) != 0)
  {
LABEL_37:
    v6 = *(a1 + 148);
    PB::TextFormatter::format(this, "totalNumStaticBins");
  }

LABEL_38:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B467EDC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_465;
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
          *(a1 + 156) |= 4uLL;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 24) = *(*this + v22);
          goto LABEL_29;
        case 2u:
          *(a1 + 156) |= 8uLL;
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
                goto LABEL_427;
              }

              v113 += 7;
              ++v117;
              v14 = v114++ > 8;
            }

            while (!v14);
LABEL_285:
            v115 = 0;
            goto LABEL_427;
          }

          v279 = 0;
          v280 = 0;
          v115 = 0;
          v17 = v110 >= v111;
          v281 = v110 - v111;
          if (!v17)
          {
            v281 = 0;
          }

          v282 = (v112 + v111);
          v283 = v111 + 1;
          while (2)
          {
            if (v281)
            {
              v284 = *v282;
              *(this + 1) = v283;
              v115 |= (v284 & 0x7F) << v279;
              if (v284 < 0)
              {
                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v14 = v280++ > 8;
                if (v14)
                {
                  goto LABEL_285;
                }

                continue;
              }

              if (*(this + 24))
              {
                v115 = 0;
              }
            }

            else
            {
              v115 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_427:
          *(a1 + 32) = v115;
          goto LABEL_461;
        case 3u:
          *(a1 + 156) |= 2uLL;
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
                goto LABEL_421;
              }

              v90 += 7;
              ++v94;
              v14 = v91++ > 8;
            }

            while (!v14);
LABEL_267:
            v92 = 0;
            goto LABEL_421;
          }

          v267 = 0;
          v268 = 0;
          v92 = 0;
          v17 = v87 >= v88;
          v269 = v87 - v88;
          if (!v17)
          {
            v269 = 0;
          }

          v270 = (v89 + v88);
          v271 = v88 + 1;
          while (2)
          {
            if (v269)
            {
              v272 = *v270;
              *(this + 1) = v271;
              v92 |= (v272 & 0x7F) << v267;
              if (v272 < 0)
              {
                v267 += 7;
                --v269;
                ++v270;
                ++v271;
                v14 = v268++ > 8;
                if (v14)
                {
                  goto LABEL_267;
                }

                continue;
              }

              if (*(this + 24))
              {
                v92 = 0;
              }
            }

            else
            {
              v92 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_421:
          *(a1 + 16) = v92;
          goto LABEL_461;
        case 4u:
          *(a1 + 156) |= 0x400uLL;
          v100 = *(this + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 64) = *(*this + v100);
          goto LABEL_379;
        case 5u:
          *(a1 + 156) |= 0x200uLL;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 60) = *(*this + v58);
          goto LABEL_379;
        case 6u:
          *(a1 + 156) |= 0x100uLL;
          v141 = *(this + 1);
          if (v141 > 0xFFFFFFFFFFFFFFFBLL || v141 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 56) = *(*this + v141);
          goto LABEL_379;
        case 7u:
          *(a1 + 156) |= 0x800uLL;
          v148 = *(this + 1);
          v147 = *(this + 2);
          v149 = *this;
          if (v148 <= 0xFFFFFFFFFFFFFFF5 && v148 + 10 <= v147)
          {
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v153 = (v149 + v148);
            v154 = v148 + 1;
            do
            {
              *(this + 1) = v154;
              v155 = *v153++;
              v152 |= (v155 & 0x7F) << v150;
              if ((v155 & 0x80) == 0)
              {
                goto LABEL_436;
              }

              v150 += 7;
              ++v154;
              v14 = v151++ > 8;
            }

            while (!v14);
LABEL_309:
            LODWORD(v152) = 0;
            goto LABEL_436;
          }

          v297 = 0;
          v298 = 0;
          v152 = 0;
          v17 = v147 >= v148;
          v299 = v147 - v148;
          if (!v17)
          {
            v299 = 0;
          }

          v300 = (v149 + v148);
          v301 = v148 + 1;
          while (2)
          {
            if (v299)
            {
              v302 = *v300;
              *(this + 1) = v301;
              v152 |= (v302 & 0x7F) << v297;
              if (v302 < 0)
              {
                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v14 = v298++ > 8;
                if (v14)
                {
                  goto LABEL_309;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v152) = 0;
              }
            }

            else
            {
              LODWORD(v152) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_436:
          *(a1 + 68) = v152;
          goto LABEL_461;
        case 8u:
          *(a1 + 156) |= 0x80000000uLL;
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
                goto LABEL_424;
              }

              v104 += 7;
              ++v108;
              v14 = v105++ > 8;
            }

            while (!v14);
LABEL_277:
            LODWORD(v106) = 0;
            goto LABEL_424;
          }

          v273 = 0;
          v274 = 0;
          v106 = 0;
          v17 = v101 >= v102;
          v275 = v101 - v102;
          if (!v17)
          {
            v275 = 0;
          }

          v276 = (v103 + v102);
          v277 = v102 + 1;
          while (2)
          {
            if (v275)
            {
              v278 = *v276;
              *(this + 1) = v277;
              v106 |= (v278 & 0x7F) << v273;
              if (v278 < 0)
              {
                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v14 = v274++ > 8;
                if (v14)
                {
                  goto LABEL_277;
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

LABEL_424:
          *(a1 + 148) = v106;
          goto LABEL_461;
        case 9u:
          *(a1 + 156) |= 0x1000uLL;
          v167 = *(this + 1);
          v166 = *(this + 2);
          v168 = *this;
          if (v167 <= 0xFFFFFFFFFFFFFFF5 && v167 + 10 <= v166)
          {
            v169 = 0;
            v170 = 0;
            v171 = 0;
            v172 = (v168 + v167);
            v173 = v167 + 1;
            do
            {
              *(this + 1) = v173;
              v174 = *v172++;
              v171 |= (v174 & 0x7F) << v169;
              if ((v174 & 0x80) == 0)
              {
                goto LABEL_442;
              }

              v169 += 7;
              ++v173;
              v14 = v170++ > 8;
            }

            while (!v14);
LABEL_327:
            LODWORD(v171) = 0;
            goto LABEL_442;
          }

          v309 = 0;
          v310 = 0;
          v171 = 0;
          v17 = v166 >= v167;
          v311 = v166 - v167;
          if (!v17)
          {
            v311 = 0;
          }

          v312 = (v168 + v167);
          v313 = v167 + 1;
          while (2)
          {
            if (v311)
            {
              v314 = *v312;
              *(this + 1) = v313;
              v171 |= (v314 & 0x7F) << v309;
              if (v314 < 0)
              {
                v309 += 7;
                --v311;
                ++v312;
                ++v313;
                v14 = v310++ > 8;
                if (v14)
                {
                  goto LABEL_327;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v171) = 0;
              }
            }

            else
            {
              LODWORD(v171) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_442:
          *(a1 + 72) = v171;
          goto LABEL_461;
        case 0xAu:
          *(a1 + 156) |= 0x10000000uLL;
          v68 = *(this + 1);
          if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 136) = *(*this + v68);
          goto LABEL_379;
        case 0xBu:
          *(a1 + 156) |= 0x20000000uLL;
          v165 = *(this + 1);
          if (v165 > 0xFFFFFFFFFFFFFFFBLL || v165 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 140) = *(*this + v165);
          goto LABEL_379;
        case 0xCu:
          *(a1 + 156) |= 0x8000000uLL;
          v57 = *(this + 1);
          if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 132) = *(*this + v57);
          goto LABEL_379;
        case 0xDu:
          *(a1 + 156) |= 0x40000uLL;
          v60 = *(this + 1);
          v59 = *(this + 2);
          v61 = *this;
          if (v60 <= 0xFFFFFFFFFFFFFFF5 && v60 + 10 <= v59)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            do
            {
              *(this + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                goto LABEL_412;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
            }

            while (!v14);
LABEL_243:
            LODWORD(v64) = 0;
            goto LABEL_412;
          }

          v249 = 0;
          v250 = 0;
          v64 = 0;
          v17 = v59 >= v60;
          v251 = v59 - v60;
          if (!v17)
          {
            v251 = 0;
          }

          v252 = (v61 + v60);
          v253 = v60 + 1;
          while (2)
          {
            if (v251)
            {
              v254 = *v252;
              *(this + 1) = v253;
              v64 |= (v254 & 0x7F) << v249;
              if (v254 < 0)
              {
                v249 += 7;
                --v251;
                ++v252;
                ++v253;
                v14 = v250++ > 8;
                if (v14)
                {
                  goto LABEL_243;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              LODWORD(v64) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_412:
          *(a1 + 96) = v64;
          goto LABEL_461;
        case 0xEu:
          *(a1 + 156) |= 0x4000uLL;
          v146 = *(this + 1);
          if (v146 > 0xFFFFFFFFFFFFFFFBLL || v146 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 80) = *(*this + v146);
          goto LABEL_379;
        case 0xFu:
          *(a1 + 156) |= 0x20uLL;
          v40 = *(this + 1);
          v39 = *(this + 2);
          v41 = *this;
          if (v40 <= 0xFFFFFFFFFFFFFFF5 && v40 + 10 <= v39)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            do
            {
              *(this + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                goto LABEL_406;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_227:
            LODWORD(v44) = 0;
            goto LABEL_406;
          }

          v237 = 0;
          v238 = 0;
          v44 = 0;
          v17 = v39 >= v40;
          v239 = v39 - v40;
          if (!v17)
          {
            v239 = 0;
          }

          v240 = (v41 + v40);
          v241 = v40 + 1;
          while (2)
          {
            if (v239)
            {
              v242 = *v240;
              *(this + 1) = v241;
              v44 |= (v242 & 0x7F) << v237;
              if (v242 < 0)
              {
                v237 += 7;
                --v239;
                ++v240;
                ++v241;
                v14 = v238++ > 8;
                if (v14)
                {
                  goto LABEL_227;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v44) = 0;
              }
            }

            else
            {
              LODWORD(v44) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_406:
          *(a1 + 44) = v44;
          goto LABEL_461;
        case 0x10u:
          *(a1 + 156) |= 0x400000000uLL;
          v96 = *(this + 1);
          if (v96 >= *(this + 2))
          {
            v99 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v97 = v96 + 1;
            v98 = *(*this + v96);
            *(this + 1) = v97;
            v99 = v98 != 0;
          }

          *(a1 + 154) = v99;
          goto LABEL_461;
        case 0x11u:
          *(a1 + 156) |= 0x200000000uLL;
          v35 = *(this + 1);
          if (v35 >= *(this + 2))
          {
            v38 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = v35 + 1;
            v37 = *(*this + v35);
            *(this + 1) = v36;
            v38 = v37 != 0;
          }

          *(a1 + 153) = v38;
          goto LABEL_461;
        case 0x12u:
          *(a1 + 156) |= 0x80uLL;
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
                goto LABEL_433;
              }

              v131 += 7;
              ++v135;
              v14 = v132++ > 8;
            }

            while (!v14);
LABEL_301:
            LODWORD(v133) = 0;
            goto LABEL_433;
          }

          v291 = 0;
          v292 = 0;
          v133 = 0;
          v17 = v128 >= v129;
          v293 = v128 - v129;
          if (!v17)
          {
            v293 = 0;
          }

          v294 = (v130 + v129);
          v295 = v129 + 1;
          while (2)
          {
            if (v293)
            {
              v296 = *v294;
              *(this + 1) = v295;
              v133 |= (v296 & 0x7F) << v291;
              if (v296 < 0)
              {
                v291 += 7;
                --v293;
                ++v294;
                ++v295;
                v14 = v292++ > 8;
                if (v14)
                {
                  goto LABEL_301;
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

LABEL_433:
          *(a1 + 52) = v133;
          goto LABEL_461;
        case 0x13u:
          *(a1 + 156) |= 0x40000000uLL;
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
                goto LABEL_439;
              }

              v159 += 7;
              ++v163;
              v14 = v160++ > 8;
            }

            while (!v14);
LABEL_317:
            LODWORD(v161) = 0;
            goto LABEL_439;
          }

          v303 = 0;
          v304 = 0;
          v161 = 0;
          v17 = v156 >= v157;
          v305 = v156 - v157;
          if (!v17)
          {
            v305 = 0;
          }

          v306 = (v158 + v157);
          v307 = v157 + 1;
          while (2)
          {
            if (v305)
            {
              v308 = *v306;
              *(this + 1) = v307;
              v161 |= (v308 & 0x7F) << v303;
              if (v308 < 0)
              {
                v303 += 7;
                --v305;
                ++v306;
                ++v307;
                v14 = v304++ > 8;
                if (v14)
                {
                  goto LABEL_317;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v161) = 0;
              }
            }

            else
            {
              LODWORD(v161) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_439:
          *(a1 + 144) = v161;
          goto LABEL_461;
        case 0x14u:
          *(a1 + 156) |= 0x2000000uLL;
          v195 = *(this + 1);
          v194 = *(this + 2);
          v196 = *this;
          if (v195 <= 0xFFFFFFFFFFFFFFF5 && v195 + 10 <= v194)
          {
            v197 = 0;
            v198 = 0;
            v199 = 0;
            v200 = (v196 + v195);
            v201 = v195 + 1;
            do
            {
              *(this + 1) = v201;
              v202 = *v200++;
              v199 |= (v202 & 0x7F) << v197;
              if ((v202 & 0x80) == 0)
              {
                goto LABEL_451;
              }

              v197 += 7;
              ++v201;
              v14 = v198++ > 8;
            }

            while (!v14);
LABEL_353:
            LODWORD(v199) = 0;
            goto LABEL_451;
          }

          v327 = 0;
          v328 = 0;
          v199 = 0;
          v17 = v194 >= v195;
          v329 = v194 - v195;
          if (!v17)
          {
            v329 = 0;
          }

          v330 = (v196 + v195);
          v331 = v195 + 1;
          while (2)
          {
            if (v329)
            {
              v332 = *v330;
              *(this + 1) = v331;
              v199 |= (v332 & 0x7F) << v327;
              if (v332 < 0)
              {
                v327 += 7;
                --v329;
                ++v330;
                ++v331;
                v14 = v328++ > 8;
                if (v14)
                {
                  goto LABEL_353;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v199) = 0;
              }
            }

            else
            {
              LODWORD(v199) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_451:
          *(a1 + 124) = v199;
          goto LABEL_461;
        case 0x15u:
          *(a1 + 156) |= 0x800000000uLL;
          v137 = *(this + 1);
          if (v137 >= *(this + 2))
          {
            v140 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v138 = v137 + 1;
            v139 = *(*this + v137);
            *(this + 1) = v138;
            v140 = v139 != 0;
          }

          *(a1 + 155) = v140;
          goto LABEL_461;
        case 0x16u:
          *(a1 + 156) |= 0x100000000uLL;
          v142 = *(this + 1);
          if (v142 >= *(this + 2))
          {
            v145 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v143 = v142 + 1;
            v144 = *(*this + v142);
            *(this + 1) = v143;
            v145 = v144 != 0;
          }

          *(a1 + 152) = v145;
          goto LABEL_461;
        case 0x17u:
          *(a1 + 156) |= 0x20000uLL;
          v186 = *(this + 1);
          v185 = *(this + 2);
          v187 = *this;
          if (v186 <= 0xFFFFFFFFFFFFFFF5 && v186 + 10 <= v185)
          {
            v188 = 0;
            v189 = 0;
            v190 = 0;
            v191 = (v187 + v186);
            v192 = v186 + 1;
            do
            {
              *(this + 1) = v192;
              v193 = *v191++;
              v190 |= (v193 & 0x7F) << v188;
              if ((v193 & 0x80) == 0)
              {
                goto LABEL_448;
              }

              v188 += 7;
              ++v192;
              v14 = v189++ > 8;
            }

            while (!v14);
LABEL_345:
            LODWORD(v190) = 0;
            goto LABEL_448;
          }

          v321 = 0;
          v322 = 0;
          v190 = 0;
          v17 = v185 >= v186;
          v323 = v185 - v186;
          if (!v17)
          {
            v323 = 0;
          }

          v324 = (v187 + v186);
          v325 = v186 + 1;
          while (2)
          {
            if (v323)
            {
              v326 = *v324;
              *(this + 1) = v325;
              v190 |= (v326 & 0x7F) << v321;
              if (v326 < 0)
              {
                v321 += 7;
                --v323;
                ++v324;
                ++v325;
                v14 = v322++ > 8;
                if (v14)
                {
                  goto LABEL_345;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v190) = 0;
              }
            }

            else
            {
              LODWORD(v190) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_448:
          *(a1 + 92) = v190;
          goto LABEL_461;
        case 0x18u:
          *(a1 + 156) |= 0x200000uLL;
          v204 = *(this + 1);
          v203 = *(this + 2);
          v205 = *this;
          if (v204 <= 0xFFFFFFFFFFFFFFF5 && v204 + 10 <= v203)
          {
            v206 = 0;
            v207 = 0;
            v208 = 0;
            v209 = (v205 + v204);
            v210 = v204 + 1;
            do
            {
              *(this + 1) = v210;
              v211 = *v209++;
              v208 |= (v211 & 0x7F) << v206;
              if ((v211 & 0x80) == 0)
              {
                goto LABEL_454;
              }

              v206 += 7;
              ++v210;
              v14 = v207++ > 8;
            }

            while (!v14);
LABEL_361:
            LODWORD(v208) = 0;
            goto LABEL_454;
          }

          v333 = 0;
          v334 = 0;
          v208 = 0;
          v17 = v203 >= v204;
          v335 = v203 - v204;
          if (!v17)
          {
            v335 = 0;
          }

          v336 = (v205 + v204);
          v337 = v204 + 1;
          while (2)
          {
            if (v335)
            {
              v338 = *v336;
              *(this + 1) = v337;
              v208 |= (v338 & 0x7F) << v333;
              if (v338 < 0)
              {
                v333 += 7;
                --v335;
                ++v336;
                ++v337;
                v14 = v334++ > 8;
                if (v14)
                {
                  goto LABEL_361;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v208) = 0;
              }
            }

            else
            {
              LODWORD(v208) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_454:
          *(a1 + 108) = v208;
          goto LABEL_461;
        case 0x19u:
          *(a1 + 156) |= 0x400000uLL;
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
                goto LABEL_418;
              }

              v81 += 7;
              ++v85;
              v14 = v82++ > 8;
            }

            while (!v14);
LABEL_259:
            LODWORD(v83) = 0;
            goto LABEL_418;
          }

          v261 = 0;
          v262 = 0;
          v83 = 0;
          v17 = v78 >= v79;
          v263 = v78 - v79;
          if (!v17)
          {
            v263 = 0;
          }

          v264 = (v80 + v79);
          v265 = v79 + 1;
          while (2)
          {
            if (v263)
            {
              v266 = *v264;
              *(this + 1) = v265;
              v83 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                --v263;
                ++v264;
                ++v265;
                v14 = v262++ > 8;
                if (v14)
                {
                  goto LABEL_259;
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

LABEL_418:
          *(a1 + 112) = v83;
          goto LABEL_461;
        case 0x1Au:
          *(a1 + 156) |= 0x80000uLL;
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
                goto LABEL_415;
              }

              v72 += 7;
              ++v76;
              v14 = v73++ > 8;
            }

            while (!v14);
LABEL_251:
            LODWORD(v74) = 0;
            goto LABEL_415;
          }

          v255 = 0;
          v256 = 0;
          v74 = 0;
          v17 = v69 >= v70;
          v257 = v69 - v70;
          if (!v17)
          {
            v257 = 0;
          }

          v258 = (v71 + v70);
          v259 = v70 + 1;
          while (2)
          {
            if (v257)
            {
              v260 = *v258;
              *(this + 1) = v259;
              v74 |= (v260 & 0x7F) << v255;
              if (v260 < 0)
              {
                v255 += 7;
                --v257;
                ++v258;
                ++v259;
                v14 = v256++ > 8;
                if (v14)
                {
                  goto LABEL_251;
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

LABEL_415:
          *(a1 + 100) = v74;
          goto LABEL_461;
        case 0x1Bu:
          *(a1 + 156) |= 0x8000uLL;
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
                goto LABEL_460;
              }

              v225 += 7;
              ++v229;
              v14 = v226++ > 8;
            }

            while (!v14);
LABEL_377:
            LODWORD(v227) = 0;
            goto LABEL_460;
          }

          v345 = 0;
          v346 = 0;
          v227 = 0;
          v17 = v222 >= v223;
          v347 = v222 - v223;
          if (!v17)
          {
            v347 = 0;
          }

          v348 = (v224 + v223);
          v349 = v223 + 1;
          while (2)
          {
            if (v347)
            {
              v350 = *v348;
              *(this + 1) = v349;
              v227 |= (v350 & 0x7F) << v345;
              if (v350 < 0)
              {
                v345 += 7;
                --v347;
                ++v348;
                ++v349;
                v14 = v346++ > 8;
                if (v14)
                {
                  goto LABEL_377;
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

LABEL_460:
          *(a1 + 84) = v227;
          goto LABEL_461;
        case 0x1Cu:
          *(a1 + 156) |= 0x800000uLL;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 116) = *(*this + v25);
          goto LABEL_379;
        case 0x1Du:
          *(a1 + 156) |= 0x100000uLL;
          v213 = *(this + 1);
          v212 = *(this + 2);
          v214 = *this;
          if (v213 <= 0xFFFFFFFFFFFFFFF5 && v213 + 10 <= v212)
          {
            v215 = 0;
            v216 = 0;
            v217 = 0;
            v218 = (v214 + v213);
            v219 = v213 + 1;
            do
            {
              *(this + 1) = v219;
              v220 = *v218++;
              v217 |= (v220 & 0x7F) << v215;
              if ((v220 & 0x80) == 0)
              {
                goto LABEL_457;
              }

              v215 += 7;
              ++v219;
              v14 = v216++ > 8;
            }

            while (!v14);
LABEL_369:
            LODWORD(v217) = 0;
            goto LABEL_457;
          }

          v339 = 0;
          v340 = 0;
          v217 = 0;
          v17 = v212 >= v213;
          v341 = v212 - v213;
          if (!v17)
          {
            v341 = 0;
          }

          v342 = (v214 + v213);
          v343 = v213 + 1;
          while (2)
          {
            if (v341)
            {
              v344 = *v342;
              *(this + 1) = v343;
              v217 |= (v344 & 0x7F) << v339;
              if (v344 < 0)
              {
                v339 += 7;
                --v341;
                ++v342;
                ++v343;
                v14 = v340++ > 8;
                if (v14)
                {
                  goto LABEL_369;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v217) = 0;
              }
            }

            else
            {
              LODWORD(v217) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_457:
          *(a1 + 104) = v217;
          goto LABEL_461;
        case 0x1Eu:
          *(a1 + 156) |= 0x4000000uLL;
          v221 = *(this + 1);
          if (v221 > 0xFFFFFFFFFFFFFFFBLL || v221 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 128) = *(*this + v221);
          goto LABEL_379;
        case 0x1Fu:
          *(a1 + 156) |= 0x1000000uLL;
          v176 = *(this + 1);
          v175 = *(this + 2);
          v177 = *this;
          if (v176 <= 0xFFFFFFFFFFFFFFF5 && v176 + 10 <= v175)
          {
            v178 = 0;
            v179 = 0;
            v180 = 0;
            v181 = (v177 + v176);
            v182 = v176 + 1;
            do
            {
              *(this + 1) = v182;
              v183 = *v181++;
              v180 |= (v183 & 0x7F) << v178;
              if ((v183 & 0x80) == 0)
              {
                goto LABEL_445;
              }

              v178 += 7;
              ++v182;
              v14 = v179++ > 8;
            }

            while (!v14);
LABEL_337:
            LODWORD(v180) = 0;
            goto LABEL_445;
          }

          v315 = 0;
          v316 = 0;
          v180 = 0;
          v17 = v175 >= v176;
          v317 = v175 - v176;
          if (!v17)
          {
            v317 = 0;
          }

          v318 = (v177 + v176);
          v319 = v176 + 1;
          while (2)
          {
            if (v317)
            {
              v320 = *v318;
              *(this + 1) = v319;
              v180 |= (v320 & 0x7F) << v315;
              if (v320 < 0)
              {
                v315 += 7;
                --v317;
                ++v318;
                ++v319;
                v14 = v316++ > 8;
                if (v14)
                {
                  goto LABEL_337;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v180) = 0;
              }
            }

            else
            {
              LODWORD(v180) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_445:
          *(a1 + 120) = v180;
          goto LABEL_461;
        case 0x20u:
          *(a1 + 156) |= 0x10uLL;
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
                goto LABEL_430;
              }

              v122 += 7;
              ++v126;
              v14 = v123++ > 8;
            }

            while (!v14);
LABEL_293:
            LODWORD(v124) = 0;
            goto LABEL_430;
          }

          v285 = 0;
          v286 = 0;
          v124 = 0;
          v17 = v119 >= v120;
          v287 = v119 - v120;
          if (!v17)
          {
            v287 = 0;
          }

          v288 = (v121 + v120);
          v289 = v120 + 1;
          while (2)
          {
            if (v287)
            {
              v290 = *v288;
              *(this + 1) = v289;
              v124 |= (v290 & 0x7F) << v285;
              if (v290 < 0)
              {
                v285 += 7;
                --v287;
                ++v288;
                ++v289;
                v14 = v286++ > 8;
                if (v14)
                {
                  goto LABEL_293;
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

LABEL_430:
          *(a1 + 40) = v124;
          goto LABEL_461;
        case 0x21u:
          *(a1 + 156) |= 0x40uLL;
          v184 = *(this + 1);
          if (v184 > 0xFFFFFFFFFFFFFFFBLL || v184 + 4 > *(this + 2))
          {
            goto LABEL_200;
          }

          *(a1 + 48) = *(*this + v184);
LABEL_379:
          v24 = *(this + 1) + 4;
          goto LABEL_380;
        case 0x22u:
          *(a1 + 156) |= 0x10000uLL;
          v49 = *(this + 1);
          v48 = *(this + 2);
          v50 = *this;
          if (v49 <= 0xFFFFFFFFFFFFFFF5 && v49 + 10 <= v48)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            do
            {
              *(this + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                goto LABEL_409;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
            }

            while (!v14);
LABEL_235:
            LODWORD(v53) = 0;
            goto LABEL_409;
          }

          v243 = 0;
          v244 = 0;
          v53 = 0;
          v17 = v48 >= v49;
          v245 = v48 - v49;
          if (!v17)
          {
            v245 = 0;
          }

          v246 = (v50 + v49);
          v247 = v49 + 1;
          while (2)
          {
            if (v245)
            {
              v248 = *v246;
              *(this + 1) = v247;
              v53 |= (v248 & 0x7F) << v243;
              if (v248 < 0)
              {
                v243 += 7;
                --v245;
                ++v246;
                ++v247;
                v14 = v244++ > 8;
                if (v14)
                {
                  goto LABEL_235;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v53) = 0;
              }
            }

            else
            {
              LODWORD(v53) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_409:
          *(a1 + 88) = v53;
          goto LABEL_461;
        case 0x23u:
          *(a1 + 156) |= 0x2000uLL;
          v27 = *(this + 1);
          v26 = *(this + 2);
          v28 = *this;
          if (v27 <= 0xFFFFFFFFFFFFFFF5 && v27 + 10 <= v26)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = (v28 + v27);
            v33 = v27 + 1;
            do
            {
              *(this + 1) = v33;
              v34 = *v32++;
              v31 |= (v34 & 0x7F) << v29;
              if ((v34 & 0x80) == 0)
              {
                goto LABEL_403;
              }

              v29 += 7;
              ++v33;
              v14 = v30++ > 8;
            }

            while (!v14);
LABEL_217:
            LODWORD(v31) = 0;
            goto LABEL_403;
          }

          v231 = 0;
          v232 = 0;
          v31 = 0;
          v17 = v26 >= v27;
          v233 = v26 - v27;
          if (!v17)
          {
            v233 = 0;
          }

          v234 = (v28 + v27);
          v235 = v27 + 1;
          break;
        case 0x24u:
          *(a1 + 156) |= 1uLL;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
LABEL_200:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 8) = *(*this + v23);
LABEL_29:
            v24 = *(this + 1) + 8;
LABEL_380:
            *(this + 1) = v24;
          }

          goto LABEL_461;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_461;
          }

          v352 = 0;
          return v352 & 1;
      }

      while (1)
      {
        if (!v233)
        {
          LODWORD(v31) = 0;
          *(this + 24) = 1;
          goto LABEL_403;
        }

        v236 = *v234;
        *(this + 1) = v235;
        v31 |= (v236 & 0x7F) << v231;
        if ((v236 & 0x80) == 0)
        {
          break;
        }

        v231 += 7;
        --v233;
        ++v234;
        ++v235;
        v14 = v232++ > 8;
        if (v14)
        {
          goto LABEL_217;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v31) = 0;
      }

LABEL_403:
      *(a1 + 76) = v31;
LABEL_461:
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

LABEL_465:
  v352 = v4 ^ 1;
  return v352 & 1;
}

uint64_t sub_19B469754(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 156);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 156);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 156);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 156);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 156);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(v3 + 148);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x1000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  v9 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 156);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 156);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 156);
  if ((v4 & 0x40000) == 0)
  {
LABEL_14:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  v10 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x4000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 156);
  if ((v4 & 0x20) == 0)
  {
LABEL_16:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  v11 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(v3 + 154);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(v3 + 153);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x80) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v15 = *(v3 + 144);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_21:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  v16 = *(v3 + 124);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  v17 = *(v3 + 155);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  v18 = *(v3 + 152);
  result = PB::Writer::write(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x20000) == 0)
  {
LABEL_24:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  v19 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x200000) == 0)
  {
LABEL_25:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  v20 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x400000) == 0)
  {
LABEL_26:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  v21 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x80000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  v22 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x8000) == 0)
  {
LABEL_28:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  v23 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x800000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 156);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  v24 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 156);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  v25 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x10) == 0)
  {
LABEL_33:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  v26 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x40) == 0)
  {
LABEL_34:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 156);
  if ((v4 & 0x10000) == 0)
  {
LABEL_35:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

LABEL_72:
    v28 = *(v3 + 76);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 156) & 1) == 0)
    {
      return result;
    }

    goto LABEL_73;
  }

LABEL_71:
  v27 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 156);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_72;
  }

LABEL_36:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_73:
  v29 = *(v3 + 8);

  return PB::Writer::write(this, v29);
}

double sub_19B469B7C(uint64_t a1)
{
  *a1 = &unk_1F0E2C360;
  *(a1 + 396) = 0;
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
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return result;
}

void sub_19B469BDC(PB::Base *this)
{
  *this = &unk_1F0E2C360;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = v7;
    operator delete(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    *(this + 8) = v8;
    operator delete(v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    *(this + 5) = v9;
    operator delete(v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    *(this + 2) = v10;
    operator delete(v10);
  }

  PB::Base::~Base(this);
}

void sub_19B469CC0(PB::Base *a1)
{
  sub_19B469BDC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B469CF8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 396);
  if (v5)
  {
    PB::TextFormatter::format(this, "absoluteTimestampOfImpact", *(a1 + 224));
    v5 = *(a1 + 396);
    if ((v5 & 0x100000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_62;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  v41 = *(a1 + 384);
  PB::TextFormatter::format(this, "anyOffWristAfterImpact");
  v5 = *(a1 + 396);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

LABEL_62:
  v42 = *(a1 + 232);
  PB::TextFormatter::format(this, "aopTimestampOfImpact");
  v5 = *(a1 + 396);
  if ((v5 & 0x200000) == 0)
  {
LABEL_5:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_64;
  }

LABEL_63:
  v43 = *(a1 + 385);
  PB::TextFormatter::format(this, "continuousLockedBeforeImpact");
  v5 = *(a1 + 396);
  if ((v5 & 0x400000) == 0)
  {
LABEL_6:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_64:
  v44 = *(a1 + 386);
  PB::TextFormatter::format(this, "continuousOffWristBeforeImpact");
  if ((*(a1 + 396) & 0x800000) != 0)
  {
LABEL_7:
    v6 = *(a1 + 387);
    PB::TextFormatter::format(this, "continuousStaticAndVerticalBeforeImpact");
  }

LABEL_8:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "coreMotionWristStateHistoryEndimestamp", v9);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "coreMotionWristStateHistoryStartTimestamp", v12);
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(this, "coreMotionWristStateHistoryState", v15);
  }

  v16 = *(a1 + 396);
  if ((v16 & 0x1000000) != 0)
  {
    v45 = *(a1 + 388);
    PB::TextFormatter::format(this, "gatingEnabled");
    v16 = *(a1 + 396);
    if ((v16 & 0x2000000) == 0)
    {
LABEL_16:
      if ((v16 & 0x4000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_68;
    }
  }

  else if ((v16 & 0x2000000) == 0)
  {
    goto LABEL_16;
  }

  v46 = *(a1 + 389);
  PB::TextFormatter::format(this, "gatingLockedNoMotionPreImpact");
  v16 = *(a1 + 396);
  if ((v16 & 0x4000000) == 0)
  {
LABEL_17:
    if ((v16 & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  v47 = *(a1 + 390);
  PB::TextFormatter::format(this, "gatingMotionPreImpact");
  v16 = *(a1 + 396);
  if ((v16 & 0x8000000) == 0)
  {
LABEL_18:
    if ((v16 & 0x10000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  v48 = *(a1 + 391);
  PB::TextFormatter::format(this, "gatingOffWristPostImpact");
  v16 = *(a1 + 396);
  if ((v16 & 0x10000000) == 0)
  {
LABEL_19:
    if ((v16 & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  v49 = *(a1 + 392);
  PB::TextFormatter::format(this, "gatingOffWristPreImpact");
  v16 = *(a1 + 396);
  if ((v16 & 0x20000000) == 0)
  {
LABEL_20:
    if ((v16 & 0x40000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  v50 = *(a1 + 393);
  PB::TextFormatter::format(this, "gatingOnCharger");
  v16 = *(a1 + 396);
  if ((v16 & 0x40000000) == 0)
  {
LABEL_21:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  v51 = *(a1 + 394);
  PB::TextFormatter::format(this, "hasMotionBeforeImpact");
  v16 = *(a1 + 396);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v16 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  v52 = *(a1 + 395);
  PB::TextFormatter::format(this, "lastChargerState");
  v16 = *(a1 + 396);
  if ((v16 & 4) == 0)
  {
LABEL_23:
    if ((v16 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "lastChargerStateDuration", *(a1 + 240));
  v16 = *(a1 + 396);
  if ((v16 & 8) == 0)
  {
LABEL_24:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "lastChargerStateDurationThreshold", *(a1 + 248));
  v16 = *(a1 + 396);
  if ((v16 & 0x10) == 0)
  {
LABEL_25:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  v53 = *(a1 + 256);
  PB::TextFormatter::format(this, "lastCoreMotionWristState");
  v16 = *(a1 + 396);
  if ((v16 & 0x20) == 0)
  {
LABEL_26:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(this, "lastCoreMotionWristStateDuration", *(a1 + 264));
  v16 = *(a1 + 396);
  if ((v16 & 0x40) == 0)
  {
LABEL_27:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(this, "lastCoreMotionWristStateDurationPostEnd", *(a1 + 272));
  v16 = *(a1 + 396);
  if ((v16 & 0x80) == 0)
  {
LABEL_28:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(this, "lastCoreMotionWristStateDurationPostStart", *(a1 + 280));
  v16 = *(a1 + 396);
  if ((v16 & 0x100) == 0)
  {
LABEL_29:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(this, "lastCoreMotionWristStateDurationPostThreshold", *(a1 + 288));
  v16 = *(a1 + 396);
  if ((v16 & 0x200) == 0)
  {
LABEL_30:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(this, "lastCoreMotionWristStateDurationPreEnd", *(a1 + 296));
  v16 = *(a1 + 396);
  if ((v16 & 0x400) == 0)
  {
LABEL_31:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(this, "lastCoreMotionWristStateDurationPreStart", *(a1 + 304));
  v16 = *(a1 + 396);
  if ((v16 & 0x800) == 0)
  {
LABEL_32:
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(this, "lastLockedStateDurationPreEnd", *(a1 + 312));
  v16 = *(a1 + 396);
  if ((v16 & 0x1000) == 0)
  {
LABEL_33:
    if ((v16 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(this, "lastLockedStateDurationPreStart", *(a1 + 320));
  v16 = *(a1 + 396);
  if ((v16 & 0x2000) == 0)
  {
LABEL_34:
    if ((v16 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_86;
  }

LABEL_85:
  v54 = *(a1 + 328);
  PB::TextFormatter::format(this, "lastMotionState");
  v16 = *(a1 + 396);
  if ((v16 & 0x4000) == 0)
  {
LABEL_35:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_86:
  v55 = *(a1 + 336);
  PB::TextFormatter::format(this, "lastMotionStateEndTime");
  if ((*(a1 + 396) & 0x8000) != 0)
  {
LABEL_36:
    v17 = *(a1 + 344);
    PB::TextFormatter::format(this, "lastMotionStateStartTime");
  }

LABEL_37:
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "lockStateHistoryEndTimestamp", v20);
  }

  v21 = *(a1 + 104);
  v22 = *(a1 + 112);
  while (v21 != v22)
  {
    v23 = *v21++;
    PB::TextFormatter::format(this, "lockStateHistoryStartTimestamp", v23);
  }

  v24 = *(a1 + 128);
  v25 = *(a1 + 136);
  while (v24 != v25)
  {
    v26 = *v24++;
    PB::TextFormatter::format(this, "lockStateHistoryState", v26);
  }

  v27 = *(a1 + 396);
  if ((v27 & 0x10000) != 0)
  {
    v28 = *(a1 + 352);
    PB::TextFormatter::format(this, "motionLookbackBeforeImpactEndOfInterval");
    v27 = *(a1 + 396);
  }

  if ((v27 & 0x20000) != 0)
  {
    v29 = *(a1 + 360);
    PB::TextFormatter::format(this, "motionLookbackBeforeImpactStartOfInterval");
  }

  v30 = *(a1 + 152);
  v31 = *(a1 + 160);
  while (v30 != v31)
  {
    v32 = *v30++;
    PB::TextFormatter::format(this, "motionStateHistoryEndTimestamp", v32);
  }

  v33 = *(a1 + 176);
  v34 = *(a1 + 184);
  while (v33 != v34)
  {
    v35 = *v33++;
    PB::TextFormatter::format(this, "motionStateHistoryStartTimestamp", v35);
  }

  v36 = *(a1 + 200);
  v37 = *(a1 + 208);
  while (v36 != v37)
  {
    v38 = *v36++;
    PB::TextFormatter::format(this, "motionStateHistoryState", v38);
  }

  v39 = *(a1 + 396);
  if ((v39 & 0x40000) != 0)
  {
    PB::TextFormatter::format(this, "relativeTimestampToImpact", *(a1 + 368));
    v39 = *(a1 + 396);
  }

  if ((v39 & 0x80000) != 0)
  {
    v40 = *(a1 + 376);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B46A2C8(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 100)
      {
        switch(v23)
        {
          case 1:
            *(a1 + 396) |= 0x80000u;
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
                  goto LABEL_548;
                }

                v27 += 7;
                ++v31;
                v14 = v28++ > 8;
              }

              while (!v14);
LABEL_406:
              v29 = 0;
              goto LABEL_548;
            }

            v336 = 0;
            v337 = 0;
            v29 = 0;
            v17 = v24 >= v25;
            v338 = v24 - v25;
            if (!v17)
            {
              v338 = 0;
            }

            v339 = (v26 + v25);
            v340 = v25 + 1;
            while (2)
            {
              if (v338)
              {
                v341 = *v339;
                *(this + 1) = v340;
                v29 |= (v341 & 0x7F) << v336;
                if (v341 < 0)
                {
                  v336 += 7;
                  --v338;
                  ++v339;
                  ++v340;
                  v14 = v337++ > 8;
                  if (v14)
                  {
                    goto LABEL_406;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v29 = 0;
                }
              }

              else
              {
                v29 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_548:
            *(a1 + 376) = v29;
            goto LABEL_584;
          case 2:
            *(a1 + 396) |= 0x1000000u;
            v167 = *(this + 1);
            if (v167 >= *(this + 2))
            {
              v170 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v168 = v167 + 1;
              v169 = *(*this + v167);
              *(this + 1) = v168;
              v170 = v169 != 0;
            }

            *(a1 + 388) = v170;
            goto LABEL_584;
          case 3:
            *(a1 + 396) |= 1u;
            v164 = *(this + 1);
            if (v164 > 0xFFFFFFFFFFFFFFF7 || v164 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 224) = *(*this + v164);
            goto LABEL_583;
          case 4:
            *(a1 + 396) |= 0x40000u;
            v154 = *(this + 1);
            if (v154 > 0xFFFFFFFFFFFFFFF7 || v154 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 368) = *(*this + v154);
            goto LABEL_583;
          case 5:
            *(a1 + 396) |= 2u;
            v156 = *(this + 1);
            v155 = *(this + 2);
            v157 = *this;
            if (v156 <= 0xFFFFFFFFFFFFFFF5 && v156 + 10 <= v155)
            {
              v158 = 0;
              v159 = 0;
              v160 = 0;
              v161 = (v157 + v156);
              v162 = v156 + 1;
              do
              {
                *(this + 1) = v162;
                v163 = *v161++;
                v160 |= (v163 & 0x7F) << v158;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_539;
                }

                v158 += 7;
                ++v162;
                v14 = v159++ > 8;
              }

              while (!v14);
LABEL_380:
              v160 = 0;
              goto LABEL_539;
            }

            v318 = 0;
            v319 = 0;
            v160 = 0;
            v17 = v155 >= v156;
            v320 = v155 - v156;
            if (!v17)
            {
              v320 = 0;
            }

            v321 = (v157 + v156);
            v322 = v156 + 1;
            while (2)
            {
              if (v320)
              {
                v323 = *v321;
                *(this + 1) = v322;
                v160 |= (v323 & 0x7F) << v318;
                if (v323 < 0)
                {
                  v318 += 7;
                  --v320;
                  ++v321;
                  ++v322;
                  v14 = v319++ > 8;
                  if (v14)
                  {
                    goto LABEL_380;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v160 = 0;
                }
              }

              else
              {
                v160 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_539:
            *(a1 + 232) = v160;
            goto LABEL_584;
          case 21:
            *(a1 + 396) |= 0x10u;
            v130 = *(this + 1);
            v129 = *(this + 2);
            v131 = *this;
            if (v130 <= 0xFFFFFFFFFFFFFFF5 && v130 + 10 <= v129)
            {
              v132 = 0;
              v133 = 0;
              v134 = 0;
              v135 = (v131 + v130);
              v136 = v130 + 1;
              do
              {
                *(this + 1) = v136;
                v137 = *v135++;
                v134 |= (v137 & 0x7F) << v132;
                if ((v137 & 0x80) == 0)
                {
                  goto LABEL_533;
                }

                v132 += 7;
                ++v136;
                v14 = v133++ > 8;
              }

              while (!v14);
LABEL_362:
              v134 = 0;
              goto LABEL_533;
            }

            v306 = 0;
            v307 = 0;
            v134 = 0;
            v17 = v129 >= v130;
            v308 = v129 - v130;
            if (!v17)
            {
              v308 = 0;
            }

            v309 = (v131 + v130);
            v310 = v130 + 1;
            while (2)
            {
              if (v308)
              {
                v311 = *v309;
                *(this + 1) = v310;
                v134 |= (v311 & 0x7F) << v306;
                if (v311 < 0)
                {
                  v306 += 7;
                  --v308;
                  ++v309;
                  ++v310;
                  v14 = v307++ > 8;
                  if (v14)
                  {
                    goto LABEL_362;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v134 = 0;
                }
              }

              else
              {
                v134 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_533:
            *(a1 + 256) = v134;
            goto LABEL_584;
          case 22:
            *(a1 + 396) |= 0x20u;
            v152 = *(this + 1);
            if (v152 > 0xFFFFFFFFFFFFFFF7 || v152 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 264) = *(*this + v152);
            goto LABEL_583;
          case 23:
            *(a1 + 396) |= 0x100u;
            v153 = *(this + 1);
            if (v153 > 0xFFFFFFFFFFFFFFF7 || v153 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 288) = *(*this + v153);
            goto LABEL_583;
          case 24:
            *(a1 + 396) |= 0x400u;
            v142 = *(this + 1);
            if (v142 > 0xFFFFFFFFFFFFFFF7 || v142 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 304) = *(*this + v142);
            goto LABEL_583;
          case 25:
            *(a1 + 396) |= 0x200u;
            v166 = *(this + 1);
            if (v166 > 0xFFFFFFFFFFFFFFF7 || v166 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 296) = *(*this + v166);
            goto LABEL_583;
          case 26:
            *(a1 + 396) |= 0x80u;
            v128 = *(this + 1);
            if (v128 > 0xFFFFFFFFFFFFFFF7 || v128 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 280) = *(*this + v128);
            goto LABEL_583;
          case 27:
            *(a1 + 396) |= 0x40u;
            v119 = *(this + 1);
            if (v119 > 0xFFFFFFFFFFFFFFF7 || v119 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 272) = *(*this + v119);
            goto LABEL_583;
          case 28:
            *(a1 + 396) |= 0x1000u;
            v165 = *(this + 1);
            if (v165 > 0xFFFFFFFFFFFFFFF7 || v165 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 320) = *(*this + v165);
            goto LABEL_583;
          case 29:
            *(a1 + 396) |= 0x800u;
            v171 = *(this + 1);
            if (v171 > 0xFFFFFFFFFFFFFFF7 || v171 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 312) = *(*this + v171);
            goto LABEL_583;
          case 30:
            *(a1 + 396) |= 0x20000u;
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
                  goto LABEL_530;
                }

                v113 += 7;
                ++v117;
                v14 = v114++ > 8;
              }

              while (!v14);
LABEL_350:
              v115 = 0;
              goto LABEL_530;
            }

            v300 = 0;
            v301 = 0;
            v115 = 0;
            v17 = v110 >= v111;
            v302 = v110 - v111;
            if (!v17)
            {
              v302 = 0;
            }

            v303 = (v112 + v111);
            v304 = v111 + 1;
            while (2)
            {
              if (v302)
              {
                v305 = *v303;
                *(this + 1) = v304;
                v115 |= (v305 & 0x7F) << v300;
                if (v305 < 0)
                {
                  v300 += 7;
                  --v302;
                  ++v303;
                  ++v304;
                  v14 = v301++ > 8;
                  if (v14)
                  {
                    goto LABEL_350;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v115 = 0;
                }
              }

              else
              {
                v115 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_530:
            *(a1 + 360) = v115;
            goto LABEL_584;
          case 31:
            *(a1 + 396) |= 0x10000u;
            v182 = *(this + 1);
            v181 = *(this + 2);
            v183 = *this;
            if (v182 <= 0xFFFFFFFFFFFFFFF5 && v182 + 10 <= v181)
            {
              v184 = 0;
              v185 = 0;
              v186 = 0;
              v187 = (v183 + v182);
              v188 = v182 + 1;
              do
              {
                *(this + 1) = v188;
                v189 = *v187++;
                v186 |= (v189 & 0x7F) << v184;
                if ((v189 & 0x80) == 0)
                {
                  goto LABEL_545;
                }

                v184 += 7;
                ++v188;
                v14 = v185++ > 8;
              }

              while (!v14);
LABEL_398:
              v186 = 0;
              goto LABEL_545;
            }

            v330 = 0;
            v331 = 0;
            v186 = 0;
            v17 = v181 >= v182;
            v332 = v181 - v182;
            if (!v17)
            {
              v332 = 0;
            }

            v333 = (v183 + v182);
            v334 = v182 + 1;
            while (2)
            {
              if (v332)
              {
                v335 = *v333;
                *(this + 1) = v334;
                v186 |= (v335 & 0x7F) << v330;
                if (v335 < 0)
                {
                  v330 += 7;
                  --v332;
                  ++v333;
                  ++v334;
                  v14 = v331++ > 8;
                  if (v14)
                  {
                    goto LABEL_398;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v186 = 0;
                }
              }

              else
              {
                v186 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_545:
            *(a1 + 352) = v186;
            goto LABEL_584;
          case 32:
            *(a1 + 396) |= 0x8000u;
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
                  goto LABEL_536;
                }

                v146 += 7;
                ++v150;
                v14 = v147++ > 8;
              }

              while (!v14);
LABEL_370:
              v148 = 0;
              goto LABEL_536;
            }

            v312 = 0;
            v313 = 0;
            v148 = 0;
            v17 = v143 >= v144;
            v314 = v143 - v144;
            if (!v17)
            {
              v314 = 0;
            }

            v315 = (v145 + v144);
            v316 = v144 + 1;
            while (2)
            {
              if (v314)
              {
                v317 = *v315;
                *(this + 1) = v316;
                v148 |= (v317 & 0x7F) << v312;
                if (v317 < 0)
                {
                  v312 += 7;
                  --v314;
                  ++v315;
                  ++v316;
                  v14 = v313++ > 8;
                  if (v14)
                  {
                    goto LABEL_370;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v148 = 0;
                }
              }

              else
              {
                v148 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_536:
            *(a1 + 344) = v148;
            goto LABEL_584;
          case 33:
            *(a1 + 396) |= 0x4000u;
            v173 = *(this + 1);
            v172 = *(this + 2);
            v174 = *this;
            if (v173 <= 0xFFFFFFFFFFFFFFF5 && v173 + 10 <= v172)
            {
              v175 = 0;
              v176 = 0;
              v177 = 0;
              v178 = (v174 + v173);
              v179 = v173 + 1;
              do
              {
                *(this + 1) = v179;
                v180 = *v178++;
                v177 |= (v180 & 0x7F) << v175;
                if ((v180 & 0x80) == 0)
                {
                  goto LABEL_542;
                }

                v175 += 7;
                ++v179;
                v14 = v176++ > 8;
              }

              while (!v14);
LABEL_390:
              v177 = 0;
              goto LABEL_542;
            }

            v324 = 0;
            v325 = 0;
            v177 = 0;
            v17 = v172 >= v173;
            v326 = v172 - v173;
            if (!v17)
            {
              v326 = 0;
            }

            v327 = (v174 + v173);
            v328 = v173 + 1;
            while (2)
            {
              if (v326)
              {
                v329 = *v327;
                *(this + 1) = v328;
                v177 |= (v329 & 0x7F) << v324;
                if (v329 < 0)
                {
                  v324 += 7;
                  --v326;
                  ++v327;
                  ++v328;
                  v14 = v325++ > 8;
                  if (v14)
                  {
                    goto LABEL_390;
                  }

                  continue;
                }

                if (*(this + 24))
                {
                  v177 = 0;
                }
              }

              else
              {
                v177 = 0;
                *(this + 24) = 1;
              }

              break;
            }

LABEL_542:
            *(a1 + 336) = v177;
            goto LABEL_584;
          case 34:
            *(a1 + 396) |= 0x2000u;
            v195 = *(this + 1);
            v194 = *(this + 2);
            v196 = *this;
            if (v195 <= 0xFFFFFFFFFFFFFFF5 && v195 + 10 <= v194)
            {
              v197 = 0;
              v198 = 0;
              v199 = 0;
              v200 = (v196 + v195);
              v201 = v195 + 1;
              do
              {
                *(this + 1) = v201;
                v202 = *v200++;
                v199 |= (v202 & 0x7F) << v197;
                if ((v202 & 0x80) == 0)
                {
                  goto LABEL_551;
                }

                v197 += 7;
                ++v201;
                v14 = v198++ > 8;
              }

              while (!v14);
LABEL_414:
              v199 = 0;
              goto LABEL_551;
            }

            v342 = 0;
            v343 = 0;
            v199 = 0;
            v17 = v194 >= v195;
            v344 = v194 - v195;
            if (!v17)
            {
              v344 = 0;
            }

            v345 = (v196 + v195);
            v346 = v195 + 1;
            break;
          case 41:
            *(a1 + 396) |= 0x80000000;
            v105 = *(this + 1);
            if (v105 >= *(this + 2))
            {
              v108 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v106 = v105 + 1;
              v107 = *(*this + v105);
              *(this + 1) = v106;
              v108 = v107 != 0;
            }

            *(a1 + 395) = v108;
            goto LABEL_584;
          case 42:
            *(a1 + 396) |= 4u;
            v207 = *(this + 1);
            if (v207 > 0xFFFFFFFFFFFFFFF7 || v207 + 8 > *(this + 2))
            {
              goto LABEL_230;
            }

            *(a1 + 240) = *(*this + v207);
            goto LABEL_583;
          case 43:
            *(a1 + 396) |= 8u;
            v109 = *(this + 1);
            if (v109 <= 0xFFFFFFFFFFFFFFF7 && v109 + 8 <= *(this + 2))
            {
              *(a1 + 248) = *(*this + v109);
              goto LABEL_583;
            }

LABEL_230:
            *(this + 24) = 1;
            goto LABEL_584;
          case 51:
            *(a1 + 396) |= 0x100000u;
            v138 = *(this + 1);
            if (v138 >= *(this + 2))
            {
              v141 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v139 = v138 + 1;
              v140 = *(*this + v138);
              *(this + 1) = v139;
              v141 = v140 != 0;
            }

            *(a1 + 384) = v141;
            goto LABEL_584;
          case 52:
            *(a1 + 396) |= 0x400000u;
            v203 = *(this + 1);
            if (v203 >= *(this + 2))
            {
              v206 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v204 = v203 + 1;
              v205 = *(*this + v203);
              *(this + 1) = v204;
              v206 = v205 != 0;
            }

            *(a1 + 386) = v206;
            goto LABEL_584;
          case 53:
            *(a1 + 396) |= 0x40000000u;
            v190 = *(this + 1);
            if (v190 >= *(this + 2))
            {
              v193 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v191 = v190 + 1;
              v192 = *(*this + v190);
              *(this + 1) = v191;
              v193 = v192 != 0;
            }

            *(a1 + 394) = v193;
            goto LABEL_584;
          case 54:
            *(a1 + 396) |= 0x200000u;
            v120 = *(this + 1);
            if (v120 >= *(this + 2))
            {
              v123 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v121 = v120 + 1;
              v122 = *(*this + v120);
              *(this + 1) = v121;
              v123 = v122 != 0;
            }

            *(a1 + 385) = v123;
            goto LABEL_584;
          case 55:
            *(a1 + 396) |= 0x800000u;
            v124 = *(this + 1);
            if (v124 >= *(this + 2))
            {
              v127 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v125 = v124 + 1;
              v126 = *(*this + v124);
              *(this + 1) = v125;
              v127 = v126 != 0;
            }

            *(a1 + 387) = v127;
            goto LABEL_584;
          default:
            goto LABEL_339;
        }

        while (1)
        {
          if (!v344)
          {
            v199 = 0;
            *(this + 24) = 1;
            goto LABEL_551;
          }

          v347 = *v345;
          *(this + 1) = v346;
          v199 |= (v347 & 0x7F) << v342;
          if ((v347 & 0x80) == 0)
          {
            break;
          }

          v342 += 7;
          --v344;
          ++v345;
          ++v346;
          v14 = v343++ > 8;
          if (v14)
          {
            goto LABEL_414;
          }
        }

        if (*(this + 24))
        {
          v199 = 0;
        }

LABEL_551:
        *(a1 + 328) = v199;
        goto LABEL_584;
      }

      if (v23 > 152)
      {
        if (v23 <= 162)
        {
          switch(v23)
          {
            case 0x99:
              if (v22 != 2)
              {
                v358 = *(a1 + 64);
                v357 = *(a1 + 72);
                if (v358 >= v357)
                {
                  v391 = *(a1 + 56);
                  v392 = v358 - v391;
                  v393 = (v358 - v391) >> 3;
                  v394 = v393 + 1;
                  if ((v393 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v395 = v357 - v391;
                  if (v395 >> 2 > v394)
                  {
                    v394 = v395 >> 2;
                  }

                  if (v395 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v396 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v396 = v394;
                  }

                  if (v396)
                  {
                    sub_19B4C50F0(a1 + 56, v396);
                  }

                  v437 = (v358 - v391) >> 3;
                  v438 = (8 * v393);
                  v439 = (8 * v393 - 8 * v437);
                  *v438 = 0;
                  v350 = v438 + 1;
                  memcpy(v439, v391, v392);
                  v440 = *(a1 + 56);
                  *(a1 + 56) = v439;
                  *(a1 + 64) = v350;
                  *(a1 + 72) = 0;
                  if (v440)
                  {
                    operator delete(v440);
                  }
                }

                else
                {
                  *v358 = 0;
                  v350 = v358 + 8;
                }

                *(a1 + 64) = v350;
                goto LABEL_579;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v284 = *(this + 1);
              v285 = *(this + 2);
              while (v284 < v285 && (*(this + 24) & 1) == 0)
              {
                v287 = *(a1 + 64);
                v286 = *(a1 + 72);
                if (v287 >= v286)
                {
                  v289 = *(a1 + 56);
                  v290 = v287 - v289;
                  v291 = (v287 - v289) >> 3;
                  v292 = v291 + 1;
                  if ((v291 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v293 = v286 - v289;
                  if (v293 >> 2 > v292)
                  {
                    v292 = v293 >> 2;
                  }

                  if (v293 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v294 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v294 = v292;
                  }

                  if (v294)
                  {
                    sub_19B4C50F0(a1 + 56, v294);
                  }

                  v295 = (v287 - v289) >> 3;
                  v296 = (8 * v291);
                  v297 = (8 * v291 - 8 * v295);
                  *v296 = 0;
                  v288 = v296 + 1;
                  memcpy(v297, v289, v290);
                  v298 = *(a1 + 56);
                  *(a1 + 56) = v297;
                  *(a1 + 64) = v288;
                  *(a1 + 72) = 0;
                  if (v298)
                  {
                    operator delete(v298);
                  }
                }

                else
                {
                  *v287 = 0;
                  v288 = v287 + 8;
                }

                *(a1 + 64) = v288;
                v299 = *(this + 1);
                if (v299 > 0xFFFFFFFFFFFFFFF7 || v299 + 8 > *(this + 2))
                {
LABEL_337:
                  *(this + 24) = 1;
                  goto LABEL_338;
                }

                *(v288 - 1) = *(*this + v299);
                v285 = *(this + 2);
                v284 = *(this + 1) + 8;
                *(this + 1) = v284;
              }

              goto LABEL_338;
            case 0xA1:
              if (v22 != 2)
              {
                v356 = *(a1 + 112);
                v355 = *(a1 + 120);
                if (v356 >= v355)
                {
                  v385 = *(a1 + 104);
                  v386 = v356 - v385;
                  v387 = (v356 - v385) >> 3;
                  v388 = v387 + 1;
                  if ((v387 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v389 = v355 - v385;
                  if (v389 >> 2 > v388)
                  {
                    v388 = v389 >> 2;
                  }

                  if (v389 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v390 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v390 = v388;
                  }

                  if (v390)
                  {
                    sub_19B4C50F0(a1 + 104, v390);
                  }

                  v433 = (v356 - v385) >> 3;
                  v434 = (8 * v387);
                  v435 = (8 * v387 - 8 * v433);
                  *v434 = 0;
                  v350 = v434 + 1;
                  memcpy(v435, v385, v386);
                  v436 = *(a1 + 104);
                  *(a1 + 104) = v435;
                  *(a1 + 112) = v350;
                  *(a1 + 120) = 0;
                  if (v436)
                  {
                    operator delete(v436);
                  }
                }

                else
                {
                  *v356 = 0;
                  v350 = v356 + 8;
                }

                *(a1 + 112) = v350;
                goto LABEL_579;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v264 = *(this + 1);
              v265 = *(this + 2);
              while (v264 < v265 && (*(this + 24) & 1) == 0)
              {
                v267 = *(a1 + 112);
                v266 = *(a1 + 120);
                if (v267 >= v266)
                {
                  v269 = *(a1 + 104);
                  v270 = v267 - v269;
                  v271 = (v267 - v269) >> 3;
                  v272 = v271 + 1;
                  if ((v271 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v273 = v266 - v269;
                  if (v273 >> 2 > v272)
                  {
                    v272 = v273 >> 2;
                  }

                  if (v273 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v274 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v274 = v272;
                  }

                  if (v274)
                  {
                    sub_19B4C50F0(a1 + 104, v274);
                  }

                  v275 = (v267 - v269) >> 3;
                  v276 = (8 * v271);
                  v277 = (8 * v271 - 8 * v275);
                  *v276 = 0;
                  v268 = v276 + 1;
                  memcpy(v277, v269, v270);
                  v278 = *(a1 + 104);
                  *(a1 + 104) = v277;
                  *(a1 + 112) = v268;
                  *(a1 + 120) = 0;
                  if (v278)
                  {
                    operator delete(v278);
                  }
                }

                else
                {
                  *v267 = 0;
                  v268 = v267 + 8;
                }

                *(a1 + 112) = v268;
                v279 = *(this + 1);
                if (v279 > 0xFFFFFFFFFFFFFFF7 || v279 + 8 > *(this + 2))
                {
                  goto LABEL_337;
                }

                *(v268 - 1) = *(*this + v279);
                v265 = *(this + 2);
                v264 = *(this + 1) + 8;
                *(this + 1) = v264;
              }

              goto LABEL_338;
            case 0xA2:
              if (v22 != 2)
              {
                v366 = *(a1 + 88);
                v365 = *(a1 + 96);
                if (v366 >= v365)
                {
                  v415 = *(a1 + 80);
                  v416 = v366 - v415;
                  v417 = (v366 - v415) >> 3;
                  v418 = v417 + 1;
                  if ((v417 + 1) >> 61)
                  {
LABEL_591:
                    sub_19B5BE690();
                  }

                  v419 = v365 - v415;
                  if (v419 >> 2 > v418)
                  {
                    v418 = v419 >> 2;
                  }

                  if (v419 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v420 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v420 = v418;
                  }

                  if (v420)
                  {
                    sub_19B4C50F0(a1 + 80, v420);
                  }

                  v453 = (v366 - v415) >> 3;
                  v454 = (8 * v417);
                  v455 = (8 * v417 - 8 * v453);
                  *v454 = 0;
                  v350 = v454 + 1;
                  memcpy(v455, v415, v416);
                  v456 = *(a1 + 80);
                  *(a1 + 80) = v455;
                  *(a1 + 88) = v350;
                  *(a1 + 96) = 0;
                  if (v456)
                  {
                    operator delete(v456);
                  }
                }

                else
                {
                  *v366 = 0;
                  v350 = v366 + 8;
                }

                *(a1 + 88) = v350;
                goto LABEL_579;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v57 = *(this + 1);
              v58 = *(this + 2);
              while (v57 < v58 && (*(this + 24) & 1) == 0)
              {
                v60 = *(a1 + 88);
                v59 = *(a1 + 96);
                if (v60 >= v59)
                {
                  v62 = *(a1 + 80);
                  v63 = v60 - v62;
                  v64 = (v60 - v62) >> 3;
                  v65 = v64 + 1;
                  if ((v64 + 1) >> 61)
                  {
                    goto LABEL_591;
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
                    sub_19B4C50F0(a1 + 80, v67);
                  }

                  v68 = (v60 - v62) >> 3;
                  v69 = (8 * v64);
                  v70 = (8 * v64 - 8 * v68);
                  *v69 = 0;
                  v61 = v69 + 1;
                  memcpy(v70, v62, v63);
                  v71 = *(a1 + 80);
                  *(a1 + 80) = v70;
                  *(a1 + 88) = v61;
                  *(a1 + 96) = 0;
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

                *(a1 + 88) = v61;
                v72 = *(this + 1);
                if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(this + 2))
                {
                  goto LABEL_337;
                }

                *(v61 - 1) = *(*this + v72);
                v58 = *(this + 2);
                v57 = *(this + 1) + 8;
                *(this + 1) = v57;
              }

LABEL_338:
              PB::Reader::recallMark();
              goto LABEL_584;
          }
        }

        else
        {
          if (v23 <= 164)
          {
            if (v23 == 163)
            {
              if (v22 != 2)
              {
                v349 = *(a1 + 136);
                v348 = *(a1 + 144);
                if (v349 >= v348)
                {
                  v367 = *(a1 + 128);
                  v368 = v349 - v367;
                  v369 = (v349 - v367) >> 3;
                  v370 = v369 + 1;
                  if ((v369 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v371 = v348 - v367;
                  if (v371 >> 2 > v370)
                  {
                    v370 = v371 >> 2;
                  }

                  if (v371 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v372 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v372 = v370;
                  }

                  if (v372)
                  {
                    sub_19B4C50F0(a1 + 128, v372);
                  }

                  v421 = (v349 - v367) >> 3;
                  v422 = (8 * v369);
                  v423 = (8 * v369 - 8 * v421);
                  *v422 = 0;
                  v350 = v422 + 1;
                  memcpy(v423, v367, v368);
                  v424 = *(a1 + 128);
                  *(a1 + 128) = v423;
                  *(a1 + 136) = v350;
                  *(a1 + 144) = 0;
                  if (v424)
                  {
                    operator delete(v424);
                  }
                }

                else
                {
                  *v349 = 0;
                  v350 = v349 + 8;
                }

                *(a1 + 136) = v350;
LABEL_579:
                v457 = *(this + 1);
                if (v457 <= 0xFFFFFFFFFFFFFFF7 && v457 + 8 <= *(this + 2))
                {
                  *(v350 - 1) = *(*this + v457);
LABEL_583:
                  *(this + 1) += 8;
                }

                else
                {
                  *(this + 24) = 1;
                }

                goto LABEL_584;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v212 = *(this + 1);
              v213 = *(this + 2);
              while (v212 < v213 && (*(this + 24) & 1) == 0)
              {
                v215 = *(a1 + 136);
                v214 = *(a1 + 144);
                if (v215 >= v214)
                {
                  v217 = *(a1 + 128);
                  v218 = v215 - v217;
                  v219 = (v215 - v217) >> 3;
                  v220 = v219 + 1;
                  if ((v219 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v221 = v214 - v217;
                  if (v221 >> 2 > v220)
                  {
                    v220 = v221 >> 2;
                  }

                  if (v221 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v222 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v222 = v220;
                  }

                  if (v222)
                  {
                    sub_19B4C50F0(a1 + 128, v222);
                  }

                  v223 = (v215 - v217) >> 3;
                  v224 = (8 * v219);
                  v225 = (8 * v219 - 8 * v223);
                  *v224 = 0;
                  v216 = v224 + 1;
                  memcpy(v225, v217, v218);
                  v226 = *(a1 + 128);
                  *(a1 + 128) = v225;
                  *(a1 + 136) = v216;
                  *(a1 + 144) = 0;
                  if (v226)
                  {
                    operator delete(v226);
                  }
                }

                else
                {
                  *v215 = 0;
                  v216 = v215 + 8;
                }

                *(a1 + 136) = v216;
                v227 = *(this + 1);
                if (v227 > 0xFFFFFFFFFFFFFFF7 || v227 + 8 > *(this + 2))
                {
                  goto LABEL_337;
                }

                *(v216 - 1) = *(*this + v227);
                v213 = *(this + 2);
                v212 = *(this + 1) + 8;
                *(this + 1) = v212;
              }
            }

            else
            {
              if (v22 != 2)
              {
                v360 = *(a1 + 184);
                v359 = *(a1 + 192);
                if (v360 >= v359)
                {
                  v397 = *(a1 + 176);
                  v398 = v360 - v397;
                  v399 = (v360 - v397) >> 3;
                  v400 = v399 + 1;
                  if ((v399 + 1) >> 61)
                  {
                    goto LABEL_591;
                  }

                  v401 = v359 - v397;
                  if (v401 >> 2 > v400)
                  {
                    v400 = v401 >> 2;
                  }

                  if (v401 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v402 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v402 = v400;
                  }

                  if (v402)
                  {
                    sub_19B4C50F0(a1 + 176, v402);
                  }

                  v441 = (v360 - v397) >> 3;
                  v442 = (8 * v399);
                  v443 = (8 * v399 - 8 * v441);
                  *v442 = 0;
                  v350 = v442 + 1;
                  memcpy(v443, v397, v398);
                  v444 = *(a1 + 176);
                  *(a1 + 176) = v443;
                  *(a1 + 184) = v350;
                  *(a1 + 192) = 0;
                  if (v444)
                  {
                    operator delete(v444);
                  }
                }

                else
                {
                  *v360 = 0;
                  v350 = v360 + 8;
                }

                *(a1 + 184) = v350;
                goto LABEL_579;
              }

              if (PB::Reader::placeMark())
              {
                goto LABEL_590;
              }

              v37 = *(this + 1);
              v38 = *(this + 2);
              while (v37 < v38 && (*(this + 24) & 1) == 0)
              {
                v40 = *(a1 + 184);
                v39 = *(a1 + 192);
                if (v40 >= v39)
                {
                  v42 = *(a1 + 176);
                  v43 = v40 - v42;
                  v44 = (v40 - v42) >> 3;
                  v45 = v44 + 1;
                  if ((v44 + 1) >> 61)
                  {
                    goto LABEL_591;
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
                    sub_19B4C50F0(a1 + 176, v47);
                  }

                  v48 = (v40 - v42) >> 3;
                  v49 = (8 * v44);
                  v50 = (8 * v44 - 8 * v48);
                  *v49 = 0;
                  v41 = v49 + 1;
                  memcpy(v50, v42, v43);
                  v51 = *(a1 + 176);
                  *(a1 + 176) = v50;
                  *(a1 + 184) = v41;
                  *(a1 + 192) = 0;
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

                *(a1 + 184) = v41;
                v52 = *(this + 1);
                if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(this + 2))
                {
                  goto LABEL_337;
                }

                *(v41 - 1) = *(*this + v52);
                v38 = *(this + 2);
                v37 = *(this + 1) + 8;
                *(this + 1) = v37;
              }
            }

            goto LABEL_338;
          }

          if (v23 == 165)
          {
            if (v22 != 2)
            {
              v354 = *(a1 + 160);
              v353 = *(a1 + 168);
              if (v354 >= v353)
              {
                v379 = *(a1 + 152);
                v380 = v354 - v379;
                v381 = (v354 - v379) >> 3;
                v382 = v381 + 1;
                if ((v381 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v383 = v353 - v379;
                if (v383 >> 2 > v382)
                {
                  v382 = v383 >> 2;
                }

                if (v383 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v384 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v384 = v382;
                }

                if (v384)
                {
                  sub_19B4C50F0(a1 + 152, v384);
                }

                v429 = (v354 - v379) >> 3;
                v430 = (8 * v381);
                v431 = (8 * v381 - 8 * v429);
                *v430 = 0;
                v350 = v430 + 1;
                memcpy(v431, v379, v380);
                v432 = *(a1 + 152);
                *(a1 + 152) = v431;
                *(a1 + 160) = v350;
                *(a1 + 168) = 0;
                if (v432)
                {
                  operator delete(v432);
                }
              }

              else
              {
                *v354 = 0;
                v350 = v354 + 8;
              }

              *(a1 + 160) = v350;
              goto LABEL_579;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_590;
            }

            v244 = *(this + 1);
            v245 = *(this + 2);
            while (v244 < v245 && (*(this + 24) & 1) == 0)
            {
              v247 = *(a1 + 160);
              v246 = *(a1 + 168);
              if (v247 >= v246)
              {
                v249 = *(a1 + 152);
                v250 = v247 - v249;
                v251 = (v247 - v249) >> 3;
                v252 = v251 + 1;
                if ((v251 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v253 = v246 - v249;
                if (v253 >> 2 > v252)
                {
                  v252 = v253 >> 2;
                }

                if (v253 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v254 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v254 = v252;
                }

                if (v254)
                {
                  sub_19B4C50F0(a1 + 152, v254);
                }

                v255 = (v247 - v249) >> 3;
                v256 = (8 * v251);
                v257 = (8 * v251 - 8 * v255);
                *v256 = 0;
                v248 = v256 + 1;
                memcpy(v257, v249, v250);
                v258 = *(a1 + 152);
                *(a1 + 152) = v257;
                *(a1 + 160) = v248;
                *(a1 + 168) = 0;
                if (v258)
                {
                  operator delete(v258);
                }
              }

              else
              {
                *v247 = 0;
                v248 = v247 + 8;
              }

              *(a1 + 160) = v248;
              v259 = *(this + 1);
              if (v259 > 0xFFFFFFFFFFFFFFF7 || v259 + 8 > *(this + 2))
              {
                goto LABEL_337;
              }

              *(v248 - 1) = *(*this + v259);
              v245 = *(this + 2);
              v244 = *(this + 1) + 8;
              *(this + 1) = v244;
            }

            goto LABEL_338;
          }

          if (v23 == 166)
          {
            if (v22 != 2)
            {
              v364 = *(a1 + 208);
              v363 = *(a1 + 216);
              if (v364 >= v363)
              {
                v409 = *(a1 + 200);
                v410 = v364 - v409;
                v411 = (v364 - v409) >> 3;
                v412 = v411 + 1;
                if ((v411 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v413 = v363 - v409;
                if (v413 >> 2 > v412)
                {
                  v412 = v413 >> 2;
                }

                if (v413 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v414 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v414 = v412;
                }

                if (v414)
                {
                  sub_19B4C50F0(a1 + 200, v414);
                }

                v449 = (v364 - v409) >> 3;
                v450 = (8 * v411);
                v451 = (8 * v411 - 8 * v449);
                *v450 = 0;
                v350 = v450 + 1;
                memcpy(v451, v409, v410);
                v452 = *(a1 + 200);
                *(a1 + 200) = v451;
                *(a1 + 208) = v350;
                *(a1 + 216) = 0;
                if (v452)
                {
                  operator delete(v452);
                }
              }

              else
              {
                *v364 = 0;
                v350 = v364 + 8;
              }

              *(a1 + 208) = v350;
              goto LABEL_579;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_590;
            }

            v89 = *(this + 1);
            v90 = *(this + 2);
            while (v89 < v90 && (*(this + 24) & 1) == 0)
            {
              v92 = *(a1 + 208);
              v91 = *(a1 + 216);
              if (v92 >= v91)
              {
                v94 = *(a1 + 200);
                v95 = v92 - v94;
                v96 = (v92 - v94) >> 3;
                v97 = v96 + 1;
                if ((v96 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v98 = v91 - v94;
                if (v98 >> 2 > v97)
                {
                  v97 = v98 >> 2;
                }

                if (v98 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v99 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v99 = v97;
                }

                if (v99)
                {
                  sub_19B4C50F0(a1 + 200, v99);
                }

                v100 = (v92 - v94) >> 3;
                v101 = (8 * v96);
                v102 = (8 * v96 - 8 * v100);
                *v101 = 0;
                v93 = v101 + 1;
                memcpy(v102, v94, v95);
                v103 = *(a1 + 200);
                *(a1 + 200) = v102;
                *(a1 + 208) = v93;
                *(a1 + 216) = 0;
                if (v103)
                {
                  operator delete(v103);
                }
              }

              else
              {
                *v92 = 0;
                v93 = v92 + 8;
              }

              *(a1 + 208) = v93;
              v104 = *(this + 1);
              if (v104 > 0xFFFFFFFFFFFFFFF7 || v104 + 8 > *(this + 2))
              {
                goto LABEL_337;
              }

              *(v93 - 1) = *(*this + v104);
              v90 = *(this + 2);
              v89 = *(this + 1) + 8;
              *(this + 1) = v89;
            }

            goto LABEL_338;
          }
        }
      }

      else if (v23 <= 103)
      {
        switch(v23)
        {
          case 'e':
            *(a1 + 396) |= 0x10000000u;
            v280 = *(this + 1);
            if (v280 >= *(this + 2))
            {
              v283 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v281 = v280 + 1;
              v282 = *(*this + v280);
              *(this + 1) = v281;
              v283 = v282 != 0;
            }

            *(a1 + 392) = v283;
            goto LABEL_584;
          case 'f':
            *(a1 + 396) |= 0x8000000u;
            v260 = *(this + 1);
            if (v260 >= *(this + 2))
            {
              v263 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v261 = v260 + 1;
              v262 = *(*this + v260);
              *(this + 1) = v261;
              v263 = v262 != 0;
            }

            *(a1 + 391) = v263;
            goto LABEL_584;
          case 'g':
            *(a1 + 396) |= 0x20000000u;
            v53 = *(this + 1);
            if (v53 >= *(this + 2))
            {
              v56 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v54 = v53 + 1;
              v55 = *(*this + v53);
              *(this + 1) = v54;
              v56 = v55 != 0;
            }

            *(a1 + 393) = v56;
            goto LABEL_584;
        }
      }

      else
      {
        if (v23 > 150)
        {
          if (v23 == 151)
          {
            if (v22 != 2)
            {
              v352 = *(a1 + 40);
              v351 = *(a1 + 48);
              if (v352 >= v351)
              {
                v373 = *(a1 + 32);
                v374 = v352 - v373;
                v375 = (v352 - v373) >> 3;
                v376 = v375 + 1;
                if ((v375 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v377 = v351 - v373;
                if (v377 >> 2 > v376)
                {
                  v376 = v377 >> 2;
                }

                if (v377 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v378 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v378 = v376;
                }

                if (v378)
                {
                  sub_19B4C50F0(a1 + 32, v378);
                }

                v425 = (v352 - v373) >> 3;
                v426 = (8 * v375);
                v427 = (8 * v375 - 8 * v425);
                *v426 = 0;
                v350 = v426 + 1;
                memcpy(v427, v373, v374);
                v428 = *(a1 + 32);
                *(a1 + 32) = v427;
                *(a1 + 40) = v350;
                *(a1 + 48) = 0;
                if (v428)
                {
                  operator delete(v428);
                }
              }

              else
              {
                *v352 = 0;
                v350 = v352 + 8;
              }

              *(a1 + 40) = v350;
              goto LABEL_579;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_590;
            }

            v228 = *(this + 1);
            v229 = *(this + 2);
            while (v228 < v229 && (*(this + 24) & 1) == 0)
            {
              v231 = *(a1 + 40);
              v230 = *(a1 + 48);
              if (v231 >= v230)
              {
                v233 = *(a1 + 32);
                v234 = v231 - v233;
                v235 = (v231 - v233) >> 3;
                v236 = v235 + 1;
                if ((v235 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v237 = v230 - v233;
                if (v237 >> 2 > v236)
                {
                  v236 = v237 >> 2;
                }

                if (v237 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v238 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v238 = v236;
                }

                if (v238)
                {
                  sub_19B4C50F0(a1 + 32, v238);
                }

                v239 = (v231 - v233) >> 3;
                v240 = (8 * v235);
                v241 = (8 * v235 - 8 * v239);
                *v240 = 0;
                v232 = v240 + 1;
                memcpy(v241, v233, v234);
                v242 = *(a1 + 32);
                *(a1 + 32) = v241;
                *(a1 + 40) = v232;
                *(a1 + 48) = 0;
                if (v242)
                {
                  operator delete(v242);
                }
              }

              else
              {
                *v231 = 0;
                v232 = v231 + 8;
              }

              *(a1 + 40) = v232;
              v243 = *(this + 1);
              if (v243 > 0xFFFFFFFFFFFFFFF7 || v243 + 8 > *(this + 2))
              {
                goto LABEL_337;
              }

              *(v232 - 1) = *(*this + v243);
              v229 = *(this + 2);
              v228 = *(this + 1) + 8;
              *(this + 1) = v228;
            }
          }

          else
          {
            if (v22 != 2)
            {
              v362 = *(a1 + 16);
              v361 = *(a1 + 24);
              if (v362 >= v361)
              {
                v403 = *(a1 + 8);
                v404 = v362 - v403;
                v405 = (v362 - v403) >> 3;
                v406 = v405 + 1;
                if ((v405 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v407 = v361 - v403;
                if (v407 >> 2 > v406)
                {
                  v406 = v407 >> 2;
                }

                if (v407 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v408 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v408 = v406;
                }

                if (v408)
                {
                  sub_19B4C50F0(a1 + 8, v408);
                }

                v445 = (v362 - v403) >> 3;
                v446 = (8 * v405);
                v447 = (8 * v405 - 8 * v445);
                *v446 = 0;
                v350 = v446 + 1;
                memcpy(v447, v403, v404);
                v448 = *(a1 + 8);
                *(a1 + 8) = v447;
                *(a1 + 16) = v350;
                *(a1 + 24) = 0;
                if (v448)
                {
                  operator delete(v448);
                }
              }

              else
              {
                *v362 = 0;
                v350 = v362 + 8;
              }

              *(a1 + 16) = v350;
              goto LABEL_579;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_590;
            }

            v73 = *(this + 1);
            v74 = *(this + 2);
            while (v73 < v74 && (*(this + 24) & 1) == 0)
            {
              v76 = *(a1 + 16);
              v75 = *(a1 + 24);
              if (v76 >= v75)
              {
                v78 = *(a1 + 8);
                v79 = v76 - v78;
                v80 = (v76 - v78) >> 3;
                v81 = v80 + 1;
                if ((v80 + 1) >> 61)
                {
                  goto LABEL_591;
                }

                v82 = v75 - v78;
                if (v82 >> 2 > v81)
                {
                  v81 = v82 >> 2;
                }

                if (v82 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v83 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v83 = v81;
                }

                if (v83)
                {
                  sub_19B4C50F0(a1 + 8, v83);
                }

                v84 = (v76 - v78) >> 3;
                v85 = (8 * v80);
                v86 = (8 * v80 - 8 * v84);
                *v85 = 0;
                v77 = v85 + 1;
                memcpy(v86, v78, v79);
                v87 = *(a1 + 8);
                *(a1 + 8) = v86;
                *(a1 + 16) = v77;
                *(a1 + 24) = 0;
                if (v87)
                {
                  operator delete(v87);
                }
              }

              else
              {
                *v76 = 0;
                v77 = v76 + 8;
              }

              *(a1 + 16) = v77;
              v88 = *(this + 1);
              if (v88 > 0xFFFFFFFFFFFFFFF7 || v88 + 8 > *(this + 2))
              {
                goto LABEL_337;
              }

              *(v77 - 1) = *(*this + v88);
              v74 = *(this + 2);
              v73 = *(this + 1) + 8;
              *(this + 1) = v73;
            }
          }

          goto LABEL_338;
        }

        if (v23 == 104)
        {
          *(a1 + 396) |= 0x2000000u;
          v208 = *(this + 1);
          if (v208 >= *(this + 2))
          {
            v211 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v209 = v208 + 1;
            v210 = *(*this + v208);
            *(this + 1) = v209;
            v211 = v210 != 0;
          }

          *(a1 + 389) = v211;
          goto LABEL_584;
        }

        if (v23 == 105)
        {
          *(a1 + 396) |= 0x4000000u;
          v33 = *(this + 1);
          if (v33 >= *(this + 2))
          {
            v36 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v34 = v33 + 1;
            v35 = *(*this + v33);
            *(this + 1) = v34;
            v36 = v35 != 0;
          }

          *(a1 + 390) = v36;
          goto LABEL_584;
        }
      }

LABEL_339:
      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_590:
        v458 = 0;
        return v458 & 1;
      }

LABEL_584:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v458 = v4 ^ 1;
  return v458 & 1;
}

uint64_t sub_19B46C1F0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 396);
  if ((v4 & 0x80000) != 0)
  {
    v33 = *(result + 376);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 396);
    if ((v4 & 0x1000000) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  else if ((v4 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  v34 = *(v3 + 388);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 224));
  v4 = *(v3 + 396);
  if ((v4 & 0x40000) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 368));
  v4 = *(v3 + 396);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  v35 = *(v3 + 232);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  v36 = *(v3 + 256);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = PB::Writer::write(this, *(v3 + 264));
  v4 = *(v3 + 396);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 288));
  v4 = *(v3 + 396);
  if ((v4 & 0x400) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = PB::Writer::write(this, *(v3 + 304));
  v4 = *(v3 + 396);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 296));
  v4 = *(v3 + 396);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 280));
  v4 = *(v3 + 396);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = PB::Writer::write(this, *(v3 + 272));
  v4 = *(v3 + 396);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 320));
  v4 = *(v3 + 396);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = PB::Writer::write(this, *(v3 + 312));
  v4 = *(v3 + 396);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = *(v3 + 360);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = *(v3 + 352);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = *(v3 + 344);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = *(v3 + 336);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = *(v3 + 328);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v4 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_82;
  }

LABEL_81:
  v42 = *(v3 + 395);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 4) == 0)
  {
LABEL_22:
    if ((v4 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = PB::Writer::write(this, *(v3 + 240));
  v4 = *(v3 + 396);
  if ((v4 & 8) == 0)
  {
LABEL_23:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = PB::Writer::write(this, *(v3 + 248));
  v4 = *(v3 + 396);
  if ((v4 & 0x100000) == 0)
  {
LABEL_24:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_85;
  }

LABEL_84:
  v43 = *(v3 + 384);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x400000) == 0)
  {
LABEL_25:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_86;
  }

LABEL_85:
  v44 = *(v3 + 386);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_87;
  }

LABEL_86:
  v45 = *(v3 + 394);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x200000) == 0)
  {
LABEL_27:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_88;
  }

LABEL_87:
  v46 = *(v3 + 385);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x800000) == 0)
  {
LABEL_28:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_89;
  }

LABEL_88:
  v47 = *(v3 + 387);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_90;
  }

LABEL_89:
  v48 = *(v3 + 392);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_91;
  }

LABEL_90:
  v49 = *(v3 + 391);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_92:
    v51 = *(v3 + 389);
    result = PB::Writer::write(this);
    if ((*(v3 + 396) & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_91:
  v50 = *(v3 + 393);
  result = PB::Writer::write(this);
  v4 = *(v3 + 396);
  if ((v4 & 0x2000000) != 0)
  {
    goto LABEL_92;
  }

LABEL_32:
  if ((v4 & 0x4000000) != 0)
  {
LABEL_33:
    v5 = *(v3 + 390);
    result = PB::Writer::write(this);
  }

LABEL_34:
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::write(this, v8);
  }

  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  v12 = *(v3 + 56);
  v13 = *(v3 + 64);
  while (v12 != v13)
  {
    v14 = *v12++;
    result = PB::Writer::write(this, v14);
  }

  v15 = *(v3 + 104);
  v16 = *(v3 + 112);
  while (v15 != v16)
  {
    v17 = *v15++;
    result = PB::Writer::write(this, v17);
  }

  v18 = *(v3 + 80);
  v19 = *(v3 + 88);
  while (v18 != v19)
  {
    v20 = *v18++;
    result = PB::Writer::write(this, v20);
  }

  v21 = *(v3 + 128);
  v22 = *(v3 + 136);
  while (v21 != v22)
  {
    v23 = *v21++;
    result = PB::Writer::write(this, v23);
  }

  v24 = *(v3 + 176);
  v25 = *(v3 + 184);
  while (v24 != v25)
  {
    v26 = *v24++;
    result = PB::Writer::write(this, v26);
  }

  v27 = *(v3 + 152);
  v28 = *(v3 + 160);
  while (v27 != v28)
  {
    v29 = *v27++;
    result = PB::Writer::write(this, v29);
  }

  v31 = *(v3 + 200);
  v30 = *(v3 + 208);
  while (v31 != v30)
  {
    v32 = *v31++;
    result = PB::Writer::write(this, v32);
  }

  return result;
}

uint64_t sub_19B46C6BC(uint64_t result)
{
  *result = &unk_1F0E2E938;
  *(result + 72) = 0;
  return result;
}

void sub_19B46C6E4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B46C71C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 72);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "afterElevationMedian", *(a1 + 56));
    v5 = *(a1 + 72);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "beforeElevationMedian", *(a1 + 60));
  v5 = *(a1 + 72);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 8);
  PB::TextFormatter::format(this, "endTimestampOfWindow");
  v5 = *(a1 + 72);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "impactTimestamp");
  v5 = *(a1 + 72);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "iostime", *(a1 + 24));
  v5 = *(a1 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 32);
  PB::TextFormatter::format(this, "pressureTimestamp");
  v5 = *(a1 + 72);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "rangeOfElevationInWindow", *(a1 + 64));
  v5 = *(a1 + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a1 + 40);
  PB::TextFormatter::format(this, "startTimestampOfLastInspectedWindow");
  v5 = *(a1 + 72);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "startTimestampOfWindow");
  if ((*(a1 + 72) & 0x200) != 0)
  {
LABEL_11:
    v6 = *(a1 + 68);
    PB::TextFormatter::format(this, "state");
  }

LABEL_12:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B46C8A0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_176;
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
      if ((v10 >> 3) > 10)
      {
        if (v22 <= 12)
        {
          if (v22 == 11)
          {
            *(a1 + 72) |= 0x10u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v85 = 0;
              v86 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v87 = v2 - v39;
              v88 = (v40 + v39);
              v89 = v39 + 1;
              while (1)
              {
                if (!v87)
                {
                  v43 = 0;
                  *(this + 24) = 1;
                  goto LABEL_159;
                }

                v90 = v89;
                v91 = *v88;
                *(this + 1) = v90;
                v43 |= (v91 & 0x7F) << v85;
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
                  v43 = 0;
                  goto LABEL_158;
                }
              }

              if (*(this + 24))
              {
                v43 = 0;
              }

LABEL_158:
              v2 = v90;
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
                  v43 = 0;
                  break;
                }
              }
            }

LABEL_159:
            *(a1 + 40) = v43;
            goto LABEL_172;
          }

          if (v22 == 12)
          {
            *(a1 + 72) |= 0x20u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v80 = v2 - v31;
              v81 = (v32 + v31);
              v82 = v31 + 1;
              while (1)
              {
                if (!v80)
                {
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_155;
                }

                v83 = v82;
                v84 = *v81;
                *(this + 1) = v83;
                v35 |= (v84 & 0x7F) << v78;
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
                  v35 = 0;
                  goto LABEL_154;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_154:
              v2 = v83;
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

LABEL_155:
            *(a1 + 48) = v35;
            goto LABEL_172;
          }
        }

        else
        {
          switch(v22)
          {
            case 0xD:
              *(a1 + 72) |= 1u;
              v55 = *(this + 1);
              v2 = *(this + 2);
              v56 = *this;
              if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
              {
                v99 = 0;
                v100 = 0;
                v59 = 0;
                if (v2 <= v55)
                {
                  v2 = *(this + 1);
                }

                v101 = v2 - v55;
                v102 = (v56 + v55);
                v103 = v55 + 1;
                while (1)
                {
                  if (!v101)
                  {
                    v59 = 0;
                    *(this + 24) = 1;
                    goto LABEL_167;
                  }

                  v104 = v103;
                  v105 = *v102;
                  *(this + 1) = v104;
                  v59 |= (v105 & 0x7F) << v99;
                  if ((v105 & 0x80) == 0)
                  {
                    break;
                  }

                  v99 += 7;
                  --v101;
                  ++v102;
                  v103 = v104 + 1;
                  v14 = v100++ > 8;
                  if (v14)
                  {
                    v59 = 0;
                    goto LABEL_166;
                  }
                }

                if (*(this + 24))
                {
                  v59 = 0;
                }

LABEL_166:
                v2 = v104;
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

LABEL_167:
              *(a1 + 8) = v59;
              goto LABEL_172;
            case 0x14:
              *(a1 + 72) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_88:
                *(this + 24) = 1;
                goto LABEL_172;
              }

              *(a1 + 60) = *(*this + v2);
LABEL_140:
              v2 = *(this + 1) + 4;
LABEL_141:
              *(this + 1) = v2;
              goto LABEL_172;
            case 0x15:
              *(a1 + 72) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_88;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_140;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 72) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_88;
          }

          *(a1 + 24) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_141;
        }

        if (v22 == 2)
        {
          *(a1 + 72) |= 8u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v73 = v2 - v23;
            v74 = (v24 + v23);
            v75 = v23 + 1;
            while (1)
            {
              if (!v73)
              {
                v27 = 0;
                *(this + 24) = 1;
                goto LABEL_151;
              }

              v76 = v75;
              v77 = *v74;
              *(this + 1) = v76;
              v27 |= (v77 & 0x7F) << v71;
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
                v27 = 0;
                goto LABEL_150;
              }
            }

            if (*(this + 24))
            {
              v27 = 0;
            }

LABEL_150:
            v2 = v76;
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

LABEL_151:
          *(a1 + 32) = v27;
          goto LABEL_172;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 72) |= 2u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v92 = 0;
              v93 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v94 = v2 - v47;
              v95 = (v48 + v47);
              v96 = v47 + 1;
              while (1)
              {
                if (!v94)
                {
                  v51 = 0;
                  *(this + 24) = 1;
                  goto LABEL_163;
                }

                v97 = v96;
                v98 = *v95;
                *(this + 1) = v97;
                v51 |= (v98 & 0x7F) << v92;
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
                  v51 = 0;
                  goto LABEL_162;
                }
              }

              if (*(this + 24))
              {
                v51 = 0;
              }

LABEL_162:
              v2 = v97;
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

LABEL_163:
            *(a1 + 16) = v51;
            goto LABEL_172;
          case 4:
            *(a1 + 72) |= 0x200u;
            v63 = *(this + 1);
            v2 = *(this + 2);
            v64 = *this;
            if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
            {
              v106 = 0;
              v107 = 0;
              v67 = 0;
              if (v2 <= v63)
              {
                v2 = *(this + 1);
              }

              v108 = v2 - v63;
              v109 = (v64 + v63);
              v110 = v63 + 1;
              while (1)
              {
                if (!v108)
                {
                  LODWORD(v67) = 0;
                  *(this + 24) = 1;
                  goto LABEL_171;
                }

                v111 = v110;
                v112 = *v109;
                *(this + 1) = v111;
                v67 |= (v112 & 0x7F) << v106;
                if ((v112 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                --v108;
                ++v109;
                v110 = v111 + 1;
                v14 = v107++ > 8;
                if (v14)
                {
                  LODWORD(v67) = 0;
                  goto LABEL_170;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v67) = 0;
              }

LABEL_170:
              v2 = v111;
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

LABEL_171:
            *(a1 + 68) = v67;
            goto LABEL_172;
          case 0xA:
            *(a1 + 72) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_88;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_140;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v113 = 0;
        return v113 & 1;
      }

      v2 = *(this + 1);
LABEL_172:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_176:
  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t sub_19B46D188(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 72);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = PB::Writer::write(this, *(v3 + 60));
    if ((*(v3 + 72) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_21:
  v11 = *(v3 + 56);

  return PB::Writer::write(this, v11);
}

uint64_t sub_19B46D2D8(uint64_t result)
{
  *result = &unk_1F0E2BC98;
  *(result + 80) = 0;
  return result;
}

void sub_19B46D300(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B46D338(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "aopTsImpact");
    v5 = *(a1 + 80);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "aopTsNow");
  v5 = *(a1 + 80);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a1 + 24);
  PB::TextFormatter::format(this, "aopTsSensor");
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a1 + 48);
  PB::TextFormatter::format(this, "nPeaks");
  v5 = *(a1 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "normalizedIQR", *(a1 + 52));
  v5 = *(a1 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a1 + 56);
  PB::TextFormatter::format(this, "operatingMode");
  v5 = *(a1 + 80);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a1 + 60);
  PB::TextFormatter::format(this, "repetitiveMotion");
  v5 = *(a1 + 80);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a1 + 32);
  PB::TextFormatter::format(this, "repetitiveMotionEndTs");
  v5 = *(a1 + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a1 + 40);
  PB::TextFormatter::format(this, "repetitiveMotionStartTs");
  v5 = *(a1 + 80);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = *(a1 + 64);
  PB::TextFormatter::format(this, "seq");
  v5 = *(a1 + 80);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "sumHighQPeaksInDecLowFreqFFT", *(a1 + 68));
  v5 = *(a1 + 80);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(this, "sumHighQPeaksInHighFreqFFT", *(a1 + 72));
  if ((*(a1 + 80) & 0x1000) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "sumHighQPeaksInLowFreqFFT", *(a1 + 76));
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B46D51C(uint64_t a1, PB::Reader *this)
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
        goto LABEL_223;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 80) |= 4u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v136 = 0;
            v137 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v138 = v2 - v22;
            v139 = (v23 + v22);
            v140 = v22 + 1;
            while (1)
            {
              if (!v138)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_210;
              }

              v141 = v140;
              v142 = *v139;
              *(this + 1) = v141;
              v26 |= (v142 & 0x7F) << v136;
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
                v26 = 0;
                goto LABEL_209;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_209:
            v2 = v141;
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
                goto LABEL_210;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_210:
          *(a1 + 24) = v26;
          goto LABEL_219;
        case 2u:
          *(a1 + 80) |= 2u;
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
                v82 = 0;
                *(this + 24) = 1;
                goto LABEL_214;
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
                v82 = 0;
LABEL_213:
                v2 = v148;
                goto LABEL_214;
              }
            }

            if (*(this + 24))
            {
              v82 = 0;
            }

            goto LABEL_213;
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
              goto LABEL_214;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          v82 = 0;
LABEL_214:
          *(a1 + 16) = v82;
          goto LABEL_219;
        case 3u:
          *(a1 + 80) |= 1u;
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
                v58 = 0;
                *(this + 24) = 1;
                goto LABEL_198;
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
                v58 = 0;
LABEL_197:
                v2 = v120;
                goto LABEL_198;
              }
            }

            if (*(this + 24))
            {
              v58 = 0;
            }

            goto LABEL_197;
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
              goto LABEL_198;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          v58 = 0;
LABEL_198:
          *(a1 + 8) = v58;
          goto LABEL_219;
        case 4u:
          *(a1 + 80) |= 0x200u;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v122 = 0;
            v123 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v124 = v2 - v62;
            v125 = (v63 + v62);
            v126 = v62 + 1;
            while (1)
            {
              if (!v124)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_202;
              }

              v127 = v126;
              v128 = *v125;
              *(this + 1) = v127;
              v66 |= (v128 & 0x7F) << v122;
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
                LODWORD(v66) = 0;
LABEL_201:
                v2 = v127;
                goto LABEL_202;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_201;
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
              goto LABEL_202;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_202:
          *(a1 + 64) = v66;
          goto LABEL_219;
        case 5u:
          *(a1 + 80) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_173;
        case 6u:
          *(a1 + 80) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_173;
        case 7u:
          *(a1 + 80) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_99;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_173;
        case 8u:
          *(a1 + 80) |= 0x20u;
          v70 = *(this + 1);
          v2 = *(this + 2);
          v71 = *this;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v129 = 0;
            v130 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(this + 1);
            }

            v131 = v2 - v70;
            v132 = (v71 + v70);
            v133 = v70 + 1;
            while (1)
            {
              if (!v131)
              {
                LODWORD(v74) = 0;
                *(this + 24) = 1;
                goto LABEL_206;
              }

              v134 = v133;
              v135 = *v132;
              *(this + 1) = v134;
              v74 |= (v135 & 0x7F) << v129;
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
                LODWORD(v74) = 0;
LABEL_205:
                v2 = v134;
                goto LABEL_206;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_205;
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
              goto LABEL_206;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_206:
          *(a1 + 48) = v74;
          goto LABEL_219;
        case 9u:
          *(a1 + 80) |= 0x40u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 52) = *(*this + v2);
LABEL_173:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
LABEL_99:
            *(this + 24) = 1;
          }

          goto LABEL_219;
        case 0xAu:
          *(a1 + 80) |= 0x100u;
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
                goto LABEL_194;
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
LABEL_193:
                v2 = v113;
                goto LABEL_194;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_193;
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
              goto LABEL_194;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_194:
          *(a1 + 60) = v50;
          goto LABEL_219;
        case 0xBu:
          *(a1 + 80) |= 0x10u;
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
                v90 = 0;
                *(this + 24) = 1;
                goto LABEL_218;
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
                v90 = 0;
LABEL_217:
                v2 = v155;
                goto LABEL_218;
              }
            }

            if (*(this + 24))
            {
              v90 = 0;
            }

            goto LABEL_217;
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
              goto LABEL_218;
            }

            v88 += 7;
            ++v92;
            v14 = v89++ > 8;
          }

          while (!v14);
          v90 = 0;
LABEL_218:
          *(a1 + 40) = v90;
          goto LABEL_219;
        case 0xCu:
          *(a1 + 80) |= 8u;
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
                v34 = 0;
                *(this + 24) = 1;
                goto LABEL_186;
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
                v34 = 0;
LABEL_185:
                v2 = v99;
                goto LABEL_186;
              }
            }

            if (*(this + 24))
            {
              v34 = 0;
            }

            goto LABEL_185;
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
              goto LABEL_186;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          v34 = 0;
LABEL_186:
          *(a1 + 32) = v34;
          goto LABEL_219;
        case 0xDu:
          *(a1 + 80) |= 0x80u;
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
                goto LABEL_190;
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
LABEL_189:
                v2 = v106;
                goto LABEL_190;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_189;
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
              goto LABEL_190;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_190:
          *(a1 + 56) = v42;
          goto LABEL_219;
        default:
          if (!PB::Reader::skip(this))
          {
            v157 = 0;
            return v157 & 1;
          }

          v2 = *(this + 1);
LABEL_219:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_223;
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

LABEL_223:
  v157 = v4 ^ 1;
  return v157 & 1;
}

uint64_t sub_19B46E0CC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if ((v4 & 4) != 0)
  {
    v5 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v12 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 80) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  v11 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_27:
  v13 = *(v3 + 56);

  return PB::Writer::writeVarInt(this);
}

void sub_19B46E274(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B46E2AC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 72);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "crownUpDown");
    v5 = *(a1 + 72);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 12);
  PB::TextFormatter::format(this, "fallType");
  v5 = *(a1 + 72);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "impactMaxAccelNormAlertThreshold", *(a1 + 16));
  v5 = *(a1 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "impactMaxAccelNormLoggingHeartRateThreshold", *(a1 + 20));
  v5 = *(a1 + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "impactMaxAccelNormLoggingHighResolutionSensorDataThreshold", *(a1 + 24));
  v5 = *(a1 + 72);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "impactMaxAccelNormLoggingStatsThreshold", *(a1 + 28));
  v5 = *(a1 + 72);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = *(a1 + 68);
  PB::TextFormatter::format(this, "isADLImpact");
  v5 = *(a1 + 72);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = *(a1 + 69);
  PB::TextFormatter::format(this, "isFallDetectionFeatureEnabled");
  v5 = *(a1 + 72);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(a1 + 70);
  PB::TextFormatter::format(this, "isNearFall");
  v5 = *(a1 + 72);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "metMinutePercentile90", *(a1 + 32));
  v5 = *(a1 + 72);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "metMinutePercentile95", *(a1 + 36));
  v5 = *(a1 + 72);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "metMinutePercentile98", *(a1 + 40));
  v5 = *(a1 + 72);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "metMinutePercentileActual", *(a1 + 44));
  v5 = *(a1 + 72);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "otherFallPosteriorRatioDetectionThreshold", *(a1 + 48));
  v5 = *(a1 + 72);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "slipFallPosteriorRatioDetectionThreshold", *(a1 + 52));
  v5 = *(a1 + 72);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "tripFallPosteriorRatioDetectionThreshold", *(a1 + 56));
  v5 = *(a1 + 72);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  v12 = *(a1 + 60);
  PB::TextFormatter::format(this, "userAgeBucket");
  if ((*(a1 + 72) & 0x4000) != 0)
  {
LABEL_19:
    v6 = *(a1 + 64);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_20:

  return MEMORY[0x1EEE30A90](this);
}